; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/src/spec_xz.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/spec_xz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }

@.str.5 = private unnamed_addr constant [25 x i8] c"Memory allocation failed\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Specified preset is not supported\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"Error initializing encoder with preset=%u check=%u: %s (code %u)\0A\00", align 1
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"Decompress write error on %d: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Input not in XZ format\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Unsupported compression options\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Compressed data is corrupt\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Compressed data is truncated or otherwise corrupt\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Unknown return code\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Decompression decoder error: %s (code %u)\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Compress write error on %d: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"File size limits exceeded\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Compression encoder error: %s (code %u)\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"lzma_stream_decoder reports an unsupported check method: \00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Unsupported decompression flags\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"Error initializing decoder: %s (code %u)\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@str.27 = private unnamed_addr constant [6 x i8] c"CRC64\00", align 1
@str.28 = private unnamed_addr constant [6 x i8] c"CRC32\00", align 1
@str.29 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@str.30 = private unnamed_addr constant [33 x i8] c"unknown!  This shouldn't happen.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @init_encoder(ptr noundef %strm, ptr noundef %options, i32 noundef %preset, i32 noundef %check) local_unnamed_addr #0 !dbg !59 {
entry:
  %filters = alloca [5 x %struct.lzma_filter], align 16
  %lzma_local_options = alloca %struct.lzma_options_lzma, align 8
  call void @llvm.dbg.value(metadata ptr %strm, metadata !147, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata ptr %options, metadata !148, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 %preset, metadata !149, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 %check, metadata !150, metadata !DIExpression()), !dbg !170
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %filters) #9, !dbg !171
  call void @llvm.dbg.declare(metadata ptr %filters, metadata !155, metadata !DIExpression()), !dbg !172
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %lzma_local_options) #9, !dbg !173
  call void @llvm.dbg.declare(metadata ptr %lzma_local_options, metadata !167, metadata !DIExpression()), !dbg !174
  %cmp = icmp eq ptr %options, null, !dbg !175
  %spec.store.select = select i1 %cmp, ptr %lzma_local_options, ptr %options, !dbg !177
  call void @llvm.dbg.value(metadata ptr %spec.store.select, metadata !148, metadata !DIExpression()), !dbg !170
  %cmp1 = icmp ugt i32 %check, 15, !dbg !178
  %spec.store.select23 = select i1 %cmp1, i32 4, i32 %check, !dbg !180
  call void @llvm.dbg.value(metadata i32 %spec.store.select23, metadata !150, metadata !DIExpression()), !dbg !170
  %call = call zeroext i8 @lzma_lzma_preset(ptr noundef %spec.store.select, i32 noundef %preset) #9, !dbg !181
  store i64 33, ptr %filters, align 16, !dbg !182, !tbaa !183
  %options5 = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 0, i32 1, !dbg !189
  store ptr %spec.store.select, ptr %options5, align 8, !dbg !190, !tbaa !191
  %arrayidx6 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %filters, i64 0, i64 1, !dbg !192
  store i64 -1, ptr %arrayidx6, align 16, !dbg !193, !tbaa !183
  %call8 = call i32 @lzma_stream_encoder(ptr noundef %strm, ptr noundef nonnull %filters, i32 noundef %spec.store.select23) #9, !dbg !194
  call void @llvm.dbg.value(metadata i32 %call8, metadata !168, metadata !DIExpression()), !dbg !170
  switch i32 %call8, label %sw.default17 [
    i32 0, label %cleanup
    i32 3, label %sw.bb9
    i32 5, label %sw.epilog18
    i32 8, label %sw.bb16
  ], !dbg !195

sw.bb9:                                           ; preds = %entry
  %call10 = call i32 @lzma_get_check(ptr noundef %strm) #9, !dbg !196
  br label %sw.epilog18, !dbg !198

sw.bb16:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr @.str.6, metadata !151, metadata !DIExpression()), !dbg !170
  br label %sw.epilog18, !dbg !199

sw.default17:                                     ; preds = %entry
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !151, metadata !DIExpression()), !dbg !170
  br label %sw.epilog18, !dbg !200

sw.epilog18:                                      ; preds = %sw.bb9, %entry, %sw.default17, %sw.bb16
  %msg.0 = phi ptr [ @.str.7, %sw.default17 ], [ @.str.6, %sw.bb16 ], [ @.str.5, %sw.bb9 ], [ @.str.5, %entry ], !dbg !201
  call void @llvm.dbg.value(metadata ptr %msg.0, metadata !151, metadata !DIExpression()), !dbg !170
  %call19 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i32 noundef %preset, i32 noundef %spec.store.select23, ptr noundef nonnull %msg.0, i32 noundef %call8), !dbg !202
  br label %cleanup, !dbg !203

cleanup:                                          ; preds = %entry, %sw.epilog18
  %retval.0 = phi i1 [ false, %sw.epilog18 ], [ true, %entry ], !dbg !170
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lzma_local_options) #9, !dbg !204
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters) #9, !dbg !204
  ret i1 %retval.0, !dbg !204
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !205 zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !210 i32 @lzma_stream_encoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !216 i32 @lzma_get_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @uncompressStream(i32 noundef %zStream, i32 noundef %stream) local_unnamed_addr #0 !dbg !221 {
entry:
  %strm = alloca %struct.lzma_stream, align 8
  %in = alloca [8192 x i8], align 16
  %out = alloca [8192 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %zStream, metadata !226, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i32 %stream, metadata !227, metadata !DIExpression()), !dbg !244
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %strm) #9, !dbg !245
  call void @llvm.dbg.declare(metadata ptr %strm, metadata !228, metadata !DIExpression()), !dbg !246
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %strm, i8 0, i64 136, i1 false), !dbg !246
  call void @llvm.dbg.value(metadata i32 0, metadata !229, metadata !DIExpression()), !dbg !244
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %in) #9, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %in, metadata !231, metadata !DIExpression()), !dbg !248
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %out) #9, !dbg !249
  call void @llvm.dbg.declare(metadata ptr %out, metadata !235, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata ptr %strm, metadata !251, metadata !DIExpression()) #9, !dbg !258
  %call.i = call i32 @lzma_stream_decoder(ptr noundef nonnull %strm, i64 noundef -1, i32 noundef 10) #9, !dbg !261
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !257, metadata !DIExpression()) #9, !dbg !258
  switch i32 %call.i, label %sw.default15.i [
    i32 0, label %if.end
    i32 3, label %sw.bb1.i
    i32 5, label %init_decoder.exit
    i32 8, label %sw.bb14.i
  ], !dbg !262

sw.bb1.i:                                         ; preds = %entry
  %call2.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.19) #9, !dbg !263
  %call3.i = call i32 @lzma_get_check(ptr noundef nonnull %strm) #9, !dbg !265
  switch i32 %call3.i, label %sw.default.i [
    i32 0, label %if.end.sink.split
    i32 1, label %sw.bb6.i
    i32 4, label %sw.bb8.i
    i32 10, label %sw.bb10.i
  ], !dbg !266

