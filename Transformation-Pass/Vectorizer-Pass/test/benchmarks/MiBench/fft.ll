; ModuleID = 'fft.c'
source_filename = "fft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rv_tbl = internal unnamed_addr constant [128 x i16] [i16 0, i16 128, i16 64, i16 192, i16 32, i16 160, i16 96, i16 224, i16 16, i16 144, i16 80, i16 208, i16 48, i16 176, i16 112, i16 240, i16 8, i16 136, i16 72, i16 200, i16 40, i16 168, i16 104, i16 232, i16 24, i16 152, i16 88, i16 216, i16 56, i16 184, i16 120, i16 248, i16 4, i16 132, i16 68, i16 196, i16 36, i16 164, i16 100, i16 228, i16 20, i16 148, i16 84, i16 212, i16 52, i16 180, i16 116, i16 244, i16 12, i16 140, i16 76, i16 204, i16 44, i16 172, i16 108, i16 236, i16 28, i16 156, i16 92, i16 220, i16 60, i16 188, i16 124, i16 252, i16 2, i16 130, i16 66, i16 194, i16 34, i16 162, i16 98, i16 226, i16 18, i16 146, i16 82, i16 210, i16 50, i16 178, i16 114, i16 242, i16 10, i16 138, i16 74, i16 202, i16 42, i16 170, i16 106, i16 234, i16 26, i16 154, i16 90, i16 218, i16 58, i16 186, i16 122, i16 250, i16 6, i16 134, i16 70, i16 198, i16 38, i16 166, i16 102, i16 230, i16 22, i16 150, i16 86, i16 214, i16 54, i16 182, i16 118, i16 246, i16 14, i16 142, i16 78, i16 206, i16 46, i16 174, i16 110, i16 238, i16 30, i16 158, i16 94, i16 222, i16 62, i16 190, i16 126, i16 254], align 16
@window_s = internal unnamed_addr global [128 x float] zeroinitializer, align 16
@window = internal unnamed_addr global [512 x float] zeroinitializer, align 16
@costab = internal unnamed_addr global [8 x float] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @fft_short(ptr noundef %x_real, i32 noundef %chn, ptr nocapture noundef readonly %buffer) local_unnamed_addr #0 {
entry:
  %cmp5 = icmp slt i32 %chn, 2
  %arrayidx405 = getelementptr inbounds ptr, ptr %buffer, i64 1
  %idxprom12 = sext i32 %chn to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %buffer, i64 %idxprom12
  br i1 %cmp5, label %for.body.us, label %entry.split

for.body.us:                                      ; preds = %entry, %if.end615.loopexit.us
  %indvars.iv918 = phi i64 [ %indvars.iv.next919, %if.end615.loopexit.us ], [ 0, %entry ]
  %arrayidx2.us = getelementptr inbounds [256 x float], ptr %x_real, i64 %indvars.iv918, i64 128
  %0 = load ptr, ptr %arrayidx13, align 8, !tbaa !5
  %1 = trunc i64 %indvars.iv918 to i32
  %2 = mul i32 %1, 192
  %3 = add i32 %2, 192
  br label %do.body.us

do.body.us:                                       ; preds = %for.body.us, %do.body.us
  %indvars.iv915 = phi i64 [ 31, %for.body.us ], [ %indvars.iv.next916, %do.body.us ]
  %x.0.us = phi ptr [ %arrayidx2.us, %for.body.us ], [ %add.ptr.us, %do.body.us ]
  %shl.us = shl nuw nsw i64 %indvars.iv915, 2
  %arrayidx9.us = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %shl.us
  %4 = load i16, ptr %arrayidx9.us, align 8, !tbaa !9
  %idxprom10.us = sext i16 %4 to i64
  %arrayidx11.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom10.us
  %5 = load float, ptr %arrayidx11.us, align 4, !tbaa !11
  %conv14.us = sext i16 %4 to i32
  %add16.us = add nsw i32 %3, %conv14.us
  %idxprom17.us = sext i32 %add16.us to i64
  %arrayidx18.us = getelementptr inbounds i16, ptr %0, i64 %idxprom17.us
  %6 = load i16, ptr %arrayidx18.us, align 2, !tbaa !9
  %conv20.us = sitofp i16 %6 to float
  %mul21.us = fmul fast float %5, %conv20.us
  %sub.us = sub nsw i32 127, %conv14.us
  %idxprom23.us = sext i32 %sub.us to i64
  %arrayidx24.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom23.us
  %7 = load float, ptr %arrayidx24.us, align 4, !tbaa !11
  %add30.us = add nsw i32 %add16.us, 128
  %idxprom31.us = sext i32 %add30.us to i64
  %arrayidx32.us = getelementptr inbounds i16, ptr %0, i64 %idxprom31.us
  %8 = load i16, ptr %arrayidx32.us, align 2, !tbaa !9
  %conv34.us = sitofp i16 %8 to float
  %mul35.us = fmul fast float %7, %conv34.us
  %sub36.us = fsub fast float %mul21.us, %mul35.us
  %add37.us = fadd fast float %mul35.us, %mul21.us
  %add39.us = add nsw i32 %conv14.us, 64
  %idxprom40.us = sext i32 %add39.us to i64
  %arrayidx41.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom40.us
  %9 = load float, ptr %arrayidx41.us, align 4, !tbaa !11
  %add47.us = add nsw i32 %add16.us, 64
  %idxprom48.us = sext i32 %add47.us to i64
  %arrayidx49.us = getelementptr inbounds i16, ptr %0, i64 %idxprom48.us
  %10 = load i16, ptr %arrayidx49.us, align 2, !tbaa !9
  %conv51.us = sitofp i16 %10 to float
  %mul52.us = fmul fast float %9, %conv51.us
  %sub54.us = sub nsw i32 63, %conv14.us
  %idxprom55.us = sext i32 %sub54.us to i64
  %arrayidx56.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom55.us
  %11 = load float, ptr %arrayidx56.us, align 4, !tbaa !11
  %add62.us = add nsw i32 %add16.us, 192
  %idxprom63.us = sext i32 %add62.us to i64
  %arrayidx64.us = getelementptr inbounds i16, ptr %0, i64 %idxprom63.us
  %12 = load i16, ptr %arrayidx64.us, align 2, !tbaa !9
  %conv66.us = sitofp i16 %12 to float
  %mul67.us = fmul fast float %11, %conv66.us
  %sub68.us = fsub fast float %mul52.us, %mul67.us
  %add69.us = fadd fast float %mul67.us, %mul52.us
  %add.ptr.us = getelementptr inbounds float, ptr %x.0.us, i64 -4
  %add70.us = fadd fast float %add69.us, %add37.us
  store float %add70.us, ptr %add.ptr.us, align 4, !tbaa !11
  %sub72.us = fsub fast float %add37.us, %add69.us
  %arrayidx73.us = getelementptr inbounds float, ptr %x.0.us, i64 -2
  store float %sub72.us, ptr %arrayidx73.us, align 4, !tbaa !11
  %add74.us = fadd fast float %sub68.us, %sub36.us
  %arrayidx75.us = getelementptr inbounds float, ptr %x.0.us, i64 -3
  store float %add74.us, ptr %arrayidx75.us, align 4, !tbaa !11
  %sub76.us = fsub fast float %sub36.us, %sub68.us
  %arrayidx77.us = getelementptr inbounds float, ptr %x.0.us, i64 -1
  store float %sub76.us, ptr %arrayidx77.us, align 4, !tbaa !11
  %add79.us = add nsw i32 %conv14.us, 1
  %idxprom80.us = sext i32 %add79.us to i64
  %arrayidx81.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom80.us
  %13 = load float, ptr %arrayidx81.us, align 4, !tbaa !11
  %add87.us = add nsw i32 %add16.us, 1
  %idxprom88.us = sext i32 %add87.us to i64
  %arrayidx89.us = getelementptr inbounds i16, ptr %0, i64 %idxprom88.us
  %14 = load i16, ptr %arrayidx89.us, align 2, !tbaa !9
  %conv91.us = sitofp i16 %14 to float
  %mul92.us = fmul fast float %13, %conv91.us
  %sub94.us = sub nsw i32 126, %conv14.us
  %idxprom95.us = sext i32 %sub94.us to i64
  %arrayidx96.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom95.us
  %15 = load float, ptr %arrayidx96.us, align 4, !tbaa !11
  %add102.us = add nsw i32 %add16.us, 129
  %idxprom103.us = sext i32 %add102.us to i64
  %arrayidx104.us = getelementptr inbounds i16, ptr %0, i64 %idxprom103.us
  %16 = load i16, ptr %arrayidx104.us, align 2, !tbaa !9
  %conv106.us = sitofp i16 %16 to float
  %mul107.us = fmul fast float %15, %conv106.us
  %sub108.us = fsub fast float %mul92.us, %mul107.us
  %add109.us = fadd fast float %mul107.us, %mul92.us
  %add111.us = add nsw i32 %conv14.us, 65
  %idxprom112.us = sext i32 %add111.us to i64
  %arrayidx113.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom112.us
  %17 = load float, ptr %arrayidx113.us, align 4, !tbaa !11
  %add119.us = add nsw i32 %add16.us, 65
  %idxprom120.us = sext i32 %add119.us to i64
  %arrayidx121.us = getelementptr inbounds i16, ptr %0, i64 %idxprom120.us
  %18 = load i16, ptr %arrayidx121.us, align 2, !tbaa !9
  %conv123.us = sitofp i16 %18 to float
  %mul124.us = fmul fast float %17, %conv123.us
  %sub126.us = sub nsw i32 62, %conv14.us
  %idxprom127.us = sext i32 %sub126.us to i64
  %arrayidx128.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom127.us
  %19 = load float, ptr %arrayidx128.us, align 4, !tbaa !11
  %add134.us = add nsw i32 %add16.us, 193
  %idxprom135.us = sext i32 %add134.us to i64
  %arrayidx136.us = getelementptr inbounds i16, ptr %0, i64 %idxprom135.us
  %20 = load i16, ptr %arrayidx136.us, align 2, !tbaa !9
  %conv138.us = sitofp i16 %20 to float
  %mul139.us = fmul fast float %19, %conv138.us
  %sub140.us = fsub fast float %mul124.us, %mul139.us
  %add141.us = fadd fast float %mul139.us, %mul124.us
  %add142.us = fadd fast float %add141.us, %add109.us
  %arrayidx143.us = getelementptr inbounds float, ptr %x.0.us, i64 124
  store float %add142.us, ptr %arrayidx143.us, align 4, !tbaa !11
  %sub144.us = fsub fast float %add109.us, %add141.us
  %arrayidx145.us = getelementptr inbounds float, ptr %x.0.us, i64 126
  store float %sub144.us, ptr %arrayidx145.us, align 4, !tbaa !11
  %add146.us = fadd fast float %sub140.us, %sub108.us
  %arrayidx147.us = getelementptr inbounds float, ptr %x.0.us, i64 125
  store float %add146.us, ptr %arrayidx147.us, align 4, !tbaa !11
  %sub148.us = fsub fast float %sub108.us, %sub140.us
  %arrayidx149.us = getelementptr inbounds float, ptr %x.0.us, i64 127
  store float %sub148.us, ptr %arrayidx149.us, align 4, !tbaa !11
  %indvars.iv.next916 = add nsw i64 %indvars.iv915, -1
  %cmp151.us.not = icmp eq i64 %indvars.iv915, 0
  br i1 %cmp151.us.not, label %if.end615.loopexit.us, label %do.body.us, !llvm.loop !13

