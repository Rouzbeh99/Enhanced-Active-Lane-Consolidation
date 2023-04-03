; ModuleID = 'l3bitstream.c'
source_filename = "l3bitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffcodetab = type { i32, i32, ptr, ptr }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BF_FrameData = type { i32, i32, i32, ptr, ptr, [2 x ptr], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], ptr }
%struct.BF_PartHolder = type { i32, ptr }
%struct.BF_FrameResults = type { i32, i32, i32 }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@frameData = dso_local local_unnamed_addr global ptr null, align 8
@frameResults = dso_local local_unnamed_addr global ptr null, align 8
@PartHoldersInitialized = dso_local local_unnamed_addr global i32 0, align 4
@bs = internal unnamed_addr global ptr null, align 8
@headerPH = dso_local local_unnamed_addr global ptr null, align 8
@frameSIPH = dso_local local_unnamed_addr global ptr null, align 8
@channelSIPH = dso_local local_unnamed_addr global [2 x ptr] zeroinitializer, align 16
@spectrumSIPH = dso_local local_unnamed_addr global [2 x [2 x ptr]] zeroinitializer, align 16
@scaleFactorsPH = dso_local local_unnamed_addr global [2 x [2 x ptr]] zeroinitializer, align 16
@codedDataPH = dso_local global [2 x [2 x ptr]] zeroinitializer, align 16
@userSpectrumPH = dso_local local_unnamed_addr global [2 x [2 x ptr]] zeroinitializer, align 16
@userFrameDataPH = dso_local local_unnamed_addr global ptr null, align 8
@ht = external global [34 x %struct.huffcodetab], align 16
@slen1_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4], align 16
@slen2_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 2, i32 3], align 16
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"opps - adding stuffing bits = %i.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"this should not happen...\0A\00", align 1
@crc = internal unnamed_addr global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @putMyBits(i32 noundef %val, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @bs, align 8, !tbaa !5
  tail call void @putbits(ptr noundef %0, i32 noundef %val, i32 noundef %len) #8
  ret void
}

declare void @putbits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @III_format_bitstream(ptr nocapture noundef readonly %gfp, i32 noundef %bitsPerFrame, ptr nocapture noundef readonly %l3_enc, ptr nocapture noundef %l3_side, ptr nocapture noundef readonly %scalefac, ptr noundef %in_bs) local_unnamed_addr #0 {
entry:
  store ptr %in_bs, ptr @bs, align 8, !tbaa !5
  %0 = load ptr, ptr @frameData, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call noalias dereferenceable_or_null(184) ptr @calloc(i64 noundef 1, i64 noundef 184) #9
  store ptr %call, ptr @frameData, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @frameResults, align 8, !tbaa !5
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call noalias dereferenceable_or_null(12) ptr @calloc(i64 noundef 1, i64 noundef 12) #9
  store ptr %call3, ptr @frameResults, align 8, !tbaa !5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %2 = load i32, ptr @PartHoldersInitialized, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then5, label %if.end43

if.then5:                                         ; preds = %if.end4
  %call6 = tail call ptr @BF_newPartHolder(i32 noundef 14) #8
  store ptr %call6, ptr @headerPH, align 8, !tbaa !5
  %call7 = tail call ptr @BF_newPartHolder(i32 noundef 12) #8
  store ptr %call7, ptr @frameSIPH, align 8, !tbaa !5
  %call9 = tail call ptr @BF_newPartHolder(i32 noundef 8) #8
  store ptr %call9, ptr @channelSIPH, align 16, !tbaa !5
  %call9.c = tail call ptr @BF_newPartHolder(i32 noundef 8) #8
  store ptr %call9.c, ptr getelementptr inbounds ([2 x ptr], ptr @channelSIPH, i64 0, i64 1), align 8, !tbaa !5
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %if.then5, %for.inc39
  %cmp11 = phi i1 [ false, %for.inc39 ], [ true, %if.then5 ]
  %indvars.iv170 = phi i64 [ 1, %for.inc39 ], [ 0, %if.then5 ]
  br label %for.body15

for.body15:                                       ; preds = %for.cond13.preheader, %for.body15
  %cmp14 = phi i1 [ true, %for.cond13.preheader ], [ false, %for.body15 ]
  %indvars.iv167 = phi i64 [ 0, %for.cond13.preheader ], [ 1, %for.body15 ]
  %call16 = tail call ptr @BF_newPartHolder(i32 noundef 32) #8
  %arrayidx20 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %indvars.iv170, i64 %indvars.iv167
  store ptr %call16, ptr %arrayidx20, align 8, !tbaa !5
  %call21 = tail call ptr @BF_newPartHolder(i32 noundef 64) #8
  %arrayidx25 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %indvars.iv170, i64 %indvars.iv167
  store ptr %call21, ptr %arrayidx25, align 8, !tbaa !5
  %call26 = tail call ptr @BF_newPartHolder(i32 noundef 576) #8
  %arrayidx30 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %indvars.iv170, i64 %indvars.iv167
  store ptr %call26, ptr %arrayidx30, align 8, !tbaa !5
  %call31 = tail call ptr @BF_newPartHolder(i32 noundef 4) #8
  %arrayidx35 = getelementptr inbounds [2 x [2 x ptr]], ptr @userSpectrumPH, i64 0, i64 %indvars.iv170, i64 %indvars.iv167
  store ptr %call31, ptr %arrayidx35, align 8, !tbaa !5
  br i1 %cmp14, label %for.body15, label %for.inc39, !llvm.loop !11

for.inc39:                                        ; preds = %for.body15
  br i1 %cmp11, label %for.cond13.preheader, label %for.end41, !llvm.loop !14

for.end41:                                        ; preds = %for.inc39
  %call42 = tail call ptr @BF_newPartHolder(i32 noundef 8) #8
  store ptr %call42, ptr @userFrameDataPH, align 8, !tbaa !5
  store i32 1, ptr @PartHoldersInitialized, align 4, !tbaa !9
  br label %if.end43

if.end43:                                         ; preds = %for.end41, %if.end4
  tail call fastcc void @encodeSideInfo(ptr noundef %gfp, ptr noundef %l3_side)
  tail call fastcc void @encodeMainData(ptr noundef %gfp, ptr noundef %l3_enc, ptr noundef %l3_side, ptr noundef %scalefac)
  %resvDrain = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 2
  %3 = load i32, ptr %resvDrain, align 8, !tbaa !15
  tail call fastcc void @drain_into_ancillary_data(i32 noundef %3)
  %4 = load ptr, ptr @frameData, align 8, !tbaa !5
  store i32 %bitsPerFrame, ptr %4, align 8, !tbaa !17
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %5 = load i32, ptr %mode_gr, align 8, !tbaa !19
  %nGranules = getelementptr inbounds %struct.BF_FrameData, ptr %4, i64 0, i32 1
  store i32 %5, ptr %nGranules, align 4, !tbaa !23
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %6 = load i32, ptr %stereo, align 4, !tbaa !24
  %nChannels = getelementptr inbounds %struct.BF_FrameData, ptr %4, i64 0, i32 2
  store i32 %6, ptr %nChannels, align 8, !tbaa !25
  %7 = load ptr, ptr @headerPH, align 8, !tbaa !5
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %part, align 8, !tbaa !26
  %header = getelementptr inbounds %struct.BF_FrameData, ptr %4, i64 0, i32 3
  store ptr %8, ptr %header, align 8, !tbaa !28
  %9 = load ptr, ptr @frameSIPH, align 8, !tbaa !5
  %part45 = getelementptr inbounds %struct.BF_PartHolder, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %part45, align 8, !tbaa !26
  %frameSI = getelementptr inbounds %struct.BF_FrameData, ptr %4, i64 0, i32 4
  store ptr %10, ptr %frameSI, align 8, !tbaa !29
  %cmp48158 = icmp sgt i32 %6, 0
  br i1 %cmp48158, label %for.body49.preheader, label %for.end107

for.body49.preheader:                             ; preds = %if.end43
  %wide.trip.count = zext i32 %6 to i64
  %11 = load ptr, ptr @channelSIPH, align 16, !tbaa !5
  %part52187 = getelementptr inbounds %struct.BF_PartHolder, ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %part52187, align 8, !tbaa !26
  %arrayidx54188 = getelementptr inbounds %struct.BF_FrameData, ptr %4, i64 0, i32 5, i64 0
  store ptr %12, ptr %arrayidx54188, align 8, !tbaa !5
  %exitcond.not189 = icmp eq i32 %6, 1
  br i1 %exitcond.not189, label %for.cond58.preheader, label %for.body49.for.body49_crit_edge, !llvm.loop !30

for.cond58.preheader:                             ; preds = %for.body49.for.body49_crit_edge, %for.body49.preheader
  %cmp60162 = icmp slt i32 %5, 1
  %cmp48158.not = xor i1 %cmp48158, true
  %brmerge = select i1 %cmp60162, i1 true, i1 %cmp48158.not
  br i1 %brmerge, label %for.end107, label %for.cond62.preheader.us.preheader

for.cond62.preheader.us.preheader:                ; preds = %for.cond58.preheader
  %wide.trip.count184 = zext i32 %5 to i64
  %wide.trip.count179 = zext i32 %6 to i64
  br label %for.cond62.preheader.us

for.cond62.preheader.us:                          ; preds = %for.cond62.preheader.us.preheader, %for.cond62.for.inc105_crit_edge.us
  %indvars.iv181 = phi i64 [ 0, %for.cond62.preheader.us.preheader ], [ %indvars.iv.next182, %for.cond62.for.inc105_crit_edge.us ]
  br label %for.body65.us

for.body65.us:                                    ; preds = %for.cond62.preheader.us, %for.body65.us
  %indvars.iv176 = phi i64 [ 0, %for.cond62.preheader.us ], [ %indvars.iv.next177, %for.body65.us ]
  %arrayidx69.us = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %indvars.iv181, i64 %indvars.iv176
  %13 = load ptr, ptr %arrayidx69.us, align 8, !tbaa !5
  %part70.us = getelementptr inbounds %struct.BF_PartHolder, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %part70.us, align 8, !tbaa !26
  %15 = load ptr, ptr @frameData, align 8, !tbaa !5
  %arrayidx74.us = getelementptr inbounds %struct.BF_FrameData, ptr %15, i64 0, i32 6, i64 %indvars.iv181, i64 %indvars.iv176
  store ptr %14, ptr %arrayidx74.us, align 8, !tbaa !5
  %arrayidx78.us = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %indvars.iv181, i64 %indvars.iv176
  %16 = load ptr, ptr %arrayidx78.us, align 8, !tbaa !5
  %part79.us = getelementptr inbounds %struct.BF_PartHolder, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %part79.us, align 8, !tbaa !26
  %18 = load ptr, ptr @frameData, align 8, !tbaa !5
  %arrayidx83.us = getelementptr inbounds %struct.BF_FrameData, ptr %18, i64 0, i32 7, i64 %indvars.iv181, i64 %indvars.iv176
  store ptr %17, ptr %arrayidx83.us, align 8, !tbaa !5
  %arrayidx87.us = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %indvars.iv181, i64 %indvars.iv176
  %19 = load ptr, ptr %arrayidx87.us, align 8, !tbaa !5
  %part88.us = getelementptr inbounds %struct.BF_PartHolder, ptr %19, i64 0, i32 1
  %20 = load ptr, ptr %part88.us, align 8, !tbaa !26
  %21 = load ptr, ptr @frameData, align 8, !tbaa !5
  %arrayidx92.us = getelementptr inbounds %struct.BF_FrameData, ptr %21, i64 0, i32 8, i64 %indvars.iv181, i64 %indvars.iv176
  store ptr %20, ptr %arrayidx92.us, align 8, !tbaa !5
  %arrayidx96.us = getelementptr inbounds [2 x [2 x ptr]], ptr @userSpectrumPH, i64 0, i64 %indvars.iv181, i64 %indvars.iv176
  %22 = load ptr, ptr %arrayidx96.us, align 8, !tbaa !5
  %part97.us = getelementptr inbounds %struct.BF_PartHolder, ptr %22, i64 0, i32 1
  %23 = load ptr, ptr %part97.us, align 8, !tbaa !26
  %24 = load ptr, ptr @frameData, align 8, !tbaa !5
  %arrayidx101.us = getelementptr inbounds %struct.BF_FrameData, ptr %24, i64 0, i32 9, i64 %indvars.iv181, i64 %indvars.iv176
  store ptr %23, ptr %arrayidx101.us, align 8, !tbaa !5
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %for.cond62.for.inc105_crit_edge.us, label %for.body65.us, !llvm.loop !31

for.cond62.for.inc105_crit_edge.us:               ; preds = %for.body65.us
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %for.end107, label %for.cond62.preheader.us, !llvm.loop !32

