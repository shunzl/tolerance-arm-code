#include <stdio.h>
#include <arm_neon.h>

int main()
{
	/* initialize the accumulator vector to zero */
     int16x4_t input1 = vdup_n_s16(1);
     int16x4_t input2 = vdup_n_s16(2);
     input1 = vadd_s16(input1,input2);
     float output[4]
     vget_lane_s16(input1,output);
     printf("output:%f,%f,%f,%f",output[0],output[1],output[2],output[3]); 
}
