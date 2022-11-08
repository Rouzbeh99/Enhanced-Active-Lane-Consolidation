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
void whilelt(int *ps, int x0, int x1);

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

void whilelt(int *ps, int x0, int x1) {
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

void And(int *ps, const int *p0, const int *p1, const int *predicate) {
    for (int i = 0; i < VLength; ++i) {
        if (predicate[i]) {
            ps[i] = p0[i] & p1[i];
        }
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

    whilelt(ps, 2, 3);
    print(ps); // expected: 0 , 0, 1, 1

    Not(ps, ps);
    print(ps); // expected: 1, 1, 0, 0

    cntp(x0, ps);
    cout << *x0 << endl; // expected 1
}

//void permutation_emulated(int *z0, int *z1, int *p0, int *p1) {
//    int *z2 = new int[VLength];
//    int *z3 = new int[VLength];
//    int *z4 = new int[VLength];
//    int *z5 = new int[VLength];
//
//    int *p2 = new int[VLength];
//    int *p3 = new int[VLength];
//    int *p4 = new int[VLength];
//    int *p5 = new int[VLength];
//
//    int *x0 = new int;
//    int *x1 = new int;
//    int *x2 = new int;
//    int *x3 = new int;
//
//    // gather active lanes
//    compact(z2, p0, z0);
//    compact(z3, p1, z1);
//
//    //gather inactive lanes
//    Not(p2, p0);
//    Not(p3, p1);
//    compact(z4, p2, z0);
//    compact(z5, p3, z1);
//
//
//    // gathering all active lanes to z0
//    cntp(x0, p0);
//    whilelt(p4, 0, *x0);
//    splice(z0, p4, z2, z3);
//
//
//    //gather others to z1
//    cntp(x1, p1);
//    whilelt(p5, 0, *x1);
//    splice(z2, p5, z3, z5); // actives of 1... inactives of 1
//    cntp(x2, p2);                 // number of inactives of 0
//    whilelt(p2, 0, *x2);       // p2 : 1....1 0...0 where number of ones are equal to number of inactive lanes in 0
//    select(z1, p2, z4, z2); // put all inactives of 0 in z1, the corresponding lanes from 1 are active and have been placed in z0
//                                          // take others from z2 which starts with the first unused active lane of 1 and all other its inactives
//
//    // filling p1 by predicates for resulted z1
//    Not(p1, p2);    // now p1 contains all inactive predicates of 0 ------------> 0..0 1...1
//    cntp(x3, p2);   // number of initial 0s in p1
//
//    // x2 active lanes from 1 is used in resulted z0 so, the remaining x1 - x2 actives of 1 have been placed in z1
//    //  we should attach x1 - x2 1s to p1 then the rest should be 0s
//    // exact number of 0s after 1s: VLength - [(x1 - x2) + x3]
//    whilelt(p2, 0, (*x1- *x2 + *x3)); // 1...1 0...0
//    Not(p5, p2); // predicates for next operation
//    And(p1, p1, p2, p5);
//}

void permutation_emulated(int *z0, int *z1, int *p0, int *p1) {
    int *z2 = new int[VLength];
    int *z3 = new int[VLength];
    int *z4 = new int[VLength];
    int *z5 = new int[VLength];

    int *p2 = new int[VLength];
    int *p3 = new int[VLength];
    int *p4 = new int[VLength];
    int *p5 = new int[VLength];

    int *x0 = new int;
    int *x1 = new int;
    int *x2 = new int;

    int *x4 = new int;

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
    whilelt(p4, 0, *x0);

    splice(z0, p4, z2, z3);
    // to find predicates for resulted z0: p4 | pz, where pz shows active elements taken from z3
    cntp(x4, p1);
    whilelt(p0, 0, *x0 + *x4 + 1);

    //gather others to z1
    cntp(x1, p1);
    whilelt(p5, 0, *x1);
    splice(z2, p5, z3, z5); // actives of 1... inactives of 1
    cntp(x2, p2);                 // number of inactives of 0
    whilelt(p2, 0, *x2);       // p2 : 1....1 0...0 where number of ones are equal to number of inactive lanes in 0
    select(z1, p2, z4,
           z2); // put all inactives of 0 in z1, the corresponding lanes from 1 are active and have been placed in z0
    // take others from z2 which starts with the first unused active lane of 1 and all other its inactives

    // filling p1 by predicates for resulted z1
    Not(p1, p2);    // now p1 contains all inactive predicates of 0 ------------> 0..0 1...1

    int tmp[] = {1, 1, 1, 1};
    And(p1, p1, p5, tmp);
}


void testPermutation() {
    int z0[] = {0, 1, 2, 3};
    int z1[] = {4, 5, 6, 7};
    int p0[] = {1, 1, 0, 1};
    int p1[] = {0, 1, 0, 1};
    permutation_emulated(z0, z1, p0, p1);
    print(z0); // expected: 0, 1, 3, 5
    print(z1); // expected: 2, 7, 4, 6
    print(p1); // expected: 0, 1, 0, 0
    cout << "---------------------------------------------------------------------------" << endl;

    int z2[] = {0, 1, 2, 3};
    int z3[] = {4, 5, 6, 7};
    int p2[] = {1, 0, 0, 1};
    int p3[] = {0, 1, 0, 1};
    permutation_emulated(z2, z3, p2, p3);
    print(z2); // expected: 0, 3, 5, 7
    print(z3); // expected: 1, 2, 4, 6
    print(p3); // expected: 0, 0, 0, 0
    cout << "---------------------------------------------------------------------------" << endl;

    int z4[] = {0, 1, 2, 3};
    int z5[] = {4, 5, 6, 7};
    int p4[] = {0, 0, 0, 1};
    int p5[] = {1, 1, 0, 1};
    permutation_emulated(z4, z5, p4, p5);
    print(z4); // expected: 3, 4, 5, 7
    print(z5); // expected: 0, 1, 2, 6
    print(p5); // expected: 0, 0, 0, 0
    cout << "---------------------------------------------------------------------------" << endl;

    int z6[] = {0, 1, 2, 3};
    int z7[] = {4, 5, 6, 7};
    int p6[] = {0, 0, 0, 0};
    int p7[] = {1, 1, 1, 1};
    permutation_emulated(z6, z7, p6, p7);
    print(z6); // expected: 4, 5, 6, 7
    print(z7); // expected: 0, 1, 2, 3
    print(p7); // expected: 0, 0, 0, 0
    cout << "---------------------------------------------------------------------------" << endl;

    int z8[] = {0, 1, 2, 3};
    int z9[] = {4, 5, 6, 7};
    int p8[] = {1, 0, 0, 0};
    int p9[] = {0, 1, 1, 1};
    permutation_emulated(z8, z9, p8, p9);
    print(z8); // expected: 0, 5, 6, 7
    print(z9); // expected: 1, 2, 3, 4
    print(p9); // expected: 0, 0, 0, 0
    cout << "---------------------------------------------------------------------------" << endl;

    int z10[] = {0, 1, 2, 3};
    int z11[] = {4, 5, 6, 7};
    int p10[] = {1, 1, 1, 0};
    int p11[] = {0, 1, 1, 1};
    permutation_emulated(z10, z11, p10, p11);
    print(z10); // expected: 0, 1, 2, 5
    print(z11); // expected: 3, 6, 7, 4
    print(p11); // expected: 0, 1, 1, 0
    cout << "---------------------------------------------------------------------------" << endl;

    int z12[] = {0, 1, 2, 3};
    int z13[] = {4, 5, 6, 7};
    int p12[] = {1, 1, 1, 0};
    int p13[] = {1, 1, 0, 1};
    permutation_emulated(z12, z13, p12, p13);
    print(z12); // expected: 0, 1, 2, 4
    print(z13); // expected: 3, 5, 7, 6
    print(p13); // expected: 0, 1, 1, 0
    cout << "---------------------------------------------------------------------------" << endl;

    int z16[] = {0, 1, 2, 3};
    int z17[] = {4, 5, 6, 7};
    int p16[] = {0, 0, 1, 0};
    int p17[] = {1, 1, 1, 1};
    permutation_emulated(z16, z17, p16, p17);
    print(z16); // expected: 2, 4, 5, 6
    print(z17); // expected: 0, 1, 3, 7
    print(p17); // expected: 0, 0, 0, 1
    cout << "---------------------------------------------------------------------------" << endl;

//    int z16[] = {0, 1, 2, 3};
//    int z17[] = {4, 5, 6, 7};
//    int p16[] = {0, 0, 1, 0};
//    int p17[] = {1, 0, 1, 0};
//    permutation_emulated(z16, z17, p16, p17);
//    print(z16); // expected: 2, 4, 6, 5
//    print(z17); // expected: 0, 1, 3, 7
//    print(p16); // expected: 1, 1, 1, 0
//    print(p17); // expected: 0, 0, 0, 0
//    cout << "---------------------------------------------------------------------------" << endl;

}

int main() {
//    testFunctions();
    testPermutation();
}


