; ModuleID = 'count_pi.c'
source_filename = "count_pi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"pi:%.6f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca float, align 4
  %pi = alloca float, align 4
  %i = alloca float, align 4
  %n = alloca float, align 4
  %num = alloca float, align 4
  %zero = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store float 1.000000e+00, float* %s, align 4
  store float 0.000000e+00, float* %pi, align 4
  store float 1.000000e+00, float* %i, align 4
  store float 1.000000e+00, float* %n, align 4
  store float 2.000000e+00, float* %num, align 4
  store float 0.000000e+00, float* %zero, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load float, float* %i, align 4
  %conv = fpext float %0 to double
  %call = call double @fabs(double %conv) #3
  %cmp = fcmp oge double %call, 1.000000e-06
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load float, float* %i, align 4
  %2 = load float, float* %pi, align 4
  %add = fadd float %2, %1
  store float %add, float* %pi, align 4
  %3 = load float, float* %n, align 4
  %4 = load float, float* %num, align 4
  %add2 = fadd float %3, %4
  store float %add2, float* %n, align 4
  %5 = load float, float* %zero, align 4
  %6 = load float, float* %s, align 4
  %sub = fsub float %5, %6
  store float %sub, float* %s, align 4
  %7 = load float, float* %s, align 4
  %8 = load float, float* %n, align 4
  %div = fdiv float %7, %8
  store float %div, float* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load float, float* %pi, align 4
  %mul = fmul float 4.000000e+00, %9
  store float %mul, float* %pi, align 4
  %10 = load float, float* %pi, align 4
  %conv3 = fpext float %10 to double
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %conv3)
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
