#include<stdio.h>
#include<stdbool.h>

#ifdef __ARM_FEATURE_SVE
#include <arm_sve.h>
#endif /* __ARM_FEATURE_SVE */

/**
 * @param z0 first vector of indices
 * @param z1 second vector of indices
 * @param result0 first result vector
 * @param result1 second result vector
 * @param resultPredicate predicates for result1
 * @param p0 first vector of predicates
 * @param p1 second vector of predicates
 *
 */
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
    p1 = svorr_b_z(allActive, svand_b_z(allActive, svnot_z(allActive, p5), p1), svand_b_z(allActive, svand_b_z(allActive, p5, p1), p2));
    *resultPredicate = p1;

}

int main() {
    svbool_t allActive = svptrue_b32();

    //initializing vectors
    int32_t a[] = {0, 1, 2, 3};
    int32_t b[] = {4, 5, 6, 7};
    svint32_t z0 = svld1_s32(allActive, &a[0]);
    svint32_t z1 = svld1_s32(allActive, &b[0]);
    svint32_t z2 = svundef_s32();
    svint32_t z3 = svundef_s32();
    svbool_t p0 = svdupq_b32(true, true, false, true); //1 1 0 1
    svbool_t p1 = svdupq_b32(false, true, false, true); // 0 1 0 1
    svbool_t resultPredicates = svdupq_b32(false, false, false, false); // 0 0 0 0

    // doing permutation
    permutation_c_sve_intrinsics(z0, z1, &z2, &z3, &resultPredicates, p0, p1);


    //storing back to memory
    int32_t c[] = {-1, -1, -1, -1};
    int32_t d[] = {-1, -1, -1, -1};
    svst1_s32(allActive, &c[0], z2);
    svst1_s32(allActive, &d[0], z3);

    //printing result
    for (int i = 0; i < 4; ++i) {
        printf("%d ", c[i]);
    }
    printf("\n");

    for (int i = 0; i < 4; ++i) {
        printf("%d ", d[i]);
    }
    printf("\n");

    for (int i = 0; i < 4; ++i) {
        printf("%d ", d[i]);
    }
    printf("\n");

    // test resulted predicate
    svint32_t z4 = svsel_s32(resultPredicates, z2, z3);
    int32_t e[] = {-1, -1, -1, -1};
    svst1_s32(allActive, &e[0], z4);

    for (int i = 0; i < 4; ++i) {  // expected: 2 1 4 6
        printf("%d ", e[i]);
    }
    printf("\n");

}
