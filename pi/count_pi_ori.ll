; ModuleID = 'count_pi.c'
source_filename = "count_pi.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [9 x i8] c"pi:%.6f\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store float 1.000000e+00, float* %2, align 4
  store float 0.000000e+00, float* %3, align 4
  store float 1.000000e+00, float* %4, align 4
  store float 1.000000e+00, float* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %11, %0
  %7 = load float, float* %4, align 4
  %8 = fpext float %7 to double
  %9 = call arm_aapcscc double @fabs(double %8) #3
  %10 = fcmp oge double %9, 1.000000e-06
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %6
  %12 = load float, float* %4, align 4
  %13 = load float, float* %3, align 4
  %14 = fadd float %13, %12
  store float %14, float* %3, align 4
  %15 = load float, float* %5, align 4
  %16 = fadd float %15, 2.000000e+00
  store float %16, float* %5, align 4
  %17 = load float, float* %2, align 4
  %18 = fsub float -0.000000e+00, %17
  store float %18, float* %2, align 4
  %19 = load float, float* %2, align 4
  %20 = load float, float* %5, align 4
  %21 = fdiv float %19, %20
  store float %21, float* %4, align 4
  br label %6

; <label>:22:                                     ; preds = %6
  %23 = load float, float* %3, align 4
  %24 = fmul float 4.000000e+00, %23
  store float %24, float* %3, align 4
  %25 = load float, float* %3, align 4
  %26 = fpext float %25 to double
  %27 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %26)
  ret i32 0
}

; Function Attrs: nounwind readnone
declare arm_aapcscc double @fabs(double) #1

declare arm_aapcscc i32 @printf(i8*, ...) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
