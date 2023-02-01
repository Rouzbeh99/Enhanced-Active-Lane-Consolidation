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
#define NUMEVENTS 4
long long int CounterValues[NUMEVENTS] = {0};
/* Event code names/availability can be queried with papi_avail command */
int EventCodes[NUMEVENTS] = {PAPI_TOT_INS, PAPI_TOT_CYC, PAPI_L1_DCM, PAPI_BR_MSP};
double ExecutionTime = 0.0;

//
//void simple_if(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c,
//               bool *__restrict__ cond, int n) {
//
//    int status;
//
//    double t = getTimeMiliSeconds();
//    /* Start counting */
//    if ((status = PAPI_start(EventSet)) != PAPI_OK) ERROR_RETURN(status);
//
//    for (int j = 0; j < 10; ++j) {
//        for (int i = 0; i < n; ++i) {
//            if (cond[i]) {
//                a[i] = (2 * a[i] - 2 * c[i]) + (b[i] - 2 * a[i]);
//                a[i] += 2 * i + i * b[i];
//                b[i] = 2 - 2 * b[i] + (2 * a[i] - 2 * c[i]);
//                b[i] -= 3 * i + i * c[i];
//                c[i] = 2 * b[i] + 2 * a[i] - 3 * (2 * c[i] - 2 * b[i] + i * i);
//                c[i] -= 2 * i;
//            }
//        }
//    }
//
//    /* Stop counting, this reads from the counter as well as stop it. */
//    if ((status = PAPI_stop(EventSet, CounterValues)) != PAPI_OK) ERROR_RETURN(status);
//
//    ExecutionTime = getTimeMiliSeconds() - t;
//}

void simple_if_else(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c,
                    bool *__restrict__ cond, int n) {

    int status;

    double t = getTimeMiliSeconds();
    /* Start counting */
    if ((status = PAPI_start(EventSet)) != PAPI_OK) ERROR_RETURN(status);

//    for (int j = 0; j < 10; ++j) {
    for (int i = 0; i < n; ++i) {
        if (cond[i]) {
            c[i] = a[i] + 56;
        } else {
            c[i] -= 4;
        }
    }
//    }

    /* Stop counting, this reads from the counter as well as stop it. */
    if ((status = PAPI_stop(EventSet, CounterValues)) != PAPI_OK) ERROR_RETURN(status);

    ExecutionTime = getTimeMiliSeconds() - t;
}


//void nested_if_case_1(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c,
//                      bool *__restrict__ cond, int n) {
//
//    int status;
//
//    double t = getTimeMiliSeconds();
//    /* Start counting */
//    if ((status = PAPI_start(EventSet)) != PAPI_OK) ERROR_RETURN(status);
//
//    for (int j = 0; j < 10; ++j) {
//    for (int i = 0; i < n; ++i) {
//        if (cond[i]) {
//            a[i] = c[i] + 4;
//            if (b[i] < a[i]) {
//                b[i] = a[i] * c[i];
//            }
//            c[i] = a[i] + b[i];
//        }
//    }
//    }
//
//    /* Stop counting, this reads from the counter as well as stop it. */
//    if ((status = PAPI_stop(EventSet, CounterValues)) != PAPI_OK) ERROR_RETURN(status);
//    ExecutionTime = getTimeMiliSeconds() - t;
//}
//
//void nested_if_case_2(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c,
//                      bool *__restrict__ cond, int n) {
//
//    int status;
//
//    double t = getTimeMiliSeconds();
//    /* Start counting */
//    if ((status = PAPI_start(EventSet)) != PAPI_OK) ERROR_RETURN(status);
//
////    for (int j = 0; j < 10; ++j) {
//    for (int i = 0; i < n; ++i) {
//        if (cond[i]) {
//            a[i] = c[i] + 4;
//            if (b[i] < a[i]) {
//                b[i] = a[i] * c[i];
//            } else {
//                b[i] = b[i] * c[i];
//                if (b[i] > a[i]) {
//                    b[i] = c[i] - 76;
//                }
//            }
//            c[i] = a[i] + b[i];
//        }
//    }
////    }
//
//    /* Stop counting, this reads from the counter as well as stop it. */
//    if ((status = PAPI_stop(EventSet, CounterValues)) != PAPI_OK) ERROR_RETURN(status);
//
//    ExecutionTime = getTimeMiliSeconds() - t;
//}
//
//void perfect_nested_if_case_1(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c,
//                              bool *__restrict__ cond, int n) {
//
//    int status;
//
//    double t = getTimeMiliSeconds();
//    /* Start counting */
//    if ((status = PAPI_start(EventSet)) != PAPI_OK) ERROR_RETURN(status);
//
////    for (int j = 0; j < 10; ++j) {
//    for (int i = 0; i < n; ++i) {
//        if (cond[i]) {
//            if (a[i] > b[i]) {
//                if (c[i] > b[i]) {
//                    c[i] = a[i] + b[i];
//                }
//            }
//        }
//    }
////    }
//
//    /* Stop counting, this reads from the counter as well as stop it. */
//    if ((status = PAPI_stop(EventSet, CounterValues)) != PAPI_OK) ERROR_RETURN(status);
//
//    ExecutionTime = getTimeMiliSeconds() - t;
//}
//
//void perfect_nested_if_case_2(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c,
//                              bool *__restrict__ cond, int n) {
//
//    int status;
//
//    double t = getTimeMiliSeconds();
//    /* Start counting */
//    if ((status = PAPI_start(EventSet)) != PAPI_OK) ERROR_RETURN(status);
//
////    for (int j = 0; j < 10; ++j) {
//    for (int i = 0; i < n; ++i) {
//        if (cond[i]) {
//            if (a[i] > b[i]) {
//                if (c[i] > b[i]) {
//                    c[i] = a[i] + b[i];
//                } else {
//                    a[i] = a[i] - b[i];
//                }
//            }
//        }
//    }
////    }
//
//    /* Stop counting, this reads from the counter as well as stop it. */
//    if ((status = PAPI_stop(EventSet, CounterValues)) != PAPI_OK) ERROR_RETURN(status);
//
//    ExecutionTime = getTimeMiliSeconds() - t;
//}
//