sw.bb6.i:                                         ; preds = %sw.bb1.i
  br label %if.end.sink.split, !dbg !267

sw.bb8.i:                                         ; preds = %sw.bb1.i
  br label %if.end.sink.split, !dbg !269

sw.bb10.i:                                        ; preds = %sw.bb1.i
  br label %if.end.sink.split, !dbg !270

sw.default.i:                                     ; preds = %sw.bb1.i
  br label %if.end.sink.split, !dbg !271

sw.bb14.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !256, metadata !DIExpression()) #9, !dbg !258
  br label %init_decoder.exit, !dbg !272

sw.default15.i:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !256, metadata !DIExpression()) #9, !dbg !258
  br label %init_decoder.exit, !dbg !273

init_decoder.exit:                                ; preds = %entry, %sw.bb14.i, %sw.default15.i
  %msg.0.i = phi ptr [ @.str.14, %sw.default15.i ], [ @.str.25, %sw.bb14.i ], [ @.str.5, %entry ], !dbg !274
  call void @llvm.dbg.value(metadata ptr %msg.0.i, metadata !256, metadata !DIExpression()) #9, !dbg !258
  %call17.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.26, ptr noundef nonnull %msg.0.i, i32 noundef %call.i) #9, !dbg !275
  br label %cleanup47, !dbg !276

if.end.sink.split:                                ; preds = %sw.bb1.i, %sw.bb6.i, %sw.bb8.i, %sw.bb10.i, %sw.default.i
  %str.30.sink = phi ptr [ @str.30, %sw.default.i ], [ @str, %sw.bb10.i ], [ @str.27, %sw.bb8.i ], [ @str.28, %sw.bb6.i ], [ @str.29, %sw.bb1.i ]
  %puts24.i = call i32 @puts(ptr nonnull %str.30.sink) #9, !dbg !277
  br label %if.end, !dbg !278

if.end:                                           ; preds = %if.end.sink.split, %entry
  %avail_in = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 1, !dbg !278
  %next_out = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 3, !dbg !279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %strm, i8 0, i64 16, i1 false), !dbg !280
  store ptr %out, ptr %next_out, align 8, !dbg !281, !tbaa !282
  %avail_out = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 4, !dbg !284
  store i64 8192, ptr %avail_out, align 8, !dbg !285, !tbaa !286
  br label %while.cond, !dbg !287

while.condthread-pre-split:                       ; preds = %if.end32
  %.pr = load i64, ptr %avail_in, align 8, !dbg !288, !tbaa !290
  br label %while.cond, !dbg !288

while.cond:                                       ; preds = %while.condthread-pre-split, %if.end
  %0 = phi i64 [ %.pr, %while.condthread-pre-split ], [ 0, %if.end ], !dbg !288
  %action.0 = phi i32 [ %action.1, %while.condthread-pre-split ], [ 0, %if.end ], !dbg !291
  call void @llvm.dbg.value(metadata i32 %action.0, metadata !229, metadata !DIExpression()), !dbg !244
  %cmp = icmp eq i64 %0, 0, !dbg !292
  br i1 %cmp, label %land.lhs.true, label %if.end13, !dbg !293

land.lhs.true:                                    ; preds = %while.cond
  %1 = load ptr, ptr @spec_fd, align 8, !dbg !294, !tbaa !295
  %call2 = call i32 @spec_mem_feof(ptr noundef %1, i32 noundef 3, i32 noundef %zStream) #9, !dbg !294
  %tobool.not = icmp eq i32 %call2, 0, !dbg !294
  br i1 %tobool.not, label %if.then3, label %if.end13, !dbg !296

if.then3:                                         ; preds = %land.lhs.true
  store ptr %in, ptr %strm, align 8, !dbg !297, !tbaa !299
  %2 = load ptr, ptr @spec_fd, align 8, !dbg !300, !tbaa !295
  %call7 = call i64 @spec_mem_fread(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %in, i64 noundef 1, i32 noundef 8192, i32 noundef %zStream) #9, !dbg !300
  store i64 %call7, ptr %avail_in, align 8, !dbg !301, !tbaa !290
  %3 = load ptr, ptr @spec_fd, align 8, !dbg !302, !tbaa !295
  %call9 = call i32 @spec_mem_feof(ptr noundef %3, i32 noundef 3, i32 noundef %zStream) #9, !dbg !302
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !302
  %spec.select = select i1 %tobool10.not, i32 %action.0, i32 3, !dbg !304
  br label %if.end13, !dbg !304

if.end13:                                         ; preds = %if.then3, %land.lhs.true, %while.cond
  %action.1 = phi i32 [ %action.0, %land.lhs.true ], [ %action.0, %while.cond ], [ %spec.select, %if.then3 ], !dbg !244
  call void @llvm.dbg.value(metadata i32 %action.1, metadata !229, metadata !DIExpression()), !dbg !244
  %call14 = call i32 @lzma_code(ptr noundef nonnull %strm, i32 noundef %action.1) #9, !dbg !305
  call void @llvm.dbg.value(metadata i32 %call14, metadata !236, metadata !DIExpression()), !dbg !306
  %4 = load i64, ptr %avail_out, align 8, !dbg !307, !tbaa !286
  %cmp16 = icmp eq i64 %4, 0, !dbg !308
  %cmp17 = icmp eq i32 %call14, 1
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp17, !dbg !309
  br i1 %or.cond, label %if.then18, label %if.end32, !dbg !309

if.then18:                                        ; preds = %if.end13
  %sub = sub i64 8192, %4, !dbg !310
  call void @llvm.dbg.value(metadata i64 %sub, metadata !238, metadata !DIExpression()), !dbg !311
  %5 = load ptr, ptr @spec_fd, align 8, !dbg !312, !tbaa !295
  %conv = trunc i64 %sub to i32, !dbg !312
  %call21 = call i64 @spec_mem_fwrite(ptr noundef %5, i32 noundef 3, ptr noundef nonnull %out, i64 noundef 1, i32 noundef %conv, i32 noundef %stream) #9, !dbg !312
  %cmp22.not = icmp eq i64 %call21, %sub, !dbg !314
  br i1 %cmp22.not, label %cleanup.thread, label %cleanup, !dbg !315

cleanup.thread:                                   ; preds = %if.then18
  store ptr %out, ptr %next_out, align 8, !dbg !316, !tbaa !282
  store i64 8192, ptr %avail_out, align 8, !dbg !317, !tbaa !286
  br label %if.end32

