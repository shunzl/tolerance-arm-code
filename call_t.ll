; ModuleID = 'call_t.bc'
source_filename = "call.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [6 x i8] c"k:%f\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %allocaVec = alloca <4 x float>, align 16
  %Recovery = alloca float, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %allocaVec2 = alloca <4 x float>, align 16
  %2 = alloca float, align 4
  %allocaVec3 = alloca <4 x float>, align 16
  %3 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store float 1.000000e+00, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = call arm_aapcscc float @test(float %4)
  %CallInstVec = alloca <4 x float>, align 16
  %6 = alloca float, align 4
  store float %5, float* %6
  %7 = load float, float* %6, align 4
  %insertCons = insertelement <4 x float> undef, float %7, i32 0
  %insertCons4 = insertelement <4 x float> %insertCons, float %7, i32 1
  %insertCons5 = insertelement <4 x float> %insertCons4, float %7, i32 2
  %insertCons6 = insertelement <4 x float> %insertCons5, float %7, i32 3
  store <4 x float> %insertCons6, <4 x float>* %CallInstVec, align 4
  %8 = load <4 x float>, <4 x float>* %CallInstVec, align 4
  %Vop = fadd <4 x float> %8, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  store <4 x float> %Vop, <4 x float>* %allocaVec3
  %9 = load <4 x float>, <4 x float>* %allocaVec3, align 4
  %extractE = extractelement <4 x float> %9, i64 0
  %extractE7 = extractelement <4 x float> %9, i64 1
  %extractE8 = extractelement <4 x float> %9, i64 2
  %sum = fadd float %extractE, %extractE7
  %sum9 = fadd float %sum, %extractE8
  %10 = fadd float %5, 1.000000e+00
  %Fmul = fmul float %10, 3.000000e+00
  store float %10, float* %Recovery
  %Fcmp = fcmp une float %sum9, %Fmul
  br i1 %Fcmp, label %11, label %15

; <label>:11:                                     ; preds = %0
  %remThree = fdiv float %sum9, %extractE
  %FcmpThree = fcmp une float %remThree, 3.000000e+00
  br i1 %FcmpThree, label %12, label %13

; <label>:12:                                     ; preds = %11
  store float %10, float* %Recovery, align 4
  br label %14

; <label>:13:                                     ; preds = %11
  store float %extractE, float* %Recovery, align 4
  br label %14

; <label>:14:                                     ; preds = %13, %12
  br label %15

; <label>:15:                                     ; preds = %0, %14
  %16 = load float, float* %Recovery, align 4
  store float %16, float* %3, align 4
  %17 = load float, float* %3, align 4
  %18 = fpext float %17 to double
  %19 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), double %18)
  ret i32 0
}

; Function Attrs: nounwind
define arm_aapcscc float @test(float) #0 {
  %allocaVec = alloca <4 x float>, align 16
  %Recovery = alloca float, align 4
  %allocaVec1 = alloca <4 x float>, align 16
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %insertElmt = insertelement <4 x float> undef, float %3, i32 0
  %insertElmt2 = insertelement <4 x float> %insertElmt, float %3, i32 1
  %insertElmt3 = insertelement <4 x float> %insertElmt2, float %3, i32 2
  %insertElmt4 = insertelement <4 x float> %insertElmt3, float %3, i32 3
  store <4 x float> %insertElmt4, <4 x float>* %allocaVec1, align 16
  %4 = load <4 x float>, <4 x float>* %allocaVec1, align 16
  %Vop = fadd <4 x float> %4, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  store <4 x float> %Vop, <4 x float>* %allocaVec1
  %5 = load <4 x float>, <4 x float>* %allocaVec1, align 4
  %extractE = extractelement <4 x float> %5, i64 0
  %extractE5 = extractelement <4 x float> %5, i64 1
  %extractE6 = extractelement <4 x float> %5, i64 2
  %sum = fadd float %extractE, %extractE5
  %sum7 = fadd float %sum, %extractE6
  %6 = fadd float %3, 1.000000e+00
  %Fmul = fmul float %6, 3.000000e+00
  store float %6, float* %Recovery
  %Fcmp = fcmp une float %sum7, %Fmul
  br i1 %Fcmp, label %7, label %11

; <label>:7:                                      ; preds = %1
  %remThree = fdiv float %sum7, %extractE
  %FcmpThree = fcmp une float %remThree, 3.000000e+00
  br i1 %FcmpThree, label %8, label %9

; <label>:8:                                      ; preds = %7
  store float %6, float* %Recovery, align 4
  br label %10

; <label>:9:                                      ; preds = %7
  store float %extractE, float* %Recovery, align 4
  br label %10

; <label>:10:                                     ; preds = %9, %8
  br label %11

; <label>:11:                                     ; preds = %1, %10
  %12 = load float, float* %Recovery, align 4
  store float %12, float* %2, align 4
  ret float %6
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
