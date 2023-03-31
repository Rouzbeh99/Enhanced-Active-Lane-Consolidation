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

int foo(int *a, int *b, int *c, int *d, int *cond, int n) {

    svbool_t allActive = svptrue_b32();
    svint32_t uniformVector_1 = svindex_s32(0, 1);
    svint32_t remainingVector_1 = svindex_s32(svcntw(), 1);

    svbool_t uniformVectorPredicate_1 = svcmpeq_n_s32(allActive, svld1_s32(allActive, &cond[0]), 1);
    svbool_t remainingVectorPredicate_1 = svcmpeq_n_s32(allActive, svld1_s32(allActive, &cond[svcntw()]), 1);


    svint32_t idxM_1 = svundef_s32();
    svint32_t idxR_1 = svundef_s32();
    svbool_t cond_M_1 = svptrue_b32();
    svbool_t cond_R_1 = svptrue_b32();


    svint32_t uniformVector_2 = svindex_s32(0, 1);
    svint32_t remainingVector_2 = svindex_s32(svcntw(), 1);

    svint32_t loaded_b_unirform = svld1_gather_s32index_s32(allActive, b, uniformVector_2);
    svint32_t loaded_b_remainingVector = svld1_gather_s32index_s32(allActive, b, remainingVector_2);
    svbool_t uniformVectorPredicate_2 = svcmpne_n_s32(allActive, loaded_b_unirform, 0);
    svbool_t remainingVectorPredicate_2 = svcmpne_n_s32(allActive, loaded_b_remainingVector, 0);

    svint32_t idxM_2 = svundef_s32();
    svint32_t idxR_2 = svundef_s32();
    svbool_t cond_M_2 = svptrue_b32();
    svbool_t cond_R_2 = svptrue_b32();

    bool ifBlockExecuted;

    for (int i = 2 * svcntw(); i < n - svcntw() + 1; i += svcntw()) {


        // Do permutation for first if statement
        permutation_c_sve_intrinsics(uniformVector_1, remainingVector_1, uniformVectorPredicate_1,
                                     remainingVectorPredicate_1, &idxM_1, &idxR_1, &cond_M_1, &cond_R_1);

        if (svcntp_b32(allActive, cond_M_1) == svcntw()) {        // if there is a uniform true vector

            // execute then block
            svint32_t loaded_a = svld1_gather_s32index_s32(allActive, a, idxM_1);
            svint32_t loaded_b = svld1_gather_s32index_s32(allActive, b, idxM_1);
            svint32_t addResult = svadd_s32_m(allActive, loaded_a, loaded_b);
            svst1_scatter_s32index_s32(allActive, c, idxM_1, addResult);

            // form predicates for inner if statement and execute predicated code
            svbool_t predicates = svcmpge_s32(allActive, loaded_a, loaded_b);
            svint32_t multResult = svmul_s32_z(predicates, loaded_a, loaded_b);
            svint32_t loaded_c = svld1_gather_s32index_s32(predicates, c, idxM_1);
            svint32_t result = svadd_s32_m(predicates, multResult, loaded_c);
            svst1_scatter_s32index_s32(predicates, c, idxM_1, result);

            // fill uniformVector_1 with new instances
            uniformVector_1 = svindex_s32(i, 1);
            uniformVectorPredicate_1 = svcmpeq_n_s32(allActive, svld1_s32(allActive, &cond[i]), 1);
            remainingVector_1 = idxR_1;
            remainingVectorPredicate_1 = cond_R_1;
        } else {
            uniformVector_1 = svindex_s32(i, 1);
            uniformVectorPredicate_1 = svcmpeq_n_s32(allActive, svld1_s32(allActive, &cond[i]), 1);
            remainingVector_1 = idxM_1;
            remainingVectorPredicate_1 = cond_M_1;
        }

        // Do permutation for second if statement
        permutation_c_sve_intrinsics(uniformVector_2, remainingVector_2, uniformVectorPredicate_2,
                                     remainingVectorPredicate_2, &idxM_2, &idxR_2, &cond_M_2, &cond_R_2);


        if (svcntp_b32(allActive, cond_M_2) == svcntw()) {
            // execute second if block
            svint32_t loaded_b = svld1_gather_s32index_s32(allActive, b, idxM_2);
            svint32_t loaded_a = svld1_gather_s32index_s32(allActive, a, idxM_2);
            svint32_t subResult = svsub_s32_m(allActive, loaded_b, loaded_a);
            svst1_scatter_s32index_s32(allActive, d, idxM_2, subResult);

            // fill uniformVector_2 with new instances
            uniformVector_2 = svindex_s32(i, 1);
            loaded_b = svld1_gather_s32index_s32(allActive, b, uniformVector_2);
            uniformVectorPredicate_2 = svcmpne_n_s32(allActive, loaded_b, 0);
            remainingVector_2 = idxR_2;
            remainingVectorPredicate_2 = cond_R_2;
        } else {
            uniformVector_2 = svindex_s32(i, 1);
            svint32_t loaded_b = svld1_gather_s32index_s32(allActive, b, uniformVector_2);
            uniformVectorPredicate_2 = svcmpne_n_s32(allActive, loaded_b, 0);
            remainingVector_2 = idxM_2;
            remainingVectorPredicate_2 = cond_M_2;
        }

    }


    // linearized path: execute corresponding code for everything that remains in index vectors

    // first if statement
    svint32_t loaded_a = svld1_gather_s32index_s32(uniformVectorPredicate_1, a, uniformVector_1);
    svint32_t loaded_b = svld1_gather_s32index_s32(uniformVectorPredicate_1, b, uniformVector_1);
    svint32_t addResult = svadd_s32_m(uniformVectorPredicate_1, loaded_a, loaded_b);
    svst1_scatter_s32index_s32(uniformVectorPredicate_1, c, uniformVector_1, addResult);

    svbool_t predicates = svcmpge_s32(uniformVectorPredicate_1, loaded_a, loaded_b);
    svint32_t multResult = svmul_s32_z(predicates, loaded_a, loaded_b);
    svint32_t loaded_c = svld1_gather_s32index_s32(predicates, c, uniformVector_1);
    svint32_t result = svadd_s32_m(predicates, multResult, loaded_c);
    svst1_scatter_s32index_s32(predicates, c, uniformVector_1, result);

    loaded_a = svld1_gather_s32index_s32(remainingVectorPredicate_1, a, remainingVector_1);
    loaded_b = svld1_gather_s32index_s32(remainingVectorPredicate_1, b, remainingVector_1);
    addResult = svadd_s32_m(allActive, loaded_a, loaded_b);
    svst1_scatter_s32index_s32(remainingVectorPredicate_1, c, remainingVector_1, addResult);

    predicates = svcmpge_s32(remainingVectorPredicate_1, loaded_a, loaded_b);
    multResult = svmul_s32_z(predicates, loaded_a, loaded_b);
    loaded_c = svld1_gather_s32index_s32(predicates, c, remainingVector_1);
    result = svadd_s32_m(allActive, multResult, loaded_c);
    svst1_scatter_s32index_s32(predicates, c, remainingVector_1, result);



    //second if statement
    loaded_b = svld1_gather_s32index_s32(uniformVectorPredicate_2, b, uniformVector_2);
    loaded_a = svld1_gather_s32index_s32(uniformVectorPredicate_2, a, uniformVector_2);
    svint32_t subResult = svsub_s32_m(allActive, loaded_b, loaded_a);
    svst1_scatter_s32index_s32(uniformVectorPredicate_2, d, uniformVector_2, subResult);

    loaded_b = svld1_gather_s32index_s32(remainingVectorPredicate_2, b, remainingVector_2);
    loaded_a = svld1_gather_s32index_s32(remainingVectorPredicate_2, a, remainingVector_2);
    subResult = svsub_s32_m(allActive, loaded_b, loaded_a);
    svst1_scatter_s32index_s32(remainingVectorPredicate_2, d, remainingVector_2, subResult);

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
    int *d = checked_malloc_int_array(n);
    int *cond = checked_malloc_int_array(n);

    srand(time(NULL));
    for (int i = 0; i < n; ++i) {
        a[i] = 1;
        b[i] = -1;
        c[i] = 0;
        d[i] = 0;
        cond[i] = (i % 3) == 0;

    }


    foo(a, b, c, d, cond, n);

    int sum = 0;

    for (int i = 0; i < n; ++i) {
        sum += c[i] + d[i];
    }

    printf("%d \n", sum);
}
