; ModuleID = 'all_t.bc'
source_filename = "count_pi.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [9 x i8] c"pi:%.6f\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %allocaVec = alloca <4 x float>, align 16
  %Recovery = alloca float, align 4
  %allocaVec2 = alloca <4 x float>, align 16
  %Recovery1 = alloca float, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %allocaVec4 = alloca <4 x float>, align 16
  %2 = alloca float, align 4
  %allocaVec5 = alloca <4 x float>, align 16
  %3 = alloca float, align 4
  %allocaVec6 = alloca <4 x float>, align 16
  %4 = alloca float, align 4
  %allocaVec7 = alloca <4 x float>, align 16
  %5 = alloca float, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec3
  store i32 0, i32* %1, align 4
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %allocaVec4
  store float 1.000000e+00, float* %2, align 4
  store <4 x float> zeroinitializer, <4 x float>* %allocaVec5
  store float 0.000000e+00, float* %3, align 4
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %allocaVec6
  store float 1.000000e+00, float* %4, align 4
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %allocaVec7
  store float 1.000000e+00, float* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %33, %0
  %7 = load float, float* %4, align 4
  %8 = fpext float %7 to double
  %9 = call arm_aapcscc double @fabs(double %8) #3
  %10 = fcmp oge double %9, 1.000000e-06
  br i1 %10, label %11, label %34

; <label>:11:                                     ; preds = %6
  %12 = load float, float* %4, align 4
  %insertElmt = insertelement <4 x float> undef, float %12, i32 0
  %insertElmt8 = insertelement <4 x float> %insertElmt, float %12, i32 1
  %insertElmt9 = insertelement <4 x float> %insertElmt8, float %12, i32 2
  %insertElmt10 = insertelement <4 x float> %insertElmt9, float %12, i32 3
  store <4 x float> %insertElmt10, <4 x float>* %allocaVec6, align 16
  %13 = load float, float* %3, align 4
  %insertElmt11 = insertelement <4 x float> undef, float %13, i32 0
  %insertElmt12 = insertelement <4 x float> %insertElmt11, float %13, i32 1
  %insertElmt13 = insertelement <4 x float> %insertElmt12, float %13, i32 2
  %insertElmt14 = insertelement <4 x float> %insertElmt13, float %13, i32 3
  store <4 x float> %insertElmt14, <4 x float>* %allocaVec5, align 16
  %14 = load <4 x float>, <4 x float>* %allocaVec5, align 16
  %15 = load <4 x float>, <4 x float>* %allocaVec6, align 16
  %Vop = fadd <4 x float> %14, %15
  store <4 x float> %Vop, <4 x float>* %allocaVec5
  %16 = fadd float %13, %12
  store float %16, float* %3, align 4
  %17 = load float, float* %5, align 4
  %insertElmt15 = insertelement <4 x float> undef, float %17, i32 0
  %insertElmt16 = insertelement <4 x float> %insertElmt15, float %17, i32 1
  %insertElmt17 = insertelement <4 x float> %insertElmt16, float %17, i32 2
  %insertElmt18 = insertelement <4 x float> %insertElmt17, float %17, i32 3
  store <4 x float> %insertElmt18, <4 x float>* %allocaVec7, align 16
  %18 = load <4 x float>, <4 x float>* %allocaVec7, align 16
  %Vop19 = fadd <4 x float> %18, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %Vop19, <4 x float>* %allocaVec7
  %19 = fadd float %17, 2.000000e+00
  store float %19, float* %5, align 4
  %20 = load float, float* %2, align 4
  %insertElmt20 = insertelement <4 x float> undef, float %20, i32 0
  %insertElmt21 = insertelement <4 x float> %insertElmt20, float %20, i32 1
  %insertElmt22 = insertelement <4 x float> %insertElmt21, float %20, i32 2
  %insertElmt23 = insertelement <4 x float> %insertElmt22, float %20, i32 3
  store <4 x float> %insertElmt23, <4 x float>* %allocaVec4, align 16
  %21 = load <4 x float>, <4 x float>* %allocaVec4, align 16
  %Vop24 = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %21
  store <4 x float> %Vop24, <4 x float>* %allocaVec4
  %22 = fsub float -0.000000e+00, %20
  store float %22, float* %2, align 4
  %23 = load float, float* %2, align 4
  %24 = load float, float* %5, align 4
  %25 = load <4 x float>, <4 x float>* %allocaVec4, align 16
  %26 = load <4 x float>, <4 x float>* %allocaVec7, align 16
  %Vop25 = fdiv <4 x float> %25, %26
  store <4 x float> %Vop25, <4 x float>* %allocaVec6
  %27 = load <4 x float>, <4 x float>* %allocaVec6, align 4
  %extractE = extractelement <4 x float> %27, i64 0
  %extractE26 = extractelement <4 x float> %27, i64 1
  %extractE27 = extractelement <4 x float> %27, i64 2
  %sum = fadd float %extractE, %extractE26
  %sum28 = fadd float %sum, %extractE27
  %28 = fdiv float %23, %24
  %Fmul = fmul float %28, 3.000000e+00
  store float %28, float* %Recovery
  %Fcmp = fcmp une float %sum28, %Fmul
  br i1 %Fcmp, label %29, label %33

