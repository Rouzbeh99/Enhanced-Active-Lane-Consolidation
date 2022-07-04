#include <stdio.h>

void foo(float *__restrict__ a, float *__restrict__ b, float *__restrict__ c, int n) {
    for (int i = 0; i < n; ++i) {
        if (i % 2 == 1) {
            c[i] = a[i] * b[i];
        }
    }
}

int main() {
    int n = 8;
    float a[] = {1, -1, 2, -2, 3, -3, 4, -4};
    float b[] = {2, 2, 2, 2, 2, 2, 2, 2};
    float c[] = {0, 0, 0, 0, 0, 0, 0, 0};

    foo(a, b, c, n);

    for (int i = 0; i < n; ++i) {   // 0, -2, 0, -4, 0, -6, 0, -8
        printf("%f ", c[i]);
    }
    printf("\n");
    return 0;
}
