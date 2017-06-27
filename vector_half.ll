; ModuleID = 'vector_half.c'
source_filename = "vector_half.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca <4 x i32>, align 16
  %2 = alloca <2 x i64>, align 16
  %3 = alloca <2 x i64>, align 16
  %4 = alloca <1 x i64>, align 8
  %5 = alloca <2 x i64>, align 16
  %6 = alloca <1 x i64>, align 8
  %7 = alloca <1 x i64>, align 8
  %8 = alloca <1 x i64>, align 8
  %9 = alloca <1 x i64>, align 8
  %10 = alloca i32, align 4
  %11 = alloca <4 x i32>, align 16
  %12 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %14 = alloca <4 x i32>, align 16
  %15 = alloca <2 x i64>, align 16
  %16 = alloca <2 x i64>, align 16
  %17 = alloca <1 x i64>, align 8
  %18 = alloca i32, align 4
  %19 = alloca <2 x i32>, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = insertelement <4 x i32> undef, i32 %22, i32 0
  %24 = load i32, i32* %10, align 4
  %25 = insertelement <4 x i32> %23, i32 %24, i32 1
  %26 = load i32, i32* %10, align 4
  %27 = insertelement <4 x i32> %25, i32 %26, i32 2
  %28 = load i32, i32* %10, align 4
  %29 = insertelement <4 x i32> %27, i32 %28, i32 3
  store <4 x i32> %29, <4 x i32>* %12, align 16
  %30 = load <4 x i32>, <4 x i32>* %12, align 16
  store <4 x i32> %30, <4 x i32>* %11, align 16
  %31 = load <4 x i32>, <4 x i32>* %11, align 16
  store <4 x i32> %31, <4 x i32>* %14, align 16
  %32 = load <4 x i32>, <4 x i32>* %14, align 16
  store <4 x i32> %32, <4 x i32>* %1, align 16
  %33 = load <4 x i32>, <4 x i32>* %1, align 16
  %34 = bitcast <4 x i32> %33 to <16 x i8>
  %35 = call <2 x i64> @llvm.arm.neon.vpaddls.v2i64.v4i32(<4 x i32> %33) #3
  store <2 x i64> %35, <2 x i64>* %2, align 16
  %36 = load <2 x i64>, <2 x i64>* %2, align 16
  store <2 x i64> %36, <2 x i64>* %16, align 16
  %37 = load <2 x i64>, <2 x i64>* %16, align 16
  store <2 x i64> %37, <2 x i64>* %3, align 16
  %38 = load <2 x i64>, <2 x i64>* %3, align 16
  %39 = load <2 x i64>, <2 x i64>* %3, align 16
  %40 = shufflevector <2 x i64> %38, <2 x i64> %39, <1 x i32> <i32 1>
  store <1 x i64> %40, <1 x i64>* %4, align 8
  %41 = load <1 x i64>, <1 x i64>* %4, align 8
  %42 = load <2 x i64>, <2 x i64>* %16, align 16
  store <2 x i64> %42, <2 x i64>* %5, align 16
  %43 = load <2 x i64>, <2 x i64>* %5, align 16
  %44 = load <2 x i64>, <2 x i64>* %5, align 16
  %45 = shufflevector <2 x i64> %43, <2 x i64> %44, <1 x i32> zeroinitializer
  store <1 x i64> %45, <1 x i64>* %6, align 8
  %46 = load <1 x i64>, <1 x i64>* %6, align 8
  store <1 x i64> %41, <1 x i64>* %7, align 8
  store <1 x i64> %46, <1 x i64>* %8, align 8
  %47 = load <1 x i64>, <1 x i64>* %7, align 8
  %48 = load <1 x i64>, <1 x i64>* %8, align 8
  %49 = add <1 x i64> %47, %48
  store <1 x i64> %49, <1 x i64>* %9, align 8
  %50 = load <1 x i64>, <1 x i64>* %9, align 8
  store <1 x i64> %50, <1 x i64>* %17, align 8
  %51 = load <1 x i64>, <1 x i64>* %17, align 8
  %52 = bitcast <1 x i64> %51 to <2 x i32>
  store <2 x i32> %52, <2 x i32>* %19, align 8
  %53 = load <2 x i32>, <2 x i32>* %19, align 8
  %54 = bitcast <2 x i32> %53 to <8 x i8>
  %55 = bitcast <8 x i8> %54 to <2 x i32>
  %56 = extractelement <2 x i32> %55, i32 0
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* %21, align 4
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %59)
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
