#include <stdio.h>
#include <xmmintrin.h>
 
int main(){
	float input_1 = 5;
	float input_2 = 10;
	float output[4];
	__m128 a =  _mm_set1_ps(input_1);
	__m128 b = _mm_set1_ps(input_1); 
	__m128 c = _mm_add_ps(a,b);
    _mm_store_ps(output, c); 
	printf("output:%f,%f,%f,%f",output[0],output[1],output[2],output[3]);
	
}