cleanup:                                          ; preds = %if.then18
  %call25 = tail call ptr @__errno_location() #10, !dbg !318
  %6 = load i32, ptr %call25, align 4, !dbg !318, !tbaa !320
  %call26 = call ptr @strerror(i32 noundef %6) #9, !dbg !322
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i32 noundef %stream, ptr noundef %call26), !dbg !323
  br label %cleanup47

if.end32:                                         ; preds = %cleanup.thread, %if.end13
  switch i32 %call14, label %sw.epilog [
    i32 0, label %while.condthread-pre-split
    i32 1, label %sw.bb
    i32 5, label %sw.epilog.loopexit
    i32 7, label %sw.epilog.loopexit71
    i32 8, label %sw.epilog.loopexit80
    i32 9, label %sw.epilog.loopexit89
    i32 10, label %sw.epilog.loopexit98
  ], !dbg !324, !llvm.loop !325

sw.bb:                                            ; preds = %if.end32
  call void @lzma_end(ptr noundef nonnull %strm) #9, !dbg !328
  br label %cleanup47

sw.epilog.loopexit:                               ; preds = %if.end32
  br label %sw.epilog, !dbg !330

sw.epilog.loopexit71:                             ; preds = %if.end32
  br label %sw.epilog, !dbg !330

sw.epilog.loopexit80:                             ; preds = %if.end32
  br label %sw.epilog, !dbg !330

sw.epilog.loopexit89:                             ; preds = %if.end32
  br label %sw.epilog, !dbg !330

sw.epilog.loopexit98:                             ; preds = %if.end32
  br label %sw.epilog, !dbg !330

sw.epilog:                                        ; preds = %if.end32, %sw.epilog.loopexit98, %sw.epilog.loopexit89, %sw.epilog.loopexit80, %sw.epilog.loopexit71, %sw.epilog.loopexit
  %msg.0 = phi ptr [ @.str.5, %sw.epilog.loopexit ], [ @.str.10, %sw.epilog.loopexit71 ], [ @.str.11, %sw.epilog.loopexit80 ], [ @.str.12, %sw.epilog.loopexit89 ], [ @.str.13, %sw.epilog.loopexit98 ], [ @.str.14, %if.end32 ], !dbg !331
  call void @llvm.dbg.value(metadata ptr %msg.0, metadata !241, metadata !DIExpression()), !dbg !332
  %call41 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, ptr noundef nonnull %msg.0, i32 noundef %call14), !dbg !330
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup, %init_decoder.exit, %sw.bb, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %out) #9, !dbg !333
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %in) #9, !dbg !333
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %strm) #9, !dbg !333
  ret void, !dbg !333
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !334 i32 @spec_mem_feof(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !352 i64 @spec_mem_fread(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !355 i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !358 i64 @spec_mem_fwrite(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

declare !dbg !359 void @lzma_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @compressStream(i32 noundef %stream, i32 noundef %zStream, i32 noundef %preset) local_unnamed_addr #0 !dbg !362 {
entry:
  %filters.i = alloca [5 x %struct.lzma_filter], align 16
  %lzma_local_options.i = alloca %struct.lzma_options_lzma, align 8
  %strm = alloca %struct.lzma_stream, align 8
  %in = alloca [8192 x i8], align 16
  %out = alloca [8192 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %stream, metadata !366, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %zStream, metadata !367, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %preset, metadata !368, metadata !DIExpression()), !dbg !382
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %strm) #9, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %strm, metadata !369, metadata !DIExpression()), !dbg !384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %strm, i8 0, i64 136, i1 false), !dbg !384
  call void @llvm.dbg.value(metadata i32 0, metadata !370, metadata !DIExpression()), !dbg !382
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %in) #9, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %in, metadata !371, metadata !DIExpression()), !dbg !386
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %out) #9, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %out, metadata !372, metadata !DIExpression()), !dbg !388
  %tobool.not = icmp sgt i32 %preset, -1, !dbg !389
  %cond = select i1 %tobool.not, i32 4, i32 10, !dbg !389
  call void @llvm.dbg.value(metadata i32 %cond, metadata !373, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %strm, metadata !147, metadata !DIExpression()) #9, !dbg !390
  call void @llvm.dbg.value(metadata ptr null, metadata !148, metadata !DIExpression()) #9, !dbg !390
  call void @llvm.dbg.value(metadata i32 %preset, metadata !149, metadata !DIExpression()) #9, !dbg !390
  call void @llvm.dbg.value(metadata i32 %cond, metadata !150, metadata !DIExpression()) #9, !dbg !390
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %filters.i) #9, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %filters.i, metadata !155, metadata !DIExpression()) #9, !dbg !394
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %lzma_local_options.i) #9, !dbg !395
  call void @llvm.dbg.declare(metadata ptr %lzma_local_options.i, metadata !167, metadata !DIExpression()) #9, !dbg !396
  call void @llvm.dbg.value(metadata ptr %lzma_local_options.i, metadata !148, metadata !DIExpression()) #9, !dbg !390
  call void @llvm.dbg.value(metadata i32 %cond, metadata !150, metadata !DIExpression()) #9, !dbg !390
  %call.i = call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull %lzma_local_options.i, i32 noundef %preset) #9, !dbg !397
  store i64 33, ptr %filters.i, align 16, !dbg !398, !tbaa !183
  %options5.i = getelementptr inbounds %struct.lzma_filter, ptr %filters.i, i64 0, i32 1, !dbg !399
  store ptr %lzma_local_options.i, ptr %options5.i, align 8, !dbg !400, !tbaa !191
  %arrayidx6.i = getelementptr inbounds [5 x %struct.lzma_filter], ptr %filters.i, i64 0, i64 1, !dbg !401
  store i64 -1, ptr %arrayidx6.i, align 16, !dbg !402, !tbaa !183
  %call8.i = call i32 @lzma_stream_encoder(ptr noundef nonnull %strm, ptr noundef nonnull %filters.i, i32 noundef %cond) #9, !dbg !403
  call void @llvm.dbg.value(metadata i32 %call8.i, metadata !168, metadata !DIExpression()) #9, !dbg !390
  switch i32 %call8.i, label %sw.default17.i [
    i32 0, label %if.end
    i32 3, label %sw.bb9.i
    i32 5, label %init_encoder.exit
    i32 8, label %sw.bb16.i
  ], !dbg !404

sw.bb9.i:                                         ; preds = %entry
  %call10.i = call i32 @lzma_get_check(ptr noundef nonnull %strm) #9, !dbg !405
  br label %init_encoder.exit, !dbg !406

sw.bb16.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata ptr @.str.6, metadata !151, metadata !DIExpression()) #9, !dbg !390
  br label %init_encoder.exit, !dbg !407

sw.default17.i:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !151, metadata !DIExpression()) #9, !dbg !390
  br label %init_encoder.exit, !dbg !408