if.end615.loopexit.us:                            ; preds = %do.body.us
  tail call fastcc void @fht(ptr noundef nonnull %add.ptr.us, i16 noundef signext 256)
  %indvars.iv.next919 = add nuw nsw i64 %indvars.iv918, 1
  %exitcond922.not = icmp eq i64 %indvars.iv.next919, 3
  br i1 %exitcond922.not, label %for.end, label %for.body.us, !llvm.loop !16

entry.split:                                      ; preds = %entry
  %cmp153 = icmp eq i32 %chn, 2
  br i1 %cmp153, label %for.body.us891, label %for.body

for.body.us891:                                   ; preds = %entry.split, %if.end615.loopexit888.us
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %if.end615.loopexit888.us ], [ 0, %entry.split ]
  %arrayidx2.us894 = getelementptr inbounds [256 x float], ptr %x_real, i64 %indvars.iv910, i64 128
  %21 = load ptr, ptr %buffer, align 8, !tbaa !5
  %22 = trunc i64 %indvars.iv910 to i32
  %23 = mul i32 %22, 192
  %24 = add i32 %23, 192
  %25 = load ptr, ptr %arrayidx405, align 8, !tbaa !5
  br label %do.body156.us

do.body156.us:                                    ; preds = %for.body.us891, %do.body156.us
  %indvars.iv907 = phi i64 [ 31, %for.body.us891 ], [ %indvars.iv.next908, %do.body156.us ]
  %x.1.us = phi ptr [ %arrayidx2.us894, %for.body.us891 ], [ %add.ptr262.us, %do.body156.us ]
  %shl163.us = shl nuw nsw i64 %indvars.iv907, 2
  %arrayidx165.us = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %shl163.us
  %26 = load i16, ptr %arrayidx165.us, align 8, !tbaa !9
  %idxprom166.us = sext i16 %26 to i64
  %arrayidx167.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom166.us
  %27 = load float, ptr %arrayidx167.us, align 4, !tbaa !11
  %conv169.us = sext i16 %26 to i32
  %add171.us = add nsw i32 %24, %conv169.us
  %idxprom172.us = sext i32 %add171.us to i64
  %arrayidx173.us = getelementptr inbounds i16, ptr %21, i64 %idxprom172.us
  %28 = load i16, ptr %arrayidx173.us, align 2, !tbaa !9
  %conv174.us = sext i16 %28 to i32
  %arrayidx180.us = getelementptr inbounds i16, ptr %25, i64 %idxprom172.us
  %29 = load i16, ptr %arrayidx180.us, align 2, !tbaa !9
  %conv181.us = sext i16 %29 to i32
  %add182.us = add nsw i32 %conv181.us, %conv174.us
  %conv183.us = sitofp i32 %add182.us to float
  %mul184.us = fmul fast float %27, 0x3FE6A09E60000000
  %mul185.us = fmul fast float %mul184.us, %conv183.us
  %sub187.us = sub nsw i32 127, %conv169.us
  %idxprom188.us = sext i32 %sub187.us to i64
  %arrayidx189.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom188.us
  %30 = load float, ptr %arrayidx189.us, align 4, !tbaa !11
  %add194.us = add nsw i32 %add171.us, 128
  %idxprom195.us = sext i32 %add194.us to i64
  %arrayidx196.us = getelementptr inbounds i16, ptr %21, i64 %idxprom195.us
  %31 = load i16, ptr %arrayidx196.us, align 2, !tbaa !9
  %conv197.us = sext i16 %31 to i32
  %arrayidx204.us = getelementptr inbounds i16, ptr %25, i64 %idxprom195.us
  %32 = load i16, ptr %arrayidx204.us, align 2, !tbaa !9
  %conv205.us = sext i16 %32 to i32
  %add206.us = add nsw i32 %conv205.us, %conv197.us
  %conv207.us = sitofp i32 %add206.us to float
  %mul208.us = fmul fast float %30, 0x3FE6A09E60000000
  %mul209.us = fmul fast float %mul208.us, %conv207.us
  %sub210.us = fsub fast float %mul185.us, %mul209.us
  %add211.us = fadd fast float %mul209.us, %mul185.us
  %add213.us = add nsw i32 %conv169.us, 64
  %idxprom214.us = sext i32 %add213.us to i64
  %arrayidx215.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom214.us
  %33 = load float, ptr %arrayidx215.us, align 4, !tbaa !11
  %add220.us = add nsw i32 %add171.us, 64
  %idxprom221.us = sext i32 %add220.us to i64
  %arrayidx222.us = getelementptr inbounds i16, ptr %21, i64 %idxprom221.us
  %34 = load i16, ptr %arrayidx222.us, align 2, !tbaa !9
  %conv223.us = sext i16 %34 to i32
  %arrayidx230.us = getelementptr inbounds i16, ptr %25, i64 %idxprom221.us
  %35 = load i16, ptr %arrayidx230.us, align 2, !tbaa !9
  %conv231.us = sext i16 %35 to i32
  %add232.us = add nsw i32 %conv231.us, %conv223.us
  %conv233.us = sitofp i32 %add232.us to float
  %mul234.us = fmul fast float %33, 0x3FE6A09E60000000
  %mul235.us = fmul fast float %mul234.us, %conv233.us
  %sub237.us = sub nsw i32 63, %conv169.us
  %idxprom238.us = sext i32 %sub237.us to i64
  %arrayidx239.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom238.us
  %36 = load float, ptr %arrayidx239.us, align 4, !tbaa !11
  %add244.us = add nsw i32 %add171.us, 192
  %idxprom245.us = sext i32 %add244.us to i64
  %arrayidx246.us = getelementptr inbounds i16, ptr %21, i64 %idxprom245.us
  %37 = load i16, ptr %arrayidx246.us, align 2, !tbaa !9
  %conv247.us = sext i16 %37 to i32
  %arrayidx254.us = getelementptr inbounds i16, ptr %25, i64 %idxprom245.us
  %38 = load i16, ptr %arrayidx254.us, align 2, !tbaa !9
  %conv255.us = sext i16 %38 to i32
  %add256.us = add nsw i32 %conv255.us, %conv247.us
  %conv257.us = sitofp i32 %add256.us to float
  %mul258.us = fmul fast float %36, 0x3FE6A09E60000000
  %mul259.us = fmul fast float %mul258.us, %conv257.us
  %sub260.us = fsub fast float %mul235.us, %mul259.us
  %add261.us = fadd fast float %mul259.us, %mul235.us
  %add.ptr262.us = getelementptr inbounds float, ptr %x.1.us, i64 -4
  %add263.us = fadd fast float %add261.us, %add211.us
  store float %add263.us, ptr %add.ptr262.us, align 4, !tbaa !11
  %sub265.us = fsub fast float %add211.us, %add261.us
  %arrayidx266.us = getelementptr inbounds float, ptr %x.1.us, i64 -2
  store float %sub265.us, ptr %arrayidx266.us, align 4, !tbaa !11
  %add267.us = fadd fast float %sub260.us, %sub210.us
  %arrayidx268.us = getelementptr inbounds float, ptr %x.1.us, i64 -3
  store float %add267.us, ptr %arrayidx268.us, align 4, !tbaa !11
  %sub269.us = fsub fast float %sub210.us, %sub260.us
  %arrayidx270.us = getelementptr inbounds float, ptr %x.1.us, i64 -1
  store float %sub269.us, ptr %arrayidx270.us, align 4, !tbaa !11
  %add272.us = add nsw i32 %conv169.us, 1
  %idxprom273.us = sext i32 %add272.us to i64
  %arrayidx274.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom273.us
  %39 = load float, ptr %arrayidx274.us, align 4, !tbaa !11
  %add279.us = add nsw i32 %add171.us, 1
  %idxprom280.us = sext i32 %add279.us to i64
  %arrayidx281.us = getelementptr inbounds i16, ptr %21, i64 %idxprom280.us
  %40 = load i16, ptr %arrayidx281.us, align 2, !tbaa !9
  %conv282.us = sext i16 %40 to i32
  %arrayidx289.us = getelementptr inbounds i16, ptr %25, i64 %idxprom280.us
  %41 = load i16, ptr %arrayidx289.us, align 2, !tbaa !9
  %conv290.us = sext i16 %41 to i32
  %add291.us = add nsw i32 %conv290.us, %conv282.us
  %conv292.us = sitofp i32 %add291.us to float
  %mul293.us = fmul fast float %39, 0x3FE6A09E60000000
  %mul294.us = fmul fast float %mul293.us, %conv292.us
  %sub296.us = sub nsw i32 126, %conv169.us
  %idxprom297.us = sext i32 %sub296.us to i64
  %arrayidx298.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom297.us
  %42 = load float, ptr %arrayidx298.us, align 4, !tbaa !11
  %add303.us = add nsw i32 %add171.us, 129
  %idxprom304.us = sext i32 %add303.us to i64
  %arrayidx305.us = getelementptr inbounds i16, ptr %21, i64 %idxprom304.us
  %43 = load i16, ptr %arrayidx305.us, align 2, !tbaa !9
  %conv306.us = sext i16 %43 to i32
  %arrayidx313.us = getelementptr inbounds i16, ptr %25, i64 %idxprom304.us
  %44 = load i16, ptr %arrayidx313.us, align 2, !tbaa !9
  %conv314.us = sext i16 %44 to i32
  %add315.us = add nsw i32 %conv314.us, %conv306.us
  %conv316.us = sitofp i32 %add315.us to float
  %mul317.us = fmul fast float %42, 0x3FE6A09E60000000
  %mul318.us = fmul fast float %mul317.us, %conv316.us
  %sub319.us = fsub fast float %mul294.us, %mul318.us
  %add320.us = fadd fast float %mul318.us, %mul294.us
  %add322.us = add nsw i32 %conv169.us, 65
  %idxprom323.us = sext i32 %add322.us to i64
  %arrayidx324.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom323.us
  %45 = load float, ptr %arrayidx324.us, align 4, !tbaa !11
  %add329.us = add nsw i32 %add171.us, 65
  %idxprom330.us = sext i32 %add329.us to i64
  %arrayidx331.us = getelementptr inbounds i16, ptr %21, i64 %idxprom330.us
  %46 = load i16, ptr %arrayidx331.us, align 2, !tbaa !9
  %conv332.us = sext i16 %46 to i32
  %arrayidx339.us = getelementptr inbounds i16, ptr %25, i64 %idxprom330.us
  %47 = load i16, ptr %arrayidx339.us, align 2, !tbaa !9
  %conv340.us = sext i16 %47 to i32
  %add341.us = add nsw i32 %conv340.us, %conv332.us
  %conv342.us = sitofp i32 %add341.us to float
  %mul343.us = fmul fast float %45, 0x3FE6A09E60000000
  %mul344.us = fmul fast float %mul343.us, %conv342.us
  %sub346.us = sub nsw i32 62, %conv169.us
  %idxprom347.us = sext i32 %sub346.us to i64
  %arrayidx348.us = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom347.us
  %48 = load float, ptr %arrayidx348.us, align 4, !tbaa !11
  %add353.us = add nsw i32 %add171.us, 193
  %idxprom354.us = sext i32 %add353.us to i64
  %arrayidx355.us = getelementptr inbounds i16, ptr %21, i64 %idxprom354.us
  %49 = load i16, ptr %arrayidx355.us, align 2, !tbaa !9
  %conv356.us = sext i16 %49 to i32
  %arrayidx363.us = getelementptr inbounds i16, ptr %25, i64 %idxprom354.us
  %50 = load i16, ptr %arrayidx363.us, align 2, !tbaa !9
  %conv364.us = sext i16 %50 to i32
  %add365.us = add nsw i32 %conv364.us, %conv356.us
  %conv366.us = sitofp i32 %add365.us to float
  %mul367.us = fmul fast float %48, 0x3FE6A09E60000000
  %mul368.us = fmul fast float %mul367.us, %conv366.us
  %sub369.us = fsub fast float %mul344.us, %mul368.us
  %add370.us = fadd fast float %mul368.us, %mul344.us
  %add371.us = fadd fast float %add370.us, %add320.us
  %arrayidx372.us = getelementptr inbounds float, ptr %x.1.us, i64 124
  store float %add371.us, ptr %arrayidx372.us, align 4, !tbaa !11
  %sub373.us = fsub fast float %add320.us, %add370.us
  %arrayidx374.us = getelementptr inbounds float, ptr %x.1.us, i64 126
  store float %sub373.us, ptr %arrayidx374.us, align 4, !tbaa !11
  %add375.us = fadd fast float %sub369.us, %sub319.us
  %arrayidx376.us = getelementptr inbounds float, ptr %x.1.us, i64 125
  store float %add375.us, ptr %arrayidx376.us, align 4, !tbaa !11
  %sub377.us = fsub fast float %sub319.us, %sub369.us
  %arrayidx378.us = getelementptr inbounds float, ptr %x.1.us, i64 127
  store float %sub377.us, ptr %arrayidx378.us, align 4, !tbaa !11
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, -1
  %cmp382.us.not = icmp eq i64 %indvars.iv907, 0
  br i1 %cmp382.us.not, label %if.end615.loopexit888.us, label %do.body156.us, !llvm.loop !17

