; ModuleID = 'loops.ll'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = sext i32 %3 to i64
  %6 = icmp slt i64 0, %5
  br i1 %6, label %.lr.ph7, label %7

.lr.ph7:                                          ; preds = %4
  br label %8

._crit_edge8:                                     ; preds = %32
  br label %7

7:                                                ; preds = %._crit_edge8, %4
  br label %34

8:                                                ; preds = %.lr.ph7, %32
  %indvars.iv4 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next, %32 ]
  %exitcond2 = icmp ne i32 0, %3
  br i1 %exitcond2, label %.lr.ph, label %9

.lr.ph:                                           ; preds = %8
  br label %10

._crit_edge:                                      ; preds = %29
  br label %9

9:                                                ; preds = %._crit_edge, %8
  %indvars.iv5 = phi i64 [ %indvars.iv4, %._crit_edge ], [ %indvars.iv4, %8 ]
  br label %31

10:                                               ; preds = %.lr.ph, %29
  %.03 = phi i32 [ 0, %.lr.ph ], [ %30, %29 ]
  %11 = icmp eq i32 %3, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds float, float* %2, i64 %indvars.iv4
  %14 = load float, float* %13, align 4, !tbaa !2
  %15 = getelementptr inbounds float, float* %0, i64 %indvars.iv4
  store float %14, float* %15, align 4, !tbaa !2
  br label %16

16:                                               ; preds = %12, %10
  %17 = icmp sgt i32 %3, 5
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  %19 = getelementptr inbounds float, float* %0, i64 %indvars.iv4
  %20 = load float, float* %19, align 4, !tbaa !2
  %21 = getelementptr inbounds float, float* %2, i64 %indvars.iv4
  store float %20, float* %21, align 4, !tbaa !2
  %22 = icmp ne i32 %3, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds float, float* %0, i64 %indvars.iv4
  %25 = load float, float* %24, align 4, !tbaa !2
  %26 = getelementptr inbounds float, float* %1, i64 %indvars.iv4
  store float %25, float* %26, align 4, !tbaa !2
  br label %27

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %27, %16
  br label %29

29:                                               ; preds = %28
  %30 = add nuw i32 %.03, 1
  %exitcond = icmp ne i32 %30, %3
  br i1 %exitcond, label %10, label %._crit_edge

31:                                               ; preds = %9
  br label %32

32:                                               ; preds = %31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %33 = icmp slt i64 %indvars.iv.next, %5
  br i1 %33, label %8, label %._crit_edge8

34:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = sext i32 %3 to i64
  %6 = icmp slt i64 0, %5
  br i1 %6, label %.lr.ph, label %7

.lr.ph:                                           ; preds = %4
  br label %8

._crit_edge:                                      ; preds = %15
  br label %7

7:                                                ; preds = %._crit_edge, %4
  br label %17

8:                                                ; preds = %.lr.ph, %15
  %indvars.iv4 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %15 ]
  %9 = getelementptr inbounds float, float* %0, i64 %indvars.iv4
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds float, float* %1, i64 %indvars.iv4
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = fmul float %10, %12
  %14 = getelementptr inbounds float, float* %0, i64 %indvars.iv4
  store float %13, float* %14, align 4, !tbaa !2
  br label %15

15:                                               ; preds = %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1
  %16 = icmp slt i64 %indvars.iv.next, %5
  br i1 %16, label %8, label %._crit_edge

17:                                               ; preds = %7
  %18 = sext i32 %3 to i64
  %19 = icmp slt i64 0, %18
  br i1 %19, label %.lr.ph7, label %20

.lr.ph7:                                          ; preds = %17
  br label %21

._crit_edge8:                                     ; preds = %29
  br label %20

20:                                               ; preds = %._crit_edge8, %17
  br label %31

21:                                               ; preds = %.lr.ph7, %29
  %indvars.iv25 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next3, %29 ]
  %22 = getelementptr inbounds float, float* %0, i64 %indvars.iv25
  store float 0.000000e+00, float* %22, align 4, !tbaa !2
  %23 = getelementptr inbounds float, float* %1, i64 %indvars.iv25
  %24 = load float, float* %23, align 4, !tbaa !2
  %25 = getelementptr inbounds float, float* %2, i64 %indvars.iv25
  %26 = load float, float* %25, align 4, !tbaa !2
  %27 = fadd float %24, %26
  %28 = fptosi float %27 to i32
  br label %29

29:                                               ; preds = %21
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv25, 1
  %30 = icmp slt i64 %indvars.iv.next3, %18
  br i1 %30, label %21, label %._crit_edge8

31:                                               ; preds = %20
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bar2(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = sext i32 %3 to i64
  %6 = icmp slt i64 0, %5
  br i1 %6, label %.lr.ph, label %7

.lr.ph:                                           ; preds = %4
  br label %8

._crit_edge:                                      ; preds = %22
  br label %7

7:                                                ; preds = %._crit_edge, %4
  br label %24

8:                                                ; preds = %.lr.ph, %22
  %indvars.iv1 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %22 ]
  %9 = getelementptr inbounds float, float* %1, i64 %indvars.iv1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds float, float* %2, i64 %indvars.iv1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = fmul float %10, %12
  %14 = getelementptr inbounds float, float* %0, i64 %indvars.iv1
  store float %13, float* %14, align 4, !tbaa !2
  %15 = icmp ne i32 %3, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = sub nsw i64 %indvars.iv1, 1
  %18 = getelementptr inbounds float, float* %0, i64 %17
  %19 = load float, float* %18, align 4, !tbaa !2
  %20 = getelementptr inbounds float, float* %2, i64 %indvars.iv1
  store float %19, float* %20, align 4, !tbaa !2
  br label %21

21:                                               ; preds = %16, %8
  %indvars.iv2 = phi i64 [ %indvars.iv1, %16 ], [ %indvars.iv1, %8 ]
  br label %22

22:                                               ; preds = %21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1
  %23 = icmp slt i64 %indvars.iv.next, %5
  br i1 %23, label %8, label %._crit_edge

24:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @test(i32* %0) #0 {
  br label %3

2:                                                ; preds = %9
  br label %11

3:                                                ; preds = %1, %9
  %.01 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %4 = load i32, i32* %0, align 4, !tbaa !6
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store i32 1, i32* %0, align 4, !tbaa !6
  br label %8

7:                                                ; preds = %3
  store i32 0, i32* %0, align 4, !tbaa !6
  br label %8

8:                                                ; preds = %7, %6
  br label %9

9:                                                ; preds = %8
  %10 = add nuw nsw i32 %.01, 1
  %exitcond = icmp ne i32 %10, 10
  br i1 %exitcond, label %3, label %2

11:                                               ; preds = %2
  ret i32 0
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"float", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
