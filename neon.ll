; ModuleID = 'neon.c'
source_filename = "neon.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [16 x i8] c"(size % 4) == 0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"neon.c\00", align 1
@__func__.sum_array = private unnamed_addr constant [10 x i8] c"sum_array\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Sum was %d\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @fill_array(i16*, i32) #0 {
  %3 = alloca i16*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i16* %0, i16** %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %16, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %19

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = trunc i32 %11 to i16
  %13 = load i16*, i16** %3, align 4
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds i16, i16* %13, i32 %14
  store i16 %12, i16* %15, align 2
  br label %16

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %6

; <label>:19:                                     ; preds = %6
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @sum_array(i16*, i32) #0 {
  %3 = alloca <4 x i16>, align 8
  %4 = alloca <4 x i16>, align 8
  %5 = alloca <4 x i16>, align 8
  %6 = alloca <4 x i16>, align 8
  %7 = alloca <2 x i32>, align 8
  %8 = alloca <2 x i32>, align 8
  %9 = alloca <1 x i64>, align 8
  %10 = alloca i16, align 2
  %11 = alloca <4 x i16>, align 8
  %12 = alloca <4 x i16>, align 8
  %13 = alloca i16*, align 4
  %14 = alloca i32, align 4
  %15 = alloca <4 x i16>, align 8
  %16 = alloca <2 x i32>, align 8
  %17 = alloca <1 x i64>, align 8
  %18 = alloca <4 x i16>, align 8
  %19 = alloca <4 x i16>, align 8
  %20 = alloca <4 x i16>, align 8
  %21 = alloca <1 x i64>, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i16* %0, i16** %13, align 4
  store i32 %1, i32* %14, align 4
  store i16 0, i16* %10, align 2
  %24 = load i16, i16* %10, align 2
  %25 = insertelement <4 x i16> undef, i16 %24, i32 0
  %26 = load i16, i16* %10, align 2
  %27 = insertelement <4 x i16> %25, i16 %26, i32 1
  %28 = load i16, i16* %10, align 2
  %29 = insertelement <4 x i16> %27, i16 %28, i32 2
  %30 = load i16, i16* %10, align 2
  %31 = insertelement <4 x i16> %29, i16 %30, i32 3
  store <4 x i16> %31, <4 x i16>* %12, align 8
  %32 = load <4 x i16>, <4 x i16>* %12, align 8
  store <4 x i16> %32, <4 x i16>* %11, align 8
  %33 = load <4 x i16>, <4 x i16>* %11, align 8
  store <4 x i16> %33, <4 x i16>* %15, align 8
  %34 = load i32, i32* %14, align 4
  %35 = srem i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

; <label>:37:                                     ; preds = %2
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.sum_array, i32 0, i32 0))
  br label %38

; <label>:38:                                     ; preds = %37, %2
  %39 = phi i1 [ true, %2 ], [ false, %37 ]
  %40 = zext i1 %39 to i32
  br label %41

; <label>:41:                                     ; preds = %58, %38
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

; <label>:44:                                     ; preds = %41
  %45 = load i16*, i16** %13, align 4
  %46 = bitcast i16* %45 to i8*
  %47 = call <4 x i16> @llvm.arm.neon.vld1.v4i16.p0i8(i8* %46, i32 2)
  store <4 x i16> %47, <4 x i16>* %19, align 8
  %48 = load <4 x i16>, <4 x i16>* %19, align 8
  store <4 x i16> %48, <4 x i16>* %20, align 8
  %49 = load <4 x i16>, <4 x i16>* %20, align 8
  store <4 x i16> %49, <4 x i16>* %18, align 8
  %50 = load i16*, i16** %13, align 4
  %51 = getelementptr inbounds i16, i16* %50, i32 4
  store i16* %51, i16** %13, align 4
  %52 = load <4 x i16>, <4 x i16>* %15, align 8
  %53 = load <4 x i16>, <4 x i16>* %18, align 8
  store <4 x i16> %52, <4 x i16>* %3, align 8
  store <4 x i16> %53, <4 x i16>* %4, align 8
  %54 = load <4 x i16>, <4 x i16>* %3, align 8
  %55 = load <4 x i16>, <4 x i16>* %4, align 8
  %56 = add <4 x i16> %54, %55
  store <4 x i16> %56, <4 x i16>* %5, align 8
  %57 = load <4 x i16>, <4 x i16>* %5, align 8
  store <4 x i16> %57, <4 x i16>* %15, align 8
  br label %58

; <label>:58:                                     ; preds = %44
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 %59, 4
  store i32 %60, i32* %14, align 4
  br label %41

; <label>:61:                                     ; preds = %41
  %62 = load <4 x i16>, <4 x i16>* %15, align 8
  store <4 x i16> %62, <4 x i16>* %6, align 8
  %63 = load <4 x i16>, <4 x i16>* %6, align 8
  %64 = bitcast <4 x i16> %63 to <8 x i8>
  %65 = call <2 x i32> @llvm.arm.neon.vpaddls.v2i32.v4i16(<4 x i16> %63) #4
  store <2 x i32> %65, <2 x i32>* %7, align 8
  %66 = load <2 x i32>, <2 x i32>* %7, align 8
  store <2 x i32> %66, <2 x i32>* %16, align 8
  %67 = load <2 x i32>, <2 x i32>* %16, align 8
  store <2 x i32> %67, <2 x i32>* %8, align 8
  %68 = load <2 x i32>, <2 x i32>* %8, align 8
  %69 = bitcast <2 x i32> %68 to <8 x i8>
  %70 = call <1 x i64> @llvm.arm.neon.vpaddls.v1i64.v2i32(<2 x i32> %68) #4
  store <1 x i64> %70, <1 x i64>* %9, align 8
  %71 = load <1 x i64>, <1 x i64>* %9, align 8
  store <1 x i64> %71, <1 x i64>* %17, align 8
  %72 = load <1 x i64>, <1 x i64>* %17, align 8
  store <1 x i64> %72, <1 x i64>* %21, align 8
  %73 = load <1 x i64>, <1 x i64>* %21, align 8
  %74 = bitcast <1 x i64> %73 to <8 x i8>
  %75 = bitcast <8 x i8> %74 to <1 x i64>
  %76 = extractelement <1 x i64> %75, i32 0
  store i64 %76, i64* %22, align 8
  %77 = load i64, i64* %22, align 8
  store i64 %77, i64* %23, align 8
  %78 = load i64, i64* %23, align 8
  %79 = trunc i64 %78 to i32
  ret i32 %79
}

declare arm_aapcscc void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: argmemonly nounwind readonly
declare <4 x i16> @llvm.arm.neon.vld1.v4i16.p0i8(i8*, i32) #2

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i16], align 2
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [100 x i16], [100 x i16]* %2, i32 0, i32 0
  call arm_aapcscc void @fill_array(i16* %3, i32 100)
  %4 = getelementptr inbounds [100 x i16], [100 x i16]* %2, i32 0, i32 0
  %5 = call arm_aapcscc i32 @sum_array(i16* %4, i32 100)
  %6 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %5)
  ret i32 0
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone
declare <2 x i32> @llvm.arm.neon.vpaddls.v2i32.v4i16(<4 x i16>) #3

; Function Attrs: nounwind readnone
declare <1 x i64> @llvm.arm.neon.vpaddls.v1i64.v2i32(<2 x i32>) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind readonly }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
