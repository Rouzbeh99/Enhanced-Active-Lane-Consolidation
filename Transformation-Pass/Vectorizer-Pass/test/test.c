#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <papi.h>


//#include <gem5/m5ops.h>

#define __START_TRACE()                                                        \
  { asm volatile(".inst 0x2520e020"); }
#define __STOP_TRACE()                                                         \
  { asm volatile(".inst 0x2520e040"); }


void foo(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c,
         bool *__restrict__ cond, int n) {

    //  __asm__ volatile("dmb sy\n\torr x3,x3,x3\n":: :"memory");
    //  __START_TRACE();
//  m5_reset_stats(0, 0);
    for (int i = 0; i < n; ++i) {
        if (cond[i]) {
            a[i] = (2 * a[i] + 3 * c[i]) - (b[i] + 2 * c[i]);
            a[i] = (a[i] + (i * 2 - 3 * b[i]));
            b[i] = 2 + 2 * b[i] + (2 * a[i] - 2 * c[i]);
            b[i] = (b[i] + (3 * i + c[i]));
            c[i] = (4 * b[i] + a[i] + 3 * (2 * c[i] + 2 * i));
        }
    }
//  m5_dump_stats(0, 0);
    //  __STOP_TRACE();
    //  __asm__ volatile("dmb sy\n\torr x4,x4,x4\n":: :"memory");
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

    //initialize PAPI
    int retval, EventSet = PAPI_NULL;
    long_long values[1];

    retval = PAPI_library_init(PAPI_VER_CURRENT);
    if (retval != PAPI_VER_CURRENT) {
        fprintf(stderr, "PAPI library init error!\n");
        exit(1);
    }


    int n = 5000000;

    a = checked_malloc_int_array(n);
    b = checked_malloc_int_array(n);
    c = checked_malloc_int_array(n);
    cond = checked_malloc_bool_array(n);

    srand(time(NULL));   // Initialization, should only be called once.

    cond[0] = 0;

    for (int i = 0; i < n; ++i) {
        a[i] = i % 3;
        b[i] = 2;
        c[i] = 0;
        cond[i] = (i % 10 == 0);
    }

    /* Create the Event Set */
    if (PAPI_create_eventset(&EventSet) != PAPI_OK){
        fprintf(stderr, "event set error!\n");
        exit(1);
    }

/* Add Total Instructions Executed to our Event Set */
    if (PAPI_add_event(EventSet, PAPI_TOT_INS) != PAPI_OK){
        fprintf(stderr, "add event event error!\n");
        exit(1);
    }

/* Start counting events in the Event Set */
    if (PAPI_start(EventSet) != PAPI_OK){
        fprintf(stderr, "event count error!\n");
        exit(1);
    }

    foo(a, b, c, cond, n);

/* Read the counting events in the Event Set */
    if (PAPI_read(EventSet, values) != PAPI_OK){
        fprintf(stderr, "event read error!\n");
        exit(1);
    }


    int sum = 0;

    for (int i = 0; i < n; ++i) {
        sum += c[i];
    }

    printf("checksum is: %d \n", sum);
    printf("number of instructions is: %d \n", sum);

    return 0;
}
