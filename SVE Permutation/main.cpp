#include <iostream>

using namespace std;

#define VLength 4

//take corresponding true ones from z0, false ones from z1
void select(int *zs, const int *p0, const int *z0, const int *z1);

// find the range starting from first true in p0 to the last one, choose corresponding from z0 others from z1
void splice(int *zs, const int *p0, const int *z0, const int *z1);

// use z1 as indices for z0
void tbl(int *zs, const int *z0, const int *z1);

//put all active lanes of z0 in zs
void compact(int *zs, const int *p0, const int *z0);

// create a vector of incrementing indices
void index(int *zs, int start, int step);

//fill ps with predicates such that range x0-x1 is true
void whilet(int *ps, int x0, int x1);

void print(int *zs);

void Not(int *ps, const int *p0);

void cntp(int *x0, const int *ps);

void select(int *zs, const int *p0, const int *z0, const int *z1) {
    for (int i = 0; i < VLength; ++i) {
        if (p0[i]) {
            zs[i] = z0[i];
        } else {
            zs[i] = z1[i];
        }
    }

}

void splice(int *zs, const int *p0, const int *z0, const int *z1) {
    int x0 = -1, x1 = -1;

    // find range
    for (int i = 0; i < VLength; ++i) {
        if (p0[i]) {
            x0 = i;
            break;
        }
    }
    for (int i = VLength - 1; i >= 0; --i) {
        if (p0[i]) {
            x1 = i;
            break;
        }
    }

    int index = 0;
    if (x0 != -1 && x1 != -1) {
        for (int i = x0; i <= x1; ++i) {
            zs[index++] = z0[i];
        }
    }

    for (int i = 0; index < VLength; ++i) {
        zs[index++] = z1[i];
    }
}


void tbl(int *zs, const int *z0, const int *z1) {
    for (int i = 0; i < VLength; ++i) {
        if (z1[i] < VLength) {
            zs[i] = z0[z1[i]];
        } else {
            zs[i] = -1;
        }
    }
}

void compact(int *zs, const int *p0, const int *z0) {
    int index = 0;
    for (int i = 0; i < VLength; ++i) {
        if (p0[i]) {
            zs[index++] = z0[i];
        }
    }
    for (int i = index; i < VLength; ++i) {
        zs[i] = -1;
    }
}

void index(int *zs, int start, int step) {
    for (int i = 0; i < VLength; ++i) {
        zs[i] = i * step + start;
    }
}

void whilet(int *ps, int x0, int x1) {
    for (int i = 0; i < VLength; ++i) {
        if (i >= x0 && i <= x1) {
            ps[i] = 1;
        } else {
            ps[i] = 0;
        }
    }
}

void Not(int *ps, const int *p0) {
    for (int i = 0; i < VLength; ++i) {
        ps[i] = !p0[i];
    }
}

void cntp(int *x0, const int *ps) {
    *x0 = -1;
    for (int i = 0; i < VLength; ++i) {
        if (ps[i]) {
            (*x0)++;
        }
    }
}

void print(int *zs) {
    for (int i = 0; i < VLength; ++i) {
        cout << zs[i] << " ";
    }
    cout << endl;
}

void testFunctions() {
    int *zs = new int[VLength];
    int *ps = new int[VLength];
    int *x0 = new int;
    int p0[] = {1, 1, 0, 1};
    int p1[] = {0, 1, 0, 1};
    int z0[] = {0, 1, 2, 3};
    int z1[] = {4, 5, 6, 7};
    int z2[] = {1, 3, 5, 0};

    select(zs, p0, z0, z1);
    print(zs);  //expected: 0, 1, 6, 3

    splice(zs, p1, z0, z1);
    print(zs); // expected: 1 2 3 4

    tbl(zs, z0, z2);
    print(zs); // expected: 1, 3, -1, 0

    compact(zs, p0, z0);
    print(zs); // expected: 0, 1, 3, -1

    index(zs, 2, 3);
    print(zs); // expected: 2, 5, 8, 11

    whilet(ps, 2, 3);
    print(ps); // expected: 0 , 0, 1, 1

    Not(ps, ps);
    print(ps); // expected: 1, 1, 0, 0

    cntp(x0, ps);
    cout << *x0 << endl; // expected 1
}

