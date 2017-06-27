; ModuleID = 'mytest_int.bc'
source_filename = "tolerance_int.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec4 = alloca <2 x i64>, align 16
  %Recovery2 = alloca i64, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec8 = alloca <2 x i64>, align 16
  %4 = alloca i64, align 8
  store i32 1, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %5, i32 0
  %insertElmt9 = insertelement <4 x i32> %insertElmt, i32 %5, i32 1
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %5, i32 2
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %5, i32 3
  store <4 x i32> %insertElmt11, <4 x i32>* %allocaVec6, align 16
  %6 = load i32, i32* %3, align 4
  %insertElmt12 = insertelement <4 x i32> undef, i32 %6, i32 0
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %6, i32 1
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %6, i32 2
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %6, i32 3
  store <4 x i32> %insertElmt15, <4 x i32>* %allocaVec7, align 16
  %7 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %8 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop = add <4 x i32> %7, %8
  store <4 x i32> %Vop, <4 x i32>* %allocaVec6
  %9 = load <4 x i32>, <4 x i32>* %allocaVec6, align 4
  %extractE = extractelement <4 x i32> %9, i64 0
  %extractE16 = extractelement <4 x i32> %9, i64 1
  %extractE17 = extractelement <4 x i32> %9, i64 2
  %sum = add i32 %extractE, %extractE16
  %sum18 = add i32 %sum, %extractE17
  %10 = add nsw i32 %5, %6
  %Fmul = mul i32 %10, 3
  store i32 %10, i32* %Recovery
  %Fcmp = icmp ne i32 %sum18, %Fmul
  br i1 %Fcmp, label %11, label %15

; <label>:11:                                     ; preds = %0
  %remThree = sdiv i32 %sum18, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %12, label %13

; <label>:12:                                     ; preds = %11
  store i32 %10, i32* %Recovery, align 4
  br label %14

; <label>:13:                                     ; preds = %11
  store i32 %extractE, i32* %Recovery, align 4
  br label %14

; <label>:14:                                     ; preds = %13, %12
  br label %15

; <label>:15:                                     ; preds = %0, %14
  %16 = load i32, i32* %Recovery, align 4
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %insertElmt19 = insertelement <4 x i32> undef, i32 %17, i32 0
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %17, i32 1
  %insertElmt21 = insertelement <4 x i32> %insertElmt20, i32 %17, i32 2
  %insertElmt22 = insertelement <4 x i32> %insertElmt21, i32 %17, i32 3
  store <4 x i32> %insertElmt22, <4 x i32>* %allocaVec7, align 16
  %18 = load i32, i32* %1, align 4
  %insertElmt23 = insertelement <4 x i32> undef, i32 %18, i32 0
  %insertElmt24 = insertelement <4 x i32> %insertElmt23, i32 %18, i32 1
  %insertElmt25 = insertelement <4 x i32> %insertElmt24, i32 %18, i32 2
  %insertElmt26 = insertelement <4 x i32> %insertElmt25, i32 %18, i32 3
  store <4 x i32> %insertElmt26, <4 x i32>* %allocaVec5, align 16
  %19 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %20 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop27 = add <4 x i32> %19, %20
  store <4 x i32> %Vop27, <4 x i32>* %allocaVec5
  %21 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE29 = extractelement <4 x i32> %21, i64 0
  %extractE30 = extractelement <4 x i32> %21, i64 1
  %extractE31 = extractelement <4 x i32> %21, i64 2
  %sum32 = add i32 %extractE29, %extractE30
  %sum33 = add i32 %sum32, %extractE31
  %22 = add nsw i32 %18, %17
  %Fmul28 = mul i32 %22, 3
  store i32 %22, i32* %Recovery1
  %Fcmp34 = icmp ne i32 %sum33, %Fmul28
  br i1 %Fcmp34, label %23, label %27

; <label>:23:                                     ; preds = %15
  %remThree44 = sdiv i32 %sum33, %extractE29
  %FcmpThree45 = icmp ne i32 %remThree44, 3
  br i1 %FcmpThree45, label %24, label %25

; <label>:24:                                     ; preds = %23
  store i32 %22, i32* %Recovery1, align 4
  br label %26

; <label>:25:                                     ; preds = %23
  store i32 %extractE29, i32* %Recovery1, align 4
  br label %26

; <label>:26:                                     ; preds = %25, %24
  br label %27

; <label>:27:                                     ; preds = %15, %26
  %28 = load i32, i32* %Recovery1, align 4
  store i32 %28, i32* %1, align 4
  store i64 4, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %insertElmt35 = insertelement <2 x i64> undef, i64 %29, i32 0
  %insertElmt36 = insertelement <2 x i64> %insertElmt35, i64 %29, i32 1
  store <2 x i64> %insertElmt36, <2 x i64>* %allocaVec8, align 16
  %30 = load <2 x i64>, <2 x i64>* %allocaVec8, align 16
  %Vop37 = add <2 x i64> %30, <i64 1, i64 1>
  store <2 x i64> %Vop37, <2 x i64>* %allocaVec8
  %31 = load <2 x i64>, <2 x i64>* %allocaVec8, align 4
  %extractE39 = extractelement <2 x i64> %31, i64 0
  %extractE40 = extractelement <2 x i64> %31, i64 1
  %sum41 = add i64 %extractE39, %extractE40
  %sum42 = add i64 %sum41, %extractE40
  %32 = add nsw i64 %29, 1
  %Fmul38 = mul i64 %32, 3
  store i64 %32, i64* %Recovery2
  %Fcmp43 = icmp ne i64 %sum42, %Fmul38
  br i1 %Fcmp43, label %33, label %37

; <label>:33:                                     ; preds = %27
  %remThree46 = sdiv i64 %sum42, %extractE39
  %FcmpThree47 = icmp ne i64 %remThree46, 3
  br i1 %FcmpThree47, label %34, label %35

; <label>:34:                                     ; preds = %33
  store i64 %32, i64* %Recovery2, align 4
  br label %36

; <label>:35:                                     ; preds = %33
  store i64 %extractE39, i64* %Recovery2, align 4
  br label %36

; <label>:36:                                     ; preds = %35, %34
  br label %37

; <label>:37:                                     ; preds = %27, %36
  %38 = load i64, i64* %Recovery2, align 4
  store i64 %38, i64* %4, align 8
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %39)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
