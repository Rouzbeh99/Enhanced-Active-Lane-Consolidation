; ModuleID = 'util.c'
source_filename = "util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { i64 }
%struct.bit_stream_struc = type { ptr, i32, ptr, ptr, i32, i64, i32, i32 }

@s_freq_table = dso_local local_unnamed_addr global [2 x [4 x double]] [[4 x double] [double 2.205000e+01, double 2.400000e+01, double 1.600000e+01, double 0.000000e+00], [4 x double] [double 4.410000e+01, double 4.800000e+01, double 3.200000e+01, double 0.000000e+00]], align 16
@bitrate_table = dso_local local_unnamed_addr global [2 x [15 x i32]] [[15 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160], [15 x i32] [i32 0, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320]], align 16
@NativeByteOrder = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"MPEG1 samplerates(kHz): 32 44.1 48 \0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bitrates(kbs): \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"MPEG2 samplerates(kHz): 16 22.05 24 \0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"Bitrate %dkbs not legal for %iHz output sampling.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"SmpFrqIndex: %ldHz is not a legal sample rate\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Unable to allocate %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DCBA\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@putmask = dso_local local_unnamed_addr global [9 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255], align 16
@.str.11 = private unnamed_addr constant [51 x i8] c"Cannot read or write more than %d bits at a time.\0A\00", align 1

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local void @getframebits(ptr nocapture noundef readonly %gfp, ptr nocapture noundef writeonly %bitsPerFrame, ptr nocapture noundef writeonly %mean_bits) local_unnamed_addr #0 {
entry:
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  %0 = load i32, ptr %out_samplerate, align 8, !tbaa !5
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  %1 = load i32, ptr %version, align 8, !tbaa !13
  %idxprom = sext i32 %1 to i64
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 50
  %2 = load i32, ptr %bitrate_index, align 4, !tbaa !14
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom, i64 %idxprom1
  %3 = load i32, ptr %arrayidx2, align 4, !tbaa !15
  %cmp = icmp eq i32 %1, 1
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %4 = load i32, ptr %stereo, align 4, !tbaa !16
  %cmp6 = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  %. = select i1 %cmp6, i32 168, i32 288
  br label %if.end19

if.else10:                                        ; preds = %entry
  %.49 = select i1 %cmp6, i32 104, i32 168
  br label %if.end19

if.end19:                                         ; preds = %if.else10, %if.then
  %sideinfo_len.0 = phi i32 [ %., %if.then ], [ %.49, %if.else10 ]
  %error_protection = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 14
  %5 = load i32, ptr %error_protection, align 4, !tbaa !17
  %tobool.not = icmp eq i32 %5, 0
  %add21 = or i32 %sideinfo_len.0, 16
  %spec.select = select i1 %tobool.not, i32 %sideinfo_len.0, i32 %add21
  %conv3 = sitofp i32 %3 to double
  %conv = sitofp i32 %0 to double
  %div = fmul fast double %conv, 1.000000e-03
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 42
  %6 = load i32, ptr %framesize, align 4, !tbaa !18
  %conv23 = sitofp i32 %6 to double
  %div26 = fmul fast double %conv3, 1.250000e-01
  %7 = fmul fast double %div26, %conv23
  %mul = fdiv fast double %7, %div
  %add27 = fadd fast double %mul, 1.000000e-09
  %8 = tail call fast double @llvm.floor.f64(double %add27)
  %conv28 = fptosi double %8 to i32
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 44
  %9 = load i32, ptr %padding, align 4, !tbaa !19
  %mul2948 = add i32 %9, %conv28
  %add31 = shl i32 %mul2948, 3
  store i32 %add31, ptr %bitsPerFrame, align 4, !tbaa !15
  %sub = sub nsw i32 %add31, %spec.select
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %10 = load i32, ptr %mode_gr, align 8, !tbaa !20
  %div32 = sdiv i32 %sub, %10
  store i32 %div32, ptr %mean_bits, align 4, !tbaa !15
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @display_bitrates(ptr nocapture noundef %out_fh) local_unnamed_addr #3 {
entry:
  %fputc = tail call i32 @fputc(i32 10, ptr %out_fh)
  %0 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 36, i64 1, ptr %out_fh)
  %1 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %out_fh)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx4 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 1, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !15
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %out_fh, ptr noundef nonnull @.str.3, i32 noundef %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !21

for.end:                                          ; preds = %for.body
  %fputc37 = tail call i32 @fputc(i32 10, ptr %out_fh)
  %fputc38 = tail call i32 @fputc(i32 10, ptr %out_fh)
  %3 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 37, i64 1, ptr %out_fh)
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %out_fh)
  br label %for.body12

