; ModuleID = 'mytest.bc'
source_filename = "count_pi.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [6 x i8] c"p:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pi:%.6f\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %allocaVec1 = alloca <4 x float>, align 16
  %2 = alloca float, align 4
  %allocaVec2 = alloca <4 x float>, align 16
  %3 = alloca float, align 4
  %allocaVec3 = alloca <4 x float>, align 16
  %4 = alloca float, align 4
  %allocaVec4 = alloca <4 x float>, align 16
  %5 = alloca float, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store float 1.000000e+00, float* %2, align 4
  store float 0.000000e+00, float* %3, align 4
  store float 1.000000e+00, float* %4, align 4
  store float 1.000000e+00, float* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %7, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt, i32 %7, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %7, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %7, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec5, align 16
  %8 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %9 = alloca i32, align 4
  %allocaCons = alloca <4 x i32>, align 16
  store i32 1, i32* %9
  %10 = load i32, i32* %9, align 4
  %insertCons = insertelement <4 x i32> undef, i32 %10, i32 0
  %insertCons9 = insertelement <4 x i32> %insertCons, i32 %10, i32 1
  %insertCons10 = insertelement <4 x i32> %insertCons9, i32 %10, i32 2
  %insertCons11 = insertelement <4 x i32> %insertCons10, i32 %10, i32 3
  store <4 x i32> %insertCons11, <4 x i32>* %allocaCons, align 4
  %11 = load <4 x i32>, <4 x i32>* %allocaCons, align 4
  %Vop = add <4 x i32> %8, %11
  store <4 x i32> %Vop, <4 x i32>* %allocaVec5
  %12 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE = extractelement <4 x i32> %12, i64 0
  %extractE12 = extractelement <4 x i32> %12, i64 1
  %extractE13 = extractelement <4 x i32> %12, i64 2
  %Recovery = alloca i32, align 4
  %sum = add i32 %extractE, %extractE12
  %sum14 = add i32 %sum, %extractE13
  %13 = add nsw i32 %7, 1
  %Fmul = mul i32 %13, 3
  store i32 %13, i32* %Recovery
  %Fcmp = icmp ne i32 %sum14, %Fmul
  br i1 %Fcmp, label %14, label %18

; <label>:14:                                     ; preds = %0
  %remThree = sdiv i32 %sum14, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %15, label %16

; <label>:15:                                     ; preds = %14
  store i32 %extractE, i32* %Recovery, align 4
  br label %17

; <label>:16:                                     ; preds = %14
  store i32 %13, i32* %Recovery, align 4
  br label %17

; <label>:17:                                     ; preds = %16, %15
  br label %18

; <label>:18:                                     ; preds = %0, %17
  %19 = load i32, i32* %Recovery, align 4
  store i32 %19, i32* %6, align 4
  %20 = load float, float* %4, align 4
  %insertElmt15 = insertelement <4 x float> undef, float %20, i32 0
  %insertElmt16 = insertelement <4 x float> %insertElmt15, float %20, i32 1
  %insertElmt17 = insertelement <4 x float> %insertElmt16, float %20, i32 2
  %insertElmt18 = insertelement <4 x float> %insertElmt17, float %20, i32 3
  store <4 x float> %insertElmt18, <4 x float>* %allocaVec3, align 16
  %21 = load float, float* %3, align 4
  %insertElmt19 = insertelement <4 x float> undef, float %21, i32 0
  %insertElmt20 = insertelement <4 x float> %insertElmt19, float %21, i32 1
  %insertElmt21 = insertelement <4 x float> %insertElmt20, float %21, i32 2
  %insertElmt22 = insertelement <4 x float> %insertElmt21, float %21, i32 3
  store <4 x float> %insertElmt22, <4 x float>* %allocaVec2, align 16
  %22 = load <4 x float>, <4 x float>* %allocaVec2, align 16
  %23 = load <4 x float>, <4 x float>* %allocaVec3, align 16
  %Vop23 = fadd <4 x float> %22, %23
  store <4 x float> %Vop23, <4 x float>* %allocaVec2
  %24 = fadd float %21, %20
  store float %24, float* %3, align 4
  %25 = load float, float* %5, align 4
  %insertElmt24 = insertelement <4 x float> undef, float %25, i32 0
  %insertElmt25 = insertelement <4 x float> %insertElmt24, float %25, i32 1
  %insertElmt26 = insertelement <4 x float> %insertElmt25, float %25, i32 2
  %insertElmt27 = insertelement <4 x float> %insertElmt26, float %25, i32 3
  store <4 x float> %insertElmt27, <4 x float>* %allocaVec4, align 16
  %26 = load <4 x float>, <4 x float>* %allocaVec4, align 16
  %27 = alloca float, align 4
  %allocaCons28 = alloca <4 x float>, align 16
  store float 2.000000e+00, float* %27
  %28 = load float, float* %27, align 4
  %insertCons29 = insertelement <4 x float> undef, float %28, i32 0
  %insertCons30 = insertelement <4 x float> %insertCons29, float %28, i32 1
  %insertCons31 = insertelement <4 x float> %insertCons30, float %28, i32 2
  %insertCons32 = insertelement <4 x float> %insertCons31, float %28, i32 3
  store <4 x float> %insertCons32, <4 x float>* %allocaCons28, align 4
  %29 = load <4 x float>, <4 x float>* %allocaCons28, align 4
  %Vop33 = fadd <4 x float> %26, %29
  store <4 x float> %Vop33, <4 x float>* %allocaVec4
  %30 = fadd float %25, 2.000000e+00
  store float %30, float* %5, align 4
  %31 = load float, float* %2, align 4
  %insertElmt34 = insertelement <4 x float> undef, float %31, i32 0
  %insertElmt35 = insertelement <4 x float> %insertElmt34, float %31, i32 1
  %insertElmt36 = insertelement <4 x float> %insertElmt35, float %31, i32 2
  %insertElmt37 = insertelement <4 x float> %insertElmt36, float %31, i32 3
  store <4 x float> %insertElmt37, <4 x float>* %allocaVec1, align 16
  %32 = alloca float, align 4
  %allocaCons38 = alloca <4 x float>, align 16
  store float -0.000000e+00, float* %32
  %33 = load float, float* %32, align 4
  %insertCons39 = insertelement <4 x float> undef, float %33, i32 0
  %insertCons40 = insertelement <4 x float> %insertCons39, float %33, i32 1
  %insertCons41 = insertelement <4 x float> %insertCons40, float %33, i32 2
  %insertCons42 = insertelement <4 x float> %insertCons41, float %33, i32 3
  store <4 x float> %insertCons42, <4 x float>* %allocaCons38, align 4
  %34 = load <4 x float>, <4 x float>* %allocaCons38, align 4
  %35 = load <4 x float>, <4 x float>* %allocaVec1, align 16
  %Vop43 = fsub <4 x float> %34, %35
  store <4 x float> %Vop43, <4 x float>* %allocaVec1
  %36 = fsub float -0.000000e+00, %31
  store float %36, float* %2, align 4
  %37 = load float, float* %2, align 4
  %38 = load float, float* %5, align 4
  %39 = load <4 x float>, <4 x float>* %allocaVec1, align 16
  %40 = load <4 x float>, <4 x float>* %allocaVec4, align 16
  %Vop44 = fdiv <4 x float> %39, %40
  store <4 x float> %Vop44, <4 x float>* %allocaVec3
  %41 = load <4 x float>, <4 x float>* %allocaVec3, align 4
  %extractE46 = extractelement <4 x float> %41, i64 0
  %extractE47 = extractelement <4 x float> %41, i64 1
  %extractE48 = extractelement <4 x float> %41, i64 2
  %Recovery49 = alloca float, align 4
  %sum50 = fadd float %extractE46, %extractE47
  %sum51 = fadd float %sum50, %extractE48
  %42 = fdiv float %37, %38
  %Fmul45 = fmul float %42, 3.000000e+00
  store float %42, float* %Recovery49
  %Fcmp52 = fcmp une float %sum51, %Fmul45
  br i1 %Fcmp52, label %43, label %47