for.body49.for.body49_crit_edge:                  ; preds = %for.body49.preheader, %for.body49.for.body49_crit_edge
  %indvars.iv.next174190 = phi i64 [ %indvars.iv.next174, %for.body49.for.body49_crit_edge ], [ 1, %for.body49.preheader ]
  %.pre = load ptr, ptr @frameData, align 8, !tbaa !5
  %arrayidx51 = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %indvars.iv.next174190
  %25 = load ptr, ptr %arrayidx51, align 8, !tbaa !5
  %part52 = getelementptr inbounds %struct.BF_PartHolder, ptr %25, i64 0, i32 1
  %26 = load ptr, ptr %part52, align 8, !tbaa !26
  %arrayidx54 = getelementptr inbounds %struct.BF_FrameData, ptr %.pre, i64 0, i32 5, i64 %indvars.iv.next174190
  store ptr %26, ptr %arrayidx54, align 8, !tbaa !5
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv.next174190, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count
  br i1 %exitcond.not, label %for.cond58.preheader, label %for.body49.for.body49_crit_edge, !llvm.loop !30

for.end107:                                       ; preds = %for.cond62.for.inc105_crit_edge.us, %for.cond58.preheader, %if.end43
  %27 = load ptr, ptr @userFrameDataPH, align 8, !tbaa !5
  %part108 = getelementptr inbounds %struct.BF_PartHolder, ptr %27, i64 0, i32 1
  %28 = load ptr, ptr %part108, align 8, !tbaa !26
  %29 = load ptr, ptr @frameData, align 8, !tbaa !5
  %userFrameData = getelementptr inbounds %struct.BF_FrameData, ptr %29, i64 0, i32 10
  store ptr %28, ptr %userFrameData, align 8, !tbaa !33
  %30 = load ptr, ptr @frameResults, align 8, !tbaa !5
  tail call void @BF_BitstreamFrame(ptr noundef %29, ptr noundef %30) #8
  %31 = load ptr, ptr @frameResults, align 8, !tbaa !5
  %nextBackPtr = getelementptr inbounds %struct.BF_FrameResults, ptr %31, i64 0, i32 2
  %32 = load i32, ptr %nextBackPtr, align 4, !tbaa !34
  store i32 %32, ptr %l3_side, align 8, !tbaa !36
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BF_newPartHolder(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @encodeSideInfo(ptr nocapture noundef readonly %gfp, ptr nocapture noundef readonly %si) unnamed_addr #0 {
entry:
  store i32 65535, ptr @crc, align 4, !tbaa !9
  %0 = load ptr, ptr @headerPH, align 8, !tbaa !5
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %part, align 8, !tbaa !26
  store i32 0, ptr %1, align 8, !tbaa !37
  %call = tail call ptr @BF_addEntry(ptr noundef %0, i32 noundef 4095, i32 noundef 12) #8
  store ptr %call, ptr @headerPH, align 8, !tbaa !5
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  %2 = load i32, ptr %version, align 8, !tbaa !39
  %call1 = tail call ptr @BF_addEntry(ptr noundef %call, i32 noundef %2, i32 noundef 1) #8
  store ptr %call1, ptr @headerPH, align 8, !tbaa !5
  %call2 = tail call ptr @BF_addEntry(ptr noundef %call1, i32 noundef 1, i32 noundef 2) #8
  store ptr %call2, ptr @headerPH, align 8, !tbaa !5
  %error_protection = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 14
  %3 = load i32, ptr %error_protection, align 4, !tbaa !40
  %tobool.not = icmp eq i32 %3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %call3 = tail call ptr @BF_addEntry(ptr noundef %call2, i32 noundef %lnot.ext, i32 noundef 1) #8
  store ptr %call3, ptr @headerPH, align 8, !tbaa !5
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 50
  %4 = load i32, ptr %bitrate_index, align 4, !tbaa !41
  %call4 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call3, i32 noundef %4, i32 noundef 4)
  store ptr %call4, ptr @headerPH, align 8, !tbaa !5
  %samplerate_index = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 51
  %5 = load i32, ptr %samplerate_index, align 8, !tbaa !42
  %call5 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call4, i32 noundef %5, i32 noundef 2)
  store ptr %call5, ptr @headerPH, align 8, !tbaa !5
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 44
  %6 = load i32, ptr %padding, align 4, !tbaa !43
  %call6 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call5, i32 noundef %6, i32 noundef 1)
  store ptr %call6, ptr @headerPH, align 8, !tbaa !5
  %extension = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 16
  %7 = load i32, ptr %extension, align 4, !tbaa !44
  %call7 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call6, i32 noundef %7, i32 noundef 1)
  store ptr %call7, ptr @headerPH, align 8, !tbaa !5
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 8
  %8 = load i32, ptr %mode, align 4, !tbaa !45
  %call8 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call7, i32 noundef %8, i32 noundef 2)
  store ptr %call8, ptr @headerPH, align 8, !tbaa !5
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 52
  %9 = load i32, ptr %mode_ext, align 4, !tbaa !46
  %call9 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call8, i32 noundef %9, i32 noundef 2)
  store ptr %call9, ptr @headerPH, align 8, !tbaa !5
  %copyright = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 12
  %10 = load i32, ptr %copyright, align 4, !tbaa !47
  %call10 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call9, i32 noundef %10, i32 noundef 1)
  store ptr %call10, ptr @headerPH, align 8, !tbaa !5
  %original = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 13
  %11 = load i32, ptr %original, align 8, !tbaa !48
  %call11 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call10, i32 noundef %11, i32 noundef 1)
  store ptr %call11, ptr @headerPH, align 8, !tbaa !5
  %emphasis = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 38
  %12 = load i32, ptr %emphasis, align 4, !tbaa !49
  %call12 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call11, i32 noundef %12, i32 noundef 2)
  store ptr %call12, ptr @headerPH, align 8, !tbaa !5
  %13 = load ptr, ptr @frameSIPH, align 8, !tbaa !5
  %part13 = getelementptr inbounds %struct.BF_PartHolder, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %part13, align 8, !tbaa !26
  store i32 0, ptr %14, align 8, !tbaa !37
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %15 = load i32, ptr %stereo, align 4, !tbaa !24
  %cmp3 = icmp sgt i32 %15, 0
  br i1 %cmp3, label %for.body.preheader, label %for.end35

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %15 to i64
  br label %for.body

for.cond17.preheader:                             ; preds = %for.body
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %16 = load i32, ptr %mode_gr, align 8, !tbaa !19
  %cmp188 = icmp slt i32 %16, 1
  %cmp3.not = xor i1 %cmp3, true
  %brmerge = select i1 %cmp188, i1 true, i1 %cmp3.not
  br i1 %brmerge, label %for.end35, label %for.cond20.preheader.us.preheader

for.cond20.preheader.us.preheader:                ; preds = %for.cond17.preheader
  %wide.trip.count38 = zext i32 %16 to i64
  %wide.trip.count33 = zext i32 %15 to i64
  br label %for.cond20.preheader.us

for.cond20.preheader.us:                          ; preds = %for.cond20.preheader.us.preheader, %for.cond20.for.inc33_crit_edge.us
  %indvars.iv35 = phi i64 [ 0, %for.cond20.preheader.us.preheader ], [ %indvars.iv.next36, %for.cond20.for.inc33_crit_edge.us ]
  br label %for.body23.us

for.body23.us:                                    ; preds = %for.cond20.preheader.us, %for.body23.us
  %indvars.iv30 = phi i64 [ 0, %for.cond20.preheader.us ], [ %indvars.iv.next31, %for.body23.us ]
  %arrayidx27.us = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %indvars.iv35, i64 %indvars.iv30
  %17 = load ptr, ptr %arrayidx27.us, align 8, !tbaa !5
  %part28.us = getelementptr inbounds %struct.BF_PartHolder, ptr %17, i64 0, i32 1
  %18 = load ptr, ptr %part28.us, align 8, !tbaa !26
  store i32 0, ptr %18, align 8, !tbaa !37
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %for.cond20.for.inc33_crit_edge.us, label %for.body23.us, !llvm.loop !50

for.cond20.for.inc33_crit_edge.us:                ; preds = %for.body23.us
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %for.end35, label %for.cond20.preheader.us, !llvm.loop !51

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %indvars.iv
  %19 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %part15 = getelementptr inbounds %struct.BF_PartHolder, ptr %19, i64 0, i32 1
  %20 = load ptr, ptr %part15, align 8, !tbaa !26
  store i32 0, ptr %20, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond17.preheader, label %for.body, !llvm.loop !52

for.end35:                                        ; preds = %for.cond20.for.inc33_crit_edge.us, %for.cond17.preheader, %entry
  %21 = load i32, ptr %version, align 8, !tbaa !39
  %cmp37 = icmp eq i32 %21, 1
  %22 = load i32, ptr %si, align 8, !tbaa !36
  br i1 %cmp37, label %if.then, label %if.else140

if.then:                                          ; preds = %for.end35
  %call38 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %13, i32 noundef %22, i32 noundef 9)
  store ptr %call38, ptr @frameSIPH, align 8, !tbaa !5
  %23 = load i32, ptr %stereo, align 4, !tbaa !24
  %cmp40 = icmp eq i32 %23, 2
  %private_bits = getelementptr inbounds %struct.III_side_info_t, ptr %si, i64 0, i32 1
  %24 = load i32, ptr %private_bits, align 4, !tbaa !53
  %. = select i1 %cmp40, i32 3, i32 5
  %call44 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call38, i32 noundef %24, i32 noundef %.)
  store ptr %call44, ptr @frameSIPH, align 8, !tbaa !5
  %25 = load i32, ptr %stereo, align 4, !tbaa !24
  %cmp4717 = icmp sgt i32 %25, 0
  br i1 %cmp4717, label %for.cond49.preheader, label %if.end236

for.cond49.preheader:                             ; preds = %if.then, %for.inc62
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc62 ], [ 0, %if.then ]
  %arrayidx53 = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %indvars.iv58
  %.pre = load ptr, ptr %arrayidx53, align 8, !tbaa !5
  br label %for.body51

for.cond65.preheader:                             ; preds = %for.inc62
  %26 = icmp sgt i32 %29, 0
  br i1 %26, label %for.cond68.preheader, label %if.end236

for.body51:                                       ; preds = %for.cond49.preheader, %for.body51
  %27 = phi ptr [ %.pre, %for.cond49.preheader ], [ %call58, %for.body51 ]
  %indvars.iv54 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next55, %for.body51 ]
  %arrayidx57 = getelementptr inbounds %struct.III_side_info_t, ptr %si, i64 0, i32 3, i64 %indvars.iv58, i64 %indvars.iv54
  %28 = load i32, ptr %arrayidx57, align 4, !tbaa !9
  %call58 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %27, i32 noundef %28, i32 noundef 1)
  store ptr %call58, ptr %arrayidx53, align 8, !tbaa !5
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, 4
  br i1 %exitcond57.not, label %for.inc62, label %for.body51, !llvm.loop !54

for.inc62:                                        ; preds = %for.body51
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %29 = load i32, ptr %stereo, align 4, !tbaa !24
  %30 = sext i32 %29 to i64
  %cmp47 = icmp slt i64 %indvars.iv.next59, %30
  br i1 %cmp47, label %for.cond49.preheader, label %for.cond65.preheader, !llvm.loop !55

for.cond68.preheader:                             ; preds = %for.cond65.preheader, %for.inc131
  %31 = phi i32 [ %55, %for.inc131 ], [ %29, %for.cond65.preheader ]
  %cmp66 = phi i1 [ false, %for.inc131 ], [ true, %for.cond65.preheader ]
  %indvars.iv75 = phi i64 [ 1, %for.inc131 ], [ 0, %for.cond65.preheader ]
  %cmp7022 = icmp sgt i32 %31, 0
  br i1 %cmp7022, label %for.body71.lr.ph, label %for.inc131

for.body71.lr.ph:                                 ; preds = %for.cond68.preheader
  %arrayidx79 = getelementptr inbounds %struct.III_side_info_t, ptr %si, i64 0, i32 4, i64 %indvars.iv75
  br label %for.body71

