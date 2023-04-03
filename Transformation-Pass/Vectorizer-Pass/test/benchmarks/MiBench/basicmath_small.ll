; ModuleID = 'basicmath_small.c'
source_filename = "basicmath_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Asqrt(%lX) = %X\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1
@str = private unnamed_addr constant [38 x i8] c"********* CUBIC FUNCTIONS ***********\00", align 1
@str.11 = private unnamed_addr constant [40 x i8] c"********* INTEGER SQR ROOTS ***********\00", align 1
@str.12 = private unnamed_addr constant [39 x i8] c"********* ANGLE CONVERSION ***********\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %x = alloca [3 x double], align 16
  %solutions = alloca i32, align 4
  %q = alloca %struct.int_sqrt, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %x) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %solutions) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #6
  %puts = tail call i32 @puts(ptr nonnull @str) #6
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.050000e+01, double noundef 3.200000e+01, double noundef -3.000000e+01, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %0 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp158 = icmp sgt i32 %0, 0
  br i1 %cmp158, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv
  %1 = load double, ptr %arrayidx, align 8, !tbaa !9
  %call2 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %solutions, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !11

for.end:                                          ; preds = %for.body, %entry
  %putchar = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -4.500000e+00, double noundef 1.700000e+01, double noundef -3.000000e+01, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call5 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %4 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp7160 = icmp sgt i32 %4, 0
  br i1 %cmp7160, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.end, %for.body8
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %for.body8 ], [ 0, %for.end ]
  %arrayidx10 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv177
  %5 = load double, ptr %arrayidx10, align 8, !tbaa !9
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %5)
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  %6 = load i32, ptr %solutions, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next178, %7
  br i1 %cmp7, label %for.body8, label %for.end14, !llvm.loop !14

for.end14:                                        ; preds = %for.body8, %for.end
  %putchar152 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -3.500000e+00, double noundef 2.200000e+01, double noundef -3.100000e+01, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %8 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp19162 = icmp sgt i32 %8, 0
  br i1 %cmp19162, label %for.body20, label %for.end26

for.body20:                                       ; preds = %for.end14, %for.body20
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %for.body20 ], [ 0, %for.end14 ]
  %arrayidx22 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv180
  %9 = load double, ptr %arrayidx22, align 8, !tbaa !9
  %call23 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %9)
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  %10 = load i32, ptr %solutions, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp19 = icmp slt i64 %indvars.iv.next181, %11
  br i1 %cmp19, label %for.body20, label %for.end26, !llvm.loop !15

for.end26:                                        ; preds = %for.body20, %for.end14
  %putchar153 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.370000e+01, double noundef 1.000000e+00, double noundef -3.500000e+01, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %12 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp31164 = icmp sgt i32 %12, 0
  br i1 %cmp31164, label %for.body32, label %for.end38

for.body32:                                       ; preds = %for.end26, %for.body32
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %for.body32 ], [ 0, %for.end26 ]
  %arrayidx34 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv183
  %13 = load double, ptr %arrayidx34, align 8, !tbaa !9
  %call35 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %13)
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1
  %14 = load i32, ptr %solutions, align 4, !tbaa !5
  %15 = sext i32 %14 to i64
  %cmp31 = icmp slt i64 %indvars.iv.next184, %15
  br i1 %cmp31, label %for.body32, label %for.end38, !llvm.loop !16

for.end38:                                        ; preds = %for.body32, %for.end26
  %putchar154 = call i32 @putchar(i32 10)
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.end38, %for.inc71
  %a1.0171.int = phi i32 [ 1, %for.end38 ], [ %inc72.int, %for.inc71 ]
  %indvar.conv193 = sitofp i32 %a1.0171.int to double
  br label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %for.cond43.preheader, %for.inc68
  %b1.0170.int = phi i32 [ 10, %for.cond43.preheader ], [ %dec69.int, %for.inc68 ]
  %indvar.conv191 = sitofp i32 %b1.0170.int to double
  br label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.cond46.preheader, %for.inc66
  %c1.0169 = phi double [ 5.000000e+00, %for.cond46.preheader ], [ %add, %for.inc66 ]
  br label %for.body51

for.body51:                                       ; preds = %for.cond49.preheader, %for.end62
  %d1.0168.int = phi i32 [ -1, %for.cond49.preheader ], [ %dec.int, %for.end62 ]
  %indvar.conv = sitofp i32 %d1.0168.int to double
  call void @SolveCubic(double noundef %indvar.conv193, double noundef %indvar.conv191, double noundef %c1.0169, double noundef %indvar.conv, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call53 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %16 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp55166 = icmp sgt i32 %16, 0
  br i1 %cmp55166, label %for.body56, label %for.end62

for.body56:                                       ; preds = %for.body51, %for.body56
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %for.body56 ], [ 0, %for.body51 ]
  %arrayidx58 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv186
  %17 = load double, ptr %arrayidx58, align 8, !tbaa !9
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %17)
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1
  %18 = load i32, ptr %solutions, align 4, !tbaa !5
  %19 = sext i32 %18 to i64
  %cmp55 = icmp slt i64 %indvars.iv.next187, %19
  br i1 %cmp55, label %for.body56, label %for.end62, !llvm.loop !17

