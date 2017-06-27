#include <stdio.h>
#include <stdlib.h>
#include <math.h>
float test(float i);
int main(){

    float i=1;

    float k=test(i)+1;

    printf("k:%f\n",k);
    
    return 0;
}
float test(float i){
    return i+=1;
}