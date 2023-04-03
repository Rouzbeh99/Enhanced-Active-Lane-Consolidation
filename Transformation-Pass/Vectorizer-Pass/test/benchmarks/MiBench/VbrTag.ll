; ModuleID = 'VbrTag.c'
source_filename = "VbrTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VBRTAGDATA = type { i32, i32, i32, i32, i32, i32, [100 x i8] }

@SizeOfEmptyFrame = dso_local local_unnamed_addr global [2 x [2 x i32]] [[2 x i32] [i32 32, i32 17], [2 x i32] [i32 17, i32 9]], align 16
@pVbrFrames = dso_local local_unnamed_addr global ptr null, align 8
@nVbrNumFrames = dso_local local_unnamed_addr global i32 0, align 4
@nVbrFrameBufferSize = dso_local local_unnamed_addr global i32 0, align 4
@GetVbrTag.sr_table = internal unnamed_addr constant [4 x i32] [i32 44100, i32 48000, i32 32000, i32 99999], align 16
@pbtStreamBuffer = internal global [216 x i8] zeroinitializer, align 16
@nZeroStreamSize = internal unnamed_addr global i32 0, align 4
@InitVbrTag.framesize = internal unnamed_addr constant [3 x i32] [i32 208, i32 192, i32 288], align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"illegal sampling frequency index\0A\00", align 1
@TotalFrameSize = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Xing VBR header problem...use -t\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"LAME%s\00", align 1

; Function Attrs: mustprogress noinline nounwind willreturn uwtable
define dso_local void @AddVbrFrame(i32 noundef %nStreamPos) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @pVbrFrames, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  %1 = load i32, ptr @nVbrFrameBufferSize, align 4
  %cmp1 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 100, ptr @nVbrFrameBufferSize, align 4, !tbaa !9
  %call = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #19
  store ptr %call, ptr @pVbrFrames, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = phi ptr [ %0, %entry ], [ %call, %if.then ]
  %3 = phi i32 [ %1, %entry ], [ 100, %if.then ]
  %4 = load i32, ptr @nVbrNumFrames, align 4, !tbaa !9
  %cmp2 = icmp eq i32 %4, %3
  br i1 %cmp2, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %mul5 = shl nsw i32 %3, 1
  store i32 %mul5, ptr @nVbrFrameBufferSize, align 4, !tbaa !9
  %conv6 = sext i32 %mul5 to i64
  %mul7 = shl nsw i64 %conv6, 2
  %call8 = tail call ptr @realloc(ptr noundef %2, i64 noundef %mul7) #20
  store ptr %call8, ptr @pVbrFrames, align 8, !tbaa !5
  %.pre = load i32, ptr @nVbrNumFrames, align 4, !tbaa !9
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  %5 = phi i32 [ %.pre, %if.then4 ], [ %4, %if.end ]
  %6 = phi ptr [ %call8, %if.then4 ], [ %2, %if.end ]
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @nVbrNumFrames, align 4, !tbaa !9
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  store i32 %nStreamPos, ptr %arrayidx, align 4, !tbaa !9
  ret void
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @CreateI4(ptr nocapture noundef writeonly %buf, i32 noundef %nValue) local_unnamed_addr #3 {
entry:
  %0 = lshr i32 %nValue, 24
  %conv = trunc i32 %0 to i8
  store i8 %conv, ptr %buf, align 1, !tbaa !11
  %1 = lshr i32 %nValue, 16
  %conv3 = trunc i32 %1 to i8
  %arrayidx4 = getelementptr inbounds i8, ptr %buf, i64 1
  store i8 %conv3, ptr %arrayidx4, align 1, !tbaa !11
  %2 = lshr i32 %nValue, 8
  %conv7 = trunc i32 %2 to i8
  %arrayidx8 = getelementptr inbounds i8, ptr %buf, i64 2
  store i8 %conv7, ptr %arrayidx8, align 1, !tbaa !11
  %conv10 = trunc i32 %nValue to i8
  %arrayidx11 = getelementptr inbounds i8, ptr %buf, i64 3
  store i8 %conv10, ptr %arrayidx11, align 1, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @CheckVbrTag(ptr nocapture noundef readonly %buf) local_unnamed_addr #4 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %buf, i64 1
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %arrayidx5 = getelementptr inbounds i8, ptr %buf, i64 3
  %1 = load i8, ptr %arrayidx5, align 1, !tbaa !11
  %2 = and i8 %0, 8
  %tobool.not = icmp eq i8 %2, 0
  %cmp13.not = icmp ugt i8 %1, -65
  br i1 %tobool.not, label %if.else12, label %if.then

