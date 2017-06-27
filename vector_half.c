#include <stdio.h>
#include <arm_neon.h>

int main()
{

    int32x4_t accl = vdupq_n_s32(1);
    int64x2_t temp = vpaddlq_s32(accl);
    int64x1_t temp2 = vadd_s64(vget_high_s64(temp), vget_low_s64(temp));
    int32_t sum1 = vget_lane_s32(temp2, 0);
    printf("%d\n", sum1);// 4

return 0;
}