for.body12:                                       ; preds = %for.end, %for.body12
  %indvars.iv43 = phi i64 [ 1, %for.end ], [ %indvars.iv.next44, %for.body12 ]
  %arrayidx16 = getelementptr inbounds [15 x i32], ptr @bitrate_table, i64 0, i64 %indvars.iv43
  %5 = load i32, ptr %arrayidx16, align 4, !tbaa !15
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %out_fh, ptr noundef nonnull @.str.3, i32 noundef %5)
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, 15
  br i1 %exitcond46.not, label %for.end20, label %for.body12, !llvm.loop !24

for.end20:                                        ; preds = %for.body12
  %fputc39 = tail call i32 @fputc(i32 10, ptr %out_fh)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @BitrateIndex(i32 noundef %bRate, i32 noundef %version, i32 noundef %samplerate) local_unnamed_addr #3 {
entry:
  %idxprom = sext i32 %version to i64
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  %index.014 = phi i32 [ 0, %entry ], [ %spec.select, %while.body ]
  %idxprom1 = zext i32 %index.014 to i64
  %arrayidx2 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom, i64 %idxprom1
  %0 = load i32, ptr %arrayidx2, align 4, !tbaa !15
  %cmp3 = icmp eq i32 %0, %bRate
  %not.cmp3 = xor i1 %cmp3, true
  %inc = zext i1 %not.cmp3 to i32
  %spec.select = add nuw nsw i32 %index.014, %inc
  %cmp = icmp ult i32 %spec.select, 15
  %or.cond = select i1 %not.cmp3, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body, label %while.end, !llvm.loop !25

while.end:                                        ; preds = %while.body
  br i1 %cmp3, label %cleanup, label %if.else6

if.else6:                                         ; preds = %while.end
  %1 = load ptr, ptr @stderr, align 8, !tbaa !26
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %bRate, i32 noundef %samplerate) #17
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else6
  %retval.0 = phi i32 [ -1, %if.else6 ], [ %spec.select, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @SmpFrqIndex(i64 noundef %sRate, ptr nocapture noundef writeonly %version) local_unnamed_addr #3 {
entry:
  store i32 0, ptr %version, align 4, !tbaa !15
  switch i64 %sRate, label %if.else15 [
    i64 44100, label %if.then
    i64 48000, label %if.then2
    i64 32000, label %if.then5
    i64 24000, label %return
    i64 22050, label %if.then11
    i64 16000, label %if.then14
  ]

if.then:                                          ; preds = %entry
  store i32 1, ptr %version, align 4, !tbaa !15
  br label %return

if.then2:                                         ; preds = %entry
  store i32 1, ptr %version, align 4, !tbaa !15
  br label %return

if.then5:                                         ; preds = %entry
  store i32 1, ptr %version, align 4, !tbaa !15
  br label %return

if.then11:                                        ; preds = %entry
  br label %return

if.then14:                                        ; preds = %entry
  br label %return

if.else15:                                        ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !26
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef %sRate) #17
  br label %return

