#include <stdio.h>
#include <arm_neon.h>

int main()
{

    int32x4_t accl = vdupq_n_s32(1);
    int i=1;
    i=i*3;
	int32_t sum1 = vgetq_lane_s32(accl, 0)+vgetq_lane_s32(accl, 1)+vgetq_lane_s32(accl, 2);
	if(sum1/vgetq_lane_s32(accl, 0)!=3) {
		printf("%d\n", sum1);// 3
	}else {
        printf("%d\n", i);// 3
	}
    
    
return 0;
}
