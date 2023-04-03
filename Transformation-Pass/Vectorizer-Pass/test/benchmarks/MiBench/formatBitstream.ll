; ModuleID = 'formatBitstream.c'
source_filename = "formatBitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BF_FrameResults = type { i32, i32, i32 }
%struct.BF_FrameData = type { i32, i32, i32, ptr, ptr, [2 x ptr], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], ptr }
%struct.side_info_link = type { ptr, %struct.MYSideInfo }
%struct.MYSideInfo = type { i32, i32, i32, i32, ptr, ptr, [2 x ptr], [2 x [2 x ptr]] }
%struct.BF_BitstreamPart = type { i32, ptr }
%struct.BF_BitstreamElement = type { i32, i16 }
%struct.BF_PartHolder = type { i32, ptr }

@BitCount = internal unnamed_addr global i32 0, align 4
@ThisFrameSize = internal unnamed_addr global i32 0, align 4
@BitsRemaining = internal unnamed_addr global i32 0, align 4
@forwardFrameLength = internal unnamed_addr global i32 0, align 4
@forwardSILength = internal unnamed_addr global i32 0, align 4
@elements = internal unnamed_addr global i32 0, align 4
@side_queue_free = internal unnamed_addr global ptr null, align 8
@side_queue_head = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [31 x i8] c"cannot allocate side_info_link\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @InitFormatBitStream() local_unnamed_addr #0 {
entry:
  store i32 0, ptr @BitCount, align 4, !tbaa !5
  store i32 0, ptr @ThisFrameSize, align 4, !tbaa !5
  store i32 0, ptr @BitsRemaining, align 4, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_BitstreamFrame(ptr nocapture noundef readonly %frameInfo, ptr nocapture noundef writeonly %results) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @store_side_info(ptr noundef %frameInfo)
  store i32 %call, ptr %results, align 4, !tbaa !9
  %call1 = tail call fastcc i32 @main_data(ptr noundef %frameInfo, ptr noundef nonnull %results)
  %mainDataLength = getelementptr inbounds %struct.BF_FrameResults, ptr %results, i64 0, i32 1
  store i32 %call1, ptr %mainDataLength, align 4, !tbaa !11
  %call2 = tail call fastcc i32 @side_queue_elements()
  store i32 %call2, ptr @elements, align 4, !tbaa !5
  %0 = load i32, ptr @BitsRemaining, align 4, !tbaa !5
  %div = sdiv i32 %0, 8
  %1 = load i32, ptr @forwardFrameLength, align 4, !tbaa !5
  %div3 = sdiv i32 %1, 8
  %add = add nsw i32 %div3, %div
  %2 = load i32, ptr @forwardSILength, align 4, !tbaa !5
  %div4.neg = sdiv i32 %2, -8
  %sub = add nsw i32 %add, %div4.neg
  %nextBackPtr = getelementptr inbounds %struct.BF_FrameResults, ptr %results, i64 0, i32 2
  store i32 %sub, ptr %nextBackPtr, align 4, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @store_side_info(ptr nocapture noundef readonly %info) unnamed_addr #1 {
entry:
  %0 = load ptr, ptr @side_queue_free, align 8, !tbaa !13
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #14
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %1 = load ptr, ptr @stderr, align 8, !tbaa !13
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr %1) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

if.end:                                           ; preds = %if.then
  %header = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 3
  %3 = load ptr, ptr %header, align 8, !tbaa !15
  %4 = load i32, ptr %3, align 8, !tbaa !17
  %call4 = tail call ptr @BF_newPartHolder(i32 noundef %4)
  %headerPH = getelementptr inbounds %struct.side_info_link, ptr %call, i64 0, i32 1, i32 4
  store ptr %call4, ptr %headerPH, align 8, !tbaa !19
  %frameSI = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 4
  %5 = load ptr, ptr %frameSI, align 8, !tbaa !22
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %call6 = tail call ptr @BF_newPartHolder(i32 noundef %6)
  %frameSIPH = getelementptr inbounds %struct.side_info_link, ptr %call, i64 0, i32 1, i32 5
  store ptr %call6, ptr %frameSIPH, align 8, !tbaa !23
  %nChannels = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 2
  %7 = load i32, ptr %nChannels, align 8, !tbaa !24
  %cmp8218 = icmp sgt i32 %7, 0
  br i1 %cmp8218, label %for.body, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.body, %if.end
  %8 = phi i32 [ %7, %if.end ], [ %13, %for.body ]
  %nGranules = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 1
  %9 = load i32, ptr %nGranules, align 4, !tbaa !25
  %cmp15222 = icmp sgt i32 %9, 0
  %10 = icmp sgt i32 %8, 0
  %or.cond = select i1 %cmp15222, i1 %10, i1 false
  br i1 %or.cond, label %for.cond17.preheader, label %if.end40

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 5, i64 %indvars.iv
  %11 = load ptr, ptr %arrayidx, align 8, !tbaa !13
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %call10 = tail call ptr @BF_newPartHolder(i32 noundef %12)
  %arrayidx13 = getelementptr inbounds %struct.side_info_link, ptr %call, i64 0, i32 1, i32 6, i64 %indvars.iv
  store ptr %call10, ptr %arrayidx13, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = load i32, ptr %nChannels, align 8, !tbaa !24
  %14 = sext i32 %13 to i64
  %cmp8 = icmp slt i64 %indvars.iv.next, %14
  br i1 %cmp8, label %for.body, label %for.cond14.preheader, !llvm.loop !26

for.cond17.preheader:                             ; preds = %for.cond14.preheader, %for.inc35
  %15 = phi i32 [ %21, %for.inc35 ], [ %9, %for.cond14.preheader ]
  %16 = phi i32 [ %22, %for.inc35 ], [ %8, %for.cond14.preheader ]
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %for.inc35 ], [ 0, %for.cond14.preheader ]
  %cmp19220 = icmp sgt i32 %16, 0
  br i1 %cmp19220, label %for.body20, label %for.inc35

for.body20:                                       ; preds = %for.cond17.preheader, %for.body20
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %for.body20 ], [ 0, %for.cond17.preheader ]
  %arrayidx24 = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 6, i64 %indvars.iv243, i64 %indvars.iv240
  %17 = load ptr, ptr %arrayidx24, align 8, !tbaa !13
  %18 = load i32, ptr %17, align 8, !tbaa !17
  %call26 = tail call ptr @BF_newPartHolder(i32 noundef %18)
  %arrayidx31 = getelementptr inbounds %struct.side_info_link, ptr %call, i64 0, i32 1, i32 7, i64 %indvars.iv243, i64 %indvars.iv240
  store ptr %call26, ptr %arrayidx31, align 8, !tbaa !13
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1
  %19 = load i32, ptr %nChannels, align 8, !tbaa !24
  %20 = sext i32 %19 to i64
  %cmp19 = icmp slt i64 %indvars.iv.next241, %20
  br i1 %cmp19, label %for.body20, label %for.inc35.loopexit, !llvm.loop !29

