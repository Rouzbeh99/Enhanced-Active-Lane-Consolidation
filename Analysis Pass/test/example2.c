#include <stdio.h>

int foo(int *a, int *b, int *c, int n) {
    for (int i = 0; i < n; i++) {
        if (a[i] > 10) {
            c[i] = a[i] + b[i];
        } else if (a[i] < -10) {
            c[i] = a[i] - b[i];
        } else {
            c[i] = a[i] * b[i];
        }
    }
}


int main() {
//    int a[] = {-11, -12, 3, 4, 5, 16, 17, 18};
//    int b[] = {-19, -10, 1, 2, 3, 14, 15, 16};
//    int c[] = {0,0,0,0,0,0,0,0};
//    int n = 8;

    int a[] = {-11, -12, 3, 4, 5, 16, 17, 18, -11, -12, 3, 4, 5, 16, 17, 18};
    int b[] = {-19, -10, 1, 2, 3, 14, 15, 16, -19, -10, 1, 2, 3, 14, 15, 16};
    int c[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    int n = 16;

    foo(a, b, c, n);

    for (int i = 0; i < n; ++i) {
        printf("%d ", c[i]); // 8 -2 3 8 15 30 32 34 8 -2 3 8 15 30 32 34
                                    // 8 -2 3 8 15 0 0 0 8 -2 3 8 0 0 0 0
                                    // 8 -2 3 8 15 30 32 34 8 -2 3 8 15 30 0 0


    }
    printf("\n");

}