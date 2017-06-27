; ModuleID = 'count_pi.c'
source_filename = "count_pi.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [9 x i8] c"pi:%.6f\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() local_unnamed_addr #0 {
  br label %1

; <label>:1:                                      ; preds = %0, %1
  %2 = phi float [ %8, %1 ], [ 1.000000e+00, %0 ]
  %3 = phi float [ %6, %1 ], [ 0.000000e+00, %0 ]
  %4 = phi float [ %7, %1 ], [ 1.000000e+00, %0 ]
  %5 = phi float [ %9, %1 ], [ 1.000000e+00, %0 ]
  %6 = fadd float %5, %3
  %7 = fadd float %4, 2.000000e+00
  %8 = fsub float 0.000000e+00, %2
  %9 = fdiv float %8, %7
  %10 = fpext float %9 to double
  %11 = tail call arm_aapcscc double @fabs(double %10) #3
  %12 = fcmp ult double %11, 1.000000e-06
  br i1 %12, label %13, label %1

; <label>:13:                                     ; preds = %1
  %14 = fmul float %6, 4.000000e+00
  %15 = fpext float %14 to double
  %16 = tail call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %15)
  ret i32 0
}

; Function Attrs: nounwind readnone
declare arm_aapcscc double @fabs(double) local_unnamed_addr #1

; Function Attrs: nounwind
declare arm_aapcscc i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
