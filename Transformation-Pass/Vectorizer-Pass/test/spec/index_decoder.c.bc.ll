; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/index_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/index_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, i64, ptr, ptr, i64, i64, i64, i64, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_decoder(ptr noundef %strm, ptr noundef %i, i64 noundef %memlimit) local_unnamed_addr #0 !dbg !172 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !201, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata ptr %i, metadata !202, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i64 %memlimit, metadata !203, metadata !DIExpression()), !dbg !209
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #4, !dbg !210
  call void @llvm.dbg.value(metadata i32 %call, metadata !204, metadata !DIExpression()), !dbg !211
  %cmp.not = icmp eq i32 %call, 0, !dbg !212
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !214
  %0 = load ptr, ptr %internal, align 8, !dbg !214, !tbaa !215
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !214
  %1 = load ptr, ptr %allocator, align 8, !dbg !214, !tbaa !221
  %call3 = tail call i32 @index_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %i, i64 noundef %memlimit), !dbg !214
  call void @llvm.dbg.value(metadata i32 %call3, metadata !208, metadata !DIExpression()), !dbg !222
  %cmp4.not = icmp eq i32 %call3, 0, !dbg !223
  br i1 %cmp4.not, label %do.end10, label %cleanup7, !dbg !214

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #4, !dbg !225
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !227, !tbaa !215
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, !dbg !228
  store i8 1, ptr %supported_actions, align 8, !dbg !229, !tbaa !230
  %arrayidx14 = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, i64 3, !dbg !232
  store i8 1, ptr %arrayidx14, align 1, !dbg !233, !tbaa !230
  br label %return, !dbg !234

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !209
  ret i32 %retval.2, !dbg !235
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !236 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @index_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %i, i64 noundef %memlimit) #0 !dbg !240 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !245, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !246, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata ptr %i, metadata !247, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i64 %memlimit, metadata !248, metadata !DIExpression()), !dbg !249
  %init = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 2, !dbg !250
  %0 = load i64, ptr %init, align 8, !dbg !250, !tbaa !253
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @index_decoder_init to i64), !dbg !250
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !255

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4, !dbg !250
  br label %if.end, !dbg !250

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @index_decoder_init to i64), ptr %init, align 8, !dbg !255, !tbaa !253
  %cmp2 = icmp eq ptr %i, null, !dbg !256
  %cmp3 = icmp eq i64 %memlimit, 0
  %or.cond = or i1 %cmp2, %cmp3, !dbg !258
  br i1 %or.cond, label %return, label %if.end5, !dbg !258

if.end5:                                          ; preds = %if.end
  %1 = load ptr, ptr %next, align 8, !dbg !259, !tbaa !261
  %cmp6 = icmp eq ptr %1, null, !dbg !262
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !263

if.then7:                                         ; preds = %if.end5
  %call = tail call ptr @lzma_alloc(i64 noundef 72, ptr noundef %allocator) #4, !dbg !264
  store ptr %call, ptr %next, align 8, !dbg !266, !tbaa !261
  %cmp10 = icmp eq ptr %call, null, !dbg !267
  br i1 %cmp10, label %return, label %if.end12, !dbg !269

if.end12:                                         ; preds = %if.then7
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !270
  store ptr @index_decode, ptr %code, align 8, !dbg !271, !tbaa !272
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !273
  store ptr @index_decoder_end, ptr %end, align 8, !dbg !274, !tbaa !275
  %memconfig = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 6, !dbg !276
  store ptr @index_decoder_memconfig, ptr %memconfig, align 8, !dbg !277, !tbaa !278
  %index = getelementptr inbounds %struct.lzma_coder_s, ptr %call, i64 0, i32 2, !dbg !279
  store ptr null, ptr %index, align 8, !dbg !280, !tbaa !281
  br label %if.end16, !dbg !284

if.else:                                          ; preds = %if.end5
  %index15 = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 2, !dbg !285
  %2 = load ptr, ptr %index15, align 8, !dbg !285, !tbaa !281
  tail call void @lzma_index_end(ptr noundef %2, ptr noundef %allocator) #4, !dbg !287
  %.pre = load ptr, ptr %next, align 8, !dbg !288, !tbaa !261
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end12
  %3 = phi ptr [ %.pre, %if.else ], [ %call, %if.end12 ], !dbg !288
  call void @llvm.dbg.value(metadata ptr %3, metadata !289, metadata !DIExpression()) #4, !dbg !298
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !294, metadata !DIExpression()) #4, !dbg !298
  call void @llvm.dbg.value(metadata ptr %i, metadata !295, metadata !DIExpression()) #4, !dbg !298
  call void @llvm.dbg.value(metadata i64 %memlimit, metadata !296, metadata !DIExpression()) #4, !dbg !298
  call void @llvm.dbg.value(metadata ptr %3, metadata !297, metadata !DIExpression()) #4, !dbg !298
  %index_ptr.i = getelementptr inbounds %struct.lzma_coder_s, ptr %3, i64 0, i32 3, !dbg !300
  store ptr %i, ptr %index_ptr.i, align 8, !dbg !301, !tbaa !302
  store ptr null, ptr %i, align 8, !dbg !303, !tbaa !304
  %call.i = tail call ptr @lzma_index_init(ptr noundef %allocator) #4, !dbg !305
  %index.i = getelementptr inbounds %struct.lzma_coder_s, ptr %3, i64 0, i32 2, !dbg !306
  store ptr %call.i, ptr %index.i, align 8, !dbg !307, !tbaa !281
  %cmp.i = icmp eq ptr %call.i, null, !dbg !308
  br i1 %cmp.i, label %return, label %if.end.i, !dbg !310

if.end.i:                                         ; preds = %if.end16
  store i32 0, ptr %3, align 8, !dbg !311, !tbaa !312
  %memlimit2.i = getelementptr inbounds %struct.lzma_coder_s, ptr %3, i64 0, i32 1, !dbg !313
  store i64 %memlimit, ptr %memlimit2.i, align 8, !dbg !314, !tbaa !315
  %count.i = getelementptr inbounds %struct.lzma_coder_s, ptr %3, i64 0, i32 4, !dbg !316
  store i64 0, ptr %count.i, align 8, !dbg !317, !tbaa !318
  %pos.i = getelementptr inbounds %struct.lzma_coder_s, ptr %3, i64 0, i32 7, !dbg !319
  store i64 0, ptr %pos.i, align 8, !dbg !320, !tbaa !321
  %crc32.i = getelementptr inbounds %struct.lzma_coder_s, ptr %3, i64 0, i32 8, !dbg !322
  store i32 0, ptr %crc32.i, align 8, !dbg !323, !tbaa !324
  br label %return, !dbg !325

return:                                           ; preds = %if.end.i, %if.end16, %if.then7, %if.end
  %retval.0 = phi i32 [ 11, %if.end ], [ 5, %if.then7 ], [ 0, %if.end.i ], [ 5, %if.end16 ], !dbg !249
  ret i32 %retval.0, !dbg !326
}

declare !dbg !327 void @lzma_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_buffer_decode(ptr noundef %i, ptr noundef %memlimit, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) local_unnamed_addr #0 !dbg !330 {
entry:
  %coder = alloca %struct.lzma_coder_s, align 8
  call void @llvm.dbg.value(metadata ptr %i, metadata !334, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr %memlimit, metadata !335, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !336, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr %in, metadata !337, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !338, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !339, metadata !DIExpression()), !dbg !346
  %cmp = icmp eq ptr %i, null, !dbg !347
  %cmp1 = icmp eq ptr %memlimit, null
  %or.cond = or i1 %cmp, %cmp1, !dbg !349
  %cmp3 = icmp eq ptr %in, null
  %or.cond26 = or i1 %or.cond, %cmp3, !dbg !349
  %cmp5 = icmp eq ptr %in_pos, null
  %or.cond27 = or i1 %or.cond26, %cmp5, !dbg !349
  br i1 %or.cond27, label %return, label %lor.lhs.false6, !dbg !349

lor.lhs.false6:                                   ; preds = %entry
  %0 = load i64, ptr %in_pos, align 8, !dbg !350, !tbaa !351
  %cmp7 = icmp ugt i64 %0, %in_size, !dbg !352
  br i1 %cmp7, label %return, label %if.end, !dbg !353