if.end615.loopexit888.us:                         ; preds = %do.body156.us
  tail call fastcc void @fht(ptr noundef nonnull %add.ptr262.us, i16 noundef signext 256)
  %indvars.iv.next911 = add nuw nsw i64 %indvars.iv910, 1
  %exitcond914.not = icmp eq i64 %indvars.iv.next911, 3
  br i1 %exitcond914.not, label %for.end, label %for.body.us891, !llvm.loop !16

for.body:                                         ; preds = %entry.split, %if.end615.loopexit889
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %if.end615.loopexit889 ], [ 0, %entry.split ]
  %arrayidx2 = getelementptr inbounds [256 x float], ptr %x_real, i64 %indvars.iv903, i64 128
  %51 = load ptr, ptr %buffer, align 8, !tbaa !5
  %52 = trunc i64 %indvars.iv903 to i32
  %53 = mul i32 %52, 192
  %54 = add i32 %53, 192
  %55 = load ptr, ptr %arrayidx405, align 8, !tbaa !5
  br label %do.body386

do.body386:                                       ; preds = %for.body, %do.body386
  %indvars.iv = phi i64 [ 31, %for.body ], [ %indvars.iv.next, %do.body386 ]
  %x.2 = phi ptr [ %arrayidx2, %for.body ], [ %add.ptr492, %do.body386 ]
  %shl393 = shl nuw nsw i64 %indvars.iv, 2
  %arrayidx395 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %shl393
  %56 = load i16, ptr %arrayidx395, align 8, !tbaa !9
  %idxprom396 = sext i16 %56 to i64
  %arrayidx397 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom396
  %57 = load float, ptr %arrayidx397, align 4, !tbaa !11
  %conv399 = sext i16 %56 to i32
  %add401 = add nsw i32 %54, %conv399
  %idxprom402 = sext i32 %add401 to i64
  %arrayidx403 = getelementptr inbounds i16, ptr %51, i64 %idxprom402
  %58 = load i16, ptr %arrayidx403, align 2, !tbaa !9
  %conv404 = sext i16 %58 to i32
  %arrayidx410 = getelementptr inbounds i16, ptr %55, i64 %idxprom402
  %59 = load i16, ptr %arrayidx410, align 2, !tbaa !9
  %conv411 = sext i16 %59 to i32
  %sub412 = sub nsw i32 %conv404, %conv411
  %conv413 = sitofp i32 %sub412 to float
  %mul414 = fmul fast float %57, 0x3FE6A09E60000000
  %mul415 = fmul fast float %mul414, %conv413
  %sub417 = sub nsw i32 127, %conv399
  %idxprom418 = sext i32 %sub417 to i64
  %arrayidx419 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom418
  %60 = load float, ptr %arrayidx419, align 4, !tbaa !11
  %add424 = add nsw i32 %add401, 128
  %idxprom425 = sext i32 %add424 to i64
  %arrayidx426 = getelementptr inbounds i16, ptr %51, i64 %idxprom425
  %61 = load i16, ptr %arrayidx426, align 2, !tbaa !9
  %conv427 = sext i16 %61 to i32
  %arrayidx434 = getelementptr inbounds i16, ptr %55, i64 %idxprom425
  %62 = load i16, ptr %arrayidx434, align 2, !tbaa !9
  %conv435 = sext i16 %62 to i32
  %sub436 = sub nsw i32 %conv427, %conv435
  %conv437 = sitofp i32 %sub436 to float
  %mul438 = fmul fast float %60, 0x3FE6A09E60000000
  %mul439 = fmul fast float %mul438, %conv437
  %sub440 = fsub fast float %mul415, %mul439
  %add441 = fadd fast float %mul439, %mul415
  %add443 = add nsw i32 %conv399, 64
  %idxprom444 = sext i32 %add443 to i64
  %arrayidx445 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom444
  %63 = load float, ptr %arrayidx445, align 4, !tbaa !11
  %add450 = add nsw i32 %add401, 64
  %idxprom451 = sext i32 %add450 to i64
  %arrayidx452 = getelementptr inbounds i16, ptr %51, i64 %idxprom451
  %64 = load i16, ptr %arrayidx452, align 2, !tbaa !9
  %conv453 = sext i16 %64 to i32
  %arrayidx460 = getelementptr inbounds i16, ptr %55, i64 %idxprom451
  %65 = load i16, ptr %arrayidx460, align 2, !tbaa !9
  %conv461 = sext i16 %65 to i32
  %sub462 = sub nsw i32 %conv453, %conv461
  %conv463 = sitofp i32 %sub462 to float
  %mul464 = fmul fast float %63, 0x3FE6A09E60000000
  %mul465 = fmul fast float %mul464, %conv463
  %sub467 = sub nsw i32 63, %conv399
  %idxprom468 = sext i32 %sub467 to i64
  %arrayidx469 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom468
  %66 = load float, ptr %arrayidx469, align 4, !tbaa !11
  %add474 = add nsw i32 %add401, 192
  %idxprom475 = sext i32 %add474 to i64
  %arrayidx476 = getelementptr inbounds i16, ptr %51, i64 %idxprom475
  %67 = load i16, ptr %arrayidx476, align 2, !tbaa !9
  %conv477 = sext i16 %67 to i32
  %arrayidx484 = getelementptr inbounds i16, ptr %55, i64 %idxprom475
  %68 = load i16, ptr %arrayidx484, align 2, !tbaa !9
  %conv485 = sext i16 %68 to i32
  %sub486 = sub nsw i32 %conv477, %conv485
  %conv487 = sitofp i32 %sub486 to float
  %mul488 = fmul fast float %66, 0x3FE6A09E60000000
  %mul489 = fmul fast float %mul488, %conv487
  %sub490 = fsub fast float %mul465, %mul489
  %add491 = fadd fast float %mul489, %mul465
  %add.ptr492 = getelementptr inbounds float, ptr %x.2, i64 -4
  %add493 = fadd fast float %add491, %add441
  store float %add493, ptr %add.ptr492, align 4, !tbaa !11
  %sub495 = fsub fast float %add441, %add491
  %arrayidx496 = getelementptr inbounds float, ptr %x.2, i64 -2
  store float %sub495, ptr %arrayidx496, align 4, !tbaa !11
  %add497 = fadd fast float %sub490, %sub440
  %arrayidx498 = getelementptr inbounds float, ptr %x.2, i64 -3
  store float %add497, ptr %arrayidx498, align 4, !tbaa !11
  %sub499 = fsub fast float %sub440, %sub490
  %arrayidx500 = getelementptr inbounds float, ptr %x.2, i64 -1
  store float %sub499, ptr %arrayidx500, align 4, !tbaa !11
  %add502 = add nsw i32 %conv399, 1
  %idxprom503 = sext i32 %add502 to i64
  %arrayidx504 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom503
  %69 = load float, ptr %arrayidx504, align 4, !tbaa !11
  %add509 = add nsw i32 %add401, 1
  %idxprom510 = sext i32 %add509 to i64
  %arrayidx511 = getelementptr inbounds i16, ptr %51, i64 %idxprom510
  %70 = load i16, ptr %arrayidx511, align 2, !tbaa !9
  %conv512 = sext i16 %70 to i32
  %arrayidx519 = getelementptr inbounds i16, ptr %55, i64 %idxprom510
  %71 = load i16, ptr %arrayidx519, align 2, !tbaa !9
  %conv520 = sext i16 %71 to i32
  %sub521 = sub nsw i32 %conv512, %conv520
  %conv522 = sitofp i32 %sub521 to float
  %mul523 = fmul fast float %69, 0x3FE6A09E60000000
  %mul524 = fmul fast float %mul523, %conv522
  %sub526 = sub nsw i32 126, %conv399
  %idxprom527 = sext i32 %sub526 to i64
  %arrayidx528 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom527
  %72 = load float, ptr %arrayidx528, align 4, !tbaa !11
  %add533 = add nsw i32 %add401, 129
  %idxprom534 = sext i32 %add533 to i64
  %arrayidx535 = getelementptr inbounds i16, ptr %51, i64 %idxprom534
  %73 = load i16, ptr %arrayidx535, align 2, !tbaa !9
  %conv536 = sext i16 %73 to i32
  %arrayidx543 = getelementptr inbounds i16, ptr %55, i64 %idxprom534
  %74 = load i16, ptr %arrayidx543, align 2, !tbaa !9
  %conv544 = sext i16 %74 to i32
  %sub545 = sub nsw i32 %conv536, %conv544
  %conv546 = sitofp i32 %sub545 to float
  %mul547 = fmul fast float %72, 0x3FE6A09E60000000
  %mul548 = fmul fast float %mul547, %conv546
  %sub549 = fsub fast float %mul524, %mul548
  %add550 = fadd fast float %mul548, %mul524
  %add552 = add nsw i32 %conv399, 65
  %idxprom553 = sext i32 %add552 to i64
  %arrayidx554 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom553
  %75 = load float, ptr %arrayidx554, align 4, !tbaa !11
  %add559 = add nsw i32 %add401, 65
  %idxprom560 = sext i32 %add559 to i64
  %arrayidx561 = getelementptr inbounds i16, ptr %51, i64 %idxprom560
  %76 = load i16, ptr %arrayidx561, align 2, !tbaa !9
  %conv562 = sext i16 %76 to i32
  %arrayidx569 = getelementptr inbounds i16, ptr %55, i64 %idxprom560
  %77 = load i16, ptr %arrayidx569, align 2, !tbaa !9
  %conv570 = sext i16 %77 to i32
  %sub571 = sub nsw i32 %conv562, %conv570
  %conv572 = sitofp i32 %sub571 to float
  %mul573 = fmul fast float %75, 0x3FE6A09E60000000
  %mul574 = fmul fast float %mul573, %conv572
  %sub576 = sub nsw i32 62, %conv399
  %idxprom577 = sext i32 %sub576 to i64
  %arrayidx578 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom577
  %78 = load float, ptr %arrayidx578, align 4, !tbaa !11
  %add583 = add nsw i32 %add401, 193
  %idxprom584 = sext i32 %add583 to i64
  %arrayidx585 = getelementptr inbounds i16, ptr %51, i64 %idxprom584
  %79 = load i16, ptr %arrayidx585, align 2, !tbaa !9
  %conv586 = sext i16 %79 to i32
  %arrayidx593 = getelementptr inbounds i16, ptr %55, i64 %idxprom584
  %80 = load i16, ptr %arrayidx593, align 2, !tbaa !9
  %conv594 = sext i16 %80 to i32
  %sub595 = sub nsw i32 %conv586, %conv594
  %conv596 = sitofp i32 %sub595 to float
  %mul597 = fmul fast float %78, 0x3FE6A09E60000000
  %mul598 = fmul fast float %mul597, %conv596
  %sub599 = fsub fast float %mul574, %mul598
  %add600 = fadd fast float %mul598, %mul574
  %add601 = fadd fast float %add600, %add550
  %arrayidx602 = getelementptr inbounds float, ptr %x.2, i64 124
  store float %add601, ptr %arrayidx602, align 4, !tbaa !11
  %sub603 = fsub fast float %add550, %add600
  %arrayidx604 = getelementptr inbounds float, ptr %x.2, i64 126
  store float %sub603, ptr %arrayidx604, align 4, !tbaa !11
  %add605 = fadd fast float %sub599, %sub549
  %arrayidx606 = getelementptr inbounds float, ptr %x.2, i64 125
  store float %add605, ptr %arrayidx606, align 4, !tbaa !11
  %sub607 = fsub fast float %sub549, %sub599
  %arrayidx608 = getelementptr inbounds float, ptr %x.2, i64 127
  store float %sub607, ptr %arrayidx608, align 4, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp612.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp612.not, label %if.end615.loopexit889, label %do.body386, !llvm.loop !18

