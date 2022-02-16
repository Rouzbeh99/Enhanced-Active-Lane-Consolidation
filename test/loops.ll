; ModuleID = 'loops.c'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !2
  store float* %1, float** %6, align 8, !tbaa !2
  store float* %2, float** %7, align 8, !tbaa !2
  store i32 %3, i32* %8, align 4, !tbaa !6
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  store i32 0, i32* %9, align 4, !tbaa !6
  br label %13

13:                                               ; preds = %71, %4
  %14 = load i32, i32* %9, align 4, !tbaa !6
  %15 = load i32, i32* %8, align 4, !tbaa !6
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  store i32 2, i32* %10, align 4
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #2
  br label %74

19:                                               ; preds = %13
  %20 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #2
  store i32 0, i32* %11, align 4, !tbaa !6
  br label %21

21:                                               ; preds = %67, %19
  %22 = load i32, i32* %11, align 4, !tbaa !6
  %23 = load i32, i32* %8, align 4, !tbaa !6
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  store i32 5, i32* %10, align 4
  %26 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #2
  br label %70

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4, !tbaa !6
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load float*, float** %7, align 8, !tbaa !2
  %32 = load i32, i32* %9, align 4, !tbaa !6
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4, !tbaa !8
  %36 = load float*, float** %5, align 8, !tbaa !2
  %37 = load i32, i32* %9, align 4, !tbaa !6
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  store float %35, float* %39, align 4, !tbaa !8
  br label %40

40:                                               ; preds = %30, %27
  %41 = load i32, i32* %8, align 4, !tbaa !6
  %42 = icmp sgt i32 %41, 5
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load float*, float** %5, align 8, !tbaa !2
  %45 = load i32, i32* %9, align 4, !tbaa !6
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4, !tbaa !8
  %49 = load float*, float** %7, align 8, !tbaa !2
  %50 = load i32, i32* %9, align 4, !tbaa !6
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  store float %48, float* %52, align 4, !tbaa !8
  %53 = load i32, i32* %8, align 4, !tbaa !6
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %43
  %56 = load float*, float** %5, align 8, !tbaa !2
  %57 = load i32, i32* %9, align 4, !tbaa !6
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %56, i64 %58
  %60 = load float, float* %59, align 4, !tbaa !8
  %61 = load float*, float** %6, align 8, !tbaa !2
  %62 = load i32, i32* %9, align 4, !tbaa !6
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %61, i64 %63
  store float %60, float* %64, align 4, !tbaa !8
  br label %65

65:                                               ; preds = %55, %43
  br label %66

66:                                               ; preds = %65, %40
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4, !tbaa !6
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4, !tbaa !6
  br label %21

70:                                               ; preds = %25
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4, !tbaa !6
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4, !tbaa !6
  br label %13

74:                                               ; preds = %17
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !2
  store float* %1, float** %6, align 8, !tbaa !2
  store float* %2, float** %7, align 8, !tbaa !2
  store i32 %3, i32* %8, align 4, !tbaa !6
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  store i32 0, i32* %9, align 4, !tbaa !6
  br label %13

13:                                               ; preds = %35, %4
  %14 = load i32, i32* %9, align 4, !tbaa !6
  %15 = load i32, i32* %8, align 4, !tbaa !6
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #2
  br label %38

19:                                               ; preds = %13
  %20 = load float*, float** %5, align 8, !tbaa !2
  %21 = load i32, i32* %9, align 4, !tbaa !6
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  %24 = load float, float* %23, align 4, !tbaa !8
  %25 = load float*, float** %6, align 8, !tbaa !2
  %26 = load i32, i32* %9, align 4, !tbaa !6
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4, !tbaa !8
  %30 = fmul float %24, %29
  %31 = load float*, float** %5, align 8, !tbaa !2
  %32 = load i32, i32* %9, align 4, !tbaa !6
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  store float %30, float* %34, align 4, !tbaa !8
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %9, align 4, !tbaa !6
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4, !tbaa !6
  br label %13

