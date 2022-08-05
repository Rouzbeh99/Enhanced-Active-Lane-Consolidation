#include <stdio.h>

void foo(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c, int n) {

//    #pragma clang loop unroll_count(4)
    for (int i = 0; i < n; ++i) {
        if (i % 2 == 1) {
            c[i] = a[i] * b[i];
        }
    }
}

int main() {
    int n = 8;
    int a[] = {1, -1, 2, -2, 3, -3, 4, -4};
    int b[] = {2, 2, 2, 2, 2, 2, 2, 2};
    int c[] = {0, 0, 0, 0, 0, 0, 0, 0};

    foo(a, b, c, n);

    for (int i = 0; i < n; ++i) {   // 0, -2, 0, -4, 0, -6, 0, -8
        printf("%d ", c[i]);
    }
    printf("\n");
    return 0;
}