for.body71:                                       ; preds = %for.body71.lr.ph, %if.end124
  %indvars.iv72 = phi i64 [ 0, %for.body71.lr.ph ], [ %indvars.iv.next73, %if.end124 ]
  %arrayidx76 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %indvars.iv75, i64 %indvars.iv72
  %arrayidx82 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx79, i64 0, i64 %indvars.iv72
  %32 = load ptr, ptr %arrayidx76, align 8, !tbaa !5
  %33 = load i32, ptr %arrayidx82, align 8, !tbaa !56
  %call83 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %32, i32 noundef %33, i32 noundef 12)
  store ptr %call83, ptr %arrayidx76, align 8, !tbaa !5
  %big_values = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 1
  %34 = load i32, ptr %big_values, align 4, !tbaa !58
  %call84 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call83, i32 noundef %34, i32 noundef 9)
  store ptr %call84, ptr %arrayidx76, align 8, !tbaa !5
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 3
  %35 = load i32, ptr %global_gain, align 4, !tbaa !59
  %call85 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call84, i32 noundef %35, i32 noundef 8)
  store ptr %call85, ptr %arrayidx76, align 8, !tbaa !5
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 4
  %36 = load i32, ptr %scalefac_compress, align 8, !tbaa !60
  %call86 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call85, i32 noundef %36, i32 noundef 4)
  store ptr %call86, ptr %arrayidx76, align 8, !tbaa !5
  %window_switching_flag = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 5
  %37 = load i32, ptr %window_switching_flag, align 4, !tbaa !61
  %call87 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call86, i32 noundef %37, i32 noundef 1)
  store ptr %call87, ptr %arrayidx76, align 8, !tbaa !5
  %38 = load i32, ptr %window_switching_flag, align 4, !tbaa !61
  %tobool89.not = icmp eq i32 %38, 0
  br i1 %tobool89.not, label %for.body114, label %if.then90

if.then90:                                        ; preds = %for.body71
  %block_type = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 6
  %39 = load i32, ptr %block_type, align 8, !tbaa !62
  %call91 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call87, i32 noundef %39, i32 noundef 2)
  store ptr %call91, ptr %arrayidx76, align 8, !tbaa !5
  %mixed_block_flag = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 7
  %40 = load i32, ptr %mixed_block_flag, align 4, !tbaa !63
  %call92 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call91, i32 noundef %40, i32 noundef 1)
  store ptr %call92, ptr %arrayidx76, align 8, !tbaa !5
  br label %for.body95

for.body95:                                       ; preds = %if.then90, %for.body95
  %41 = phi ptr [ %call92, %if.then90 ], [ %call98, %for.body95 ]
  %cmp94 = phi i1 [ true, %if.then90 ], [ false, %for.body95 ]
  %indvars.iv61 = phi i64 [ 0, %if.then90 ], [ 1, %for.body95 ]
  %arrayidx97 = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 8, i64 %indvars.iv61
  %42 = load i32, ptr %arrayidx97, align 4, !tbaa !9
  %call98 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %41, i32 noundef %42, i32 noundef 5)
  store ptr %call98, ptr %arrayidx76, align 8, !tbaa !5
  br i1 %cmp94, label %for.body95, label %for.body104, !llvm.loop !64

for.body104:                                      ; preds = %for.body95, %for.body104
  %43 = phi ptr [ %call107, %for.body104 ], [ %call98, %for.body95 ]
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.body104 ], [ 0, %for.body95 ]
  %arrayidx106 = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 9, i64 %indvars.iv64
  %44 = load i32, ptr %arrayidx106, align 4, !tbaa !9
  %call107 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %43, i32 noundef %44, i32 noundef 3)
  store ptr %call107, ptr %arrayidx76, align 8, !tbaa !5
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 3
  br i1 %exitcond67.not, label %if.end124, label %for.body104, !llvm.loop !65

for.body114:                                      ; preds = %for.body71, %for.body114
  %45 = phi ptr [ %call118, %for.body114 ], [ %call87, %for.body71 ]
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body114 ], [ 0, %for.body71 ]
  %arrayidx117 = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 8, i64 %indvars.iv68
  %46 = load i32, ptr %arrayidx117, align 4, !tbaa !9
  %call118 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %45, i32 noundef %46, i32 noundef 5)
  store ptr %call118, ptr %arrayidx76, align 8, !tbaa !5
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %exitcond71.not = icmp eq i64 %indvars.iv.next69, 3
  br i1 %exitcond71.not, label %for.end121, label %for.body114, !llvm.loop !66

for.end121:                                       ; preds = %for.body114
  %region0_count = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 10
  %47 = load i32, ptr %region0_count, align 8, !tbaa !67
  %call122 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call118, i32 noundef %47, i32 noundef 4)
  store ptr %call122, ptr %arrayidx76, align 8, !tbaa !5
  %region1_count = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 11
  %48 = load i32, ptr %region1_count, align 4, !tbaa !68
  %call123 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call122, i32 noundef %48, i32 noundef 3)
  store ptr %call123, ptr %arrayidx76, align 8, !tbaa !5
  br label %if.end124

if.end124:                                        ; preds = %for.body104, %for.end121
  %49 = phi ptr [ %call123, %for.end121 ], [ %call107, %for.body104 ]
  %preflag = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 12
  %50 = load i32, ptr %preflag, align 8, !tbaa !69
  %call125 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %49, i32 noundef %50, i32 noundef 1)
  store ptr %call125, ptr %arrayidx76, align 8, !tbaa !5
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 13
  %51 = load i32, ptr %scalefac_scale, align 4, !tbaa !70
  %call126 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call125, i32 noundef %51, i32 noundef 1)
  store ptr %call126, ptr %arrayidx76, align 8, !tbaa !5
  %count1table_select = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 14
  %52 = load i32, ptr %count1table_select, align 8, !tbaa !71
  %call127 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call126, i32 noundef %52, i32 noundef 1)
  store ptr %call127, ptr %arrayidx76, align 8, !tbaa !5
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %53 = load i32, ptr %stereo, align 4, !tbaa !24
  %54 = sext i32 %53 to i64
  %cmp70 = icmp slt i64 %indvars.iv.next73, %54
  br i1 %cmp70, label %for.body71, label %for.inc131, !llvm.loop !72

for.inc131:                                       ; preds = %if.end124, %for.cond68.preheader
  %55 = phi i32 [ %31, %for.cond68.preheader ], [ %53, %if.end124 ]
  br i1 %cmp66, label %for.cond68.preheader, label %if.end236, !llvm.loop !73

if.else140:                                       ; preds = %for.end35
  %call142 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %13, i32 noundef %22, i32 noundef 8)
  store ptr %call142, ptr @frameSIPH, align 8, !tbaa !5
  %56 = load i32, ptr %stereo, align 4, !tbaa !24
  %cmp144 = icmp eq i32 %56, 2
  %private_bits146 = getelementptr inbounds %struct.III_side_info_t, ptr %si, i64 0, i32 1
  %57 = load i32, ptr %private_bits146, align 4, !tbaa !53
  %.83 = select i1 %cmp144, i32 2, i32 1
  %call150 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call142, i32 noundef %57, i32 noundef %.83)
  store ptr %call150, ptr @frameSIPH, align 8, !tbaa !5
  %58 = load i32, ptr %stereo, align 4, !tbaa !24
  %cmp15414 = icmp sgt i32 %58, 0
  br i1 %cmp15414, label %for.body155.lr.ph, label %if.end236

for.body155.lr.ph:                                ; preds = %if.else140
  %gr162 = getelementptr inbounds %struct.III_side_info_t, ptr %si, i64 0, i32 4
  br label %for.body155

for.body155:                                      ; preds = %for.body155.lr.ph, %if.end221
  %indvars.iv51 = phi i64 [ 0, %for.body155.lr.ph ], [ %indvars.iv.next52, %if.end221 ]
  %arrayidx160 = getelementptr inbounds [2 x ptr], ptr @spectrumSIPH, i64 0, i64 %indvars.iv51
  %arrayidx167 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %gr162, i64 0, i64 %indvars.iv51
  %59 = load ptr, ptr %arrayidx160, align 8, !tbaa !5
  %60 = load i32, ptr %arrayidx167, align 8, !tbaa !56
  %call170 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %59, i32 noundef %60, i32 noundef 12)
  store ptr %call170, ptr %arrayidx160, align 8, !tbaa !5
  %big_values171 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 1
  %61 = load i32, ptr %big_values171, align 4, !tbaa !58
  %call172 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call170, i32 noundef %61, i32 noundef 9)
  store ptr %call172, ptr %arrayidx160, align 8, !tbaa !5
  %global_gain173 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 3
  %62 = load i32, ptr %global_gain173, align 4, !tbaa !59
  %call174 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call172, i32 noundef %62, i32 noundef 8)
  store ptr %call174, ptr %arrayidx160, align 8, !tbaa !5
  %scalefac_compress175 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 4
  %63 = load i32, ptr %scalefac_compress175, align 8, !tbaa !60
  %call176 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call174, i32 noundef %63, i32 noundef 9)
  store ptr %call176, ptr %arrayidx160, align 8, !tbaa !5
  %window_switching_flag177 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 5
  %64 = load i32, ptr %window_switching_flag177, align 4, !tbaa !61
  %call178 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call176, i32 noundef %64, i32 noundef 1)
  store ptr %call178, ptr %arrayidx160, align 8, !tbaa !5
  %65 = load i32, ptr %window_switching_flag177, align 4, !tbaa !61
  %tobool180.not = icmp eq i32 %65, 0
  br i1 %tobool180.not, label %for.body209, label %if.then181

if.then181:                                       ; preds = %for.body155
  %block_type182 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 6
  %66 = load i32, ptr %block_type182, align 8, !tbaa !62
  %call183 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call178, i32 noundef %66, i32 noundef 2)
  store ptr %call183, ptr %arrayidx160, align 8, !tbaa !5
  %mixed_block_flag184 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 7
  %67 = load i32, ptr %mixed_block_flag184, align 4, !tbaa !63
  %call185 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call183, i32 noundef %67, i32 noundef 1)
  store ptr %call185, ptr %arrayidx160, align 8, !tbaa !5
  br label %for.body188

for.body188:                                      ; preds = %if.then181, %for.body188
  %68 = phi ptr [ %call185, %if.then181 ], [ %call192, %for.body188 ]
  %cmp187 = phi i1 [ true, %if.then181 ], [ false, %for.body188 ]
  %indvars.iv40 = phi i64 [ 0, %if.then181 ], [ 1, %for.body188 ]
  %arrayidx191 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 8, i64 %indvars.iv40
  %69 = load i32, ptr %arrayidx191, align 4, !tbaa !9
  %call192 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %68, i32 noundef %69, i32 noundef 5)
  store ptr %call192, ptr %arrayidx160, align 8, !tbaa !5
  br i1 %cmp187, label %for.body188, label %for.body198, !llvm.loop !75

for.body198:                                      ; preds = %for.body188, %for.body198
  %70 = phi ptr [ %call202, %for.body198 ], [ %call192, %for.body188 ]
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.body198 ], [ 0, %for.body188 ]
  %arrayidx201 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 9, i64 %indvars.iv43
  %71 = load i32, ptr %arrayidx201, align 4, !tbaa !9
  %call202 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %70, i32 noundef %71, i32 noundef 3)
  store ptr %call202, ptr %arrayidx160, align 8, !tbaa !5
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, 3
  br i1 %exitcond46.not, label %if.end221, label %for.body198, !llvm.loop !76

for.body209:                                      ; preds = %for.body155, %for.body209
  %72 = phi ptr [ %call213, %for.body209 ], [ %call178, %for.body155 ]
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.body209 ], [ 0, %for.body155 ]
  %arrayidx212 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 8, i64 %indvars.iv47
  %73 = load i32, ptr %arrayidx212, align 4, !tbaa !9
  %call213 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %72, i32 noundef %73, i32 noundef 5)
  store ptr %call213, ptr %arrayidx160, align 8, !tbaa !5
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, 3
  br i1 %exitcond50.not, label %for.end216, label %for.body209, !llvm.loop !77

for.end216:                                       ; preds = %for.body209
  %region0_count217 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 10
  %74 = load i32, ptr %region0_count217, align 8, !tbaa !67
  %call218 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call213, i32 noundef %74, i32 noundef 4)
  store ptr %call218, ptr %arrayidx160, align 8, !tbaa !5
  %region1_count219 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 11
  %75 = load i32, ptr %region1_count219, align 4, !tbaa !68
  %call220 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call218, i32 noundef %75, i32 noundef 3)
  store ptr %call220, ptr %arrayidx160, align 8, !tbaa !5
  br label %if.end221

if.end221:                                        ; preds = %for.body198, %for.end216
  %76 = phi ptr [ %call220, %for.end216 ], [ %call202, %for.body198 ]
  %scalefac_scale222 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 13
  %77 = load i32, ptr %scalefac_scale222, align 4, !tbaa !70
  %call223 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %76, i32 noundef %77, i32 noundef 1)
  store ptr %call223, ptr %arrayidx160, align 8, !tbaa !5
  %count1table_select224 = getelementptr inbounds %struct.gr_info, ptr %arrayidx167, i64 0, i32 14
  %78 = load i32, ptr %count1table_select224, align 8, !tbaa !71
  %call225 = tail call fastcc ptr @CRC_BF_addEntry(ptr noundef %call223, i32 noundef %78, i32 noundef 1)
  store ptr %call225, ptr %arrayidx160, align 8, !tbaa !5
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %79 = load i32, ptr %stereo, align 4, !tbaa !24
  %80 = sext i32 %79 to i64
  %cmp154 = icmp slt i64 %indvars.iv.next52, %80
  br i1 %cmp154, label %for.body155, label %if.end236, !llvm.loop !78