if.then:                                          ; preds = %entry
  %.62 = select i1 %cmp13.not, i64 21, i64 36
  br label %if.end20

if.else12:                                        ; preds = %entry
  %.63 = select i1 %cmp13.not, i64 13, i64 21
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.then
  %.sink = phi i64 [ %.62, %if.then ], [ %.63, %if.else12 ]
  %add.ptr16 = getelementptr inbounds i8, ptr %buf, i64 %.sink
  %3 = load i8, ptr %add.ptr16, align 1, !tbaa !11
  %cmp24.not = icmp eq i8 %3, 88
  br i1 %cmp24.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.end20
  %arrayidx28 = getelementptr inbounds i8, ptr %add.ptr16, i64 1
  %4 = load i8, ptr %arrayidx28, align 1, !tbaa !11
  %cmp31.not = icmp eq i8 %4, 105
  br i1 %cmp31.not, label %if.end34, label %cleanup

if.end34:                                         ; preds = %if.end27
  %arrayidx35 = getelementptr inbounds i8, ptr %add.ptr16, i64 2
  %5 = load i8, ptr %arrayidx35, align 1, !tbaa !11
  %cmp38.not = icmp eq i8 %5, 110
  br i1 %cmp38.not, label %if.end41, label %cleanup

if.end41:                                         ; preds = %if.end34
  %arrayidx42 = getelementptr inbounds i8, ptr %add.ptr16, i64 3
  %6 = load i8, ptr %arrayidx42, align 1, !tbaa !11
  %cmp45.not = icmp eq i8 %6, 103
  %. = zext i1 %cmp45.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end34, %if.end27, %if.end20
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 0, %if.end27 ], [ 0, %if.end34 ], [ %., %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @GetVbrTag(ptr nocapture noundef writeonly %pTagData, ptr nocapture noundef readonly %buf) local_unnamed_addr #6 {
entry:
  %flags = getelementptr inbounds %struct.VBRTAGDATA, ptr %pTagData, i64 0, i32 2
  store i32 0, ptr %flags, align 4, !tbaa !12
  %arrayidx = getelementptr inbounds i8, ptr %buf, i64 1
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %1 = lshr i8 %0, 3
  %2 = and i8 %1, 1
  %and = zext i8 %2 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %buf, i64 2
  %3 = load i8, ptr %arrayidx1, align 1, !tbaa !11
  %4 = lshr i8 %3, 2
  %5 = and i8 %4, 3
  %arrayidx5 = getelementptr inbounds i8, ptr %buf, i64 3
  %6 = load i8, ptr %arrayidx5, align 1, !tbaa !11
  %tobool.not = icmp eq i8 %2, 0
  %cmp13.not = icmp ugt i8 %6, -65
  br i1 %tobool.not, label %if.else12, label %if.then

if.then:                                          ; preds = %entry
  %. = select i1 %cmp13.not, i64 21, i64 36
  br label %if.end20

if.else12:                                        ; preds = %entry
  %.141 = select i1 %cmp13.not, i64 13, i64 21
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.then
  %.sink = phi i64 [ %., %if.then ], [ %.141, %if.else12 ]
  %add.ptr16 = getelementptr inbounds i8, ptr %buf, i64 %.sink
  %7 = load i8, ptr %add.ptr16, align 1, !tbaa !11
  %cmp24.not = icmp eq i8 %7, 88
  br i1 %cmp24.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.end20
  %arrayidx28 = getelementptr inbounds i8, ptr %add.ptr16, i64 1
  %8 = load i8, ptr %arrayidx28, align 1, !tbaa !11
  %cmp31.not = icmp eq i8 %8, 105
  br i1 %cmp31.not, label %if.end34, label %cleanup

if.end34:                                         ; preds = %if.end27
  %arrayidx35 = getelementptr inbounds i8, ptr %add.ptr16, i64 2
  %9 = load i8, ptr %arrayidx35, align 1, !tbaa !11
  %cmp38.not = icmp eq i8 %9, 110
  br i1 %cmp38.not, label %if.end41, label %cleanup

if.end41:                                         ; preds = %if.end34
  %arrayidx42 = getelementptr inbounds i8, ptr %add.ptr16, i64 3
  %10 = load i8, ptr %arrayidx42, align 1, !tbaa !11
  %cmp45.not = icmp eq i8 %10, 103
  br i1 %cmp45.not, label %if.end48, label %cleanup

if.end48:                                         ; preds = %if.end41
  %add.ptr49 = getelementptr inbounds i8, ptr %add.ptr16, i64 4
  store i32 %and, ptr %pTagData, align 4, !tbaa !14
  %11 = zext i8 %5 to i64
  %arrayidx51 = getelementptr inbounds [4 x i32], ptr @GetVbrTag.sr_table, i64 0, i64 %11
  %12 = load i32, ptr %arrayidx51, align 4, !tbaa !9
  %samprate = getelementptr inbounds %struct.VBRTAGDATA, ptr %pTagData, i64 0, i32 1
  %13 = xor i8 %2, 1
  %14 = zext i8 %13 to i32
  %spec.select = ashr i32 %12, %14
  store i32 %spec.select, ptr %samprate, align 4, !tbaa !15
  %call = tail call fastcc i32 @ExtractI4(ptr noundef nonnull %add.ptr49)
  store i32 %call, ptr %flags, align 4, !tbaa !12
  %add.ptr59 = getelementptr inbounds i8, ptr %add.ptr16, i64 8
  %and60 = and i32 %call, 1
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end65, label %if.then62

if.then62:                                        ; preds = %if.end48
  %call63 = tail call fastcc i32 @ExtractI4(ptr noundef nonnull %add.ptr59)
  %frames = getelementptr inbounds %struct.VBRTAGDATA, ptr %pTagData, i64 0, i32 3
  store i32 %call63, ptr %frames, align 4, !tbaa !16
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr16, i64 12
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end48
  %buf.addr.1 = phi ptr [ %add.ptr64, %if.then62 ], [ %add.ptr59, %if.end48 ]
  %and66 = and i32 %call, 2
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end71, label %if.then68

if.then68:                                        ; preds = %if.end65
  %call69 = tail call fastcc i32 @ExtractI4(ptr noundef nonnull %buf.addr.1)
  %bytes = getelementptr inbounds %struct.VBRTAGDATA, ptr %pTagData, i64 0, i32 4
  store i32 %call69, ptr %bytes, align 4, !tbaa !17
  %add.ptr70 = getelementptr inbounds i8, ptr %buf.addr.1, i64 4
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end65
  %buf.addr.2 = phi ptr [ %add.ptr70, %if.then68 ], [ %buf.addr.1, %if.end65 ]
  %and72 = and i32 %call, 4
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end87, label %for.body

for.body:                                         ; preds = %if.end71, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end71 ]
  %arrayidx81 = getelementptr inbounds i8, ptr %buf.addr.2, i64 %indvars.iv
  %15 = load i8, ptr %arrayidx81, align 1, !tbaa !11
  %arrayidx84 = getelementptr inbounds %struct.VBRTAGDATA, ptr %pTagData, i64 0, i32 6, i64 %indvars.iv
  store i8 %15, ptr %arrayidx84, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %if.end85, label %for.body, !llvm.loop !18

