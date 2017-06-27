; ModuleID = 'factorial_t.bc'
source_filename = "factorial.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

@.str = private unnamed_addr constant [10 x i8] c"%d! = %d\0A\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %20, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 5
  br i1 %5, label %6, label %22

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @factorial(i32 %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %7, i32 %9)
  br label %11

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* %2, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %12, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %12, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %12, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %12, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec2, align 16
  %13 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop = add <4 x i32> %13, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec2
  %14 = load <4 x i32>, <4 x i32>* %allocaVec2, align 4
  %extractE = extractelement <4 x i32> %14, i64 0
  %extractE6 = extractelement <4 x i32> %14, i64 1
  %extractE7 = extractelement <4 x i32> %14, i64 2
  %sum = add i32 %extractE, %extractE6
  %sum8 = add i32 %sum, %extractE7
  %15 = add nsw i32 %12, 1
  %Fmul = mul i32 %15, 3
  store i32 %15, i32* %Recovery
  %Fcmp = icmp ne i32 %sum8, %Fmul
  br i1 %Fcmp, label %16, label %20

; <label>:16:                                     ; preds = %11
  %remThree = sdiv i32 %sum8, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %17, label %18

; <label>:17:                                     ; preds = %16
  store i32 %15, i32* %Recovery, align 4
  br label %19

; <label>:18:                                     ; preds = %16
  store i32 %extractE, i32* %Recovery, align 4
  br label %19

; <label>:19:                                     ; preds = %18, %17
  br label %20

; <label>:20:                                     ; preds = %11, %19
  %21 = load i32, i32* %Recovery, align 4
  store i32 %21, i32* %2, align 4
  br label %3

; <label>:22:                                     ; preds = %3
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
define i32 @factorial(i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %CallInst = alloca i32, align 4
  %CallInstVec = alloca <4 x i32>, align 16
  %allocaVec2 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %8, i32 0
  %insertElmt4 = insertelement <4 x i32> %insertElmt, i32 %8, i32 1
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %8, i32 2
  %insertElmt6 = insertelement <4 x i32> %insertElmt5, i32 %8, i32 3
  store <4 x i32> %insertElmt6, <4 x i32>* %allocaVec3, align 16
  %9 = load i32, i32* %3, align 4
  %insertElmt7 = insertelement <4 x i32> undef, i32 %9, i32 0
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %9, i32 1
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %9, i32 2
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %9, i32 3
  store <4 x i32> %insertElmt10, <4 x i32>* %allocaVec3, align 16
  %10 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  %Vop = sub <4 x i32> %10, <i32 1, i32 1, i32 1, i32 1>
  %11 = sub nsw i32 %9, 1
  %12 = call i32 @factorial(i32 %11)
  %13 = load <4 x i32>, <4 x i32>* %allocaVec3, align 16
  store i32 %12, i32* %CallInst
  %14 = load i32, i32* %CallInst, align 4
  %insertCall = insertelement <4 x i32> undef, i32 %14, i32 0
  %insertCall11 = insertelement <4 x i32> %insertCall, i32 %14, i32 1
  %insertCall12 = insertelement <4 x i32> %insertCall11, i32 %14, i32 2
  %insertCall13 = insertelement <4 x i32> %insertCall12, i32 %14, i32 3
  store <4 x i32> %insertCall13, <4 x i32>* %CallInstVec, align 4
  %15 = load <4 x i32>, <4 x i32>* %CallInstVec, align 4
  %Vop14 = mul <4 x i32> %13, %15
  store <4 x i32> %Vop14, <4 x i32>* %allocaVec2
  %16 = load <4 x i32>, <4 x i32>* %allocaVec2, align 4
  %extractE = extractelement <4 x i32> %16, i64 0
  %extractE15 = extractelement <4 x i32> %16, i64 1
  %extractE16 = extractelement <4 x i32> %16, i64 2
  %sum = add i32 %extractE, %extractE15
  %sum17 = add i32 %sum, %extractE16
  %17 = mul nsw i32 %8, %12
  %Fmul = mul i32 %17, 3
  store i32 %17, i32* %Recovery
  %Fcmp = icmp ne i32 %sum17, %Fmul
  br i1 %Fcmp, label %18, label %22

; <label>:18:                                     ; preds = %7
  %remThree = sdiv i32 %sum17, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %19, label %20

; <label>:19:                                     ; preds = %18
  store i32 %17, i32* %Recovery, align 4
  br label %21

; <label>:20:                                     ; preds = %18
  store i32 %extractE, i32* %Recovery, align 4
  br label %21

; <label>:21:                                     ; preds = %20, %19
  br label %22

; <label>:22:                                     ; preds = %7, %21
  %23 = load i32, i32* %Recovery, align 4
  store i32 %23, i32* %2, align 4
  br label %24

; <label>:24:                                     ; preds = %22, %6
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
