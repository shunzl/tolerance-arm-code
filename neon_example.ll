; ModuleID = 'neon_example.c'
source_filename = "neon_example.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [12 x i8] c"Sum was %d\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i16, align 2
  %2 = alloca <4 x i16>, align 8
  %3 = alloca <4 x i16>, align 8
  %4 = alloca <4 x i16>, align 8
  %5 = alloca <4 x i16>, align 8
  %6 = alloca <4 x i16>, align 8
  %7 = alloca <4 x i16>, align 8
  %8 = alloca <2 x i32>, align 8
  %9 = alloca <2 x i32>, align 8
  %10 = alloca <1 x i64>, align 8
  %11 = alloca i16, align 2
  %12 = alloca <4 x i16>, align 8
  %13 = alloca <4 x i16>, align 8
  %14 = alloca <4 x i16>, align 8
  %15 = alloca <4 x i16>, align 8
  %16 = alloca <2 x i32>, align 8
  %17 = alloca <1 x i64>, align 8
  %18 = alloca <1 x i64>, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i16 1, i16* %11, align 2
  %21 = load i16, i16* %11, align 2
  %22 = insertelement <4 x i16> undef, i16 %21, i32 0
  %23 = load i16, i16* %11, align 2
  %24 = insertelement <4 x i16> %22, i16 %23, i32 1
  %25 = load i16, i16* %11, align 2
  %26 = insertelement <4 x i16> %24, i16 %25, i32 2
  %27 = load i16, i16* %11, align 2
  %28 = insertelement <4 x i16> %26, i16 %27, i32 3
  store <4 x i16> %28, <4 x i16>* %13, align 8
  %29 = load <4 x i16>, <4 x i16>* %13, align 8
  store <4 x i16> %29, <4 x i16>* %12, align 8
  %30 = load <4 x i16>, <4 x i16>* %12, align 8
  store <4 x i16> %30, <4 x i16>* %14, align 8
  store i16 2, i16* %1, align 2
  %31 = load i16, i16* %1, align 2
  %32 = insertelement <4 x i16> undef, i16 %31, i32 0
  %33 = load i16, i16* %1, align 2
  %34 = insertelement <4 x i16> %32, i16 %33, i32 1
  %35 = load i16, i16* %1, align 2
  %36 = insertelement <4 x i16> %34, i16 %35, i32 2
  %37 = load i16, i16* %1, align 2
  %38 = insertelement <4 x i16> %36, i16 %37, i32 3
  store <4 x i16> %38, <4 x i16>* %3, align 8
  %39 = load <4 x i16>, <4 x i16>* %3, align 8
  store <4 x i16> %39, <4 x i16>* %2, align 8
  %40 = load <4 x i16>, <4 x i16>* %2, align 8
  store <4 x i16> %40, <4 x i16>* %15, align 8
  %41 = load <4 x i16>, <4 x i16>* %14, align 8
  %42 = load <4 x i16>, <4 x i16>* %15, align 8
  store <4 x i16> %41, <4 x i16>* %4, align 8
  store <4 x i16> %42, <4 x i16>* %5, align 8
  %43 = load <4 x i16>, <4 x i16>* %4, align 8
  %44 = load <4 x i16>, <4 x i16>* %5, align 8
  %45 = add <4 x i16> %43, %44
  store <4 x i16> %45, <4 x i16>* %6, align 8
  %46 = load <4 x i16>, <4 x i16>* %6, align 8
  store <4 x i16> %46, <4 x i16>* %14, align 8
  %47 = load <4 x i16>, <4 x i16>* %14, align 8
  store <4 x i16> %47, <4 x i16>* %7, align 8
  %48 = load <4 x i16>, <4 x i16>* %7, align 8
  %49 = bitcast <4 x i16> %48 to <8 x i8>
  %50 = call <2 x i32> @llvm.arm.neon.vpaddls.v2i32.v4i16(<4 x i16> %48) #3
  store <2 x i32> %50, <2 x i32>* %8, align 8
  %51 = load <2 x i32>, <2 x i32>* %8, align 8
  store <2 x i32> %51, <2 x i32>* %16, align 8
  %52 = load <2 x i32>, <2 x i32>* %16, align 8
  store <2 x i32> %52, <2 x i32>* %9, align 8
  %53 = load <2 x i32>, <2 x i32>* %9, align 8
  %54 = bitcast <2 x i32> %53 to <8 x i8>
  %55 = call <1 x i64> @llvm.arm.neon.vpaddls.v1i64.v2i32(<2 x i32> %53) #3
  store <1 x i64> %55, <1 x i64>* %10, align 8
  %56 = load <1 x i64>, <1 x i64>* %10, align 8
  store <1 x i64> %56, <1 x i64>* %17, align 8
  %57 = load <1 x i64>, <1 x i64>* %17, align 8
  store <1 x i64> %57, <1 x i64>* %18, align 8
  %58 = load <1 x i64>, <1 x i64>* %18, align 8
  %59 = bitcast <1 x i64> %58 to <8 x i8>
  %60 = bitcast <8 x i8> %59 to <1 x i64>
  %61 = extractelement <1 x i64> %60, i32 0
  store i64 %61, i64* %19, align 8
  %62 = load i64, i64* %19, align 8
  store i64 %62, i64* %20, align 8
  %63 = load i64, i64* %20, align 8
  %64 = trunc i64 %63 to i32
  %65 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %64)
  ret i32 0
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone
declare <2 x i32> @llvm.arm.neon.vpaddls.v2i32.v4i16(<4 x i16>) #2

; Function Attrs: nounwind readnone
declare <1 x i64> @llvm.arm.neon.vpaddls.v1i64.v2i32(<2 x i32>) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
