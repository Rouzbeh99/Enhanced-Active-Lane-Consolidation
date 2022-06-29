; ModuleID = 'example1.c'
source_filename = "example1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local i32 @foo(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b, ptr nocapture noundef writeonly %c, ptr nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp24 = icmp sgt i32 %n, 0
  br i1 %cmp24, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %for.body.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %0 = shl nuw nsw i64 %wide.trip.count, 2
  %uglygep = getelementptr i8, ptr %c, i64 %0
  %uglygep27 = getelementptr i8, ptr %cond, i64 %wide.trip.count
  %uglygep28 = getelementptr i8, ptr %a, i64 %0
  %uglygep29 = getelementptr i8, ptr %b, i64 %0
  %bound0 = icmp ugt ptr %uglygep27, %c
  %bound1 = icmp ugt ptr %uglygep, %cond
  %found.conflict = and i1 %bound0, %bound1
  %bound030 = icmp ugt ptr %uglygep28, %c
  %bound131 = icmp ugt ptr %uglygep, %a
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx = or i1 %found.conflict, %found.conflict32
  %bound033 = icmp ugt ptr %uglygep29, %c
  %bound134 = icmp ugt ptr %uglygep, %b
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx36 = or i1 %conflict.rdx, %found.conflict35
  br i1 %conflict.rdx36, label %for.body.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %1 = getelementptr inbounds i8, ptr %cond, i64 %index
  %wide.load = load <4 x i8>, ptr %1, align 1, !tbaa !5, !alias.scope !9
  %2 = getelementptr inbounds i8, ptr %1, i64 4
  %wide.load37 = load <4 x i8>, ptr %2, align 1, !tbaa !5, !alias.scope !9
  %3 = icmp eq <4 x i8> %wide.load, zeroinitializer
  %4 = icmp eq <4 x i8> %wide.load37, zeroinitializer
  %5 = getelementptr inbounds i32, ptr %a, i64 %index
  %wide.load38 = load <4 x i32>, ptr %5, align 4, !tbaa !12, !alias.scope !14
  %6 = getelementptr inbounds i32, ptr %5, i64 4
  %wide.load39 = load <4 x i32>, ptr %6, align 4, !tbaa !12, !alias.scope !14
  %7 = getelementptr inbounds i32, ptr %b, i64 %index
  %wide.load40 = load <4 x i32>, ptr %7, align 4, !tbaa !12, !alias.scope !16
  %8 = getelementptr inbounds i32, ptr %7, i64 4
  %wide.load41 = load <4 x i32>, ptr %8, align 4, !tbaa !12, !alias.scope !16
  %9 = add nsw <4 x i32> %wide.load40, %wide.load38
  %10 = add nsw <4 x i32> %wide.load41, %wide.load39
  %11 = mul nsw <4 x i32> %wide.load40, %wide.load38
  %12 = mul nsw <4 x i32> %wide.load41, %wide.load39
  %13 = select <4 x i1> %3, <4 x i32> %9, <4 x i32> %11
  %14 = select <4 x i1> %4, <4 x i32> %10, <4 x i32> %12
  %15 = getelementptr inbounds i32, ptr %c, i64 %index
  store <4 x i32> %13, ptr %15, align 4, !alias.scope !18, !noalias !20
  %16 = getelementptr inbounds i32, ptr %15, i64 4
  store <4 x i32> %14, ptr %16, align 4, !alias.scope !18, !noalias !20
  %index.next = add nuw i64 %index, 8
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader42

for.body.preheader42:                             ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %18 = xor i64 %indvars.iv.ph, -1
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader42
  %arrayidx.prol = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv.ph
  %19 = load i8, ptr %arrayidx.prol, align 1, !tbaa !5, !range !24
  %tobool.not.prol = icmp eq i8 %19, 0
  %arrayidx8.prol = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.ph
  %20 = load i32, ptr %arrayidx8.prol, align 4, !tbaa !12
  %arrayidx10.prol = getelementptr inbounds i32, ptr %b, i64 %indvars.iv.ph
  %21 = load i32, ptr %arrayidx10.prol, align 4, !tbaa !12
  %add.prol = add nsw i32 %21, %20
  %mul.prol = mul nsw i32 %21, %20
  %mul.sink.prol = select i1 %tobool.not.prol, i32 %add.prol, i32 %mul.prol
  %22 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.ph
  store i32 %mul.sink.prol, ptr %22, align 4
  %indvars.iv.next.prol = or i64 %indvars.iv.ph, 1
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader42
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader42 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %23 = sub nsw i64 0, %wide.trip.count
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %entry
  ret i32 undef

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv
  %25 = load i8, ptr %arrayidx, align 1, !tbaa !5, !range !24
  %tobool.not = icmp eq i8 %25, 0
  %arrayidx8 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  %26 = load i32, ptr %arrayidx8, align 4, !tbaa !12
  %arrayidx10 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv
  %27 = load i32, ptr %arrayidx10, align 4, !tbaa !12
  %add = add nsw i32 %27, %26
  %mul = mul nsw i32 %27, %26
  %mul.sink = select i1 %tobool.not, i32 %add, i32 %mul
  %28 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv
  store i32 %mul.sink, ptr %28, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv.next
  %29 = load i8, ptr %arrayidx.1, align 1, !tbaa !5, !range !24
  %tobool.not.1 = icmp eq i8 %29, 0
  %arrayidx8.1 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next
  %30 = load i32, ptr %arrayidx8.1, align 4, !tbaa !12
  %arrayidx10.1 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv.next
  %31 = load i32, ptr %arrayidx10.1, align 4, !tbaa !12
  %add.1 = add nsw i32 %31, %30
  %mul.1 = mul nsw i32 %31, %30
  %mul.sink.1 = select i1 %tobool.not.1, i32 %add.1, i32 %mul.1
  %32 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.next
  store i32 %mul.sink.1, ptr %32, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %for.cond.cleanup, label %for.body, !llvm.loop !25
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
entry:
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 9)
  %call4.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 12)
  %call4.2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 33)
  %call4.3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 16)
  %call4.4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 65)
  %call4.5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 20)
  %call4.6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 105)
  %call4.7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 24)
  %putchar = tail call i32 @putchar(i32 10)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

attributes #0 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"_Bool", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, !"LVerDomain"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !11}
!16 = !{!17}
!17 = distinct !{!17, !11}
!18 = !{!19}
!19 = distinct !{!19, !11}
!20 = !{!10, !15, !17}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{i8 0, i8 2}
!25 = distinct !{!25, !22, !23}