if.end:                                           ; preds = %lor.lhs.false6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %coder) #4, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %coder, metadata !340, metadata !DIExpression()), !dbg !355
  %1 = load i64, ptr %memlimit, align 8, !dbg !356, !tbaa !351
  call void @llvm.dbg.value(metadata ptr %coder, metadata !289, metadata !DIExpression()) #4, !dbg !357
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !294, metadata !DIExpression()) #4, !dbg !357
  call void @llvm.dbg.value(metadata ptr %i, metadata !295, metadata !DIExpression()) #4, !dbg !357
  call void @llvm.dbg.value(metadata i64 %1, metadata !296, metadata !DIExpression()) #4, !dbg !357
  call void @llvm.dbg.value(metadata ptr %coder, metadata !297, metadata !DIExpression()) #4, !dbg !357
  %index_ptr.i = getelementptr inbounds %struct.lzma_coder_s, ptr %coder, i64 0, i32 3, !dbg !359
  store ptr %i, ptr %index_ptr.i, align 8, !dbg !360, !tbaa !302
  store ptr null, ptr %i, align 8, !dbg !361, !tbaa !304
  %call.i = tail call ptr @lzma_index_init(ptr noundef %allocator) #4, !dbg !362
  %index.i = getelementptr inbounds %struct.lzma_coder_s, ptr %coder, i64 0, i32 2, !dbg !363
  store ptr %call.i, ptr %index.i, align 8, !dbg !364, !tbaa !281
  %cmp.i = icmp eq ptr %call.i, null, !dbg !365
  br i1 %cmp.i, label %cleanup25, label %do.end, !dbg !366

do.end:                                           ; preds = %if.end
  store i32 0, ptr %coder, align 8, !dbg !367, !tbaa !312
  %memlimit2.i = getelementptr inbounds %struct.lzma_coder_s, ptr %coder, i64 0, i32 1, !dbg !368
  store i64 %1, ptr %memlimit2.i, align 8, !dbg !369, !tbaa !315
  %count.i = getelementptr inbounds %struct.lzma_coder_s, ptr %coder, i64 0, i32 4, !dbg !370
  store i64 0, ptr %count.i, align 8, !dbg !371, !tbaa !318
  %pos.i = getelementptr inbounds %struct.lzma_coder_s, ptr %coder, i64 0, i32 7, !dbg !372
  store i64 0, ptr %pos.i, align 8, !dbg !373, !tbaa !321
  %crc32.i = getelementptr inbounds %struct.lzma_coder_s, ptr %coder, i64 0, i32 8, !dbg !374
  store i32 0, ptr %crc32.i, align 8, !dbg !375, !tbaa !324
  call void @llvm.dbg.value(metadata i32 undef, metadata !341, metadata !DIExpression()), !dbg !376
  %2 = load i64, ptr %in_pos, align 8, !dbg !377, !tbaa !351
  call void @llvm.dbg.value(metadata i64 %2, metadata !343, metadata !DIExpression()), !dbg !346
  %call11 = call i32 @index_decode(ptr noundef nonnull %coder, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef null, ptr noundef null, i64 noundef 0, i32 noundef 0), !dbg !378
  call void @llvm.dbg.value(metadata i32 %call11, metadata !345, metadata !DIExpression()), !dbg !346
  %cmp12 = icmp eq i32 %call11, 1, !dbg !379
  br i1 %cmp12, label %cleanup25, label %if.else, !dbg !381

if.else:                                          ; preds = %do.end
  %3 = load ptr, ptr %index.i, align 8, !dbg !382, !tbaa !281
  call void @lzma_index_end(ptr noundef %3, ptr noundef %allocator) #4, !dbg !384
  store i64 %2, ptr %in_pos, align 8, !dbg !385, !tbaa !351
  switch i32 %call11, label %if.end22.fold.split [
    i32 0, label %cleanup25
    i32 6, label %if.then18
  ], !dbg !386

if.then18:                                        ; preds = %if.else
  %4 = load i64, ptr %count.i, align 8, !dbg !387, !tbaa !318
  %call19 = call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %4) #4, !dbg !391
  store i64 %call19, ptr %memlimit, align 8, !dbg !392, !tbaa !351
  br label %cleanup25, !dbg !393

if.end22.fold.split:                              ; preds = %if.else
  br label %cleanup25

cleanup25:                                        ; preds = %if.end, %if.then18, %do.end, %if.end22.fold.split, %if.else
  %retval.1 = phi i32 [ 6, %if.then18 ], [ 0, %do.end ], [ 9, %if.else ], [ %call11, %if.end22.fold.split ], [ 5, %if.end ], !dbg !346
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %coder) #4, !dbg !394
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false6, %cleanup25
  %retval.2 = phi i32 [ %retval.1, %cleanup25 ], [ 11, %lor.lhs.false6 ], [ 11, %entry ], !dbg !346
  ret i32 %retval.2, !dbg !394
}

; Function Attrs: nounwind uwtable
define internal i32 @index_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias nocapture noundef readnone %out, ptr noalias nocapture noundef readnone %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !395 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !397, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !398, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata ptr %in, metadata !399, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !400, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !401, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata ptr %out, metadata !402, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !403, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !404, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 %action, metadata !405, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !406, metadata !DIExpression()), !dbg !418
  %0 = load i64, ptr %in_pos, align 8, !dbg !419, !tbaa !351
  call void @llvm.dbg.value(metadata i64 %0, metadata !407, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 0, metadata !408, metadata !DIExpression()), !dbg !418
  %cmp199 = icmp ult i64 %0, %in_size, !dbg !420
  br i1 %cmp199, label %while.body.lr.ph, label %out111, !dbg !421

while.body.lr.ph:                                 ; preds = %entry
  %uncompressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6
  %unpadded_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5
  %pos28 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7
  %index48 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %count56 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4
  %memlimit = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1
  %.pre = load i32, ptr %pcoder, align 8, !dbg !422, !tbaa !312
  br label %while.body, !dbg !421

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %1 = phi i32 [ %.pre, %while.body.lr.ph ], [ %30, %sw.epilog ], !dbg !422
  %2 = phi i64 [ %0, %while.body.lr.ph ], [ %31, %sw.epilog ]
  switch i32 %1, label %cleanup117 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb11
    i32 7, label %sw.bb88
    i32 6, label %while.body.sw.bb70_crit_edge
    i32 5, label %sw.bb64
    i32 3, label %cond.end
    i32 4, label %cond.false
  ], !dbg !423

while.body.sw.bb70_crit_edge:                     ; preds = %while.body
  %.pre205 = load i64, ptr %pos28, align 8, !dbg !424, !tbaa !321
  br label %sw.bb70, !dbg !423

sw.bb:                                            ; preds = %while.body
  %inc = add nuw i64 %2, 1, !dbg !426
  store i64 %inc, ptr %in_pos, align 8, !dbg !426, !tbaa !351
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %2, !dbg !428
  %3 = load i8, ptr %arrayidx, align 1, !dbg !428, !tbaa !429
  %cmp1.not = icmp eq i8 %3, 0, !dbg !430
  br i1 %cmp1.not, label %sw.epilog.sink.split, label %cleanup117, !dbg !431

sw.bb4:                                           ; preds = %while.body
  %call = tail call i32 @lzma_vli_decode(ptr noundef nonnull %count56, ptr noundef nonnull %pos28, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #4, !dbg !432
  call void @llvm.dbg.value(metadata i32 %call, metadata !408, metadata !DIExpression()), !dbg !418
  %cmp5.not = icmp eq i32 %call, 1, !dbg !433
  br i1 %cmp5.not, label %if.end8, label %out111.loopexit, !dbg !435

if.end8:                                          ; preds = %sw.bb4
  store i64 0, ptr %pos28, align 8, !dbg !436, !tbaa !321
  store i32 2, ptr %pcoder, align 8, !dbg !437, !tbaa !312
  br label %sw.bb11, !dbg !438

sw.bb11:                                          ; preds = %while.body, %if.end8
  %4 = load i64, ptr %count56, align 8, !dbg !439, !tbaa !318
  %call13 = tail call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %4) #4, !dbg !441
  %5 = load i64, ptr %memlimit, align 8, !dbg !442, !tbaa !315
  %cmp14 = icmp ugt i64 %call13, %5, !dbg !443
  br i1 %cmp14, label %out111.loopexit, label %if.end17, !dbg !444