if.end615.loopexit889:                            ; preds = %do.body386
  tail call fastcc void @fht(ptr noundef nonnull %add.ptr492, i16 noundef signext 256)
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next904, 3
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %if.end615.loopexit889, %if.end615.loopexit888.us, %if.end615.loopexit.us
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @fht(ptr noundef %fz, i16 noundef signext %n) unnamed_addr #0 {
entry:
  %0 = zext i16 %n to i32
  %idx.ext = zext i16 %n to i64
  %add.ptr = getelementptr inbounds float, ptr %fz, i64 %idx.ext
  br label %do.body

do.body:                                          ; preds = %for.end, %entry
  %tri.0 = phi ptr [ @costab, %entry ], [ %add.ptr203, %for.end ]
  %k4.0 = phi i16 [ 4, %entry ], [ %shl9, %for.end ]
  %shr = ashr exact i16 %k4.0, 1
  %shl = shl i16 %k4.0, 1
  %add = mul i16 %k4.0, 3
  %shl9 = shl i16 %k4.0, 2
  %idx.ext12 = sext i16 %shr to i64
  %add.ptr13 = getelementptr inbounds float, ptr %fz, i64 %idx.ext12
  %idxprom = sext i16 %k4.0 to i64
  %idxprom20 = sext i16 %shl to i64
  %idxprom22 = sext i16 %add to i64
  %idx.ext70 = sext i16 %shl9 to i64
  br label %do.body14

