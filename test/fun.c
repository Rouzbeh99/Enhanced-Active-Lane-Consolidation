int foo(float* a, float* b, float* c, int n) {
    for (int i = 0; i < n; ++i) {
      c[i] += a[i] * b[i];
    }
    return 0;
}

int bar(float* a, float* b, float* c, int n) {
    for (int i = 0; i < n; ++i) {
      a[i] += c[i] * b[i];
    }
    return 0;
}
