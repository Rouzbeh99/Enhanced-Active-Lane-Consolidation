; ModuleID = 'heap.c'
source_filename = "heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heap_info = type { i64, i64, i64 }

@_heap = dso_local local_unnamed_addr global ptr null, align 8
@_max_heap_size = dso_local local_unnamed_addr global i64 0, align 8
@_heap_size = dso_local local_unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Cannot reallocate memory in allocate_heap!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @allocate_heap(i64 noundef %n) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr @_max_heap_size, align 8, !tbaa !5
  %cmp = icmp slt i64 %0, %n
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @_heap, align 8, !tbaa !9
  %2 = mul i64 %n, 24
  %mul = add i64 %2, 24
  %call = tail call ptr @realloc(ptr noundef %1, i64 noundef %mul) #6
  store ptr %call, ptr @_heap, align 8, !tbaa !9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  tail call void @err_exit(ptr noundef nonnull @.str) #7
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i64 %n, ptr @_max_heap_size, align 8, !tbaa !5
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

declare void @err_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @deallocate_heap() local_unnamed_addr #3 {
entry:
  store i64 0, ptr @_max_heap_size, align 8, !tbaa !5
  %0 = load ptr, ptr @_heap, align 8, !tbaa !9
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #7
  store ptr null, ptr @_heap, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @heap_init(i64 noundef %n) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr @_max_heap_size, align 8, !tbaa !5
  %cmp.i = icmp slt i64 %0, %n
  br i1 %cmp.i, label %if.then.i, label %allocate_heap.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @_heap, align 8, !tbaa !9
  %2 = mul i64 %n, 24
  %mul.i = add i64 %2, 24
  %call.i = tail call ptr @realloc(ptr noundef %1, i64 noundef %mul.i) #6
  store ptr %call.i, ptr @_heap, align 8, !tbaa !9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  tail call void @err_exit(ptr noundef nonnull @.str) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i
  store i64 %n, ptr @_max_heap_size, align 8, !tbaa !5
  br label %allocate_heap.exit

