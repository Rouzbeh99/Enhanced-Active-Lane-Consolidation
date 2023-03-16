; ModuleID = 'mst2.c'
source_filename = "mst2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point = type { i64, i64 }
%struct.heap_info = type { i64, i64, i64 }

@nn = external local_unnamed_addr global ptr, align 8
@_heap = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @mst2_package_init(i64 noundef %n) local_unnamed_addr #0 {
entry:
  tail call void @allocate_heap(i64 noundef %n) #2
  tail call void @allocate_nn_arrays(i64 noundef %n) #2
  ret void
}

declare void @allocate_heap(i64 noundef) local_unnamed_addr #1

declare void @allocate_nn_arrays(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @mst2_package_done() local_unnamed_addr #0 {
entry:
  tail call void (...) @deallocate_heap() #2
  tail call void (...) @deallocate_nn_arrays() #2
  ret void
}

declare void @deallocate_heap(...) local_unnamed_addr #1

declare void @deallocate_nn_arrays(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @mst2(i64 noundef %n, ptr noundef %pt, ptr nocapture noundef writeonly %parent) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @nn, align 8, !tbaa !5
  tail call void @dq_nearest_neighbors(i64 noundef %n, ptr noundef %pt, ptr noundef %0) #2
  tail call void @heap_init(i64 noundef %n) #2
  tail call void @heap_insert(i64 noundef 0, i64 noundef 0) #2
  store i64 0, ptr %parent, align 8, !tbaa !9
  %cmp56 = icmp sgt i64 %n, 0
  br i1 %cmp56, label %for.body, label %for.end28

for.body:                                         ; preds = %entry, %for.inc26
  %k.057 = phi i64 [ %inc27, %for.inc26 ], [ 0, %entry ]
  %call = tail call i64 (...) @heap_delete_min() #2
  %cmp1 = icmp slt i64 %call, 0
  br i1 %cmp1, label %for.end28, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.body
  %arrayidx9 = getelementptr inbounds %struct.point, ptr %pt, i64 %call
  %1 = getelementptr inbounds { i64, i64 }, ptr %arrayidx9, i64 0, i32 1
  br label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %for.inc
  %oct.055 = phi i64 [ 0, %for.cond2.preheader ], [ %inc, %for.inc ]
  %2 = load ptr, ptr @nn, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds [8 x i64], ptr %2, i64 %call, i64 %oct.055
  %3 = load i64, ptr %arrayidx6, align 8, !tbaa !9
  %cmp7 = icmp sgt i64 %3, -1
  br i1 %cmp7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body4
  %arrayidx10 = getelementptr inbounds %struct.point, ptr %pt, i64 %3
  %4 = load i64, ptr %arrayidx9, align 8
  %5 = load i64, ptr %1, align 8
  %6 = load i64, ptr %arrayidx10, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %arrayidx10, i64 0, i32 1
  %8 = load i64, ptr %7, align 8
  %call11 = tail call i64 @dist(i64 %4, i64 %5, i64 %6, i64 %8) #2
  %9 = load ptr, ptr @_heap, align 8, !tbaa !5
  %idx = getelementptr inbounds %struct.heap_info, ptr %9, i64 %3, i32 1
  %10 = load i64, ptr %idx, align 8, !tbaa !11
  %cmp13 = icmp sgt i64 %10, 0
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then8
  %arrayidx12 = getelementptr inbounds %struct.heap_info, ptr %9, i64 %3
  %11 = load i64, ptr %arrayidx12, align 8, !tbaa !13
  %cmp15 = icmp slt i64 %call11, %11
  br i1 %cmp15, label %if.then16, label %for.inc

if.then16:                                        ; preds = %land.lhs.true
  tail call void @heap_decrease_key(i64 noundef %3, i64 noundef %call11) #2
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.then8
  %cmp20 = icmp eq i64 %10, 0
  br i1 %cmp20, label %if.then21, label %for.inc

if.then21:                                        ; preds = %if.else
  tail call void @heap_insert(i64 noundef %3, i64 noundef %call11) #2
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then16, %if.then21
  %arrayidx22 = getelementptr inbounds i64, ptr %parent, i64 %3
  store i64 %call, ptr %arrayidx22, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true, %for.body4, %if.else
  %inc = add nuw nsw i64 %oct.055, 1
  %exitcond.not = icmp eq i64 %inc, 8
  br i1 %exitcond.not, label %for.inc26, label %for.body4, !llvm.loop !14

for.inc26:                                        ; preds = %for.inc
  %inc27 = add nuw nsw i64 %k.057, 1
  %exitcond58.not = icmp eq i64 %inc27, %n
  br i1 %exitcond58.not, label %for.end28, label %for.body, !llvm.loop !16

for.end28:                                        ; preds = %for.inc26, %for.body, %entry
  ret void
}

declare void @dq_nearest_neighbors(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @heap_init(i64 noundef) local_unnamed_addr #1

declare void @heap_insert(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @heap_delete_min(...) local_unnamed_addr #1

declare i64 @dist(i64, i64, i64, i64) local_unnamed_addr #1

declare void @heap_decrease_key(i64 noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !10, i64 8}
!12 = !{!"heap_info", !10, i64 0, !10, i64 8, !10, i64 16}
!13 = !{!12, !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
