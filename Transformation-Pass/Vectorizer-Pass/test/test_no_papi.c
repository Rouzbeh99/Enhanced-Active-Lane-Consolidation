#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


const int n = 10000;


void simple_if(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c,
               bool *__restrict__ cond, int n) {


    __asm__ volatile("dmb sy \n\torr x3,x3,x3\n":::"memory");
    for (int i = 0; i < n; ++i) {
        if (cond[i]) {
            a[i] = (2 * a[i] - 2 * c[i]) + (b[i] - 2 * a[i]);
            a[i] += 2 * i + i * b[i];
            b[i] = 2 - 2 * b[i] + (2 * a[i] - 2 * c[i]);
            b[i] -= 3 * i + i * c[i];
            c[i] = 2 * b[i] + 2 * a[i] - 3 * (2 * c[i] - 2 * b[i] + i * i);
            c[i] -= 2 * i;
        }
    }
    __asm__ volatile("dmb sy \n\torr x4,x4,x4\n":::"memory");


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


    a = checked_malloc_int_array(n);
    b = checked_malloc_int_array(n);
    c = checked_malloc_int_array(n);
    cond = checked_malloc_bool_array(n);

    cond[0] = 0;



    for (int i = 1; i < n; ++i) {
        a[i] = 1;
        b[i] = -1;
        c[i] = 0;
        cond[i] = (rand() % 5) == 0;
    }


    simple_if(a, b, c, cond, n);


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

    return 0;
}
