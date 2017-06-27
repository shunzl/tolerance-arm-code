; ModuleID = 'mytest.bc'
source_filename = "tolerance.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  store <4 x i32> <i32 10, i32 10, i32 10, i32 10>, <4 x i32>* %allocaVec1
  store i32 10, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %3, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %3, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %3, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %3, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec1, align 16
  %4 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = add <4 x i32> %4, <i32 5, i32 5, i32 5, i32 5>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec2
  %5 = load <4 x i32>, <4 x i32>* %allocaVec2, align 4
  %extractE = extractelement <4 x i32> %5, i64 0
  %extractE6 = extractelement <4 x i32> %5, i64 1
  %extractE7 = extractelement <4 x i32> %5, i64 2
  %sum = add i32 %extractE, %extractE6
  %sum8 = add i32 %sum, %extractE7
  %6 = add nsw i32 %3, 5
  %Fmul = mul i32 %6, 3
  store i32 %6, i32* %Recovery
  %Fcmp = icmp ne i32 %sum8, %Fmul
  br i1 %Fcmp, label %7, label %11

; <label>:7:                                      ; preds = %0
  %remThree = sdiv i32 %sum8, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %8, label %9

; <label>:8:                                      ; preds = %7
  store i32 %6, i32* %Recovery, align 4
  br label %10

; <label>:9:                                      ; preds = %7
  store i32 %extractE, i32* %Recovery, align 4
  br label %10

; <label>:10:                                     ; preds = %9, %8
  br label %11

; <label>:11:                                     ; preds = %0, %10
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %12)
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