if.end17:                                         ; preds = %sw.bb11
  %6 = load ptr, ptr %index48, align 8, !dbg !445, !tbaa !281
  %7 = load i64, ptr %count56, align 8, !dbg !446, !tbaa !318
  tail call void @lzma_index_prealloc(ptr noundef %6, i64 noundef %7) #4, !dbg !447
  call void @llvm.dbg.value(metadata i32 0, metadata !408, metadata !DIExpression()), !dbg !418
  %8 = load i64, ptr %count56, align 8, !dbg !448, !tbaa !318
  %cmp20 = icmp eq i64 %8, 0, !dbg !449
  %cond = select i1 %cmp20, i32 5, i32 3, !dbg !450
  br label %sw.epilog.sink.split, !dbg !451

cond.false:                                       ; preds = %while.body
  br label %cond.end, !dbg !452

cond.end:                                         ; preds = %while.body, %cond.false
  %cond27 = phi ptr [ %uncompressed_size, %cond.false ], [ %unpadded_size, %while.body ], !dbg !452
  call void @llvm.dbg.value(metadata ptr %cond27, metadata !409, metadata !DIExpression()), !dbg !453
  %call29 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %cond27, ptr noundef nonnull %pos28, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #4, !dbg !454
  call void @llvm.dbg.value(metadata i32 %call29, metadata !408, metadata !DIExpression()), !dbg !418
  %cmp30.not = icmp eq i32 %call29, 1, !dbg !455
  br i1 %cmp30.not, label %if.end33, label %out111.loopexit, !dbg !457

if.end33:                                         ; preds = %cond.end
  call void @llvm.dbg.value(metadata i32 0, metadata !408, metadata !DIExpression()), !dbg !418
  store i64 0, ptr %pos28, align 8, !dbg !458, !tbaa !321
  %9 = load i32, ptr %pcoder, align 8, !dbg !459, !tbaa !312
  %cmp36 = icmp eq i32 %9, 3, !dbg !460
  br i1 %cmp36, label %if.then38, label %do.body, !dbg !461

if.then38:                                        ; preds = %if.end33
  %10 = load i64, ptr %unpadded_size, align 8, !dbg !462, !tbaa !465
  %11 = add i64 %10, -9223372036854775805, !dbg !466
  %12 = icmp ult i64 %11, -9223372036854775800, !dbg !466
  br i1 %12, label %cleanup117, label %sw.epilog.sink.split, !dbg !466

do.body:                                          ; preds = %if.end33
  %13 = load ptr, ptr %index48, align 8, !dbg !467, !tbaa !281
  %14 = load i64, ptr %unpadded_size, align 8, !dbg !467, !tbaa !465
  %15 = load i64, ptr %uncompressed_size, align 8, !dbg !467, !tbaa !468
  %call51 = tail call i32 @lzma_index_append(ptr noundef %13, ptr noundef %allocator, i64 noundef %14, i64 noundef %15) #4, !dbg !467
  call void @llvm.dbg.value(metadata i32 %call51, metadata !413, metadata !DIExpression()), !dbg !469
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !470
  br i1 %cmp52.not, label %do.end, label %cleanup117

do.end:                                           ; preds = %do.body
  %16 = load i64, ptr %count56, align 8, !dbg !472, !tbaa !318
  %dec = add i64 %16, -1, !dbg !472
  store i64 %dec, ptr %count56, align 8, !dbg !472, !tbaa !318
  %cmp57 = icmp eq i64 %dec, 0, !dbg !473
  %cond59 = select i1 %cmp57, i32 5, i32 3, !dbg !472
  br label %sw.epilog.sink.split

sw.bb64:                                          ; preds = %while.body
  %17 = load ptr, ptr %index48, align 8, !dbg !474, !tbaa !281
  %call66 = tail call i32 @lzma_index_padding_size(ptr noundef %17) #4, !dbg !475
  %conv67 = zext i32 %call66 to i64, !dbg !475
  store i64 %conv67, ptr %pos28, align 8, !dbg !476, !tbaa !321
  store i32 6, ptr %pcoder, align 8, !dbg !477, !tbaa !312
  br label %sw.bb70, !dbg !478

sw.bb70:                                          ; preds = %while.body.sw.bb70_crit_edge, %sw.bb64
  %18 = phi i64 [ %.pre205, %while.body.sw.bb70_crit_edge ], [ %conv67, %sw.bb64 ], !dbg !424
  %cmp72.not = icmp eq i64 %18, 0, !dbg !479
  br i1 %cmp72.not, label %if.end84, label %if.then74, !dbg !480

if.then74:                                        ; preds = %sw.bb70
  %dec76 = add i64 %18, -1, !dbg !481
  store i64 %dec76, ptr %pos28, align 8, !dbg !481, !tbaa !321
  %19 = load i64, ptr %in_pos, align 8, !dbg !483, !tbaa !351
  %inc77 = add i64 %19, 1, !dbg !483
  store i64 %inc77, ptr %in_pos, align 8, !dbg !483, !tbaa !351
  %arrayidx78 = getelementptr inbounds i8, ptr %in, i64 %19, !dbg !485
  %20 = load i8, ptr %arrayidx78, align 1, !dbg !485, !tbaa !429
  %cmp80.not = icmp eq i8 %20, 0, !dbg !486
  br i1 %cmp80.not, label %sw.epilog, label %cleanup117, !dbg !487

if.end84:                                         ; preds = %sw.bb70
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !488
  %21 = load i64, ptr %in_pos, align 8, !dbg !489, !tbaa !351
  %sub = sub i64 %21, %0, !dbg !490
  %crc32 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 8, !dbg !491
  %22 = load i32, ptr %crc32, align 8, !dbg !491, !tbaa !324
  %call85 = tail call i32 @lzma_crc32(ptr noundef %add.ptr, i64 noundef %sub, i32 noundef %22) #4, !dbg !492
  store i32 %call85, ptr %crc32, align 8, !dbg !493, !tbaa !324
  store i32 7, ptr %pcoder, align 8, !dbg !494, !tbaa !312
  %in_pos.promoted.pre = load i64, ptr %in_pos, align 8, !tbaa !351
  br label %sw.bb88, !dbg !495

sw.bb88:                                          ; preds = %while.body, %if.end84
  %in_pos.promoted = phi i64 [ %in_pos.promoted.pre, %if.end84 ], [ %2, %while.body ]
  %crc3294 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 8
  br label %do.body89, !dbg !496

do.body89:                                        ; preds = %do.cond103, %sw.bb88
  %23 = phi i64 [ %inc96, %do.cond103 ], [ %in_pos.promoted, %sw.bb88 ]
  %cmp90 = icmp eq i64 %23, %in_size, !dbg !497
  br i1 %cmp90, label %cleanup117, label %if.end93, !dbg !500

if.end93:                                         ; preds = %do.body89
  %24 = load i32, ptr %crc3294, align 8, !dbg !501, !tbaa !324
  %25 = load i64, ptr %pos28, align 8, !dbg !503, !tbaa !321
  %.tr = trunc i64 %25 to i32, !dbg !504
  %sh_prom = shl i32 %.tr, 3, !dbg !504
  %shr = lshr i32 %24, %sh_prom, !dbg !504
  %inc96 = add i64 %23, 1, !dbg !505
  store i64 %inc96, ptr %in_pos, align 8, !dbg !505, !tbaa !351
  %arrayidx97 = getelementptr inbounds i8, ptr %in, i64 %23, !dbg !506
  %26 = load i8, ptr %arrayidx97, align 1, !dbg !506, !tbaa !429
  %27 = trunc i32 %shr to i8, !dbg !507
  %cmp99.not = icmp eq i8 %26, %27, !dbg !507
  br i1 %cmp99.not, label %do.cond103, label %cleanup117, !dbg !508

do.cond103:                                       ; preds = %if.end93
  %inc105 = add i64 %25, 1, !dbg !509
  store i64 %inc105, ptr %pos28, align 8, !dbg !509, !tbaa !321
  %cmp106 = icmp ult i64 %inc105, 4, !dbg !510
  br i1 %cmp106, label %do.body89, label %do.end108, !dbg !511, !llvm.loop !512

