; ModuleID = 'get_audio.c'
source_filename = "get_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.IFF_AIFF_struct = type { i16, i64, i16, float, i64, %struct.blockAlign_struct }
%struct.blockAlign_struct = type { i64, i64 }

@count_samples_carefully = internal unnamed_addr global i1 false, align 4
@get_audio.num_samples_read = internal unnamed_addr global i64 0, align 8
@num_samples = internal global i64 0, align 8
@musicin = internal unnamed_addr global ptr null, align 8
@input_bitrate = internal global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"Could not close audio input file\0A\00", align 1
@samp_freq = internal global i32 0, align 4
@num_channels = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Could not find \22%s\22.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Error reading headers in mp3 input file %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Assuming raw pcm input file\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c" : Forcing byte-swapping\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Error reading input file\0A\00", align 1
@NativeByteOrder = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"byte order not determined\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"%d-bit sample-size is not supported!\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Sound data is not PCM in \22%s\22.\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Sound data is not %d bits in \22%s\22.\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Sound data is not mono or stereo in \22%s\22.\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Block size is not %d bytes in \22%s\22.\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Block offset is not %d bytes in \22%s\22.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @lame_init_infile(ptr nocapture noundef %gfp) local_unnamed_addr #0 {
entry:
  store i1 false, ptr @count_samples_carefully, align 4
  %inPath = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 31
  %0 = load ptr, ptr %inPath, align 8, !tbaa !5
  %in_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 2
  %1 = load i32, ptr %in_samplerate, align 4, !tbaa !13
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 1
  %2 = load i32, ptr %num_channels, align 8, !tbaa !14
  %call = tail call ptr @OpenSndFile(ptr noundef %gfp, ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %call1 = tail call i32 @GetSndSampleRate()
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 %call1, ptr %in_samplerate, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @GetSndChannels()
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  store i32 %call4, ptr %num_channels, align 8, !tbaa !14
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %call10 = tail call i64 @GetSndSamples()
  store i64 %call10, ptr %gfp, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @OpenSndFile(ptr nocapture noundef %gfp, ptr noundef %inPath, i32 noundef %default_samp, i32 noundef %default_channels) local_unnamed_addr #0 {
entry:
  %sb = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %sb) #12
  store i64 4294967295, ptr @num_samples, align 8, !tbaa !16
  store i32 %default_samp, ptr @samp_freq, align 4, !tbaa !17
  store i32 %default_channels, ptr @num_channels, align 4, !tbaa !17
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %inPath, ptr noundef nonnull dereferenceable(2) @.str.1) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stdin, align 8, !tbaa !18
  store ptr %0, ptr @musicin, align 8, !tbaa !18
  br label %if.end4

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @fopen(ptr noundef %inPath, ptr noundef nonnull @.str.2)
  store ptr %call1, ptr @musicin, align 8, !tbaa !18
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.else
  %1 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %inPath) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end4:                                          ; preds = %if.else, %if.then
  %2 = phi ptr [ %call1, %if.else ], [ %0, %if.then ]
  store i32 0, ptr @input_bitrate, align 4, !tbaa !17
  %input_format = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 29
  %3 = load i32, ptr %input_format, align 8, !tbaa !19
  switch i32 %3, label %if.end16 [
    i32 3, label %if.then6
    i32 4, label %if.then19
  ]

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @lame_decode_initfile(ptr noundef %2, ptr noundef nonnull @num_channels, ptr noundef nonnull @samp_freq, ptr noundef nonnull @input_bitrate, ptr noundef nonnull @num_samples) #12
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end28

if.then9:                                         ; preds = %if.then6
  %4 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef %inPath) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end16:                                         ; preds = %if.end4
  tail call void @parse_file_header(ptr noundef nonnull %gfp, ptr noundef %2)
  %.pr = load i32, ptr %input_format, align 8, !tbaa !19
  %cmp18 = icmp eq i32 %.pr, 4
  br i1 %cmp18, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end4, %if.end16
  %5 = load ptr, ptr @stderr, align 8, !tbaa !18
  %6 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 27, i64 1, ptr %5) #14
  %swapbytes = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 30
  %7 = load i32, ptr %swapbytes, align 4, !tbaa !20
  %cmp21 = icmp eq i32 %7, 1
  %8 = load ptr, ptr @stderr, align 8, !tbaa !18
  br i1 %cmp21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.then19
  %9 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 25, i64 1, ptr %8) #14
  br label %if.end28

if.else24:                                        ; preds = %if.then19
  %fputc = tail call i32 @fputc(i32 10, ptr %8)
  br label %if.end28

