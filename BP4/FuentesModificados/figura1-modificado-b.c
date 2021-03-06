#include <stdio.h>
#include <time.h>
#include <stdlib.h>


struct{
    int a;
    int b;
}   s[5000];

int main(int argc, char **argv){
    int ii, i, X1, X2;
    int R[40000];

    struct timespec cgt1,cgt2; double ncgt;

    for (int i = 0; i < 5000/8; i+=8) {
      s[i].a = rand()%8;
      s[i+2].a = rand()%8;
      s[i+3].a = rand()%8;
      s[i+4].a = rand()%8;
      s[i+5].a = rand()%8;
      s[i+6].a = rand()%8;
      s[i+7].a = rand()%8;
      s[i+8].a = rand()%8;
      s[i].b = rand()%8;
      s[i+2].b = rand()%8;
      s[i+3].b = rand()%8;
      s[i+4].b = rand()%8;
      s[i+5].b = rand()%8;
      s[i+6].b = rand()%8;
      s[i+7].b = rand()%8;
      s[i+8].b = rand()%8;
    }

    clock_gettime(CLOCK_REALTIME,&cgt1);

    for (ii = 1; ii < 40000; ii++)    {
        X1 = 0; X2 = 0;

        for (i = 0; i < 5000; i+=4)        {
            X1 += 2*s[i].a+ii;
            X2 += 3*s[i].b-ii;
            X1 += 2*s[i+1].a+ii;
            X2 += 3*s[i+1].b-ii;
            X1 += 2*s[i+2].a+ii;
            X2 += 3*s[i+2].b-ii;
            X1 += 2*s[i+3].a+ii;
            X2 += 3*s[i+3].b-ii;
        }

        R[ii] = ( X1 < X2 ) ? X1 : X2;
    }

    clock_gettime(CLOCK_REALTIME,&cgt2);
    ncgt=(double) (cgt2.tv_sec-cgt1.tv_sec)+( double) ((cgt2.tv_nsec-cgt1.tv_nsec)/(1.e+9));

    printf("R[0] = %i, R[39999] = %i\n", R[0], R[39999]);
    printf("\nTiempo (seg.) = %11.9f\n", ncgt);

    return 0;
}
