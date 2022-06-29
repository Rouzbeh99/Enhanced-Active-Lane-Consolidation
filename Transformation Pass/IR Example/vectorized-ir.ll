; ModuleID = 'raw code.cpp'
source_filename = "raw code.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_raw_code.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z3fooPfS_S_i(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  %min.iters.check = icmp ult i32 %n, 4
  br i1 %min.iters.check, label %for.body.preheader22, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue21, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue21 ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %pred.store.continue21 ]
  %0 = trunc <4 x i64> %vec.ind to <4 x i1>
  %1 = extractelement <4 x i1> %0, i64 0
  br i1 %1, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %2 = getelementptr inbounds float, ptr %a, i64 %index
  %3 = load float, ptr %2, align 4, !tbaa !5
  %4 = getelementptr inbounds float, ptr %b, i64 %index
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = fmul float %3, %5
  %7 = getelementptr inbounds float, ptr %c, i64 %index
  store float %6, ptr %7, align 4, !tbaa !5
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %8 = extractelement <4 x i1> %0, i64 1
  br i1 %8, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue
  %9 = or i64 %index, 1
  %10 = getelementptr inbounds float, ptr %a, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds float, ptr %b, i64 %9
  %13 = load float, ptr %12, align 4, !tbaa !5
  %14 = fmul float %11, %13
  %15 = getelementptr inbounds float, ptr %c, i64 %9
  store float %14, ptr %15, align 4, !tbaa !5
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue
  %16 = extractelement <4 x i1> %0, i64 2
  br i1 %16, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  %17 = or i64 %index, 2
  %18 = getelementptr inbounds float, ptr %a, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !5
  %20 = getelementptr inbounds float, ptr %b, i64 %17
  %21 = load float, ptr %20, align 4, !tbaa !5
  %22 = fmul float %19, %21
  %23 = getelementptr inbounds float, ptr %c, i64 %17
  store float %22, ptr %23, align 4, !tbaa !5
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %24 = extractelement <4 x i1> %0, i64 3
  br i1 %24, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  %25 = or i64 %index, 3
  %26 = getelementptr inbounds float, ptr %a, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !5
  %28 = getelementptr inbounds float, ptr %b, i64 %25
  %29 = load float, ptr %28, align 4, !tbaa !5
  %30 = fmul float %27, %29
  %31 = getelementptr inbounds float, ptr %c, i64 %25
  store float %30, ptr %31, align 4, !tbaa !5
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %32 = icmp eq i64 %index.next, %n.vec
  br i1 %32, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %pred.store.continue21
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader22

for.body.preheader22:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc, %middle.block, %entry
  ret void

for.body:                                         ; preds = %for.body.preheader22, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.preheader22 ]
  %rem15 = and i64 %indvars.iv, 1
  %cmp1.not = icmp eq i64 %rem15, 0
  br i1 %cmp1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds float, ptr %a, i64 %indvars.iv
  %33 = load float, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds float, ptr %b, i64 %indvars.iv
  %34 = load float, ptr %arrayidx3, align 4, !tbaa !5
  %mul = fmul float %33, %34
  %arrayidx5 = getelementptr inbounds float, ptr %c, i64 %indvars.iv
  store float %mul, ptr %arrayidx5, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !12
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
for.inc.i.7:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef 0.000000e+00)
  %call.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef -2.000000e+00)
  %call.2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef 0.000000e+00)
  %call.3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef -4.000000e+00)
  %call.4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef 0.000000e+00)
  %call.5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef -6.000000e+00)
  %call.6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef 0.000000e+00)
  %call.7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef -8.000000e+00)
  %putchar = tail call i32 @putchar(i32 10)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_raw_code.cpp() #6 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
