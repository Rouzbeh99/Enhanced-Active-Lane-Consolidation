#include <stdio.h>
#include <stdbool.h>

#ifdef __ARM_FEATURE_SVE
#include <arm_sve.h>
#endif


int VLength = 4; // vector length

void ACLEVersion(bool *cond);

void printVector(svint32_t z);

void printPredicate(svbool_t p1);

void permutation_c_sve_intrinsics(svint32_t z0, svint32_t z1, svint32_t *result0, svint32_t *result1,
                                  svbool_t *resultPredicate, svbool_t p0,
                                  svbool_t p1);


void ACLEVersion(bool *cond) {

    int i = 0;

    svbool_t allActive = svptrue_b32();
    svint32_t uniformVector = svindex_s32(i + 1, 1);
    svint32_t remainingVector = svindex_s32(i + 5, 1);
    svbool_t uniformVectorPredicate = svdupq_b32(cond[i], cond[i + 1], cond[i + 2], cond[i + 3]);
    svbool_t remainingVectorPredicate = svdupq_b32(cond[i + 4], cond[i + 5], cond[i + 6], cond[i + 7]);

    svint32_t idxM = svundef_s32();
    svint32_t idxR = svundef_s32();
    svbool_t cond_r = svptrue_b32();

    // finding index vectors
    permutation_c_sve_intrinsics(uniformVector, remainingVector, &idxM, &idxR, &cond_r, uniformVectorPredicate,
                                 remainingVectorPredicate);

    printf("----------------------\n");
    printPredicate(cond_r);
    printVector(idxR);

}

int main() {
                                                                          //  1 2 3 4       5 6 7 8
    bool cond[] = {1, 1, 0, 0, 1, 1, 1, 0};  //  1 1 0 0       1 1 1 0
    ACLEVersion(cond);

                                                                           //  1 2 3 4       5 6 7 8
    bool cond1[] = {1, 0, 0, 0, 1, 1, 1, 0};  //  1 0 0 0       1 1 1 0
    ACLEVersion(cond1);

                                                                           //  1 2 3 4       5 6 7 8
    bool cond2[] = {0, 0, 0, 0, 1, 0, 1, 0};  //  0 0 0 0       1 0 1 0
    ACLEVersion(cond2);

                                                                           //  1 2 3 4       5 6 7 8
    bool cond3[] = {1, 1, 1, 1, 1, 1, 1, 0};  //  1 1 1 1       1 1 1 0
    ACLEVersion(cond3);

                                                                           //  1 2 3 4       5 6 7 8
    bool cond4[] = {1, 1, 0, 1, 0, 0, 1, 0};  //  1 1 0 1       0 0 1 0
    ACLEVersion(cond4);

}


//////////////////////////////////////////////////////helper functions/////////////////////////////////////////////////

void printVector(svint32_t z) {

    svbool_t allActive = svptrue_b32();
    int32_t a[] = {-1, -1, -1, -1};

    //storing to memory
    svst1_s32(allActive, &a[0], z);

    for (int i = 0; i < 4; ++i) {
        printf("%d ", a[i]);
    }
    printf("\n");
}

void printPredicate(svbool_t p1) {

    int32_t a[] = {1, 1, 1, 1, 1};
    int32_t b[] = {0, 0, 0, 0, 0};

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
    z2 = svsplice_s32(p5, z3, z5);  // contains active ... inactive of z1
    uint32_t x2 = svcntp_b32(allActive, p2);    // number of false elements in z0
    p2 = svwhilelt_b32_s32(0, x2);
    *result1 = svsel_s32(p2, z4, z2);

//find result predicate
    svbool_t p6 = svnot_z(allActive, p2);               // mask based on first vector false elements
    uint32_t x3 = svcntp_b32(allActive, p3);            // number of false elements in z1
    svbool_t p7 = svwhilelt_b32_s32(0, VLength - x3);  // mask based on second vector false elements
    *resultPredicate = svand_b_z(allActive, p6, p7);


}
