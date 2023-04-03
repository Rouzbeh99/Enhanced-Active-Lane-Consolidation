; ModuleID = 'qsort_large.c'
source_filename = "qsort_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my3DVertexStruct = type { i32, i32, i32, double }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_large <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\0ASorting %d vectors based on distance from the origin.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @compare(ptr nocapture noundef readonly %elem1, ptr nocapture noundef readonly %elem2) #0 {
entry:
  %distance = getelementptr inbounds %struct.my3DVertexStruct, ptr %elem1, i64 0, i32 3
  %0 = load double, ptr %distance, align 8, !tbaa !5
  %distance3 = getelementptr inbounds %struct.my3DVertexStruct, ptr %elem2, i64 0, i32 3
  %1 = load double, ptr %distance3, align 8, !tbaa !5
  %cmp = fcmp ogt double %0, %1
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp4 = fcmp une double %0, %1
  %cond = sext i1 %cmp4 to i32
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond5 = phi i32 [ %cond, %cond.false ], [ 1, %entry ]
  ret i32 %cond5
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #2 {
entry:
  %array = alloca [60000 x %struct.my3DVertexStruct], align 16
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1440000, ptr nonnull %array) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %z) #9
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !11
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 26, i64 1, ptr %0) #10
  tail call void @exit(i32 noundef -1) #11
  unreachable

if.else:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !11
  %call1 = tail call ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.1)
  %call260 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call1, ptr noundef nonnull @.str.2, ptr noundef nonnull %x) #9
  %cmp361 = icmp eq i32 %call260, 1
  br i1 %cmp361, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %if.else ]
  %call4 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call1, ptr noundef nonnull @.str.2, ptr noundef nonnull %y) #9
  %cmp5 = icmp eq i32 %call4, 1
  br i1 %cmp5, label %land.lhs.true6, label %if.end.loopexit

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call7 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call1, ptr noundef nonnull @.str.2, ptr noundef nonnull %z) #9
  %cmp8 = icmp eq i32 %call7, 1
  %cmp9 = icmp ult i64 %indvars.iv, 60000
  %or.cond = select i1 %cmp8, i1 %cmp9, i1 false
  br i1 %or.cond, label %while.body, label %if.end.loopexit

while.body:                                       ; preds = %land.lhs.true6
  %3 = load i32, ptr %x, align 4, !tbaa !13
  %arrayidx10 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %indvars.iv
  store i32 %3, ptr %arrayidx10, align 8, !tbaa !14
  %4 = load i32, ptr %y, align 4, !tbaa !13
  %y14 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %indvars.iv, i32 1
  store i32 %4, ptr %y14, align 4, !tbaa !15
  %5 = load i32, ptr %z, align 4, !tbaa !13
  %z17 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %indvars.iv, i32 2
  store i32 %5, ptr %z17, align 8, !tbaa !16
  %conv = sitofp i32 %3 to double
  %square = fmul double %conv, %conv
  %conv19 = sitofp i32 %4 to double
  %square58 = fmul double %conv19, %conv19
  %add = fadd double %square, %square58
  %conv21 = sitofp i32 %5 to double
  %square59 = fmul double %conv21, %conv21
  %add23 = fadd double %add, %square59
  %call24 = call double @sqrt(double noundef %add23) #9
  %distance = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %indvars.iv, i32 3
  store double %call24, ptr %distance, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call1, ptr noundef nonnull @.str.2, ptr noundef nonnull %x) #9
  %cmp3 = icmp eq i32 %call2, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end.loopexit, !llvm.loop !17

if.end.loopexit:                                  ; preds = %land.lhs.true6, %land.lhs.true, %while.body
  %count.0.lcssa.ph.in = phi i64 [ %indvars.iv.next, %while.body ], [ %indvars.iv, %land.lhs.true ], [ %indvars.iv, %land.lhs.true6 ]
  %count.0.lcssa.ph = trunc i64 %count.0.lcssa.ph.in to i32
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %if.else
  %count.0.lcssa = phi i32 [ 0, %if.else ], [ %count.0.lcssa.ph, %if.end.loopexit ]
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i32 noundef %count.0.lcssa)
  %conv28 = zext i32 %count.0.lcssa to i64
  call void @qsort(ptr noundef nonnull %array, i64 noundef %conv28, i64 noundef 24, ptr noundef nonnull @compare) #9
  %cmp2965.not = icmp eq i32 %count.0.lcssa, 0
  br i1 %cmp2965.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body ], [ 0, %if.end ]
  %arrayidx32 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %indvars.iv68
  %6 = load i32, ptr %arrayidx32, align 8, !tbaa !14
  %y36 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %indvars.iv68, i32 1
  %7 = load i32, ptr %y36, align 4, !tbaa !15
  %z39 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %indvars.iv68, i32 2
  %8 = load i32, ptr %z39, align 8, !tbaa !16
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next69, %conv28
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !20

for.end:                                          ; preds = %for.body, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %z) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #9
  call void @llvm.lifetime.end.p0(i64 1440000, ptr nonnull %array) #9
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"my3DVertexStruct", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"double", !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!6, !7, i64 0}
!15 = !{!6, !7, i64 4}
!16 = !{!6, !7, i64 8}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !18, !19}