for.inc35.loopexit:                               ; preds = %for.body20
  %.pre = load i32, ptr %nGranules, align 4, !tbaa !25
  br label %for.inc35

for.inc35:                                        ; preds = %for.inc35.loopexit, %for.cond17.preheader
  %21 = phi i32 [ %.pre, %for.inc35.loopexit ], [ %15, %for.cond17.preheader ]
  %22 = phi i32 [ %19, %for.inc35.loopexit ], [ %16, %for.cond17.preheader ]
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1
  %23 = sext i32 %21 to i64
  %cmp15 = icmp slt i64 %indvars.iv.next244, %23
  br i1 %cmp15, label %for.cond17.preheader, label %if.end40, !llvm.loop !30

if.else:                                          ; preds = %entry
  %24 = load ptr, ptr %0, align 8, !tbaa !32
  store ptr %24, ptr @side_queue_free, align 8, !tbaa !13
  store ptr null, ptr %0, align 8, !tbaa !32
  %nGranules43.phi.trans.insert = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 1
  %.pre255 = load i32, ptr %nGranules43.phi.trans.insert, align 4, !tbaa !25
  %nChannels46.phi.trans.insert = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 2
  %.pre256 = load i32, ptr %nChannels46.phi.trans.insert, align 8, !tbaa !24
  br label %if.end40

if.end40:                                         ; preds = %for.inc35, %for.cond14.preheader, %if.else
  %25 = phi i32 [ %.pre256, %if.else ], [ %8, %for.cond14.preheader ], [ %22, %for.inc35 ]
  %26 = phi i32 [ %.pre255, %if.else ], [ %9, %for.cond14.preheader ], [ %21, %for.inc35 ]
  %l.0 = phi ptr [ %0, %if.else ], [ %call, %for.cond14.preheader ], [ %call, %for.inc35 ]
  %27 = load i32, ptr %info, align 8, !tbaa !33
  %side_info41 = getelementptr inbounds %struct.side_info_link, ptr %l.0, i64 0, i32 1
  store i32 %27, ptr %side_info41, align 8, !tbaa !34
  %nGranules43 = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 1
  %nGranules45 = getelementptr inbounds %struct.side_info_link, ptr %l.0, i64 0, i32 1, i32 2
  store i32 %26, ptr %nGranules45, align 8, !tbaa !35
  %nChannels46 = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 2
  %nChannels48 = getelementptr inbounds %struct.side_info_link, ptr %l.0, i64 0, i32 1, i32 3
  store i32 %25, ptr %nChannels48, align 4, !tbaa !36
  %headerPH50 = getelementptr inbounds %struct.side_info_link, ptr %l.0, i64 0, i32 1, i32 4
  %28 = load ptr, ptr %headerPH50, align 8, !tbaa !19
  %header51 = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 3
  %29 = load ptr, ptr %header51, align 8, !tbaa !15
  %call52 = tail call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %28, ptr noundef %29)
  store ptr %call52, ptr %headerPH50, align 8, !tbaa !19
  %frameSIPH56 = getelementptr inbounds %struct.side_info_link, ptr %l.0, i64 0, i32 1, i32 5
  %30 = load ptr, ptr %frameSIPH56, align 8, !tbaa !23
  %frameSI57 = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 4
  %31 = load ptr, ptr %frameSI57, align 8, !tbaa !22
  %call58 = tail call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %30, ptr noundef %31)
  store ptr %call58, ptr %frameSIPH56, align 8, !tbaa !23
  %32 = load ptr, ptr %header51, align 8, !tbaa !15
  %call62 = tail call i32 @BF_PartLength(ptr noundef %32)
  %33 = load ptr, ptr %frameSI57, align 8, !tbaa !22
  %call64 = tail call i32 @BF_PartLength(ptr noundef %33)
  %add65 = add nsw i32 %call64, %call62
  %34 = load i32, ptr %nChannels46, align 8, !tbaa !24
  %cmp68225 = icmp sgt i32 %34, 0
  br i1 %cmp68225, label %for.body69, label %for.cond90.preheader

for.cond90.preheader:                             ; preds = %for.body69, %if.end40
  %35 = phi i32 [ %34, %if.end40 ], [ %41, %for.body69 ]
  %bits.0.lcssa = phi i32 [ %add65, %if.end40 ], [ %add86, %for.body69 ]
  %36 = load i32, ptr %nGranules43, align 4, !tbaa !25
  %cmp92232 = icmp sgt i32 %36, 0
  %37 = icmp sgt i32 %35, 0
  %or.cond263 = select i1 %cmp92232, i1 %37, i1 false
  br i1 %or.cond263, label %for.cond94.preheader, label %for.end128

for.body69:                                       ; preds = %if.end40, %for.body69
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %for.body69 ], [ 0, %if.end40 ]
  %bits.0227 = phi i32 [ %add86, %for.body69 ], [ %add65, %if.end40 ]
  %arrayidx73 = getelementptr inbounds %struct.side_info_link, ptr %l.0, i64 0, i32 1, i32 6, i64 %indvars.iv246
  %38 = load ptr, ptr %arrayidx73, align 8, !tbaa !13
  %arrayidx76 = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 5, i64 %indvars.iv246
  %39 = load ptr, ptr %arrayidx76, align 8, !tbaa !13
  %call77 = tail call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %38, ptr noundef %39)
  store ptr %call77, ptr %arrayidx73, align 8, !tbaa !13
  %40 = load ptr, ptr %arrayidx76, align 8, !tbaa !13
  %call85 = tail call i32 @BF_PartLength(ptr noundef %40)
  %add86 = add nsw i32 %call85, %bits.0227
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1
  %41 = load i32, ptr %nChannels46, align 8, !tbaa !24
  %42 = sext i32 %41 to i64
  %cmp68 = icmp slt i64 %indvars.iv.next247, %42
  br i1 %cmp68, label %for.body69, label %for.cond90.preheader, !llvm.loop !37