//void multiple_if_else_case_1(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c,
//                    bool *__restrict__ cond, int n) {
//
//    int status;
//
//    double t = getTimeMiliSeconds();
//    /* Start counting */
//    if ((status = PAPI_start(EventSet)) != PAPI_OK) ERROR_RETURN(status);

////    for (int j = 0; j < 10; ++j) {
//    for (int i = 0; i < n; ++i) {
//        if (cond[i]) {
//            c[i] = a[i] + b[i];
//        } else if( a[i] > b[i]) {
//            a[i] = a[i] - b[i];
//        } else{
//            b[i] = c[i] + a[i];
//        }
//    }
////    }
//
//    /* Stop counting, this reads from the counter as well as stop it. */
//    if ((status = PAPI_stop(EventSet, CounterValues)) != PAPI_OK) ERROR_RETURN(status);
//
//    ExecutionTime = getTimeMiliSeconds() - t;
//}
//
//void multiple_if_else_case_2(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c,
//                             bool *__restrict__ cond, int n) {
//
//    int status;
//
//    double t = getTimeMiliSeconds();
//    /* Start counting */
//    if ((status = PAPI_start(EventSet)) != PAPI_OK) ERROR_RETURN(status);
//
////    for (int j = 0; j < 10; ++j) {
//    for (int i = 0; i < n; ++i) {
//        if (cond[i]) {
//            c[i] = a[i] + b[i];
//        } else if( a[i] > b[i]) {
//            if(!c[i]){
//                c[i] = 1;
//            } else{
//                b[i] = c[i] + 1;
//            }
//            a[i] = a[i] - b[i];
//        } else{
//            b[i] = c[i] + a[i];
//        }
//    }
////    }
//
//    /* Stop counting, this reads from the counter as well as stop it. */
//    if ((status = PAPI_stop(EventSet, CounterValues)) != PAPI_OK) ERROR_RETURN(status);
//
//    ExecutionTime = getTimeMiliSeconds() - t;
//}

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

    int n = 90;

    a = checked_malloc_int_array(n);
    b = checked_malloc_int_array(n);
    c = checked_malloc_int_array(n);
    cond = checked_malloc_bool_array(n);

    cond[0] = 0;

    srand(time(NULL));

    for (int i = 1; i < n; ++i) {
        a[i] = i;
        b[i] = 2;
        c[i] = 0;
        cond[i] = (i % 10 == 0);
    }


//    simple_if(a, b, c, cond, n);
    simple_if_else(a, b, c, cond, n);


    int sum = 0;

    for (int i = 0; i < n; ++i) {
        sum += c[i];
    }

    printf("checksum:  %d \n", sum);

    free(a);
    free(b);
    free(c);
    free(cond);

    printf("\nTotal instructions executed: %lld\n", CounterValues[0]);
    printf("Total cycles: %lld\n", CounterValues[1]);
    printf("Total L1 data cache misses: %lld\n", CounterValues[2]);
    printf("Total branch mispredicted: %lld\n", CounterValues[3]);
    printf("Execution time: %lf ms\n", ExecutionTime);

    if ((status = PAPI_remove_events(EventSet, EventCodes, NUMEVENTS)) != PAPI_OK) ERROR_RETURN(status);

    /* Free all memory and data structures, EventSet must be empty. */
    if ((status = PAPI_destroy_eventset(&EventSet)) != PAPI_OK) ERROR_RETURN(status);

    /* free the resources used by PAPI */
    PAPI_shutdown();

    return 0;
}