if.end85:                                         ; preds = %for.body
  %add.ptr86 = getelementptr inbounds i8, ptr %buf.addr.2, i64 100
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end71
  %buf.addr.3 = phi ptr [ %add.ptr86, %if.end85 ], [ %buf.addr.2, %if.end71 ]
  %vbr_scale = getelementptr inbounds %struct.VBRTAGDATA, ptr %pTagData, i64 0, i32 5
  store i32 -1, ptr %vbr_scale, align 4, !tbaa !21
  %and88 = and i32 %call, 8
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %cleanup, label %if.then90

if.then90:                                        ; preds = %if.end87
  %call91 = tail call fastcc i32 @ExtractI4(ptr noundef nonnull %buf.addr.3)
  store i32 %call91, ptr %vbr_scale, align 4, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.then90, %if.end41, %if.end34, %if.end27, %if.end20
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 0, %if.end27 ], [ 0, %if.end34 ], [ 0, %if.end41 ], [ 1, %if.then90 ], [ 1, %if.end87 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define internal fastcc i32 @ExtractI4(ptr nocapture noundef readonly %buf) unnamed_addr #7 {
entry:
  %0 = load i8, ptr %buf, align 1, !tbaa !11
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %buf, i64 1
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !11
  %conv2 = zext i8 %1 to i32
  %2 = shl nuw nsw i32 %conv, 16
  %3 = shl nuw nsw i32 %conv2, 8
  %shl3 = or i32 %3, %2
  %arrayidx4 = getelementptr inbounds i8, ptr %buf, i64 2
  %4 = load i8, ptr %arrayidx4, align 1, !tbaa !11
  %conv5 = zext i8 %4 to i32
  %or6 = or i32 %shl3, %conv5
  %shl7 = shl nuw i32 %or6, 8
  %arrayidx8 = getelementptr inbounds i8, ptr %buf, i64 3
  %5 = load i8, ptr %arrayidx8, align 1, !tbaa !11
  %conv9 = zext i8 %5 to i32
  %or10 = or i32 %shl7, %conv9
  ret i32 %or10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @InitVbrTag(ptr noundef %pBs, i32 noundef %nVersion, i32 noundef %nMode, i32 noundef %SampIndex) local_unnamed_addr #8 {
entry:
  store ptr null, ptr @pVbrFrames, align 8, !tbaa !5
  store i32 0, ptr @nVbrNumFrames, align 4, !tbaa !9
  store i32 0, ptr @nVbrFrameBufferSize, align 4, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @pbtStreamBuffer, i8 0, i64 216, i1 false)
  %cmp1 = icmp eq i32 %nMode, 3
  %idxprom2 = sext i32 %nVersion to i64
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx4 = getelementptr inbounds [2 x [2 x i32]], ptr @SizeOfEmptyFrame, i64 0, i64 %idxprom2, i64 1
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx6 = getelementptr inbounds [2 x [2 x i32]], ptr @SizeOfEmptyFrame, i64 0, i64 %idxprom2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge.in.in = phi ptr [ %arrayidx6, %if.else ], [ %arrayidx4, %if.then ]
  %storemerge.in = load i32, ptr %storemerge.in.in, align 4, !tbaa !9
  %storemerge = add nsw i32 %storemerge.in, 4
  store i32 %storemerge, ptr @nZeroStreamSize, align 4, !tbaa !9
  %cmp9 = icmp sgt i32 %SampIndex, 2
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 33, i64 1, ptr %0) #21
  tail call void @exit(i32 noundef -1) #22
  unreachable

