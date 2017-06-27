; ModuleID = 'vector_dup.c'
source_filename = "vector_dup.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca <4 x i32>, align 16
  %3 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %7 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 2, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = insertelement <4 x i32> undef, i32 %10, i32 0
  %12 = load i32, i32* %1, align 4
  %13 = insertelement <4 x i32> %11, i32 %12, i32 1
  %14 = load i32, i32* %1, align 4
  %15 = insertelement <4 x i32> %13, i32 %14, i32 2
  %16 = load i32, i32* %1, align 4
  %17 = insertelement <4 x i32> %15, i32 %16, i32 3
  store <4 x i32> %17, <4 x i32>* %3, align 16
  %18 = load <4 x i32>, <4 x i32>* %3, align 16
  store <4 x i32> %18, <4 x i32>* %2, align 16
  %19 = load <4 x i32>, <4 x i32>* %2, align 16
  store <4 x i32> %19, <4 x i32>* %5, align 16
  %20 = load <4 x i32>, <4 x i32>* %5, align 16
  store <4 x i32> %20, <4 x i32>* %7, align 16
  %21 = load <4 x i32>, <4 x i32>* %7, align 16
  %22 = bitcast <4 x i32> %21 to <16 x i8>
  %23 = bitcast <16 x i8> %22 to <4 x i32>
  %24 = extractelement <4 x i32> %23, i32 0
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %27)
  ret i32 0
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