if.end28:                                         ; preds = %if.end16, %if.else24, %if.then22, %if.then6
  %10 = load i64, ptr @num_samples, align 8, !tbaa !16
  %cmp29 = icmp eq i64 %10, 4294967295
  br i1 %cmp29, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %if.end28
  %11 = load ptr, ptr @musicin, align 8, !tbaa !18
  %12 = load ptr, ptr @stdin, align 8, !tbaa !18
  %cmp30.not = icmp eq ptr %11, %12
  br i1 %cmp30.not, label %if.end54, label %if.then31

if.then31:                                        ; preds = %land.lhs.true
  %call32 = call i32 @stat(ptr noundef %inPath, ptr noundef nonnull %sb) #12
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end54

if.then34:                                        ; preds = %if.then31
  %13 = load i32, ptr %input_format, align 8, !tbaa !19
  %cmp36 = icmp eq i32 %13, 3
  %st_size = getelementptr inbounds %struct.stat, ptr %sb, i64 0, i32 8
  %14 = load i64, ptr %st_size, align 8, !tbaa !21
  br i1 %cmp36, label %if.then37, label %if.else46

if.then37:                                        ; preds = %if.then34
  %conv = sitofp i64 %14 to double
  %mul = fmul fast double %conv, 8.000000e+00
  %call38 = tail call i32 @GetSndBitrate()
  %conv39 = sitofp i32 %call38 to double
  %mul40 = fmul fast double %conv39, 1.000000e+03
  %div = fdiv fast double %mul, %mul40
  %conv41 = fptrunc double %div to float
  %call42 = tail call i32 @GetSndSampleRate()
  %conv43 = sitofp i32 %call42 to float
  %mul44 = fmul fast float %conv41, %conv43
  %conv45 = fptoui float %mul44 to i64
  br label %if.end54.sink.split

if.else46:                                        ; preds = %if.then34
  %call48 = tail call i32 @GetSndChannels()
  %mul49 = shl nsw i32 %call48, 1
  %conv50 = sext i32 %mul49 to i64
  %div51 = sdiv i64 %14, %conv50
  br label %if.end54.sink.split

if.end54.sink.split:                              ; preds = %if.then37, %if.else46
  %div51.sink = phi i64 [ %div51, %if.else46 ], [ %conv45, %if.then37 ]
  store i64 %div51.sink, ptr @num_samples, align 8, !tbaa !16
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.then31, %land.lhs.true, %if.end28
  %15 = load ptr, ptr @musicin, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %sb) #12
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @GetSndSampleRate() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @samp_freq, align 4, !tbaa !17
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @GetSndChannels() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @num_channels, align 4, !tbaa !17
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @GetSndSamples() local_unnamed_addr #1 {
entry:
  %0 = load i64, ptr @num_samples, align 8, !tbaa !16
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lame_close_infile(ptr nocapture noundef readnone %gfp) local_unnamed_addr #0 {
entry:
  tail call void @CloseSndFile(ptr undef)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CloseSndFile(ptr nocapture readnone %gfp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @musicin, align 8, !tbaa !18
  %call = tail call i32 @fclose(ptr noundef %0)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !18
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 33, i64 1, ptr %1) #14
  tail call void @exit(i32 noundef 2) #15
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lame_readframe(ptr nocapture noundef %gfp, ptr noundef %Buffer) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @get_audio(ptr noundef %gfp, ptr noundef %Buffer, i32 undef)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %frameNum6.phi.trans.insert = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  %.pre = load i64, ptr %frameNum6.phi.trans.insert, align 8, !tbaa !24
  %totalframes7.phi.trans.insert = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 40
  %.pre25 = load i64, ptr %totalframes7.phi.trans.insert, align 8, !tbaa !25
  br label %if.end