do.body14:                                        ; preds = %do.body14, %do.body
  %gi.0 = phi ptr [ %add.ptr13, %do.body ], [ %add.ptr71, %do.body14 ]
  %fi.0 = phi ptr [ %fz, %do.body ], [ %add.ptr74, %do.body14 ]
  %1 = load float, ptr %fi.0, align 4, !tbaa !11
  %arrayidx15 = getelementptr inbounds float, ptr %fi.0, i64 %idxprom
  %2 = load float, ptr %arrayidx15, align 4, !tbaa !11
  %sub = fsub fast float %1, %2
  %add19 = fadd fast float %2, %1
  %arrayidx21 = getelementptr inbounds float, ptr %fi.0, i64 %idxprom20
  %3 = load float, ptr %arrayidx21, align 4, !tbaa !11
  %arrayidx23 = getelementptr inbounds float, ptr %fi.0, i64 %idxprom22
  %4 = load float, ptr %arrayidx23, align 4, !tbaa !11
  %sub24 = fsub fast float %3, %4
  %add29 = fadd fast float %4, %3
  %sub30 = fsub fast float %add19, %add29
  store float %sub30, ptr %arrayidx21, align 4, !tbaa !11
  %add33 = fadd fast float %add29, %add19
  store float %add33, ptr %fi.0, align 4, !tbaa !11
  %sub35 = fsub fast float %sub, %sub24
  store float %sub35, ptr %arrayidx23, align 4, !tbaa !11
  %add38 = fadd fast float %sub24, %sub
  store float %add38, ptr %arrayidx15, align 4, !tbaa !11
  %5 = load float, ptr %gi.0, align 4, !tbaa !11
  %arrayidx43 = getelementptr inbounds float, ptr %gi.0, i64 %idxprom
  %6 = load float, ptr %arrayidx43, align 4, !tbaa !11
  %sub44 = fsub fast float %5, %6
  %add48 = fadd fast float %6, %5
  %arrayidx50 = getelementptr inbounds float, ptr %gi.0, i64 %idxprom22
  %7 = load float, ptr %arrayidx50, align 4, !tbaa !11
  %conv51 = fpext float %7 to double
  %mul = fmul fast double %conv51, 0x3FF6A09E667F3BCD
  %conv52 = fptrunc double %mul to float
  %arrayidx54 = getelementptr inbounds float, ptr %gi.0, i64 %idxprom20
  %8 = load float, ptr %arrayidx54, align 4, !tbaa !11
  %conv55 = fpext float %8 to double
  %mul56 = fmul fast double %conv55, 0x3FF6A09E667F3BCD
  %conv57 = fptrunc double %mul56 to float
  %sub58 = fsub fast float %add48, %conv57
  store float %sub58, ptr %arrayidx54, align 4, !tbaa !11
  %add61 = fadd fast float %add48, %conv57
  store float %add61, ptr %gi.0, align 4, !tbaa !11
  %sub63 = fsub fast float %sub44, %conv52
  store float %sub63, ptr %arrayidx50, align 4, !tbaa !11
  %add66 = fadd fast float %sub44, %conv52
  store float %add66, ptr %arrayidx43, align 4, !tbaa !11
  %add.ptr71 = getelementptr inbounds float, ptr %gi.0, i64 %idx.ext70
  %add.ptr74 = getelementptr inbounds float, ptr %fi.0, i64 %idx.ext70
  %cmp = icmp ult ptr %add.ptr74, %add.ptr
  br i1 %cmp, label %do.body14, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.body14
  %conv69.le = sext i16 %shl9 to i32
  %arrayidx77 = getelementptr inbounds float, ptr %tri.0, i64 1
  %cmp80373 = icmp sgt i16 %k4.0, 2
  br i1 %cmp80373, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %9 = load float, ptr %arrayidx77, align 4, !tbaa !11
  %10 = load float, ptr %tri.0, align 4, !tbaa !11
  %add.ptr92 = getelementptr inbounds float, ptr %fz, i64 %idxprom
  %smax = call i16 @llvm.smax.i16(i16 %shr, i16 2)
  %wide.trip.count = zext i16 %smax to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %do.end192
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %do.end192 ]
  %s1.0376 = phi float [ %9, %for.body.lr.ph ], [ %add202, %do.end192 ]
  %c1.0375 = phi float [ %10, %for.body.lr.ph ], [ %sub197, %do.end192 ]
  %mul82 = fmul fast float %s1.0376, 2.000000e+00
  %mul83 = fmul fast float %mul82, %s1.0376
  %sub84 = fsub fast float 1.000000e+00, %mul83
  %mul86 = fmul fast float %mul82, %c1.0375
  %add.ptr89 = getelementptr inbounds float, ptr %fz, i64 %indvars.iv
  %idx.neg = sub nsw i64 0, %indvars.iv
  %add.ptr95 = getelementptr inbounds float, ptr %add.ptr92, i64 %idx.neg
  br label %do.body96

do.body96:                                        ; preds = %do.body96, %for.body
  %gi.1 = phi ptr [ %add.ptr95, %for.body ], [ %add.ptr185, %do.body96 ]
  %fi.1 = phi ptr [ %add.ptr89, %for.body ], [ %add.ptr188, %do.body96 ]
  %arrayidx102 = getelementptr inbounds float, ptr %fi.1, i64 %idxprom
  %11 = load float, ptr %arrayidx102, align 4, !tbaa !11
  %mul103 = fmul fast float %11, %mul86
  %arrayidx105 = getelementptr inbounds float, ptr %gi.1, i64 %idxprom
  %12 = load float, ptr %arrayidx105, align 4, !tbaa !11
  %mul106 = fmul fast float %12, %sub84
  %sub107 = fsub fast float %mul103, %mul106
  %mul110 = fmul fast float %11, %sub84
  %mul113 = fmul fast float %12, %mul86
  %add114 = fadd fast float %mul113, %mul110
  %13 = load float, ptr %fi.1, align 4, !tbaa !11
  %sub116 = fsub fast float %13, %add114
  %add118 = fadd fast float %add114, %13
  %14 = load float, ptr %gi.1, align 4, !tbaa !11
  %sub120 = fsub fast float %14, %sub107
  %add122 = fadd fast float %14, %sub107
  %arrayidx124 = getelementptr inbounds float, ptr %fi.1, i64 %idxprom22
  %15 = load float, ptr %arrayidx124, align 4, !tbaa !11
  %mul125 = fmul fast float %15, %mul86
  %arrayidx127 = getelementptr inbounds float, ptr %gi.1, i64 %idxprom22
  %16 = load float, ptr %arrayidx127, align 4, !tbaa !11
  %mul128 = fmul fast float %16, %sub84
  %sub129 = fsub fast float %mul125, %mul128
  %mul132 = fmul fast float %15, %sub84
  %mul135 = fmul fast float %16, %mul86
  %add136 = fadd fast float %mul135, %mul132
  %arrayidx138 = getelementptr inbounds float, ptr %fi.1, i64 %idxprom20
  %17 = load float, ptr %arrayidx138, align 4, !tbaa !11
  %sub139 = fsub fast float %17, %add136
  %add142 = fadd fast float %add136, %17
  %arrayidx144 = getelementptr inbounds float, ptr %gi.1, i64 %idxprom20
  %18 = load float, ptr %arrayidx144, align 4, !tbaa !11
  %sub145 = fsub fast float %18, %sub129
  %add148 = fadd fast float %18, %sub129
  %mul149 = fmul fast float %add142, %s1.0376
  %mul150 = fmul fast float %sub145, %c1.0375
  %sub151 = fsub fast float %mul149, %mul150
  %mul152 = fmul fast float %add142, %c1.0375
  %mul153 = fmul fast float %sub145, %s1.0376
  %add154 = fadd fast float %mul152, %mul153
  %sub155 = fsub fast float %add118, %add154
  store float %sub155, ptr %arrayidx138, align 4, !tbaa !11
  %add158 = fadd fast float %add154, %add118
  store float %add158, ptr %fi.1, align 4, !tbaa !11
  %sub160 = fsub fast float %sub120, %sub151
  store float %sub160, ptr %arrayidx127, align 4, !tbaa !11
  %add163 = fadd fast float %sub151, %sub120
  store float %add163, ptr %arrayidx105, align 4, !tbaa !11
  %mul166 = fmul fast float %add148, %c1.0375
  %mul167 = fmul fast float %sub139, %s1.0376
  %sub168 = fsub fast float %mul166, %mul167
  %mul169 = fmul fast float %add148, %s1.0376
  %mul170 = fmul fast float %sub139, %c1.0375
  %add171 = fadd fast float %mul169, %mul170
  %sub172 = fsub fast float %add122, %add171
  store float %sub172, ptr %arrayidx144, align 4, !tbaa !11
  %add175 = fadd fast float %add171, %add122
  store float %add175, ptr %gi.1, align 4, !tbaa !11
  %sub177 = fsub fast float %sub116, %sub168
  store float %sub177, ptr %arrayidx124, align 4, !tbaa !11
  %add180 = fadd fast float %sub168, %sub116
  store float %add180, ptr %arrayidx102, align 4, !tbaa !11
  %add.ptr185 = getelementptr inbounds float, ptr %gi.1, i64 %idx.ext70
  %add.ptr188 = getelementptr inbounds float, ptr %fi.1, i64 %idx.ext70
  %cmp190 = icmp ult ptr %add.ptr188, %add.ptr
  br i1 %cmp190, label %do.body96, label %do.end192, !llvm.loop !20

do.end192:                                        ; preds = %do.body96
  %19 = load float, ptr %tri.0, align 4, !tbaa !11
  %mul194 = fmul fast float %19, %c1.0375
  %20 = load float, ptr %arrayidx77, align 4, !tbaa !11
  %mul196 = fmul fast float %20, %s1.0376
  %sub197 = fsub fast float %mul194, %mul196
  %mul199 = fmul fast float %20, %c1.0375
  %mul201 = fmul fast float %19, %s1.0376
  %add202 = fadd fast float %mul199, %mul201
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !21

for.end:                                          ; preds = %do.end192, %do.end
  %add.ptr203 = getelementptr inbounds float, ptr %tri.0, i64 2
  %cmp207 = icmp slt i32 %conv69.le, %0
  br i1 %cmp207, label %do.body, label %do.end209, !llvm.loop !22

do.end209:                                        ; preds = %for.end
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @fft_long(ptr noundef %x, i32 noundef %chn, ptr nocapture noundef readonly %buffer) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr inbounds float, ptr %x, i64 512
  %cmp = icmp slt i32 %chn, 2
  br i1 %cmp, label %do.body.preheader, label %if.else

