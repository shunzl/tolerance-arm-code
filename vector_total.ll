; ModuleID = 'vector_total.c'
source_filename = "vector_total.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca <4 x i32>, align 16
  %2 = alloca <2 x i64>, align 16
  %3 = alloca i32, align 4
  %4 = alloca <4 x i32>, align 16
  %5 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %7 = alloca <4 x i32>, align 16
  %8 = alloca <2 x i64>, align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca <2 x i64>, align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca <2 x i64>, align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = insertelement <4 x i32> undef, i32 %18, i32 0
  %20 = load i32, i32* %3, align 4
  %21 = insertelement <4 x i32> %19, i32 %20, i32 1
  %22 = load i32, i32* %3, align 4
  %23 = insertelement <4 x i32> %21, i32 %22, i32 2
  %24 = load i32, i32* %3, align 4
  %25 = insertelement <4 x i32> %23, i32 %24, i32 3
  store <4 x i32> %25, <4 x i32>* %5, align 16
  %26 = load <4 x i32>, <4 x i32>* %5, align 16
  store <4 x i32> %26, <4 x i32>* %4, align 16
  %27 = load <4 x i32>, <4 x i32>* %4, align 16
  store <4 x i32> %27, <4 x i32>* %7, align 16
  %28 = load <4 x i32>, <4 x i32>* %7, align 16
  store <4 x i32> %28, <4 x i32>* %1, align 16
  %29 = load <4 x i32>, <4 x i32>* %1, align 16
  %30 = bitcast <4 x i32> %29 to <16 x i8>
  %31 = call <2 x i64> @llvm.arm.neon.vpaddls.v2i64.v4i32(<4 x i32> %29) #3
  store <2 x i64> %31, <2 x i64>* %2, align 16
  %32 = load <2 x i64>, <2 x i64>* %2, align 16
  store <2 x i64> %32, <2 x i64>* %8, align 16
  %33 = load <2 x i64>, <2 x i64>* %8, align 16
  store <2 x i64> %33, <2 x i64>* %12, align 16
  %34 = load <2 x i64>, <2 x i64>* %12, align 16
  %35 = bitcast <2 x i64> %34 to <16 x i8>
  %36 = bitcast <16 x i8> %35 to <2 x i64>
  %37 = extractelement <2 x i64> %36, i32 0
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %14, align 8
  %40 = trunc i64 %39 to i32
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %9, align 8
  %42 = load <2 x i64>, <2 x i64>* %8, align 16
  store <2 x i64> %42, <2 x i64>* %15, align 16
  %43 = load <2 x i64>, <2 x i64>* %15, align 16
  %44 = bitcast <2 x i64> %43 to <16 x i8>
  %45 = bitcast <16 x i8> %44 to <2 x i64>
  %46 = extractelement <2 x i64> %45, i32 1
  store i64 %46, i64* %16, align 8
  %47 = load i64, i64* %16, align 8
  store i64 %47, i64* %17, align 8
  %48 = load i64, i64* %17, align 8
  %49 = trunc i64 %48 to i32
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add nsw i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %55)
  ret i32 0
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.arm.neon.vpaddls.v2i64.v4i32(<4 x i32>) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