init_encoder.exit:                                ; preds = %entry, %sw.bb9.i, %sw.bb16.i, %sw.default17.i
  %msg.0.i = phi ptr [ @.str.7, %sw.default17.i ], [ @.str.6, %sw.bb16.i ], [ @.str.5, %sw.bb9.i ], [ @.str.5, %entry ], !dbg !409
  call void @llvm.dbg.value(metadata ptr %msg.0.i, metadata !151, metadata !DIExpression()) #9, !dbg !390
  %call19.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i32 noundef %preset, i32 noundef %cond, ptr noundef nonnull %msg.0.i, i32 noundef %call8.i) #9, !dbg !410
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lzma_local_options.i) #9, !dbg !411
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters.i) #9, !dbg !411
  br label %cleanup45, !dbg !412

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lzma_local_options.i) #9, !dbg !411
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters.i) #9, !dbg !411
  %avail_in = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 1, !dbg !413
  %next_out = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 3, !dbg !414
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %strm, i8 0, i64 16, i1 false), !dbg !415
  store ptr %out, ptr %next_out, align 8, !dbg !416, !tbaa !282
  %avail_out = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 4, !dbg !417
  store i64 8192, ptr %avail_out, align 8, !dbg !418, !tbaa !286
  br label %while.cond, !dbg !419

while.condthread-pre-split:                       ; preds = %if.end33
  %.pr = load i64, ptr %avail_in, align 8, !dbg !420, !tbaa !290
  br label %while.cond, !dbg !420

while.cond:                                       ; preds = %while.condthread-pre-split, %if.end
  %0 = phi i64 [ %.pr, %while.condthread-pre-split ], [ 0, %if.end ], !dbg !420
  %action.0 = phi i32 [ %action.1, %while.condthread-pre-split ], [ 0, %if.end ], !dbg !422
  call void @llvm.dbg.value(metadata i32 %action.0, metadata !370, metadata !DIExpression()), !dbg !382
  %cmp = icmp eq i64 %0, 0, !dbg !423
  br i1 %cmp, label %land.lhs.true, label %if.end14, !dbg !424

land.lhs.true:                                    ; preds = %while.cond
  %1 = load ptr, ptr @spec_fd, align 8, !dbg !425, !tbaa !295
  %call2 = call i32 @spec_mem_feof(ptr noundef %1, i32 noundef 3, i32 noundef %stream) #9, !dbg !425
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !425
  br i1 %tobool3.not, label %if.then4, label %if.end14, !dbg !426

if.then4:                                         ; preds = %land.lhs.true
  store ptr %in, ptr %strm, align 8, !dbg !427, !tbaa !299
  %2 = load ptr, ptr @spec_fd, align 8, !dbg !429, !tbaa !295
  %call8 = call i64 @spec_mem_fread(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %in, i64 noundef 1, i32 noundef 8192, i32 noundef %stream) #9, !dbg !429
  store i64 %call8, ptr %avail_in, align 8, !dbg !430, !tbaa !290
  %3 = load ptr, ptr @spec_fd, align 8, !dbg !431, !tbaa !295
  %call10 = call i32 @spec_mem_feof(ptr noundef %3, i32 noundef 3, i32 noundef %stream) #9, !dbg !431
  %tobool11.not = icmp eq i32 %call10, 0, !dbg !431
  %spec.select = select i1 %tobool11.not, i32 %action.0, i32 3, !dbg !433
  br label %if.end14, !dbg !433

if.end14:                                         ; preds = %if.then4, %land.lhs.true, %while.cond
  %action.1 = phi i32 [ %action.0, %land.lhs.true ], [ %action.0, %while.cond ], [ %spec.select, %if.then4 ], !dbg !382
  call void @llvm.dbg.value(metadata i32 %action.1, metadata !370, metadata !DIExpression()), !dbg !382
  %call15 = call i32 @lzma_code(ptr noundef nonnull %strm, i32 noundef %action.1) #9, !dbg !434
  call void @llvm.dbg.value(metadata i32 %call15, metadata !374, metadata !DIExpression()), !dbg !435
  %4 = load i64, ptr %avail_out, align 8, !dbg !436, !tbaa !286
  %cmp17 = icmp eq i64 %4, 0, !dbg !437
  %cmp18 = icmp eq i32 %call15, 1
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp18, !dbg !438
  br i1 %or.cond, label %if.then19, label %if.end33, !dbg !438

if.then19:                                        ; preds = %if.end14
  %sub = sub i64 8192, %4, !dbg !439
  call void @llvm.dbg.value(metadata i64 %sub, metadata !376, metadata !DIExpression()), !dbg !440
  %5 = load ptr, ptr @spec_fd, align 8, !dbg !441, !tbaa !295
  %conv = trunc i64 %sub to i32, !dbg !441
  %call22 = call i64 @spec_mem_fwrite(ptr noundef %5, i32 noundef 3, ptr noundef nonnull %out, i64 noundef 1, i32 noundef %conv, i32 noundef %zStream) #9, !dbg !441
  %cmp23.not = icmp eq i64 %call22, %sub, !dbg !443
  br i1 %cmp23.not, label %cleanup.thread, label %cleanup, !dbg !444

cleanup.thread:                                   ; preds = %if.then19
  store ptr %out, ptr %next_out, align 8, !dbg !445, !tbaa !282
  store i64 8192, ptr %avail_out, align 8, !dbg !446, !tbaa !286
  br label %if.end33

cleanup:                                          ; preds = %if.then19
  %call26 = tail call ptr @__errno_location() #10, !dbg !447
  %6 = load i32, ptr %call26, align 4, !dbg !447, !tbaa !320
  %call27 = call ptr @strerror(i32 noundef %6) #9, !dbg !449
  %call28 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.16, i32 noundef %zStream, ptr noundef %call27), !dbg !450
  br label %cleanup45

if.end33:                                         ; preds = %cleanup.thread, %if.end14
  switch i32 %call15, label %sw.epilog [
    i32 0, label %while.condthread-pre-split
    i32 1, label %sw.bb
    i32 5, label %sw.epilog.loopexit
    i32 9, label %sw.epilog.loopexit86
  ], !dbg !451, !llvm.loop !452

sw.bb:                                            ; preds = %if.end33
  call void @lzma_end(ptr noundef nonnull %strm) #9, !dbg !454
  br label %cleanup45

sw.epilog.loopexit:                               ; preds = %if.end33
  br label %sw.epilog, !dbg !456

sw.epilog.loopexit86:                             ; preds = %if.end33
  br label %sw.epilog, !dbg !456

sw.epilog:                                        ; preds = %if.end33, %sw.epilog.loopexit86, %sw.epilog.loopexit
  %msg.0 = phi ptr [ @.str.5, %sw.epilog.loopexit ], [ @.str.17, %sw.epilog.loopexit86 ], [ @.str.14, %if.end33 ], !dbg !457
  call void @llvm.dbg.value(metadata ptr %msg.0, metadata !379, metadata !DIExpression()), !dbg !458
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.18, ptr noundef nonnull %msg.0, i32 noundef %call15), !dbg !456
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup, %init_encoder.exit, %sw.bb, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %out) #9, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %in) #9, !dbg !459
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %strm) #9, !dbg !459
  ret void, !dbg !459
}

