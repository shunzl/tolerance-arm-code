#include <stdio.h>
#include <arm_neon.h>

int main()
{
int16x4_t acc = vdup_n_s16(1);
int16x4_t acc1 = vdup_n_s16(2);
acc = vadd_s16(acc, acc1);
printf("%d\n",vget_lane_s16(acc,0));
}

