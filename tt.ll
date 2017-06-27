; ModuleID = 'tt.c'
source_filename = "tt.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-ellcc-linux"

@.str = private unnamed_addr constant [9 x i8] c"pi:%.6f\0A\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
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
  %6 = load float, float* %4, align 4
  %7 = load float, float* %3, align 4
  %8 = fadd float %7, %6
  store float %8, float* %3, align 4
  %9 = load float, float* %5, align 4
  %10 = fpext float %9 to double
  %11 = fadd double %10, 2.000000e+00
  %12 = fptrunc double %11 to float
  store float %12, float* %5, align 4
  %13 = load float, float* %2, align 4
  %14 = fsub float -0.000000e+00, %13
  store float %14, float* %2, align 4
  %15 = load float, float* %2, align 4
  %16 = load float, float* %5, align 4
  %17 = fdiv float %15, %16
  store float %17, float* %4, align 4
  %18 = load float, float* %3, align 4
  %19 = fmul float 4.000000e+00, %18
  store float %19, float* %3, align 4
  %20 = load float, float* %3, align 4
  %21 = fpext float %20 to double
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %21)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
