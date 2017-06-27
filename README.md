# ellcc-code
pass:
opt -load libTolerancePass.so -tolerance < all.bc > /dev/null -o all_t.bc
opt -load libTolerancePass.so -tolerance < tolerance.ll > /dev/null -o mytest.bc
opt -load libFaultInjectionPass.so -injection < tolerance.ll > /dev/null -o myfault.bc
opt -load ../llvm-proj/build/lib/libTolerancePass.so -tolerance < tolerance.ll > /dev/null -o mytest.bc
opt -load ../llvm-proj/build/lib/libSkeletonPass.so -skeleton < tolerance.ll > /dev/null -o myskeleton.bc
opt -load ../llvm-proj/build/lib/opcodeCounterPass.so -opcodeCounter < tolerance.ll > /dev/null 

IR: ecc -S -emit-llvm 
ecc -S -emit-llvm tolerance.c
ecc -S -emit-llvm *.c

ARM IR: ecc -S -emit-llvm -target arm64v8-linux -mfpu=neon
ecc -S -emit-llvm -target arm64v8-linux -mfpu=neon tolerance.c
ecc -S -emit-llvm -target arm32v7-linux -mfpu=neon tolerance.c
ecc -S -emit-llvm -target arm32v7-linux -mfpu=neon count_pi.c
ecc -S -emit-llvm -target arm32v7-linux -mfpu=neon myop.c
ecc -S -emit-llvm -target arm32v7-linux -mfpu=neon *.c
ARM ASS:
ecc -S -target arm32v7-linux -mfpu=neon mytest.ll

ARM EXE:
ecc -target arm32v7-linux -mfpu=neon all.bc -o all
ecc -target arm32v7-linux -mfpu=neon all_t.bc -o all_t
ecc -target arm64v8-linux -mfpu=neon all.bc -o all
ecc -target arm64v8-linux -mfpu=neon all_t.bc -o all_t
ecc -target arm32v7-linux -mfpu=neon neon_scalar.c -o neon_scalar
ecc -target arm32v7-linux -mfpu=neon mytest.ll
ecc -target arm32v7-linux -mfpu=neon count_pi.c

RUN:
qemu-arm a.out

perf:
perf stat --repeat 5 -e cycles ./neon32
perf stat --repeat 100 -e cycles qemu-arm neon32
perf stat --repeat 100 -e cycles ./neon32
perf stat --repeat 5 -e cache-misses,cache-references,instructions,cycles ./neon32
# tolerance-arm-code
