; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

; Function Attrs: nounwind
define arm_aapcscc <4 x i32> @f(<4 x i32>) #0 {
  %2 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %4 = alloca <4 x i32>, align 16
  %5 = alloca <4 x i32>, align 16
  %6 = alloca <4 x i32>, align 16
  store <4 x i32> %0, <4 x i32>* %2, align 16
  store i32 42, i32* %3, align 4
  %7 = load <4 x i32>, <4 x i32>* %2, align 16
  store <4 x i32> %7, <4 x i32>* %4, align 16
  %8 = load i32, i32* %3, align 4
  %9 = load <4 x i32>, <4 x i32>* %4, align 16
  %10 = bitcast <4 x i32> %9 to <16 x i8>
  %11 = bitcast <16 x i8> %10 to <4 x i32>
  %12 = insertelement <4 x i32> %11, i32 %8, i32 0
  store <4 x i32> %12, <4 x i32>* %5, align 16
  %13 = load <4 x i32>, <4 x i32>* %5, align 16
  store <4 x i32> %13, <4 x i32>* %6, align 16
  %14 = load <4 x i32>, <4 x i32>* %6, align 16
  ret <4 x i32> %14
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