for.cond94.preheader:                             ; preds = %for.cond90.preheader, %for.inc126
  %43 = phi i32 [ %50, %for.inc126 ], [ %36, %for.cond90.preheader ]
  %44 = phi i32 [ %51, %for.inc126 ], [ %35, %for.cond90.preheader ]
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %for.inc126 ], [ 0, %for.cond90.preheader ]
  %bits.1235 = phi i32 [ %bits.2.lcssa, %for.inc126 ], [ %bits.0.lcssa, %for.cond90.preheader ]
  %cmp96228 = icmp sgt i32 %44, 0
  br i1 %cmp96228, label %for.body97, label %for.inc126

for.body97:                                       ; preds = %for.cond94.preheader, %for.body97
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %for.body97 ], [ 0, %for.cond94.preheader ]
  %bits.2230 = phi i32 [ %add122, %for.body97 ], [ %bits.1235, %for.cond94.preheader ]
  %arrayidx103 = getelementptr inbounds %struct.side_info_link, ptr %l.0, i64 0, i32 1, i32 7, i64 %indvars.iv252, i64 %indvars.iv249
  %45 = load ptr, ptr %arrayidx103, align 8, !tbaa !13
  %arrayidx108 = getelementptr inbounds %struct.BF_FrameData, ptr %info, i64 0, i32 6, i64 %indvars.iv252, i64 %indvars.iv249
  %46 = load ptr, ptr %arrayidx108, align 8, !tbaa !13
  %call109 = tail call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %45, ptr noundef %46)
  store ptr %call109, ptr %arrayidx103, align 8, !tbaa !13
  %47 = load ptr, ptr %arrayidx108, align 8, !tbaa !13
  %call121 = tail call i32 @BF_PartLength(ptr noundef %47)
  %add122 = add nsw i32 %call121, %bits.2230
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1
  %48 = load i32, ptr %nChannels46, align 8, !tbaa !24
  %49 = sext i32 %48 to i64
  %cmp96 = icmp slt i64 %indvars.iv.next250, %49
  br i1 %cmp96, label %for.body97, label %for.inc126.loopexit, !llvm.loop !38

for.inc126.loopexit:                              ; preds = %for.body97
  %.pre257 = load i32, ptr %nGranules43, align 4, !tbaa !25
  br label %for.inc126

for.inc126:                                       ; preds = %for.inc126.loopexit, %for.cond94.preheader
  %50 = phi i32 [ %43, %for.cond94.preheader ], [ %.pre257, %for.inc126.loopexit ]
  %51 = phi i32 [ %44, %for.cond94.preheader ], [ %48, %for.inc126.loopexit ]
  %bits.2.lcssa = phi i32 [ %bits.1235, %for.cond94.preheader ], [ %add122, %for.inc126.loopexit ]
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1
  %52 = sext i32 %50 to i64
  %cmp92 = icmp slt i64 %indvars.iv.next253, %52
  br i1 %cmp92, label %for.cond94.preheader, label %for.end128, !llvm.loop !39

for.end128:                                       ; preds = %for.inc126, %for.cond90.preheader
  %bits.1.lcssa = phi i32 [ %bits.0.lcssa, %for.cond90.preheader ], [ %bits.2.lcssa, %for.inc126 ]
  %SILength = getelementptr inbounds %struct.side_info_link, ptr %l.0, i64 0, i32 1, i32 1
  store i32 %bits.1.lcssa, ptr %SILength, align 4, !tbaa !40
  %53 = load ptr, ptr @side_queue_head, align 8, !tbaa !13
  %cmp130 = icmp eq ptr %53, null
  br i1 %cmp130, label %if.end136, label %while.cond

while.cond:                                       ; preds = %for.end128, %while.cond
  %f.0 = phi ptr [ %54, %while.cond ], [ %53, %for.end128 ]
  %54 = load ptr, ptr %f.0, align 8, !tbaa !32
  %tobool.not = icmp eq ptr %54, null
  br i1 %tobool.not, label %if.end136, label %while.cond, !llvm.loop !41

