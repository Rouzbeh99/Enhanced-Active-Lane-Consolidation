; ModuleID = 'qsort_small.c'
source_filename = "qsort_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myStringStruct = type { [128 x i8] }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_small <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\0ASorting %d elements.\0A\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree noinline nounwind readonly willreturn uwtable
define dso_local i32 @compare(ptr nocapture noundef readonly %elem1, ptr nocapture noundef readonly %elem2) #0 {
entry:
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %elem1, ptr noundef nonnull dereferenceable(1) %elem2) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp3 = icmp ne i32 %call, 0
  %cond = sext i1 %cmp3 to i32
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond4 = phi i32 [ %cond, %cond.false ], [ 1, %entry ]
  ret i32 %cond4
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #3 {
entry:
  %array = alloca [60000 x %struct.myStringStruct], align 16
  call void @llvm.lifetime.start.p0(i64 7680000, ptr nonnull %array) #10
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 26, i64 1, ptr %0) #11
  tail call void @exit(i32 noundef -1) #12
  unreachable

if.else:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call1 = tail call ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.1)
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %if.else ]
  %arrayidx2 = getelementptr inbounds [60000 x %struct.myStringStruct], ptr %array, i64 0, i64 %indvars.iv
  %call3 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call1, ptr noundef nonnull @.str.2, ptr noundef nonnull %arrayidx2) #10
  %cmp4 = icmp eq i32 %call3, 1
  %cmp5 = icmp ult i64 %indvars.iv, 60000
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %or.cond, label %while.cond, label %if.end, !llvm.loop !9

if.end:                                           ; preds = %while.cond
  %3 = trunc i64 %indvars.iv to i32
  %call6 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i32 noundef %3)
  call void @qsort(ptr noundef nonnull %array, i64 noundef %indvars.iv, i64 noundef 128, ptr noundef nonnull @compare) #10
  %cmp723.not = icmp eq i32 %3, 0
  br i1 %cmp723.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.body ], [ 0, %if.end ]
  %arrayidx10 = getelementptr inbounds [60000 x %struct.myStringStruct], ptr %array, i64 0, i64 %indvars.iv26
  %puts = call i32 @puts(ptr nonnull %arrayidx10)
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next27, %indvars.iv
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.body, %if.end
  call void @llvm.lifetime.end.p0(i64 7680000, ptr nonnull %array) #10
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { argmemonly mustprogress nofree noinline nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
