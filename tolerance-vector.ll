; ModuleID = 'tolerance-vector.c'
source_filename = "tolerance-vector.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i16, align 2
  %2 = alloca <4 x i16>, align 8
  %3 = alloca <4 x i16>, align 8
  %4 = alloca <4 x i16>, align 8
  %5 = alloca <4 x i16>, align 8
  %6 = alloca <4 x i16>, align 8
  %7 = alloca i16, align 2
  %8 = alloca <4 x i16>, align 8
  %9 = alloca <4 x i16>, align 8
  %10 = alloca <4 x i16>, align 8
  %11 = alloca <4 x i16>, align 8
  %12 = alloca <4 x i16>, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  store i16 1, i16* %7, align 2
  %15 = load i16, i16* %7, align 2
  %16 = insertelement <4 x i16> undef, i16 %15, i32 0
  %17 = load i16, i16* %7, align 2
  %18 = insertelement <4 x i16> %16, i16 %17, i32 1
  %19 = load i16, i16* %7, align 2
  %20 = insertelement <4 x i16> %18, i16 %19, i32 2
  %21 = load i16, i16* %7, align 2
  %22 = insertelement <4 x i16> %20, i16 %21, i32 3
  store <4 x i16> %22, <4 x i16>* %9, align 8
  %23 = load <4 x i16>, <4 x i16>* %9, align 8
  store <4 x i16> %23, <4 x i16>* %8, align 8
  %24 = load <4 x i16>, <4 x i16>* %8, align 8
  store <4 x i16> %24, <4 x i16>* %10, align 8
  store i16 2, i16* %1, align 2
  %25 = load i16, i16* %1, align 2
  %26 = insertelement <4 x i16> undef, i16 %25, i32 0
  %27 = load i16, i16* %1, align 2
  %28 = insertelement <4 x i16> %26, i16 %27, i32 1
  %29 = load i16, i16* %1, align 2
  %30 = insertelement <4 x i16> %28, i16 %29, i32 2
  %31 = load i16, i16* %1, align 2
  %32 = insertelement <4 x i16> %30, i16 %31, i32 3
  store <4 x i16> %32, <4 x i16>* %3, align 8
  %33 = load <4 x i16>, <4 x i16>* %3, align 8
  store <4 x i16> %33, <4 x i16>* %2, align 8
  %34 = load <4 x i16>, <4 x i16>* %2, align 8
  store <4 x i16> %34, <4 x i16>* %11, align 8
  %35 = load <4 x i16>, <4 x i16>* %10, align 8
  %36 = load <4 x i16>, <4 x i16>* %11, align 8
  store <4 x i16> %35, <4 x i16>* %4, align 8
  store <4 x i16> %36, <4 x i16>* %5, align 8
  %37 = load <4 x i16>, <4 x i16>* %4, align 8
  %38 = load <4 x i16>, <4 x i16>* %5, align 8
  %39 = add <4 x i16> %37, %38
  store <4 x i16> %39, <4 x i16>* %6, align 8
  %40 = load <4 x i16>, <4 x i16>* %6, align 8
  store <4 x i16> %40, <4 x i16>* %10, align 8
  %41 = load <4 x i16>, <4 x i16>* %10, align 8
  store <4 x i16> %41, <4 x i16>* %12, align 8
  %42 = load <4 x i16>, <4 x i16>* %12, align 8
  %43 = bitcast <4 x i16> %42 to <8 x i8>
  %44 = bitcast <8 x i8> %43 to <4 x i16>
  %45 = extractelement <4 x i16> %44, i32 0
  store i16 %45, i16* %13, align 2
  %46 = load i16, i16* %13, align 2
  store i16 %46, i16* %14, align 2
  %47 = load i16, i16* %14, align 2
  %48 = sext i16 %47 to i32
  %49 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %48)
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
