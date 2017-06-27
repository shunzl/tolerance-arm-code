; ModuleID = 'mytest.bc'
source_filename = "count_pi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"pi:%.6f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %allocaVec = alloca <4 x float>, align 16
  %Recovery = alloca float, align 4
  %allocaVec2 = alloca <4 x float>, align 16
  %Recovery1 = alloca float, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %retval = alloca i32, align 4
  %allocaVec4 = alloca <4 x float>, align 16
  %s = alloca float, align 4
  %allocaVec5 = alloca <4 x float>, align 16
  %pi = alloca float, align 4
  %allocaVec6 = alloca <4 x float>, align 16
  %i = alloca float, align 4
  %allocaVec7 = alloca <4 x float>, align 16
  %n = alloca float, align 4
  %allocaVec8 = alloca <4 x float>, align 16
  %num = alloca float, align 4
  %allocaVec9 = alloca <4 x float>, align 16
  %zero = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store float 1.000000e+00, float* %s, align 4
  store float 0.000000e+00, float* %pi, align 4
  store float 1.000000e+00, float* %i, align 4
  store float 1.000000e+00, float* %n, align 4
  store float 2.000000e+00, float* %num, align 4
  store float 0.000000e+00, float* %zero, align 4
  br label %while.cond

while.cond:                                       ; preds = %22, %entry
  %0 = load float, float* %i, align 4
  %conv = fpext float %0 to double
  %call = call double @fabs(double %conv) #3
  %cmp = fcmp oge double %call, 1.000000e-06
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load float, float* %i, align 4
  %insertElmt = insertelement <4 x float> undef, float %1, i32 0
  %insertElmt10 = insertelement <4 x float> %insertElmt, float %1, i32 1
  %insertElmt11 = insertelement <4 x float> %insertElmt10, float %1, i32 2
  %insertElmt12 = insertelement <4 x float> %insertElmt11, float %1, i32 3
  store <4 x float> %insertElmt12, <4 x float>* %allocaVec6, align 16
  %2 = load float, float* %pi, align 4
  %insertElmt13 = insertelement <4 x float> undef, float %2, i32 0
  %insertElmt14 = insertelement <4 x float> %insertElmt13, float %2, i32 1
  %insertElmt15 = insertelement <4 x float> %insertElmt14, float %2, i32 2
  %insertElmt16 = insertelement <4 x float> %insertElmt15, float %2, i32 3
  store <4 x float> %insertElmt16, <4 x float>* %allocaVec5, align 16
  %3 = load <4 x float>, <4 x float>* %allocaVec5, align 16
  %4 = load <4 x float>, <4 x float>* %allocaVec6, align 16
  %Vop = fadd <4 x float> %3, %4
  store <4 x float> %Vop, <4 x float>* %allocaVec5
  %add = fadd float %2, %1
  store float %add, float* %pi, align 4
  %5 = load float, float* %n, align 4
  %insertElmt17 = insertelement <4 x float> undef, float %5, i32 0
  %insertElmt18 = insertelement <4 x float> %insertElmt17, float %5, i32 1
  %insertElmt19 = insertelement <4 x float> %insertElmt18, float %5, i32 2
  %insertElmt20 = insertelement <4 x float> %insertElmt19, float %5, i32 3
  store <4 x float> %insertElmt20, <4 x float>* %allocaVec7, align 16
  %6 = load float, float* %num, align 4
  %insertElmt21 = insertelement <4 x float> undef, float %6, i32 0
  %insertElmt22 = insertelement <4 x float> %insertElmt21, float %6, i32 1
  %insertElmt23 = insertelement <4 x float> %insertElmt22, float %6, i32 2
  %insertElmt24 = insertelement <4 x float> %insertElmt23, float %6, i32 3
  store <4 x float> %insertElmt24, <4 x float>* %allocaVec8, align 16
  %7 = load <4 x float>, <4 x float>* %allocaVec7, align 16
  %8 = load <4 x float>, <4 x float>* %allocaVec8, align 16
  %Vop25 = fadd <4 x float> %7, %8
  store <4 x float> %Vop25, <4 x float>* %allocaVec7
  %add2 = fadd float %5, %6
  store float %add2, float* %n, align 4
  %9 = load float, float* %zero, align 4
  %insertElmt26 = insertelement <4 x float> undef, float %9, i32 0
  %insertElmt27 = insertelement <4 x float> %insertElmt26, float %9, i32 1
  %insertElmt28 = insertelement <4 x float> %insertElmt27, float %9, i32 2
  %insertElmt29 = insertelement <4 x float> %insertElmt28, float %9, i32 3
  store <4 x float> %insertElmt29, <4 x float>* %allocaVec9, align 16
  %10 = load float, float* %s, align 4
  %insertElmt30 = insertelement <4 x float> undef, float %10, i32 0
  %insertElmt31 = insertelement <4 x float> %insertElmt30, float %10, i32 1
  %insertElmt32 = insertelement <4 x float> %insertElmt31, float %10, i32 2
  %insertElmt33 = insertelement <4 x float> %insertElmt32, float %10, i32 3
  store <4 x float> %insertElmt33, <4 x float>* %allocaVec4, align 16
  %11 = load <4 x float>, <4 x float>* %allocaVec9, align 16
  %12 = load <4 x float>, <4 x float>* %allocaVec4, align 16
  %Vop34 = fsub <4 x float> %11, %12
  store <4 x float> %Vop34, <4 x float>* %allocaVec4
  %sub = fsub float %9, %10
  store float %sub, float* %s, align 4
  %13 = load float, float* %s, align 4
  %14 = load float, float* %n, align 4
  %15 = load <4 x float>, <4 x float>* %allocaVec4, align 16
  %16 = load <4 x float>, <4 x float>* %allocaVec7, align 16
  %Vop35 = fdiv <4 x float> %15, %16
  store <4 x float> %Vop35, <4 x float>* %allocaVec6
  %17 = load <4 x float>, <4 x float>* %allocaVec6, align 4
  %extractE = extractelement <4 x float> %17, i64 0
  %extractE36 = extractelement <4 x float> %17, i64 1
  %extractE37 = extractelement <4 x float> %17, i64 2
  %sum = fadd float %extractE, %extractE36
  %sum38 = fadd float %sum, %extractE37
  %div = fdiv float %13, %14
  %Fmul = fmul float %div, 3.000000e+00
  store float %div, float* %Recovery
  %Fcmp = fcmp une float %sum38, %Fmul
  br i1 %Fcmp, label %18, label %22