return:                                           ; preds = %entry, %if.else15, %if.then14, %if.then11, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then2 ], [ 2, %if.then5 ], [ 0, %if.then11 ], [ 2, %if.then14 ], [ -1, %if.else15 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @mem_alloc(i64 noundef %block, ptr noundef %item) local_unnamed_addr #5 {
entry:
  %calloc = call ptr @calloc(i64 1, i64 %block)
  %cmp.not = icmp eq ptr %calloc, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  ret ptr %calloc

if.else:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !26
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %item) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone willreturn uwtable
define dso_local i32 @DetermineByteOrder() local_unnamed_addr #7 {
entry:
  %s = alloca [9 x i8], align 1
  %probe = alloca %union.anon, align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %s) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %probe) #19
  store i64 1094861636, ptr %probe, align 8, !tbaa !27
  %call = call ptr @strncpy(ptr noundef nonnull %s, ptr noundef nonnull %probe, i64 noundef 8) #19
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %s, ptr noundef nonnull dereferenceable(5) @.str.8, i64 5)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %bcmp10 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %s, ptr noundef nonnull dereferenceable(5) @.str.9, i64 5)
  %cmp6 = icmp eq i32 %bcmp10, 0
  %. = select i1 %cmp6, i32 2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.else ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %probe) #19
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %s) #19
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @SwapBytesInWords(ptr nocapture noundef %loc, i32 noundef %words) local_unnamed_addr #9 {
entry:
  %cmp8 = icmp sgt i32 %words, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %loc.addr.010 = phi ptr [ %incdec.ptr, %for.body ], [ %loc, %entry ]
  %i.09 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %0 = load i16, ptr %loc.addr.010, align 2, !tbaa !28
  %thisval.sroa.0.0.extract.trunc = trunc i16 %0 to i8
  %thisval.sroa.4.0.extract.shift = lshr i16 %0, 8
  %thisval.sroa.4.0.extract.trunc = trunc i16 %thisval.sroa.4.0.extract.shift to i8
  %incdec.ptr = getelementptr inbounds i16, ptr %loc.addr.010, i64 1
  store i8 %thisval.sroa.4.0.extract.trunc, ptr %loc.addr.010, align 1, !tbaa !27
  %arrayidx3 = getelementptr inbounds i8, ptr %loc.addr.010, i64 1
  store i8 %thisval.sroa.0.0.extract.trunc, ptr %arrayidx3, align 1, !tbaa !27
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !30

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @empty_buffer(ptr nocapture noundef %bs) local_unnamed_addr #10 {
entry:
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 6
  %0 = load i32, ptr %buf_byte_idx, align 8, !tbaa !31
  %add.neg = xor i32 %0, -1
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 4
  %1 = load i32, ptr %buf_size, align 8, !tbaa !33
  %sub = add i32 %1, %add.neg
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub2 = add nsw i32 %1, -1
  store i32 %sub2, ptr %buf_byte_idx, align 8, !tbaa !31
  %buf_bit_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 7
  store i32 8, ptr %buf_bit_idx, align 4, !tbaa !34
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 3
  %2 = load ptr, ptr %buf, align 8, !tbaa !35
  %idxprom = sext i32 %sub2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @copy_buffer(ptr nocapture noundef writeonly %buffer, i32 noundef %size, ptr nocapture noundef %bs) local_unnamed_addr #9 {