do.end108:                                        ; preds = %do.cond103
  %28 = load ptr, ptr %index48, align 8, !dbg !516, !tbaa !281
  %index_ptr = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !517
  %29 = load ptr, ptr %index_ptr, align 8, !dbg !517, !tbaa !302
  store ptr %28, ptr %29, align 8, !dbg !518, !tbaa !304
  store ptr null, ptr %index48, align 8, !dbg !519, !tbaa !281
  br label %cleanup117, !dbg !520

sw.epilog.sink.split:                             ; preds = %if.then38, %do.end, %sw.bb, %if.end17
  %storemerge.sink = phi i32 [ %cond, %if.end17 ], [ 1, %sw.bb ], [ %cond59, %do.end ], [ 4, %if.then38 ]
  store i32 %storemerge.sink, ptr %pcoder, align 8, !dbg !521, !tbaa !312
  br label %sw.epilog, !dbg !522

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then74
  %30 = phi i32 [ 6, %if.then74 ], [ %storemerge.sink, %sw.epilog.sink.split ]
  call void @llvm.dbg.value(metadata i32 0, metadata !408, metadata !DIExpression()), !dbg !418
  %31 = load i64, ptr %in_pos, align 8, !dbg !522, !tbaa !351
  %cmp = icmp ult i64 %31, %in_size, !dbg !420
  br i1 %cmp, label %while.body, label %out111.loopexit, !dbg !421, !llvm.loop !523

out111.loopexit:                                  ; preds = %cond.end, %sw.bb11, %sw.epilog, %sw.bb4
  %ret.3.ph = phi i32 [ %call, %sw.bb4 ], [ 0, %sw.epilog ], [ 6, %sw.bb11 ], [ %call29, %cond.end ]
  %.pre207 = load i64, ptr %in_pos, align 8, !dbg !525, !tbaa !351
  br label %out111, !dbg !526

out111:                                           ; preds = %out111.loopexit, %entry
  %32 = phi i64 [ %0, %entry ], [ %.pre207, %out111.loopexit ], !dbg !525
  %ret.3 = phi i32 [ 0, %entry ], [ %ret.3.ph, %out111.loopexit ], !dbg !418
  call void @llvm.dbg.value(metadata i32 %ret.3, metadata !408, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.label(metadata !417), !dbg !527
  %add.ptr112 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !526
  %sub113 = sub i64 %32, %0, !dbg !528
  %crc32114 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 8, !dbg !529
  %33 = load i32, ptr %crc32114, align 8, !dbg !529, !tbaa !324
  %call115 = tail call i32 @lzma_crc32(ptr noundef %add.ptr112, i64 noundef %sub113, i32 noundef %33) #4, !dbg !530
  store i32 %call115, ptr %crc32114, align 8, !dbg !531, !tbaa !324
  br label %cleanup117, !dbg !532

cleanup117:                                       ; preds = %while.body, %if.then38, %do.body, %if.then74, %sw.bb, %if.end93, %do.body89, %out111, %do.end108
  %retval.5 = phi i32 [ 1, %do.end108 ], [ %ret.3, %out111 ], [ 9, %if.end93 ], [ 0, %do.body89 ], [ %call51, %do.body ], [ 9, %if.then38 ], [ 11, %while.body ], [ 9, %if.then74 ], [ 9, %sw.bb ]
  ret i32 %retval.5, !dbg !533
}

declare !dbg !534 void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !537 i64 @lzma_index_memusage(i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !540 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !543 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @index_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !546 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !548, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !549, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !550, metadata !DIExpression()), !dbg !551
  %index = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !552
  %0 = load ptr, ptr %index, align 8, !dbg !552, !tbaa !281
  tail call void @lzma_index_end(ptr noundef %0, ptr noundef %allocator) #4, !dbg !553
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #4, !dbg !554
  ret void, !dbg !555
}

; Function Attrs: nounwind uwtable
define internal i32 @index_decoder_memconfig(ptr nocapture noundef %pcoder, ptr nocapture noundef %memusage, ptr nocapture noundef writeonly %old_memlimit, i64 noundef %new_memlimit) #0 !dbg !556 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !558, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata ptr %memusage, metadata !559, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata ptr %old_memlimit, metadata !560, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %new_memlimit, metadata !561, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !562, metadata !DIExpression()), !dbg !563
  %count = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !564
  %0 = load i64, ptr %count, align 8, !dbg !564, !tbaa !318
  %call = tail call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %0) #4, !dbg !565
  store i64 %call, ptr %memusage, align 8, !dbg !566, !tbaa !351
  %memlimit = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !567
  %1 = load i64, ptr %memlimit, align 8, !dbg !567, !tbaa !315
  store i64 %1, ptr %old_memlimit, align 8, !dbg !568, !tbaa !351
  %cmp.not = icmp eq i64 %new_memlimit, 0, !dbg !569
  br i1 %cmp.not, label %cleanup, label %if.then, !dbg !571

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %memusage, align 8, !dbg !572, !tbaa !351
  %cmp1 = icmp ugt i64 %2, %new_memlimit, !dbg !575
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !576

if.end:                                           ; preds = %if.then
  store i64 %new_memlimit, ptr %memlimit, align 8, !dbg !577, !tbaa !315
  br label %cleanup, !dbg !578

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 6, %if.then ], [ 0, %if.end ], [ 0, %entry ], !dbg !563
  ret i32 %retval.0, !dbg !579
}

declare !dbg !580 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !583 ptr @lzma_index_init(ptr noundef) local_unnamed_addr #3

declare !dbg !586 i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !589 void @lzma_index_prealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !593 i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !596 i32 @lzma_index_padding_size(ptr noundef) local_unnamed_addr #3

