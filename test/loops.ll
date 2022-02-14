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

13:                                               ; preds = %62, %4
  %14 = load i32, i32* %9, align 4, !tbaa !6
  %15 = load i32, i32* %8, align 4, !tbaa !6
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  store i32 2, i32* %10, align 4
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #2
  br label %65

19:                                               ; preds = %13
  %20 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #2
  store i32 0, i32* %11, align 4, !tbaa !6
  br label %21

21:                                               ; preds = %58, %19
  %22 = load i32, i32* %11, align 4, !tbaa !6
  %23 = load i32, i32* %8, align 4, !tbaa !6
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  store i32 5, i32* %10, align 4
  %26 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #2
  br label %61

27:                                               ; preds = %21
  %28 = load float*, float** %5, align 8, !tbaa !2
  %29 = load i32, i32* %9, align 4, !tbaa !6
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %28, i64 %30
  %32 = load float, float* %31, align 4, !tbaa !8
  %33 = fcmp une float %32, 0.000000e+00
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load float*, float** %5, align 8, !tbaa !2
  %36 = load i32, i32* %9, align 4, !tbaa !6
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  store float 1.000000e+00, float* %38, align 4, !tbaa !8
  br label %57

39:                                               ; preds = %27
  %40 = load float*, float** %6, align 8, !tbaa !2
  %41 = load i32, i32* %11, align 4, !tbaa !6
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  %44 = load float, float* %43, align 4, !tbaa !8
  %45 = fcmp une float %44, 0.000000e+00
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load float*, float** %6, align 8, !tbaa !2
  %48 = load i32, i32* %11, align 4, !tbaa !6
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  store float 1.000000e+00, float* %50, align 4, !tbaa !8
  br label %56

51:                                               ; preds = %39
  %52 = load float*, float** %7, align 8, !tbaa !2
  %53 = load i32, i32* %9, align 4, !tbaa !6
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  store float 1.000000e+00, float* %55, align 4, !tbaa !8
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %34
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4, !tbaa !6
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4, !tbaa !6
  br label %21

61:                                               ; preds = %25
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4, !tbaa !6
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4, !tbaa !6
  br label %13

65:                                               ; preds = %17
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
  store float* %0, float** %5, align 8, !tbaa !2
  store float* %1, float** %6, align 8, !tbaa !2
  store float* %2, float** %7, align 8, !tbaa !2
  store i32 %3, i32* %8, align 4, !tbaa !6
  %10 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  store i32 0, i32* %9, align 4, !tbaa !6
  br label %11

11:                                               ; preds = %33, %4
  %12 = load i32, i32* %9, align 4, !tbaa !6
  %13 = load i32, i32* %8, align 4, !tbaa !6
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #2
  br label %36

17:                                               ; preds = %11
  %18 = load float*, float** %7, align 8, !tbaa !2
  %19 = load i32, i32* %9, align 4, !tbaa !6
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  %22 = load float, float* %21, align 4, !tbaa !8
  %23 = load float*, float** %6, align 8, !tbaa !2
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
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %9, align 4, !tbaa !6
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4, !tbaa !6
  br label %11

36:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bar2(float* %0, float* %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %4, align 8, !tbaa !2
  store float* %1, float** %5, align 8, !tbaa !2
  store i32 %2, i32* %6, align 4, !tbaa !6
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  store i32 0, i32* %7, align 4, !tbaa !6
  br label %9

9:                                                ; preds = %32, %3
  %10 = load i32, i32* %7, align 4, !tbaa !6
  %11 = load i32, i32* %6, align 4, !tbaa !6
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #2
  br label %35

15:                                               ; preds = %9
  %16 = load float*, float** %4, align 8, !tbaa !2
  %17 = load i32, i32* %7, align 4, !tbaa !6
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %16, i64 %19
  %21 = load float, float* %20, align 4, !tbaa !8
  %22 = fadd float %21, 1.000000e+00
  %23 = load float*, float** %4, align 8, !tbaa !2
  %24 = load i32, i32* %7, align 4, !tbaa !6
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  store float %22, float* %26, align 4, !tbaa !8
  %27 = load float*, float** %4, align 8, !tbaa !2
  %28 = load float*, float** %5, align 8, !tbaa !2
  %29 = load float*, float** %4, align 8, !tbaa !2
  %30 = load i32, i32* %6, align 4, !tbaa !6
  %31 = call i32 @bar(float* %27, float* %28, float* %29, i32 %30)
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %7, align 4, !tbaa !6
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4, !tbaa !6
  br label %9

35:                                               ; preds = %13
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