allocate_heap.exit:                               ; preds = %entry, %if.end.i
  store i64 0, ptr @_heap_size, align 8, !tbaa !5
  %cmp4 = icmp sgt i64 %n, 0
  br i1 %cmp4, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %allocate_heap.exit
  %3 = load ptr, ptr @_heap, align 8, !tbaa !9
  %4 = add i64 %n, -1
  %xtraiter = and i64 %n, 3
  %5 = icmp ult i64 %4, 3
  br i1 %5, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %n, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %p.05 = phi i64 [ 0, %for.body.lr.ph.new ], [ %inc.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %idx = getelementptr inbounds %struct.heap_info, ptr %3, i64 %p.05, i32 1
  store i64 0, ptr %idx, align 8, !tbaa !11
  %inc = or i64 %p.05, 1
  %idx.1 = getelementptr inbounds %struct.heap_info, ptr %3, i64 %inc, i32 1
  store i64 0, ptr %idx.1, align 8, !tbaa !11
  %inc.1 = or i64 %p.05, 2
  %idx.2 = getelementptr inbounds %struct.heap_info, ptr %3, i64 %inc.1, i32 1
  store i64 0, ptr %idx.2, align 8, !tbaa !11
  %inc.2 = or i64 %p.05, 3
  %idx.3 = getelementptr inbounds %struct.heap_info, ptr %3, i64 %inc.2, i32 1
  store i64 0, ptr %idx.3, align 8, !tbaa !11
  %inc.3 = add nuw nsw i64 %p.05, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !13

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %p.05.unr = phi i64 [ 0, %for.body.lr.ph ], [ %inc.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %p.05.epil = phi i64 [ %inc.epil, %for.body.epil ], [ %p.05.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %idx.epil = getelementptr inbounds %struct.heap_info, ptr %3, i64 %p.05.epil, i32 1
  store i64 0, ptr %idx.epil, align 8, !tbaa !11
  %inc.epil = add nuw nsw i64 %p.05.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !15

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %allocate_heap.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @heap_insert(i64 noundef %p, i64 noundef %key) local_unnamed_addr #5 {
entry:
  %0 = load ptr, ptr @_heap, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds %struct.heap_info, ptr %0, i64 %p
  store i64 %key, ptr %arrayidx, align 8, !tbaa !17
  %1 = load i64, ptr @_heap_size, align 8, !tbaa !5
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, ptr @_heap_size, align 8, !tbaa !5
  br label %cleanup

if.end:                                           ; preds = %entry
  %inc = add nsw i64 %1, 1
  store i64 %inc, ptr @_heap_size, align 8, !tbaa !5
  %cmp435 = icmp sgt i64 %1, 0
  br i1 %cmp435, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %if.end, %while.body
  %k.036 = phi i64 [ %j.037, %while.body ], [ %inc, %if.end ]
  %j.037 = ashr i64 %k.036, 1
  %elt6 = getelementptr inbounds %struct.heap_info, ptr %0, i64 %j.037, i32 2
  %2 = load i64, ptr %elt6, align 8, !tbaa !18
  %arrayidx7 = getelementptr inbounds %struct.heap_info, ptr %0, i64 %2
  %3 = load i64, ptr %arrayidx7, align 8, !tbaa !17
  %cmp9 = icmp sgt i64 %3, %key
  br i1 %cmp9, label %while.body, label %cleanup

while.body:                                       ; preds = %land.rhs
  %elt11 = getelementptr inbounds %struct.heap_info, ptr %0, i64 %k.036, i32 2
  store i64 %2, ptr %elt11, align 8, !tbaa !18
  %idx13 = getelementptr inbounds %struct.heap_info, ptr %0, i64 %2, i32 1
  store i64 %k.036, ptr %idx13, align 8, !tbaa !11
  %cmp4 = icmp sgt i64 %k.036, 3
  br i1 %cmp4, label %land.rhs, label %cleanup, !llvm.loop !19

cleanup:                                          ; preds = %while.body, %land.rhs, %if.end, %if.then
  %k.0.lcssa.sink39 = phi i64 [ 1, %if.then ], [ %inc, %if.end ], [ %j.037, %while.body ], [ %k.036, %land.rhs ]
  %elt16 = getelementptr inbounds %struct.heap_info, ptr %0, i64 %k.0.lcssa.sink39, i32 2
  store i64 %p, ptr %elt16, align 8, !tbaa !18
  %idx18 = getelementptr inbounds %struct.heap_info, ptr %0, i64 %p, i32 1
  store i64 %k.0.lcssa.sink39, ptr %idx18, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @heap_decrease_key(i64 noundef %p, i64 noundef %new_key) local_unnamed_addr #5 {
entry:
  %0 = load ptr, ptr @_heap, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds %struct.heap_info, ptr %0, i64 %p
  store i64 %new_key, ptr %arrayidx, align 8, !tbaa !17
  %idx = getelementptr inbounds %struct.heap_info, ptr %0, i64 %p, i32 1
  %1 = load i64, ptr %idx, align 8, !tbaa !11
  %cmp = icmp sgt i64 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %shr36 = lshr i64 %1, 1
  %elt = getelementptr inbounds %struct.heap_info, ptr %0, i64 %shr36, i32 2
  %2 = load i64, ptr %elt, align 8, !tbaa !18
  %arrayidx3 = getelementptr inbounds %struct.heap_info, ptr %0, i64 %2
  %3 = load i64, ptr %arrayidx3, align 8, !tbaa !17
  %cmp5 = icmp sgt i64 %3, %new_key
  br i1 %cmp5, label %do.body, label %if.end

do.body:                                          ; preds = %land.lhs.true, %land.rhs
  %k.0 = phi i64 [ %j.0, %land.rhs ], [ %1, %land.lhs.true ]
  %j.0 = phi i64 [ %shr1037, %land.rhs ], [ %shr36, %land.lhs.true ]
  %q.0 = phi i64 [ %4, %land.rhs ], [ %2, %land.lhs.true ]
  %elt7 = getelementptr inbounds %struct.heap_info, ptr %0, i64 %k.0, i32 2
  store i64 %q.0, ptr %elt7, align 8, !tbaa !18
  %idx9 = getelementptr inbounds %struct.heap_info, ptr %0, i64 %q.0, i32 1
  store i64 %k.0, ptr %idx9, align 8, !tbaa !11
  %cmp11 = icmp ugt i64 %j.0, 1
  br i1 %cmp11, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %do.body
  %shr1037 = lshr i64 %j.0, 1
  %elt13 = getelementptr inbounds %struct.heap_info, ptr %0, i64 %shr1037, i32 2
  %4 = load i64, ptr %elt13, align 8, !tbaa !18
  %arrayidx14 = getelementptr inbounds %struct.heap_info, ptr %0, i64 %4
  %5 = load i64, ptr %arrayidx14, align 8, !tbaa !17
  %cmp16 = icmp sgt i64 %5, %new_key
  br i1 %cmp16, label %do.body, label %do.end, !llvm.loop !20

do.end:                                           ; preds = %do.body, %land.rhs
  %elt18 = getelementptr inbounds %struct.heap_info, ptr %0, i64 %j.0, i32 2
  store i64 %p, ptr %elt18, align 8, !tbaa !18
  store i64 %j.0, ptr %idx, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i64 @heap_delete_min() local_unnamed_addr #5 {
entry:
  %0 = load i64, ptr @_heap_size, align 8, !tbaa !5
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @_heap, align 8, !tbaa !9
  %elt = getelementptr inbounds %struct.heap_info, ptr %1, i64 1, i32 2
  %2 = load i64, ptr %elt, align 8, !tbaa !18
  %dec = add nsw i64 %0, -1
  store i64 %dec, ptr @_heap_size, align 8, !tbaa !5
  %elt2 = getelementptr inbounds %struct.heap_info, ptr %1, i64 %0, i32 2
  %3 = load i64, ptr %elt2, align 8, !tbaa !18
  %arrayidx3 = getelementptr inbounds %struct.heap_info, ptr %1, i64 %3
  %4 = load i64, ptr %arrayidx3, align 8, !tbaa !17
  %cmp4.not54 = icmp slt i64 %0, 3
  br i1 %cmp4.not54, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %if.end22
  %j.056 = phi i64 [ %shl, %if.end22 ], [ 2, %if.end ]
  %k.055 = phi i64 [ %spec.select, %if.end22 ], [ 1, %if.end ]
  %elt6 = getelementptr inbounds %struct.heap_info, ptr %1, i64 %j.056, i32 2
  %5 = load i64, ptr %elt6, align 8, !tbaa !18
  %arrayidx7 = getelementptr inbounds %struct.heap_info, ptr %1, i64 %5
  %6 = load i64, ptr %arrayidx7, align 8, !tbaa !17
  %add = or i64 %j.056, 1
  %elt10 = getelementptr inbounds %struct.heap_info, ptr %1, i64 %add, i32 2
  %7 = load i64, ptr %elt10, align 8, !tbaa !18
  %arrayidx11 = getelementptr inbounds %struct.heap_info, ptr %1, i64 %7
  %8 = load i64, ptr %arrayidx11, align 8, !tbaa !17
  %cmp13 = icmp sgt i64 %6, %8
  %spec.select = select i1 %cmp13, i64 %add, i64 %j.056
  %elt17 = getelementptr inbounds %struct.heap_info, ptr %1, i64 %spec.select, i32 2
  %9 = load i64, ptr %elt17, align 8, !tbaa !18
  %arrayidx18 = getelementptr inbounds %struct.heap_info, ptr %1, i64 %9
  %10 = load i64, ptr %arrayidx18, align 8, !tbaa !17
  %cmp20.not = icmp slt i64 %10, %4
  br i1 %cmp20.not, label %if.end22, label %while.end

if.end22:                                         ; preds = %while.body
  %elt26 = getelementptr inbounds %struct.heap_info, ptr %1, i64 %k.055, i32 2
  store i64 %9, ptr %elt26, align 8, !tbaa !18
  %idx = getelementptr inbounds %struct.heap_info, ptr %1, i64 %9, i32 1
  store i64 %k.055, ptr %idx, align 8, !tbaa !11
  %shl = shl i64 %spec.select, 1
  %11 = load i64, ptr @_heap_size, align 8, !tbaa !5
  %cmp4.not = icmp sgt i64 %shl, %11
  br i1 %cmp4.not, label %while.end, label %while.body, !llvm.loop !21

while.end:                                        ; preds = %if.end22, %while.body, %if.end
  %k.0.lcssa = phi i64 [ 1, %if.end ], [ %k.055, %while.body ], [ %spec.select, %if.end22 ]
  %elt31 = getelementptr inbounds %struct.heap_info, ptr %1, i64 %k.0.lcssa, i32 2
  store i64 %3, ptr %elt31, align 8, !tbaa !18
  %idx33 = getelementptr inbounds %struct.heap_info, ptr %1, i64 %3, i32 1
  store i64 %k.0.lcssa, ptr %idx33, align 8, !tbaa !11
  %idx35 = getelementptr inbounds %struct.heap_info, ptr %1, i64 %2, i32 1
  store i64 -1, ptr %idx35, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i64 [ %2, %while.end ], [ -1, %entry ]
  ret i64 %retval.0
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(1) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !6, i64 8}
!12 = !{!"heap_info", !6, i64 0, !6, i64 8, !6, i64 16}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!12, !6, i64 0}
!18 = !{!12, !6, i64 16}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
