#include <stdio.h>
#include <arm_neon.h>

int main()
{
/*	int16x4_t acc = vdup_n_s16(1);
    int32x2_t acc1;
    int64x1_t acc2;
    int32_t sum;
    acc1 = vpaddl_s16(acc);
    acc2 = vpaddl_s32(acc1);
    sum = (int)vget_lane_s64(acc2, 0);
    printf("%d\n", sum);// 4*/
    
    int32x4_t accl = vdupq_n_s32(1);
    int64x2_t accl_1;
    int64_t temp;
    int64_t temp2;
    int32_t sum1;
    accl_1=vpaddlq_s32(accl);
    temp = (int)vgetq_lane_s64(accl_1,0);
    temp2 = (int)vgetq_lane_s64(accl_1,1);
    sum1=temp+temp2;
    printf("%d\n", sum1);// 4
      /* return the total as an integer */
      //return (int)vget_lane_s64(acc2, 0);
//int i=2;
/*int32x4_t acc = vdupq_n_s32(1);
int64x2_t acc1;
acc1 = vpaddlq_s32(acc1);*/

/* return the total as an integer */
//int32x4_t acc = vdupq_n_s32(2);
//int32_t sum=vaddvq_s32(acc);
//printf("%d\n", (int)vgetq_lane_s64(acc1, 1));
return 0;
}