if.end136:                                        ; preds = %while.cond, %for.end128
  %f.0.lcssa.sink = phi ptr [ @side_queue_head, %for.end128 ], [ %f.0, %while.cond ]
  store ptr %l.0, ptr %f.0.lcssa.sink, align 8, !tbaa !13
  ret i32 %bits.1.lcssa
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @main_data(ptr nocapture noundef readonly %fi, ptr nocapture noundef writeonly %results) unnamed_addr #1 {
entry:
  %mainDataLength = getelementptr inbounds %struct.BF_FrameResults, ptr %results, i64 0, i32 1
  store i32 0, ptr %mainDataLength, align 4, !tbaa !11
  %nGranules = getelementptr inbounds %struct.BF_FrameData, ptr %fi, i64 0, i32 1
  %0 = load i32, ptr %nGranules, align 4, !tbaa !25
  %cmp50 = icmp sgt i32 %0, 0
  br i1 %cmp50, label %for.cond1.preheader.lr.ph, label %for.end20

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %nChannels = getelementptr inbounds %struct.BF_FrameData, ptr %fi, i64 0, i32 2
  %1 = load i32, ptr %nChannels, align 8, !tbaa !24
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %for.cond1.preheader, label %for.end20

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc18
  %3 = phi i32 [ %10, %for.inc18 ], [ %0, %for.cond1.preheader.lr.ph ]
  %4 = phi i32 [ %11, %for.inc18 ], [ %1, %for.cond1.preheader.lr.ph ]
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc18 ], [ 0, %for.cond1.preheader.lr.ph ]
  %bits.051 = phi i32 [ %bits.1.lcssa, %for.inc18 ], [ 0, %for.cond1.preheader.lr.ph ]
  %cmp247 = icmp sgt i32 %4, 0
  br i1 %cmp247, label %for.body3, label %for.inc18

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %bits.149 = phi i32 [ %add17, %for.body3 ], [ %bits.051, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds %struct.BF_FrameData, ptr %fi, i64 0, i32 7, i64 %indvars.iv57, i64 %indvars.iv
  %5 = load ptr, ptr %arrayidx5, align 8, !tbaa !13
  %call = tail call fastcc i32 @writePartMainData(ptr noundef %5)
  %add = add nsw i32 %call, %bits.149
  %arrayidx9 = getelementptr inbounds %struct.BF_FrameData, ptr %fi, i64 0, i32 8, i64 %indvars.iv57, i64 %indvars.iv
  %6 = load ptr, ptr %arrayidx9, align 8, !tbaa !13
  %call10 = tail call fastcc i32 @writePartMainData(ptr noundef %6)
  %add11 = add nsw i32 %add, %call10
  %arrayidx15 = getelementptr inbounds %struct.BF_FrameData, ptr %fi, i64 0, i32 9, i64 %indvars.iv57, i64 %indvars.iv
  %7 = load ptr, ptr %arrayidx15, align 8, !tbaa !13
  %call16 = tail call fastcc i32 @writePartMainData(ptr noundef %7)
  %add17 = add nsw i32 %add11, %call16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr %nChannels, align 8, !tbaa !24
  %9 = sext i32 %8 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp2, label %for.body3, label %for.inc18.loopexit, !llvm.loop !42

for.inc18.loopexit:                               ; preds = %for.body3
  %.pre = load i32, ptr %nGranules, align 4, !tbaa !25
  br label %for.inc18

for.inc18:                                        ; preds = %for.inc18.loopexit, %for.cond1.preheader
  %10 = phi i32 [ %3, %for.cond1.preheader ], [ %.pre, %for.inc18.loopexit ]
  %11 = phi i32 [ %4, %for.cond1.preheader ], [ %8, %for.inc18.loopexit ]
  %bits.1.lcssa = phi i32 [ %bits.051, %for.cond1.preheader ], [ %add17, %for.inc18.loopexit ]
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %12 = sext i32 %10 to i64
  %cmp = icmp slt i64 %indvars.iv.next58, %12
  br i1 %cmp, label %for.cond1.preheader, label %for.end20, !llvm.loop !43

for.end20:                                        ; preds = %for.inc18, %for.cond1.preheader.lr.ph, %entry
  %bits.0.lcssa = phi i32 [ 0, %entry ], [ 0, %for.cond1.preheader.lr.ph ], [ %bits.1.lcssa, %for.inc18 ]
  %userFrameData = getelementptr inbounds %struct.BF_FrameData, ptr %fi, i64 0, i32 10
  %13 = load ptr, ptr %userFrameData, align 8, !tbaa !44
  %call21 = tail call fastcc i32 @writePartMainData(ptr noundef %13)
  %add22 = add nsw i32 %call21, %bits.0.lcssa
  ret i32 %add22
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i32 @side_queue_elements() unnamed_addr #2 {
entry:
  store i32 0, ptr @forwardFrameLength, align 4, !tbaa !5
  %l.01 = load ptr, ptr @side_queue_head, align 8, !tbaa !13
  %tobool.not2 = icmp eq ptr %l.01, null
  br i1 %tobool.not2, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %l.05 = phi ptr [ %l.0, %for.body ], [ %l.01, %entry ]
  %elements.04 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %storemerge3 = phi i32 [ %add4, %for.body ], [ 0, %entry ]
  %0 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %inc = add nuw nsw i32 %elements.04, 1
  %side_info = getelementptr inbounds %struct.side_info_link, ptr %l.05, i64 0, i32 1
  %1 = load i32, ptr %side_info, align 8, !tbaa !34
  %add = add nsw i32 %0, %1
  %SILength3 = getelementptr inbounds %struct.side_info_link, ptr %l.05, i64 0, i32 1, i32 1
  %2 = load i32, ptr %SILength3, align 4, !tbaa !40
  %add4 = add nsw i32 %2, %storemerge3
  %l.0 = load ptr, ptr %l.05, align 8, !tbaa !13
  %tobool.not = icmp eq ptr %l.0, null
  br i1 %tobool.not, label %for.cond.for.end_crit_edge, label %for.body, !llvm.loop !45

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store i32 %add, ptr @forwardFrameLength, align 4, !tbaa !5
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %storemerge.lcssa = phi i32 [ %add4, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %elements.0.lcssa = phi i32 [ %inc, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  store i32 %storemerge.lcssa, ptr @forwardSILength, align 4, !tbaa !5
  ret i32 %elements.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_FlushBitstream(ptr nocapture noundef readnone %frameInfo, ptr nocapture noundef writeonly %results) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @elements, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @forwardFrameLength, align 4, !tbaa !5
  %2 = load i32, ptr @forwardSILength, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %2
  %sub.off = add i32 %sub, 31
  %3 = icmp ult i32 %sub.off, 63
  br i1 %3, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.then
  %div = sdiv i32 %sub, 32
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %wordsRemaining.09 = phi i32 [ %dec, %while.body ], [ %div, %while.body.preheader ]
  %dec = add nsw i32 %wordsRemaining.09, -1
  tail call fastcc void @WriteMainDataBits(i32 noundef 0, i32 noundef 32)
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %while.end, label %while.body, !llvm.loop !46

while.end:                                        ; preds = %while.body, %if.then
  %rem = srem i32 %sub, 32
  tail call fastcc void @WriteMainDataBits(i32 noundef 0, i32 noundef %rem)
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %4 = load i32, ptr @forwardFrameLength, align 4, !tbaa !5
  %5 = load i32, ptr @forwardSILength, align 4, !tbaa !5
  %sub2 = sub nsw i32 %4, %5
  %mainDataLength = getelementptr inbounds %struct.BF_FrameResults, ptr %results, i64 0, i32 1
  store i32 %sub2, ptr %mainDataLength, align 4, !tbaa !11
  store i32 %5, ptr %results, align 4, !tbaa !9
  %nextBackPtr = getelementptr inbounds %struct.BF_FrameResults, ptr %results, i64 0, i32 2
  store i32 0, ptr %nextBackPtr, align 4, !tbaa !12
  tail call fastcc void @free_side_queues()
  store i32 0, ptr @BitCount, align 4, !tbaa !5
  store i32 0, ptr @ThisFrameSize, align 4, !tbaa !5
  store i32 0, ptr @BitsRemaining, align 4, !tbaa !5
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @WriteMainDataBits(i32 noundef %val, i32 noundef %nbits) unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %nbits, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @BitCount, align 4, !tbaa !5
  %1 = load i32, ptr @ThisFrameSize, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %0, %1
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  %.pre = load i32, ptr @BitsRemaining, align 4, !tbaa !5
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %call = tail call fastcc i32 @write_side_info()
  store i32 %call, ptr @BitCount, align 4, !tbaa !5
  %2 = load i32, ptr @ThisFrameSize, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %call
  store i32 %sub, ptr @BitsRemaining, align 4, !tbaa !5
  br label %if.end3

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.then2
  %3 = phi i32 [ %.pre, %if.end.if.end3_crit_edge ], [ %sub, %if.then2 ]
  %cmp4 = icmp ult i32 %3, %nbits
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end3
  %sub6 = sub i32 %nbits, %3
  %shr = lshr i32 %val, %sub6
  tail call void @putMyBits(i32 noundef %shr, i32 noundef %3) #17
  %call8 = tail call fastcc i32 @write_side_info()
  store i32 %call8, ptr @BitCount, align 4, !tbaa !5
  %4 = load i32, ptr @ThisFrameSize, align 4, !tbaa !5
  %sub9 = sub nsw i32 %4, %call8
  store i32 %sub9, ptr @BitsRemaining, align 4, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %if.end3, %if.then5
  %nbits.sink = phi i32 [ %sub6, %if.then5 ], [ %nbits, %if.end3 ]
  tail call void @putMyBits(i32 noundef %val, i32 noundef %nbits.sink) #17
  %5 = load i32, ptr @BitCount, align 4, !tbaa !5
  %add = add i32 %5, %nbits.sink
  store i32 %add, ptr @BitCount, align 4, !tbaa !5
  %6 = load i32, ptr @BitsRemaining, align 4, !tbaa !5
  %sub11 = sub i32 %6, %nbits.sink
  store i32 %sub11, ptr @BitsRemaining, align 4, !tbaa !5
  br label %return

return:                                           ; preds = %entry, %if.end10
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @free_side_queues() unnamed_addr #1 {
entry:
  %0 = load ptr, ptr @side_queue_head, align 8, !tbaa !13
  %tobool.not14 = icmp eq ptr %0, null
  br i1 %tobool.not14, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %l.015 = phi ptr [ %1, %for.body ], [ %0, %entry ]
  %1 = load ptr, ptr %l.015, align 8, !tbaa !32
  tail call fastcc void @free_side_info_link(ptr noundef nonnull %l.015)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !47

for.end:                                          ; preds = %for.body, %entry
  store ptr null, ptr @side_queue_head, align 8, !tbaa !13
  %2 = load ptr, ptr @side_queue_free, align 8, !tbaa !13
  %tobool3.not16 = icmp eq ptr %2, null
  br i1 %tobool3.not16, label %for.end7, label %for.body4

for.body4:                                        ; preds = %for.end, %for.body4
  %l.117 = phi ptr [ %3, %for.body4 ], [ %2, %for.end ]
  %3 = load ptr, ptr %l.117, align 8, !tbaa !32
  tail call fastcc void @free_side_info_link(ptr noundef nonnull %l.117)
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %for.end7, label %for.body4, !llvm.loop !48

for.end7:                                         ; preds = %for.body4, %for.end
  store ptr null, ptr @side_queue_free, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @BF_PartLength(ptr nocapture noundef readonly %part) local_unnamed_addr #4 {
entry:
  %0 = load i32, ptr %part, align 8, !tbaa !17
  %cmp5.not = icmp eq i32 %0, 0
  br i1 %cmp5.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %part, i64 0, i32 1
  %1 = load ptr, ptr %element, align 8, !tbaa !49
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %bits.08 = phi i32 [ %add, %for.body ], [ 0, %for.body.preheader ]
  %i.07 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %ep.06 = phi ptr [ %incdec.ptr, %for.body ], [ %1, %for.body.preheader ]
  %length = getelementptr inbounds %struct.BF_BitstreamElement, ptr %ep.06, i64 0, i32 1
  %2 = load i16, ptr %length, align 4, !tbaa !50
  %conv = zext i16 %2 to i32
  %add = add nuw nsw i32 %bits.08, %conv
  %inc = add nuw i32 %i.07, 1
  %incdec.ptr = getelementptr inbounds %struct.BF_BitstreamElement, ptr %ep.06, i64 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !53

for.end:                                          ; preds = %for.body, %entry
  %bits.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  ret i32 %bits.0.lcssa
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local noalias ptr @BF_newPartHolder(i32 noundef %max_elements) local_unnamed_addr #5 {
entry:
  %call = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #14
  store i32 %max_elements, ptr %call, align 8, !tbaa !54
  %call2 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #14
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %call, i64 0, i32 1
  store ptr %call2, ptr %part, align 8, !tbaa !56
  %conv = sext i32 %max_elements to i64
  %call3 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #14
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %call2, i64 0, i32 1
  store ptr %call3, ptr %element, align 8, !tbaa !49
  ret ptr %call
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @BF_NewHolderFromBitstreamPart(ptr nocapture noundef readonly %thePart) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr %thePart, align 8, !tbaa !17
  %call = tail call ptr @BF_newPartHolder(i32 noundef %0)
  %call1 = tail call ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %call, ptr noundef nonnull %thePart)
  ret ptr %call1
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @BF_LoadHolderFromBitstreamPart(ptr noundef %theHolder, ptr nocapture noundef readonly %thePart) local_unnamed_addr #1 {
entry:
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %theHolder, i64 0, i32 1
  %0 = load ptr, ptr %part, align 8, !tbaa !56
  store i32 0, ptr %0, align 8, !tbaa !17
  %1 = load i32, ptr %thePart, align 8, !tbaa !17
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %thePart, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %theHolder.addr.08 = phi ptr [ %theHolder, %for.body.lr.ph ], [ %call, %for.body ]
  %2 = load ptr, ptr %element, align 8, !tbaa !49
  %arrayidx = getelementptr inbounds %struct.BF_BitstreamElement, ptr %2, i64 %indvars.iv
  %call = tail call ptr @BF_addElement(ptr noundef %theHolder.addr.08, ptr noundef %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %thePart, align 8, !tbaa !17
  %4 = zext i32 %3 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !57

for.end:                                          ; preds = %for.body, %entry
  %theHolder.addr.0.lcssa = phi ptr [ %theHolder, %entry ], [ %call, %for.body ]
  ret ptr %theHolder.addr.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @BF_addElement(ptr noundef %thePH, ptr nocapture noundef readonly %theElement) local_unnamed_addr #1 {
entry:
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %thePH, i64 0, i32 1
  %0 = load ptr, ptr %part, align 8, !tbaa !56
  %1 = load i32, ptr %0, align 8, !tbaa !17
  %add = add i32 %1, 1
  %2 = load i32, ptr %thePH, align 8, !tbaa !54
  %cmp = icmp sgt i32 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add1 = add i32 %1, 9
  %call = tail call ptr @BF_resizePartHolder(ptr noundef nonnull %thePH, i32 noundef %add1)
  %part2.phi.trans.insert = getelementptr inbounds %struct.BF_PartHolder, ptr %call, i64 0, i32 1
  %.pre = load ptr, ptr %part2.phi.trans.insert, align 8, !tbaa !56
  %.pre11 = load i32, ptr %.pre, align 8, !tbaa !17
  %.pre12 = add i32 %.pre11, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %inc.pre-phi = phi i32 [ %.pre12, %if.then ], [ %add, %entry ]
  %3 = phi i32 [ %.pre11, %if.then ], [ %1, %entry ]
  %4 = phi ptr [ %.pre, %if.then ], [ %0, %entry ]
  %retPH.0 = phi ptr [ %call, %if.then ], [ %thePH, %entry ]
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %element, align 8, !tbaa !49
  store i32 %inc.pre-phi, ptr %4, align 8, !tbaa !17
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.BF_BitstreamElement, ptr %5, i64 %idxprom
  %6 = load i64, ptr %theElement, align 4
  store i64 %6, ptr %arrayidx, align 4
  ret ptr %retPH.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @BF_resizePartHolder(ptr nocapture noundef %oldPH, i32 noundef %max_elements) local_unnamed_addr #1 {
entry:
  %call = tail call ptr @BF_newPartHolder(i32 noundef %max_elements)
  %0 = load i32, ptr %oldPH, align 8, !tbaa !54
  %1 = tail call i32 @llvm.smin.i32(i32 %0, i32 %max_elements)
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %call, i64 0, i32 1
  %2 = load ptr, ptr %part, align 8, !tbaa !56
  store i32 %1, ptr %2, align 8, !tbaa !17
  %cmp321 = icmp sgt i32 %1, 0
  br i1 %cmp321, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %2, i64 0, i32 1
  %part5 = getelementptr inbounds %struct.BF_PartHolder, ptr %oldPH, i64 0, i32 1
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %3 = load ptr, ptr %element, align 8, !tbaa !49
  %arrayidx = getelementptr inbounds %struct.BF_BitstreamElement, ptr %3, i64 %indvars.iv
  %4 = load ptr, ptr %part5, align 8, !tbaa !56
  %element6 = getelementptr inbounds %struct.BF_BitstreamPart, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %element6, align 8, !tbaa !49
  %arrayidx8 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %5, i64 %indvars.iv
  %6 = load i64, ptr %arrayidx8, align 4
  store i64 %6, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !58

for.end:                                          ; preds = %for.body, %entry
  %call9 = tail call ptr @BF_freePartHolder(ptr noundef nonnull %oldPH)
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind willreturn uwtable
define dso_local noalias ptr @BF_freePartHolder(ptr nocapture noundef %thePH) local_unnamed_addr #7 {
entry:
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %thePH, i64 0, i32 1
  %0 = load ptr, ptr %part, align 8, !tbaa !56
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %element, align 8, !tbaa !49
  tail call void @free(ptr noundef %1) #17
  %2 = load ptr, ptr %part, align 8, !tbaa !56
  tail call void @free(ptr noundef %2) #17
  tail call void @free(ptr noundef %thePH) #17
  ret ptr null
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @BF_addEntry(ptr noundef %thePH, i32 noundef %value, i32 noundef %length) local_unnamed_addr #1 {
entry:
  %myElement = alloca %struct.BF_BitstreamElement, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %myElement) #17
  store i32 %value, ptr %myElement, align 4, !tbaa !59
  %conv = trunc i32 %length to i16
  %length2 = getelementptr inbounds %struct.BF_BitstreamElement, ptr %myElement, i64 0, i32 1
  store i16 %conv, ptr %length2, align 4, !tbaa !50
  %tobool.not = icmp eq i32 %length, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @BF_addElement(ptr noundef %thePH, ptr noundef nonnull %myElement)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %thePH, %entry ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %myElement) #17
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @writePartMainData(ptr nocapture noundef readonly %part) unnamed_addr #1 {
entry:
  %0 = load i32, ptr %part, align 8, !tbaa !17
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %part, i64 0, i32 1
  %1 = load ptr, ptr %element, align 8, !tbaa !49
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %bits.04 = phi i32 [ %add, %for.body ], [ 0, %for.body.preheader ]
  %i.03 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %ep.02 = phi ptr [ %incdec.ptr, %for.body ], [ %1, %for.body.preheader ]
  %2 = load i32, ptr %ep.02, align 4, !tbaa !59
  %length = getelementptr inbounds %struct.BF_BitstreamElement, ptr %ep.02, i64 0, i32 1
  %3 = load i16, ptr %length, align 4, !tbaa !50
  %conv = zext i16 %3 to i32
  tail call fastcc void @WriteMainDataBits(i32 noundef %2, i32 noundef %conv)
  %4 = load i16, ptr %length, align 4, !tbaa !50
  %conv2 = zext i16 %4 to i32
  %add = add nuw nsw i32 %bits.04, %conv2
  %inc = add nuw i32 %i.03, 1
  %incdec.ptr = getelementptr inbounds %struct.BF_BitstreamElement, ptr %ep.02, i64 1
  %5 = load i32, ptr %part, align 8, !tbaa !17
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !60

for.end:                                          ; preds = %for.body, %entry
  %bits.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  ret i32 %bits.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @write_side_info() unnamed_addr #1 {
entry:
  %call = tail call fastcc ptr @get_side_info()
  %0 = load i32, ptr %call, align 8, !tbaa !61
  store i32 %0, ptr @ThisFrameSize, align 4, !tbaa !5
  %headerPH = getelementptr inbounds %struct.MYSideInfo, ptr %call, i64 0, i32 4
  %1 = load ptr, ptr %headerPH, align 8, !tbaa !62
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %part, align 8, !tbaa !56
  %call1 = tail call fastcc i32 @writePartSideInfo(ptr noundef %2)
  %frameSIPH = getelementptr inbounds %struct.MYSideInfo, ptr %call, i64 0, i32 5
  %3 = load ptr, ptr %frameSIPH, align 8, !tbaa !63
  %part2 = getelementptr inbounds %struct.BF_PartHolder, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %part2, align 8, !tbaa !56
  %call3 = tail call fastcc i32 @writePartSideInfo(ptr noundef %4)
  %add4 = add nsw i32 %call3, %call1
  %nChannels = getelementptr inbounds %struct.MYSideInfo, ptr %call, i64 0, i32 3
  %5 = load i32, ptr %nChannels, align 4, !tbaa !64
  %cmp49 = icmp sgt i32 %5, 0
  br i1 %cmp49, label %for.body, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.body, %entry
  %6 = phi i32 [ %5, %entry ], [ %11, %for.body ]
  %bits.0.lcssa = phi i32 [ %add4, %entry ], [ %add7, %for.body ]
  %nGranules = getelementptr inbounds %struct.MYSideInfo, ptr %call, i64 0, i32 2
  %7 = load i32, ptr %nGranules, align 8, !tbaa !65
  %cmp956 = icmp sgt i32 %7, 0
  %8 = icmp sgt i32 %6, 0
  %or.cond = select i1 %cmp956, i1 %8, i1 false
  br i1 %or.cond, label %for.cond11.preheader, label %for.end27

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %bits.051 = phi i32 [ %add7, %for.body ], [ %add4, %entry ]
  %arrayidx = getelementptr inbounds %struct.MYSideInfo, ptr %call, i64 0, i32 6, i64 %indvars.iv
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !13
  %part5 = getelementptr inbounds %struct.BF_PartHolder, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %part5, align 8, !tbaa !56
  %call6 = tail call fastcc i32 @writePartSideInfo(ptr noundef %10)
  %add7 = add nsw i32 %call6, %bits.051
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = load i32, ptr %nChannels, align 4, !tbaa !64
  %12 = sext i32 %11 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp, label %for.body, label %for.cond8.preheader, !llvm.loop !66

for.cond11.preheader:                             ; preds = %for.cond8.preheader, %for.inc25
  %13 = phi i32 [ %19, %for.inc25 ], [ %7, %for.cond8.preheader ]
  %14 = phi i32 [ %20, %for.inc25 ], [ %6, %for.cond8.preheader ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc25 ], [ 0, %for.cond8.preheader ]
  %bits.159 = phi i32 [ %bits.2.lcssa, %for.inc25 ], [ %bits.0.lcssa, %for.cond8.preheader ]
  %cmp1352 = icmp sgt i32 %14, 0
  br i1 %cmp1352, label %for.body14, label %for.inc25

for.body14:                                       ; preds = %for.cond11.preheader, %for.body14
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.body14 ], [ 0, %for.cond11.preheader ]
  %bits.254 = phi i32 [ %add21, %for.body14 ], [ %bits.159, %for.cond11.preheader ]
  %arrayidx18 = getelementptr inbounds %struct.MYSideInfo, ptr %call, i64 0, i32 7, i64 %indvars.iv66, i64 %indvars.iv63
  %15 = load ptr, ptr %arrayidx18, align 8, !tbaa !13
  %part19 = getelementptr inbounds %struct.BF_PartHolder, ptr %15, i64 0, i32 1
  %16 = load ptr, ptr %part19, align 8, !tbaa !56
  %call20 = tail call fastcc i32 @writePartSideInfo(ptr noundef %16)
  %add21 = add nsw i32 %call20, %bits.254
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %17 = load i32, ptr %nChannels, align 4, !tbaa !64
  %18 = sext i32 %17 to i64
  %cmp13 = icmp slt i64 %indvars.iv.next64, %18
  br i1 %cmp13, label %for.body14, label %for.inc25.loopexit, !llvm.loop !67