if.then:                                          ; preds = %entry
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 40
  %0 = load i64, ptr %totalframes, align 8, !tbaa !25
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  %1 = load i64, ptr %frameNum, align 8, !tbaa !24
  %add = add nsw i64 %1, 2
  %2 = tail call i64 @llvm.smin.i64(i64 %0, i64 %add)
  store i64 %2, ptr %totalframes, align 8, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %3 = phi i64 [ %.pre25, %entry.if.end_crit_edge ], [ %2, %if.then ]
  %4 = phi i64 [ %.pre, %entry.if.end_crit_edge ], [ %1, %if.then ]
  %cmp8.not = icmp slt i64 %4, %3
  br i1 %cmp8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  %totalframes7 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 40
  store i64 %4, ptr %totalframes7, align 8, !tbaa !25
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_audio(ptr nocapture noundef readonly %gfp, ptr noundef %buffer, i32 %stereo) local_unnamed_addr #0 {
entry:
  %insamp = alloca [2304 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %insamp) #12
  %num_channels1 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 1
  %0 = load i32, ptr %num_channels1, align 8, !tbaa !14
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  %1 = load i64, ptr %frameNum, align 8, !tbaa !24
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr @get_audio.num_samples_read, align 8, !tbaa !16
  %call = tail call i64 @GetSndSamples()
  store i64 %call, ptr @num_samples, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %2 = load i32, ptr %mode_gr, align 8, !tbaa !26
  %mul = mul i32 %2, 576
  %.b = load i1, ptr @count_samples_carefully, align 4
  br i1 %.b, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr @num_samples, align 8, !tbaa !16
  %4 = load i64, ptr @get_audio.num_samples_read, align 8, !tbaa !16
  %5 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %4)
  %conv = sext i32 %mul to i64
  %cmp4 = icmp ult i64 %5, %conv
  %conv7 = trunc i64 %5 to i32
  %spec.select = select i1 %cmp4, i32 %conv7, i32 %mul
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end
  %samples_to_read.0 = phi i32 [ %mul, %if.end ], [ %spec.select, %if.then2 ]
  %input_format = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 29
  %6 = load i32, ptr %input_format, align 8, !tbaa !19
  %cmp10 = icmp eq i32 %6, 3
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %7 = load ptr, ptr @musicin, align 8, !tbaa !18
  %call13 = tail call i32 @read_samples_mp3(ptr undef, ptr noundef %7, ptr noundef %buffer, i32 undef)
  br label %if.end37

if.else:                                          ; preds = %if.end9
  %mul14 = mul nsw i32 %mul, %0
  %mul15 = mul nsw i32 %samples_to_read.0, %0
  %call16 = call i32 @read_samples_pcm(ptr noundef nonnull %gfp, ptr noundef nonnull %insamp, i32 noundef %mul14, i32 noundef %mul15)
  %div = sdiv i32 %call16, %0
  %cmp1770 = icmp sgt i32 %2, 0
  br i1 %cmp1770, label %for.body.lr.ph, label %if.end37

for.body.lr.ph:                                   ; preds = %if.else
  %cmp23 = icmp eq i32 %0, 2
  br i1 %cmp23, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %8 = sext i32 %0 to i64
  %smax = call i32 @llvm.smax.i32(i32 %mul, i32 1)
  %wide.trip.count = zext i32 %smax to i64
  br label %for.body

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %smax82 = call i32 @llvm.smax.i32(i32 %mul, i32 1)
  %wide.trip.count83 = zext i32 %smax82 to i64
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %indvars.iv76 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next77, %for.body.us ]
  %9 = shl nuw nsw i64 %indvars.iv76, 1
  %arrayidx.us = getelementptr inbounds [2304 x i16], ptr %insamp, i64 0, i64 %9
  %10 = load i16, ptr %arrayidx.us, align 4, !tbaa !27
  %arrayidx22.us = getelementptr inbounds [1152 x i16], ptr %buffer, i64 0, i64 %indvars.iv76
  store i16 %10, ptr %arrayidx22.us, align 2, !tbaa !27
  %11 = shl nuw nsw i64 %indvars.iv76, 1
  %12 = or i64 %11, 1
  %arrayidx28.us = getelementptr inbounds [2304 x i16], ptr %insamp, i64 0, i64 %12
  %13 = load i16, ptr %arrayidx28.us, align 2, !tbaa !27
  %arrayidx31.us = getelementptr inbounds [1152 x i16], ptr %buffer, i64 1, i64 %indvars.iv76
  store i16 %13, ptr %arrayidx31.us, align 2, !tbaa !27
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond84.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count83
  br i1 %exitcond84.not, label %if.end37, label %for.body.us, !llvm.loop !29

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %14 = mul nsw i64 %indvars.iv, %8
  %arrayidx = getelementptr inbounds [2304 x i16], ptr %insamp, i64 0, i64 %14
  %15 = load i16, ptr %arrayidx, align 2, !tbaa !27
  %arrayidx22 = getelementptr inbounds [1152 x i16], ptr %buffer, i64 0, i64 %indvars.iv
  store i16 %15, ptr %arrayidx22, align 2, !tbaa !27
  %arrayidx35 = getelementptr inbounds [1152 x i16], ptr %buffer, i64 1, i64 %indvars.iv
  store i16 0, ptr %arrayidx35, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end37, label %for.body, !llvm.loop !29

