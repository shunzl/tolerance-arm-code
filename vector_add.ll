; ModuleID = 'vector_add.c'
source_filename = "vector_add.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca <4 x i32>, align 16
  %3 = alloca <4 x i32>, align 16
  %4 = alloca <4 x i32>, align 16
  %5 = alloca <4 x i32>, align 16
  %6 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %8 = alloca <4 x i32>, align 16
  %9 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  %11 = alloca <4 x i32>, align 16
  %12 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %14 = alloca <4 x i32>, align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %10, align 4
  store i32 2, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = insertelement <4 x i32> undef, i32 %17, i32 0
  %19 = load i32, i32* %7, align 4
  %20 = insertelement <4 x i32> %18, i32 %19, i32 1
  %21 = load i32, i32* %7, align 4
  %22 = insertelement <4 x i32> %20, i32 %21, i32 2
  %23 = load i32, i32* %7, align 4
  %24 = insertelement <4 x i32> %22, i32 %23, i32 3
  store <4 x i32> %24, <4 x i32>* %9, align 16
  %25 = load <4 x i32>, <4 x i32>* %9, align 16
  store <4 x i32> %25, <4 x i32>* %8, align 16
  %26 = load <4 x i32>, <4 x i32>* %8, align 16
  store <4 x i32> %26, <4 x i32>* %11, align 16
  store i32 3, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = insertelement <4 x i32> undef, i32 %27, i32 0
  %29 = load i32, i32* %1, align 4
  %30 = insertelement <4 x i32> %28, i32 %29, i32 1
  %31 = load i32, i32* %1, align 4
  %32 = insertelement <4 x i32> %30, i32 %31, i32 2
  %33 = load i32, i32* %1, align 4
  %34 = insertelement <4 x i32> %32, i32 %33, i32 3
  store <4 x i32> %34, <4 x i32>* %3, align 16
  %35 = load <4 x i32>, <4 x i32>* %3, align 16
  store <4 x i32> %35, <4 x i32>* %2, align 16
  %36 = load <4 x i32>, <4 x i32>* %2, align 16
  store <4 x i32> %36, <4 x i32>* %12, align 16
  %37 = load <4 x i32>, <4 x i32>* %11, align 16
  %38 = load <4 x i32>, <4 x i32>* %12, align 16
  store <4 x i32> %37, <4 x i32>* %4, align 16
  store <4 x i32> %38, <4 x i32>* %5, align 16
  %39 = load <4 x i32>, <4 x i32>* %4, align 16
  %40 = load <4 x i32>, <4 x i32>* %5, align 16
  %41 = add <4 x i32> %39, %40
  store <4 x i32> %41, <4 x i32>* %6, align 16
  %42 = load <4 x i32>, <4 x i32>* %6, align 16
  store <4 x i32> %42, <4 x i32>* %11, align 16
  %43 = load <4 x i32>, <4 x i32>* %11, align 16
  store <4 x i32> %43, <4 x i32>* %14, align 16
  %44 = load <4 x i32>, <4 x i32>* %14, align 16
  %45 = bitcast <4 x i32> %44 to <16 x i8>
  %46 = bitcast <16 x i8> %45 to <4 x i32>
  %47 = extractelement <4 x i32> %46, i32 0
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %50)
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