if.end236:                                        ; preds = %if.end221, %for.inc131, %if.then, %for.cond65.preheader, %if.else140
  %81 = load i32, ptr %error_protection, align 4, !tbaa !40
  %tobool238.not = icmp eq i32 %81, 0
  br i1 %tobool238.not, label %if.end242, label %if.then239

if.then239:                                       ; preds = %if.end236
  %82 = load ptr, ptr @headerPH, align 8, !tbaa !5
  %83 = load i32, ptr @crc, align 4, !tbaa !9
  %call240 = tail call ptr @BF_addEntry(ptr noundef %82, i32 noundef %83, i32 noundef 16) #8
  store ptr %call240, ptr @headerPH, align 8, !tbaa !5
  br label %if.end242

if.end242:                                        ; preds = %if.then239, %if.end236
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @encodeMainData(ptr nocapture noundef readonly %gfp, ptr nocapture noundef readonly %l3_enc, ptr nocapture noundef readonly %si, ptr nocapture noundef readonly %scalefac) unnamed_addr #0 {
entry:
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %0 = load i32, ptr %mode_gr, align 8, !tbaa !19
  %cmp445 = icmp sgt i32 %0, 0
  br i1 %cmp445, label %for.cond1.preheader.lr.ph, label %for.end28

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %1 = load i32, ptr %stereo, align 4, !tbaa !24
  %cmp2443 = icmp sgt i32 %1, 0
  br i1 %cmp2443, label %for.cond1.preheader.us.preheader, label %for.cond13.preheader.lr.ph

for.cond1.preheader.us.preheader:                 ; preds = %for.cond1.preheader.lr.ph
  %wide.trip.count490 = zext i32 %0 to i64
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond1.preheader.us

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.inc6_crit_edge.us
  %indvars.iv487 = phi i64 [ 0, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next488, %for.cond1.for.inc6_crit_edge.us ]
  br label %for.body3.us

for.body3.us:                                     ; preds = %for.cond1.preheader.us, %for.body3.us
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader.us ], [ %indvars.iv.next, %for.body3.us ]
  %arrayidx5.us = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %indvars.iv487, i64 %indvars.iv
  %2 = load ptr, ptr %arrayidx5.us, align 8, !tbaa !5
  %part.us = getelementptr inbounds %struct.BF_PartHolder, ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %part.us, align 8, !tbaa !26
  store i32 0, ptr %3, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond1.for.inc6_crit_edge.us, label %for.body3.us, !llvm.loop !79

for.cond1.for.inc6_crit_edge.us:                  ; preds = %for.body3.us
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1
  %exitcond491.not = icmp eq i64 %indvars.iv.next488, %wide.trip.count490
  br i1 %exitcond491.not, label %for.cond9.preheader, label %for.cond1.preheader.us, !llvm.loop !80

for.cond9.preheader:                              ; preds = %for.cond1.for.inc6_crit_edge.us
  br i1 %cmp445, label %for.cond13.preheader.lr.ph, label %for.end28

for.cond13.preheader.lr.ph:                       ; preds = %for.cond1.preheader.lr.ph, %for.cond9.preheader
  %stereo14 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %4 = load i32, ptr %stereo14, align 4, !tbaa !24
  %cmp15448 = icmp sgt i32 %4, 0
  br i1 %cmp15448, label %for.cond13.preheader.us.preheader, label %for.end28

for.cond13.preheader.us.preheader:                ; preds = %for.cond13.preheader.lr.ph
  %wide.trip.count500 = zext i32 %0 to i64
  %wide.trip.count495 = zext i32 %4 to i64
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %for.cond13.for.inc26_crit_edge.us
  %indvars.iv497 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next498, %for.cond13.for.inc26_crit_edge.us ]
  br label %for.body16.us

for.body16.us:                                    ; preds = %for.cond13.preheader.us, %for.body16.us
  %indvars.iv492 = phi i64 [ 0, %for.cond13.preheader.us ], [ %indvars.iv.next493, %for.body16.us ]
  %arrayidx20.us = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %indvars.iv497, i64 %indvars.iv492
  %5 = load ptr, ptr %arrayidx20.us, align 8, !tbaa !5
  %part21.us = getelementptr inbounds %struct.BF_PartHolder, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %part21.us, align 8, !tbaa !26
  store i32 0, ptr %6, align 8, !tbaa !37
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1
  %exitcond496.not = icmp eq i64 %indvars.iv.next493, %wide.trip.count495
  br i1 %exitcond496.not, label %for.cond13.for.inc26_crit_edge.us, label %for.body16.us, !llvm.loop !81

for.cond13.for.inc26_crit_edge.us:                ; preds = %for.body16.us
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1
  %exitcond501.not = icmp eq i64 %indvars.iv.next498, %wide.trip.count500
  br i1 %exitcond501.not, label %for.end28, label %for.cond13.preheader.us, !llvm.loop !82

for.end28:                                        ; preds = %for.cond13.for.inc26_crit_edge.us, %entry, %for.cond13.preheader.lr.ph, %for.cond9.preheader
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  %7 = load i32, ptr %version, align 8, !tbaa !39
  %cmp29 = icmp eq i32 %7, 1
  %stereo34 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %8 = load i32, ptr %stereo34, align 4, !tbaa !24
  %9 = icmp sgt i32 %8, 0
  br i1 %cmp29, label %for.cond30.preheader, label %for.cond201.preheader

for.cond201.preheader:                            ; preds = %for.end28
  br i1 %9, label %for.body204.lr.ph, label %if.end299

for.body204.lr.ph:                                ; preds = %for.cond201.preheader
  %gr211 = getelementptr inbounds %struct.III_side_info_t, ptr %si, i64 0, i32 4
  br label %for.body204

for.cond30.preheader:                             ; preds = %for.end28
  br i1 %9, label %for.cond33.preheader, label %if.end299

for.cond33.preheader:                             ; preds = %for.cond30.preheader, %for.inc197
  %10 = phi i32 [ %34, %for.inc197 ], [ %8, %for.cond30.preheader ]
  %cmp31 = phi i1 [ false, %for.inc197 ], [ true, %for.cond30.preheader ]
  %indvars.iv560 = phi i64 [ 1, %for.inc197 ], [ 0, %for.cond30.preheader ]
  %cmp35476 = icmp sgt i32 %10, 0
  br i1 %cmp35476, label %for.body36.lr.ph, label %for.inc197

for.body36.lr.ph:                                 ; preds = %for.cond33.preheader
  %arrayidx43 = getelementptr inbounds %struct.III_side_info_t, ptr %si, i64 0, i32 4, i64 %indvars.iv560
  br label %for.body36

for.body36:                                       ; preds = %for.body36.lr.ph, %if.end189
  %indvars.iv557 = phi i64 [ 0, %for.body36.lr.ph ], [ %indvars.iv.next558, %if.end189 ]
  %arrayidx40 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %indvars.iv560, i64 %indvars.iv557
  %arrayidx46 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx43, i64 0, i64 %indvars.iv557
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %arrayidx46, i64 0, i32 4
  %11 = load i32, ptr %scalefac_compress, align 8, !tbaa !60
  %idxprom47 = zext i32 %11 to i64
  %arrayidx48 = getelementptr inbounds [16 x i32], ptr @slen1_tab, i64 0, i64 %idxprom47
  %12 = load i32, ptr %arrayidx48, align 4, !tbaa !9
  %arrayidx51 = getelementptr inbounds [16 x i32], ptr @slen2_tab, i64 0, i64 %idxprom47
  %13 = load i32, ptr %arrayidx51, align 4, !tbaa !9
  %arrayidx55 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv560, i64 %indvars.iv557
  %block_type = getelementptr inbounds %struct.gr_info, ptr %arrayidx46, i64 0, i32 6
  %14 = load i32, ptr %block_type, align 8, !tbaa !62
  %cmp57 = icmp eq i32 %14, 2
  br i1 %cmp57, label %for.cond62.preheader.preheader, label %if.else

for.cond62.preheader.preheader:                   ; preds = %for.body36
  %.pre568.pre = load ptr, ptr %arrayidx40, align 8, !tbaa !5
  br label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %for.cond62.preheader.preheader, %for.inc76
  %.pre568 = phi ptr [ %.pre568.pre, %for.cond62.preheader.preheader ], [ %call, %for.inc76 ]
  %indvars.iv545 = phi i64 [ 0, %for.cond62.preheader.preheader ], [ %indvars.iv.next546, %for.inc76 ]
  br label %for.body64

for.body64:                                       ; preds = %for.cond62.preheader, %for.body64
  %15 = phi ptr [ %.pre568, %for.cond62.preheader ], [ %call, %for.body64 ]
  %indvars.iv541 = phi i64 [ 0, %for.cond62.preheader ], [ %indvars.iv.next542, %for.body64 ]
  %arrayidx72 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv560, i64 %indvars.iv557, i32 1, i64 %indvars.iv545, i64 %indvars.iv541
  %16 = load i32, ptr %arrayidx72, align 4, !tbaa !9
  %call = tail call ptr @BF_addEntry(ptr noundef %15, i32 noundef %16, i32 noundef %12) #8
  store ptr %call, ptr %arrayidx40, align 8, !tbaa !5
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1
  %exitcond544.not = icmp eq i64 %indvars.iv.next542, 3
  br i1 %exitcond544.not, label %for.inc76, label %for.body64, !llvm.loop !83

for.inc76:                                        ; preds = %for.body64
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, 1
  %exitcond548.not = icmp eq i64 %indvars.iv.next546, 6
  br i1 %exitcond548.not, label %for.cond82.preheader, label %for.cond62.preheader, !llvm.loop !84

for.cond82.preheader:                             ; preds = %for.inc76, %for.inc98
  %17 = phi ptr [ %call94, %for.inc98 ], [ %call, %for.inc76 ]
  %indvars.iv553 = phi i64 [ %indvars.iv.next554, %for.inc98 ], [ 6, %for.inc76 ]
  br label %for.body84

for.body84:                                       ; preds = %for.cond82.preheader, %for.body84
  %18 = phi ptr [ %17, %for.cond82.preheader ], [ %call94, %for.body84 ]
  %indvars.iv549 = phi i64 [ 0, %for.cond82.preheader ], [ %indvars.iv.next550, %for.body84 ]
  %arrayidx93 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv560, i64 %indvars.iv557, i32 1, i64 %indvars.iv553, i64 %indvars.iv549
  %19 = load i32, ptr %arrayidx93, align 4, !tbaa !9
  %call94 = tail call ptr @BF_addEntry(ptr noundef %18, i32 noundef %19, i32 noundef %13) #8
  store ptr %call94, ptr %arrayidx40, align 8, !tbaa !5
  %indvars.iv.next550 = add nuw nsw i64 %indvars.iv549, 1
  %exitcond552.not = icmp eq i64 %indvars.iv.next550, 3
  br i1 %exitcond552.not, label %for.inc98, label %for.body84, !llvm.loop !85

for.inc98:                                        ; preds = %for.body84
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1
  %exitcond556.not = icmp eq i64 %indvars.iv.next554, 12
  br i1 %exitcond556.not, label %if.end189, label %for.cond82.preheader, !llvm.loop !86

if.else:                                          ; preds = %for.body36
  br i1 %cmp31, label %if.then106, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %arrayidx103 = getelementptr inbounds %struct.III_side_info_t, ptr %si, i64 0, i32 3, i64 %indvars.iv557
  %20 = load i32, ptr %arrayidx103, align 4, !tbaa !9
  %cmp105 = icmp eq i32 %20, 0
  br i1 %cmp105, label %if.then106, label %lor.lhs.false121

if.then106:                                       ; preds = %lor.lhs.false, %if.else
  %arrayidx113 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv560, i64 %indvars.iv557
  %.pre564 = load ptr, ptr %arrayidx40, align 8, !tbaa !5
  br label %for.body109

