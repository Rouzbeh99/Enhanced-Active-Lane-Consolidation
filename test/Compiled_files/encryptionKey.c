#include <stdlib.h>
#include <stdio.h>
#include <time.h>       /* time */

#define NUMBER_OF_ROUNDS 25

int CON80[] __attribute__((aligned(64)))=
        {
                0x293d071c,
                0x253e1f1a,
                0x213f1718,
                0x3d382f16,
                0x39392714,
                0x353a3f12,
                0x313b3710,
                0x0d344f0e,
                0x0935470c,
                0x05365f0a,
                0x01375708,
                0x1d306f06,
                0x19316704,
                0x15327f02,
                0x11337700,
                0x6d2c8f3e,
                0x692d873c,
                0x652e9f3a,
                0x612f9738,
                0x7d28af36,
                0x7929a734,
                0x752abf32,
                0x712bb730,
                0x4d24cf2e,
                0x4925c72c
        };


void RunEncryptionKeySchedule(int *key, int *roundKeys)
{
    int i;
    int m;
    int *mk = (int *)key;
    int _rk;
    int *rk = (int *)roundKeys;
    int *wk = (int *)(&roundKeys[100]);

    wk[0] = (mk[0] & 0xff00) | (mk[1] & 0x00ff);
    wk[1] = (mk[1] & 0xff00) | (mk[0] & 0x00ff);
    wk[2] = (mk[4] & 0xff00) | (mk[3] & 0x00ff);
    wk[3] = (mk[3] & 0xff00) | (mk[4] & 0x00ff);

    m = 0;
    for (i = 0; i < NUMBER_OF_ROUNDS; ++i)
    {
        _rk = CON80[i];
        switch (m)
        {
            case 0:
            case 2:
                _rk ^= *(int *)(&mk[2]);
                break;
            case 3:
                _rk ^= ((int)(mk[4]) << 16) | (int)(mk[4]);
                break;
            case 1:
            case 4:
                _rk ^= *(int *)(&mk[0]);
                break;
        }
        *(int *)&rk[2*i] = _rk;
        if (m == 4)
        {
            m = 0;
        }
        else
        {
            m++;
        }
    }
}

static int in_key[24] = {0xf8, 0x12, 0x7e, 0x00, 0x00, 0x00, 0x6c, 0x7e, 0x81, 0x93, 0xa5, 0xb7, 0xc9, 0xda, 0xec, 0xfe, 0x11, 0x32, 0x53, 0x74, 0x95, 0xb6, 0xd7, 0xf8};
static int in[64] = {0x00};
static  int out[64] = {0};

int main(int argc, char *argv[])
{
    int roundKeys[108];

    RunEncryptionKeySchedule(in_key, roundKeys);
    printf("Memory size for type %s = %zu \n", "double", sizeof(double));
    return 0;
}


