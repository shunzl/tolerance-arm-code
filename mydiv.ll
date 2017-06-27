; ModuleID = 'mydiv.bc'
source_filename = "div.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %3 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  store i32 2, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = insertelement <4 x i32> undef, i32 %5, i32 0
  %7 = insertelement <4 x i32> %6, i32 %5, i32 1
  %8 = insertelement <4 x i32> %7, i32 %5, i32 2
  %9 = insertelement <4 x i32> %8, i32 %5, i32 3
  store <4 x i32> %9, <4 x i32>* %3, align 16
  %10 = load <4 x i32>, <4 x i32>* %3, align 16
  %11 = alloca i32, align 4
  %12 = alloca <4 x i32>, align 16
  store i32 4, i32* %11
  %13 = load i32, i32* %11, align 4
  %14 = insertelement <4 x i32> undef, i32 %13, i32 0
  %15 = insertelement <4 x i32> %14, i32 %13, i32 1
  %16 = insertelement <4 x i32> %15, i32 %13, i32 2
  %17 = insertelement <4 x i32> %16, i32 %13, i32 3
  store <4 x i32> %17, <4 x i32>* %12, align 4
  %18 = load <4 x i32>, <4 x i32>* %12, align 4
  %19 = add <4 x i32> %10, %18
  store <4 x i32> %19, <4 x i32>* %1
  %20 = load <4 x i32>, <4 x i32>* %1, align 4
  %extract0 = extractelement <4 x i32> %20, i64 0
  %extract1 = extractelement <4 x i32> %20, i64 1
  %extract2 = extractelement <4 x i32> %20, i64 2
  %recovery = alloca i32, align 4
  %21 = add i32 %extract0, %extract1
  %22 = add i32 %21, %extract2
  %23 = add nsw i32 %5, 4
  %24 = mul i32 %23, 3
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %0
  %rem3 = sdiv i32 %22, %extract0
  %27 = icmp ne i32 %rem3, 3
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %26
  store i32 %extract0, i32* %recovery, align 4
  br label %30

; <label>:29:                                     ; preds = %26
  store i32 %23, i32* %recovery, align 4
  br label %30

; <label>:30:                                     ; preds = %29, %28
  br label %31

; <label>:31:                                     ; preds = %0, %30
  %32 = load i32, i32* %recovery, align 4
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = insertelement <4 x i32> undef, i32 %33, i32 0
  %35 = insertelement <4 x i32> %34, i32 %33, i32 1
  %36 = insertelement <4 x i32> %35, i32 %33, i32 2
  %37 = insertelement <4 x i32> %36, i32 %33, i32 3
  store <4 x i32> %37, <4 x i32>* %1, align 16
  %38 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %33)
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