for.body109:                                      ; preds = %if.then106, %for.body109
  %21 = phi ptr [ %.pre564, %if.then106 ], [ %call116, %for.body109 ]
  %indvars.iv525 = phi i64 [ 0, %if.then106 ], [ %indvars.iv.next526, %for.body109 ]
  %arrayidx115 = getelementptr inbounds [22 x i32], ptr %arrayidx113, i64 0, i64 %indvars.iv525
  %22 = load i32, ptr %arrayidx115, align 4, !tbaa !9
  %call116 = tail call ptr @BF_addEntry(ptr noundef %21, i32 noundef %22, i32 noundef %12) #8
  store ptr %call116, ptr %arrayidx40, align 8, !tbaa !5
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1
  %exitcond528.not = icmp eq i64 %indvars.iv.next526, 6
  br i1 %exitcond528.not, label %if.end, label %for.body109, !llvm.loop !87

if.end:                                           ; preds = %for.body109
  br i1 %cmp31, label %if.then127, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %lor.lhs.false, %if.end
  %arrayidx125 = getelementptr inbounds %struct.III_side_info_t, ptr %si, i64 0, i32 3, i64 %indvars.iv557, i64 1
  %23 = load i32, ptr %arrayidx125, align 4, !tbaa !9
  %cmp126 = icmp eq i32 %23, 0
  br i1 %cmp126, label %lor.lhs.false121.if.then127_crit_edge, label %lor.lhs.false144

lor.lhs.false121.if.then127_crit_edge:            ; preds = %lor.lhs.false121
  %.pre565.pre = load ptr, ptr %arrayidx40, align 8, !tbaa !5
  br label %if.then127

if.then127:                                       ; preds = %lor.lhs.false121.if.then127_crit_edge, %if.end
  %.pre565 = phi ptr [ %.pre565.pre, %lor.lhs.false121.if.then127_crit_edge ], [ %call116, %if.end ]
  %arrayidx134 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv560, i64 %indvars.iv557
  br label %for.body130

for.body130:                                      ; preds = %if.then127, %for.body130
  %24 = phi ptr [ %.pre565, %if.then127 ], [ %call138, %for.body130 ]
  %indvars.iv529 = phi i64 [ 6, %if.then127 ], [ %indvars.iv.next530, %for.body130 ]
  %arrayidx137 = getelementptr inbounds [22 x i32], ptr %arrayidx134, i64 0, i64 %indvars.iv529
  %25 = load i32, ptr %arrayidx137, align 4, !tbaa !9
  %call138 = tail call ptr @BF_addEntry(ptr noundef %24, i32 noundef %25, i32 noundef %12) #8
  store ptr %call138, ptr %arrayidx40, align 8, !tbaa !5
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1
  %exitcond532.not = icmp eq i64 %indvars.iv.next530, 11
  br i1 %exitcond532.not, label %if.end142, label %for.body130, !llvm.loop !88

if.end142:                                        ; preds = %for.body130
  br i1 %cmp31, label %if.then150, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false121, %if.end142
  %arrayidx148 = getelementptr inbounds %struct.III_side_info_t, ptr %si, i64 0, i32 3, i64 %indvars.iv557, i64 2
  %26 = load i32, ptr %arrayidx148, align 4, !tbaa !9
  %cmp149 = icmp eq i32 %26, 0
  br i1 %cmp149, label %lor.lhs.false144.if.then150_crit_edge, label %lor.lhs.false167

lor.lhs.false144.if.then150_crit_edge:            ; preds = %lor.lhs.false144
  %.pre566.pre = load ptr, ptr %arrayidx40, align 8, !tbaa !5
  br label %if.then150

if.then150:                                       ; preds = %lor.lhs.false144.if.then150_crit_edge, %if.end142
  %.pre566 = phi ptr [ %.pre566.pre, %lor.lhs.false144.if.then150_crit_edge ], [ %call138, %if.end142 ]
  %arrayidx157 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv560, i64 %indvars.iv557
  br label %for.body153

for.body153:                                      ; preds = %if.then150, %for.body153
  %27 = phi ptr [ %.pre566, %if.then150 ], [ %call161, %for.body153 ]
  %indvars.iv533 = phi i64 [ 11, %if.then150 ], [ %indvars.iv.next534, %for.body153 ]
  %arrayidx160 = getelementptr inbounds [22 x i32], ptr %arrayidx157, i64 0, i64 %indvars.iv533
  %28 = load i32, ptr %arrayidx160, align 4, !tbaa !9
  %call161 = tail call ptr @BF_addEntry(ptr noundef %27, i32 noundef %28, i32 noundef %13) #8
  store ptr %call161, ptr %arrayidx40, align 8, !tbaa !5
  %indvars.iv.next534 = add nuw nsw i64 %indvars.iv533, 1
  %exitcond536.not = icmp eq i64 %indvars.iv.next534, 16
  br i1 %exitcond536.not, label %if.end165, label %for.body153, !llvm.loop !89

if.end165:                                        ; preds = %for.body153
  br i1 %cmp31, label %if.then173, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %lor.lhs.false144, %if.end165
  %arrayidx171 = getelementptr inbounds %struct.III_side_info_t, ptr %si, i64 0, i32 3, i64 %indvars.iv557, i64 3
  %29 = load i32, ptr %arrayidx171, align 4, !tbaa !9
  %cmp172 = icmp eq i32 %29, 0
  br i1 %cmp172, label %lor.lhs.false167.if.then173_crit_edge, label %if.end189

lor.lhs.false167.if.then173_crit_edge:            ; preds = %lor.lhs.false167
  %.pre567.pre = load ptr, ptr %arrayidx40, align 8, !tbaa !5
  br label %if.then173

if.then173:                                       ; preds = %lor.lhs.false167.if.then173_crit_edge, %if.end165
  %.pre567 = phi ptr [ %.pre567.pre, %lor.lhs.false167.if.then173_crit_edge ], [ %call161, %if.end165 ]
  %arrayidx180 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv560, i64 %indvars.iv557
  br label %for.body176

for.body176:                                      ; preds = %if.then173, %for.body176
  %30 = phi ptr [ %.pre567, %if.then173 ], [ %call184, %for.body176 ]
  %indvars.iv537 = phi i64 [ 16, %if.then173 ], [ %indvars.iv.next538, %for.body176 ]
  %arrayidx183 = getelementptr inbounds [22 x i32], ptr %arrayidx180, i64 0, i64 %indvars.iv537
  %31 = load i32, ptr %arrayidx183, align 4, !tbaa !9
  %call184 = tail call ptr @BF_addEntry(ptr noundef %30, i32 noundef %31, i32 noundef %13) #8
  store ptr %call184, ptr %arrayidx40, align 8, !tbaa !5
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1
  %exitcond540.not = icmp eq i64 %indvars.iv.next538, 21
  br i1 %exitcond540.not, label %if.end189, label %for.body176, !llvm.loop !90

if.end189:                                        ; preds = %for.body176, %for.inc98, %lor.lhs.false167
  %arrayidx193 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %indvars.iv560, i64 %indvars.iv557
  tail call fastcc void @Huffmancodebits(ptr noundef nonnull %arrayidx193, ptr noundef %arrayidx55, ptr noundef nonnull %arrayidx46)
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1
  %32 = load i32, ptr %stereo34, align 4, !tbaa !24
  %33 = sext i32 %32 to i64
  %cmp35 = icmp slt i64 %indvars.iv.next558, %33
  br i1 %cmp35, label %for.body36, label %for.inc197, !llvm.loop !91

for.inc197:                                       ; preds = %if.end189, %for.cond33.preheader
  %34 = phi i32 [ %10, %for.cond33.preheader ], [ %32, %if.end189 ]
  br i1 %cmp31, label %for.cond33.preheader, label %if.end299, !llvm.loop !92

for.body204:                                      ; preds = %for.body204.lr.ph, %if.end291
  %indvars.iv522 = phi i64 [ 0, %for.body204.lr.ph ], [ %indvars.iv.next523, %if.end291 ]
  %arrayidx209 = getelementptr inbounds [2 x ptr], ptr @scaleFactorsPH, i64 0, i64 %indvars.iv522
  %arrayidx216 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %gr211, i64 0, i64 %indvars.iv522
  %arrayidx222 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 0, i64 %indvars.iv522
  %block_type224 = getelementptr inbounds %struct.gr_info, ptr %arrayidx216, i64 0, i32 6
  %35 = load i32, ptr %block_type224, align 8, !tbaa !62
  %cmp225 = icmp eq i32 %35, 2
  %sfb_partition_table = getelementptr inbounds %struct.gr_info, ptr %arrayidx216, i64 0, i32 19
  br i1 %cmp225, label %for.body229, label %for.cond262.preheader

for.cond262.preheader:                            ; preds = %for.body204
  %arrayidx279 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 0, i64 %indvars.iv522
  br label %for.body264

for.body229:                                      ; preds = %for.body204, %for.end257
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %for.end257 ], [ 0, %for.body204 ]
  %sfb.6465 = phi i32 [ %sfb.7.lcssa, %for.end257 ], [ 0, %for.body204 ]
  %36 = load ptr, ptr %sfb_partition_table, align 8, !tbaa !93
  %arrayidx231 = getelementptr inbounds i32, ptr %36, i64 %indvars.iv518
  %37 = load i32, ptr %arrayidx231, align 4, !tbaa !9
  %div = udiv i32 %37, 3
  %arrayidx234 = getelementptr inbounds %struct.gr_info, ptr %arrayidx216, i64 0, i32 20, i64 %indvars.iv518
  %38 = load i32, ptr %arrayidx234, align 4, !tbaa !9
  %39 = icmp ult i32 %37, 3
  br i1 %39, label %for.end257, label %for.cond238.preheader.preheader

for.cond238.preheader.preheader:                  ; preds = %for.body229
  %40 = sext i32 %sfb.6465 to i64
  %.pre563.pre = load ptr, ptr %arrayidx209, align 8, !tbaa !5
  br label %for.cond238.preheader

for.cond238.preheader:                            ; preds = %for.cond238.preheader.preheader, %for.inc254
  %.pre563 = phi ptr [ %.pre563.pre, %for.cond238.preheader.preheader ], [ %call250, %for.inc254 ]
  %indvars.iv514 = phi i64 [ %40, %for.cond238.preheader.preheader ], [ %indvars.iv.next515, %for.inc254 ]
  %i.0462 = phi i32 [ 0, %for.cond238.preheader.preheader ], [ %inc255, %for.inc254 ]
  br label %for.body240

for.body240:                                      ; preds = %for.cond238.preheader, %for.body240
  %41 = phi ptr [ %.pre563, %for.cond238.preheader ], [ %call250, %for.body240 ]
  %indvars.iv510 = phi i64 [ 0, %for.cond238.preheader ], [ %indvars.iv.next511, %for.body240 ]
  %arrayidx249 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 0, i64 %indvars.iv522, i32 1, i64 %indvars.iv514, i64 %indvars.iv510
  %42 = load i32, ptr %arrayidx249, align 4, !tbaa !9
  %call250 = tail call ptr @BF_addEntry(ptr noundef %41, i32 noundef %42, i32 noundef %38) #8
  store ptr %call250, ptr %arrayidx209, align 8, !tbaa !5
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1
  %exitcond513.not = icmp eq i64 %indvars.iv.next511, 3
  br i1 %exitcond513.not, label %for.inc254, label %for.body240, !llvm.loop !94

for.inc254:                                       ; preds = %for.body240
  %inc255 = add nuw nsw i32 %i.0462, 1
  %indvars.iv.next515 = add nsw i64 %indvars.iv514, 1
  %exitcond517.not = icmp eq i32 %inc255, %div
  br i1 %exitcond517.not, label %for.end257.loopexit, label %for.cond238.preheader, !llvm.loop !95

for.end257.loopexit:                              ; preds = %for.inc254
  %43 = trunc i64 %indvars.iv.next515 to i32
  br label %for.end257

for.end257:                                       ; preds = %for.end257.loopexit, %for.body229
  %sfb.7.lcssa = phi i32 [ %sfb.6465, %for.body229 ], [ %43, %for.end257.loopexit ]
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1
  %exitcond521.not = icmp eq i64 %indvars.iv.next519, 4
  br i1 %exitcond521.not, label %if.end291, label %for.body229, !llvm.loop !96

for.body264:                                      ; preds = %for.cond262.preheader, %for.end287
  %indvars.iv506 = phi i64 [ 0, %for.cond262.preheader ], [ %indvars.iv.next507, %for.end287 ]
  %sfb.8458 = phi i32 [ 0, %for.cond262.preheader ], [ %sfb.9.lcssa, %for.end287 ]
  %44 = load ptr, ptr %sfb_partition_table, align 8, !tbaa !93
  %arrayidx268 = getelementptr inbounds i32, ptr %44, i64 %indvars.iv506
  %45 = load i32, ptr %arrayidx268, align 4, !tbaa !9
  %arrayidx272 = getelementptr inbounds %struct.gr_info, ptr %arrayidx216, i64 0, i32 20, i64 %indvars.iv506
  %46 = load i32, ptr %arrayidx272, align 4, !tbaa !9
  %cmp274453 = icmp sgt i32 %45, 0
  br i1 %cmp274453, label %for.body275.preheader, label %for.end287

