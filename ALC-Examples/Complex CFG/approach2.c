#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

#ifdef __ARM_FEATURE_SVE
#include <arm_sve.h>
#endif


void printVector(svint32_t z) {

    svbool_t allActive = svptrue_b32();
    int32_t a[svcntw()];

    for (int i = 0; i < svcntw(); ++i) {
        a[i] = -1;
    }

    //storing to memory
    svst1_s32(allActive, &a[0], z);

    for (int i = 0; i < svcntw(); ++i) {
        printf("%d ", a[i]);
    }
    printf("\n");
}

void printPredicate(svbool_t p1) {

    svbool_t allActive = svptrue_b32();
    int32_t a[svcntw()];
    int32_t b[svcntw()];

    for (int i = 0; i < svcntw(); ++i) {
        a[i] = 1;
        b[i] = 0;
    }

    //storing to memory
    svint32_t z = svld1_s32(p1, &a[0]);
    svst1_s32(allActive, &b[0], z);

    for (int i = 0; i < svcntw(); ++i) {
        printf("%d ", b[i]);
    }
    printf("\n");
}


void permutation_c_sve_intrinsics(svint32_t z0, svint32_t z1, svbool_t p0,
                                  svbool_t p1, svint32_t *result0, svint32_t *result1,
                                  svbool_t *resultPredicate0, svbool_t *resultPredicate1) {

    svbool_t allActive = svptrue_b32();

// gather active lanes
    svint32_t z2 = svcompact_s32(p0, z0);
    svint32_t z3 = svcompact_s32(p1, z1);

//gather inactive lanes
    svbool_t p2 = svnot_z(allActive, p0);
    svbool_t p3 = svnot_z(allActive, p1);
    svint32_t z4 = svcompact_s32(p2, z0);
    svint32_t z5 = svcompact_s32(p3, z1);

// gathering all active lanes to result0
    uint32_t x0 = svcntp_b32(p0, p0);
    uint32_t x1 = svcntp_b32(p1, p1);
    svbool_t p4 = svwhilelt_b32_s32(0, x0);
    *resultPredicate0 = svwhilelt_b32_s32(0, x0 + x1);
    *result0 = svsplice_s32(p4, z2, z3);
    *result0 = svsplice_s32(*resultPredicate0, *result0, z5);

//gather others to z1
    svbool_t p5 = svwhilelt_b32_s32(0, x1);
    z2 = svsplice_s32(p5, z3, z5);  // contains active ... inactive of z1
    uint32_t x2 = svcntp_b32(p2, p2);    // number of false elements in z0
    p2 = svwhilelt_b32_s32(0, x2);
    *result1 = svsel_s32(p2, z4, z2);

//find result predicate
    svbool_t p6 = svnot_z(allActive, p2);               // mask based on first vector false elements
    uint32_t x3 = svcntp_b32(p3, p3);            // number of false elements in z1
    svbool_t p7 = svwhilelt_b32_s32(0, svcntw() - x3);  // mask based on second vector false elements
    *resultPredicate1 = svand_b_z(allActive, p6, p7);


}


