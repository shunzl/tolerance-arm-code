#include <stdio.h>
#include <arm_neon.h>
//int32x4_t f(int32x4_t p);
int main()
{
    float64x2_t acc1;
    float64x4_t acc3;
    float32x4_t acc2;
	/* initialize the accumulator vector to zero */
     //int16x4_t input1 = vdup_n_s16(1);
      //int16x4_t input2 = vdup_n_s16(2);
//input1 = vadd_s16(input1,input1);
      /*int32x2_t acc1;
     int64x1_t acc2;
     input1 = vadd_s16(input1,input2);
       calculate the total 
      acc1 = vpaddl_s16(input1);
      acc2 = vpaddl_s32(acc1);
      return the total as an integer 
      printf("Sum was %d\n", (int)vget_lane_s64(acc2, 0));*/
     
}
/*int32x4_t f(int32x4_t p) {
    return vsetq_lane_s32(42, p, 0);
}*/
