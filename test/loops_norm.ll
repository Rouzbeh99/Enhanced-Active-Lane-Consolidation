; ModuleID = 'fun.ll'
source_filename = "fun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = sext i32 %3 to i64
  %6 = icmp slt i64 0, %5
  br i1 %6, label %.lr.ph11, label %7

.lr.ph11:                                         ; preds = %4
  br label %8

._crit_edge12:                                    ; preds = %28
  br label %7

7:                                                ; preds = %._crit_edge12, %4
  br label %30

8:                                                ; preds = %.lr.ph11, %28
  %indvars.iv28 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next3, %28 ]
  %wide.trip.count = zext i32 %3 to i64
  %exitcond4 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond4, label %.lr.ph, label %9

.lr.ph:                                           ; preds = %8
  br label %10

._crit_edge:                                      ; preds = %26
  br label %9

9:                                                ; preds = %._crit_edge, %8
  %indvars.iv29 = phi i64 [ %indvars.iv28, %._crit_edge ], [ %indvars.iv28, %8 ]
  br label %27

10:                                               ; preds = %.lr.ph, %26
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %26 ]
  %11 = getelementptr inbounds float, float* %0, i64 %indvars.iv28
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = fcmp une float %12, 0.000000e+00
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds float, float* %0, i64 %indvars.iv28
  store float 1.000000e+00, float* %15, align 4, !tbaa !2
  br label %25

16:                                               ; preds = %10
  %17 = getelementptr inbounds float, float* %1, i64 %indvars.iv5
  %18 = load float, float* %17, align 4, !tbaa !2
  %19 = fcmp une float %18, 0.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds float, float* %1, i64 %indvars.iv5
  store float 1.000000e+00, float* %21, align 4, !tbaa !2
  br label %24

22:                                               ; preds = %16
  %23 = getelementptr inbounds float, float* %2, i64 %indvars.iv28
  store float 1.000000e+00, float* %23, align 4, !tbaa !2
  br label %24

24:                                               ; preds = %22, %20
  %indvars.iv7 = phi i64 [ %indvars.iv5, %22 ], [ %indvars.iv5, %20 ]
  br label %25

25:                                               ; preds = %24, %14
  %indvars.iv6 = phi i64 [ %indvars.iv7, %24 ], [ %indvars.iv5, %14 ]
  br label %26

26:                                               ; preds = %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %10, label %._crit_edge

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv29, 1
  %29 = icmp slt i64 %indvars.iv.next3, %5
  br i1 %29, label %8, label %._crit_edge12

30:                                               ; preds = %7
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

._crit_edge:                                      ; preds = %17
  br label %7

7:                                                ; preds = %._crit_edge, %4
  br label %19

8:                                                ; preds = %.lr.ph, %17
  %indvars.iv1 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %17 ]
  %9 = getelementptr inbounds float, float* %2, i64 %indvars.iv1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds float, float* %1, i64 %indvars.iv1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = fmul float %10, %12
  %14 = getelementptr inbounds float, float* %0, i64 %indvars.iv1
  %15 = load float, float* %14, align 4, !tbaa !2
  %16 = fadd float %15, %13
  store float %16, float* %14, align 4, !tbaa !2
  br label %17

17:                                               ; preds = %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv1, 1
  %18 = icmp slt i64 %indvars.iv.next, %5
  br i1 %18, label %8, label %._crit_edge

19:                                               ; preds = %7
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
