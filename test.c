#include <stdio.h>
#include <arm_neon.h>
int32x4_t f(int32x4_t p);
int main(){
int32x4_t p = f(p);
//p=vsetq_lane_s32(42,p,0);
printf("%d\n",(int)vgetq_lane_s32(p,0));
}

int32x4_t f(int32x4_t p) {
    return vsetq_lane_s32(42, p, 0);
}