declare !dbg !460 i32 @lzma_stream_decoder(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !47, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/spec_xz.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "f22eda92b420f180986f2d97b8a85126")
!2 = !{!3, !8, !13, !20, !27, !41}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7}
!7 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 138, baseType: !5, size: 32, elements: !10)
!9 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/lzma.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!12 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 58, baseType: !5, size: 32, elements: !14)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!16 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!17 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!18 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!19 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 27, baseType: !5, size: 32, elements: !22)
!21 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!24 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!25 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!26 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, baseType: !5, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!29 = !DIEnumerator(name: "LZMA_OK", value: 0)
!30 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!31 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!32 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!33 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!34 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!35 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!36 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!37 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!38 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!39 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!40 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !42)
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!44 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!45 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!46 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!47 = !{!48, !5, !49}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 46, baseType: !51)
!50 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !{i32 7, !"Dwarf Version", i32 5}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{i32 7, !"PIC Level", i32 2}
!56 = !{i32 7, !"PIE Level", i32 2}
!57 = !{i32 7, !"uwtable", i32 2}
!58 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!59 = distinct !DISubprogram(name: "init_encoder", scope: !60, file: !60, line: 68, type: !61, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !146)
!60 = !DIFile(filename: "apps/557.xz_r/src/spec_xz.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f22eda92b420f180986f2d97b8a85126")
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !64, !113, !118, !145}
!63 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !67)
!67 = !{!68, !76, !77, !80, !82, !83, !84, !98, !102, !103, !104, !105, !106, !107, !108, !109, !110, !112}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !66, file: !4, line: 454, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !72, line: 24, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !74, line: 38, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!75 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !66, file: !4, line: 455, baseType: !49, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !66, file: !4, line: 456, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !72, line: 27, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !74, line: 45, baseType: !51)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !66, file: !4, line: 458, baseType: !81, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !66, file: !4, line: 459, baseType: !49, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !66, file: !4, line: 460, baseType: !78, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !66, file: !4, line: 468, baseType: !85, size: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !88)
!88 = !{!89, !93, !97}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !87, file: !4, line: 376, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!48, !48, !49, !49}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !87, file: !4, line: 390, baseType: !94, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !48, !48}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !87, file: !4, line: 401, baseType: !48, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !66, file: !4, line: 471, baseType: !99, size: 64, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !101)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !4, line: 411, flags: DIFlagFwdDecl)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !66, file: !4, line: 479, baseType: !48, size: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !66, file: !4, line: 480, baseType: !48, size: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !66, file: !4, line: 481, baseType: !48, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !66, file: !4, line: 482, baseType: !48, size: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !66, file: !4, line: 483, baseType: !78, size: 64, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !66, file: !4, line: 484, baseType: !78, size: 64, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !66, file: !4, line: 485, baseType: !49, size: 64, offset: 896)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !66, file: !4, line: 486, baseType: !49, size: 64, offset: 960)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !66, file: !4, line: 487, baseType: !111, size: 32, offset: 1024)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !3)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !66, file: !4, line: 488, baseType: !111, size: 32, offset: 1056)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !9, line: 399, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 185, size: 896, elements: !116)
!116 = !{!117, !120, !121, !122, !123, !124, !125, !127, !128, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !115, file: !9, line: 217, baseType: !118, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !72, line: 26, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !74, line: 42, baseType: !5)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !115, file: !9, line: 240, baseType: !69, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !115, file: !9, line: 254, baseType: !118, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !115, file: !9, line: 281, baseType: !118, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !115, file: !9, line: 293, baseType: !118, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !115, file: !9, line: 316, baseType: !118, size: 32, offset: 224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !115, file: !9, line: 322, baseType: !126, size: 32, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !9, line: 155, baseType: !8)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !115, file: !9, line: 342, baseType: !118, size: 32, offset: 288)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !115, file: !9, line: 345, baseType: !129, size: 32, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !9, line: 111, baseType: !13)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !115, file: !9, line: 375, baseType: !118, size: 32, offset: 352)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !115, file: !9, line: 384, baseType: !118, size: 32, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !115, file: !9, line: 385, baseType: !118, size: 32, offset: 416)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !115, file: !9, line: 386, baseType: !118, size: 32, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !115, file: !9, line: 387, baseType: !118, size: 32, offset: 480)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !115, file: !9, line: 388, baseType: !118, size: 32, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !115, file: !9, line: 389, baseType: !118, size: 32, offset: 544)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !115, file: !9, line: 390, baseType: !118, size: 32, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !115, file: !9, line: 391, baseType: !118, size: 32, offset: 608)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !115, file: !9, line: 392, baseType: !111, size: 32, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !115, file: !9, line: 393, baseType: !111, size: 32, offset: 672)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !115, file: !9, line: 394, baseType: !111, size: 32, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !115, file: !9, line: 395, baseType: !111, size: 32, offset: 736)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !115, file: !9, line: 396, baseType: !48, size: 64, offset: 768)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !115, file: !9, line: 397, baseType: !48, size: 64, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !21, line: 55, baseType: !20)
!146 = !{!147, !148, !149, !150, !151, !155, !167, !168}
!147 = !DILocalVariable(name: "strm", arg: 1, scope: !59, file: !60, line: 68, type: !64)
!148 = !DILocalVariable(name: "options", arg: 2, scope: !59, file: !60, line: 68, type: !113)
!149 = !DILocalVariable(name: "preset", arg: 3, scope: !59, file: !60, line: 68, type: !118)
!150 = !DILocalVariable(name: "check", arg: 4, scope: !59, file: !60, line: 68, type: !145)
!151 = !DILocalVariable(name: "msg", scope: !59, file: !60, line: 69, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!155 = !DILocalVariable(name: "filters", scope: !59, file: !60, line: 70, type: !156)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 640, elements: !165)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !158, line: 65, baseType: !159)
!158 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 43, size: 128, elements: !160)
!160 = !{!161, !164}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !159, file: !158, line: 54, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !163, line: 63, baseType: !78)
!163 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!164 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !159, file: !158, line: 63, baseType: !48, size: 64, offset: 64)
!165 = !{!166}
!166 = !DISubrange(count: 5)
!167 = !DILocalVariable(name: "lzma_local_options", scope: !59, file: !60, line: 71, type: !114)
!168 = !DILocalVariable(name: "rc", scope: !59, file: !60, line: 83, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !27)
!170 = !DILocation(line: 0, scope: !59)
!171 = !DILocation(line: 70, column: 5, scope: !59)
!172 = !DILocation(line: 70, column: 17, scope: !59)
!173 = !DILocation(line: 71, column: 5, scope: !59)
!174 = !DILocation(line: 71, column: 23, scope: !59)
!175 = !DILocation(line: 72, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !59, file: !60, line: 72, column: 9)
!177 = !DILocation(line: 72, column: 9, scope: !59)
!178 = !DILocation(line: 75, column: 29, scope: !179)
!179 = distinct !DILexicalBlock(scope: !59, file: !60, line: 75, column: 9)
!180 = !DILocation(line: 75, column: 9, scope: !59)
!181 = !DILocation(line: 78, column: 5, scope: !59)
!182 = !DILocation(line: 79, column: 19, scope: !59)
!183 = !{!184, !185, i64 0}
!184 = !{!"", !185, i64 0, !188, i64 8}
!185 = !{!"long", !186, i64 0}
!186 = !{!"omnipotent char", !187, i64 0}
!187 = !{!"Simple C/C++ TBAA"}
!188 = !{!"any pointer", !186, i64 0}
!189 = !DILocation(line: 80, column: 16, scope: !59)
!190 = !DILocation(line: 80, column: 24, scope: !59)
!191 = !{!184, !188, i64 8}
!192 = !DILocation(line: 81, column: 5, scope: !59)
!193 = !DILocation(line: 81, column: 19, scope: !59)
!194 = !DILocation(line: 83, column: 19, scope: !59)
!195 = !DILocation(line: 85, column: 5, scope: !59)
!196 = !DILocation(line: 89, column: 20, scope: !197)
!197 = distinct !DILexicalBlock(scope: !59, file: !60, line: 85, column: 16)
!198 = !DILocation(line: 89, column: 13, scope: !197)
!199 = !DILocation(line: 113, column: 13, scope: !197)
!200 = !DILocation(line: 116, column: 13, scope: !197)
!201 = !DILocation(line: 0, scope: !197)
!202 = !DILocation(line: 118, column: 5, scope: !59)
!203 = !DILocation(line: 119, column: 5, scope: !59)
!204 = !DILocation(line: 120, column: 1, scope: !59)
!205 = !DISubprogram(name: "lzma_lzma_preset", scope: !9, file: !9, line: 419, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !209)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !113, !118}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !75)
!209 = !{}
!210 = !DISubprogram(name: "lzma_stream_encoder", scope: !211, file: !211, line: 188, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !209)
!211 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/container.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7f878de3abe07c50108c7f7da139bedb")
!212 = !DISubroutineType(types: !213)
!213 = !{!169, !64, !214, !145}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!216 = !DISubprogram(name: "lzma_get_check", scope: !21, file: !21, line: 149, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !209)
!217 = !DISubroutineType(types: !218)
!218 = !{!145, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!221 = distinct !DISubprogram(name: "uncompressStream", scope: !60, file: !60, line: 122, type: !222, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !224, !224}
!224 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!225 = !{!226, !227, !228, !229, !231, !235, !236, !238, !241}
!226 = !DILocalVariable(name: "zStream", arg: 1, scope: !221, file: !60, line: 122, type: !224)
!227 = !DILocalVariable(name: "stream", arg: 2, scope: !221, file: !60, line: 122, type: !224)
!228 = !DILocalVariable(name: "strm", scope: !221, file: !60, line: 123, type: !65)
!229 = !DILocalVariable(name: "action", scope: !221, file: !60, line: 124, type: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !41)
!231 = !DILocalVariable(name: "in", scope: !221, file: !60, line: 126, type: !232)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 65536, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 8192)
!235 = !DILocalVariable(name: "out", scope: !221, file: !60, line: 127, type: !232)
!236 = !DILocalVariable(name: "rc", scope: !237, file: !60, line: 152, type: !169)
!237 = distinct !DILexicalBlock(scope: !221, file: !60, line: 141, column: 17)
!238 = !DILocalVariable(name: "write_size", scope: !239, file: !60, line: 155, type: !49)
!239 = distinct !DILexicalBlock(scope: !240, file: !60, line: 154, column: 59)
!240 = distinct !DILexicalBlock(scope: !237, file: !60, line: 154, column: 13)
!241 = !DILocalVariable(name: "msg", scope: !242, file: !60, line: 166, type: !152)
!242 = distinct !DILexicalBlock(scope: !243, file: !60, line: 165, column: 28)
!243 = distinct !DILexicalBlock(scope: !237, file: !60, line: 165, column: 13)
!244 = !DILocation(line: 0, scope: !221)
!245 = !DILocation(line: 123, column: 5, scope: !221)
!246 = !DILocation(line: 123, column: 17, scope: !221)
!247 = !DILocation(line: 126, column: 5, scope: !221)
!248 = !DILocation(line: 126, column: 13, scope: !221)
!249 = !DILocation(line: 127, column: 5, scope: !221)
!250 = !DILocation(line: 127, column: 13, scope: !221)
!251 = !DILocalVariable(name: "strm", arg: 1, scope: !252, file: !60, line: 27, type: !64)
!252 = distinct !DISubprogram(name: "init_decoder", scope: !60, file: !60, line: 27, type: !253, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{!63, !64}
!255 = !{!251, !256, !257}
!256 = !DILocalVariable(name: "msg", scope: !252, file: !60, line: 28, type: !152)
!257 = !DILocalVariable(name: "rc", scope: !252, file: !60, line: 29, type: !169)
!258 = !DILocation(line: 0, scope: !252, inlinedAt: !259)
!259 = distinct !DILocation(line: 129, column: 10, scope: !260)
!260 = distinct !DILexicalBlock(scope: !221, file: !60, line: 129, column: 9)
!261 = !DILocation(line: 29, column: 19, scope: !252, inlinedAt: !259)
!262 = !DILocation(line: 30, column: 5, scope: !252, inlinedAt: !259)
!263 = !DILocation(line: 34, column: 13, scope: !264, inlinedAt: !259)
!264 = distinct !DILexicalBlock(scope: !252, file: !60, line: 30, column: 16)
!265 = !DILocation(line: 35, column: 20, scope: !264, inlinedAt: !259)
!266 = !DILocation(line: 35, column: 13, scope: !264, inlinedAt: !259)
!267 = !DILocation(line: 41, column: 21, scope: !268, inlinedAt: !259)
!268 = distinct !DILexicalBlock(scope: !264, file: !60, line: 35, column: 42)
!269 = !DILocation(line: 44, column: 21, scope: !268, inlinedAt: !259)
!270 = !DILocation(line: 47, column: 21, scope: !268, inlinedAt: !259)
!271 = !DILocation(line: 50, column: 21, scope: !268, inlinedAt: !259)
!272 = !DILocation(line: 59, column: 13, scope: !264, inlinedAt: !259)
!273 = !DILocation(line: 62, column: 13, scope: !264, inlinedAt: !259)
!274 = !DILocation(line: 0, scope: !264, inlinedAt: !259)
!275 = !DILocation(line: 64, column: 5, scope: !252, inlinedAt: !259)
!276 = !DILocation(line: 129, column: 9, scope: !221)
!277 = !DILocation(line: 0, scope: !268, inlinedAt: !259)
!278 = !DILocation(line: 138, column: 10, scope: !221)
!279 = !DILocation(line: 139, column: 10, scope: !221)
!280 = !DILocation(line: 138, column: 19, scope: !221)
!281 = !DILocation(line: 139, column: 19, scope: !221)
!282 = !{!283, !188, i64 24}
!283 = !{!"", !188, i64 0, !185, i64 8, !185, i64 16, !188, i64 24, !185, i64 32, !185, i64 40, !188, i64 48, !188, i64 56, !188, i64 64, !188, i64 72, !188, i64 80, !188, i64 88, !185, i64 96, !185, i64 104, !185, i64 112, !185, i64 120, !186, i64 128, !186, i64 132}
!284 = !DILocation(line: 140, column: 10, scope: !221)
!285 = !DILocation(line: 140, column: 20, scope: !221)
!286 = !{!283, !185, i64 32}
!287 = !DILocation(line: 141, column: 5, scope: !221)
!288 = !DILocation(line: 142, column: 18, scope: !289)
!289 = distinct !DILexicalBlock(scope: !237, file: !60, line: 142, column: 13)
!290 = !{!283, !185, i64 8}
!291 = !DILocation(line: 124, column: 17, scope: !221)
!292 = !DILocation(line: 142, column: 27, scope: !289)
!293 = !DILocation(line: 142, column: 32, scope: !289)
!294 = !DILocation(line: 142, column: 36, scope: !289)
!295 = !{!188, !188, i64 0}
!296 = !DILocation(line: 142, column: 13, scope: !237)
!297 = !DILocation(line: 143, column: 26, scope: !298)
!298 = distinct !DILexicalBlock(scope: !289, file: !60, line: 142, column: 51)
!299 = !{!283, !188, i64 0}
!300 = !DILocation(line: 144, column: 29, scope: !298)
!301 = !DILocation(line: 144, column: 27, scope: !298)
!302 = !DILocation(line: 146, column: 17, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !60, line: 146, column: 17)
!304 = !DILocation(line: 146, column: 17, scope: !298)
!305 = !DILocation(line: 152, column: 23, scope: !237)
!306 = !DILocation(line: 0, scope: !237)
!307 = !DILocation(line: 154, column: 18, scope: !240)
!308 = !DILocation(line: 154, column: 28, scope: !240)
!309 = !DILocation(line: 154, column: 33, scope: !240)
!310 = !DILocation(line: 155, column: 45, scope: !239)
!311 = !DILocation(line: 0, scope: !239)
!312 = !DILocation(line: 156, column: 25, scope: !313)
!313 = distinct !DILexicalBlock(scope: !239, file: !60, line: 156, column: 17)
!314 = !DILocation(line: 156, column: 60, scope: !313)
!315 = !DILocation(line: 156, column: 17, scope: !239)
!316 = !DILocation(line: 161, column: 27, scope: !239)
!317 = !DILocation(line: 162, column: 28, scope: !239)
!318 = !DILocation(line: 157, column: 79, scope: !319)
!319 = distinct !DILexicalBlock(scope: !313, file: !60, line: 156, column: 75)
!320 = !{!321, !321, i64 0}
!321 = !{!"int", !186, i64 0}
!322 = !DILocation(line: 157, column: 70, scope: !319)
!323 = !DILocation(line: 157, column: 17, scope: !319)
!324 = !DILocation(line: 165, column: 13, scope: !237)
!325 = distinct !{!325, !287, !326, !327}
!326 = !DILocation(line: 195, column: 5, scope: !221)
!327 = !{!"llvm.loop.unroll.disable"}
!328 = !DILocation(line: 170, column: 21, scope: !329)
!329 = distinct !DILexicalBlock(scope: !242, file: !60, line: 167, column: 24)
!330 = !DILocation(line: 192, column: 13, scope: !242)
!331 = !DILocation(line: 0, scope: !329)
!332 = !DILocation(line: 0, scope: !242)
!333 = !DILocation(line: 202, column: 1, scope: !221)
!334 = !DISubprogram(name: "spec_mem_feof", scope: !335, file: !335, line: 63, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !209)
!335 = !DIFile(filename: "apps/557.xz_r/src/spec_mem_io/spec_mem_io.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "20f82235716911ab040d2b344ceb3e0d")
!336 = !DISubroutineType(types: !337)
!337 = !{!224, !338, !5, !224}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "spec_fd_t", file: !335, line: 40, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 34, size: 320, elements: !341)
!341 = !{!342, !347, !348, !349, !350}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !340, file: !335, line: 35, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !344, line: 27, baseType: !345)
!344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !74, line: 44, baseType: !346)
!346 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !340, file: !335, line: 36, baseType: !343, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !340, file: !335, line: 37, baseType: !343, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !340, file: !335, line: 38, baseType: !224, size: 32, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !340, file: !335, line: 39, baseType: !351, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!352 = !DISubprogram(name: "spec_mem_fread", scope: !335, file: !335, line: 59, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !209)
!353 = !DISubroutineType(types: !354)
!354 = !{!343, !338, !5, !351, !343, !224, !224}
!355 = !DISubprogram(name: "lzma_code", scope: !4, file: !4, line: 529, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !209)
!356 = !DISubroutineType(types: !357)
!357 = !{!169, !64, !230}
!358 = !DISubprogram(name: "spec_mem_fwrite", scope: !335, file: !335, line: 60, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !209)
!359 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !209)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !64}
!362 = distinct !DISubprogram(name: "compressStream", scope: !60, file: !60, line: 205, type: !363, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !224, !224, !118}
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374, !376, !379}
!366 = !DILocalVariable(name: "stream", arg: 1, scope: !362, file: !60, line: 205, type: !224)
!367 = !DILocalVariable(name: "zStream", arg: 2, scope: !362, file: !60, line: 205, type: !224)
!368 = !DILocalVariable(name: "preset", arg: 3, scope: !362, file: !60, line: 205, type: !118)
!369 = !DILocalVariable(name: "strm", scope: !362, file: !60, line: 206, type: !65)
!370 = !DILocalVariable(name: "action", scope: !362, file: !60, line: 207, type: !230)
!371 = !DILocalVariable(name: "in", scope: !362, file: !60, line: 209, type: !232)
!372 = !DILocalVariable(name: "out", scope: !362, file: !60, line: 210, type: !232)
!373 = !DILocalVariable(name: "check", scope: !362, file: !60, line: 215, type: !145)
!374 = !DILocalVariable(name: "rc", scope: !375, file: !60, line: 240, type: !169)
!375 = distinct !DILexicalBlock(scope: !362, file: !60, line: 229, column: 17)
!376 = !DILocalVariable(name: "write_size", scope: !377, file: !60, line: 243, type: !49)
!377 = distinct !DILexicalBlock(scope: !378, file: !60, line: 242, column: 59)
!378 = distinct !DILexicalBlock(scope: !375, file: !60, line: 242, column: 13)
!379 = !DILocalVariable(name: "msg", scope: !380, file: !60, line: 254, type: !152)
!380 = distinct !DILexicalBlock(scope: !381, file: !60, line: 253, column: 28)
!381 = distinct !DILexicalBlock(scope: !375, file: !60, line: 253, column: 13)
!382 = !DILocation(line: 0, scope: !362)
!383 = !DILocation(line: 206, column: 5, scope: !362)
!384 = !DILocation(line: 206, column: 17, scope: !362)
!385 = !DILocation(line: 209, column: 5, scope: !362)
!386 = !DILocation(line: 209, column: 13, scope: !362)
!387 = !DILocation(line: 210, column: 5, scope: !362)
!388 = !DILocation(line: 210, column: 13, scope: !362)
!389 = !DILocation(line: 215, column: 24, scope: !362)
!390 = !DILocation(line: 0, scope: !59, inlinedAt: !391)
!391 = distinct !DILocation(line: 217, column: 10, scope: !392)
!392 = distinct !DILexicalBlock(scope: !362, file: !60, line: 217, column: 9)
!393 = !DILocation(line: 70, column: 5, scope: !59, inlinedAt: !391)
!394 = !DILocation(line: 70, column: 17, scope: !59, inlinedAt: !391)
!395 = !DILocation(line: 71, column: 5, scope: !59, inlinedAt: !391)
!396 = !DILocation(line: 71, column: 23, scope: !59, inlinedAt: !391)
!397 = !DILocation(line: 78, column: 5, scope: !59, inlinedAt: !391)
!398 = !DILocation(line: 79, column: 19, scope: !59, inlinedAt: !391)
!399 = !DILocation(line: 80, column: 16, scope: !59, inlinedAt: !391)
!400 = !DILocation(line: 80, column: 24, scope: !59, inlinedAt: !391)
!401 = !DILocation(line: 81, column: 5, scope: !59, inlinedAt: !391)
!402 = !DILocation(line: 81, column: 19, scope: !59, inlinedAt: !391)
!403 = !DILocation(line: 83, column: 19, scope: !59, inlinedAt: !391)
!404 = !DILocation(line: 85, column: 5, scope: !59, inlinedAt: !391)
!405 = !DILocation(line: 89, column: 20, scope: !197, inlinedAt: !391)
!406 = !DILocation(line: 89, column: 13, scope: !197, inlinedAt: !391)
!407 = !DILocation(line: 113, column: 13, scope: !197, inlinedAt: !391)
!408 = !DILocation(line: 116, column: 13, scope: !197, inlinedAt: !391)
!409 = !DILocation(line: 0, scope: !197, inlinedAt: !391)
!410 = !DILocation(line: 118, column: 5, scope: !59, inlinedAt: !391)
!411 = !DILocation(line: 120, column: 1, scope: !59, inlinedAt: !391)
!412 = !DILocation(line: 217, column: 9, scope: !362)
!413 = !DILocation(line: 226, column: 10, scope: !362)
!414 = !DILocation(line: 227, column: 10, scope: !362)
!415 = !DILocation(line: 226, column: 19, scope: !362)
!416 = !DILocation(line: 227, column: 19, scope: !362)
!417 = !DILocation(line: 228, column: 10, scope: !362)
!418 = !DILocation(line: 228, column: 20, scope: !362)
!419 = !DILocation(line: 229, column: 5, scope: !362)
!420 = !DILocation(line: 230, column: 18, scope: !421)
!421 = distinct !DILexicalBlock(scope: !375, file: !60, line: 230, column: 13)
!422 = !DILocation(line: 207, column: 17, scope: !362)
!423 = !DILocation(line: 230, column: 27, scope: !421)
!424 = !DILocation(line: 230, column: 32, scope: !421)
!425 = !DILocation(line: 230, column: 36, scope: !421)
!426 = !DILocation(line: 230, column: 13, scope: !375)
!427 = !DILocation(line: 231, column: 26, scope: !428)
!428 = distinct !DILexicalBlock(scope: !421, file: !60, line: 230, column: 50)
!429 = !DILocation(line: 232, column: 29, scope: !428)
!430 = !DILocation(line: 232, column: 27, scope: !428)
!431 = !DILocation(line: 234, column: 17, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !60, line: 234, column: 17)
!433 = !DILocation(line: 234, column: 17, scope: !428)
!434 = !DILocation(line: 240, column: 23, scope: !375)
!435 = !DILocation(line: 0, scope: !375)
!436 = !DILocation(line: 242, column: 18, scope: !378)
!437 = !DILocation(line: 242, column: 28, scope: !378)
!438 = !DILocation(line: 242, column: 33, scope: !378)
!439 = !DILocation(line: 243, column: 45, scope: !377)
!440 = !DILocation(line: 0, scope: !377)
!441 = !DILocation(line: 244, column: 25, scope: !442)
!442 = distinct !DILexicalBlock(scope: !377, file: !60, line: 244, column: 17)
!443 = !DILocation(line: 244, column: 61, scope: !442)
!444 = !DILocation(line: 244, column: 17, scope: !377)
!445 = !DILocation(line: 249, column: 27, scope: !377)
!446 = !DILocation(line: 250, column: 28, scope: !377)
!447 = !DILocation(line: 245, column: 78, scope: !448)
!448 = distinct !DILexicalBlock(scope: !442, file: !60, line: 244, column: 76)
!449 = !DILocation(line: 245, column: 69, scope: !448)
!450 = !DILocation(line: 245, column: 17, scope: !448)
!451 = !DILocation(line: 253, column: 13, scope: !375)
!452 = distinct !{!452, !419, !453, !327}
!453 = !DILocation(line: 274, column: 5, scope: !362)
!454 = !DILocation(line: 258, column: 21, scope: !455)
!455 = distinct !DILexicalBlock(scope: !380, file: !60, line: 255, column: 24)
!456 = !DILocation(line: 271, column: 13, scope: !380)
!457 = !DILocation(line: 0, scope: !455)
!458 = !DILocation(line: 0, scope: !380)
!459 = !DILocation(line: 281, column: 1, scope: !362)
!460 = !DISubprogram(name: "lzma_stream_decoder", scope: !211, file: !211, line: 339, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !209)
!461 = !DISubroutineType(types: !462)
!462 = !{!169, !64, !78, !118}