for.body275.preheader:                            ; preds = %for.body264
  %47 = sext i32 %sfb.8458 to i64
  %.pre = load ptr, ptr %arrayidx209, align 8, !tbaa !5
  br label %for.body275

for.body275:                                      ; preds = %for.body275.preheader, %for.body275
  %48 = phi ptr [ %.pre, %for.body275.preheader ], [ %call283, %for.body275 ]
  %indvars.iv502 = phi i64 [ %47, %for.body275.preheader ], [ %indvars.iv.next503, %for.body275 ]
  %i.1455 = phi i32 [ 0, %for.body275.preheader ], [ %inc285, %for.body275 ]
  %arrayidx282 = getelementptr inbounds [22 x i32], ptr %arrayidx279, i64 0, i64 %indvars.iv502
  %49 = load i32, ptr %arrayidx282, align 4, !tbaa !9
  %call283 = tail call ptr @BF_addEntry(ptr noundef %48, i32 noundef %49, i32 noundef %46) #8
  store ptr %call283, ptr %arrayidx209, align 8, !tbaa !5
  %inc285 = add nuw nsw i32 %i.1455, 1
  %indvars.iv.next503 = add nsw i64 %indvars.iv502, 1
  %exitcond505.not = icmp eq i32 %inc285, %45
  br i1 %exitcond505.not, label %for.end287.loopexit, label %for.body275, !llvm.loop !97

for.end287.loopexit:                              ; preds = %for.body275
  %50 = trunc i64 %indvars.iv.next503 to i32
  br label %for.end287

for.end287:                                       ; preds = %for.end287.loopexit, %for.body264
  %sfb.9.lcssa = phi i32 [ %sfb.8458, %for.body264 ], [ %50, %for.end287.loopexit ]
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1
  %exitcond509.not = icmp eq i64 %indvars.iv.next507, 4
  br i1 %exitcond509.not, label %if.end291, label %for.body264, !llvm.loop !98

if.end291:                                        ; preds = %for.end287, %for.end257
  %arrayidx295 = getelementptr inbounds [2 x ptr], ptr @codedDataPH, i64 0, i64 %indvars.iv522
  tail call fastcc void @Huffmancodebits(ptr noundef nonnull %arrayidx295, ptr noundef %arrayidx222, ptr noundef nonnull %arrayidx216)
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1
  %51 = load i32, ptr %stereo34, align 4, !tbaa !24
  %52 = sext i32 %51 to i64
  %cmp203 = icmp slt i64 %indvars.iv.next523, %52
  br i1 %cmp203, label %for.body204, label %if.end299, !llvm.loop !99

if.end299:                                        ; preds = %if.end291, %for.inc197, %for.cond30.preheader, %for.cond201.preheader
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @drain_into_ancillary_data(i32 noundef %lengthInBits) unnamed_addr #0 {
entry:
  %div = sdiv i32 %lengthInBits, 32
  %rem = srem i32 %lengthInBits, 32
  %0 = load ptr, ptr @userFrameDataPH, align 8, !tbaa !5
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %part, align 8, !tbaa !26
  store i32 0, ptr %1, align 8, !tbaa !37
  %cmp5 = icmp sgt i32 %lengthInBits, 31
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %2 = phi ptr [ %call, %for.body ], [ %0, %entry ]
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call = tail call ptr @BF_addEntry(ptr noundef %2, i32 noundef 0, i32 noundef 32) #8
  store ptr %call, ptr @userFrameDataPH, align 8, !tbaa !5
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !100

for.end:                                          ; preds = %for.body, %entry
  %3 = phi ptr [ %0, %entry ], [ %call, %for.body ]
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %call1 = tail call ptr @BF_addEntry(ptr noundef %3, i32 noundef 0, i32 noundef %rem) #8
  store ptr %call1, ptr @userFrameDataPH, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

declare void @BF_BitstreamFrame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @III_FlushBitstream() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @PartHoldersInitialized, align 4, !tbaa !9
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @frameData, align 8, !tbaa !5
  %2 = load ptr, ptr @frameResults, align 8, !tbaa !5
  tail call void @BF_FlushBitstream(ptr noundef %1, ptr noundef %2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @BF_FlushBitstream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local i32 @abs_and_sign(ptr nocapture noundef %x) local_unnamed_addr #4 {
entry:
  %0 = load i32, ptr %x, align 4, !tbaa !9
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %mul = sub nsw i32 0, %0
  store i32 %mul, ptr %x, align 4, !tbaa !9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @L3_huffman_coder_count1(ptr nocapture noundef %pph, ptr nocapture noundef readonly %h, i32 noundef %v, i32 noundef %w, i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  %v.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4, !tbaa !9
  store i32 %w, ptr %w.addr, align 4, !tbaa !9
  store i32 %x, ptr %x.addr, align 4, !tbaa !9
  store i32 %y, ptr %y.addr, align 4, !tbaa !9
  %call = call i32 @abs_and_sign(ptr noundef nonnull %v.addr)
  %call1 = call i32 @abs_and_sign(ptr noundef nonnull %w.addr)
  %call2 = call i32 @abs_and_sign(ptr noundef nonnull %x.addr)
  %call3 = call i32 @abs_and_sign(ptr noundef nonnull %y.addr)
  %0 = load i32, ptr %v.addr, align 4, !tbaa !9
  %shl = shl i32 %0, 3
  %1 = load i32, ptr %w.addr, align 4, !tbaa !9
  %shl4 = shl i32 %1, 2
  %add = add nsw i32 %shl4, %shl
  %2 = load i32, ptr %x.addr, align 4, !tbaa !9
  %shl5 = shl i32 %2, 1
  %add6 = add nsw i32 %add, %shl5
  %3 = load i32, ptr %y.addr, align 4, !tbaa !9
  %add7 = add nsw i32 %add6, %3
  %table = getelementptr inbounds %struct.huffcodetab, ptr %h, i64 0, i32 2
  %4 = load ptr, ptr %table, align 8, !tbaa !101
  %idxprom = zext i32 %add7 to i64
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %idxprom
  %5 = load i64, ptr %arrayidx, align 8, !tbaa !103
  %hlen = getelementptr inbounds %struct.huffcodetab, ptr %h, i64 0, i32 3
  %6 = load ptr, ptr %hlen, align 8, !tbaa !104
  %arrayidx9 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %7 = load i8, ptr %arrayidx9, align 1, !tbaa !105
  %conv = zext i8 %7 to i32
  %8 = load ptr, ptr %pph, align 8, !tbaa !5
  %conv10 = trunc i64 %5 to i32
  %call11 = tail call ptr @BF_addEntry(ptr noundef %8, i32 noundef %conv10, i32 noundef %conv) #8
  store ptr %call11, ptr %pph, align 8, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %call
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select46 = zext i1 %not.tobool.not to i32
  %tobool12.not = icmp eq i32 %1, 0
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %entry
  %mul = shl i32 %spec.select, 1
  %add14 = add i32 %mul, %call1
  %inc15 = select i1 %tobool.not, i32 1, i32 2
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %entry
  %p.1 = phi i32 [ %add14, %if.then13 ], [ %spec.select, %entry ]
  %totalBits.1 = phi i32 [ %inc15, %if.then13 ], [ %spec.select46, %entry ]
  %tobool17.not = icmp eq i32 %2, 0
  br i1 %tobool17.not, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end16
  %mul19 = shl i32 %p.1, 1
  %add20 = add i32 %mul19, %call2
  %inc21 = add nuw nsw i32 %totalBits.1, 1
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16
  %p.2 = phi i32 [ %add20, %if.then18 ], [ %p.1, %if.end16 ]
  %totalBits.2 = phi i32 [ %inc21, %if.then18 ], [ %totalBits.1, %if.end16 ]
  %tobool23.not = icmp eq i32 %3, 0
  br i1 %tobool23.not, label %if.end28, label %if.then24

if.then24:                                        ; preds = %if.end22
  %mul25 = shl i32 %p.2, 1
  %add26 = add i32 %mul25, %call3
  %inc27 = add nuw nsw i32 %totalBits.2, 1
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end22
  %p.3 = phi i32 [ %add26, %if.then24 ], [ %p.2, %if.end22 ]
  %totalBits.3 = phi i32 [ %inc27, %if.then24 ], [ %totalBits.2, %if.end22 ]
  %call29 = tail call ptr @BF_addEntry(ptr noundef %call11, i32 noundef %p.3, i32 noundef %totalBits.3) #8
  store ptr %call29, ptr %pph, align 8, !tbaa !5
  %add30 = add nuw nsw i32 %totalBits.3, %conv
  ret i32 %add30
}

declare ptr @BF_addEntry(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local i32 @HuffmanCode(i32 noundef %table_select, i32 noundef %x, i32 noundef %y, ptr nocapture noundef %code, ptr nocapture noundef %ext, ptr nocapture noundef %cbits, ptr nocapture noundef %xbits) local_unnamed_addr #5 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !9
  store i32 %y, ptr %y.addr, align 4, !tbaa !9
  store i32 0, ptr %cbits, align 4, !tbaa !9
  store i32 0, ptr %xbits, align 4, !tbaa !9
  store i32 0, ptr %code, align 4, !tbaa !9
  store i32 0, ptr %ext, align 4, !tbaa !9
  %cmp = icmp eq i32 %table_select, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @abs_and_sign(ptr noundef nonnull %x.addr)
  %call1 = call i32 @abs_and_sign(ptr noundef nonnull %y.addr)
  %idxprom = sext i32 %table_select to i64
  %cmp2 = icmp sgt i32 %table_select, 15
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 8, !tbaa !106
  %1 = load i32, ptr %x.addr, align 4, !tbaa !9
  %cmp4 = icmp sgt i32 %1, 14
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  %sub = add nsw i32 %1, -15
  store i32 15, ptr %x.addr, align 4, !tbaa !9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3
  %2 = phi i32 [ 15, %if.then5 ], [ %1, %if.then3 ]
  %linbitsx.0 = phi i32 [ %sub, %if.then5 ], [ 0, %if.then3 ]
  %3 = load i32, ptr %y.addr, align 4, !tbaa !9
  %cmp7 = icmp sgt i32 %3, 14
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %sub9 = add nsw i32 %3, -15
  store i32 15, ptr %y.addr, align 4, !tbaa !9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %4 = phi i32 [ 15, %if.then8 ], [ %3, %if.end6 ]
  %linbitsy.0 = phi i32 [ %sub9, %if.then8 ], [ 0, %if.end6 ]
  %mul = shl nsw i32 %2, 4
  %add = add nsw i32 %mul, %4
  %table = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom, i32 2
  %5 = load ptr, ptr %table, align 8, !tbaa !101
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds i64, ptr %5, i64 %idxprom11
  %6 = load i64, ptr %arrayidx12, align 8, !tbaa !103
  %conv = trunc i64 %6 to i32
  store i32 %conv, ptr %code, align 4, !tbaa !9
  %hlen = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom, i32 3
  %7 = load ptr, ptr %hlen, align 8, !tbaa !104
  %arrayidx14 = getelementptr inbounds i8, ptr %7, i64 %idxprom11
  %8 = load i8, ptr %arrayidx14, align 1, !tbaa !105
  %conv15 = zext i8 %8 to i32
  store i32 %conv15, ptr %cbits, align 4, !tbaa !9
  %cmp16 = icmp sgt i32 %2, 14
  br i1 %cmp16, label %if.end20.thread, label %if.end20

if.end20.thread:                                  ; preds = %if.end10
  %9 = load i32, ptr %ext, align 4, !tbaa !9
  %or = or i32 %9, %linbitsx.0
  store i32 %or, ptr %ext, align 4, !tbaa !9
  %10 = load i32, ptr %xbits, align 4, !tbaa !9
  %add19 = add i32 %10, %0
  store i32 %add19, ptr %xbits, align 4, !tbaa !9
  br label %if.then23

if.end20:                                         ; preds = %if.end10
  %cmp21.not = icmp eq i32 %2, 0
  br i1 %cmp21.not, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end20.thread, %if.end20
  %11 = load i32, ptr %ext, align 4, !tbaa !9
  %shl = shl i32 %11, 1
  %or24 = or i32 %shl, %call
  store i32 %or24, ptr %ext, align 4, !tbaa !9
  %12 = load i32, ptr %xbits, align 4, !tbaa !9
  %add25 = add nsw i32 %12, 1
  store i32 %add25, ptr %xbits, align 4, !tbaa !9
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20
  %cmp27 = icmp sgt i32 %4, 14
  br i1 %cmp27, label %if.end33.thread, label %if.end33

if.end33.thread:                                  ; preds = %if.end26
  %13 = load i32, ptr %ext, align 4, !tbaa !9
  %shl30 = shl i32 %13, %0
  %or31 = or i32 %shl30, %linbitsy.0
  store i32 %or31, ptr %ext, align 4, !tbaa !9
  %14 = load i32, ptr %xbits, align 4, !tbaa !9
  %add32 = add i32 %14, %0
  store i32 %add32, ptr %xbits, align 4, !tbaa !9
  br label %if.end66.sink.split

if.end33:                                         ; preds = %if.end26
  %cmp34.not = icmp eq i32 %4, 0
  br i1 %cmp34.not, label %if.end66, label %if.end66.sink.split

if.else:                                          ; preds = %if.end
  %15 = load i32, ptr %x.addr, align 4, !tbaa !9
  %mul41 = shl nsw i32 %15, 4
  %16 = load i32, ptr %y.addr, align 4, !tbaa !9
  %add42 = add nsw i32 %mul41, %16
  %table43 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom, i32 2
  %17 = load ptr, ptr %table43, align 8, !tbaa !101
  %idxprom44 = zext i32 %add42 to i64
  %arrayidx45 = getelementptr inbounds i64, ptr %17, i64 %idxprom44
  %18 = load i64, ptr %arrayidx45, align 8, !tbaa !103
  %conv46 = trunc i64 %18 to i32
  store i32 %conv46, ptr %code, align 4, !tbaa !9
  %hlen47 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom, i32 3
  %19 = load ptr, ptr %hlen47, align 8, !tbaa !104
  %arrayidx49 = getelementptr inbounds i8, ptr %19, i64 %idxprom44
  %20 = load i8, ptr %arrayidx49, align 1, !tbaa !105
  %conv50 = zext i8 %20 to i32
  %21 = load i32, ptr %cbits, align 4, !tbaa !9
  %add51 = add nsw i32 %21, %conv50
  store i32 %add51, ptr %cbits, align 4, !tbaa !9
  %cmp52.not = icmp eq i32 %15, 0
  br i1 %cmp52.not, label %if.end58, label %if.then54

if.then54:                                        ; preds = %if.else
  %22 = load i32, ptr %code, align 4, !tbaa !9
  %shl55 = shl i32 %22, 1
  %or56 = or i32 %shl55, %call
  store i32 %or56, ptr %code, align 4, !tbaa !9
  %23 = load i32, ptr %cbits, align 4, !tbaa !9
  %add57 = add nsw i32 %23, 1
  store i32 %add57, ptr %cbits, align 4, !tbaa !9
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.else
  %cmp59.not = icmp eq i32 %16, 0
  br i1 %cmp59.not, label %if.end66, label %if.end66.sink.split

if.end66.sink.split:                              ; preds = %if.end58, %if.end33, %if.end33.thread
  %code.sink114 = phi ptr [ %ext, %if.end33.thread ], [ %ext, %if.end33 ], [ %code, %if.end58 ]
  %cbits.sink113 = phi ptr [ %xbits, %if.end33.thread ], [ %xbits, %if.end33 ], [ %cbits, %if.end58 ]
  %24 = load i32, ptr %code.sink114, align 4, !tbaa !9
  %shl62 = shl i32 %24, 1
  %or63 = or i32 %shl62, %call1
  store i32 %or63, ptr %code.sink114, align 4, !tbaa !9
  %25 = load i32, ptr %cbits.sink113, align 4, !tbaa !9
  %add64 = add nsw i32 %25, 1
  store i32 %add64, ptr %cbits.sink113, align 4, !tbaa !9
  br label %if.end66

if.end66:                                         ; preds = %if.end66.sink.split, %if.end58, %if.end33
  %26 = load i32, ptr %cbits, align 4, !tbaa !9
  %27 = load i32, ptr %xbits, align 4, !tbaa !9
  %add67 = add nsw i32 %27, %26
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end66
  %retval.0 = phi i32 [ %add67, %if.end66 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Huffmancodebits(ptr nocapture noundef %pph, ptr nocapture noundef readonly %ix, ptr nocapture noundef readonly %gi) unnamed_addr #0 {
entry:
  %cbits = alloca i32, align 4
  %xbits = alloca i32, align 4
  %code = alloca i32, align 4
  %ext = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cbits) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xbits) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext) #8
  %big_values = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 1
  %0 = load i32, ptr %big_values, align 4, !tbaa !58
  %mul = shl i32 %0, 1
  %tobool.not = icmp eq i32 %mul, 0
  br i1 %tobool.not, label %if.end82, label %if.then

