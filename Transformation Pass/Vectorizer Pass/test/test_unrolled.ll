; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [8 x float] [float 1.000000e+00, float -1.000000e+00, float 2.000000e+00, float -2.000000e+00, float 3.000000e+00, float -3.000000e+00, float 4.000000e+00, float -4.000000e+00], align 16
@__const.main.b = private unnamed_addr constant [8 x float] [float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00], align 16
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %0 = add nsw i32 %n, -1
  %xtraiter = and i32 %n, 3
  %1 = icmp ult i32 %0, 3
  br i1 %1, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i32 %n, -4
  br label %for.inc.3

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.inc.3, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.3, %for.inc.3 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.inc.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.inc.epil ], [ %indvars.iv.unr, %for.cond.cleanup.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.inc.epil ], [ 0, %for.cond.cleanup.loopexit.unr-lcssa ]
  %rem.epil15 = and i64 %indvars.iv.epil, 1
  %cmp1.not.epil = icmp eq i64 %rem.epil15, 0
  br i1 %cmp1.not.epil, label %for.inc.epil, label %if.then.epil

if.then.epil:                                     ; preds = %for.body.epil
  %arrayidx.epil = getelementptr inbounds float, ptr %a, i64 %indvars.iv.epil
  %2 = load float, ptr %arrayidx.epil, align 4, !tbaa !5
  %arrayidx3.epil = getelementptr inbounds float, ptr %b, i64 %indvars.iv.epil
  %3 = load float, ptr %arrayidx3.epil, align 4, !tbaa !5
  %mul.epil = fmul float %2, %3
  %arrayidx5.epil = getelementptr inbounds float, ptr %c, i64 %indvars.iv.epil
  store float %mul.epil, ptr %arrayidx5.epil, align 4, !tbaa !5
  br label %for.inc.epil

for.inc.epil:                                     ; preds = %if.then.epil, %for.body.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add nuw nsw i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup, label %for.body.epil, !llvm.loop !9

for.cond.cleanup:                                 ; preds = %for.inc.epil, %for.cond.cleanup.loopexit.unr-lcssa, %entry
  ret void

for.inc.3:                                        ; preds = %for.inc.3, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.inc.3 ]
  %niter = phi i32 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.inc.3 ]
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds float, ptr %a, i64 %indvars.iv.next
  %4 = load float, ptr %arrayidx.1, align 4, !tbaa !5
  %arrayidx3.1 = getelementptr inbounds float, ptr %b, i64 %indvars.iv.next
  %5 = load float, ptr %arrayidx3.1, align 4, !tbaa !5
  %mul.1 = fmul float %4, %5
  %arrayidx5.1 = getelementptr inbounds float, ptr %c, i64 %indvars.iv.next
  store float %mul.1, ptr %arrayidx5.1, align 4, !tbaa !5
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds float, ptr %a, i64 %indvars.iv.next.2
  %6 = load float, ptr %arrayidx.3, align 4, !tbaa !5
  %arrayidx3.3 = getelementptr inbounds float, ptr %b, i64 %indvars.iv.next.2
  %7 = load float, ptr %arrayidx3.3, align 4, !tbaa !5
  %mul.3 = fmul float %6, %7
  %arrayidx5.3 = getelementptr inbounds float, ptr %c, i64 %indvars.iv.next.2
  store float %mul.3, ptr %arrayidx5.3, align 4, !tbaa !5
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.inc.3, !llvm.loop !11
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
entry:
  %c = alloca [8 x float], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %c, i8 0, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %for.inc.3.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.3.i, %for.inc.3.i ]
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %arrayidx.1.i = getelementptr inbounds float, ptr @__const.main.a, i64 %indvars.iv.next.i
  %0 = load float, ptr %arrayidx.1.i, align 4, !tbaa !5, !alias.scope !13, !noalias !20
  %arrayidx3.1.i = getelementptr inbounds float, ptr @__const.main.b, i64 %indvars.iv.next.i
  %1 = load float, ptr %arrayidx3.1.i, align 4, !tbaa !5, !alias.scope !16, !noalias !21
  %mul.1.i = fmul float %0, %1
  %arrayidx5.1.i = getelementptr inbounds float, ptr %c, i64 %indvars.iv.next.i
  store float %mul.1.i, ptr %arrayidx5.1.i, align 4, !tbaa !5, !alias.scope !18, !noalias !22
  %indvars.iv.next.2.i = or i64 %indvars.iv.i, 3
  %arrayidx.3.i = getelementptr inbounds float, ptr @__const.main.a, i64 %indvars.iv.next.2.i
  %2 = load float, ptr %arrayidx.3.i, align 4, !tbaa !5, !alias.scope !13, !noalias !20
  %arrayidx3.3.i = getelementptr inbounds float, ptr @__const.main.b, i64 %indvars.iv.next.2.i
  %3 = load float, ptr %arrayidx3.3.i, align 4, !tbaa !5, !alias.scope !16, !noalias !21
  %mul.3.i = fmul float %2, %3
  %arrayidx5.3.i = getelementptr inbounds float, ptr %c, i64 %indvars.iv.next.2.i
  store float %mul.3.i, ptr %arrayidx5.3.i, align 4, !tbaa !5, !alias.scope !18, !noalias !22
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.i, 4
  %indvars = trunc i64 %indvars.iv.next.3.i to i32
  %niter.ncmp.3.not.i = icmp eq i32 %indvars, 8
  br i1 %niter.ncmp.3.not.i, label %for.body.preheader, label %for.inc.3.i, !llvm.loop !11

for.body.preheader:                               ; preds = %for.inc.3.i
  %4 = load float, ptr %c, align 16, !tbaa !5
  %conv = fpext float %4 to double
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %conv)
  %arrayidx.1 = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 1
  %5 = load float, ptr %arrayidx.1, align 4, !tbaa !5
  %conv.1 = fpext float %5 to double
  %call.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %conv.1)
  %arrayidx.2 = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 2
  %6 = load float, ptr %arrayidx.2, align 8, !tbaa !5
  %conv.2 = fpext float %6 to double
  %call.2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %conv.2)
  %arrayidx.3 = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 3
  %7 = load float, ptr %arrayidx.3, align 4, !tbaa !5
  %conv.3 = fpext float %7 to double
  %call.3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %conv.3)
  %arrayidx.4 = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 4
  %8 = load float, ptr %arrayidx.4, align 16, !tbaa !5
  %conv.4 = fpext float %8 to double
  %call.4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %conv.4)
  %arrayidx.5 = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 5
  %9 = load float, ptr %arrayidx.5, align 4, !tbaa !5
  %conv.5 = fpext float %9 to double
  %call.5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %conv.5)
  %arrayidx.6 = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 6
  %10 = load float, ptr %arrayidx.6, align 8, !tbaa !5
  %conv.6 = fpext float %10 to double
  %call.6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %conv.6)
  %arrayidx.7 = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 7
  %11 = load float, ptr %arrayidx.7, align 4, !tbaa !5
  %conv.7 = fpext float %11 to double
  %call.7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %conv.7)
  %putchar = tail call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12, !10}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"foo: %a"}
!15 = distinct !{!15, !"foo"}
!16 = !{!17}
!17 = distinct !{!17, !15, !"foo: %b"}
!18 = !{!19}
!19 = distinct !{!19, !15, !"foo: %c"}
!20 = !{!17, !19}
!21 = !{!14, !19}
!22 = !{!14, !17}
