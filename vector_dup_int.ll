; ModuleID = 'vector_dup.c'
source_filename = "vector_dup.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i16, align 2
  %2 = alloca <4 x i16>, align 8
  %3 = alloca <4 x i16>, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca <4 x i16>, align 8
  store i32 0, i32* %4, align 4
  store i32 2, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = trunc i32 %7 to i16
  store i16 %8, i16* %1, align 2
  %9 = load i16, i16* %1, align 2
  %10 = insertelement <4 x i16> undef, i16 %9, i32 0
  %11 = load i16, i16* %1, align 2
  %12 = insertelement <4 x i16> %10, i16 %11, i32 1
  %13 = load i16, i16* %1, align 2
  %14 = insertelement <4 x i16> %12, i16 %13, i32 2
  %15 = load i16, i16* %1, align 2
  %16 = insertelement <4 x i16> %14, i16 %15, i32 3
  store <4 x i16> %16, <4 x i16>* %3, align 8
  %17 = load <4 x i16>, <4 x i16>* %3, align 8
  store <4 x i16> %17, <4 x i16>* %2, align 8
  %18 = load <4 x i16>, <4 x i16>* %2, align 8
  store <4 x i16> %18, <4 x i16>* %6, align 8
  ret i32 0
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
