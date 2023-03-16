#include <stdio.h>
#include <stdbool.h>

#ifdef __ARM_FEATURE_SVE
#include <arm_sve.h>
#endif


//int VLength = svcntw(); // vector length


void printVector(svint32_t z);

void printPredicate(svbool_t p1);

void permutation_c_sve_intrinsics(svint32_t z0, svint32_t z1, svbool_t p0,
                                  svbool_t p1, svint32_t *result0, svint32_t *result1,
                                  svbool_t *resultPredicate0, svbool_t *resultPredicate1);

int main() {

    svbool_t allActive = svptrue_b32();

    svint32_t z0 = svindex_s32(1, 1);
    svint32_t z1 = svindex_s32(svcntw(), 1);
    svbool_t p0 = svdupq_b32(0, 0, 0, 0);
    svbool_t p1 = svdupq_b32(1, 1, 1, 0); // repeats 1 1 1 0 for 4 times

    svint32_t result0 = svundef_s32();
    svint32_t result1 = svundef_s32();
    svbool_t resultPredicate0 = svptrue_b32();
    svbool_t resultPredicate1 = svptrue_b32();

    // finding index vectors
    permutation_c_sve_intrinsics(z0, z1, p0, p1, &result0, &result1, &resultPredicate0, &resultPredicate1);

    printf("----------------------\n");
    printPredicate(resultPredicate0);
    printVector(result0);
    printPredicate(resultPredicate1);
    printVector(result1);


}


//////////////////////////////////////////////////////helper functions/////////////////////////////////////////////////

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
