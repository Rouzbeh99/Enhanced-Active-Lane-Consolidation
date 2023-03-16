; ModuleID = 'rand-pts.c'
source_filename = "rand-pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Usage: %s [-r] [-s<S>] [-n] [<D>]\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"  Output <D> random points \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%4d %4d\0A\00", align 1
@str = private unnamed_addr constant [34 x i8] c"as <D> lines of coordinate pairs.\00", align 1
@str.13 = private unnamed_addr constant [21 x i8] c"  Default <D> is 10.\00", align 1
@str.14 = private unnamed_addr constant [39 x i8] c"  -r\09 Randomize. Use getpid() as seed.\00", align 1
@str.15 = private unnamed_addr constant [33 x i8] c"  -s<S>\09 Set random seed to <S>.\00", align 1
@str.16 = private unnamed_addr constant [48 x i8] c"  -n\09 Write <D> first before the random points.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %ac, ptr nocapture noundef readonly %av) local_unnamed_addr #0 {
entry:
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %cmp69 = icmp sgt i32 %ac, 1
  br i1 %cmp69, label %for.body.preheader, label %for.body40.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %ac to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %PNUM.072 = phi i32 [ 0, %for.body.preheader ], [ %PNUM.1, %for.inc ]
  %d.070 = phi i32 [ 10, %for.body.preheader ], [ %d.1, %for.inc ]
  %arrayidx = getelementptr inbounds ptr, ptr %av, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call2 = call i32 @getpid() #8
  call void @srandom(i32 noundef %call2) #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call5 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.1, i64 noundef 2)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else11

if.then7:                                         ; preds = %if.else
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 2
  %call.i = call i64 @strtol(ptr nocapture noundef nonnull %add.ptr, ptr noundef null, i32 noundef 10) #8
  %conv.i = trunc i64 %call.i to i32
  call void @srandom(i32 noundef %conv.i) #8
  br label %for.inc

if.else11:                                        ; preds = %if.else
  %call14 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.2)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %for.inc, label %if.else17

if.else17:                                        ; preds = %if.else11
  %call20 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %tmp) #8
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.else17
  %1 = load i32, ptr %tmp, align 4, !tbaa !9
  br label %for.inc

if.else22:                                        ; preds = %if.else17
  %2 = load ptr, ptr %av, align 8, !tbaa !5
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, ptr noundef %2)
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5)
  %puts = call i32 @puts(ptr nonnull @str)
  %puts63 = call i32 @puts(ptr nonnull @str.13)
  %puts64 = call i32 @puts(ptr nonnull @str.14)
  %puts65 = call i32 @puts(ptr nonnull @str.15)
  %puts66 = call i32 @puts(ptr nonnull @str.16)
  call void @exit(i32 noundef -1) #9
  unreachable

for.inc:                                          ; preds = %if.else11, %if.then, %if.then21, %if.then7
  %d.1 = phi i32 [ %d.070, %if.then ], [ %d.070, %if.then7 ], [ %1, %if.then21 ], [ %d.070, %if.else11 ]
  %PNUM.1 = phi i32 [ %PNUM.072, %if.then ], [ %PNUM.072, %if.then7 ], [ %PNUM.072, %if.then21 ], [ 1, %if.else11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.inc
  %tobool34.not = icmp eq i32 %PNUM.1, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %for.end
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i32 noundef %d.1)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %for.end
  %cmp39.not74 = icmp slt i32 %d.1, 1
  br i1 %cmp39.not74, label %for.end48, label %for.body40.preheader

for.body40.preheader:                             ; preds = %entry, %if.end37
  %d.0.lcssa8184 = phi i32 [ %d.1, %if.end37 ], [ 10, %entry ]
  br label %for.body40

for.body40:                                       ; preds = %for.body40.preheader, %for.body40
  %i.175 = phi i32 [ %inc47, %for.body40 ], [ 1, %for.body40.preheader ]
  %call41 = call i64 @random() #8
  %conv = trunc i64 %call41 to i32
  %rem = srem i32 %conv, 10000
  %call42 = call i64 @random() #8
  %conv43 = trunc i64 %call42 to i32
  %rem44 = srem i32 %conv43, 10000
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, i32 noundef %rem, i32 noundef %rem44)
  %inc47 = add nuw i32 %i.175, 1
  %exitcond77.not = icmp eq i32 %i.175, %d.0.lcssa8184
  br i1 %exitcond77.not, label %for.end48, label %for.body40, !llvm.loop !13

for.end48:                                        ; preds = %for.body40, %if.end37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @srandom(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @random() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