if.end37:                                         ; preds = %for.body, %for.body.us, %if.else, %if.then12
  %samples_read.0 = phi i32 [ %call13, %if.then12 ], [ %div, %if.else ], [ %div, %for.body.us ], [ %div, %for.body ]
  %16 = load i64, ptr @num_samples, align 8, !tbaa !16
  %cmp38.not = icmp eq i64 %16, 4294967295
  br i1 %cmp38.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end37
  %conv41 = sext i32 %samples_read.0 to i64
  %17 = load i64, ptr @get_audio.num_samples_read, align 8, !tbaa !16
  %add42 = add i64 %17, %conv41
  store i64 %add42, ptr @get_audio.num_samples_read, align 8, !tbaa !16
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %insamp) #12
  ret i32 %samples_read.0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_samples_mp3(ptr nocapture readnone %gfp, ptr noundef %musicin, ptr noundef %mpg123pcm, i32 %stereo) local_unnamed_addr #0 {
entry:
  %arrayidx1 = getelementptr inbounds [1152 x i16], ptr %mpg123pcm, i64 1
  %call = tail call i32 @lame_decode_fromfile(ptr noundef %musicin, ptr noundef %mpg123pcm, ptr noundef nonnull %arrayidx1) #12
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %for.body.preheader, label %if.end

for.body.preheader:                               ; preds = %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(4608) %mpg123pcm, i8 0, i64 4608, i1 false)
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry
  %.call = phi i32 [ %call, %entry ], [ 0, %for.body.preheader ]
  ret i32 %.call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_samples_pcm(ptr nocapture noundef readonly %gfp, ptr noundef %sample_buffer, i32 noundef %frame_size, i32 noundef %samples_to_read) local_unnamed_addr #0 {
entry:
  %input_format = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 29
  %0 = load i32, ptr %input_format, align 8, !tbaa !19
  %cmp = icmp eq i32 %0, 1
  %conv1 = sext i32 %samples_to_read to i64
  %1 = load ptr, ptr @musicin, align 8, !tbaa !18
  %call = tail call i64 @fread(ptr noundef %sample_buffer, i64 noundef 2, i64 noundef %conv1, ptr noundef %1)
  %conv2 = trunc i64 %call to i32
  %2 = load ptr, ptr @musicin, align 8, !tbaa !18
  %call3 = tail call i32 @ferror(ptr noundef %2) #12
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @stderr, align 8, !tbaa !18
  %4 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 25, i64 1, ptr %3) #14
  tail call void @exit(i32 noundef 2) #15
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i32, ptr @NativeByteOrder, align 4, !tbaa !32
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @DetermineByteOrder() #12
  store i32 %call8, ptr @NativeByteOrder, align 4, !tbaa !32
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then7
  %6 = load ptr, ptr @stderr, align 8, !tbaa !18
  %7 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 26, i64 1, ptr %6) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end14:                                         ; preds = %if.then7, %if.end
  %8 = phi i32 [ %call8, %if.then7 ], [ %5, %if.end ]
  %tobool15 = xor i1 %cmp, true
  %cmp16 = icmp eq i32 %8, 2
  %or.cond = select i1 %tobool15, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  tail call void @SwapBytesInWords(ptr noundef %sample_buffer, i32 noundef %conv2) #12
  %.pre = load i32, ptr @NativeByteOrder, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14
  %9 = phi i32 [ %.pre, %if.then18 ], [ %8, %if.end14 ]
  %cmp22 = icmp eq i32 %9, 1
  %or.cond40 = select i1 %cmp, i1 %cmp22, i1 false
  br i1 %or.cond40, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  tail call void @SwapBytesInWords(ptr noundef %sample_buffer, i32 noundef %conv2) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19
  %swapbytes = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 30
  %10 = load i32, ptr %swapbytes, align 4, !tbaa !20
  %cmp26 = icmp eq i32 %10, 1
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  tail call void @SwapBytesInWords(ptr noundef %sample_buffer, i32 noundef %conv2) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25
  %cmp30 = icmp slt i32 %conv2, %frame_size
  %11 = tail call i32 @llvm.smax.i32(i32 %conv2, i32 0)
  %cmp3755 = icmp slt i32 %11, %frame_size
  %or.cond57 = select i1 %cmp30, i1 %cmp3755, i1 false
  br i1 %or.cond57, label %for.inc.preheader, label %if.end39

for.inc.preheader:                                ; preds = %if.end29
  %12 = shl nuw i32 %11, 1
  %13 = zext i32 %12 to i64
  %uglygep = getelementptr i8, ptr %sample_buffer, i64 %13
  %14 = xor i32 %11, -1
  %15 = add i32 %14, %frame_size
  %16 = zext i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 1
  %18 = add nuw nsw i64 %17, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %uglygep, i8 0, i64 %18, i1 false), !tbaa !27
  br label %if.end39

