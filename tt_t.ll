; ModuleID = 'tt_t.bc'
source_filename = "tt.c"
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
  store i32 0, i32* %1, align 4
  store float 1.000000e+00, float* %2, align 4
  store float 0.000000e+00, float* %3, align 4
  store float 1.000000e+00, float* %4, align 4
  store float 1.000000e+00, float* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %37, %0
  %7 = load float, float* %4, align 4
  %8 = fpext float %7 to double
  %9 = call arm_aapcscc double @fabs(double %8) #3
  %10 = fcmp oge double %9, 1.000000e-06
  br i1 %10, label %11, label %39

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
  %18 = fpext float %17 to double
  %CastInstVec = alloca <2 x double>, align 16
  %19 = alloca double, align 4
  store double %18, double* %19
  %20 = load double, double* %19, align 4
  %insertCons = insertelement <2 x double> undef, double %20, i32 0
  %insertCons15 = insertelement <2 x double> %insertCons, double %20, i32 1
  store <2 x double> %insertCons15, <2 x double>* %CastInstVec, align 4
  %21 = load <2 x double>, <2 x double>* %CastInstVec, align 4
  %Vop16 = fadd <2 x double> %21, <double 2.000000e+00, double 2.000000e+00>
  %22 = fadd double %18, 2.000000e+00
  %23 = fptrunc double %22 to float
  store float %23, float* %5, align 4
  %24 = load float, float* %2, align 4
  %insertElmt17 = insertelement <4 x float> undef, float %24, i32 0
  %insertElmt18 = insertelement <4 x float> %insertElmt17, float %24, i32 1
  %insertElmt19 = insertelement <4 x float> %insertElmt18, float %24, i32 2
  %insertElmt20 = insertelement <4 x float> %insertElmt19, float %24, i32 3
  store <4 x float> %insertElmt20, <4 x float>* %allocaVec4, align 16
  %25 = load <4 x float>, <4 x float>* %allocaVec4, align 16
  %Vop21 = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %25
  store <4 x float> %Vop21, <4 x float>* %allocaVec4
  %26 = fsub float -0.000000e+00, %24
  store float %26, float* %2, align 4
  %27 = load float, float* %2, align 4
  %28 = load float, float* %5, align 4
  %insertElmt22 = insertelement <4 x float> undef, float %28, i32 0
  %insertElmt23 = insertelement <4 x float> %insertElmt22, float %28, i32 1
  %insertElmt24 = insertelement <4 x float> %insertElmt23, float %28, i32 2
  %insertElmt25 = insertelement <4 x float> %insertElmt24, float %28, i32 3
  store <4 x float> %insertElmt25, <4 x float>* %allocaVec7, align 16
  %29 = load <4 x float>, <4 x float>* %allocaVec4, align 16
  %30 = load <4 x float>, <4 x float>* %allocaVec7, align 16
  %Vop26 = fdiv <4 x float> %29, %30
  store <4 x float> %Vop26, <4 x float>* %allocaVec6
  %31 = load <4 x float>, <4 x float>* %allocaVec6, align 4
  %extractE = extractelement <4 x float> %31, i64 0
  %extractE27 = extractelement <4 x float> %31, i64 1
  %extractE28 = extractelement <4 x float> %31, i64 2
  %sum = fadd float %extractE, %extractE27
  %sum29 = fadd float %sum, %extractE28
  %32 = fdiv float %27, %28
  %Fmul = fmul float %32, 3.000000e+00
  store float %32, float* %Recovery
  %Fcmp = fcmp une float %sum29, %Fmul
  br i1 %Fcmp, label %33, label %37

; <label>:33:                                     ; preds = %11
  %remThree = fdiv float %sum29, %extractE
  %FcmpThree = fcmp une float %remThree, 3.000000e+00
  br i1 %FcmpThree, label %34, label %35

; <label>:34:                                     ; preds = %33
  store float %32, float* %Recovery, align 4
  br label %36

; <label>:35:                                     ; preds = %33
  store float %extractE, float* %Recovery, align 4
  br label %36

; <label>:36:                                     ; preds = %35, %34
  br label %37

; <label>:37:                                     ; preds = %11, %36
  %38 = load float, float* %Recovery, align 4
  store float %38, float* %4, align 4
  br label %6

; <label>:39:                                     ; preds = %6
  %40 = load float, float* %3, align 4
  %41 = load <4 x float>, <4 x float>* %allocaVec5, align 16
  %Vop30 = fmul <4 x float> <float 4.000000e+00, float 4.000000e+00, float 4.000000e+00, float 4.000000e+00>, %41
  store <4 x float> %Vop30, <4 x float>* %allocaVec5
  %42 = load <4 x float>, <4 x float>* %allocaVec5, align 4
  %extractE32 = extractelement <4 x float> %42, i64 0
  %extractE33 = extractelement <4 x float> %42, i64 1
  %extractE34 = extractelement <4 x float> %42, i64 2
  %sum35 = fadd float %extractE32, %extractE33
  %sum36 = fadd float %sum35, %extractE34
  %43 = fmul float 4.000000e+00, %40
  %Fmul31 = fmul float %43, 3.000000e+00
  store float %43, float* %Recovery1
  %Fcmp37 = fcmp une float %sum36, %Fmul31
  br i1 %Fcmp37, label %44, label %48

; <label>:44:                                     ; preds = %39
  %remThree38 = fdiv float %sum36, %extractE32
  %FcmpThree39 = fcmp une float %remThree38, 3.000000e+00
  br i1 %FcmpThree39, label %45, label %46

; <label>:45:                                     ; preds = %44
  store float %43, float* %Recovery1, align 4
  br label %47

; <label>:46:                                     ; preds = %44
  store float %extractE32, float* %Recovery1, align 4
  br label %47

; <label>:47:                                     ; preds = %46, %45
  br label %48

; <label>:48:                                     ; preds = %39, %47
  %49 = load float, float* %Recovery1, align 4
  store float %49, float* %3, align 4
  %50 = load float, float* %3, align 4
  %51 = fpext float %50 to double
  %52 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %51)
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