if.end11:                                         ; preds = %if.end
  %idxprom12 = sext i32 %SampIndex to i64
  %arrayidx13 = getelementptr inbounds [3 x i32], ptr @InitVbrTag.framesize, i64 0, i64 %idxprom12
  %2 = load i32, ptr %arrayidx13, align 4, !tbaa !9
  store i32 %2, ptr @TotalFrameSize, align 4, !tbaa !9
  %add15 = add nsw i32 %storemerge.in, 144
  %cmp16 = icmp slt i32 %2, %add15
  br i1 %cmp16, label %if.then17, label %for.body22

if.then17:                                        ; preds = %if.end11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 33, i64 1, ptr %3) #21
  tail call void @exit(i32 noundef -1) #22
  unreachable

for.body22:                                       ; preds = %if.end11, %for.body22
  %i.134 = phi i32 [ %inc24, %for.body22 ], [ 0, %if.end11 ]
  tail call void @putbits(ptr noundef %pBs, i32 noundef 0, i32 noundef 8) #23
  %inc24 = add nuw nsw i32 %i.134, 1
  %5 = load i32, ptr @TotalFrameSize, align 4, !tbaa !9
  %cmp21 = icmp slt i32 %inc24, %5
  br i1 %cmp21, label %for.body22, label %for.end25, !llvm.loop !22

