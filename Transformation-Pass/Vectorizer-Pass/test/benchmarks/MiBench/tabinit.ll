; ModuleID = 'mpglib/tabinit.c'
source_filename = "mpglib/tabinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cos64 = internal global [16 x double] zeroinitializer, align 16
@cos32 = internal global [8 x double] zeroinitializer, align 16
@cos16 = internal global [4 x double] zeroinitializer, align 16
@cos8 = internal global [2 x double] zeroinitializer, align 16
@cos4 = internal global [1 x double] zeroinitializer, align 8
@pnts = dso_local local_unnamed_addr global [5 x ptr] [ptr @cos64, ptr @cos32, ptr @cos16, ptr @cos8, ptr @cos4], align 16
@decwin = dso_local global [544 x double] zeroinitializer, align 16
@intwinbase = internal unnamed_addr constant [257 x i64] [i64 0, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -2, i64 -2, i64 -2, i64 -2, i64 -3, i64 -3, i64 -4, i64 -4, i64 -5, i64 -5, i64 -6, i64 -7, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -13, i64 -14, i64 -16, i64 -17, i64 -19, i64 -21, i64 -24, i64 -26, i64 -29, i64 -31, i64 -35, i64 -38, i64 -41, i64 -45, i64 -49, i64 -53, i64 -58, i64 -63, i64 -68, i64 -73, i64 -79, i64 -85, i64 -91, i64 -97, i64 -104, i64 -111, i64 -117, i64 -125, i64 -132, i64 -139, i64 -147, i64 -154, i64 -161, i64 -169, i64 -176, i64 -183, i64 -190, i64 -196, i64 -202, i64 -208, i64 -213, i64 -218, i64 -222, i64 -225, i64 -227, i64 -228, i64 -228, i64 -227, i64 -224, i64 -221, i64 -215, i64 -208, i64 -200, i64 -189, i64 -177, i64 -163, i64 -146, i64 -127, i64 -106, i64 -83, i64 -57, i64 -29, i64 2, i64 36, i64 72, i64 111, i64 153, i64 197, i64 244, i64 294, i64 347, i64 401, i64 459, i64 519, i64 581, i64 645, i64 711, i64 779, i64 848, i64 919, i64 991, i64 1064, i64 1137, i64 1210, i64 1283, i64 1356, i64 1428, i64 1498, i64 1567, i64 1634, i64 1698, i64 1759, i64 1817, i64 1870, i64 1919, i64 1962, i64 2001, i64 2032, i64 2057, i64 2075, i64 2085, i64 2087, i64 2080, i64 2063, i64 2037, i64 2000, i64 1952, i64 1893, i64 1822, i64 1739, i64 1644, i64 1535, i64 1414, i64 1280, i64 1131, i64 970, i64 794, i64 605, i64 402, i64 185, i64 -45, i64 -288, i64 -545, i64 -814, i64 -1095, i64 -1388, i64 -1692, i64 -2006, i64 -2330, i64 -2663, i64 -3004, i64 -3351, i64 -3705, i64 -4063, i64 -4425, i64 -4788, i64 -5153, i64 -5517, i64 -5879, i64 -6237, i64 -6589, i64 -6935, i64 -7271, i64 -7597, i64 -7910, i64 -8209, i64 -8491, i64 -8755, i64 -8998, i64 -9219, i64 -9416, i64 -9585, i64 -9727, i64 -9838, i64 -9916, i64 -9959, i64 -9966, i64 -9935, i64 -9863, i64 -9750, i64 -9592, i64 -9389, i64 -9139, i64 -8840, i64 -8492, i64 -8092, i64 -7640, i64 -7134, i64 -6574, i64 -5959, i64 -5288, i64 -4561, i64 -3776, i64 -2935, i64 -2037, i64 -1082, i64 -70, i64 998, i64 2122, i64 3300, i64 4533, i64 5818, i64 7154, i64 8540, i64 9975, i64 11455, i64 12980, i64 14548, i64 16155, i64 17799, i64 19478, i64 21189, i64 22929, i64 24694, i64 26482, i64 28289, i64 30112, i64 31947, i64 33791, i64 35640, i64 37489, i64 39336, i64 41176, i64 43006, i64 44821, i64 46617, i64 48390, i64 50137, i64 51853, i64 53534, i64 55178, i64 56778, i64 58333, i64 59838, i64 61289, i64 62684, i64 64019, i64 65290, i64 66494, i64 67629, i64 68692, i64 69679, i64 70590, i64 71420, i64 72169, i64 72835, i64 73415, i64 73908, i64 74313, i64 74630, i64 74856, i64 74992, i64 75038], align 16

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @make_decode_tables(i64 noundef %scaleval) local_unnamed_addr #0 {
entry:
  br label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.inc11, %entry
  %indvars.iv123 = phi i64 [ 0, %entry ], [ %indvars.iv.next124, %for.inc11 ]
  %arrayidx = getelementptr inbounds [5 x ptr], ptr @pnts, i64 0, i64 %indvars.iv123
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %1 = trunc i64 %indvars.iv123 to i32
  %shr = lshr i32 16, %1
  %shr1 = lshr i32 64, %1
  %conv6 = sitofp i32 %shr1 to double
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  %wide.trip.count = zext i32 %umax to i64
  %2 = fdiv fast double 1.000000e+00, %conv6
  br label %for.body4

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %indvars.iv = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next, %for.body4 ]
  %3 = trunc i64 %indvars.iv to i32
  %conv = sitofp i32 %3 to double
  %4 = fmul fast double %conv, 0x401921FB54442D18
  %mul5 = fadd fast double %4, 0x400921FB54442D18
  %5 = fmul fast double %mul5, %2
  %6 = tail call fast double @llvm.cos.f64(double %5)
  %div8 = fdiv fast double 5.000000e-01, %6
  %arrayidx10 = getelementptr inbounds double, ptr %0, i64 %indvars.iv
  store double %div8, ptr %arrayidx10, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc11, label %for.body4, !llvm.loop !11

