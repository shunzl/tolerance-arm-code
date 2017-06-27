; ModuleID = 'vector_extract.c'
source_filename = "vector_extract.c"
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
  %7 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca <4 x i32>, align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca <4 x i32>, align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = insertelement <4 x i32> undef, i32 %16, i32 0
  %18 = load i32, i32* %1, align 4
  %19 = insertelement <4 x i32> %17, i32 %18, i32 1
  %20 = load i32, i32* %1, align 4
  %21 = insertelement <4 x i32> %19, i32 %20, i32 2
  %22 = load i32, i32* %1, align 4
  %23 = insertelement <4 x i32> %21, i32 %22, i32 3
  store <4 x i32> %23, <4 x i32>* %3, align 16
  %24 = load <4 x i32>, <4 x i32>* %3, align 16
  store <4 x i32> %24, <4 x i32>* %2, align 16
  %25 = load <4 x i32>, <4 x i32>* %2, align 16
  store <4 x i32> %25, <4 x i32>* %5, align 16
  %26 = load <4 x i32>, <4 x i32>* %5, align 16
  store <4 x i32> %26, <4 x i32>* %7, align 16
  %27 = load <4 x i32>, <4 x i32>* %7, align 16
  %28 = bitcast <4 x i32> %27 to <16 x i8>
  %29 = bitcast <16 x i8> %28 to <4 x i32>
  %30 = extractelement <4 x i32> %29, i32 0
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load <4 x i32>, <4 x i32>* %5, align 16
  store <4 x i32> %33, <4 x i32>* %10, align 16
  %34 = load <4 x i32>, <4 x i32>* %10, align 16
  %35 = bitcast <4 x i32> %34 to <16 x i8>
  %36 = bitcast <16 x i8> %35 to <4 x i32>
  %37 = extractelement <4 x i32> %36, i32 1
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %32, %39
  %41 = load <4 x i32>, <4 x i32>* %5, align 16
  store <4 x i32> %41, <4 x i32>* %13, align 16
  %42 = load <4 x i32>, <4 x i32>* %13, align 16
  %43 = bitcast <4 x i32> %42 to <16 x i8>
  %44 = bitcast <16 x i8> %43 to <4 x i32>
  %45 = extractelement <4 x i32> %44, i32 2
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %40, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %49)
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