do.body.preheader:                                ; preds = %entry
  %idxprom3 = sext i32 %chn to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %buffer, i64 %idxprom3
  %0 = load ptr, ptr %arrayidx4, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  %indvars.iv752 = phi i64 [ 127, %do.body.preheader ], [ %indvars.iv.next753, %do.body ]
  %x.addr.0 = phi ptr [ %add.ptr, %do.body.preheader ], [ %add.ptr49, %do.body ]
  %arrayidx = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %indvars.iv752
  %1 = load i16, ptr %arrayidx, align 2, !tbaa !9
  %idxprom1 = sext i16 %1 to i64
  %arrayidx2 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom1
  %2 = load float, ptr %arrayidx2, align 4, !tbaa !11
  %arrayidx6 = getelementptr inbounds i16, ptr %0, i64 %idxprom1
  %3 = load i16, ptr %arrayidx6, align 2, !tbaa !9
  %conv7 = sitofp i16 %3 to float
  %mul = fmul fast float %2, %conv7
  %conv8 = sext i16 %1 to i32
  %sub = sub nsw i32 511, %conv8
  %idxprom9 = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom9
  %4 = load float, ptr %arrayidx10, align 4, !tbaa !11
  %add = add nsw i32 %conv8, 512
  %idxprom14 = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds i16, ptr %0, i64 %idxprom14
  %5 = load i16, ptr %arrayidx15, align 2, !tbaa !9
  %conv17 = sitofp i16 %5 to float
  %mul18 = fmul fast float %4, %conv17
  %sub19 = fsub fast float %mul, %mul18
  %add20 = fadd fast float %mul18, %mul
  %add22 = add nsw i32 %conv8, 256
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom23
  %6 = load float, ptr %arrayidx24, align 4, !tbaa !11
  %arrayidx30 = getelementptr inbounds i16, ptr %0, i64 %idxprom23
  %7 = load i16, ptr %arrayidx30, align 2, !tbaa !9
  %conv32 = sitofp i16 %7 to float
  %mul33 = fmul fast float %6, %conv32
  %sub35 = sub nsw i32 255, %conv8
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom36
  %8 = load float, ptr %arrayidx37, align 4, !tbaa !11
  %add41 = add nsw i32 %conv8, 768
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds i16, ptr %0, i64 %idxprom42
  %9 = load i16, ptr %arrayidx43, align 2, !tbaa !9
  %conv45 = sitofp i16 %9 to float
  %mul46 = fmul fast float %8, %conv45
  %sub47 = fsub fast float %mul33, %mul46
  %add48 = fadd fast float %mul46, %mul33
  %add.ptr49 = getelementptr inbounds float, ptr %x.addr.0, i64 -4
  %add50 = fadd fast float %add48, %add20
  store float %add50, ptr %add.ptr49, align 4, !tbaa !11
  %sub52 = fsub fast float %add20, %add48
  %arrayidx53 = getelementptr inbounds float, ptr %x.addr.0, i64 -2
  store float %sub52, ptr %arrayidx53, align 4, !tbaa !11
  %add54 = fadd fast float %sub47, %sub19
  %arrayidx55 = getelementptr inbounds float, ptr %x.addr.0, i64 -3
  store float %add54, ptr %arrayidx55, align 4, !tbaa !11
  %sub56 = fsub fast float %sub19, %sub47
  %arrayidx57 = getelementptr inbounds float, ptr %x.addr.0, i64 -1
  store float %sub56, ptr %arrayidx57, align 4, !tbaa !11
  %add59 = add nsw i32 %conv8, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom60
  %10 = load float, ptr %arrayidx61, align 4, !tbaa !11
  %arrayidx67 = getelementptr inbounds i16, ptr %0, i64 %idxprom60
  %11 = load i16, ptr %arrayidx67, align 2, !tbaa !9
  %conv69 = sitofp i16 %11 to float
  %mul70 = fmul fast float %10, %conv69
  %sub72 = sub nsw i32 510, %conv8
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom73
  %12 = load float, ptr %arrayidx74, align 4, !tbaa !11
  %add78 = add nsw i32 %conv8, 513
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i16, ptr %0, i64 %idxprom79
  %13 = load i16, ptr %arrayidx80, align 2, !tbaa !9
  %conv82 = sitofp i16 %13 to float
  %mul83 = fmul fast float %12, %conv82
  %sub84 = fsub fast float %mul70, %mul83
  %add85 = fadd fast float %mul83, %mul70
  %add87 = add nsw i32 %conv8, 257
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom88
  %14 = load float, ptr %arrayidx89, align 4, !tbaa !11
  %arrayidx95 = getelementptr inbounds i16, ptr %0, i64 %idxprom88
  %15 = load i16, ptr %arrayidx95, align 2, !tbaa !9
  %conv97 = sitofp i16 %15 to float
  %mul98 = fmul fast float %14, %conv97
  %sub100 = sub nsw i32 254, %conv8
  %idxprom101 = sext i32 %sub100 to i64
  %arrayidx102 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom101
  %16 = load float, ptr %arrayidx102, align 4, !tbaa !11
  %add106 = add nsw i32 %conv8, 769
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds i16, ptr %0, i64 %idxprom107
  %17 = load i16, ptr %arrayidx108, align 2, !tbaa !9
  %conv110 = sitofp i16 %17 to float
  %mul111 = fmul fast float %16, %conv110
  %sub112 = fsub fast float %mul98, %mul111
  %add113 = fadd fast float %mul111, %mul98
  %add114 = fadd fast float %add113, %add85
  %arrayidx115 = getelementptr inbounds float, ptr %x.addr.0, i64 508
  store float %add114, ptr %arrayidx115, align 4, !tbaa !11
  %sub116 = fsub fast float %add85, %add113
  %arrayidx117 = getelementptr inbounds float, ptr %x.addr.0, i64 510
  store float %sub116, ptr %arrayidx117, align 4, !tbaa !11
  %add118 = fadd fast float %sub112, %sub84
  %arrayidx119 = getelementptr inbounds float, ptr %x.addr.0, i64 509
  store float %add118, ptr %arrayidx119, align 4, !tbaa !11
  %sub120 = fsub fast float %sub84, %sub112
  %arrayidx121 = getelementptr inbounds float, ptr %x.addr.0, i64 511
  store float %sub120, ptr %arrayidx121, align 4, !tbaa !11
  %indvars.iv.next753 = add nsw i64 %indvars.iv752, -1
  %cmp123.not = icmp eq i64 %indvars.iv752, 0
  br i1 %cmp123.not, label %if.end515, label %do.body, !llvm.loop !23

if.else:                                          ; preds = %entry
  %cmp125 = icmp eq i32 %chn, 2
  %18 = load ptr, ptr %buffer, align 8, !tbaa !5
  %arrayidx142 = getelementptr inbounds ptr, ptr %buffer, i64 1
  %19 = load ptr, ptr %arrayidx142, align 8, !tbaa !5
  br i1 %cmp125, label %do.body128, label %do.body322

