#include <arm_neon.h>
int32x4_t f(int32x4_t p) {
    return vsetq_lane_s32(42, p, 0);
}