if.end39:                                         ; preds = %for.inc.preheader, %if.end29
  ret i32 %conv2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @GetSndBitrate() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @input_bitrate, align 4, !tbaa !17
  ret i32 %0
}

declare i32 @lame_decode_fromfile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @fskip(ptr nocapture noundef %sf, i64 noundef %num_bytes, i32 %dummy) local_unnamed_addr #4 {
entry:
  %data = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %data) #12
  %cmp9 = icmp sgt i64 %num_bytes, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %num_bytes.addr.010 = phi i64 [ %sub, %while.body ], [ %num_bytes, %entry ]
  %0 = tail call i64 @llvm.smin.i64(i64 %num_bytes.addr.010, i64 1024)
  %call = call i64 @fread(ptr noundef nonnull %data, i64 noundef 1, i64 noundef %0, ptr noundef %sf)
  %sub = sub i64 %num_bytes.addr.010, %call
  %cmp = icmp sgt i64 %sub, 0
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !33

while.end:                                        ; preds = %while.body, %entry
  %num_bytes.addr.0.lcssa = phi i64 [ %num_bytes, %entry ], [ %sub, %while.body ]
  %conv3 = trunc i64 %num_bytes.addr.0.lcssa to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %data) #12
  ret i32 %conv3
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

declare i32 @lame_decode_initfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @parse_file_header(ptr nocapture noundef %gfp, ptr noundef %sf) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  store i1 false, ptr @count_samples_carefully, align 4
  %input_format = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 29
  store i32 4, ptr %input_format, align 8, !tbaa !19
  switch i32 %call, label %if.then15 [
    i32 1380533830, label %if.then
    i32 1179603533, label %if.then5
  ]

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @parse_wave_header(ptr noundef %sf)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end12, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 1, ptr %input_format, align 8, !tbaa !19
  store i1 true, ptr @count_samples_carefully, align 4
  br label %if.end21

if.then5:                                         ; preds = %entry
  %call6 = tail call fastcc i32 @parse_aiff_header(ptr noundef %sf)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.then5
  store i32 2, ptr %input_format, align 8, !tbaa !19
  store i1 true, ptr @count_samples_carefully, align 4
  br label %if.end21

if.end12:                                         ; preds = %if.then5, %if.then
  %.pr = load i32, ptr %input_format, align 8, !tbaa !19
  %cmp14 = icmp eq i32 %.pr, 4
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %entry, %if.end12
  %call16 = tail call i32 @fseek(ptr noundef %sf, i64 noundef 0, i32 noundef 0)
  store i32 4, ptr %input_format, align 8, !tbaa !19
  br label %if.end21

if.end21:                                         ; preds = %if.then2, %if.then8, %if.then15, %if.end12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #8

declare i32 @DetermineByteOrder() local_unnamed_addr #3

