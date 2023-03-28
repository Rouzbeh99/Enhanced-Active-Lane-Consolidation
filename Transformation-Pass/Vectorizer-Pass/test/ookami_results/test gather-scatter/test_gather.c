#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

#ifdef __ARM_FEATURE_SVE
#include <arm_sve.h>
#endif

#include "papi.h"

#define ERROR_RETURN(retval)                                                   \
  {                                                                            \
    fprintf(stderr, "Error %d %s:line %d: \n", retval, __FILE__, __LINE__);    \
    exit(retval);                                                              \
  }

double getTimeMiliSeconds() {
    struct timespec ts;
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &ts);
    return ts.tv_sec * 1.0e3 + ts.tv_nsec * 1.0e-6;
}

/* Must be initialized to PAPI_NULL before calling PAPI_create_event */
int EventSet = PAPI_NULL;
#define NUMEVENTS 8
long long int CounterValues[NUMEVENTS] = {0};
/* Event code names/availability can be queried with papi_avail command */
int EventCodes[NUMEVENTS] = {PAPI_TOT_INS, PAPI_TOT_CYC, PAPI_L1_DCM, PAPI_BR_MSP, PAPI_MEM_SCY, PAPI_RES_STL,
                             PAPI_FPU_IDL, PAPI_STL_CCY};
double ExecutionTime = 0.0;


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

    int32_t a[] = {1, 1, 1, 1};
    int32_t b[] = {0, 0, 0, 0};

    svint32_t z = svld1_s32(p1, &a[0]);
    svst1_s32(p1, &b[0], z);

    for (int i = 0; i < 4; ++i) {
        printf("%d ", b[i]);
    }
    printf("\n");
}


void if_converted(int *a, int *b, bool *cond, int n) {

    for (int i = 0; i < n; i++) {
        if (cond[i]) {
            b[i] = a[i];
        }
    }
}


void ACLE(int *a, int *b, int *indices, int n) {
    svbool_t allActive = svptrue_b32();

    for (int i = 0; i < n - svcntw(); i += svcntw()) {
//        svint32_t indexVec = svld1_s32(allActive, indices + i);
        svint32_t indexVec = svindex_s32(i, 2);
        svint32_t loaded = svld1_gather_s32index_s32(allActive, a, indexVec);
        svst1_scatter_s32index_s32(allActive, b, indexVec, loaded);

    }

}

void do_permutation(svint32_t firstIndices, svint32_t secondIndices,
                    svint32_t firstA, svint32_t secondA,
                    svbool_t firstPredicates, svbool_t secondPredicates,
                    svint32_t *mergeIndices, svint32_t *remainingIndices,
                    svint32_t *mergeA, svint32_t *remainingA,
                    svbool_t *mergePredicates, svbool_t *remainingPredicates) {

    svbool_t allActive = svptrue_b32();

// gather active lanes
    svint32_t z2 = svcompact_s32(firstPredicates, firstIndices);
    svint32_t z3 = svcompact_s32(secondPredicates, secondIndices);

    svint32_t compactedFirstA = svcompact_s32(firstPredicates, firstA);
    svint32_t compactedSecondA = svcompact_s32(secondPredicates, secondA);

//gather inactive lanes
    svbool_t p2 = svnot_z(allActive, firstPredicates);
    svbool_t p3 = svnot_z(allActive, secondPredicates);
    svint32_t z4 = svcompact_s32(p2, firstIndices);
    svint32_t z5 = svcompact_s32(p3, secondIndices);

    svint32_t compactedFirstA_not = svcompact_s32(p2, firstA);
    svint32_t compactedSecondA_not = svcompact_s32(p3, secondA);

// gathering all active lanes to remainingIndices
    uint32_t firstTrues = svcntp_b32(allActive, firstPredicates);
    uint32_t secondTrues = svcntp_b32(allActive, secondPredicates);
    svbool_t p4 = svwhilelt_b32_s32(0, firstTrues);
    *mergeIndices = svsplice_s32(p4, z2, z3);
    *mergePredicates = svwhilelt_b32_s32(0, firstTrues + secondTrues);
    *mergeIndices = svsplice_s32(*mergePredicates, *mergeIndices, z5);
    *mergeA = svsplice_s32(p4, compactedFirstA, compactedSecondA);
    *mergeA = svsplice_s32(*mergePredicates, *mergeA, compactedSecondA_not);


//gather others to remainingIndices
    uint32_t x1 = svcntp_b32(allActive, secondPredicates);
    svbool_t p5 = svwhilelt_b32_s32(0, x1);
    z2 = svsplice_s32(p5, z3, z5);  // contains active ... inactive of secondIndices
    svint32_t Az2 = svsplice_s32(p5, compactedSecondA,
                                 compactedSecondA_not);  // contains active ... inactive of secondIndices
    uint32_t x2 = svcntp_b32(allActive, p2);    // number of false elements in firstIndices
    p2 = svwhilelt_b32_s32(0, x2);
    *remainingIndices = svsel_s32(p2, z4, z2);
    *remainingA = svsel_s32(p2, compactedFirstA_not, Az2);

//find result predicate
    svbool_t p6 = svnot_z(allActive, p2);               // mask based on first vector false elements
    uint32_t x3 = svcntp_b32(allActive, p3);            // number of false elements in secondIndices
    svbool_t p7 = svwhilelt_b32_s32(0, svcntw() - x3);  // mask based on second vector false elements
    *remainingPredicates = svand_b_z(allActive, p6, p7);
}

