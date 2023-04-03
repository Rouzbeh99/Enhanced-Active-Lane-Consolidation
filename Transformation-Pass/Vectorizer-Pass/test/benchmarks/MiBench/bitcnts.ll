; ModuleID = 'bitcnts.c'
source_filename = "bitcnts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.pBitCntFunc = internal unnamed_addr constant [7 x ptr] [ptr @bit_count, ptr @bitcount, ptr @ntbl_bitcnt, ptr @ntbl_bitcount, ptr @BW_btbl_bitcount, ptr @AR_btbl_bitcount, ptr @bit_shifter], align 16
@main.text = internal unnamed_addr constant [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%-38s> Time: %7.3f sec.; Bits: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0ABest  > %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Worst > %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 28, i64 1, ptr %0) #8
  tail call void @exit(i32 noundef -1) #9
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call1 = tail call i32 @atoi(ptr noundef %2) #10
  %call2 = tail call i32 @puts(ptr noundef nonnull @.str.8)
  %conv7 = sext i32 %call1 to i64
  %cmp849 = icmp sgt i32 %call1, 0
  br i1 %cmp849, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %if.end, %if.end24.us
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %if.end24.us ], [ 0, %if.end ]
  %cmin.058.us = phi double [ %cmin.1.us, %if.end24.us ], [ 0x7FEFFFFFFFFFFFFF, %if.end ]
  %cmaxix.057.us = phi i32 [ %cmaxix.1.us, %if.end24.us ], [ undef, %if.end ]
  %cminix.056.us = phi i32 [ %cminix.1.us, %if.end24.us ], [ undef, %if.end ]
  %cmax.053.us = phi double [ %cmax.1.us, %if.end24.us ], [ 0.000000e+00, %if.end ]
  %call4.us = tail call i64 @clock() #11
  %call5.us = tail call i32 @rand() #11
  %conv.us = sext i32 %call5.us to i64
  %arrayidx11.us = getelementptr inbounds [7 x ptr], ptr @main.pBitCntFunc, i64 0, i64 %indvars.iv63
  %3 = load ptr, ptr %arrayidx11.us, align 8, !tbaa !5
  br label %for.body10.us

if.then19.us:                                     ; preds = %for.cond6.for.end_crit_edge.us
  %4 = trunc i64 %indvars.iv63 to i32
  br label %if.end20.us

if.end20.us:                                      ; preds = %if.then19.us, %for.cond6.for.end_crit_edge.us
  %cminix.1.us = phi i32 [ %4, %if.then19.us ], [ %cminix.056.us, %for.cond6.for.end_crit_edge.us ]
  %cmin.1.us = phi double [ %div.us, %if.then19.us ], [ %cmin.058.us, %for.cond6.for.end_crit_edge.us ]
  %cmp21.us = fcmp ogt double %div.us, %cmax.053.us
  br i1 %cmp21.us, label %if.then23.us, label %if.end24.us

if.then23.us:                                     ; preds = %if.end20.us
  %5 = trunc i64 %indvars.iv63 to i32
  br label %if.end24.us

if.end24.us:                                      ; preds = %if.then23.us, %if.end20.us
  %cmax.1.us = phi double [ %div.us, %if.then23.us ], [ %cmax.053.us, %if.end20.us ]
  %cmaxix.1.us = phi i32 [ %5, %if.then23.us ], [ %cmaxix.057.us, %if.end20.us ]
  %arrayidx26.us = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %indvars.iv63
  %6 = load ptr, ptr %arrayidx26.us, align 8, !tbaa !5
  %call27.us = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, ptr noundef %6, double noundef %div.us, i64 noundef %add.us)
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next64, 7
  br i1 %exitcond66.not, label %for.end30, label %for.body.us, !llvm.loop !9

for.body10.us:                                    ; preds = %for.body.us, %for.body10.us
  %seed.052.us = phi i64 [ %conv.us, %for.body.us ], [ %add14.us, %for.body10.us ]
  %n.051.us = phi i64 [ 0, %for.body.us ], [ %add.us, %for.body10.us ]
  %j.050.us = phi i64 [ 0, %for.body.us ], [ %inc.us, %for.body10.us ]
  %call12.us = tail call i32 %3(i64 noundef %seed.052.us) #11
  %conv13.us = sext i32 %call12.us to i64
  %add.us = add nsw i64 %n.051.us, %conv13.us
  %inc.us = add nuw nsw i64 %j.050.us, 1
  %add14.us = add nsw i64 %seed.052.us, 13
  %exitcond62.not = icmp eq i64 %inc.us, %conv7
  br i1 %exitcond62.not, label %for.cond6.for.end_crit_edge.us, label %for.body10.us, !llvm.loop !12