for.end25:                                        ; preds = %for.body22
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare void @putbits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PutVbrTag(ptr nocapture noundef readonly %lpszFileName, i32 noundef %nVbrScale, i32 noundef %nVersion) local_unnamed_addr #8 {
entry:
  %btToc = alloca [100 x i8], align 16
  %str1 = alloca [80 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %btToc) #23
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %str1) #23
  %0 = load i32, ptr @nVbrNumFrames, align 4, !tbaa !9
  %cmp = icmp eq i32 %0, 0
  %1 = load ptr, ptr @pVbrFrames, align 8
  %cmp1 = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call ptr @fopen(ptr noundef %lpszFileName, ptr noundef nonnull @.str.2)
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @pbtStreamBuffer, i8 0, i64 216, i1 false)
  %call5 = tail call i32 @fseek(ptr noundef nonnull %call, i64 noundef 0, i32 noundef 2)
  %call6 = tail call i64 @ftell(ptr noundef nonnull %call)
  %cmp7 = icmp eq i64 %call6, 0
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end4
  %2 = load i32, ptr @TotalFrameSize, align 4, !tbaa !9
  %conv = sext i32 %2 to i64
  %call10 = tail call i32 @fseek(ptr noundef nonnull %call, i64 noundef %conv, i32 noundef 0)
  %call11 = tail call i64 @fread(ptr noundef nonnull @pbtStreamBuffer, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %call)
  store i8 -1, ptr @pbtStreamBuffer, align 16, !tbaa !11
  %cmp12 = icmp eq i32 %nVersion, 0
  %. = select i1 %cmp12, i8 -5, i8 -13
  %.127 = select i1 %cmp12, i8 80, i8 -128
  store i8 %., ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 1), align 1, !tbaa !11
  %3 = load i8, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 2), align 2, !tbaa !11
  %4 = and i8 %3, 12
  %or23 = or i8 %4, %.127
  store i8 %or23, ptr getelementptr inbounds ([216 x i8], ptr @pbtStreamBuffer, i64 0, i64 2), align 2, !tbaa !11
  %call26 = tail call i32 @fseek(ptr noundef nonnull %call, i64 noundef 0, i32 noundef 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %btToc, i8 0, i64 100, i1 false)
  %5 = load i32, ptr @nVbrNumFrames, align 4, !tbaa !9
  %conv30 = sitofp i32 %5 to double
  %6 = load ptr, ptr @pVbrFrames, align 8, !tbaa !5
  %conv35 = sitofp i64 %call6 to float
  %7 = fdiv fast float 1.000000e+00, %conv35
  br label %for.body

for.body:                                         ; preds = %if.end9, %if.end39
  %indvars.iv = phi i64 [ 1, %if.end9 ], [ %indvars.iv.next, %if.end39 ]
  %8 = trunc i64 %indvars.iv to i32
  %conv29 = sitofp i32 %8 to double
  %mul = fmul fast double %conv29, 1.000000e-02
  %mul31 = fmul fast double %mul, %conv30
  %9 = tail call fast double @llvm.floor.f64(double %mul31)
  %conv32 = fptosi double %9 to i32
  %idxprom = sext i32 %conv32 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %conv33 = sitofp i32 %10 to float
  %mul34 = fmul fast float %conv33, 2.560000e+02
  %11 = fmul fast float %mul34, %7
  %cmp36 = fcmp fast ogt float %11, 2.550000e+02
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.body
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %for.body
  %fRelStreamPos.0 = phi float [ 2.550000e+02, %if.then38 ], [ %11, %for.body ]
  %conv40 = fptoui float %fRelStreamPos.0 to i8
  %arrayidx42 = getelementptr inbounds [100 x i8], ptr %btToc, i64 0, i64 %indvars.iv
  store i8 %conv40, ptr %arrayidx42, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !23

for.end:                                          ; preds = %if.end39
  %12 = load i32, ptr @nZeroStreamSize, align 4, !tbaa !9
  %inc43 = add nsw i32 %12, 1
  %idxprom44 = sext i32 %12 to i64
  %arrayidx45 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom44
  store i8 88, ptr %arrayidx45, align 1, !tbaa !11
  %inc46 = add nsw i32 %12, 2
  %idxprom47 = sext i32 %inc43 to i64
  %arrayidx48 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom47
  store i8 105, ptr %arrayidx48, align 1, !tbaa !11
  %inc49 = add nsw i32 %12, 3
  %idxprom50 = sext i32 %inc46 to i64
  %arrayidx51 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom50
  store i8 110, ptr %arrayidx51, align 1, !tbaa !11
  %inc52 = add nsw i32 %12, 4
  %idxprom53 = sext i32 %inc49 to i64
  %arrayidx54 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom53
  store i8 103, ptr %arrayidx54, align 1, !tbaa !11
  %idxprom55 = sext i32 %inc52 to i64
  %arrayidx56 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom55
  tail call void @CreateI4(ptr noundef nonnull %arrayidx56, i32 noundef 15)
  %add = add nsw i32 %12, 8
  %idxprom57 = sext i32 %add to i64
  %arrayidx58 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom57
  tail call void @CreateI4(ptr noundef nonnull %arrayidx58, i32 noundef %5)
  %add59 = add nsw i32 %12, 12
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom60
  %conv62 = trunc i64 %call6 to i32
  tail call void @CreateI4(ptr noundef nonnull %arrayidx61, i32 noundef %conv62)
  %add63 = add nsw i32 %12, 16
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %arrayidx65, ptr noundef nonnull align 16 dereferenceable(100) %btToc, i64 100, i1 false)
  %add68 = add i32 %12, 116
  %idxprom70 = sext i32 %add68 to i64
  %arrayidx71 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom70
  tail call void @CreateI4(ptr noundef nonnull %arrayidx71, i32 noundef %nVbrScale)
  %add72 = add i32 %12, 120
  %call74 = tail call ptr @get_lame_version() #23
  %call75 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str1, ptr noundef nonnull @.str.3, ptr noundef %call74) #23
  %idxprom76 = sext i32 %add72 to i64
  %arrayidx77 = getelementptr inbounds [216 x i8], ptr @pbtStreamBuffer, i64 0, i64 %idxprom76
  %call79 = call ptr @strncpy(ptr noundef nonnull %arrayidx77, ptr noundef nonnull %str1, i64 noundef 20) #23
  %13 = load i32, ptr @TotalFrameSize, align 4, !tbaa !9
  %conv81 = sext i32 %13 to i64
  %call82 = tail call i64 @fwrite(ptr noundef nonnull @pbtStreamBuffer, i64 noundef %conv81, i64 noundef 1, ptr noundef nonnull %call)
  %cmp83.not = icmp eq i64 %call82, 1
  br i1 %cmp83.not, label %if.end86, label %cleanup

