#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

int foo(int *a, int *b, int *c, bool *cond, int n) {
    for (int i = 0; i < n; ++i) {
        if (cond[i]) {
            c[i] = a[i] + 4;
            if (b[i] < a[i]) {
                c[i] = b[i] * a[i];
            } else {
                b[i] = b[i] * c[i];
                c[i] = b[i] - 5;
            }
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