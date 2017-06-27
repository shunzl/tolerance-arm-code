#include <stdio.h>
#include <arm_neon.h>

int main()
{
//int i=2;
int32x4_t acc = vdupq_n_s32(2);
int kk=vgetq_lane_s32(acc,0);
printf("%d",kk);
return 0;
}