do.body128:                                       ; preds = %if.else, %do.body128
  %indvars.iv749 = phi i64 [ %indvars.iv.next750, %do.body128 ], [ 127, %if.else ]
  %x.addr.1 = phi ptr [ %add.ptr214, %do.body128 ], [ %add.ptr, %if.else ]
  %arrayidx135 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %indvars.iv749
  %20 = load i16, ptr %arrayidx135, align 2, !tbaa !9
  %idxprom136 = sext i16 %20 to i64
  %arrayidx137 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom136
  %21 = load float, ptr %arrayidx137, align 4, !tbaa !11
  %arrayidx140 = getelementptr inbounds i16, ptr %18, i64 %idxprom136
  %22 = load i16, ptr %arrayidx140, align 2, !tbaa !9
  %conv141 = sext i16 %22 to i32
  %arrayidx144 = getelementptr inbounds i16, ptr %19, i64 %idxprom136
  %23 = load i16, ptr %arrayidx144, align 2, !tbaa !9
  %conv145 = sext i16 %23 to i32
  %add146 = add nsw i32 %conv145, %conv141
  %conv147 = sitofp i32 %add146 to float
  %mul148 = fmul fast float %21, 0x3FE6A09E60000000
  %mul149 = fmul fast float %mul148, %conv147
  %conv150 = sext i16 %20 to i32
  %sub151 = sub nsw i32 511, %conv150
  %idxprom152 = sext i32 %sub151 to i64
  %arrayidx153 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom152
  %24 = load float, ptr %arrayidx153, align 4, !tbaa !11
  %add156 = add nsw i32 %conv150, 512
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds i16, ptr %18, i64 %idxprom157
  %25 = load i16, ptr %arrayidx158, align 2, !tbaa !9
  %conv159 = sext i16 %25 to i32
  %arrayidx164 = getelementptr inbounds i16, ptr %19, i64 %idxprom157
  %26 = load i16, ptr %arrayidx164, align 2, !tbaa !9
  %conv165 = sext i16 %26 to i32
  %add166 = add nsw i32 %conv165, %conv159
  %conv167 = sitofp i32 %add166 to float
  %mul168 = fmul fast float %24, 0x3FE6A09E60000000
  %mul169 = fmul fast float %mul168, %conv167
  %sub170 = fsub fast float %mul149, %mul169
  %add171 = fadd fast float %mul169, %mul149
  %add173 = add nsw i32 %conv150, 256
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom174
  %27 = load float, ptr %arrayidx175, align 4, !tbaa !11
  %arrayidx180 = getelementptr inbounds i16, ptr %18, i64 %idxprom174
  %28 = load i16, ptr %arrayidx180, align 2, !tbaa !9
  %conv181 = sext i16 %28 to i32
  %arrayidx186 = getelementptr inbounds i16, ptr %19, i64 %idxprom174
  %29 = load i16, ptr %arrayidx186, align 2, !tbaa !9
  %conv187 = sext i16 %29 to i32
  %add188 = add nsw i32 %conv187, %conv181
  %conv189 = sitofp i32 %add188 to float
  %mul190 = fmul fast float %27, 0x3FE6A09E60000000
  %mul191 = fmul fast float %mul190, %conv189
  %sub193 = sub nsw i32 255, %conv150
  %idxprom194 = sext i32 %sub193 to i64
  %arrayidx195 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom194
  %30 = load float, ptr %arrayidx195, align 4, !tbaa !11
  %add198 = add nsw i32 %conv150, 768
  %idxprom199 = sext i32 %add198 to i64
  %arrayidx200 = getelementptr inbounds i16, ptr %18, i64 %idxprom199
  %31 = load i16, ptr %arrayidx200, align 2, !tbaa !9
  %conv201 = sext i16 %31 to i32
  %arrayidx206 = getelementptr inbounds i16, ptr %19, i64 %idxprom199
  %32 = load i16, ptr %arrayidx206, align 2, !tbaa !9
  %conv207 = sext i16 %32 to i32
  %add208 = add nsw i32 %conv207, %conv201
  %conv209 = sitofp i32 %add208 to float
  %mul210 = fmul fast float %30, 0x3FE6A09E60000000
  %mul211 = fmul fast float %mul210, %conv209
  %sub212 = fsub fast float %mul191, %mul211
  %add213 = fadd fast float %mul211, %mul191
  %add.ptr214 = getelementptr inbounds float, ptr %x.addr.1, i64 -4
  %add215 = fadd fast float %add213, %add171
  store float %add215, ptr %add.ptr214, align 4, !tbaa !11
  %sub217 = fsub fast float %add171, %add213
  %arrayidx218 = getelementptr inbounds float, ptr %x.addr.1, i64 -2
  store float %sub217, ptr %arrayidx218, align 4, !tbaa !11
  %add219 = fadd fast float %sub212, %sub170
  %arrayidx220 = getelementptr inbounds float, ptr %x.addr.1, i64 -3
  store float %add219, ptr %arrayidx220, align 4, !tbaa !11
  %sub221 = fsub fast float %sub170, %sub212
  %arrayidx222 = getelementptr inbounds float, ptr %x.addr.1, i64 -1
  store float %sub221, ptr %arrayidx222, align 4, !tbaa !11
  %add224 = add nsw i32 %conv150, 1
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom225
  %33 = load float, ptr %arrayidx226, align 4, !tbaa !11
  %arrayidx231 = getelementptr inbounds i16, ptr %18, i64 %idxprom225
  %34 = load i16, ptr %arrayidx231, align 2, !tbaa !9
  %conv232 = sext i16 %34 to i32
  %arrayidx237 = getelementptr inbounds i16, ptr %19, i64 %idxprom225
  %35 = load i16, ptr %arrayidx237, align 2, !tbaa !9
  %conv238 = sext i16 %35 to i32
  %add239 = add nsw i32 %conv238, %conv232
  %conv240 = sitofp i32 %add239 to float
  %mul241 = fmul fast float %33, 0x3FE6A09E60000000
  %mul242 = fmul fast float %mul241, %conv240
  %sub244 = sub nsw i32 510, %conv150
  %idxprom245 = sext i32 %sub244 to i64
  %arrayidx246 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom245
  %36 = load float, ptr %arrayidx246, align 4, !tbaa !11
  %add249 = add nsw i32 %conv150, 513
  %idxprom250 = sext i32 %add249 to i64
  %arrayidx251 = getelementptr inbounds i16, ptr %18, i64 %idxprom250
  %37 = load i16, ptr %arrayidx251, align 2, !tbaa !9
  %conv252 = sext i16 %37 to i32
  %arrayidx257 = getelementptr inbounds i16, ptr %19, i64 %idxprom250
  %38 = load i16, ptr %arrayidx257, align 2, !tbaa !9
  %conv258 = sext i16 %38 to i32
  %add259 = add nsw i32 %conv258, %conv252
  %conv260 = sitofp i32 %add259 to float
  %mul261 = fmul fast float %36, 0x3FE6A09E60000000
  %mul262 = fmul fast float %mul261, %conv260
  %sub263 = fsub fast float %mul242, %mul262
  %add264 = fadd fast float %mul262, %mul242
  %add266 = add nsw i32 %conv150, 257
  %idxprom267 = sext i32 %add266 to i64
  %arrayidx268 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom267
  %39 = load float, ptr %arrayidx268, align 4, !tbaa !11
  %arrayidx273 = getelementptr inbounds i16, ptr %18, i64 %idxprom267
  %40 = load i16, ptr %arrayidx273, align 2, !tbaa !9
  %conv274 = sext i16 %40 to i32
  %arrayidx279 = getelementptr inbounds i16, ptr %19, i64 %idxprom267
  %41 = load i16, ptr %arrayidx279, align 2, !tbaa !9
  %conv280 = sext i16 %41 to i32
  %add281 = add nsw i32 %conv280, %conv274
  %conv282 = sitofp i32 %add281 to float
  %mul283 = fmul fast float %39, 0x3FE6A09E60000000
  %mul284 = fmul fast float %mul283, %conv282
  %sub286 = sub nsw i32 254, %conv150
  %idxprom287 = sext i32 %sub286 to i64
  %arrayidx288 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom287
  %42 = load float, ptr %arrayidx288, align 4, !tbaa !11
  %add291 = add nsw i32 %conv150, 769
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds i16, ptr %18, i64 %idxprom292
  %43 = load i16, ptr %arrayidx293, align 2, !tbaa !9
  %conv294 = sext i16 %43 to i32
  %arrayidx299 = getelementptr inbounds i16, ptr %19, i64 %idxprom292
  %44 = load i16, ptr %arrayidx299, align 2, !tbaa !9
  %conv300 = sext i16 %44 to i32
  %add301 = add nsw i32 %conv300, %conv294
  %conv302 = sitofp i32 %add301 to float
  %mul303 = fmul fast float %42, 0x3FE6A09E60000000
  %mul304 = fmul fast float %mul303, %conv302
  %sub305 = fsub fast float %mul284, %mul304
  %add306 = fadd fast float %mul304, %mul284
  %add307 = fadd fast float %add306, %add264
  %arrayidx308 = getelementptr inbounds float, ptr %x.addr.1, i64 508
  store float %add307, ptr %arrayidx308, align 4, !tbaa !11
  %sub309 = fsub fast float %add264, %add306
  %arrayidx310 = getelementptr inbounds float, ptr %x.addr.1, i64 510
  store float %sub309, ptr %arrayidx310, align 4, !tbaa !11
  %add311 = fadd fast float %sub305, %sub263
  %arrayidx312 = getelementptr inbounds float, ptr %x.addr.1, i64 509
  store float %add311, ptr %arrayidx312, align 4, !tbaa !11
  %sub313 = fsub fast float %sub263, %sub305
  %arrayidx314 = getelementptr inbounds float, ptr %x.addr.1, i64 511
  store float %sub313, ptr %arrayidx314, align 4, !tbaa !11
  %indvars.iv.next750 = add nsw i64 %indvars.iv749, -1
  %cmp318.not = icmp eq i64 %indvars.iv749, 0
  br i1 %cmp318.not, label %if.end515, label %do.body128, !llvm.loop !24

