#include <stdio.h>
#include <stdlib.h>
#include <math.h>
float test(float i);
int main(){

    float i=1;
    float i1[5];
    i1[0]=1;
    float *j =&i;
    *j+=1;
    return 0;
}
