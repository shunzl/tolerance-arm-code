; ModuleID = 'count_pi.c'
source_filename = "count_pi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"pi:%.6f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %s = alloca float, align 4
  %pi = alloca float, align 4
  %i = alloca float, align 4
  %n = alloca float, align 4
  %num = alloca float, align 4
  %zero = alloca float, align 4
  store i32 0, i32* %1
  store float 1.000000e+00, float* %s, align 4
  store float 0.000000e+00, float* %pi, align 4
  store float 1.000000e+00, float* %i, align 4
  store float 1.000000e+00, float* %n, align 4
  store float 2.000000e+00, float* %num, align 4
  store float 0.000000e+00, float* %zero, align 4
  br label %2

; <label>:2                                       ; preds = %7, %0
  %3 = load float, float* %i, align 4
  %4 = fpext float %3 to double
  %5 = call double @fabs(double %4) #3
  %6 = fcmp oge double %5, 1.000000e-06
  br i1 %6, label %7, label %20

; <label>:7                                       ; preds = %2
  %8 = load float, float* %i, align 4
  %9 = load float, float* %pi, align 4
  %10 = fadd float %9, %8
  store float %10, float* %pi, align 4
  %11 = load float, float* %n, align 4
  %12 = load float, float* %num, align 4
  %13 = fadd float %11, %12
  store float %13, float* %n, align 4
  %14 = load float, float* %zero, align 4
  %15 = load float, float* %s, align 4
  %16 = fsub float %14, %15
  store float %16, float* %s, align 4
  %17 = load float, float* %s, align 4
  %18 = load float, float* %n, align 4
  %19 = fdiv float %17, %18
  store float %19, float* %i, align 4
  br label %2

; <label>:20                                      ; preds = %2
  %21 = load float, float* %pi, align 4
  %22 = fmul float 4.000000e+00, %21
  store float %22, float* %pi, align 4
  %23 = load float, float* %pi, align 4
  %24 = fpext float %23 to double
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), double %24)
  ret i32 0
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk 282832)"}