for.end62:                                        ; preds = %for.body56, %for.body51
  %putchar157 = call i32 @putchar(i32 10)
  %dec.int = add nsw i32 %d1.0168.int, -1
  %cmp50 = icmp ugt i32 %dec.int, -11
  br i1 %cmp50, label %for.body51, label %for.inc66, !llvm.loop !18

for.inc66:                                        ; preds = %for.end62
  %add = fadd double %c1.0169, 5.000000e-01
  %cmp47 = fcmp olt double %add, 1.500000e+01
  br i1 %cmp47, label %for.cond49.preheader, label %for.inc68, !llvm.loop !19

for.inc68:                                        ; preds = %for.inc66
  %dec69.int = add nsw i32 %b1.0170.int, -1
  %cmp44.not = icmp eq i32 %dec69.int, 0
  br i1 %cmp44.not, label %for.inc71, label %for.cond46.preheader, !llvm.loop !20

for.inc71:                                        ; preds = %for.inc68
  %inc72.int = add nuw nsw i32 %a1.0171.int, 1
  %exitcond.not = icmp eq i32 %inc72.int, 10
  br i1 %exitcond.not, label %for.end73, label %for.cond43.preheader, !llvm.loop !21

for.end73:                                        ; preds = %for.inc71
  %puts155 = call i32 @puts(ptr nonnull @str.11) #6
  br label %for.body77

for.body77:                                       ; preds = %for.end73, %for.body77
  %indvars.iv194 = phi i64 [ 0, %for.end73 ], [ %indvars.iv.next195, %for.body77 ]
  call void @usqrt(i64 noundef %indvars.iv194, ptr noundef nonnull %q) #6
  %20 = load i32, ptr %q, align 4, !tbaa !22
  %21 = trunc i64 %indvars.iv194 to i32
  %call78 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %21, i32 noundef %20)
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1
  %exitcond197.not = icmp eq i64 %indvars.iv.next195, 1001
  br i1 %exitcond197.not, label %for.end81, label %for.body77, !llvm.loop !24

for.end81:                                        ; preds = %for.body77
  call void @usqrt(i64 noundef 1072497001, ptr noundef nonnull %q) #6
  %22 = load i32, ptr %q, align 4, !tbaa !22
  %call83 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef 1072497001, i32 noundef %22)
  %puts156 = call i32 @puts(ptr nonnull @str.12) #6
  br label %for.body88

for.body88:                                       ; preds = %for.end81, %for.body88
  %X.0173.int = phi i32 [ 0, %for.end81 ], [ %add93.int, %for.body88 ]
  %indvar.conv199 = sitofp i32 %X.0173.int to double
  %call89 = call double @atan(double noundef 1.000000e+00) #6
  %mul90 = fmul double %indvar.conv199, 0x400921FB54442D18
  %div = fdiv double %mul90, 1.800000e+02
  %call91 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, double noundef %indvar.conv199, double noundef %div)
  %add93.int = add nuw nsw i32 %X.0173.int, 1
  %exitcond200 = icmp eq i32 %add93.int, 361
  br i1 %exitcond200, label %for.end94, label %for.body88, !llvm.loop !25

for.end94:                                        ; preds = %for.body88
  %call95 = call i32 (ptr, ...) @puts(ptr noundef nonnull @.str.9) #6
  %call97174 = call double @atan(double noundef 1.000000e+00) #6
  br label %for.body102

for.body102:                                      ; preds = %for.end94, %for.body102
  %X.1175 = phi double [ 0.000000e+00, %for.end94 ], [ %add112, %for.body102 ]
  %mul103 = fmul double %X.1175, 1.800000e+02
  %call104 = call double @atan(double noundef 1.000000e+00) #6
  %div106 = fdiv double %mul103, 0x400921FB54442D18
  %call107 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, double noundef %X.1175, double noundef %div106)
  %call109 = call double @atan(double noundef 1.000000e+00) #6
  %add112 = fadd double %X.1175, 0x3F91DF46A2529D39
  %call97 = call double @atan(double noundef 1.000000e+00) #6
  %cmp100 = fcmp ugt double %add112, 0x401921FB97600B9B
  br i1 %cmp100, label %for.end113, label %for.body102, !llvm.loop !26

for.end113:                                       ; preds = %for.body102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %solutions) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %x) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @SolveCubic(double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @usqrt(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @atan(double noundef) local_unnamed_addr #4

declare i32 @puts(...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12, !13}
!21 = distinct !{!21, !12, !13}
!22 = !{!23, !6, i64 0}
!23 = !{!"int_sqrt", !6, i64 0, !6, i64 4}
!24 = distinct !{!24, !12, !13}
!25 = distinct !{!25, !12, !13}
!26 = distinct !{!26, !12, !13}