entry:
  %cmp.not = icmp eq i32 %size, 0
  %buf_size3.phi.trans.insert = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 4
  %.pre = load i32, ptr %buf_size3.phi.trans.insert, align 8, !tbaa !33
  %buf_byte_idx5.phi.trans.insert = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 6
  %.pre28 = load i32, ptr %buf_byte_idx5.phi.trans.insert, align 8, !tbaa !31
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = xor i32 %.pre28, -1
  %sub1 = add i32 %.pre, %0
  %cmp2 = icmp sgt i32 %sub1, %size
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true
  %buf_byte_idx5 = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 6
  %i.019 = add i32 %.pre, -1
  %cmp620 = icmp sgt i32 %i.019, %.pre28
  br i1 %cmp620, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 3
  %1 = sext i32 %i.019 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv23 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next24, %for.body ]
  %indvars.iv = phi i64 [ %1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %2 = load ptr, ptr %buf, align 8, !tbaa !35
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !27
  %indvars.iv.next24 = add nuw i64 %indvars.iv23, 1
  %arrayidx8 = getelementptr inbounds i8, ptr %buffer, i64 %indvars.iv23
  store i8 %3, ptr %arrayidx8, align 1, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %4 = load i32, ptr %buf_byte_idx5, align 8, !tbaa !31
  %5 = sext i32 %4 to i64
  %cmp6 = icmp sgt i64 %indvars.iv.next, %5
  br i1 %cmp6, label %for.body, label %for.end.loopexit, !llvm.loop !36

for.end.loopexit:                                 ; preds = %for.body
  %6 = trunc i64 %indvars.iv.next24 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %j.0.lcssa = phi i32 [ 0, %if.end ], [ %6, %for.end.loopexit ]
  tail call void @empty_buffer(ptr noundef nonnull %bs)
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %for.end
  %retval.0 = phi i32 [ %j.0.lcssa, %for.end ], [ -1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_bit_stream_w(ptr nocapture noundef writeonly %bs) local_unnamed_addr #5 {
entry:
  tail call void @alloc_buffer(ptr noundef %bs, i32 noundef 16384)
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 6
  store i32 16383, ptr %buf_byte_idx, align 8, !tbaa !31
  %buf_bit_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 7
  store i32 8, ptr %buf_bit_idx, align 4, !tbaa !34
  %totbit = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 5
  store i64 0, ptr %totbit, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @alloc_buffer(ptr nocapture noundef writeonly %bs, i32 noundef %size) local_unnamed_addr #5 {
entry:
  %conv = sext i32 %size to i64
  %call = tail call ptr @mem_alloc(i64 noundef %conv, ptr noundef nonnull @.str.10)
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 3
  store ptr %call, ptr %buf, align 8, !tbaa !35
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 4
  store i32 %size, ptr %buf_size, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress noinline nounwind willreturn uwtable
define dso_local void @desalloc_buffer(ptr nocapture noundef readonly %bs) local_unnamed_addr #11 {
entry:
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 3
  %0 = load ptr, ptr %buf, align 8, !tbaa !35
  tail call void @free(ptr noundef %0) #19
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @putbits(ptr nocapture noundef %bs, i32 noundef %val, i32 noundef %N) local_unnamed_addr #3 {
entry:
  %cmp = icmp sgt i32 %N, 32
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !26
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 32) #17
  %conv4751 = zext i32 %N to i64
  %totbit48 = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 5
  %1 = load i64, ptr %totbit48, align 8, !tbaa !37
  %add49 = add i64 %1, %conv4751
  store i64 %add49, ptr %totbit48, align 8, !tbaa !37
  br label %while.body.lr.ph

if.end:                                           ; preds = %entry
  %conv = sext i32 %N to i64
  %totbit = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 5
  %2 = load i64, ptr %totbit, align 8, !tbaa !37
  %add = add i64 %2, %conv
  store i64 %add, ptr %totbit, align 8, !tbaa !37
  %cmp145 = icmp sgt i32 %N, 0
  br i1 %cmp145, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end.thread, %if.end
  %buf_bit_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 7
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 3
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end22
  %j.046 = phi i32 [ %N, %while.body.lr.ph ], [ %sub, %if.end22 ]
  %3 = load i32, ptr %buf_bit_idx, align 4, !tbaa !34
  %4 = tail call i32 @llvm.smin.i32(i32 %j.046, i32 %3)
  %sub = sub nsw i32 %j.046, %4
  %shr = lshr i32 %val, %sub
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr @putmask, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !15
  %and = and i32 %shr, %5
  %sub7 = sub nsw i32 %3, %4
  %shl = shl i32 %and, %sub7
  %6 = load ptr, ptr %buf, align 8, !tbaa !35
  %7 = load i32, ptr %buf_byte_idx, align 8, !tbaa !31
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %6, i64 %idxprom8
  %8 = load i8, ptr %arrayidx9, align 1, !tbaa !27
  %9 = trunc i32 %shl to i8
  %conv11 = or i8 %8, %9
  store i8 %conv11, ptr %arrayidx9, align 1, !tbaa !27
  %10 = load i32, ptr %buf_bit_idx, align 4, !tbaa !34
  %sub13 = sub nsw i32 %10, %4
  store i32 %sub13, ptr %buf_bit_idx, align 4, !tbaa !34
  %tobool.not = icmp eq i32 %10, %4
  br i1 %tobool.not, label %if.then15, label %if.end22

if.then15:                                        ; preds = %while.body
  store i32 8, ptr %buf_bit_idx, align 4, !tbaa !34
  %11 = load i32, ptr %buf_byte_idx, align 8, !tbaa !31
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %buf_byte_idx, align 8, !tbaa !31
  %12 = load ptr, ptr %buf, align 8, !tbaa !35
  %idxprom20 = sext i32 %dec to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %12, i64 %idxprom20
  store i8 0, ptr %arrayidx21, align 1, !tbaa !27
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %while.body
  %cmp1 = icmp sgt i32 %sub, 0
  br i1 %cmp1, label %while.body, label %while.end, !llvm.loop !38

while.end:                                        ; preds = %if.end22, %if.end
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #14

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #16

attributes #0 = { mustprogress nofree noinline nosync nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { mustprogress nofree noinline nosync nounwind readnone willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { nofree noinline norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #11 = { mustprogress noinline nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #13 = { nofree nounwind }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !8, i64 120, !10, i64 124, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !12, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !12, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!6, !10, i64 192}
!14 = !{!6, !10, i64 220}
!15 = !{!10, !10, i64 0}
!16 = !{!6, !10, i64 204}
!17 = !{!6, !10, i64 60}
!18 = !{!6, !10, i64 188}
!19 = !{!6, !10, i64 196}
!20 = !{!6, !10, i64 200}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !22, !23}
!25 = distinct !{!25, !22, !23}
!26 = !{!11, !11, i64 0}
!27 = !{!8, !8, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"short", !8, i64 0}
!30 = distinct !{!30, !22, !23}
!31 = !{!32, !10, i64 48}
!32 = !{!"bit_stream_struc", !11, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !10, i64 32, !7, i64 40, !10, i64 48, !10, i64 52}
!33 = !{!32, !10, i64 32}
!34 = !{!32, !10, i64 52}
!35 = !{!32, !11, i64 24}
!36 = distinct !{!36, !22, !23}
!37 = !{!32, !7, i64 40}
!38 = distinct !{!38, !22, !23}