if.then:                                          ; preds = %entry
  %mixed_block_flag = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 7
  %1 = load i32, ptr %mixed_block_flag, align 4, !tbaa !63
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.then
  %block_type = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 6
  %2 = load i32, ptr %block_type, align 8, !tbaa !62
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %for.cond.preheader, label %if.else39

for.cond.preheader:                               ; preds = %land.lhs.true
  %arrayidx10 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 8, i64 1
  %table_select = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 8
  br label %for.body

for.cond.loopexit:                                ; preds = %for.cond14.for.inc30_crit_edge.us, %for.body
  %.us-phi = phi i32 [ %bitsWritten.0206, %for.body ], [ %add28.us, %for.cond14.for.inc30_crit_edge.us ]
  %exitcond228.not = icmp eq i64 %indvars.iv.next226, 13
  br i1 %exitcond228.not, label %if.end82, label %for.body, !llvm.loop !107

for.body:                                         ; preds = %for.cond.preheader, %for.cond.loopexit
  %indvars.iv225 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next226, %for.cond.loopexit ]
  %bitsWritten.0206 = phi i32 [ 0, %for.cond.preheader ], [ %.us-phi, %for.cond.loopexit ]
  %arrayidx = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %indvars.iv225
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1
  %arrayidx5 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %indvars.iv.next226
  %4 = load i32, ptr %arrayidx5, align 4, !tbaa !9
  %cmp6 = icmp slt i32 %3, 12
  %table_select.arrayidx10 = select i1 %cmp6, ptr %table_select, ptr %arrayidx10
  %tableindex.0 = load i32, ptr %table_select.arrayidx10, align 4, !tbaa !9
  %cmp15199 = icmp slt i32 %3, %4
  br i1 %cmp15199, label %for.cond14.preheader.us.preheader, label %for.cond.loopexit

for.cond14.preheader.us.preheader:                ; preds = %for.body
  %5 = sext i32 %3 to i64
  %6 = sext i32 %4 to i64
  br label %for.cond14.preheader.us

for.cond14.preheader.us:                          ; preds = %for.cond14.preheader.us.preheader, %for.cond14.for.inc30_crit_edge.us
  %indvars.iv222 = phi i64 [ 0, %for.cond14.preheader.us.preheader ], [ %indvars.iv.next223, %for.cond14.for.inc30_crit_edge.us ]
  %bitsWritten.1203.us = phi i32 [ %bitsWritten.0206, %for.cond14.preheader.us.preheader ], [ %add28.us, %for.cond14.for.inc30_crit_edge.us ]
  br label %for.body16.us

for.body16.us:                                    ; preds = %for.cond14.preheader.us, %for.body16.us
  %indvars.iv218 = phi i64 [ %5, %for.cond14.preheader.us ], [ %indvars.iv.next219, %for.body16.us ]
  %bitsWritten.2200.us = phi i32 [ %bitsWritten.1203.us, %for.cond14.preheader.us ], [ %add28.us, %for.body16.us ]
  %arrayidx20.us = getelementptr inbounds [192 x [3 x i32]], ptr %ix, i64 0, i64 %indvars.iv218, i64 %indvars.iv222
  %7 = load i32, ptr %arrayidx20.us, align 4, !tbaa !9
  %8 = add nsw i64 %indvars.iv218, 1
  %arrayidx25.us = getelementptr inbounds [192 x [3 x i32]], ptr %ix, i64 0, i64 %8, i64 %indvars.iv222
  %9 = load i32, ptr %arrayidx25.us, align 4, !tbaa !9
  %call.us = call i32 @HuffmanCode(i32 noundef %tableindex.0, i32 noundef %7, i32 noundef %9, ptr noundef nonnull %code, ptr noundef nonnull %ext, ptr noundef nonnull %cbits, ptr noundef nonnull %xbits)
  %10 = load ptr, ptr %pph, align 8, !tbaa !5
  %11 = load i32, ptr %code, align 4, !tbaa !9
  %12 = load i32, ptr %cbits, align 4, !tbaa !9
  %call26.us = tail call ptr @BF_addEntry(ptr noundef %10, i32 noundef %11, i32 noundef %12) #8
  store ptr %call26.us, ptr %pph, align 8, !tbaa !5
  %13 = load i32, ptr %ext, align 4, !tbaa !9
  %14 = load i32, ptr %xbits, align 4, !tbaa !9
  %call27.us = tail call ptr @BF_addEntry(ptr noundef %call26.us, i32 noundef %13, i32 noundef %14) #8
  store ptr %call27.us, ptr %pph, align 8, !tbaa !5
  %add28.us = add nsw i32 %call.us, %bitsWritten.2200.us
  %indvars.iv.next219 = add i64 %indvars.iv218, 2
  %cmp15.us = icmp slt i64 %indvars.iv.next219, %6
  br i1 %cmp15.us, label %for.body16.us, label %for.cond14.for.inc30_crit_edge.us, !llvm.loop !108

for.cond14.for.inc30_crit_edge.us:                ; preds = %for.body16.us
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next223, 3
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.cond14.preheader.us, !llvm.loop !109

if.else39:                                        ; preds = %land.lhs.true
  %region0_count = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 10
  %15 = load i32, ptr %region0_count, align 8, !tbaa !67
  %add40 = add i32 %15, 1
  %idxprom41 = zext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom41
  %16 = load i32, ptr %arrayidx42, align 4, !tbaa !9
  %region1_count = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 11
  %17 = load i32, ptr %region1_count, align 4, !tbaa !68
  %add43 = add i32 %15, 2
  %add44 = add i32 %add43, %17
  %idxprom45 = zext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom45
  %18 = load i32, ptr %arrayidx46, align 4, !tbaa !9
  %phi.cast = sext i32 %18 to i64
  %phi.cast235 = sext i32 %16 to i64
  br label %if.end47

if.end47:                                         ; preds = %if.then, %if.else39
  %region2Start.0 = phi i64 [ %phi.cast, %if.else39 ], [ 576, %if.then ]
  %region1Start.0 = phi i64 [ %phi.cast235, %if.else39 ], [ 36, %if.then ]
  %cmp49195 = icmp sgt i32 %mul, 0
  br i1 %cmp49195, label %for.body50.lr.ph, label %if.end82

for.body50.lr.ph:                                 ; preds = %if.end47
  %arrayidx63 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 8, i64 2
  %arrayidx60 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 8, i64 1
  %table_select54 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 8
  %19 = zext i32 %mul to i64
  br label %for.body50

for.body50:                                       ; preds = %for.body50.lr.ph, %if.end77
  %indvars.iv = phi i64 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next, %if.end77 ]
  %bitsWritten.3196 = phi i32 [ 0, %for.body50.lr.ph ], [ %bitsWritten.4, %if.end77 ]
  %cmp52 = icmp slt i64 %indvars.iv, %region1Start.0
  br i1 %cmp52, label %if.end65, label %if.else56

if.else56:                                        ; preds = %for.body50
  %cmp57 = icmp slt i64 %indvars.iv, %region2Start.0
  %arrayidx60.arrayidx63 = select i1 %cmp57, ptr %arrayidx60, ptr %arrayidx63
  br label %if.end65

if.end65:                                         ; preds = %if.else56, %for.body50
  %tableindex51.0.in = phi ptr [ %table_select54, %for.body50 ], [ %arrayidx60.arrayidx63, %if.else56 ]
  %tableindex51.0 = load i32, ptr %tableindex51.0.in, align 4, !tbaa !9
  %tobool71.not = icmp eq i32 %tableindex51.0, 0
  br i1 %tobool71.not, label %if.end77, label %if.then72