for.inc25.loopexit:                               ; preds = %for.body14
  %.pre = load i32, ptr %nGranules, align 8, !tbaa !65
  br label %for.inc25

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.cond11.preheader
  %19 = phi i32 [ %13, %for.cond11.preheader ], [ %.pre, %for.inc25.loopexit ]
  %20 = phi i32 [ %14, %for.cond11.preheader ], [ %17, %for.inc25.loopexit ]
  %bits.2.lcssa = phi i32 [ %bits.159, %for.cond11.preheader ], [ %add21, %for.inc25.loopexit ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %21 = sext i32 %19 to i64
  %cmp9 = icmp slt i64 %indvars.iv.next67, %21
  br i1 %cmp9, label %for.cond11.preheader, label %for.end27, !llvm.loop !68

for.end27:                                        ; preds = %for.inc25, %for.cond8.preheader
  %bits.1.lcssa = phi i32 [ %bits.0.lcssa, %for.cond8.preheader ], [ %bits.2.lcssa, %for.inc25 ]
  ret i32 %bits.1.lcssa
}

declare void @putMyBits(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @writePartSideInfo(ptr nocapture noundef readonly %part) unnamed_addr #1 {
entry:
  %0 = load i32, ptr %part, align 8, !tbaa !17
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %element = getelementptr inbounds %struct.BF_BitstreamPart, ptr %part, i64 0, i32 1
  %1 = load ptr, ptr %element, align 8, !tbaa !49
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %bits.04 = phi i32 [ %add, %for.body ], [ 0, %for.body.preheader ]
  %i.03 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %ep.02 = phi ptr [ %incdec.ptr, %for.body ], [ %1, %for.body.preheader ]
  %2 = load i32, ptr %ep.02, align 4, !tbaa !59
  %length = getelementptr inbounds %struct.BF_BitstreamElement, ptr %ep.02, i64 0, i32 1
  %3 = load i16, ptr %length, align 4, !tbaa !50
  %conv = zext i16 %3 to i32
  tail call void @putMyBits(i32 noundef %2, i32 noundef %conv) #17
  %4 = load i16, ptr %length, align 4, !tbaa !50
  %conv2 = zext i16 %4 to i32
  %add = add nuw nsw i32 %bits.04, %conv2
  %inc = add nuw i32 %i.03, 1
  %incdec.ptr = getelementptr inbounds %struct.BF_BitstreamElement, ptr %ep.02, i64 1
  %5 = load i32, ptr %part, align 8, !tbaa !17
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !69

for.end:                                          ; preds = %for.body, %entry
  %bits.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  ret i32 %bits.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define internal fastcc nonnull ptr @get_side_info() unnamed_addr #10 {
entry:
  %0 = load ptr, ptr @side_queue_free, align 8, !tbaa !13
  %1 = load ptr, ptr @side_queue_head, align 8, !tbaa !13
  %2 = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %2, ptr @side_queue_head, align 8, !tbaa !13
  store ptr %1, ptr @side_queue_free, align 8, !tbaa !13
  store ptr %0, ptr %1, align 8, !tbaa !32
  %side_info = getelementptr inbounds %struct.side_info_link, ptr %1, i64 0, i32 1
  ret ptr %side_info
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @free_side_info_link(ptr nocapture noundef %l) unnamed_addr #1 {
entry:
  %headerPH = getelementptr inbounds %struct.side_info_link, ptr %l, i64 0, i32 1, i32 4
  %0 = load ptr, ptr %headerPH, align 8, !tbaa !19
  %call = tail call ptr @BF_freePartHolder(ptr noundef %0)
  store ptr null, ptr %headerPH, align 8, !tbaa !19
  %frameSIPH = getelementptr inbounds %struct.side_info_link, ptr %l, i64 0, i32 1, i32 5
  %1 = load ptr, ptr %frameSIPH, align 8, !tbaa !23
  %call4 = tail call ptr @BF_freePartHolder(ptr noundef %1)
  store ptr null, ptr %frameSIPH, align 8, !tbaa !23
  %nChannels = getelementptr inbounds %struct.side_info_link, ptr %l, i64 0, i32 1, i32 3
  %2 = load i32, ptr %nChannels, align 4, !tbaa !36
  %cmp62 = icmp sgt i32 %2, 0
  br i1 %cmp62, label %for.body, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.body, %entry
  %3 = phi i32 [ %2, %entry ], [ %7, %for.body ]
  %nGranules = getelementptr inbounds %struct.side_info_link, ptr %l, i64 0, i32 1, i32 2
  %4 = load i32, ptr %nGranules, align 8, !tbaa !35
  %cmp1666 = icmp sgt i32 %4, 0
  %5 = icmp sgt i32 %3, 0
  %or.cond = select i1 %cmp1666, i1 %5, i1 false
  br i1 %or.cond, label %for.cond18.preheader, label %for.end40

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.side_info_link, ptr %l, i64 0, i32 1, i32 6, i64 %indvars.iv
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !13
  %call9 = tail call ptr @BF_freePartHolder(ptr noundef %6)
  store ptr null, ptr %arrayidx, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %7 = load i32, ptr %nChannels, align 4, !tbaa !36
  %8 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %8
  br i1 %cmp, label %for.body, label %for.cond14.preheader, !llvm.loop !70

for.cond18.preheader:                             ; preds = %for.cond14.preheader, %for.inc38
  %9 = phi i32 [ %14, %for.inc38 ], [ %4, %for.cond14.preheader ]
  %10 = phi i32 [ %15, %for.inc38 ], [ %3, %for.cond14.preheader ]
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.inc38 ], [ 0, %for.cond14.preheader ]
  %cmp2164 = icmp sgt i32 %10, 0
  br i1 %cmp2164, label %for.body22, label %for.inc38