declare void @SwapBytesInWords(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Read32BitsHighLow(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_wave_header(ptr noundef %sf) unnamed_addr #0 {
entry:
  %call = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  %call1 = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  %cmp.not = icmp eq i32 %call1, 1463899717
  br i1 %cmp.not, label %for.body, label %cleanup68

for.body:                                         ; preds = %entry, %for.inc
  %loop_sanity.0137 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %wave_info.sroa.11.0136 = phi i16 [ %wave_info.sroa.11.1, %for.inc ], [ 0, %entry ]
  %wave_info.sroa.7102.0135 = phi i32 [ %wave_info.sroa.7102.1, %for.inc ], [ 0, %entry ]
  %wave_info.sroa.4.0134 = phi i16 [ %wave_info.sroa.4.1, %for.inc ], [ 0, %entry ]
  %call5 = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  switch i32 %call5, label %if.else46 [
    i32 1718449184, label %if.then8
    i32 1684108385, label %if.then56
  ]

if.then8:                                         ; preds = %for.body
  %call9 = tail call i32 @Read32Bits(ptr noundef %sf) #12
  %cmp11 = icmp slt i32 %call9, 16
  br i1 %cmp11, label %cleanup68, label %if.end14

if.end14:                                         ; preds = %if.then8
  %call15 = tail call i32 @Read16BitsLowHigh(ptr noundef %sf) #12
  %call17 = tail call i32 @Read16BitsLowHigh(ptr noundef %sf) #12
  %conv18 = trunc i32 %call17 to i16
  %call20 = tail call i32 @Read32Bits(ptr noundef %sf) #12
  %call23 = tail call i32 @Read32Bits(ptr noundef %sf) #12
  %call26 = tail call i32 @Read16BitsLowHigh(ptr noundef %sf) #12
  %call29 = tail call i32 @Read16BitsLowHigh(ptr noundef %sf) #12
  %conv30 = trunc i32 %call29 to i16
  %cmp32.not = icmp eq i32 %call9, 16
  br i1 %cmp32.not, label %for.inc, label %if.then34

if.then34:                                        ; preds = %if.end14
  %conv10129 = zext i32 %call9 to i64
  %sub31 = add nsw i64 %conv10129, -16
  %call35 = tail call i32 @fskip(ptr noundef %sf, i64 noundef %sub31, i32 undef)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %for.inc, label %cleanup68

if.else46:                                        ; preds = %for.body
  %call47 = tail call i32 @Read32Bits(ptr noundef %sf) #12
  %conv48 = sext i32 %call47 to i64
  %call49 = tail call i32 @fskip(ptr noundef %sf, i64 noundef %conv48, i32 undef)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %for.inc, label %cleanup68

for.inc:                                          ; preds = %if.then34, %if.end14, %if.else46
  %wave_info.sroa.4.1 = phi i16 [ %wave_info.sroa.4.0134, %if.else46 ], [ %conv18, %if.end14 ], [ %conv18, %if.then34 ]
  %wave_info.sroa.7102.1 = phi i32 [ %wave_info.sroa.7102.0135, %if.else46 ], [ %call20, %if.end14 ], [ %call20, %if.then34 ]
  %wave_info.sroa.11.1 = phi i16 [ %wave_info.sroa.11.0136, %if.else46 ], [ %conv30, %if.end14 ], [ %conv30, %if.then34 ]
  %inc = add nuw nsw i32 %loop_sanity.0137, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %cleanup68, label %for.body, !llvm.loop !34

if.then56:                                        ; preds = %for.body
  %call44 = tail call i32 @Read32Bits(ptr noundef %sf) #12
  tail call fastcc void @wave_check(i16 %wave_info.sroa.11.0136)
  %conv58 = zext i16 %wave_info.sroa.4.0134 to i32
  store i32 %conv58, ptr @num_channels, align 4, !tbaa !17
  store i32 %wave_info.sroa.7102.0135, ptr @samp_freq, align 4, !tbaa !17
  %conv64 = zext i16 %wave_info.sroa.11.0136 to i32
  %mul = mul nuw i32 %conv64, %conv58
  %div100 = lshr i32 %mul, 3
  %div66130 = sdiv i32 %call44, %div100
  %div66.sext = sext i32 %div66130 to i64
  store i64 %div66.sext, ptr @num_samples, align 8, !tbaa !16
  br label %cleanup68

cleanup68:                                        ; preds = %if.else46, %if.then34, %if.then8, %for.inc, %if.then56, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 1, %if.then56 ], [ 0, %for.inc ], [ 0, %if.then8 ], [ 0, %if.then34 ], [ 0, %if.else46 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_aiff_header(ptr noundef %sf) unnamed_addr #0 {
entry:
  %aiff_info = alloca %struct.IFF_AIFF_struct, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %aiff_info) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %aiff_info, i8 0, i64 24, i1 false)
  %call = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  %call1 = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  %cmp.not = icmp eq i32 %call1, 1095321158
  %cmp3110 = icmp sgt i32 %call, 0
  %or.cond = select i1 %cmp.not, i1 %cmp3110, i1 false
  br i1 %or.cond, label %while.body.lr.ph, label %cleanup67

while.body.lr.ph:                                 ; preds = %entry
  %conv136 = zext i32 %call to i64
  %numSampleFrames = getelementptr inbounds %struct.IFF_AIFF_struct, ptr %aiff_info, i64 0, i32 1
  %sampleSize = getelementptr inbounds %struct.IFF_AIFF_struct, ptr %aiff_info, i64 0, i32 2
  %sampleRate = getelementptr inbounds %struct.IFF_AIFF_struct, ptr %aiff_info, i64 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %0 = phi float [ 0.000000e+00, %while.body.lr.ph ], [ %conv22121, %cleanup ]
  %conv19119 = phi i16 [ 0, %while.body.lr.ph ], [ %conv19118, %cleanup ]
  %1 = phi i64 [ 0, %while.body.lr.ph ], [ %conv16115, %cleanup ]
  %2 = phi i16 [ 0, %while.body.lr.ph ], [ %conv13112, %cleanup ]
  %chunkSize.0111 = phi i64 [ %conv136, %while.body.lr.ph ], [ %chunkSize.1, %cleanup ]
  %sub = add nsw i64 %chunkSize.0111, -4
  %call5 = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  switch i32 %call5, label %if.else49 [
    i32 1129270605, label %if.then8
    i32 1397968452, label %if.then31
  ]