if.then72:                                        ; preds = %if.end65
  %20 = or i64 %indvars.iv, 1
  %arrayidx70 = getelementptr inbounds i32, ptr %ix, i64 %20
  %21 = load i32, ptr %arrayidx70, align 4, !tbaa !9
  %arrayidx67 = getelementptr inbounds i32, ptr %ix, i64 %indvars.iv
  %22 = load i32, ptr %arrayidx67, align 4, !tbaa !9
  %call73 = call i32 @HuffmanCode(i32 noundef %tableindex51.0, i32 noundef %22, i32 noundef %21, ptr noundef nonnull %code, ptr noundef nonnull %ext, ptr noundef nonnull %cbits, ptr noundef nonnull %xbits)
  %23 = load ptr, ptr %pph, align 8, !tbaa !5
  %24 = load i32, ptr %code, align 4, !tbaa !9
  %25 = load i32, ptr %cbits, align 4, !tbaa !9
  %call74 = tail call ptr @BF_addEntry(ptr noundef %23, i32 noundef %24, i32 noundef %25) #8
  store ptr %call74, ptr %pph, align 8, !tbaa !5
  %26 = load i32, ptr %ext, align 4, !tbaa !9
  %27 = load i32, ptr %xbits, align 4, !tbaa !9
  %call75 = tail call ptr @BF_addEntry(ptr noundef %call74, i32 noundef %26, i32 noundef %27) #8
  store ptr %call75, ptr %pph, align 8, !tbaa !5
  %add76 = add nsw i32 %call73, %bitsWritten.3196
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %if.end65
  %bitsWritten.4 = phi i32 [ %add76, %if.then72 ], [ %bitsWritten.3196, %if.end65 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp49 = icmp ult i64 %indvars.iv.next, %19
  br i1 %cmp49, label %for.body50, label %if.end82, !llvm.loop !110

if.end82:                                         ; preds = %if.end77, %for.cond.loopexit, %if.end47, %entry
  %bitsWritten.5 = phi i32 [ 0, %entry ], [ 0, %if.end47 ], [ %.us-phi, %for.cond.loopexit ], [ %bitsWritten.4, %if.end77 ]
  %count1 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 2
  %28 = load i32, ptr %count1, align 8, !tbaa !111
  %mul83 = shl i32 %28, 2
  %add84 = add i32 %mul83, %mul
  %cmp86208 = icmp slt i32 %mul, %add84
  br i1 %cmp86208, label %for.body87.lr.ph, label %for.end106

for.body87.lr.ph:                                 ; preds = %if.end82
  %count1table_select = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 14
  %29 = sext i32 %mul to i64
  %30 = sext i32 %add84 to i64
  br label %for.body87

for.body87:                                       ; preds = %for.body87.lr.ph, %for.body87
  %indvars.iv229 = phi i64 [ %29, %for.body87.lr.ph ], [ %indvars.iv.next230, %for.body87 ]
  %bitsWritten.6209 = phi i32 [ %bitsWritten.5, %for.body87.lr.ph ], [ %add103, %for.body87 ]
  %arrayidx89 = getelementptr inbounds i32, ptr %ix, i64 %indvars.iv229
  %31 = load i32, ptr %arrayidx89, align 4, !tbaa !9
  %32 = or i64 %indvars.iv229, 1
  %arrayidx92 = getelementptr inbounds i32, ptr %ix, i64 %32
  %33 = load i32, ptr %arrayidx92, align 4, !tbaa !9
  %34 = add nsw i64 %indvars.iv229, 2
  %arrayidx95 = getelementptr inbounds i32, ptr %ix, i64 %34
  %35 = load i32, ptr %arrayidx95, align 4, !tbaa !9
  %36 = add nsw i64 %indvars.iv229, 3
  %arrayidx98 = getelementptr inbounds i32, ptr %ix, i64 %36
  %37 = load i32, ptr %arrayidx98, align 4, !tbaa !9
  %38 = load i32, ptr %count1table_select, align 8, !tbaa !71
  %add99 = add i32 %38, 32
  %idxprom100 = zext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom100
  %call102 = tail call i32 @L3_huffman_coder_count1(ptr noundef %pph, ptr noundef nonnull %arrayidx101, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37)
  %add103 = add nsw i32 %call102, %bitsWritten.6209
  %indvars.iv.next230 = add i64 %indvars.iv229, 4
  %cmp86 = icmp slt i64 %indvars.iv.next230, %30
  br i1 %cmp86, label %for.body87, label %for.end106, !llvm.loop !112

for.end106:                                       ; preds = %for.body87, %if.end82
  %bitsWritten.6.lcssa = phi i32 [ %bitsWritten.5, %if.end82 ], [ %add103, %for.body87 ]
  %39 = load i32, ptr %gi, align 8, !tbaa !56
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 15
  %40 = load i32, ptr %part2_length, align 4, !tbaa !113
  %41 = add i32 %40, %bitsWritten.6.lcssa
  %tobool108.not = icmp eq i32 %39, %41
  br i1 %tobool108.not, label %if.end119, label %if.then109

if.then109:                                       ; preds = %for.end106
  %sub107 = sub i32 %39, %41
  %rem = srem i32 %sub107, 32
  %div = sdiv i32 %sub107, 32
  %42 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str, i32 noundef %sub107) #10
  %43 = load ptr, ptr @stderr, align 8, !tbaa !5
  %44 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr %43) #10
  %sub107.off = add i32 %sub107, 31
  %45 = icmp ult i32 %sub107.off, 63
  br i1 %45, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.then109
  %.pre = load ptr, ptr %pph, align 8, !tbaa !5
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %46 = phi ptr [ %call113, %while.body ], [ %.pre, %while.body.preheader ]
  %stuffingWords.0213 = phi i32 [ %dec, %while.body ], [ %div, %while.body.preheader ]
  %dec = add nsw i32 %stuffingWords.0213, -1
  %call113 = tail call ptr @BF_addEntry(ptr noundef %46, i32 noundef -1, i32 noundef 32) #8
  store ptr %call113, ptr %pph, align 8, !tbaa !5
  %tobool112.not = icmp eq i32 %dec, 0
  br i1 %tobool112.not, label %while.end, label %while.body, !llvm.loop !114

while.end:                                        ; preds = %while.body, %if.then109
  %tobool114.not = icmp eq i32 %rem, 0
  br i1 %tobool114.not, label %if.end119, label %if.then115

if.then115:                                       ; preds = %while.end
  %47 = load ptr, ptr %pph, align 8, !tbaa !5
  %call116 = tail call ptr @BF_addEntry(ptr noundef %47, i32 noundef -1, i32 noundef %rem) #8
  store ptr %call116, ptr %pph, align 8, !tbaa !5
  br label %if.end119

if.end119:                                        ; preds = %while.end, %if.then115, %for.end106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xbits) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cbits) #8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @CRC_BF_addEntry(ptr noundef %thePH, i32 noundef %value, i32 noundef %length) unnamed_addr #0 {
entry:
  %crc.promoted = load i32, ptr @crc, align 4, !tbaa !9
  %tobool.not14 = icmp eq i32 %length, 0
  br i1 %tobool.not14, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %shl = shl nuw i32 1, %length
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %bit.016 = phi i32 [ %shr, %while.body ], [ %shl, %while.body.preheader ]
  %spec.select1315 = phi i32 [ %spec.select, %while.body ], [ %crc.promoted, %while.body.preheader ]
  %shr = lshr i32 %bit.016, 1
  %shl1 = shl i32 %spec.select1315, 1
  %0 = lshr i32 %spec.select1315, 15
  %.lobit = and i32 %0, 1
  %and3 = and i32 %shr, %value
  %tobool4.not = icmp eq i32 %and3, 0
  %lnot.ext6 = zext i1 %tobool4.not to i32
  %1 = xor i32 %.lobit, %lnot.ext6
  %tobool7.not = icmp eq i32 %1, 1
  %xor8 = xor i32 %shl1, 32773
  %spec.select = select i1 %tobool7.not, i32 %shl1, i32 %xor8
  %tobool.not = icmp ult i32 %bit.016, 4
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !115

while.end:                                        ; preds = %while.body, %entry
  %2 = phi i32 [ %crc.promoted, %entry ], [ %spec.select, %while.body ]
  %and9 = and i32 %2, 65535
  store i32 %and9, ptr @crc, align 4, !tbaa !9
  %call = tail call ptr @BF_addEntry(ptr noundef %thePH, i32 noundef %value, i32 noundef %length) #8
  ret ptr %call
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { cold }

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
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = !{!16, !10, i64 8}
!16 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !7, i64 12, !7, i64 48}
!17 = !{!18, !10, i64 0}
!18 = !{!"BF_FrameData", !10, i64 0, !10, i64 4, !10, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 48, !7, i64 80, !7, i64 112, !7, i64 144, !6, i64 176}
!19 = !{!20, !10, i64 200}
!20 = !{!"", !21, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !7, i64 120, !10, i64 124, !6, i64 128, !6, i64 136, !10, i64 144, !10, i64 148, !22, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !21, i64 168, !21, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !22, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !22, i64 232, !22, i64 236, !22, i64 240, !22, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!21 = !{!"long", !7, i64 0}
!22 = !{!"float", !7, i64 0}
!23 = !{!18, !10, i64 4}
!24 = !{!20, !10, i64 204}
!25 = !{!18, !10, i64 8}
!26 = !{!27, !6, i64 8}
!27 = !{!"BF_PartHolder", !10, i64 0, !6, i64 8}
!28 = !{!18, !6, i64 16}
!29 = !{!18, !6, i64 24}
!30 = distinct !{!30, !12, !13}
!31 = distinct !{!31, !12, !13}
!32 = distinct !{!32, !12, !13}
!33 = !{!18, !6, i64 176}
!34 = !{!35, !10, i64 8}
!35 = !{!"BF_FrameResults", !10, i64 0, !10, i64 4, !10, i64 8}
!36 = !{!16, !10, i64 0}
!37 = !{!38, !10, i64 0}
!38 = !{!"", !10, i64 0, !6, i64 8}
!39 = !{!20, !10, i64 192}
!40 = !{!20, !10, i64 60}
!41 = !{!20, !10, i64 220}
!42 = !{!20, !10, i64 224}
!43 = !{!20, !10, i64 196}
!44 = !{!20, !10, i64 68}
!45 = !{!20, !10, i64 36}
!46 = !{!20, !10, i64 228}
!47 = !{!20, !10, i64 52}
!48 = !{!20, !10, i64 56}
!49 = !{!20, !10, i64 164}
!50 = distinct !{!50, !12, !13}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = !{!16, !10, i64 4}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = !{!57, !10, i64 0}
!57 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !7, i64 32, !7, i64 44, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !6, i64 96, !7, i64 104}
!58 = !{!57, !10, i64 4}
!59 = !{!57, !10, i64 12}
!60 = !{!57, !10, i64 16}
!61 = !{!57, !10, i64 20}
!62 = !{!57, !10, i64 24}
!63 = !{!57, !10, i64 28}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = !{!57, !10, i64 56}
!68 = !{!57, !10, i64 60}
!69 = !{!57, !10, i64 64}
!70 = !{!57, !10, i64 68}
!71 = !{!57, !10, i64 72}
!72 = distinct !{!72, !12, !13}
!73 = distinct !{!73, !12, !13, !74}
!74 = !{!"llvm.loop.unswitch.partial.disable"}
!75 = distinct !{!75, !12, !13}
!76 = distinct !{!76, !12, !13}
!77 = distinct !{!77, !12, !13}
!78 = distinct !{!78, !12, !13}
!79 = distinct !{!79, !12, !13}
!80 = distinct !{!80, !12, !13}
!81 = distinct !{!81, !12, !13}
!82 = distinct !{!82, !12, !13}
!83 = distinct !{!83, !12, !13}
!84 = distinct !{!84, !12, !13}
!85 = distinct !{!85, !12, !13}
!86 = distinct !{!86, !12, !13}
!87 = distinct !{!87, !12, !13}
!88 = distinct !{!88, !12, !13}
!89 = distinct !{!89, !12, !13}
!90 = distinct !{!90, !12, !13}
!91 = distinct !{!91, !12, !13}
!92 = distinct !{!92, !12, !13, !74}
!93 = !{!57, !6, i64 96}
!94 = distinct !{!94, !12, !13}
!95 = distinct !{!95, !12, !13}
!96 = distinct !{!96, !12, !13}
!97 = distinct !{!97, !12, !13}
!98 = distinct !{!98, !12, !13}
!99 = distinct !{!99, !12, !13}
!100 = distinct !{!100, !12, !13}
!101 = !{!102, !6, i64 8}
!102 = !{!"huffcodetab", !10, i64 0, !10, i64 4, !6, i64 8, !6, i64 16}
!103 = !{!21, !21, i64 0}
!104 = !{!102, !6, i64 16}
!105 = !{!7, !7, i64 0}
!106 = !{!102, !10, i64 0}
!107 = distinct !{!107, !12, !13}
!108 = distinct !{!108, !12, !13}
!109 = distinct !{!109, !12, !13}
!110 = distinct !{!110, !12, !13}
!111 = !{!57, !10, i64 8}
!112 = distinct !{!112, !12, !13}
!113 = !{!57, !10, i64 76}
!114 = distinct !{!114, !12, !13}
!115 = distinct !{!115, !12, !13}
