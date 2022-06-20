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


void ACLEVersion(int *a, int *b, int *c, bool *cond, int n) {

    int i = 0;

    svbool_t allActive = svptrue_b32();
    svint32_t uniformVector = svindex_s32(i, 1);
    svint32_t remainingVector = svindex_s32(i + 4, 1);
    svbool_t uniformVectorPredicate = svdupq_b32(cond[i], cond[i + 1], cond[i + 2], cond[i + 3]);
    svbool_t remainingVectorPredicate = svdupq_b32(cond[i + 4], cond[i + 5], cond[i + 6], cond[i + 7]);

    svint32_t idxM = svundef_s32();
    svint32_t idxR = svundef_s32();
    svbool_t cond_r = svptrue_b32();

    for (i = 2 * VLength; i < n - VLength + 1; i += VLength) {
        if (svcntp_b32(allActive, uniformVectorPredicate) + svcntp_b32(allActive, remainingVectorPredicate) >=
            4) {  // active elements are more than inactive ones

            // finding index vectors
            permutation_c_sve_intrinsics(uniformVector, remainingVector, &idxM, &idxR, &cond_r, uniformVectorPredicate,
                                         remainingVectorPredicate);
            uniformVector = idxM;
            remainingVector = idxR;
            remainingVectorPredicate = cond_r;

            // execute then block
            svint32_t firstOp = svld1_gather_s32index_s32(allActive, a, uniformVector);
            svint32_t secondOp = svld1_gather_s32index_s32(allActive, b, uniformVector);
            svint32_t multResult = svmul_s32_z(allActive, firstOp, secondOp);
            svst1_scatter_s32index_s32(allActive, c, uniformVector, multResult);
            // fill uniformVector with new instances
            uniformVector = svindex_s32(i, 1);
            uniformVectorPredicate = svdupq_b32(cond[i], cond[i + 1], cond[i + 2], cond[i + 3]);

        } else { // inactive lanes are more
            uniformVectorPredicate = svnot_z(allActive, uniformVectorPredicate);
            remainingVectorPredicate = svnot_z(allActive, remainingVectorPredicate);

            permutation_c_sve_intrinsics(uniformVector, remainingVector, &idxM, &idxR, &cond_r, uniformVectorPredicate,
                                         remainingVectorPredicate);
            remainingVector = idxM;
            uniformVector = idxR;
            uniformVectorPredicate = svnot_z(allActive, cond_r);

            // execute else block
            svint32_t firstOp = svld1_gather_s32index_s32(allActive, a, remainingVector);
            svint32_t secondOp = svld1_gather_s32index_s32(allActive, b, remainingVector);
            svint32_t addResult = svadd_s32_m(allActive, firstOp, secondOp);
            svst1_scatter_s32index_s32(allActive, c, remainingVector, addResult);

            // fill remainingVector with new instances
            remainingVector = svindex_s32(i, 1);
            remainingVectorPredicate = svdupq_b32(cond[i], cond[i + 1], cond[i + 2], cond[i + 3]);
        }

    }

    // linearized path
    svint32_t firstOp = svld1_gather_s32index_s32(allActive, a, uniformVector);
    svint32_t secondOp = svld1_gather_s32index_s32(allActive, b, uniformVector);
    svint32_t multResult = svmul_s32_z(uniformVectorPredicate, firstOp, secondOp);
    svst1_scatter_s32index_s32(uniformVectorPredicate, c, uniformVector, multResult);
    svint32_t addResult = svadd_s32_m(svnot_z(allActive, uniformVectorPredicate), firstOp, secondOp);
    svst1_scatter_s32index_s32(svnot_z(allActive, uniformVectorPredicate), c, uniformVector, addResult);

    firstOp = svld1_gather_s32index_s32(allActive, a, remainingVector);
    secondOp = svld1_gather_s32index_s32(allActive, b, remainingVector);
    addResult = svadd_s32_m(svnot_z(allActive, remainingVectorPredicate), firstOp, secondOp);
    svst1_scatter_s32index_s32(svnot_z(allActive, remainingVectorPredicate), c, remainingVector, addResult);
    multResult = svmul_s32_m(remainingVectorPredicate, firstOp, secondOp);
    svst1_scatter_s32index_s32(remainingVectorPredicate, c, remainingVector, multResult);

}

int main() {
    int a[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
    int b[] = {17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32};
    bool cond[] = {true, false, true, false, true, false, true, false, true, false, true, false, true, false, true, false};
            int c[] = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
            int n = 16;

            ACLEVersion(a, b, c, cond, n);

            for (int i = 0; i < n; ++i) {
                printf("%d ", c[i]);
            }
            printf("\n");
    }


//////////////////////////////////////////////////////helper functions/////////////////////////////////////////////////

    oid printVector(svint32_t z) {

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
