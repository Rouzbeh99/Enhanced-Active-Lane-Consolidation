; ModuleID = 'reservoir.c'
source_filename = "reservoir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }

@ResvSize = internal unnamed_addr global i32 0, align 4
@ResvMax = internal unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local i32 @ResvFrameBegin(ptr nocapture noundef readonly %gfp, ptr nocapture noundef readnone %l3_side, i32 noundef %mean_bits, i32 noundef %frameLength) local_unnamed_addr #0 {
entry:
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  %0 = load i64, ptr %frameNum, align 8, !tbaa !5
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load i32, ptr @ResvSize, align 4, !tbaa !13
  br label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr @ResvSize, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %1 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  %2 = load i32, ptr %version, align 8, !tbaa !14
  %cmp1 = icmp eq i32 %2, 1
  %. = select i1 %cmp1, i32 4088, i32 2040
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %3 = load i32, ptr %mode_gr, align 8, !tbaa !15
  %cmp4 = icmp sgt i32 %frameLength, 7680
  %sub = sub nsw i32 7680, %frameLength
  %spec.select = select i1 %cmp4, i32 0, i32 %sub
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 17
  %4 = load i32, ptr %disable_reservoir, align 8, !tbaa !16
  %tobool.not = icmp eq i32 %4, 0
  %spec.store.select = select i1 %tobool.not, i32 %spec.select, i32 0
  %5 = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %.)
  store i32 %5, ptr @ResvMax, align 4
  %mul = mul nsw i32 %3, %mean_bits
  %add = add nsw i32 %mul, %1
  ret i32 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @ResvMaxBits(i32 noundef %mean_bits, ptr nocapture noundef writeonly %targ_bits, ptr nocapture noundef writeonly %extra_bits, i32 noundef %gr) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @ResvSize, align 4, !tbaa !13
  %1 = load i32, ptr @ResvMax, align 4, !tbaa !13
  %mul = mul nsw i32 %1, 9
  %div = sdiv i32 %mul, 10
  %cmp = icmp sgt i32 %0, %div
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %0, %div
  %add = add nsw i32 %sub, %mean_bits
  br label %if.end

if.else:                                          ; preds = %entry
  %conv = sitofp i32 %mean_bits to double
  %div3 = fmul fast double %conv, 0x3FB0D79435E50D79
  %conv4 = fptosi double %div3 to i32
  %sub5 = sub nsw i32 %mean_bits, %conv4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub5, %if.else ], [ %add, %if.then ]
  %add_bits.0 = phi i32 [ 0, %if.else ], [ %sub, %if.then ]
  store i32 %storemerge, ptr %targ_bits, align 4, !tbaa !13
  %mul6 = mul nsw i32 %1, 6
  %div7 = sdiv i32 %mul6, 10
  %2 = tail call i32 @llvm.smin.i32(i32 %0, i32 %div7)
  %sub12 = sub nsw i32 %2, %add_bits.0
  %3 = tail call i32 @llvm.smax.i32(i32 %sub12, i32 0)
  store i32 %3, ptr %extra_bits, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @ResvAdjust(ptr nocapture noundef readonly %gfp, ptr nocapture noundef readonly %gi, ptr nocapture noundef readnone %l3_side, i32 noundef %mean_bits) local_unnamed_addr #0 {
entry:
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %0 = load i32, ptr %stereo, align 4, !tbaa !17
  %div = sdiv i32 %mean_bits, %0
  %1 = load i32, ptr %gi, align 8, !tbaa !18
  %sub = sub i32 %div, %1
  %2 = load i32, ptr @ResvSize, align 4, !tbaa !13
  %add = add i32 %sub, %2
  store i32 %add, ptr @ResvSize, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local void @ResvFrameEnd(ptr nocapture noundef readonly %gfp, ptr nocapture noundef writeonly %l3_side, i32 noundef %mean_bits) local_unnamed_addr #1 {
entry:
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %0 = load i32, ptr %stereo, align 4, !tbaa !17
  %cmp = icmp eq i32 %0, 2
  %and = and i32 %mean_bits, 1
  %tobool.not = icmp ne i32 %and, 0
  %.pre = load i32, ptr @ResvSize, align 4, !tbaa !13
  %not.or.cond = and i1 %tobool.not, %cmp
  %add = zext i1 %not.or.cond to i32
  %spec.select = add nsw i32 %.pre, %add
  %1 = load i32, ptr @ResvMax, align 4, !tbaa !13
  %sub = sub nsw i32 %spec.select, %1
  %2 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %sub4 = sub nsw i32 %spec.select, %2
  %rem = srem i32 %sub4, 8
  %tobool5.not = icmp eq i32 %rem, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %entry
  %add7 = add nsw i32 %rem, %2
  %sub8 = sub nsw i32 %sub4, %rem
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %entry
  %storemerge = phi i32 [ %sub8, %if.then6 ], [ %sub4, %entry ]
  %stuffingBits.0 = phi i32 [ %add7, %if.then6 ], [ %2, %entry ]
  store i32 %storemerge, ptr @ResvSize, align 4, !tbaa !13
  %resvDrain = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 2
  store i32 %stuffingBits.0, ptr %resvDrain, align 8, !tbaa !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nofree noinline nosync nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 168}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !8, i64 120, !10, i64 124, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !12, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !12, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!6, !10, i64 192}
!15 = !{!6, !10, i64 200}
!16 = !{!6, !10, i64 72}
!17 = !{!6, !10, i64 204}
!18 = !{!19, !10, i64 0}
!19 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !8, i64 32, !8, i64 44, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !11, i64 96, !8, i64 104}
!20 = !{!21, !10, i64 8}
!21 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !8, i64 12, !8, i64 48}
