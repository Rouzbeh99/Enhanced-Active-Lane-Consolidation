; ModuleID = 'bstr_i.c'
source_filename = "bstr_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @bstr_i(ptr noundef readonly %cptr) local_unnamed_addr #0 {
entry:
  %tobool.not12 = icmp eq ptr %cptr, null
  br i1 %tobool.not12, label %while.end, label %land.lhs.true.preheader

land.lhs.true.preheader:                          ; preds = %entry
  %0 = load i8, ptr %cptr, align 1, !tbaa !5
  %tobool1.not18 = icmp eq i8 %0, 0
  br i1 %tobool1.not18, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.preheader, %while.body
  %1 = phi i8 [ %6, %while.body ], [ %0, %land.lhs.true.preheader ]
  %cptr.addr.01320 = phi ptr [ %incdec.ptr, %while.body ], [ %cptr, %land.lhs.true.preheader ]
  %j.01419 = phi i32 [ %or, %while.body ], [ 0, %land.lhs.true.preheader ]
  %2 = zext i8 %1 to i64
  %memchr.bounds = icmp ugt i8 %1, 63
  %3 = shl nuw i64 1, %2
  %4 = and i64 %3, 844424930131969
  %memchr.bits = icmp eq i64 %4, 0
  %memchr11 = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr11, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, ptr %cptr.addr.01320, i64 1
  %shl = shl i32 %j.01419, 1
  %5 = and i8 %1, 1
  %and = zext i8 %5 to i32
  %or = or i32 %shl, %and
  %6 = load i8, ptr %incdec.ptr, align 1, !tbaa !5
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %while.end, label %land.rhs, !llvm.loop !8

while.end:                                        ; preds = %while.body, %land.rhs, %land.lhs.true.preheader, %entry
  %j.0.lcssa = phi i32 [ 0, %entry ], [ 0, %land.lhs.true.preheader ], [ %j.01419, %land.rhs ], [ %or, %while.body ]
  ret i32 %j.0.lcssa
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
