; ModuleID = 'vector_32half.c'
source_filename = "vector_32half.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca <4 x i32>, align 16
  %3 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca <4 x i32>, align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca <4 x i32>, align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca <4 x i32>, align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = insertelement <4 x i32> undef, i32 %20, i32 0
  %22 = load i32, i32* %1, align 4
  %23 = insertelement <4 x i32> %21, i32 %22, i32 1
  %24 = load i32, i32* %1, align 4
  %25 = insertelement <4 x i32> %23, i32 %24, i32 2
  %26 = load i32, i32* %1, align 4
  %27 = insertelement <4 x i32> %25, i32 %26, i32 3
  store <4 x i32> %27, <4 x i32>* %3, align 16
  %28 = load <4 x i32>, <4 x i32>* %3, align 16
  store <4 x i32> %28, <4 x i32>* %2, align 16
  %29 = load <4 x i32>, <4 x i32>* %2, align 16
  store <4 x i32> %29, <4 x i32>* %5, align 16
  store i32 1, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %30, 3
  store i32 %31, i32* %6, align 4
  %32 = load <4 x i32>, <4 x i32>* %5, align 16
  store <4 x i32> %32, <4 x i32>* %8, align 16
  %33 = load <4 x i32>, <4 x i32>* %8, align 16
  %34 = bitcast <4 x i32> %33 to <16 x i8>
  %35 = bitcast <16 x i8> %34 to <4 x i32>
  %36 = extractelement <4 x i32> %35, i32 0
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load <4 x i32>, <4 x i32>* %5, align 16
  store <4 x i32> %39, <4 x i32>* %11, align 16
  %40 = load <4 x i32>, <4 x i32>* %11, align 16
  %41 = bitcast <4 x i32> %40 to <16 x i8>
  %42 = bitcast <16 x i8> %41 to <4 x i32>
  %43 = extractelement <4 x i32> %42, i32 1
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %38, %45
  %47 = load <4 x i32>, <4 x i32>* %5, align 16
  store <4 x i32> %47, <4 x i32>* %14, align 16
  %48 = load <4 x i32>, <4 x i32>* %14, align 16
  %49 = bitcast <4 x i32> %48 to <16 x i8>
  %50 = bitcast <16 x i8> %49 to <4 x i32>
  %51 = extractelement <4 x i32> %50, i32 2
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %46, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load <4 x i32>, <4 x i32>* %5, align 16
  store <4 x i32> %56, <4 x i32>* %17, align 16
  %57 = load <4 x i32>, <4 x i32>* %17, align 16
  %58 = bitcast <4 x i32> %57 to <16 x i8>
  %59 = bitcast <16 x i8> %58 to <4 x i32>
  %60 = extractelement <4 x i32> %59, i32 0
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = sdiv i32 %55, %62
  %64 = icmp ne i32 %63, 3
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %0
  %66 = load i32, i32* %7, align 4
  %67 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %66)
  br label %71

; <label>:68:                                     ; preds = %0
  %69 = load i32, i32* %6, align 4
  %70 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %69)
  br label %71

; <label>:71:                                     ; preds = %68, %65
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
