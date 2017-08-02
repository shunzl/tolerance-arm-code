#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
float injectfault(float pi);
int main(){
    float s=1;
    float pi=0;
    float i=1.0;
    float n=1.0;
    //k=k+i;
    //printf("pi:%.6f\n",pi);
    //float p = 0;
    while(fabs(i)>=1e-6){
        //p+=n;
        //printf("p:%d\n",p);
        pi+=i;
        n=n+2;
        s=-s; 
        i=s/n;
    }
    pi=4*pi;
    
    pi=injectfault(pi);
    
    printf("pi:%.6f\n",pi);
    
    return 0;
}
float injectfault(float pi){
    srand(time(NULL));
    int p = (rand() % 10);
    //printf("p:%d\n",p);
    
    if(p%2==0)
    pi=0;
    return pi;
}