do.body322:                                       ; preds = %if.else, %do.body322
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.body322 ], [ 127, %if.else ]
  %x.addr.2 = phi ptr [ %add.ptr408, %do.body322 ], [ %add.ptr, %if.else ]
  %arrayidx329 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %indvars.iv
  %45 = load i16, ptr %arrayidx329, align 2, !tbaa !9
  %idxprom330 = sext i16 %45 to i64
  %arrayidx331 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom330
  %46 = load float, ptr %arrayidx331, align 4, !tbaa !11
  %arrayidx334 = getelementptr inbounds i16, ptr %18, i64 %idxprom330
  %47 = load i16, ptr %arrayidx334, align 2, !tbaa !9
  %conv335 = sext i16 %47 to i32
  %arrayidx338 = getelementptr inbounds i16, ptr %19, i64 %idxprom330
  %48 = load i16, ptr %arrayidx338, align 2, !tbaa !9
  %conv339 = sext i16 %48 to i32
  %sub340 = sub nsw i32 %conv335, %conv339
  %conv341 = sitofp i32 %sub340 to float
  %mul342 = fmul fast float %46, 0x3FE6A09E60000000
  %mul343 = fmul fast float %mul342, %conv341
  %conv344 = sext i16 %45 to i32
  %sub345 = sub nsw i32 511, %conv344
  %idxprom346 = sext i32 %sub345 to i64
  %arrayidx347 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom346
  %49 = load float, ptr %arrayidx347, align 4, !tbaa !11
  %add350 = add nsw i32 %conv344, 512
  %idxprom351 = sext i32 %add350 to i64
  %arrayidx352 = getelementptr inbounds i16, ptr %18, i64 %idxprom351
  %50 = load i16, ptr %arrayidx352, align 2, !tbaa !9
  %conv353 = sext i16 %50 to i32
  %arrayidx358 = getelementptr inbounds i16, ptr %19, i64 %idxprom351
  %51 = load i16, ptr %arrayidx358, align 2, !tbaa !9
  %conv359 = sext i16 %51 to i32
  %sub360 = sub nsw i32 %conv353, %conv359
  %conv361 = sitofp i32 %sub360 to float
  %mul362 = fmul fast float %49, 0x3FE6A09E60000000
  %mul363 = fmul fast float %mul362, %conv361
  %sub364 = fsub fast float %mul343, %mul363
  %add365 = fadd fast float %mul363, %mul343
  %add367 = add nsw i32 %conv344, 256
  %idxprom368 = sext i32 %add367 to i64
  %arrayidx369 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom368
  %52 = load float, ptr %arrayidx369, align 4, !tbaa !11
  %arrayidx374 = getelementptr inbounds i16, ptr %18, i64 %idxprom368
  %53 = load i16, ptr %arrayidx374, align 2, !tbaa !9
  %conv375 = sext i16 %53 to i32
  %arrayidx380 = getelementptr inbounds i16, ptr %19, i64 %idxprom368
  %54 = load i16, ptr %arrayidx380, align 2, !tbaa !9
  %conv381 = sext i16 %54 to i32
  %sub382 = sub nsw i32 %conv375, %conv381
  %conv383 = sitofp i32 %sub382 to float
  %mul384 = fmul fast float %52, 0x3FE6A09E60000000
  %mul385 = fmul fast float %mul384, %conv383
  %sub387 = sub nsw i32 255, %conv344
  %idxprom388 = sext i32 %sub387 to i64
  %arrayidx389 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom388
  %55 = load float, ptr %arrayidx389, align 4, !tbaa !11
  %add392 = add nsw i32 %conv344, 768
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds i16, ptr %18, i64 %idxprom393
  %56 = load i16, ptr %arrayidx394, align 2, !tbaa !9
  %conv395 = sext i16 %56 to i32
  %arrayidx400 = getelementptr inbounds i16, ptr %19, i64 %idxprom393
  %57 = load i16, ptr %arrayidx400, align 2, !tbaa !9
  %conv401 = sext i16 %57 to i32
  %sub402 = sub nsw i32 %conv395, %conv401
  %conv403 = sitofp i32 %sub402 to float
  %mul404 = fmul fast float %55, 0x3FE6A09E60000000
  %mul405 = fmul fast float %mul404, %conv403
  %sub406 = fsub fast float %mul385, %mul405
  %add407 = fadd fast float %mul405, %mul385
  %add.ptr408 = getelementptr inbounds float, ptr %x.addr.2, i64 -4
  %add409 = fadd fast float %add407, %add365
  store float %add409, ptr %add.ptr408, align 4, !tbaa !11
  %sub411 = fsub fast float %add365, %add407
  %arrayidx412 = getelementptr inbounds float, ptr %x.addr.2, i64 -2
  store float %sub411, ptr %arrayidx412, align 4, !tbaa !11
  %add413 = fadd fast float %sub406, %sub364
  %arrayidx414 = getelementptr inbounds float, ptr %x.addr.2, i64 -3
  store float %add413, ptr %arrayidx414, align 4, !tbaa !11
  %sub415 = fsub fast float %sub364, %sub406
  %arrayidx416 = getelementptr inbounds float, ptr %x.addr.2, i64 -1
  store float %sub415, ptr %arrayidx416, align 4, !tbaa !11
  %add418 = add nsw i32 %conv344, 1
  %idxprom419 = sext i32 %add418 to i64
  %arrayidx420 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom419
  %58 = load float, ptr %arrayidx420, align 4, !tbaa !11
  %arrayidx425 = getelementptr inbounds i16, ptr %18, i64 %idxprom419
  %59 = load i16, ptr %arrayidx425, align 2, !tbaa !9
  %conv426 = sext i16 %59 to i32
  %arrayidx431 = getelementptr inbounds i16, ptr %19, i64 %idxprom419
  %60 = load i16, ptr %arrayidx431, align 2, !tbaa !9
  %conv432 = sext i16 %60 to i32
  %sub433 = sub nsw i32 %conv426, %conv432
  %conv434 = sitofp i32 %sub433 to float
  %mul435 = fmul fast float %58, 0x3FE6A09E60000000
  %mul436 = fmul fast float %mul435, %conv434
  %sub438 = sub nsw i32 510, %conv344
  %idxprom439 = sext i32 %sub438 to i64
  %arrayidx440 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom439
  %61 = load float, ptr %arrayidx440, align 4, !tbaa !11
  %add443 = add nsw i32 %conv344, 513
  %idxprom444 = sext i32 %add443 to i64
  %arrayidx445 = getelementptr inbounds i16, ptr %18, i64 %idxprom444
  %62 = load i16, ptr %arrayidx445, align 2, !tbaa !9
  %conv446 = sext i16 %62 to i32
  %arrayidx451 = getelementptr inbounds i16, ptr %19, i64 %idxprom444
  %63 = load i16, ptr %arrayidx451, align 2, !tbaa !9
  %conv452 = sext i16 %63 to i32
  %sub453 = sub nsw i32 %conv446, %conv452
  %conv454 = sitofp i32 %sub453 to float
  %mul455 = fmul fast float %61, 0x3FE6A09E60000000
  %mul456 = fmul fast float %mul455, %conv454
  %sub457 = fsub fast float %mul436, %mul456
  %add458 = fadd fast float %mul456, %mul436
  %add460 = add nsw i32 %conv344, 257
  %idxprom461 = sext i32 %add460 to i64
  %arrayidx462 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom461
  %64 = load float, ptr %arrayidx462, align 4, !tbaa !11
  %arrayidx467 = getelementptr inbounds i16, ptr %18, i64 %idxprom461
  %65 = load i16, ptr %arrayidx467, align 2, !tbaa !9
  %conv468 = sext i16 %65 to i32
  %arrayidx473 = getelementptr inbounds i16, ptr %19, i64 %idxprom461
  %66 = load i16, ptr %arrayidx473, align 2, !tbaa !9
  %conv474 = sext i16 %66 to i32
  %sub475 = sub nsw i32 %conv468, %conv474
  %conv476 = sitofp i32 %sub475 to float
  %mul477 = fmul fast float %64, 0x3FE6A09E60000000
  %mul478 = fmul fast float %mul477, %conv476
  %sub480 = sub nsw i32 254, %conv344
  %idxprom481 = sext i32 %sub480 to i64
  %arrayidx482 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom481
  %67 = load float, ptr %arrayidx482, align 4, !tbaa !11
  %add485 = add nsw i32 %conv344, 769
  %idxprom486 = sext i32 %add485 to i64
  %arrayidx487 = getelementptr inbounds i16, ptr %18, i64 %idxprom486
  %68 = load i16, ptr %arrayidx487, align 2, !tbaa !9
  %conv488 = sext i16 %68 to i32
  %arrayidx493 = getelementptr inbounds i16, ptr %19, i64 %idxprom486
  %69 = load i16, ptr %arrayidx493, align 2, !tbaa !9
  %conv494 = sext i16 %69 to i32
  %sub495 = sub nsw i32 %conv488, %conv494
  %conv496 = sitofp i32 %sub495 to float
  %mul497 = fmul fast float %67, 0x3FE6A09E60000000
  %mul498 = fmul fast float %mul497, %conv496
  %sub499 = fsub fast float %mul478, %mul498
  %add500 = fadd fast float %mul498, %mul478
  %add501 = fadd fast float %add500, %add458
  %arrayidx502 = getelementptr inbounds float, ptr %x.addr.2, i64 508
  store float %add501, ptr %arrayidx502, align 4, !tbaa !11
  %sub503 = fsub fast float %add458, %add500
  %arrayidx504 = getelementptr inbounds float, ptr %x.addr.2, i64 510
  store float %sub503, ptr %arrayidx504, align 4, !tbaa !11
  %add505 = fadd fast float %sub499, %sub457
  %arrayidx506 = getelementptr inbounds float, ptr %x.addr.2, i64 509
  store float %add505, ptr %arrayidx506, align 4, !tbaa !11
  %sub507 = fsub fast float %sub457, %sub499
  %arrayidx508 = getelementptr inbounds float, ptr %x.addr.2, i64 511
  store float %sub507, ptr %arrayidx508, align 4, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp512.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp512.not, label %if.end515, label %do.body322, !llvm.loop !25

if.end515:                                        ; preds = %do.body322, %do.body128, %do.body
  tail call fastcc void @fht(ptr noundef nonnull %x, i16 noundef signext 1024)
  ret void
}

; Function Attrs: nofree noinline nosync nounwind writeonly uwtable
define dso_local void @init_fft() local_unnamed_addr #1 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %r.054 = phi float [ 0x3FD921FB60000000, %entry ], [ %conv9, %for.body ]
  %conv = fpext float %r.054 to double
  %0 = tail call fast double @llvm.cos.f64(double %conv)
  %conv1 = fptrunc double %0 to float
  %1 = shl nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds [8 x float], ptr @costab, i64 0, i64 %1
  store float %conv1, ptr %arrayidx, align 8, !tbaa !11
  %2 = tail call fast double @llvm.sin.f64(double %conv)
  %conv3 = fptrunc double %2 to float
  %3 = or i64 %1, 1
  %arrayidx6 = getelementptr inbounds [8 x float], ptr @costab, i64 0, i64 %3
  store float %conv3, ptr %arrayidx6, align 4, !tbaa !11
  %conv9 = fmul fast float %r.054, 2.500000e-01
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.body13, label %for.body, !llvm.loop !26

for.body13:                                       ; preds = %for.body, %for.body13
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.body13 ], [ 0, %for.body ]
  %4 = trunc i64 %indvars.iv60 to i32
  %conv14 = sitofp i32 %4 to double
  %5 = fmul fast double %conv14, 0x3F7921FB54442D18
  %div = fadd fast double %5, 0x3F6921FB54442D18
  %6 = tail call fast double @llvm.cos.f64(double %div)
  %7 = fmul fast double %6, 5.000000e-01
  %mul17 = fsub fast double 5.000000e-01, %7
  %conv18 = fptrunc double %mul17 to float
  %arrayidx20 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %indvars.iv60
  store float %conv18, ptr %arrayidx20, align 4, !tbaa !11
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %exitcond63.not = icmp eq i64 %indvars.iv.next61, 512
  br i1 %exitcond63.not, label %for.body27, label %for.body13, !llvm.loop !27

for.body27:                                       ; preds = %for.body13, %for.body27
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.body27 ], [ 0, %for.body13 ]
  %8 = trunc i64 %indvars.iv64 to i32
  %conv28 = sitofp i32 %8 to double
  %9 = fmul fast double %conv28, 0x3F9921FB54442D18
  %div31 = fadd fast double %9, 0x3F8921FB54442D18
  %10 = tail call fast double @llvm.cos.f64(double %div31)
  %11 = fmul fast double %10, 5.000000e-01
  %mul33 = fsub fast double 5.000000e-01, %11
  %conv34 = fptrunc double %mul33 to float
  %arrayidx36 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %indvars.iv64
  store float %conv34, ptr %arrayidx36, align 4, !tbaa !11
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 128
  br i1 %exitcond67.not, label %for.end39, label %for.body27, !llvm.loop !28

for.end39:                                        ; preds = %for.body27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { nofree noinline nosync nounwind writeonly uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

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
!10 = !{!"short", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14, !15}
!19 = distinct !{!19, !14, !15}
!20 = distinct !{!20, !14, !15}
!21 = distinct !{!21, !14, !15}
!22 = distinct !{!22, !14, !15}
!23 = distinct !{!23, !14, !15}
!24 = distinct !{!24, !14, !15}
!25 = distinct !{!25, !14, !15}
!26 = distinct !{!26, !14, !15}
!27 = distinct !{!27, !14, !15}
!28 = distinct !{!28, !14, !15}