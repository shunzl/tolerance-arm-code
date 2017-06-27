; ModuleID = 'mytest.bc'
source_filename = "tolerance.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  store i32 4, i32* %2, align 4
  store i32 5, i32* %3, align 4
  %4 = load i32, i32* %1, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %4, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %4, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %4, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %4, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec, align 16
  %5 = load i32, i32* %2, align 4
  %insertElmt6 = insertelement <4 x i32> undef, i32 %5, i32 0
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %5, i32 1
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %5, i32 2
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %5, i32 3
  store <4 x i32> %insertElmt9, <4 x i32>* %allocaVec1, align 16
  %6 = load <4 x i32>, <4 x i32>* %allocaVec, align 16
  %7 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = add <4 x i32> %6, %7
  %8 = add nsw i32 %4, %5
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %insertElmt10 = insertelement <4 x i32> undef, i32 %9, i32 0
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %9, i32 1
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %9, i32 2
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %9, i32 3
  store <4 x i32> %insertElmt13, <4 x i32>* %allocaVec2, align 16
  %10 = load i32, i32* %1, align 4
  %insertElmt14 = insertelement <4 x i32> undef, i32 %10, i32 0
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %10, i32 1
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %10, i32 2
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %10, i32 3
  store <4 x i32> %insertElmt17, <4 x i32>* %allocaVec, align 16
  %11 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %12 = load <4 x i32>, <4 x i32>* %allocaVec, align 16
  %Vop18 = add <4 x i32> %11, %12
  store <4 x i32> %Vop18, <4 x i32>* %allocaVec2
  %13 = load <4 x i32>, <4 x i32>* %allocaVec2, align 4
  %extractE = extractelement <4 x i32> %13, i64 0
  %extractE19 = extractelement <4 x i32> %13, i64 1
  %extractE20 = extractelement <4 x i32> %13, i64 2
  %Recovery = alloca i32, align 4
  %sum = add i32 %extractE, %extractE19
  %sum21 = add i32 %sum, %extractE20
  %14 = add nsw i32 %9, %10
  %Fmul = mul i32 %14, 3
  store i32 %14, i32* %Recovery
  %Fcmp = icmp ne i32 %sum21, %Fmul
  br i1 %Fcmp, label %15, label %19

; <label>:15:                                     ; preds = %0
  %remThree = sdiv i32 %sum21, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %16, label %17

; <label>:16:                                     ; preds = %15
  store i32 %extractE, i32* %Recovery, align 4
  br label %18

; <label>:17:                                     ; preds = %15
  store i32 %14, i32* %Recovery, align 4
  br label %18

; <label>:18:                                     ; preds = %17, %16
  br label %19

; <label>:19:                                     ; preds = %0, %18
  %20 = load i32, i32* %Recovery, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %1, align 4
  %22 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %21)
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