; <label>:18:                                     ; preds = %while.body
  %remThree = fdiv float %sum38, %extractE
  %FcmpThree = fcmp une float %remThree, 3.000000e+00
  br i1 %FcmpThree, label %19, label %20

; <label>:19:                                     ; preds = %18
  store float %extractE, float* %Recovery, align 4
  br label %21

; <label>:20:                                     ; preds = %18
  store float %div, float* %Recovery, align 4
  br label %21

; <label>:21:                                     ; preds = %20, %19
  br label %22

; <label>:22:                                     ; preds = %while.body, %21
  %23 = load float, float* %Recovery, align 4
  store float %23, float* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load float, float* %pi, align 4
  %25 = alloca float, align 4
  %allocaCons = alloca <4 x float>, align 16
  store float 4.000000e+00, float* %25
  %26 = load float, float* %25, align 4
  %insertCons = insertelement <4 x float> undef, float %26, i32 0
  %insertCons39 = insertelement <4 x float> %insertCons, float %26, i32 1
  %insertCons40 = insertelement <4 x float> %insertCons39, float %26, i32 2
  %insertCons41 = insertelement <4 x float> %insertCons40, float %26, i32 3
  store <4 x float> %insertCons41, <4 x float>* %allocaCons, align 4
  %27 = load <4 x float>, <4 x float>* %allocaCons, align 4
  %28 = load <4 x float>, <4 x float>* %allocaVec5, align 16
  %Vop42 = fmul <4 x float> %27, %28
  store <4 x float> %Vop42, <4 x float>* %allocaVec5
  %29 = load <4 x float>, <4 x float>* %allocaVec5, align 4
  %extractE44 = extractelement <4 x float> %29, i64 0
  %extractE45 = extractelement <4 x float> %29, i64 1
  %extractE46 = extractelement <4 x float> %29, i64 2
  %sum47 = fadd float %extractE44, %extractE45
  %sum48 = fadd float %sum47, %extractE46
  %mul = fmul float 4.000000e+00, %24
  %Fmul43 = fmul float %mul, 3.000000e+00
  store float %mul, float* %Recovery1
  %Fcmp49 = fcmp une float %sum48, %Fmul43
  br i1 %Fcmp49, label %30, label %34

; <label>:30:                                     ; preds = %while.end
  %remThree50 = fdiv float %sum48, %extractE44
  %FcmpThree51 = fcmp une float %remThree50, 3.000000e+00
  br i1 %FcmpThree51, label %31, label %32

; <label>:31:                                     ; preds = %30
  store float %extractE44, float* %Recovery1, align 4
  br label %33

; <label>:32:                                     ; preds = %30
  store float %mul, float* %Recovery1, align 4
  br label %33

; <label>:33:                                     ; preds = %32, %31
  br label %34

; <label>:34:                                     ; preds = %while.end, %33
  %35 = load float, float* %Recovery1, align 4
  store float %35, float* %pi, align 4
  %36 = load float, float* %pi, align 4
  %conv3 = fpext float %36 to double
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
