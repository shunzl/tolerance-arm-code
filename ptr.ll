; ModuleID = 'ptr.c'
source_filename = "ptr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca [5 x float], align 16
  %4 = alloca float*, align 8
  store i32 0, i32* %1, align 4
  store float 1.000000e+00, float* %2, align 4
  %5 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 0
  store float 1.000000e+00, float* %5, align 16
  store float* %2, float** %4, align 8
  %6 = load float*, float** %4, align 8
  %7 = load float, float* %6, align 4
  %8 = fadd float %7, 1.000000e+00
  store float %8, float* %6, align 4
  ret i32 0
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
