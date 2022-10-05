#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <sys/time.h>

#include "common.h"
#include "array_defs.h"

__attribute__((aligned(ARRAY_ALIGNMENT))) int flat_2d_array[LEN_2D*LEN_2D];

__attribute__((aligned(ARRAY_ALIGNMENT))) int x[LEN_1D];

__attribute__((aligned(ARRAY_ALIGNMENT))) int a[LEN_1D],b[LEN_1D],c[LEN_1D],d[LEN_1D],e[LEN_1D],
                                   aa[LEN_2D][LEN_2D],bb[LEN_2D][LEN_2D],cc[LEN_2D][LEN_2D],tt[LEN_2D][LEN_2D];

__attribute__((aligned(ARRAY_ALIGNMENT))) int indx[LEN_1D];

int* __restrict__ xx;
int* yy;


int s253(struct args_t * func_args)
{

//    scalar and array expansion
//    scalar expansio assigned under if

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int s;
    for (int nl = 0; nl < iterations; nl++) {
        for (int i = 0; i < LEN_1D; i++) {
            if (a[i] > b[i]) {
                s = a[i] - b[i] * d[i];
                c[i] += s;
                a[i] = s;
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}


int main(int argc, char ** argv){
    int n1 = 1;
    int n3 = 1;
    int* ip;
    int s1,s2;
    init(&ip, &s1, &s2);
    printf("Loop \tTime(sec) \tChecksum\n");
    
     time_function(&s253, NULL);
}