if.then8:                                         ; preds = %while.body
  %call9 = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  %conv10 = sext i32 %call9 to i64
  %call12 = tail call i32 @Read16BitsHighLow(ptr noundef %sf) #12
  %conv13 = trunc i32 %call12 to i16
  %call15 = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  %conv16 = sext i32 %call15 to i64
  %call18 = tail call i32 @Read16BitsHighLow(ptr noundef %sf) #12
  %conv19 = trunc i32 %call18 to i16
  %call21 = tail call fast double @ReadIeeeExtendedHighLow(ptr noundef %sf) #12
  %conv22 = fptrunc double %call21 to float
  %sub23 = add nsw i64 %conv10, -18
  %call24 = tail call i32 @fskip(ptr noundef %sf, i64 noundef %sub23, i32 undef)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %cleanup, label %if.then8.cleanup67.loopexit_crit_edge

if.then31:                                        ; preds = %while.body
  store i16 %2, ptr %aiff_info, align 8, !tbaa !35
  store i64 %1, ptr %numSampleFrames, align 8, !tbaa !38
  store i16 %conv19119, ptr %sampleSize, align 8, !tbaa !39
  store float %0, ptr %sampleRate, align 4, !tbaa !40
  %call32 = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  %call35 = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  %conv36 = sext i32 %call35 to i64
  %blkAlgn = getelementptr inbounds %struct.IFF_AIFF_struct, ptr %aiff_info, i64 0, i32 5
  store i64 %conv36, ptr %blkAlgn, align 8, !tbaa !41
  %call38 = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  %conv39 = sext i32 %call38 to i64
  %blockSize = getelementptr inbounds %struct.IFF_AIFF_struct, ptr %aiff_info, i64 0, i32 5, i32 1
  store i64 %conv39, ptr %blockSize, align 8, !tbaa !42
  %call44 = tail call i32 @fskip(ptr noundef %sf, i64 noundef %conv36, i32 undef)
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %if.then60, label %cleanup67

if.else49:                                        ; preds = %while.body
  %call50 = tail call i32 @Read32BitsHighLow(ptr noundef %sf) #12
  %conv51 = sext i32 %call50 to i64
  %call53 = tail call i32 @fskip(ptr noundef %sf, i64 noundef %conv51, i32 undef)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %cleanup, label %if.else49.cleanup67.loopexit_crit_edge

cleanup:                                          ; preds = %if.then8, %if.else49
  %conv22121 = phi float [ %conv22, %if.then8 ], [ %0, %if.else49 ]
  %conv19118 = phi i16 [ %conv19, %if.then8 ], [ %conv19119, %if.else49 ]
  %conv16115 = phi i64 [ %conv16, %if.then8 ], [ %1, %if.else49 ]
  %conv13112 = phi i16 [ %conv13, %if.then8 ], [ %2, %if.else49 ]
  %conv10.pn = phi i64 [ %conv10, %if.then8 ], [ %conv51, %if.else49 ]
  %chunkSize.1 = sub i64 %sub, %conv10.pn
  %cmp3 = icmp sgt i64 %chunkSize.1, 0
  br i1 %cmp3, label %while.body, label %while.cond.cleanup67.loopexit_crit_edge

if.then60:                                        ; preds = %if.then31
  %sampleType = getelementptr inbounds %struct.IFF_AIFF_struct, ptr %aiff_info, i64 0, i32 4
  store i64 1397968452, ptr %sampleType, align 8, !tbaa !43
  call fastcc void @aiff_check2(ptr noundef nonnull %aiff_info)
  %conv62 = sext i16 %2 to i32
  store i32 %conv62, ptr @num_channels, align 4, !tbaa !17
  %conv64 = fptosi float %0 to i32
  store i32 %conv64, ptr @samp_freq, align 4, !tbaa !17
  store i64 %1, ptr @num_samples, align 8, !tbaa !16
  br label %cleanup67

while.cond.cleanup67.loopexit_crit_edge:          ; preds = %cleanup
  store i16 %conv13112, ptr %aiff_info, align 8, !tbaa !35
  br label %cleanup67

if.then8.cleanup67.loopexit_crit_edge:            ; preds = %if.then8
  %conv13.le = trunc i32 %call12 to i16
  store i16 %conv13.le, ptr %aiff_info, align 8, !tbaa !35
  store i64 %conv16, ptr %numSampleFrames, align 8, !tbaa !38
  br label %cleanup67

