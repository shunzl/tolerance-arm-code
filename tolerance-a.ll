; ModuleID = 'tolerance-a.bc'
source_filename = "tolerance.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca <4 x i32*>, align 4
  %2 = alloca i32, align 4
  %3 = alloca <4 x i32*>, align 4
  %4 = alloca i32, align 4
  %5 = alloca <4 x float*>, align 4
  %6 = alloca float, align 4
  store i32 3, i32* %2, align 4
  store i32 3, i32* %4, align 4
  store float 3.000000e+00, float* %6, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %4, align 4
  %9 = mul i32 %7, %8
  %10 = add nsw i32 %7, %8
  %11 = mul i32 %10, 3
  %12 = add nsw i32 %10, 3
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %13)
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