for.body22:                                       ; preds = %for.cond18.preheader, %for.body22
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body22 ], [ 0, %for.cond18.preheader ]
  %arrayidx27 = getelementptr inbounds %struct.side_info_link, ptr %l, i64 0, i32 1, i32 7, i64 %indvars.iv74, i64 %indvars.iv71
  %11 = load ptr, ptr %arrayidx27, align 8, !tbaa !13
  %call28 = tail call ptr @BF_freePartHolder(ptr noundef %11)
  store ptr null, ptr %arrayidx27, align 8, !tbaa !13
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %12 = load i32, ptr %nChannels, align 4, !tbaa !36
  %13 = sext i32 %12 to i64
  %cmp21 = icmp slt i64 %indvars.iv.next72, %13
  br i1 %cmp21, label %for.body22, label %for.inc38.loopexit, !llvm.loop !71

for.inc38.loopexit:                               ; preds = %for.body22
  %.pre = load i32, ptr %nGranules, align 8, !tbaa !35
  br label %for.inc38

for.inc38:                                        ; preds = %for.inc38.loopexit, %for.cond18.preheader
  %14 = phi i32 [ %.pre, %for.inc38.loopexit ], [ %9, %for.cond18.preheader ]
  %15 = phi i32 [ %12, %for.inc38.loopexit ], [ %10, %for.cond18.preheader ]
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %16 = sext i32 %14 to i64
  %cmp16 = icmp slt i64 %indvars.iv.next75, %16
  br i1 %cmp16, label %for.cond18.preheader, label %for.end40, !llvm.loop !72