int foo(int *a, int *b, int *c, bool *cond, int n) {

    svbool_t allActive = svptrue_b32();
    svint32_t uniformVector = svindex_s32(0, 1);
    svint32_t remainingVector = svindex_s32(svcntw(), 1);

    svbool_t uniformVectorPredicate = svdupq_b32(cond[0], cond[1], cond[2], cond[3]);
    svbool_t remainingVectorPredicate = svdupq_b32(cond[svcntw()], cond[svcntw() + 1], cond[svcntw() + 2],
                                                   cond[svcntw() + 3]);


    svint32_t idxM = svundef_s32();
    svint32_t idxR = svundef_s32();
    svbool_t cond_M = svptrue_b32();
    svbool_t cond_R = svptrue_b32();

    svint32_t inner_uniform_vec = svundef_s32();
    svint32_t inner_rem_vec = svundef_s32();
    svbool_t inner_uniform_pred = svpfalse_b();
    svbool_t inner_rem_pred = svpfalse_b();

    svint32_t inner_idxM = svundef_s32();
    svint32_t inner_idxR = svundef_s32();
    svbool_t inner_cond_M = svpfalse_b();
    svbool_t inner_cond_R = svpfalse_b();


    bool ifBlockExecuted;

    for (int i = 2 * svcntw(); i < n - svcntw() + 1; i += svcntw()) {

        // Do permutation for index vectors
        permutation_c_sve_intrinsics(uniformVector, remainingVector, uniformVectorPredicate,
                                     remainingVectorPredicate, &idxM, &idxR, &cond_M, &cond_R);

        if (svcntp_b32(allActive, cond_M) == svcntw()) {        // if there is a uniform true vector

            // execute then block
            svint32_t loaded_a = svld1_gather_s32index_s32(allActive, a, idxM);
            svint32_t loaded_b = svld1_gather_s32index_s32(allActive, b, idxM);
            svint32_t addResult = svadd_s32_m(allActive, loaded_a, loaded_b);
            svst1_scatter_s32index_s32(allActive, c, idxM, addResult);

            // do another Permutation for inner if
            svbool_t inner_rem_pred = svcmpge_s32(allActive, loaded_a, loaded_b);
            inner_rem_vec = idxM;

            permutation_c_sve_intrinsics(inner_uniform_vec, inner_rem_vec, inner_uniform_pred,
                                         inner_rem_pred, &inner_idxM, &inner_idxR, &inner_cond_M, &inner_cond_R);

            if (svcntp_b32(allActive, inner_cond_M) == svcntw()) {    // if there is a uniform true vector for inner permutation


                loaded_a = svld1_gather_s32index_s32(allActive, a, inner_idxM);
                loaded_b = svld1_gather_s32index_s32(allActive, b, inner_idxM);

                svint32_t multResult = svmul_s32_z(allActive, loaded_a, loaded_b);
                svint32_t loaded_c = svld1_gather_s32index_s32(allActive, c, idxM);
                svint32_t result = svadd_s32_m(allActive, multResult, loaded_c);
                svst1_scatter_s32index_s32(allActive, c, idxM, result);

                inner_uniform_vec = inner_idxR;
                inner_uniform_pred = inner_cond_R;
            } else {
                inner_uniform_vec = inner_idxM;
                inner_uniform_pred = inner_cond_M;
            }


            // fill uniformVector with new instances
            uniformVector = svindex_s32(i, 1);
            uniformVectorPredicate = svdupq_b32(cond[i], cond[i + 1], cond[i + 2], cond[i + 3]);
            remainingVector = idxR;
            remainingVectorPredicate = cond_R;
            ifBlockExecuted = true;

        } else {

            // execute else block
            svint32_t loaded_a = svld1_gather_s32index_s32(allActive, a, idxR);
            svint32_t loaded_b = svld1_gather_s32index_s32(allActive, b, idxR);
            svint32_t subResult = svsub_s32_m(allActive, loaded_b, loaded_a);
            svst1_scatter_s32index_s32(allActive, c, idxR, subResult);

            // fill remainingVector with new instances
            remainingVector = svindex_s32(i, 1);
            remainingVectorPredicate = svdupq_b32(cond[i], cond[i + 1], cond[i + 2], cond[i + 3]);
            uniformVector = idxM;
            uniformVectorPredicate = cond_M;
            ifBlockExecuted = false;
        }
    }


    // linearized path: execute corresponding code for everything that remains in index vectors
    if (ifBlockExecuted) {

        svint32_t loaded_a = svld1_gather_s32index_s32(uniformVectorPredicate, a, uniformVector);
        svint32_t loaded_b = svld1_gather_s32index_s32(uniformVectorPredicate, b, uniformVector);
        svint32_t addResult = svadd_s32_m(uniformVectorPredicate, loaded_a, loaded_b);
        svst1_scatter_s32index_s32(uniformVectorPredicate, c, uniformVector, addResult);

        svbool_t predicates = svcmpge_s32(uniformVectorPredicate, loaded_a, loaded_b);
        svint32_t multResult = svmul_s32_z(predicates, loaded_a, loaded_b);
        svint32_t loaded_c = svld1_gather_s32index_s32(predicates, c, uniformVector);
        svint32_t result = svadd_s32_m(predicates, multResult, loaded_c);
        svst1_scatter_s32index_s32(predicates, c, uniformVector, result);

        svbool_t not = svnot_z(allActive, uniformVectorPredicate);

        loaded_a = svld1_gather_s32index_s32(not, a, uniformVector);
        loaded_b = svld1_gather_s32index_s32(not, b, uniformVector);
        svint32_t subResult = svsub_s32_m(not, loaded_b, loaded_a);
        svst1_scatter_s32index_s32(not, c, uniformVector, subResult);


        not = svnot_z(allActive, cond_R);

        loaded_a = svld1_gather_s32index_s32(not, a, idxR);
        loaded_b = svld1_gather_s32index_s32(not, b, idxR);
        subResult = svsub_s32_m(not, loaded_b, loaded_a);
        svst1_scatter_s32index_s32(not, c, idxR, subResult);


        loaded_a = svld1_gather_s32index_s32(cond_R, a, idxR);
        loaded_b = svld1_gather_s32index_s32(cond_R, b, idxR);
        addResult = svadd_s32_m(cond_R, loaded_a, loaded_b);
        svst1_scatter_s32index_s32(cond_R, c, idxR, addResult);

        predicates = svcmpge_s32(cond_R, loaded_a, loaded_b);
        multResult = svmul_s32_z(predicates, loaded_a, loaded_b);
        loaded_c = svld1_gather_s32index_s32(predicates, c, idxR);
        result = svadd_s32_m(predicates, multResult, loaded_c);
        svst1_scatter_s32index_s32(predicates, c, idxR, result);



    } else {


        svint32_t loaded_a = svld1_gather_s32index_s32(cond_M, a, idxM);
        svint32_t loaded_b = svld1_gather_s32index_s32(cond_M, b, idxM);
        svint32_t addResult = svadd_s32_m(cond_M, loaded_a, loaded_b);
        svst1_scatter_s32index_s32(cond_M, c, uniformVector, addResult);

        svbool_t predicates = svcmpge_s32(cond_M, loaded_a, loaded_b);
        svint32_t multResult = svmul_s32_z(predicates, loaded_a, loaded_b);
        svint32_t loaded_c = svld1_gather_s32index_s32(predicates, c, idxM);
        svint32_t result = svadd_s32_m(predicates, multResult, loaded_c);
        svst1_scatter_s32index_s32(predicates, c, idxM, result);

        svbool_t not = svnot_z(allActive, cond_M);

        loaded_a = svld1_gather_s32index_s32(not, a, idxM);
        loaded_b = svld1_gather_s32index_s32(not, b, idxM);
        svint32_t subResult = svsub_s32_m(not, loaded_b, loaded_a);
        svst1_scatter_s32index_s32(not, c, idxM, subResult);

        not = svnot_z(allActive, remainingVectorPredicate);

        loaded_a = svld1_gather_s32index_s32(not, a, remainingVector);
        loaded_b = svld1_gather_s32index_s32(not, b, remainingVector);
        subResult = svsub_s32_m(not, loaded_b, loaded_a);
        svst1_scatter_s32index_s32(not, c, remainingVector, subResult);


        loaded_a = svld1_gather_s32index_s32(remainingVectorPredicate, a, remainingVector);
        loaded_b = svld1_gather_s32index_s32(remainingVectorPredicate, b, remainingVector);
        addResult = svadd_s32_m(remainingVectorPredicate, loaded_a, loaded_b);
        printVector(addResult);
        svst1_scatter_s32index_s32(remainingVectorPredicate, c, remainingVector, addResult);

        predicates = svcmpge_s32(remainingVectorPredicate, loaded_a, loaded_b);
        multResult = svmul_s32_z(predicates, loaded_a, loaded_b);
        loaded_c = svld1_gather_s32index_s32(predicates, c, remainingVector);
        result = svadd_s32_m(predicates, multResult, loaded_c);
        svst1_scatter_s32index_s32(predicates, c, remainingVector, result);


    }





}


int *checked_malloc_int_array(int n) {
    int *ptr = (int *) malloc(sizeof(int) * n);
    if (ptr == NULL) {
        printf("error: failed to allocate memory\n");
        exit(1);
    }
    return ptr;
}

bool *checked_malloc_bool_array(int n) {
    bool *ptr = (bool *) malloc(sizeof(bool) * n);
    if (ptr == NULL) {
        printf("error: failed to allocate memory\n");
        exit(1);
    }
    return ptr;
}


int main() {


    int n = 112;
    int *a = checked_malloc_int_array(n);
    int *b = checked_malloc_int_array(n);
    int *c = checked_malloc_int_array(n);
    bool *cond = checked_malloc_bool_array(n);

    for (int i = 0; i < n; ++i) {
        a[i] = 1;
        b[i] = -1;
        c[i] = 0;
        cond[i] = (i % 4) == 0;
//        cond[i] = 1;
    }


    foo(a, b, c, cond, n);

    int sum = 0;

    for (int i = 0; i < n; ++i) {
        sum += c[i];
    }

    printf("%d \n", sum);
}