38:                                               ; preds = %17
  %39 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #2
  store i32 0, i32* %10, align 4, !tbaa !6
  br label %40

40:                                               ; preds = %65, %38
  %41 = load i32, i32* %10, align 4, !tbaa !6
  %42 = load i32, i32* %8, align 4, !tbaa !6
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #2
  br label %68

46:                                               ; preds = %40
  %47 = load float*, float** %5, align 8, !tbaa !2
  %48 = load i32, i32* %10, align 4, !tbaa !6
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  store float 0.000000e+00, float* %50, align 4, !tbaa !8
  %51 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %51) #2
  %52 = load float*, float** %6, align 8, !tbaa !2
  %53 = load i32, i32* %10, align 4, !tbaa !6
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4, !tbaa !8
  %57 = load float*, float** %7, align 8, !tbaa !2
  %58 = load i32, i32* %10, align 4, !tbaa !6
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = load float, float* %60, align 4, !tbaa !8
  %62 = fadd float %56, %61
  %63 = fptosi float %62 to i32
  store i32 %63, i32* %11, align 4, !tbaa !6
  %64 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #2
  br label %65

65:                                               ; preds = %46
  %66 = load i32, i32* %10, align 4, !tbaa !6
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4, !tbaa !6
  br label %40

68:                                               ; preds = %44
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bar2(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !2
  store float* %1, float** %6, align 8, !tbaa !2
  store float* %2, float** %7, align 8, !tbaa !2
  store i32 %3, i32* %8, align 4, !tbaa !6
  %10 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  store i32 0, i32* %9, align 4, !tbaa !6
  br label %11

11:                                               ; preds = %47, %4
  %12 = load i32, i32* %9, align 4, !tbaa !6
  %13 = load i32, i32* %8, align 4, !tbaa !6
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #2
  br label %50

17:                                               ; preds = %11
  %18 = load float*, float** %6, align 8, !tbaa !2
  %19 = load i32, i32* %9, align 4, !tbaa !6
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  %22 = load float, float* %21, align 4, !tbaa !8
  %23 = load float*, float** %7, align 8, !tbaa !2
  %24 = load i32, i32* %9, align 4, !tbaa !6
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  %27 = load float, float* %26, align 4, !tbaa !8
  %28 = fmul float %22, %27
  %29 = load float*, float** %5, align 8, !tbaa !2
  %30 = load i32, i32* %9, align 4, !tbaa !6
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  store float %28, float* %32, align 4, !tbaa !8
  %33 = load i32, i32* %8, align 4, !tbaa !6
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %17
  %36 = load float*, float** %5, align 8, !tbaa !2
  %37 = load i32, i32* %9, align 4, !tbaa !6
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %36, i64 %39
  %41 = load float, float* %40, align 4, !tbaa !8
  %42 = load float*, float** %7, align 8, !tbaa !2
  %43 = load i32, i32* %9, align 4, !tbaa !6
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  store float %41, float* %45, align 4, !tbaa !8
  br label %46

46:                                               ; preds = %35, %17
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4, !tbaa !6
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4, !tbaa !6
  br label %11

50:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @test(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8, !tbaa !2
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  store i32 0, i32* %3, align 4, !tbaa !6
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %3, align 4, !tbaa !6
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #2
  br label %22

10:                                               ; preds = %5
  %11 = load i32*, i32** %2, align 8, !tbaa !2
  %12 = load i32, i32* %11, align 4, !tbaa !6
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8, !tbaa !2
  store i32 1, i32* %15, align 4, !tbaa !6
  br label %18

16:                                               ; preds = %10
  %17 = load i32*, i32** %2, align 8, !tbaa !2
  store i32 0, i32* %17, align 4, !tbaa !6
  br label %18

18:                                               ; preds = %16, %14
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4, !tbaa !6
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4, !tbaa !6
  br label %5

22:                                               ; preds = %8
  ret i32 0
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !4, i64 0}
