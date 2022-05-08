#include <stdio.h>
#include <stdbool.h>

#ifdef __ARM_FEATURE_SVE
#include <arm_sve.h>
#endif


int VLength = 4; // vector length

void ACLEVersion(int *a, int *b, int *c, bool *cond, int n);

void printVector(svint32_t z);

void printPredicate(svbool_t p1);

void permutation_c_sve_intrinsics(svint32_t z0, svint32_t z1, svint32_t *result0, svint32_t *result1,
                                 svbool_t *resultPredicate, svbool_t p0,
                                 svbool_t p1);

oid ACLEVersion(int *a, int *b, int *c, bool *cond, int n) {
    for (int i = 0; i < n; i += 2 * VLength) {

        svbool_t allActive = svptrue_b32();
        svbool_t cond_r = svptrue_b32();

        svint32_t z0 = svindex_s32(i, 1);
        svint32_t z1 = svindex_s32(i + 4, 1);
        svbool_t p0 = svdupq_b32(cond[i], cond[i + 1], cond[i + 2], cond[i + 3]);
        svbool_t p1 = svdupq_b32(cond[i + 4], cond[i + 5], cond[i + 6], cond[i + 7]);


        if (svcntp_b32(allActive, p0) + svcntp_b32(allActive, p1) >= 4) {
            svint32_t idxM = svundef_s32();
            svint32_t idxR = svundef_s32();

            // finding index vectors
            permutation_c_sve_intrinsics(z0, z1, &idxM, &idxR, &cond_r, p0, p1);

            svint32_t firstOp = svld1_gather_s32index_s32(allActive, a, idxM);
            svint32_t secondOp = svld1_gather_s32index_s32(allActive, b, idxM);
            svint32_t multResult = svmul_s32_z(allActive, firstOp, secondOp);

            // store multResult in z0 indices of c array
            svst1_scatter_s32index_s32(allActive, c, idxM, multResult);

            // default path
            firstOp = svld1_gather_s32index_s32(allActive, a, idxR);
            secondOp = svld1_gather_s32index_s32(allActive, b, idxR);
            multResult = svmul_s32_m(cond_r, firstOp, secondOp);
            svst1_scatter_s32index_s32(cond_r, c, idxR, multResult);
            cond_r = svnot_z(allActive, cond_r);
            svint32_t addResult = svadd_s32_m(cond_r, firstOp, secondOp);

            svst1_scatter_s32index_s32(cond_r, c, idxR, addResult);
        } else {

            // linearized code

            svint32_t firstOp = svld1_gather_s32index_s32(allActive, a, z0);
            svint32_t secondOp = svld1_gather_s32index_s32(allActive, b, z0);
            svint32_t multResult = svmul_s32_z(p0, firstOp, secondOp);
            svst1_scatter_s32index_s32(p0, c, z0, multResult);  // no problem with indices
            svbool_t notP0 = svnot_z(allActive, p0);
            svint32_t addResult = svadd_s32_z(notP0, firstOp, secondOp);
            svst1_scatter_s32index_s32(notP0, c, z0, addResult);

            firstOp = svld1_gather_s32index_s32(allActive, a, z1);
            secondOp = svld1_gather_s32index_s32(allActive, b, z1);
            multResult = svmul_s32_z(p1, firstOp, secondOp);
            svst1_scatter_s32index_s32(p1, c, z1, multResult);
            svbool_t notP1 = svnot_z(allActive, p1);
            addResult = svadd_s32_z(notP1, firstOp, secondOp);
            svst1_scatter_s32index_s32(notP1, c, z1, addResult);

        }
    }
}

int main(){
    int a[] = {1, 2, 3, 4, 5, 6, 7, 8};
    int b[] = {9, 10, 11, 12, 13, 14, 15, 16};
    int c[] = {-1, -1, -1, -1, -1, -1, -1, -1};
    int n = 8;

    bool cond[] = {true, false, true, false, true, false, true, false};
    ACLEVersion(a, b, c, cond, n);

    for (int i = 0; i < n; ++i) {
        printf("%d ", c[i]);
    }
    printf("\n");
}


///////////////////////////////////////////////////////helper functions/////////////////////////////////////////////////

oid printVector(svint32_t z){

    svbool_t allActive = svptrue_b32();
    int32_t a[] = {-1, -1, -1, -1};

    //storing to memory
    svst1_s32(allActive, &a[0], z);

    for (int i = 0; i < 4; ++i) {
        printf("%d ", a[i]);
    }
    printf("\n");
}

void printPredicate(svbool_t p1){

    int32_t a[] = {1, 1, 1, 1};
    int32_t b[] = {0, 0, 0, 0};

    svint32_t z = svld1_s32(p1, &a[0]);
    svst1_s32(p1, &b[0], z);

    for (int i = 0; i < 4; ++i) {
        printf("%d ", b[i]);
    }
    printf("\n");
}


void permutation_c_sve_intrinsics(svint32_t z0, svint32_t z1, svint32_t *result0, svint32_t *result1,
                                  svbool_t *resultPredicate, svbool_t p0,
                                  svbool_t p1) {

    svbool_t allActive = svptrue_b32();

// gather active lanes
    svint32_t z2 = svcompact_s32(p0, z0);
    svint32_t z3 = svcompact_s32(p1, z1);

//gather inactive lanes
    svbool_t p2 = svnot_z(allActive, p0);
    svbool_t p3 = svnot_z(allActive, p1);
    svint32_t z4 = svcompact_s32(p2, z0);
    svint32_t z5 = svcompact_s32(p3, z1);

// gathering all active lanes to result1
    uint32_t x0 = svcntp_b32(allActive, p0);
    svbool_t p4 = svwhilelt_b32_s32(0, x0);
    *result0 = svsplice_s32(p4, z2, z3);

//gather others to z1
    uint32_t x1 = svcntp_b32(allActive, p1);
    svbool_t p5 = svwhilelt_b32_s32(0, x1);
    z2 = svsplice_s32(p5, z3, z5);  // contains active ... inactive
    uint32_t x2 = svcntp_b32(allActive, p2);
    p2 = svwhilelt_b32_s32(0, x2);
    *result1 = svsel_s32(p2, z4, z2);

//find result predicate
    p1 = svnot_z(allActive, p2);
    uint32_t x3 = svcntp_b32(allActive, p2);
    p2 = svwhilelt_b32_s32(0, (x1 - x2 + x3));
    p5 = svnot_z(allActive, p2);
    //p1 = svand_b_z(p5, p1, p2); when predicate is zero, result becomes zero but we want it to take value from p1

    // (!p5 & p1) | (p5 & p1 & p2)
    p1 = svorr_b_z(allActive, svand_b_z(allActive, svnot_z(allActive, p5), p1),
                   svand_b_z(allActive, svand_b_z(allActive, p5, p1), p2));
    *resultPredicate = p1;

}