; <label>:43:                                     ; preds = %18
  %remThree67 = fdiv float %sum51, %extractE46
  %FcmpThree68 = fcmp une float %remThree67, 3.000000e+00
  br i1 %FcmpThree68, label %44, label %45

; <label>:44:                                     ; preds = %43
  store float %extractE46, float* %Recovery49, align 4
  br label %46

; <label>:45:                                     ; preds = %43
  store float %42, float* %Recovery49, align 4
  br label %46

; <label>:46:                                     ; preds = %45, %44
  br label %47

; <label>:47:                                     ; preds = %18, %46
  %48 = load float, float* %Recovery49, align 4
  store float %48, float* %4, align 4
  %49 = load float, float* %3, align 4
  %50 = alloca float, align 4
  %allocaCons53 = alloca <4 x float>, align 16
  store float 4.000000e+00, float* %50
  %51 = load float, float* %50, align 4
  %insertCons54 = insertelement <4 x float> undef, float %51, i32 0
  %insertCons55 = insertelement <4 x float> %insertCons54, float %51, i32 1
  %insertCons56 = insertelement <4 x float> %insertCons55, float %51, i32 2
  %insertCons57 = insertelement <4 x float> %insertCons56, float %51, i32 3
  store <4 x float> %insertCons57, <4 x float>* %allocaCons53, align 4
  %52 = load <4 x float>, <4 x float>* %allocaCons53, align 4
  %53 = load <4 x float>, <4 x float>* %allocaVec2, align 16
  %Vop58 = fmul <4 x float> %52, %53
  store <4 x float> %Vop58, <4 x float>* %allocaVec2
  %54 = load <4 x float>, <4 x float>* %allocaVec2, align 4
  %extractE60 = extractelement <4 x float> %54, i64 0
  %extractE61 = extractelement <4 x float> %54, i64 1
  %extractE62 = extractelement <4 x float> %54, i64 2
  %Recovery63 = alloca float, align 4
  %sum64 = fadd float %extractE60, %extractE61
  %sum65 = fadd float %sum64, %extractE62
  %55 = fmul float 4.000000e+00, %49
  %Fmul59 = fmul float %55, 3.000000e+00
  store float %55, float* %Recovery63
  %Fcmp66 = fcmp une float %sum65, %Fmul59
  br i1 %Fcmp66, label %56, label %60

; <label>:56:                                     ; preds = %47
  %remThree69 = fdiv float %sum65, %extractE60
  %FcmpThree70 = fcmp une float %remThree69, 3.000000e+00
  br i1 %FcmpThree70, label %57, label %58

; <label>:57:                                     ; preds = %56
  store float %extractE60, float* %Recovery63, align 4
  br label %59

; <label>:58:                                     ; preds = %56
  store float %55, float* %Recovery63, align 4
  br label %59

; <label>:59:                                     ; preds = %58, %57
  br label %60

; <label>:60:                                     ; preds = %47, %59
  %61 = load float, float* %Recovery63, align 4
  store float %61, float* %3, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %62)
  %64 = load float, float* %3, align 4
  %65 = fpext float %64 to double
  %66 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), double %65)
  ret i32 0
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
