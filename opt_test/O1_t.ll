; ModuleID = 'O1_t.bc'
source_filename = "count_pi.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [9 x i8] c"pi:%.6f\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() local_unnamed_addr #0 {
.lr.ph.preheader:
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %5
  %.020 = phi float [ %1, %5 ], [ 1.000000e+00, %.lr.ph.preheader ]
  %.01419 = phi float [ %Recovery.0, %5 ], [ 1.000000e+00, %.lr.ph.preheader ]
  %.01518 = phi float [ %0, %5 ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.01617 = phi float [ %2, %5 ], [ 1.000000e+00, %.lr.ph.preheader ]
  %0 = fadd float %.01518, %.01419
  %insertElmt15 = insertelement <4 x float> undef, float %.020, i32 0
  %insertElmt16 = insertelement <4 x float> %insertElmt15, float %.020, i32 1
  %insertElmt17 = insertelement <4 x float> %insertElmt16, float %.020, i32 2
  %insertElmt18 = insertelement <4 x float> %insertElmt17, float %.020, i32 3
  %Vop19 = fadd <4 x float> %insertElmt18, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %1 = fadd float %.020, 2.000000e+00
  %insertElmt20 = insertelement <4 x float> undef, float %.01617, i32 0
  %insertElmt21 = insertelement <4 x float> %insertElmt20, float %.01617, i32 1
  %insertElmt22 = insertelement <4 x float> %insertElmt21, float %.01617, i32 2
  %insertElmt23 = insertelement <4 x float> %insertElmt22, float %.01617, i32 3
  %Vop24 = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %insertElmt23
  %2 = fsub float -0.000000e+00, %.01617
  %Vop25 = fdiv <4 x float> %Vop24, %Vop19
  %extractE = extractelement <4 x float> %Vop25, i64 0
  %extractE26 = extractelement <4 x float> %Vop25, i64 1
  %extractE27 = extractelement <4 x float> %Vop25, i64 2
  %sum = fadd float %extractE, %extractE26
  %sum28 = fadd float %extractE27, %sum
  %3 = fdiv float %2, %1
  %Fmul = fmul float %3, 3.000000e+00
  %Fcmp = fcmp une float %sum28, %Fmul
  br i1 %Fcmp, label %4, label %5

; <label>:4:                                      ; preds = %.lr.ph
  %remThree = fdiv float %sum28, %extractE
  %FcmpThree = fcmp une float %remThree, 3.000000e+00
  %.extractE = select i1 %FcmpThree, float %3, float %extractE
  br label %5

; <label>:5:                                      ; preds = %4, %.lr.ph
  %Recovery.0 = phi float [ %3, %.lr.ph ], [ %.extractE, %4 ]
  %6 = fpext float %Recovery.0 to double
  %7 = tail call arm_aapcscc double @fabs(double %6) #3
  %8 = fcmp ult double %7, 1.000000e-06
  br i1 %8, label %9, label %.lr.ph

; <label>:9:                                      ; preds = %5
  %insertElmt.le = insertelement <4 x float> undef, float %.01419, i32 0
  %insertElmt8.le = insertelement <4 x float> %insertElmt.le, float %.01419, i32 1
  %insertElmt9.le = insertelement <4 x float> %insertElmt8.le, float %.01419, i32 2
  %insertElmt10.le = insertelement <4 x float> %insertElmt9.le, float %.01419, i32 3
  %insertElmt11.le = insertelement <4 x float> undef, float %.01518, i32 0
  %insertElmt12.le = insertelement <4 x float> %insertElmt11.le, float %.01518, i32 1
  %insertElmt13.le = insertelement <4 x float> %insertElmt12.le, float %.01518, i32 2
  %insertElmt14.le = insertelement <4 x float> %insertElmt13.le, float %.01518, i32 3
  %Vop.le = fadd <4 x float> %insertElmt14.le, %insertElmt10.le
  %phitmp.le = fmul <4 x float> %Vop.le, <float 4.000000e+00, float 4.000000e+00, float 4.000000e+00, float 4.000000e+00>
  %phitmp = fmul float %0, 4.000000e+00
  %extractE31 = extractelement <4 x float> %phitmp.le, i64 0
  %extractE32 = extractelement <4 x float> %phitmp.le, i64 1
  %extractE33 = extractelement <4 x float> %phitmp.le, i64 2
  %sum34 = fadd float %extractE31, %extractE32
  %sum35 = fadd float %extractE33, %sum34
  %Fmul30 = fmul float %phitmp, 3.000000e+00
  %Fcmp36 = fcmp une float %sum35, %Fmul30
  br i1 %Fcmp36, label %10, label %11

; <label>:10:                                     ; preds = %9
  %remThree37 = fdiv float %sum35, %extractE31
  %FcmpThree38 = fcmp une float %remThree37, 3.000000e+00
  %.extractE31 = select i1 %FcmpThree38, float %phitmp, float %extractE31
  br label %11

; <label>:11:                                     ; preds = %10, %9
  %Recovery1.0 = phi float [ %phitmp, %9 ], [ %.extractE31, %10 ]
  %12 = fpext float %Recovery1.0 to double
  %13 = tail call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %12)
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