for.inc11:                                        ; preds = %for.body4
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %exitcond126.not = icmp eq i64 %indvars.iv.next124, 5
  br i1 %exitcond126.not, label %for.end13, label %for.body4.lr.ph, !llvm.loop !14

for.end13:                                        ; preds = %for.inc11
  %sub = sub nsw i64 0, %scaleval
  br label %for.body17

for.body17:                                       ; preds = %for.end13, %if.end
  %indvars.iv127 = phi i64 [ 0, %for.end13 ], [ %indvars.iv.next128, %if.end ]
  %scaleval.addr.0116 = phi i64 [ %sub, %for.end13 ], [ %spec.select107, %if.end ]
  %table.0115 = phi ptr [ @decwin, %for.end13 ], [ %add.ptr41, %if.end ]
  %indvars129 = trunc i64 %indvars.iv127 to i32
  %cmp18 = icmp ult ptr %table.0115, getelementptr inbounds ([544 x double], ptr @decwin, i64 0, i64 528)
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body17
  %arrayidx21 = getelementptr inbounds [257 x i64], ptr @intwinbase, i64 0, i64 %indvars.iv127
  %7 = load i64, ptr %arrayidx21, align 8, !tbaa !15
  %conv22 = sitofp i64 %7 to double
  %conv24 = sitofp i64 %scaleval.addr.0116 to double
  %div23 = fmul fast double %conv24, 0x3EF0000000000000
  %mul25 = fmul fast double %div23, %conv22
  store double %mul25, ptr %table.0115, align 8, !tbaa !9
  %arrayidx27 = getelementptr inbounds double, ptr %table.0115, i64 16
  store double %mul25, ptr %arrayidx27, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body17
  %rem = and i32 %indvars129, 31
  %cmp28 = icmp eq i32 %rem, 31
  %spec.select.idx = select i1 %cmp28, i64 -1023, i64 0
  %spec.select = getelementptr double, ptr %table.0115, i64 32
  %rem32 = and i32 %indvars129, 63
  %cmp33 = icmp eq i32 %rem32, 63
  %sub36 = sub nsw i64 0, %scaleval.addr.0116
  %spec.select107 = select i1 %cmp33, i64 %sub36, i64 %scaleval.addr.0116
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %add.ptr41 = getelementptr inbounds double, ptr %spec.select, i64 %spec.select.idx
  %exitcond132.not = icmp eq i64 %indvars.iv.next128, 256
  br i1 %exitcond132.not, label %for.body46, label %for.body17, !llvm.loop !17

for.body46:                                       ; preds = %if.end, %if.end58
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %if.end58 ], [ 256, %if.end ]
  %scaleval.addr.2121 = phi i64 [ %spec.select108, %if.end58 ], [ %spec.select107, %if.end ]
  %table.2120 = phi ptr [ %add.ptr73, %if.end58 ], [ %add.ptr41, %if.end ]
  %i.2119 = phi i32 [ %inc72, %if.end58 ], [ 256, %if.end ]
  %cmp47 = icmp ult ptr %table.2120, getelementptr inbounds ([544 x double], ptr @decwin, i64 0, i64 528)
  br i1 %cmp47, label %if.then49, label %if.end58

if.then49:                                        ; preds = %for.body46
  %arrayidx51 = getelementptr inbounds [257 x i64], ptr @intwinbase, i64 0, i64 %indvars.iv133
  %8 = load i64, ptr %arrayidx51, align 8, !tbaa !15
  %conv52 = sitofp i64 %8 to double
  %conv54 = sitofp i64 %scaleval.addr.2121 to double
  %div53 = fmul fast double %conv54, 0x3EF0000000000000
  %mul55 = fmul fast double %div53, %conv52
  store double %mul55, ptr %table.2120, align 8, !tbaa !9
  %arrayidx57 = getelementptr inbounds double, ptr %table.2120, i64 16
  store double %mul55, ptr %arrayidx57, align 8, !tbaa !9
  br label %if.end58

if.end58:                                         ; preds = %if.then49, %for.body46
  %rem59 = and i32 %i.2119, 31
  %cmp60 = icmp eq i32 %rem59, 31
  %spec.select106.idx = select i1 %cmp60, i64 -1023, i64 0
  %spec.select106 = getelementptr double, ptr %table.2120, i64 32
  %rem65 = and i32 %i.2119, 63
  %cmp66 = icmp eq i32 %rem65, 63
  %sub69 = sub nsw i64 0, %scaleval.addr.2121
  %spec.select108 = select i1 %cmp66, i64 %sub69, i64 %scaleval.addr.2121
  %inc72 = add nuw nsw i32 %i.2119, 1
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, -1
  %add.ptr73 = getelementptr inbounds double, ptr %spec.select106, i64 %spec.select106.idx
  %exitcond136.not = icmp eq i32 %inc72, 512
  br i1 %exitcond136.not, label %for.end74, label %for.body46, !llvm.loop !18

for.end74:                                        ; preds = %if.end58
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { nofree noinline nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

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
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
