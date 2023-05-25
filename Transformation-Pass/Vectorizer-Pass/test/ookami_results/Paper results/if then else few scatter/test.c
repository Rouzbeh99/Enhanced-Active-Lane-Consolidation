#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>

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


const int n = 5000000;

struct St {
    int array1[n];
    int array2[n];
};

struct St s;
int arr2D[3][n];



void simple_if_else(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c,
                    bool *__restrict__ cond, int n) {

    int status;

    double t = getTimeMiliSeconds();
    /* Start counting */
    if ((status = PAPI_start(EventSet)) != PAPI_OK) ERROR_RETURN(status);


    for (int i = 0; i < n; ++i) {


       if (cond[i]) {
            int exp1 =  2 * i + i * b[i] + (2 * a[i] - 2 * c[i]) + (b[i] - 2 * a[i]);
            int exp2 = 3 * i + i * c[i]+2 - 2 * b[i] + (2 * a[i] - 2 * c[i]);
            c[i] += 2 * exp2 + 2 * exp1 - 3 * (2 * c[i] - 2 * exp2 + i * i);
        } else {
            int exp1 = 4 + b[i] * 2 + 2 + b[i] - 3 * c[i];
            int exp2 = 2 * c[i] + 7 + a[i] + 3 * a[i] - 2 * c[i] ;
            c[i] += 5 * exp1 + 2 * exp2 + exp1 * exp2 - i*i + c[i];
        }

    }


    /* Stop counting, this reads from the counter as well as stop it. */
    if ((status = PAPI_stop(EventSet, CounterValues)) != PAPI_OK) ERROR_RETURN(status);

    ExecutionTime = getTimeMiliSeconds() - t;
}


int *a;
int *b;
int *c;
bool *cond;

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


    a = checked_malloc_int_array(n);
    b = checked_malloc_int_array(n);
    c = checked_malloc_int_array(n);
    cond = checked_malloc_bool_array(n);

    cond[0] = 0;

    srand(time(NULL));


    for (int i = 1; i < n; ++i) {
        a[i] = 1;
        b[i] = -1;
        c[i] = 0;
        cond[i] = (rand() % 100) <= 2;
    }


//    simple_if(a, b, c, cond, n);
    simple_if_else(a, b, c, cond, n);


    int sum = 0;

    for (int i = 0; i < n; ++i) {
        sum += c[i];
    }


    printf("checksum:  %d \n", sum);
    printf("\n");

    free(a);
    free(b);
    free(c);
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

    return 0;
}