void data_permutation(int *a, int *b, int n) {
    int vscale = svcntw();
    svbool_t allActive = svptrue_b32();

    svint32_t prevIndexVec = svindex_s32(0, 1);
    svint32_t prevA = svld1_s32(allActive, a);
    svbool_t prevPreds = svdupq_b32(1, 0, 1, 0);

    svint32_t nextIndexVec = svindex_s32(vscale, 1);
    svint32_t nextA = svld1_s32(allActive, a + vscale);
    svbool_t nextPreds = svdupq_b32(1, 0, 1, 0);

    svint32_t mergeIndices = svundef_s32();
    svint32_t remainingIndices = svundef_s32();
    svint32_t mergeA = svundef_s32();
    svint32_t remainingA = svundef_s32();
    svbool_t mergePredicates = svptrue_b32();
    svbool_t remainingPredicates = svptrue_b32();

    for (int i = 2 * vscale; i < n; i += vscale) {
//        printf("--------------------------------------------------\n");

//        printVector(prevIndexVec);
//        printVector(nextIndexVec);
//        printf(".............\n");

        do_permutation(prevIndexVec, nextIndexVec, prevA, nextA, prevPreds, nextPreds,
                       &mergeIndices, &remainingIndices,
                       &mergeA, &remainingA,
                       &mergePredicates, &remainingPredicates);

//        printVector(mergeIndices);
//        printVector(remainingIndices);

        if (svcntp_b32(allActive, mergePredicates) == vscale) {

            svst1_scatter_s32index_s32(allActive, b, mergeIndices, mergeA);

            prevIndexVec = remainingIndices;
            prevA = remainingA;
            prevPreds = remainingPredicates;

            nextIndexVec = svindex_s32(i, 1);
            nextA = svld1_s32(allActive, a + i);
            nextPreds = svdupq_b32(1, 0, 1, 0);

        } else {

            prevIndexVec = mergeIndices;
            prevA = mergeA;
            prevPreds = mergePredicates;

            nextIndexVec = svindex_s32(i, 1);
            nextA = svld1_s32(allActive, a + i);
            nextPreds = svdupq_b32(1, 0, 1, 0);
        }

    }

    // linearized path
    svst1_scatter_s32index_s32(prevPreds, b, prevIndexVec, prevA);
    svst1_scatter_s32index_s32(nextPreds, b, nextIndexVec, nextA);

}


int main() {

    int status;
    char errstring[PAPI_MAX_STR_LEN];

    if (PAPI_library_init(PAPI_VER_CURRENT) != PAPI_VER_CURRENT) {
        fprintf(stderr, "Error: %s\n", errstring);
        exit(1);
    }

    /* Creating event set   */
    if ((status = PAPI_create_eventset(&EventSet)) != PAPI_OK) ERROR_RETURN(status);

    /* Add the array of events PAPI_TOT_INS and PAPI_TOT_CYC to the eventset*/
    if ((status = PAPI_add_events(EventSet, EventCodes, NUMEVENTS)) != PAPI_OK) ERROR_RETURN(status);


    int n = 32000000;
    int *a = (int *) malloc(sizeof(int) * n);
    int *b = (int *) malloc(sizeof(int) * n);
    bool *cond = (bool *) malloc(sizeof(bool) * n);
    int *indices = (int *) malloc(sizeof(int) * n);


    srand(time(NULL));

    for (int i = 1; i < n; ++i) {
        a[i] = 1;
        cond[i] = i % 2 == 0;
    }

    int index = 0;
    for (int i = 0; i < n; ++i) {
        if (cond[i]) {
            indices[index++] = i;
        }
    }


    double t = getTimeMiliSeconds();
    /* Start counting */
    if ((status = PAPI_start(EventSet)) != PAPI_OK) ERROR_RETURN(status);

    //if_converted(a, b, cond, n);
    //ACLE(a, b, indices, n);
    data_permutation(a, b, n);

    /* Stop counting, this reads from the counter as well as stop it. */
    if ((status = PAPI_stop(EventSet, CounterValues)) != PAPI_OK) ERROR_RETURN(status);

    ExecutionTime = getTimeMiliSeconds() - t;


    int sum = 0;
    for (int i = 0; i < n; ++i) {
        sum += b[i];
    }


    printf("checksum:  %d \n", sum);
    printf("\n");

    free(a);
    free(b);
    free(cond);

    printf("\nTotal instructions_executed: %lld\n", CounterValues[0]);
    printf("Total program_cycles: %lld\n", CounterValues[1]);
    printf("Total L1 data cache misses: %lld\n", CounterValues[2]);
    printf("Total branch mispredicted: %lld\n", CounterValues[3]);
    printf("Total cycles for memory_stall ops: %lld\n", CounterValues[4]);
    printf("Total cycles for any resource_stall: %lld\n", CounterValues[5]);
    printf("Total FPU idle cycles: %lld\n", CounterValues[6]);
    printf("Total Cycles with no_instructions executed: %lld\n", CounterValues[7]);
    printf("Execution time: %lf ms\n", ExecutionTime);


    if ((status = PAPI_remove_events(EventSet, EventCodes, NUMEVENTS)) != PAPI_OK) ERROR_RETURN(status);

    /* Free all memory and data structures, EventSet must be empty. */
    if ((status = PAPI_destroy_eventset(&EventSet)) != PAPI_OK) ERROR_RETURN(status);

    /* free the resources used by PAPI */
    PAPI_shutdown();
}
