#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

#ifdef __ARM_FEATURE_SVE
#include <arm_sve.h>
#endif


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


    int n = 1000;
    int *a = checked_malloc_int_array(n);
    int *b = checked_malloc_int_array(n);
    int *c = checked_malloc_int_array(n);
    bool *cond = checked_malloc_bool_array(n);


    srand(time(NULL));
    for (int i = 1; i < n; ++i) {
        a[i] = 1;
        b[i] = -1;
        c[i] = 0;
        cond[i] = (rand() % 3) == 0;
    }


    foo(a, b, c, cond, n);

    int sum = 0;

    for (int i = 0; i < n; ++i) {
        sum += c[i];
    }

    printf("%d \n", sum);
}