if.end86:                                         ; preds = %for.end
  %call87 = tail call i32 @fclose(ptr noundef nonnull %call)
  %14 = load ptr, ptr @pVbrFrames, align 8, !tbaa !5
  tail call void @free(ptr noundef %14) #23
  store ptr null, ptr @pVbrFrames, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end4, %if.end, %entry, %if.end86
  %retval.0 = phi i32 [ 0, %if.end86 ], [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end4 ], [ -1, %for.end ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %str1) #23
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %btToc) #23
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #13

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

declare ptr @get_lame_version() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define dso_local i32 @SeekPoint(ptr nocapture noundef readonly %TOC, i32 noundef %file_bytes, float noundef %percent) local_unnamed_addr #17 {
entry:
  %cmp = fcmp fast olt float %percent, 0.000000e+00
  br i1 %cmp, label %if.end3, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = fcmp fast ogt float %percent, 1.000000e+02
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2, %if.end
  %percent.addr.1 = phi float [ 1.000000e+02, %if.then2 ], [ %percent, %if.end ], [ 0.000000e+00, %entry ]
  %conv = fptosi float %percent.addr.1 to i32
  %0 = tail call i32 @llvm.smin.i32(i32 %conv, i32 99)
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds i8, ptr %TOC, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %cmp9 = icmp slt i32 %conv, 99
  br i1 %cmp9, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end3
  %add = add nsw i32 %0, 1
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %TOC, i64 %idxprom12
  %2 = load i8, ptr %arrayidx13, align 1, !tbaa !11
  %conv14 = uitofp i8 %2 to float
  br label %if.end15

if.end15:                                         ; preds = %if.end3, %if.then11
  %fb.0 = phi float [ %conv14, %if.then11 ], [ 2.560000e+02, %if.end3 ]
  %conv8 = uitofp i8 %1 to float
  %sub = fsub fast float %fb.0, %conv8
  %conv16 = sitofp i32 %0 to float
  %sub17 = fsub fast float %percent.addr.1, %conv16
  %mul = fmul fast float %sub, %sub17
  %add18 = fadd fast float %mul, %conv8
  %conv20 = sitofp i32 %file_bytes to float
  %mul19 = fmul fast float %conv20, 3.906250e-03
  %mul21 = fmul fast float %mul19, %add18
  %conv22 = fptosi float %mul21 to i32
  ret i32 %conv22
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #18

attributes #0 = { mustprogress noinline nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #11 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #12 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #15 = { argmemonly mustprogress nofree nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #16 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #17 = { argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(1) }
attributes #21 = { cold }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind }

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
!11 = !{!7, !7, i64 0}
!12 = !{!13, !10, i64 8}
!13 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !7, i64 24}
!14 = !{!13, !10, i64 0}
!15 = !{!13, !10, i64 4}
!16 = !{!13, !10, i64 12}
!17 = !{!13, !10, i64 16}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!13, !10, i64 20}
!22 = distinct !{!22, !19, !20}
!23 = distinct !{!23, !19, !20}
