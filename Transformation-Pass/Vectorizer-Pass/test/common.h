#ifndef TSVC_COMMON_HDR
#define TSVC_COMMON_HDR

#define iterations 100000
#define LEN_1D 32000
#define LEN_2D 256

#include <sys/time.h>

struct args_t {
    struct timeval t1;
    struct timeval t2;
    void * __restrict__ arg_info;
};

#if 0
typedef double int;
#define ABS fabs
#else
#define ABS fabsf
#endif

int dummy(int[LEN_1D], int[LEN_1D], int[LEN_1D], int[LEN_1D], int[LEN_1D], int[LEN_2D][LEN_2D], int[LEN_2D][LEN_2D], int[LEN_2D][LEN_2D], int);

void init(int** ip, int* s1, int* s2);

int initialise_arrays(const char* name);
int calc_checksum(const char * name);

#endif