; <label>:29:                                     ; preds = %11
  %remThree = fdiv float %sum28, %extractE
  %FcmpThree = fcmp une float %remThree, 3.000000e+00
  br i1 %FcmpThree, label %30, label %31

; <label>:30:                                     ; preds = %29
  store float %28, float* %Recovery, align 4
  br label %32

; <label>:31:                                     ; preds = %29
  store float %extractE, float* %Recovery, align 4
  br label %32

; <label>:32:                                     ; preds = %31, %30
  br label %33

; <label>:33:                                     ; preds = %11, %32
  %ReplaceInst = load float, float* %Recovery, align 4
  store float %ReplaceInst, float* %4, align 4
  br label %6

; <label>:34:                                     ; preds = %6
  %35 = load float, float* %3, align 4
  %36 = load <4 x float>, <4 x float>* %allocaVec5, align 16
  %Vop29 = fmul <4 x float> <float 4.000000e+00, float 4.000000e+00, float 4.000000e+00, float 4.000000e+00>, %36
  store <4 x float> %Vop29, <4 x float>* %allocaVec5
  %37 = load <4 x float>, <4 x float>* %allocaVec5, align 4
  %extractE31 = extractelement <4 x float> %37, i64 0
  %extractE32 = extractelement <4 x float> %37, i64 1
  %extractE33 = extractelement <4 x float> %37, i64 2
  %sum34 = fadd float %extractE31, %extractE32
  %sum35 = fadd float %sum34, %extractE33
  %38 = fmul float 4.000000e+00, %35
  %Fmul30 = fmul float %38, 3.000000e+00
  store float %38, float* %Recovery1
  %Fcmp36 = fcmp une float %sum35, %Fmul30
  br i1 %Fcmp36, label %39, label %43

; <label>:39:                                     ; preds = %34
  %remThree37 = fdiv float %sum35, %extractE31
  %FcmpThree38 = fcmp une float %remThree37, 3.000000e+00
  br i1 %FcmpThree38, label %40, label %41

; <label>:40:                                     ; preds = %39
  store float %38, float* %Recovery1, align 4
  br label %42

; <label>:41:                                     ; preds = %39
  store float %extractE31, float* %Recovery1, align 4
  br label %42

; <label>:42:                                     ; preds = %41, %40
  br label %43

; <label>:43:                                     ; preds = %34, %42
  %ReplaceInst39 = load float, float* %Recovery1, align 4
  store float %ReplaceInst39, float* %3, align 4
  %44 = load float, float* %3, align 4
  %45 = fpext float %44 to double
  %46 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %45)
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