if.else49.cleanup67.loopexit_crit_edge:           ; preds = %if.else49
  store i16 %2, ptr %aiff_info, align 8, !tbaa !35
  br label %cleanup67

cleanup67:                                        ; preds = %while.cond.cleanup67.loopexit_crit_edge, %if.then8.cleanup67.loopexit_crit_edge, %if.else49.cleanup67.loopexit_crit_edge, %if.then31, %if.then60, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 1, %if.then60 ], [ 0, %if.then31 ], [ 0, %if.else49.cleanup67.loopexit_crit_edge ], [ 0, %if.then8.cleanup67.loopexit_crit_edge ], [ 0, %while.cond.cleanup67.loopexit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %aiff_info) #12
  ret i32 %retval.2
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare i32 @Read32Bits(ptr noundef) local_unnamed_addr #3

declare i32 @Read16BitsLowHigh(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @wave_check(i16 %wave_info.26.val) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i16 %wave_info.26.val, 16
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i16 %wave_info.26.val to i32
  %0 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %conv) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare i32 @Read16BitsHighLow(ptr noundef) local_unnamed_addr #3

declare double @ReadIeeeExtendedHighLow(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @aiff_check2(ptr nocapture noundef readonly %pcm_aiff_data) unnamed_addr #0 {
entry:
  %sampleType = getelementptr inbounds %struct.IFF_AIFF_struct, ptr %pcm_aiff_data, i64 0, i32 4
  %0 = load i64, ptr %sampleType, align 8, !tbaa !43
  %cmp.not = icmp eq i64 %0, 1397968452
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %entry
  %sampleSize = getelementptr inbounds %struct.IFF_AIFF_struct, ptr %pcm_aiff_data, i64 0, i32 2
  %2 = load i16, ptr %sampleSize, align 8, !tbaa !39
  %cmp1.not = icmp eq i16 %2, 16
  br i1 %cmp1.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef 16, ptr noundef nonnull @.str.10) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end5:                                          ; preds = %if.end
  %4 = load i16, ptr %pcm_aiff_data, align 8, !tbaa !35
  %.off = add i16 %4, -1
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end5
  %5 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end15:                                         ; preds = %if.end5
  %blockSize = getelementptr inbounds %struct.IFF_AIFF_struct, ptr %pcm_aiff_data, i64 0, i32 5, i32 1
  %6 = load i64, ptr %blockSize, align 8, !tbaa !42
  %cmp16.not = icmp eq i64 %6, 0
  br i1 %cmp16.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  %7 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.10) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end20:                                         ; preds = %if.end15
  %blkAlgn = getelementptr inbounds %struct.IFF_AIFF_struct, ptr %pcm_aiff_data, i64 0, i32 5
  %8 = load i64, ptr %blkAlgn, align 8, !tbaa !41
  %cmp22.not = icmp eq i64 %8, 0
  br i1 %cmp22.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end20
  %9 = load ptr, ptr @stderr, align 8, !tbaa !18
  %call25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.10) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

if.end26:                                         ; preds = %if.end20
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #11

attributes #0 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { nofree noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { nofree nounwind readonly "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !11, i64 128}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !8, i64 120, !10, i64 124, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !12, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !12, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!6, !10, i64 12}
!14 = !{!6, !10, i64 8}
!15 = !{!6, !7, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!10, !10, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!6, !8, i64 120}
!20 = !{!6, !10, i64 124}
!21 = !{!22, !7, i64 48}
!22 = !{!"stat", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !23, i64 72, !23, i64 88, !23, i64 104, !8, i64 120}
!23 = !{!"timespec", !7, i64 0, !7, i64 8}
!24 = !{!6, !7, i64 168}
!25 = !{!6, !7, i64 176}
!26 = !{!6, !10, i64 200}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = distinct !{!29, !30, !31}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!8, !8, i64 0}
!33 = distinct !{!33, !30, !31}
!34 = distinct !{!34, !30, !31}
!35 = !{!36, !28, i64 0}
!36 = !{!"IFF_AIFF_struct", !28, i64 0, !7, i64 8, !28, i64 16, !12, i64 20, !7, i64 24, !37, i64 32}
!37 = !{!"blockAlign_struct", !7, i64 0, !7, i64 8}
!38 = !{!36, !7, i64 8}
!39 = !{!36, !28, i64 16}
!40 = !{!36, !12, i64 20}
!41 = !{!36, !7, i64 32}
!42 = !{!36, !7, i64 40}
!43 = !{!36, !7, i64 24}
