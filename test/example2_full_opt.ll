; ModuleID = 'example2.c'
source_filename = "example2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local i32 @foo(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b, ptr nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp46 = icmp sgt i32 %n, 0
  br i1 %cmp46, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  ret i32 undef

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %0, 10
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %arrayidx5 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %add = add nsw i32 %1, %0
  br label %for.inc

if.else:                                          ; preds = %for.body
  %cmp10 = icmp slt i32 %0, -10
  %arrayidx15 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  br i1 %cmp10, label %if.then11, label %if.else18

if.then11:                                        ; preds = %if.else
  %sub = sub nsw i32 %0, %2
  br label %for.inc

if.else18:                                        ; preds = %if.else
  %mul = mul nsw i32 %2, %0
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else18, %if.then11
  %add.sink = phi i32 [ %add, %if.then ], [ %mul, %if.else18 ], [ %sub, %if.then11 ]
  %arrayidx7 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv
  store i32 %add.sink, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !9
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
entry:
  %c = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %c, i8 0, i64 64, i1 false)
  store <4 x i32> <i32 8, i32 -2, i32 3, i32 8>, ptr %c, align 16, !tbaa !5
  %0 = getelementptr inbounds i32, ptr %c, i64 4
  store <4 x i32> <i32 15, i32 30, i32 32, i32 34>, ptr %0, align 16, !tbaa !5
  %1 = getelementptr inbounds i32, ptr %c, i64 8
  store <4 x i32> <i32 8, i32 -2, i32 3, i32 8>, ptr %1, align 16, !tbaa !5
  %2 = getelementptr inbounds i32, ptr %c, i64 12
  store <4 x i32> <i32 15, i32 30, i32 32, i32 34>, ptr %2, align 16, !tbaa !5
  %3 = load i32, ptr %c, align 16, !tbaa !5
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %3)
  %arrayidx.1 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 1
  %4 = load i32, ptr %arrayidx.1, align 4, !tbaa !5
  %call3.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %4)
  %arrayidx.2 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 2
  %5 = load i32, ptr %arrayidx.2, align 8, !tbaa !5
  %call3.2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %5)
  %arrayidx.3 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 3
  %6 = load i32, ptr %arrayidx.3, align 4, !tbaa !5
  %call3.3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %6)
  %arrayidx.4 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 4
  %7 = load i32, ptr %arrayidx.4, align 16, !tbaa !5
  %call3.4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %7)
  %arrayidx.5 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 5
  %8 = load i32, ptr %arrayidx.5, align 4, !tbaa !5
  %call3.5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %8)
  %arrayidx.6 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 6
  %9 = load i32, ptr %arrayidx.6, align 8, !tbaa !5
  %call3.6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %9)
  %arrayidx.7 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 7
  %10 = load i32, ptr %arrayidx.7, align 4, !tbaa !5
  %call3.7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %10)
  %arrayidx.8 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 8
  %11 = load i32, ptr %arrayidx.8, align 16, !tbaa !5
  %call3.8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %11)
  %arrayidx.9 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 9
  %12 = load i32, ptr %arrayidx.9, align 4, !tbaa !5
  %call3.9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %12)
  %arrayidx.10 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 10
  %13 = load i32, ptr %arrayidx.10, align 8, !tbaa !5
  %call3.10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %13)
  %arrayidx.11 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 11
  %14 = load i32, ptr %arrayidx.11, align 4, !tbaa !5
  %call3.11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %14)
  %arrayidx.12 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 12
  %15 = load i32, ptr %arrayidx.12, align 16, !tbaa !5
  %call3.12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %15)
  %arrayidx.13 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 13
  %16 = load i32, ptr %arrayidx.13, align 4, !tbaa !5
  %call3.13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %16)
  %arrayidx.14 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 14
  %17 = load i32, ptr %arrayidx.14, align 8, !tbaa !5
  %call3.14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %17)
  %arrayidx.15 = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 15
  %18 = load i32, ptr %arrayidx.15, align 4, !tbaa !5
  %call3.15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %18)
  %putchar = tail call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