for.end40:                                        ; preds = %for.inc38, %for.cond14.preheader
  tail call void @free(ptr noundef nonnull %l) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { mustprogress nofree noinline nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { mustprogress noinline nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #11 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { cold }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"BF_FrameResults", !6, i64 0, !6, i64 4, !6, i64 8}
!11 = !{!10, !6, i64 4}
!12 = !{!10, !6, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!16, !14, i64 16}
!16 = !{!"BF_FrameData", !6, i64 0, !6, i64 4, !6, i64 8, !14, i64 16, !14, i64 24, !7, i64 32, !7, i64 48, !7, i64 80, !7, i64 112, !7, i64 144, !14, i64 176}
!17 = !{!18, !6, i64 0}
!18 = !{!"", !6, i64 0, !14, i64 8}
!19 = !{!20, !14, i64 24}
!20 = !{!"side_info_link", !14, i64 0, !21, i64 8}
!21 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !14, i64 16, !14, i64 24, !7, i64 32, !7, i64 48}
!22 = !{!16, !14, i64 24}
!23 = !{!20, !14, i64 32}
!24 = !{!16, !6, i64 8}
!25 = !{!16, !6, i64 4}
!26 = distinct !{!26, !27, !28}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !27, !28}
!30 = distinct !{!30, !27, !28, !31}
!31 = !{!"llvm.loop.unswitch.partial.disable"}
!32 = !{!20, !14, i64 0}
!33 = !{!16, !6, i64 0}
!34 = !{!20, !6, i64 8}
!35 = !{!20, !6, i64 16}
!36 = !{!20, !6, i64 20}
!37 = distinct !{!37, !27, !28}
!38 = distinct !{!38, !27, !28}
!39 = distinct !{!39, !27, !28, !31}
!40 = !{!20, !6, i64 12}
!41 = distinct !{!41, !27, !28}
!42 = distinct !{!42, !27, !28}
!43 = distinct !{!43, !27, !28, !31}
!44 = !{!16, !14, i64 176}
!45 = distinct !{!45, !27, !28}
!46 = distinct !{!46, !27, !28}
!47 = distinct !{!47, !27, !28}
!48 = distinct !{!48, !27, !28}
!49 = !{!18, !14, i64 8}
!50 = !{!51, !52, i64 4}
!51 = !{!"", !6, i64 0, !52, i64 4}
!52 = !{!"short", !7, i64 0}
!53 = distinct !{!53, !27, !28}
!54 = !{!55, !6, i64 0}
!55 = !{!"BF_PartHolder", !6, i64 0, !14, i64 8}
!56 = !{!55, !14, i64 8}
!57 = distinct !{!57, !27, !28}
!58 = distinct !{!58, !27, !28}
!59 = !{!51, !6, i64 0}
!60 = distinct !{!60, !27, !28}
!61 = !{!21, !6, i64 0}
!62 = !{!21, !14, i64 16}
!63 = !{!21, !14, i64 24}
!64 = !{!21, !6, i64 12}
!65 = !{!21, !6, i64 8}
!66 = distinct !{!66, !27, !28}
!67 = distinct !{!67, !27, !28}
!68 = distinct !{!68, !27, !28, !31}
!69 = distinct !{!69, !27, !28}
!70 = distinct !{!70, !27, !28}
!71 = distinct !{!71, !27, !28}
!72 = distinct !{!72, !27, !28, !31}
