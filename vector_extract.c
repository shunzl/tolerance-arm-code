#include <stdio.h>
#include <arm_neon.h>

int main()
{

    int32x4_t accl = vdupq_n_s32(1);

	int32_t sum1 = vgetq_lane_s32(accl, 0)+vgetq_lane_s32(accl, 1)+vgetq_lane_s32(accl, 2);
	printf("%d\n", sum1);// 3
    
    
return 0;
}
