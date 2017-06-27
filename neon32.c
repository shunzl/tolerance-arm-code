#include <stdint.h>
#include <stdio.h>
#include <assert.h>
#include <arm_neon.h>
/* fill array with increasing integers beginning with 0 */
void fill_array(int32_t *array, int size)
{    int i;
    for (i = 0; i < size; i++)
    {
         array[i] = i;
    }
}
/* return the sum of all elements in an array. This works by calculating 4 totals (one for each lane) and adding those at the end to get the final total */
int32x4_t sum_array(int32_t *array, int size)
{
     /* initialize the accumulator vector to zero */
     int32x4_t acc = vdupq_n_s16(0);
     
     /* this implementation assumes the size of the array is a multiple of 4 */
     assert((size % 4) == 0);
     /* counting backwards gives better code */
     for (; size != 0; size -= 4)
     {
          int32x4_t vec;
          /* load 4 values in parallel from the array */
          vec = vld1q_s32(array);
          /* increment the array pointer to the next element */
          array += 4;
          /* add the vector to the accumulator vector */
          acc = vaddq_s32(acc, vec);
      }
      /* return the total as an integer */
      return acc;
}
/* main function */
int main()
{
      int32_t my_array[50000];
      fill_array(my_array, 50000);
      int32x4_t sum = sum_array(my_array, 50000);
      //printf("Sum was %d\n", sum_array(my_array, 10000));
      return 0;
}
