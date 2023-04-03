; ModuleID = 'bitstrng.c'
source_filename = "bitstrng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind writeonly uwtable
define dso_local void @bitstring(ptr nocapture noundef writeonly %str, i64 noundef %byze, i32 noundef %biz, i32 noundef %strwid) local_unnamed_addr #0 {
entry:
  %shr = ashr i32 %biz, 2
  %0 = and i32 %biz, 3
  %tobool.not = icmp eq i32 %0, 0
  %cond.neg.neg29 = zext i1 %tobool.not to i32
  %1 = add i32 %shr, %biz
  %sub.neg = sub i32 %strwid, %1
  %sub1 = add i32 %sub.neg, %cond.neg.neg29
  %cmp21 = icmp sgt i32 %sub1, 0
  br i1 %cmp21, label %for.body.preheader, label %while.cond.preheader

for.body.preheader:                               ; preds = %entry
  %2 = add i32 %cond.neg.neg29, %strwid
  %3 = xor i32 %1, -1
  %4 = add i32 %2, %3
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %str, i8 32, i64 %6, i1 false), !tbaa !5
  %uglygep = getelementptr i8, ptr %str, i64 %6
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body.preheader, %entry
  %str.addr.0.lcssa = phi ptr [ %str, %entry ], [ %uglygep, %for.body.preheader ]
  %cmp225 = icmp sgt i32 %biz, 0
  br i1 %cmp225, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %7 = zext i32 %biz to i64
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end
  %indvars.iv = phi i64 [ %7, %while.body.preheader ], [ %indvars.iv.next, %if.end ]
  %str.addr.126 = phi ptr [ %str.addr.0.lcssa, %while.body.preheader ], [ %str.addr.2, %if.end ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars = trunc i64 %indvars.iv.next to i32
  %sh_prom = and i64 %indvars.iv.next, 4294967295
  %shr320 = lshr i64 %byze, %sh_prom
  %8 = trunc i64 %shr320 to i8
  %9 = and i8 %8, 1
  %conv = or i8 %9, 48
  %incdec.ptr5 = getelementptr inbounds i8, ptr %str.addr.126, i64 1
  store i8 %conv, ptr %str.addr.126, align 1, !tbaa !5
  %10 = and i32 %indvars, 3
  %tobool7 = icmp eq i32 %10, 0
  %tobool8 = icmp ne i32 %indvars, 0
  %or.cond = and i1 %tobool8, %tobool7
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %incdec.ptr9 = getelementptr inbounds i8, ptr %str.addr.126, i64 2
  store i8 32, ptr %incdec.ptr5, align 1, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %str.addr.2 = phi ptr [ %incdec.ptr9, %if.then ], [ %incdec.ptr5, %while.body ]
  %cmp2 = icmp ugt i64 %indvars.iv, 1
  br i1 %cmp2, label %while.body, label %while.end, !llvm.loop !8

while.end:                                        ; preds = %if.end, %while.cond.preheader
  %str.addr.1.lcssa = phi ptr [ %str.addr.0.lcssa, %while.cond.preheader ], [ %str.addr.2, %if.end ]
  store i8 0, ptr %str.addr.1.lcssa, align 1, !tbaa !5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree noinline norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

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