declare !dbg !601 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !163, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/index_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "76d3749acf8859145be85842b26a6ac3")
!2 = !{!3, !19, !25, !32, !131, !134}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "LZMA_OK", value: 0)
!8 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!9 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!10 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!11 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!12 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!13 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!14 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!15 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!16 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!17 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!18 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!22 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!23 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!24 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 27, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!29 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!30 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!31 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !33, line: 187, baseType: !5, size: 32, elements: !124)
!33 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !33, line: 179, size: 704, elements: !35)
!35 = !{!36, !116, !117, !118, !123}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !33, line: 181, baseType: !37, size: 512)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !33, line: 80, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !33, line: 124, size: 512, elements: !39)
!39 = !{!40, !43, !51, !54, !87, !92, !99, !104}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !38, file: !33, line: 126, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !33, line: 78, baseType: null)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !38, file: !33, line: 130, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !45, line: 63, baseType: !46)
!45 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 27, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 45, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !38, file: !33, line: 136, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !53, line: 90, baseType: !50)
!53 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!54 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !38, file: !33, line: 139, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !33, line: 94, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !41, !60, !76, !82, !69, !84, !82, !69, !86}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !63)
!63 = !{!64, !71, !75}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !62, file: !4, line: 376, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !68, !69, !69}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !50)
!70 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !62, file: !4, line: 390, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !68, !68}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !62, file: !4, line: 401, baseType: !68, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 24, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !49, line: 38, baseType: !81)
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !38, file: !33, line: 144, baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !33, line: 102, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !41, !60}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !38, file: !33, line: 148, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !38, file: !33, line: 152, baseType: !100, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!59, !41, !103, !103, !46}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !38, file: !33, line: 157, baseType: !105, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!59, !41, !60, !108, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !111, line: 65, baseType: !112)
!111 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 43, size: 128, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !112, file: !111, line: 54, baseType: !44, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !112, file: !111, line: 63, baseType: !68, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !34, file: !33, line: 194, baseType: !32, size: 32, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !34, file: !33, line: 199, baseType: !69, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !34, file: !33, line: 202, baseType: !119, size: 32, offset: 640)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 32, elements: !121)
!120 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!121 = !{!122}
!122 = !DISubrange(count: 4)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !34, file: !33, line: 206, baseType: !120, size: 8, offset: 672)
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!126 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!127 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!128 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!129 = !DIEnumerator(name: "ISEQ_END", value: 4)
!130 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !136, file: !135, line: 18, baseType: !5, size: 32, elements: !154)
!135 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/index_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "76d3749acf8859145be85842b26a6ac3")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !135, line: 17, size: 576, elements: !137)
!137 = !{!138, !139, !140, !145, !147, !148, !149, !150, !151}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !136, file: !135, line: 27, baseType: !134, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "memlimit", scope: !136, file: !135, line: 30, baseType: !46, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !136, file: !135, line: 33, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index", file: !143, line: 37, baseType: !144)
!143 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/index.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "923fbd07d3b348bf7a676d089b5c066f")
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_s", file: !143, line: 37, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "index_ptr", scope: !136, file: !135, line: 37, baseType: !146, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !136, file: !135, line: 40, baseType: !44, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "unpadded_size", scope: !136, file: !135, line: 43, baseType: !44, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !136, file: !135, line: 46, baseType: !44, size: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !136, file: !135, line: 49, baseType: !69, size: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !136, file: !135, line: 52, baseType: !152, size: 32, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !5)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162}
!155 = !DIEnumerator(name: "SEQ_INDICATOR", value: 0)
!156 = !DIEnumerator(name: "SEQ_COUNT", value: 1)
!157 = !DIEnumerator(name: "SEQ_MEMUSAGE", value: 2)
!158 = !DIEnumerator(name: "SEQ_UNPADDED", value: 3)
!159 = !DIEnumerator(name: "SEQ_UNCOMPRESSED", value: 4)
!160 = !DIEnumerator(name: "SEQ_PADDING_INIT", value: 5)
!161 = !DIEnumerator(name: "SEQ_PADDING", value: 6)
!162 = !DIEnumerator(name: "SEQ_CRC32", value: 7)
!163 = !{!68, !52, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!165 = !{i32 7, !"Dwarf Version", i32 5}
!166 = !{i32 2, !"Debug Info Version", i32 3}
!167 = !{i32 1, !"wchar_size", i32 4}
!168 = !{i32 7, !"PIC Level", i32 2}
!169 = !{i32 7, !"PIE Level", i32 2}
!170 = !{i32 7, !"uwtable", i32 2}
!171 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!172 = distinct !DISubprogram(name: "lzma_index_decoder", scope: !135, file: !135, line: 294, type: !173, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!173 = !DISubroutineType(types: !174)
!174 = !{!59, !175, !146, !46}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !189, !190, !191, !192, !193, !194, !195, !196, !197, !199}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !177, file: !4, line: 454, baseType: !77, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !177, file: !4, line: 455, baseType: !69, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !177, file: !4, line: 456, baseType: !46, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !177, file: !4, line: 458, baseType: !85, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !177, file: !4, line: 459, baseType: !69, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !177, file: !4, line: 460, baseType: !46, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !177, file: !4, line: 468, baseType: !60, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !177, file: !4, line: 471, baseType: !187, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !34)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !177, file: !4, line: 479, baseType: !68, size: 64, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !177, file: !4, line: 480, baseType: !68, size: 64, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !177, file: !4, line: 481, baseType: !68, size: 64, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !177, file: !4, line: 482, baseType: !68, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !177, file: !4, line: 483, baseType: !46, size: 64, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !177, file: !4, line: 484, baseType: !46, size: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !177, file: !4, line: 485, baseType: !69, size: 64, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !177, file: !4, line: 486, baseType: !69, size: 64, offset: 960)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !177, file: !4, line: 487, baseType: !198, size: 32, offset: 1024)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !131)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !177, file: !4, line: 488, baseType: !198, size: 32, offset: 1056)
!200 = !{!201, !202, !203, !204, !208}
!201 = !DILocalVariable(name: "strm", arg: 1, scope: !172, file: !135, line: 294, type: !175)
!202 = !DILocalVariable(name: "i", arg: 2, scope: !172, file: !135, line: 294, type: !146)
!203 = !DILocalVariable(name: "memlimit", arg: 3, scope: !172, file: !135, line: 294, type: !46)
!204 = !DILocalVariable(name: "ret_", scope: !205, file: !135, line: 296, type: !207)
!205 = distinct !DILexicalBlock(scope: !206, file: !135, line: 296, column: 2)
!206 = distinct !DILexicalBlock(scope: !172, file: !135, line: 296, column: 2)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!208 = !DILocalVariable(name: "ret_", scope: !206, file: !135, line: 296, type: !207)
!209 = !DILocation(line: 0, scope: !172)
!210 = !DILocation(line: 296, column: 2, scope: !205)
!211 = !DILocation(line: 0, scope: !205)
!212 = !DILocation(line: 296, column: 2, scope: !213)
!213 = distinct !DILexicalBlock(scope: !205, file: !135, line: 296, column: 2)
!214 = !DILocation(line: 296, column: 2, scope: !206)
!215 = !{!216, !217, i64 56}
!216 = !{!"", !217, i64 0, !220, i64 8, !220, i64 16, !217, i64 24, !220, i64 32, !220, i64 40, !217, i64 48, !217, i64 56, !217, i64 64, !217, i64 72, !217, i64 80, !217, i64 88, !220, i64 96, !220, i64 104, !220, i64 112, !220, i64 120, !218, i64 128, !218, i64 132}
!217 = !{!"any pointer", !218, i64 0}
!218 = !{!"omnipotent char", !219, i64 0}
!219 = !{!"Simple C/C++ TBAA"}
!220 = !{!"long", !218, i64 0}
!221 = !{!216, !217, i64 48}
!222 = !DILocation(line: 0, scope: !206)
!223 = !DILocation(line: 296, column: 2, scope: !224)
!224 = distinct !DILexicalBlock(scope: !206, file: !135, line: 296, column: 2)
!225 = !DILocation(line: 296, column: 2, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !135, line: 296, column: 2)
!227 = !DILocation(line: 298, column: 8, scope: !172)
!228 = !DILocation(line: 298, column: 18, scope: !172)
!229 = !DILocation(line: 298, column: 46, scope: !172)
!230 = !{!231, !231, i64 0}
!231 = !{!"_Bool", !218, i64 0}
!232 = !DILocation(line: 299, column: 2, scope: !172)
!233 = !DILocation(line: 299, column: 49, scope: !172)
!234 = !DILocation(line: 301, column: 2, scope: !172)
!235 = !DILocation(line: 302, column: 1, scope: !172)
!236 = !DISubprogram(name: "lzma_strm_init", scope: !33, file: !33, line: 220, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!59, !175}
!239 = !{}
!240 = distinct !DISubprogram(name: "index_decoder_init", scope: !135, file: !135, line: 268, type: !241, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !244)
!241 = !DISubroutineType(types: !242)
!242 = !{!59, !243, !60, !146, !46}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!244 = !{!245, !246, !247, !248}
!245 = !DILocalVariable(name: "next", arg: 1, scope: !240, file: !135, line: 268, type: !243)
!246 = !DILocalVariable(name: "allocator", arg: 2, scope: !240, file: !135, line: 268, type: !60)
!247 = !DILocalVariable(name: "i", arg: 3, scope: !240, file: !135, line: 269, type: !146)
!248 = !DILocalVariable(name: "memlimit", arg: 4, scope: !240, file: !135, line: 269, type: !46)
!249 = !DILocation(line: 0, scope: !240)
!250 = !DILocation(line: 271, column: 2, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !135, line: 271, column: 2)
!252 = distinct !DILexicalBlock(scope: !240, file: !135, line: 271, column: 2)
!253 = !{!254, !220, i64 16}
!254 = !{!"lzma_next_coder_s", !217, i64 0, !220, i64 8, !220, i64 16, !217, i64 24, !217, i64 32, !217, i64 40, !217, i64 48, !217, i64 56}
!255 = !DILocation(line: 271, column: 2, scope: !252)
!256 = !DILocation(line: 273, column: 8, scope: !257)
!257 = distinct !DILexicalBlock(scope: !240, file: !135, line: 273, column: 6)
!258 = !DILocation(line: 273, column: 16, scope: !257)
!259 = !DILocation(line: 276, column: 12, scope: !260)
!260 = distinct !DILexicalBlock(scope: !240, file: !135, line: 276, column: 6)
!261 = !{!254, !217, i64 0}
!262 = !DILocation(line: 276, column: 18, scope: !260)
!263 = !DILocation(line: 276, column: 6, scope: !240)
!264 = !DILocation(line: 277, column: 17, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !135, line: 276, column: 27)
!266 = !DILocation(line: 277, column: 15, scope: !265)
!267 = !DILocation(line: 278, column: 19, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !135, line: 278, column: 7)
!269 = !DILocation(line: 278, column: 7, scope: !265)
!270 = !DILocation(line: 281, column: 9, scope: !265)
!271 = !DILocation(line: 281, column: 14, scope: !265)
!272 = !{!254, !217, i64 24}
!273 = !DILocation(line: 282, column: 9, scope: !265)
!274 = !DILocation(line: 282, column: 13, scope: !265)
!275 = !{!254, !217, i64 32}
!276 = !DILocation(line: 283, column: 9, scope: !265)
!277 = !DILocation(line: 283, column: 19, scope: !265)
!278 = !{!254, !217, i64 48}
!279 = !DILocation(line: 284, column: 40, scope: !265)
!280 = !DILocation(line: 284, column: 46, scope: !265)
!281 = !{!282, !217, i64 16}
!282 = !{!"lzma_coder_s", !218, i64 0, !220, i64 8, !217, i64 16, !217, i64 24, !220, i64 32, !220, i64 40, !220, i64 48, !220, i64 56, !283, i64 64}
!283 = !{!"int", !218, i64 0}
!284 = !DILocation(line: 285, column: 2, scope: !265)
!285 = !DILocation(line: 286, column: 55, scope: !286)
!286 = distinct !DILexicalBlock(scope: !260, file: !135, line: 285, column: 9)
!287 = !DILocation(line: 286, column: 3, scope: !286)
!288 = !DILocation(line: 289, column: 35, scope: !240)
!289 = !DILocalVariable(name: "pcoder", arg: 1, scope: !290, file: !135, line: 240, type: !41)
!290 = distinct !DISubprogram(name: "index_decoder_reset", scope: !135, file: !135, line: 240, type: !291, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{!59, !41, !60, !146, !46}
!293 = !{!289, !294, !295, !296, !297}
!294 = !DILocalVariable(name: "allocator", arg: 2, scope: !290, file: !135, line: 240, type: !60)
!295 = !DILocalVariable(name: "i", arg: 3, scope: !290, file: !135, line: 241, type: !146)
!296 = !DILocalVariable(name: "memlimit", arg: 4, scope: !290, file: !135, line: 241, type: !46)
!297 = !DILocalVariable(name: "coder", scope: !290, file: !135, line: 243, type: !164)
!298 = !DILocation(line: 0, scope: !290, inlinedAt: !299)
!299 = distinct !DILocation(line: 289, column: 9, scope: !240)
!300 = !DILocation(line: 248, column: 9, scope: !290, inlinedAt: !299)
!301 = !DILocation(line: 248, column: 19, scope: !290, inlinedAt: !299)
!302 = !{!282, !217, i64 24}
!303 = !DILocation(line: 249, column: 5, scope: !290, inlinedAt: !299)
!304 = !{!217, !217, i64 0}
!305 = !DILocation(line: 252, column: 17, scope: !290, inlinedAt: !299)
!306 = !DILocation(line: 252, column: 9, scope: !290, inlinedAt: !299)
!307 = !DILocation(line: 252, column: 15, scope: !290, inlinedAt: !299)
!308 = !DILocation(line: 253, column: 19, scope: !309, inlinedAt: !299)
!309 = distinct !DILexicalBlock(scope: !290, file: !135, line: 253, column: 6)
!310 = !DILocation(line: 253, column: 6, scope: !290, inlinedAt: !299)
!311 = !DILocation(line: 257, column: 18, scope: !290, inlinedAt: !299)
!312 = !{!282, !218, i64 0}
!313 = !DILocation(line: 258, column: 9, scope: !290, inlinedAt: !299)
!314 = !DILocation(line: 258, column: 18, scope: !290, inlinedAt: !299)
!315 = !{!282, !220, i64 8}
!316 = !DILocation(line: 259, column: 9, scope: !290, inlinedAt: !299)
!317 = !DILocation(line: 259, column: 15, scope: !290, inlinedAt: !299)
!318 = !{!282, !220, i64 32}
!319 = !DILocation(line: 260, column: 9, scope: !290, inlinedAt: !299)
!320 = !DILocation(line: 260, column: 13, scope: !290, inlinedAt: !299)
!321 = !{!282, !220, i64 56}
!322 = !DILocation(line: 261, column: 9, scope: !290, inlinedAt: !299)
!323 = !DILocation(line: 261, column: 15, scope: !290, inlinedAt: !299)
!324 = !{!282, !283, i64 64}
!325 = !DILocation(line: 263, column: 2, scope: !290, inlinedAt: !299)
!326 = !DILocation(line: 290, column: 1, scope: !240)
!327 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !175}
!330 = distinct !DISubprogram(name: "lzma_index_buffer_decode", scope: !135, file: !135, line: 306, type: !331, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{!59, !146, !103, !60, !77, !83, !69}
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !343, !345}
!334 = !DILocalVariable(name: "i", arg: 1, scope: !330, file: !135, line: 307, type: !146)
!335 = !DILocalVariable(name: "memlimit", arg: 2, scope: !330, file: !135, line: 307, type: !103)
!336 = !DILocalVariable(name: "allocator", arg: 3, scope: !330, file: !135, line: 307, type: !60)
!337 = !DILocalVariable(name: "in", arg: 4, scope: !330, file: !135, line: 308, type: !77)
!338 = !DILocalVariable(name: "in_pos", arg: 5, scope: !330, file: !135, line: 308, type: !83)
!339 = !DILocalVariable(name: "in_size", arg: 6, scope: !330, file: !135, line: 308, type: !69)
!340 = !DILocalVariable(name: "coder", scope: !330, file: !135, line: 316, type: !136)
!341 = !DILocalVariable(name: "ret_", scope: !342, file: !135, line: 317, type: !207)
!342 = distinct !DILexicalBlock(scope: !330, file: !135, line: 317, column: 2)
!343 = !DILocalVariable(name: "in_start", scope: !330, file: !135, line: 321, type: !344)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!345 = !DILocalVariable(name: "ret", scope: !330, file: !135, line: 324, type: !59)
!346 = !DILocation(line: 0, scope: !330)
!347 = !DILocation(line: 311, column: 8, scope: !348)
!348 = distinct !DILexicalBlock(scope: !330, file: !135, line: 311, column: 6)
!349 = !DILocation(line: 311, column: 16, scope: !348)
!350 = !DILocation(line: 312, column: 39, scope: !348)
!351 = !{!220, !220, i64 0}
!352 = !DILocation(line: 312, column: 47, scope: !348)
!353 = !DILocation(line: 311, column: 6, scope: !330)
!354 = !DILocation(line: 316, column: 2, scope: !330)
!355 = !DILocation(line: 316, column: 22, scope: !330)
!356 = !DILocation(line: 317, column: 2, scope: !342)
!357 = !DILocation(line: 0, scope: !290, inlinedAt: !358)
!358 = distinct !DILocation(line: 317, column: 2, scope: !342)
!359 = !DILocation(line: 248, column: 9, scope: !290, inlinedAt: !358)
!360 = !DILocation(line: 248, column: 19, scope: !290, inlinedAt: !358)
!361 = !DILocation(line: 249, column: 5, scope: !290, inlinedAt: !358)
!362 = !DILocation(line: 252, column: 17, scope: !290, inlinedAt: !358)
!363 = !DILocation(line: 252, column: 9, scope: !290, inlinedAt: !358)
!364 = !DILocation(line: 252, column: 15, scope: !290, inlinedAt: !358)
!365 = !DILocation(line: 253, column: 19, scope: !309, inlinedAt: !358)
!366 = !DILocation(line: 253, column: 6, scope: !290, inlinedAt: !358)
!367 = !DILocation(line: 257, column: 18, scope: !290, inlinedAt: !358)
!368 = !DILocation(line: 258, column: 9, scope: !290, inlinedAt: !358)
!369 = !DILocation(line: 258, column: 18, scope: !290, inlinedAt: !358)
!370 = !DILocation(line: 259, column: 9, scope: !290, inlinedAt: !358)
!371 = !DILocation(line: 259, column: 15, scope: !290, inlinedAt: !358)
!372 = !DILocation(line: 260, column: 9, scope: !290, inlinedAt: !358)
!373 = !DILocation(line: 260, column: 13, scope: !290, inlinedAt: !358)
!374 = !DILocation(line: 261, column: 9, scope: !290, inlinedAt: !358)
!375 = !DILocation(line: 261, column: 15, scope: !290, inlinedAt: !358)
!376 = !DILocation(line: 0, scope: !342)
!377 = !DILocation(line: 321, column: 26, scope: !330)
!378 = !DILocation(line: 324, column: 17, scope: !330)
!379 = !DILocation(line: 327, column: 10, scope: !380)
!380 = distinct !DILexicalBlock(scope: !330, file: !135, line: 327, column: 6)
!381 = !DILocation(line: 327, column: 6, scope: !330)
!382 = !DILocation(line: 332, column: 24, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !135, line: 329, column: 9)
!384 = !DILocation(line: 332, column: 3, scope: !383)
!385 = !DILocation(line: 333, column: 11, scope: !383)
!386 = !DILocation(line: 335, column: 7, scope: !383)
!387 = !DILocation(line: 344, column: 45, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !135, line: 341, column: 42)
!389 = distinct !DILexicalBlock(scope: !390, file: !135, line: 341, column: 14)
!390 = distinct !DILexicalBlock(scope: !383, file: !135, line: 335, column: 7)
!391 = !DILocation(line: 344, column: 16, scope: !388)
!392 = !DILocation(line: 344, column: 14, scope: !388)
!393 = !DILocation(line: 345, column: 3, scope: !388)
!394 = !DILocation(line: 349, column: 1, scope: !330)
!395 = distinct !DISubprogram(name: "index_decode", scope: !135, file: !135, line: 57, type: !57, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !413, !417}
!397 = !DILocalVariable(name: "pcoder", arg: 1, scope: !395, file: !135, line: 57, type: !41)
!398 = !DILocalVariable(name: "allocator", arg: 2, scope: !395, file: !135, line: 57, type: !60)
!399 = !DILocalVariable(name: "in", arg: 3, scope: !395, file: !135, line: 58, type: !76)
!400 = !DILocalVariable(name: "in_pos", arg: 4, scope: !395, file: !135, line: 58, type: !82)
!401 = !DILocalVariable(name: "in_size", arg: 5, scope: !395, file: !135, line: 59, type: !69)
!402 = !DILocalVariable(name: "out", arg: 6, scope: !395, file: !135, line: 60, type: !84)
!403 = !DILocalVariable(name: "out_pos", arg: 7, scope: !395, file: !135, line: 61, type: !82)
!404 = !DILocalVariable(name: "out_size", arg: 8, scope: !395, file: !135, line: 62, type: !69)
!405 = !DILocalVariable(name: "action", arg: 9, scope: !395, file: !135, line: 63, type: !86)
!406 = !DILocalVariable(name: "coder", scope: !395, file: !135, line: 66, type: !164)
!407 = !DILocalVariable(name: "in_start", scope: !395, file: !135, line: 67, type: !344)
!408 = !DILocalVariable(name: "ret", scope: !395, file: !135, line: 68, type: !59)
!409 = !DILocalVariable(name: "size", scope: !410, file: !135, line: 116, type: !412)
!410 = distinct !DILexicalBlock(scope: !411, file: !135, line: 115, column: 25)
!411 = distinct !DILexicalBlock(scope: !395, file: !135, line: 71, column: 27)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!413 = !DILocalVariable(name: "ret_", scope: !414, file: !135, line: 139, type: !207)
!414 = distinct !DILexicalBlock(scope: !415, file: !135, line: 139, column: 4)
!415 = distinct !DILexicalBlock(scope: !416, file: !135, line: 137, column: 10)
!416 = distinct !DILexicalBlock(scope: !410, file: !135, line: 128, column: 7)
!417 = !DILabel(scope: !395, name: "out", file: !135, line: 201)
!418 = !DILocation(line: 0, scope: !395)
!419 = !DILocation(line: 67, column: 26, scope: !395)
!420 = !DILocation(line: 70, column: 17, scope: !395)
!421 = !DILocation(line: 70, column: 2, scope: !395)
!422 = !DILocation(line: 71, column: 17, scope: !395)
!423 = !DILocation(line: 71, column: 2, scope: !395)
!424 = !DILocation(line: 160, column: 14, scope: !425)
!425 = distinct !DILexicalBlock(scope: !411, file: !135, line: 160, column: 7)
!426 = !DILocation(line: 82, column: 19, scope: !427)
!427 = distinct !DILexicalBlock(scope: !411, file: !135, line: 82, column: 7)
!428 = !DILocation(line: 82, column: 7, scope: !427)
!429 = !{!218, !218, i64 0}
!430 = !DILocation(line: 82, column: 23, scope: !427)
!431 = !DILocation(line: 82, column: 7, scope: !411)
!432 = !DILocation(line: 89, column: 9, scope: !411)
!433 = !DILocation(line: 91, column: 11, scope: !434)
!434 = distinct !DILexicalBlock(scope: !411, file: !135, line: 91, column: 7)
!435 = !DILocation(line: 91, column: 7, scope: !411)
!436 = !DILocation(line: 94, column: 14, scope: !411)
!437 = !DILocation(line: 95, column: 19, scope: !411)
!438 = !DILocation(line: 95, column: 3, scope: !411)
!439 = !DILocation(line: 100, column: 37, scope: !440)
!440 = distinct !DILexicalBlock(scope: !411, file: !135, line: 100, column: 7)
!441 = !DILocation(line: 100, column: 7, scope: !440)
!442 = !DILocation(line: 100, column: 53, scope: !440)
!443 = !DILocation(line: 100, column: 44, scope: !440)
!444 = !DILocation(line: 100, column: 7, scope: !411)
!445 = !DILocation(line: 107, column: 30, scope: !411)
!446 = !DILocation(line: 107, column: 44, scope: !411)
!447 = !DILocation(line: 107, column: 3, scope: !411)
!448 = !DILocation(line: 110, column: 28, scope: !411)
!449 = !DILocation(line: 110, column: 34, scope: !411)
!450 = !DILocation(line: 110, column: 21, scope: !411)
!451 = !DILocation(line: 112, column: 3, scope: !411)
!452 = !DILocation(line: 116, column: 20, scope: !410)
!453 = !DILocation(line: 0, scope: !410)
!454 = !DILocation(line: 120, column: 9, scope: !410)
!455 = !DILocation(line: 122, column: 11, scope: !456)
!456 = distinct !DILexicalBlock(scope: !410, file: !135, line: 122, column: 7)
!457 = !DILocation(line: 122, column: 7, scope: !410)
!458 = !DILocation(line: 126, column: 14, scope: !410)
!459 = !DILocation(line: 128, column: 14, scope: !416)
!460 = !DILocation(line: 128, column: 23, scope: !416)
!461 = !DILocation(line: 128, column: 7, scope: !410)
!462 = !DILocation(line: 131, column: 15, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !135, line: 131, column: 8)
!464 = distinct !DILexicalBlock(scope: !416, file: !135, line: 128, column: 40)
!465 = !{!282, !220, i64 40}
!466 = !DILocation(line: 132, column: 6, scope: !463)
!467 = !DILocation(line: 139, column: 4, scope: !414)
!468 = !{!282, !220, i64 48}
!469 = !DILocation(line: 0, scope: !414)
!470 = !DILocation(line: 139, column: 4, scope: !471)
!471 = distinct !DILexicalBlock(scope: !414, file: !135, line: 139, column: 4)
!472 = !DILocation(line: 145, column: 22, scope: !415)
!473 = !DILocation(line: 145, column: 37, scope: !415)
!474 = !DILocation(line: 154, column: 47, scope: !411)
!475 = !DILocation(line: 154, column: 16, scope: !411)
!476 = !DILocation(line: 154, column: 14, scope: !411)
!477 = !DILocation(line: 155, column: 19, scope: !411)
!478 = !DILocation(line: 155, column: 3, scope: !411)
!479 = !DILocation(line: 160, column: 18, scope: !425)
!480 = !DILocation(line: 160, column: 7, scope: !411)
!481 = !DILocation(line: 161, column: 4, scope: !482)
!482 = distinct !DILexicalBlock(scope: !425, file: !135, line: 160, column: 23)
!483 = !DILocation(line: 162, column: 20, scope: !484)
!484 = distinct !DILexicalBlock(scope: !482, file: !135, line: 162, column: 8)
!485 = !DILocation(line: 162, column: 8, scope: !484)
!486 = !DILocation(line: 162, column: 24, scope: !484)
!487 = !DILocation(line: 162, column: 8, scope: !482)
!488 = !DILocation(line: 169, column: 32, scope: !411)
!489 = !DILocation(line: 170, column: 5, scope: !411)
!490 = !DILocation(line: 170, column: 13, scope: !411)
!491 = !DILocation(line: 170, column: 32, scope: !411)
!492 = !DILocation(line: 169, column: 18, scope: !411)
!493 = !DILocation(line: 169, column: 16, scope: !411)
!494 = !DILocation(line: 172, column: 19, scope: !411)
!495 = !DILocation(line: 172, column: 3, scope: !411)
!496 = !DILocation(line: 177, column: 3, scope: !411)
!497 = !DILocation(line: 178, column: 16, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !135, line: 178, column: 8)
!499 = distinct !DILexicalBlock(scope: !411, file: !135, line: 177, column: 6)
!500 = !DILocation(line: 178, column: 8, scope: !499)
!501 = !DILocation(line: 181, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !135, line: 181, column: 8)
!503 = !DILocation(line: 181, column: 34, scope: !502)
!504 = !DILocation(line: 181, column: 23, scope: !502)
!505 = !DILocation(line: 182, column: 21, scope: !502)
!506 = !DILocation(line: 182, column: 9, scope: !502)
!507 = !DILocation(line: 182, column: 6, scope: !502)
!508 = !DILocation(line: 181, column: 8, scope: !499)
!509 = !DILocation(line: 185, column: 12, scope: !411)
!510 = !DILocation(line: 185, column: 25, scope: !411)
!511 = !DILocation(line: 185, column: 3, scope: !499)
!512 = distinct !{!512, !496, !513, !514, !515}
!513 = !DILocation(line: 185, column: 28, scope: !411)
!514 = !{!"llvm.loop.mustprogress"}
!515 = !{!"llvm.loop.unroll.disable"}
!516 = !DILocation(line: 189, column: 30, scope: !411)
!517 = !DILocation(line: 189, column: 11, scope: !411)
!518 = !DILocation(line: 189, column: 21, scope: !411)
!519 = !DILocation(line: 192, column: 16, scope: !411)
!520 = !DILocation(line: 194, column: 3, scope: !411)
!521 = !DILocation(line: 0, scope: !411)
!522 = !DILocation(line: 70, column: 9, scope: !395)
!523 = distinct !{!523, !421, !524, !514, !515}
!524 = !DILocation(line: 199, column: 2, scope: !395)
!525 = !DILocation(line: 204, column: 4, scope: !395)
!526 = !DILocation(line: 203, column: 31, scope: !395)
!527 = !DILocation(line: 201, column: 1, scope: !395)
!528 = !DILocation(line: 204, column: 12, scope: !395)
!529 = !DILocation(line: 204, column: 31, scope: !395)
!530 = !DILocation(line: 203, column: 17, scope: !395)
!531 = !DILocation(line: 203, column: 15, scope: !395)
!532 = !DILocation(line: 206, column: 2, scope: !395)
!533 = !DILocation(line: 207, column: 1, scope: !395)
!534 = !DISubprogram(name: "lzma_index_end", scope: !143, file: !143, line: 315, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !141, !60}
!537 = !DISubprogram(name: "lzma_index_memusage", scope: !143, file: !143, line: 286, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!538 = !DISubroutineType(types: !539)
!539 = !{!46, !44, !44}
!540 = !DISubprogram(name: "lzma_next_end", scope: !33, file: !33, line: 237, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !243, !60}
!543 = !DISubprogram(name: "lzma_alloc", scope: !33, file: !33, line: 211, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!544 = !DISubroutineType(types: !545)
!545 = !{!68, !69, !60}
!546 = distinct !DISubprogram(name: "index_decoder_end", scope: !135, file: !135, line: 211, type: !90, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !547)
!547 = !{!548, !549, !550}
!548 = !DILocalVariable(name: "pcoder", arg: 1, scope: !546, file: !135, line: 211, type: !41)
!549 = !DILocalVariable(name: "allocator", arg: 2, scope: !546, file: !135, line: 211, type: !60)
!550 = !DILocalVariable(name: "coder", scope: !546, file: !135, line: 213, type: !164)
!551 = !DILocation(line: 0, scope: !546)
!552 = !DILocation(line: 214, column: 24, scope: !546)
!553 = !DILocation(line: 214, column: 2, scope: !546)
!554 = !DILocation(line: 215, column: 2, scope: !546)
!555 = !DILocation(line: 217, column: 1, scope: !546)
!556 = distinct !DISubprogram(name: "index_decoder_memconfig", scope: !135, file: !135, line: 221, type: !101, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !557)
!557 = !{!558, !559, !560, !561, !562}
!558 = !DILocalVariable(name: "pcoder", arg: 1, scope: !556, file: !135, line: 221, type: !41)
!559 = !DILocalVariable(name: "memusage", arg: 2, scope: !556, file: !135, line: 221, type: !103)
!560 = !DILocalVariable(name: "old_memlimit", arg: 3, scope: !556, file: !135, line: 222, type: !103)
!561 = !DILocalVariable(name: "new_memlimit", arg: 4, scope: !556, file: !135, line: 222, type: !46)
!562 = !DILocalVariable(name: "coder", scope: !556, file: !135, line: 224, type: !164)
!563 = !DILocation(line: 0, scope: !556)
!564 = !DILocation(line: 225, column: 44, scope: !556)
!565 = !DILocation(line: 225, column: 14, scope: !556)
!566 = !DILocation(line: 225, column: 12, scope: !556)
!567 = !DILocation(line: 226, column: 25, scope: !556)
!568 = !DILocation(line: 226, column: 16, scope: !556)
!569 = !DILocation(line: 228, column: 19, scope: !570)
!570 = distinct !DILexicalBlock(scope: !556, file: !135, line: 228, column: 6)
!571 = !DILocation(line: 228, column: 6, scope: !556)
!572 = !DILocation(line: 229, column: 22, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !135, line: 229, column: 7)
!574 = distinct !DILexicalBlock(scope: !570, file: !135, line: 228, column: 25)
!575 = !DILocation(line: 229, column: 20, scope: !573)
!576 = !DILocation(line: 229, column: 7, scope: !574)
!577 = !DILocation(line: 232, column: 19, scope: !574)
!578 = !DILocation(line: 233, column: 2, scope: !574)
!579 = !DILocation(line: 236, column: 1, scope: !556)
!580 = !DISubprogram(name: "lzma_free", scope: !33, file: !33, line: 215, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !68, !60}
!583 = !DISubprogram(name: "lzma_index_init", scope: !143, file: !143, line: 306, type: !584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!584 = !DISubroutineType(types: !585)
!585 = !{!141, !60}
!586 = !DISubprogram(name: "lzma_vli_decode", scope: !45, file: !45, line: 154, type: !587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!587 = !DISubroutineType(types: !588)
!588 = !{!59, !412, !83, !77, !83, !69}
!589 = !DISubprogram(name: "lzma_index_prealloc", scope: !590, file: !590, line: 34, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!590 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/index.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "8c1da33cfb6445c1ed40367774c91b69")
!591 = !DISubroutineType(types: !592)
!592 = !{null, !141, !44}
!593 = !DISubprogram(name: "lzma_index_append", scope: !143, file: !143, line: 343, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!594 = !DISubroutineType(types: !595)
!595 = !{!59, !141, !60, !44, !44}
!596 = !DISubprogram(name: "lzma_index_padding_size", scope: !590, file: !590, line: 28, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!597 = !DISubroutineType(types: !598)
!598 = !{!152, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!601 = !DISubprogram(name: "lzma_crc32", scope: !26, file: !26, line: 119, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!602 = !DISubroutineType(types: !603)
!603 = !{!152, !77, !69, !152}
