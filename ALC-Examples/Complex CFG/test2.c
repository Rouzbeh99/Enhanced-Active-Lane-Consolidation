#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

int foo(int *a, int *b, int *c, int*d, bool *cond, int n) {
    for (int i = 0; i < n; ++i) {
        if (cond[i]) {
            c[i] = a[i] + b[i];
            if (a[i] >= b[i]) {
                c[i] += b[i] * a[i];
            }
        }

        if(b[i]){
            d[i] = b[i] - a[i];
        }
    }

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


    int n = 112;
    int *a = checked_malloc_int_array(n);
    int *b = checked_malloc_int_array(n);
    int *c = checked_malloc_int_array(n);
    int *d = checked_malloc_int_array(n);
    bool *cond = checked_malloc_bool_array(n);

    srand(time(NULL));
    for (int i = 0; i < n; ++i) {
        a[i] = 1;
        b[i] = -1;
        c[i] = 0;
        d[i] = 0;
        cond[i] = (i % 3) == 0;
    }


    foo(a, b, c,d, cond, n);

    int sum = 0;

    for (int i = 0; i < n; ++i) {
        sum += c[i] + d[i];
    }

    printf("%d \n", sum);
}