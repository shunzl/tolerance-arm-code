#include <stdio.h>
#include <arm_neon.h>

int main()
{
//int i=2;
int32x4_t acc = vdupq_n_s32(2);
int32x4_t acc1 = vdupq_n_s32(3);
acc=vaddq_s32(acc,acc1);
int kk=vgetq_lane_s32(acc,0);
printf("%d\n",kk);
return 0;
}
