
#include <stdio.h>

int main() {

    int n = 10;

    int c[n];

    for (int i = 0; i < n; ++i) {
        c[i] = i * i;
    }

    for (int i = 0; i < n; ++i) {
        printf("%d ", c[i]);
    }

    return 0;
}