for.cond6.for.end_crit_edge.us:                   ; preds = %for.body10.us
  %call15.us = tail call i64 @clock() #11
  %sub.us = sub nsw i64 %call15.us, %call4.us
  %conv16.us = sitofp i64 %sub.us to double
  %div.us = fdiv double %conv16.us, 1.000000e+06
  %cmp17.us = fcmp olt double %div.us, %cmin.058.us
  br i1 %cmp17.us, label %if.then19.us, label %if.end20.us

for.body:                                         ; preds = %if.end, %if.end24
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end24 ], [ 0, %if.end ]
  %cmin.058 = phi double [ %cmin.1, %if.end24 ], [ 0x7FEFFFFFFFFFFFFF, %if.end ]
  %cmaxix.057 = phi i32 [ %cmaxix.1, %if.end24 ], [ undef, %if.end ]
  %cminix.056 = phi i32 [ %cminix.1, %if.end24 ], [ undef, %if.end ]
  %cmax.053 = phi double [ %cmax.1, %if.end24 ], [ 0.000000e+00, %if.end ]
  %call4 = tail call i64 @clock() #11
  %call5 = tail call i32 @rand() #11
  %call15 = tail call i64 @clock() #11
  %sub = sub nsw i64 %call15, %call4
  %conv16 = sitofp i64 %sub to double
  %div = fdiv double %conv16, 1.000000e+06
  %cmp17 = fcmp olt double %div, %cmin.058
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.body
  %7 = trunc i64 %indvars.iv to i32
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %for.body
  %cminix.1 = phi i32 [ %7, %if.then19 ], [ %cminix.056, %for.body ]
  %cmin.1 = phi double [ %div, %if.then19 ], [ %cmin.058, %for.body ]
  %cmp21 = fcmp ogt double %div, %cmax.053
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  %8 = trunc i64 %indvars.iv to i32
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20
  %cmax.1 = phi double [ %div, %if.then23 ], [ %cmax.053, %if.end20 ]
  %cmaxix.1 = phi i32 [ %8, %if.then23 ], [ %cmaxix.057, %if.end20 ]
  %arrayidx26 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %indvars.iv
  %9 = load ptr, ptr %arrayidx26, align 8, !tbaa !5
  %call27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, ptr noundef %9, double noundef %div, i64 noundef 0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %for.end30, label %for.body, !llvm.loop !9

for.end30:                                        ; preds = %if.end24, %if.end24.us
  %.us-phi = phi i32 [ %cminix.1.us, %if.end24.us ], [ %cminix.1, %if.end24 ]
  %.us-phi59 = phi i32 [ %cmaxix.1.us, %if.end24.us ], [ %cmaxix.1, %if.end24 ]
  %idxprom31 = sext i32 %.us-phi to i64
  %arrayidx32 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %idxprom31
  %10 = load ptr, ptr %arrayidx32, align 8, !tbaa !5
  %call33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, ptr noundef %10)
  %idxprom34 = sext i32 %.us-phi59 to i64
  %arrayidx35 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %idxprom34
  %11 = load ptr, ptr %arrayidx35, align 8, !tbaa !5
  %call36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, ptr noundef %11)
  ret i32 0
}

declare i32 @bit_count(i64 noundef) #1

declare i32 @bitcount(i64 noundef) #1

declare i32 @ntbl_bitcnt(i64 noundef) #1

declare i32 @ntbl_bitcount(i64 noundef) #1

declare i32 @BW_btbl_bitcount(i64 noundef) #1

declare i32 @AR_btbl_bitcount(i64 noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal i32 @bit_shifter(i64 noundef %x) #2 {
entry:
  %tobool7.not = icmp eq i64 %x, 0
  br i1 %tobool7.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %n.010 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %i.09 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %x.addr.08 = phi i64 [ %shr, %for.body ], [ %x, %entry ]
  %0 = trunc i64 %x.addr.08 to i32
  %conv2 = and i32 %0, 1
  %add = add nuw nsw i32 %n.010, %conv2
  %inc = add nuw nsw i32 %i.09, 1
  %shr = ashr i64 %x.addr.08, 1
  %tobool = icmp ugt i64 %x.addr.08, 1
  %cmp = icmp ult i32 %i.09, 63
  %or.cond = select i1 %tobool, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body, label %for.end, !llvm.loop !13

for.end:                                          ; preds = %for.body, %entry
  %n.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  ret i32 %n.0.lcssa
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind }

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
!13 = distinct !{!13, !10, !11}