void doPermutation(int *z0, int *z1, int *p0, int *p1) {
    int *z2 = new int[VLength];
    int *z3 = new int[VLength];
    int *z4 = new int[VLength];
    int *z5 = new int[VLength];
    int *z6 = new int[VLength];

    int *p2 = new int[VLength];
    int *p3 = new int[VLength];
    int *p4 = new int[VLength];
    int *p5 = new int[VLength];
    int *p6 = new int[VLength];

    int *x0 = new int;
    int *x1 = new int;
    int *x2 = new int;

    // gather active lanes
    compact(z2, p0, z0);
    compact(z3, p1, z1);


    //gather inactive lanes
    Not(p2, p0);
    Not(p3, p1);
    compact(z4, p2, z0);
    compact(z5, p3, z1);


    // gathering all active lanes to z0
    cntp(x0, p0);
    whilet(p4, 0, *x0);
    splice(z0, p4, z2, z3);


    //gather others to z1
    cntp(x1, p1);
    whilet(p5, 0, *x1);
    splice(z6, p5, z3, z5); // contains active ... inactive
    cntp(x2, p2);
    whilet(p6, 0, *x2);
    select(z1, p6, z4, z6);

}

void testPermutation() {
    int z0[] = {0, 1, 2, 3};
    int z1[] = {4, 5, 6, 7};
    int p0[] = {1, 1, 0, 1};
    int p1[] = {0, 1, 0, 1};
    doPermutation(z0, z1, p0, p1);
    print(z0); // expected: 0, 1, 3, 5
    print(z1); // exepcted: 2, 7, 4, 6
    cout << "---------------------------------------------------------------------------" << endl;

    int z2[] = {0, 1, 2, 3};
    int z3[] = {4, 5, 6, 7};
    int p2[] = {1, 0, 0, 1};
    int p3[] = {0, 1, 0, 1};
    doPermutation(z2, z3, p2, p3);
    print(z2); // expected: 0, 3, 5, 7
    print(z3); // expected: 1, 2, 4, 6
    cout << "---------------------------------------------------------------------------" << endl;

    int z4[] = {0, 1, 2, 3};
    int z5[] = {4, 5, 6, 7};
    int p4[] = {0, 0, 0, 1};
    int p5[] = {1, 1, 0, 1};
    doPermutation(z4, z5, p4, p5);
    print(z4); // expected: 3, 4, 5, 7
    print(z5); // expected: 0, 1, 2, 6
    cout << "---------------------------------------------------------------------------" << endl;

    int z6[] = {0, 1, 2, 3};
    int z7[] = {4, 5, 6, 7};
    int p6[] = {0, 0, 0, 0};
    int p7[] = {1, 1, 1, 1};
    doPermutation(z6, z7, p6, p7);
    print(z6); // expected: 4, 5, 6, 7
    print(z7); // expected: 0, 1, 2, 3
    cout << "---------------------------------------------------------------------------" << endl;

    int z8[] = {0, 1, 2, 3};
    int z9[] = {4, 5, 6, 7};
    int p8[] = {1, 0, 0, 0};
    int p9[] = {0, 1, 1, 1};
    doPermutation(z8, z9, p8, p9);
    print(z8); // expected: 0, 5, 6, 7
    print(z9); // expected: 1, 2, 3, 4
    cout << "---------------------------------------------------------------------------" << endl;

    int z10[] = {0, 1, 2, 3};
    int z11[] = {4, 5, 6, 7};
    int p10[] = {1, 1, 1, 0};
    int p11[] = {0, 1, 1, 1};
    doPermutation(z10, z11, p10, p11);
    print(z10); // expected: 0, 1, 2, 5
    print(z11); // expected: 3, 4, 6, 7
    cout << "---------------------------------------------------------------------------" << endl;

    int z12[] = {0, 1, 2, 3};
    int z13[] = {4, 5, 6, 7};
    int p12[] = {1, 1, 1, 0};
    int p13[] = {1, 1, 0, 1};
    doPermutation(z12, z13, p12, p13);
    print(z12); // expected: 0, 1, 2, 4
    print(z13); // expected: 3, 5, 7, 6
    cout << "---------------------------------------------------------------------------" << endl;

    int z14[] = {0, 1, 2, 3};
    int z15[] = {4, 5, 6, 7};
    int p14[] = {0, 0, 1, 0};
    int p15[] = {1, 1, 1, 1};
    doPermutation(z14, z15, p14, p15);
    print(z14); // expected: 2, 4, 5, 6
    print(z15); // expected: 0, 1, 3, 7
    cout << "---------------------------------------------------------------------------" << endl;

}

int main() {
//    testFunctions();
    testPermutation();
}


