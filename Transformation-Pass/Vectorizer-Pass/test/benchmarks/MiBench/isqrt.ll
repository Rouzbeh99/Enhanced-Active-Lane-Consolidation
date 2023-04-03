; ModuleID = 'isqrt.c'
source_filename = "isqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable
define dso_local void @usqrt(i64 noundef %x, ptr nocapture noundef writeonly %q) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.017 = phi i32 [ 0, %entry ], [ %inc6, %for.inc ]
  %r.016 = phi i64 [ 0, %entry ], [ %r.1, %for.inc ]
  %a.015 = phi i64 [ 0, %entry ], [ %a.1, %for.inc ]
  %x.addr.014 = phi i64 [ %x, %entry ], [ %shl1, %for.inc ]
  %shl = shl i64 %r.016, 2
  %and = lshr i64 %x.addr.014, 30
  %shr = and i64 %and, 3
  %add = or i64 %shl, %shr
  %shl1 = shl i64 %x.addr.014, 2
  %shl2 = shl i64 %a.015, 1
  %shl3 = shl i64 %a.015, 2
  %add4 = or i64 %shl3, 1
  %cmp5.not = icmp ult i64 %add, %add4
  br i1 %cmp5.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %sub = sub i64 %add, %add4
  %inc = or i64 %shl2, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %a.1 = phi i64 [ %inc, %if.then ], [ %shl2, %for.body ]
  %r.1 = phi i64 [ %sub, %if.then ], [ %add, %for.body ]
  %inc6 = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc6, 32
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !5

for.end:                                          ; preds = %for.inc
  store i64 %a.1, ptr %q, align 4
  ret void
}

attributes #0 = { argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
