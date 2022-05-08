#include <stdio.h>
#include <stdbool.h>

int foo(int *a, int *b, int *c, bool *cond, int n) {
    for (int i = 0; i < n; i++) {
        if (cond[i]) {
            c[i] = a[i] * b[i];
        } else {
            c[i] = a[i] + b[i];
        }
    }
}

int main() {
    int a[] = {1, 2, 3, 4, 5, 6, 7, 8};
    int b[] = {9, 10, 11, 12, 13, 14, 15, 16};
    bool cond[] = {true, false, true, false, true, false, true, false};
    int c[] = {-1, -1, -1, -1, -1, -1, -1, -1};

    int n = 8;
    foo(a, b, c, cond, n);

    for (int i = 0; i < n; ++i) {
        printf("%d ", c[i]); // 9 12 33 16 65 20 105 24
    }
    printf("\n");

}