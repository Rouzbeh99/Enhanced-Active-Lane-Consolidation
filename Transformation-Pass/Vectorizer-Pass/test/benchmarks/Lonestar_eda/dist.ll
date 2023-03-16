; ModuleID = 'dist.c'
source_filename = "dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point = type { i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @dist(i64 %p.coerce0, i64 %p.coerce1, i64 %q.coerce0, i64 %q.coerce1) local_unnamed_addr #0 {
entry:
  %sub = sub nsw i64 %p.coerce0, %q.coerce0
  %0 = tail call i64 @llvm.abs.i64(i64 %sub, i1 true)
  %sub4 = sub nsw i64 %p.coerce1, %q.coerce1
  %1 = tail call i64 @llvm.abs.i64(i64 %sub4, i1 true)
  %add = add nuw nsw i64 %1, %0
  ret i64 %add
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @dist2(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %q) local_unnamed_addr #1 {
entry:
  %0 = load i64, ptr %p, align 8, !tbaa !5
  %1 = load i64, ptr %q, align 8, !tbaa !5
  %sub = sub nsw i64 %0, %1
  %2 = tail call i64 @llvm.abs.i64(i64 %sub, i1 true)
  %y = getelementptr inbounds %struct.point, ptr %p, i64 0, i32 1
  %3 = load i64, ptr %y, align 8, !tbaa !10
  %y3 = getelementptr inbounds %struct.point, ptr %q, i64 0, i32 1
  %4 = load i64, ptr %y3, align 8, !tbaa !10
  %sub4 = sub nsw i64 %3, %4
  %5 = tail call i64 @llvm.abs.i64(i64 %sub4, i1 true)
  %add = add nuw nsw i64 %5, %2
  ret i64 %add
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"point", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
