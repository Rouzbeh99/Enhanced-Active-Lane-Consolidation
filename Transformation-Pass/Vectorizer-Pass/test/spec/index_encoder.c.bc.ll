; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/index_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/index_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, ptr, %struct.lzma_index_iter, i64, i32 }
%struct.lzma_index_iter = type { %struct.anon, %struct.anon.0, [6 x %union.anon] }
%struct.anon = type { ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.0 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %i) #0 !dbg !249 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !254, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !255, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata ptr %i, metadata !256, metadata !DIExpression()), !dbg !257
  %init = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 2, !dbg !258
  %0 = load i64, ptr %init, align 8, !dbg !258, !tbaa !261
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_index_encoder_init to i64), !dbg !258
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !267

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4, !dbg !258
  br label %if.end, !dbg !258

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_index_encoder_init to i64), ptr %init, align 8, !dbg !267, !tbaa !261
  %cmp2 = icmp eq ptr %i, null, !dbg !268
  br i1 %cmp2, label %return, label %if.end4, !dbg !270

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %next, align 8, !dbg !271, !tbaa !273
  %cmp5 = icmp eq ptr %1, null, !dbg !274
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !275

if.then6:                                         ; preds = %if.end4
  %call = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %allocator) #4, !dbg !276
  store ptr %call, ptr %next, align 8, !dbg !278, !tbaa !273
  %cmp9 = icmp eq ptr %call, null, !dbg !279
  br i1 %cmp9, label %return, label %if.end11, !dbg !281

if.end11:                                         ; preds = %if.then6
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !282
  store ptr @index_encode, ptr %code, align 8, !dbg !283, !tbaa !284
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !285
  store ptr @index_encoder_end, ptr %end, align 8, !dbg !286, !tbaa !287
  br label %if.end12, !dbg !288

if.end12:                                         ; preds = %if.end11, %if.end4
  %2 = phi ptr [ %call, %if.end11 ], [ %1, %if.end4 ], !dbg !289
  call void @llvm.dbg.value(metadata ptr %2, metadata !290, metadata !DIExpression()) #4, !dbg !298
  call void @llvm.dbg.value(metadata ptr %i, metadata !295, metadata !DIExpression()) #4, !dbg !298
  call void @llvm.dbg.value(metadata ptr %2, metadata !296, metadata !DIExpression()) #4, !dbg !298
  %iter.i = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 2, !dbg !300
  tail call void @lzma_index_iter_init(ptr noundef nonnull %iter.i, ptr noundef nonnull %i) #4, !dbg !301
  store i32 0, ptr %2, align 8, !dbg !302, !tbaa !303
  %index.i = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 1, !dbg !309
  store ptr %i, ptr %index.i, align 8, !dbg !310, !tbaa !311
  %pos.i = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 3, !dbg !312
  store i64 0, ptr %pos.i, align 8, !dbg !313, !tbaa !314
  %crc32.i = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 4, !dbg !315
  store i32 0, ptr %crc32.i, align 8, !dbg !316, !tbaa !317
  br label %return, !dbg !318

return:                                           ; preds = %if.then6, %if.end, %if.end12
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 11, %if.end ], [ 5, %if.then6 ], !dbg !257
  ret i32 %retval.0, !dbg !319
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !320 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !324 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @index_encode(ptr noundef %pcoder, ptr nocapture noundef readnone %allocator, ptr noalias nocapture noundef readnone %in, ptr noalias nocapture noundef readnone %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !327 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !329, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !330, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata ptr %in, metadata !331, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !332, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !333, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata ptr %out, metadata !334, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !335, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !336, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 %action, metadata !337, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !338, metadata !DIExpression()), !dbg !349
  %0 = load i64, ptr %out_pos, align 8, !dbg !350, !tbaa !351
  call void @llvm.dbg.value(metadata i64 %0, metadata !339, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()), !dbg !349
  %cmp139 = icmp ult i64 %0, %out_size, !dbg !352
  br i1 %cmp139, label %while.body.lr.ph, label %out60, !dbg !353

while.body.lr.ph:                                 ; preds = %entry
  %uncompressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 1, i32 6
  %pos35 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3
  %iter = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %index10 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1
  %unpadded_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 1, i32 7
  %.pre = load i32, ptr %pcoder, align 8, !dbg !354, !tbaa !303
  br label %while.body, !dbg !353

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %1 = phi i32 [ %.pre, %while.body.lr.ph ], [ %11, %sw.epilog ], !dbg !354
  %2 = phi i64 [ %0, %while.body.lr.ph ], [ %12, %sw.epilog ]
  switch i32 %1, label %cleanup66 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 4, label %sw.bb7
    i32 6, label %sw.bb46
    i32 5, label %sw.bb34
    i32 2, label %cond.end
    i32 3, label %cond.false
  ], !dbg !355

sw.bb:                                            ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %2, !dbg !356
  store i8 0, ptr %arrayidx, align 1, !dbg !357, !tbaa !358
  %inc = add nuw i64 %2, 1, !dbg !359
  store i64 %inc, ptr %out_pos, align 8, !dbg !359, !tbaa !351
  store i32 1, ptr %pcoder, align 8, !dbg !360, !tbaa !303
  br label %sw.epilog, !dbg !361

sw.bb2:                                           ; preds = %while.body
  %3 = load ptr, ptr %index10, align 8, !dbg !362, !tbaa !311
  %call = tail call i64 @lzma_index_block_count(ptr noundef %3) #4, !dbg !363
  call void @llvm.dbg.value(metadata i64 %call, metadata !342, metadata !DIExpression()), !dbg !364
  %call3 = tail call i32 @lzma_vli_encode(i64 noundef %call, ptr noundef nonnull %pos35, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #4, !dbg !365
  call void @llvm.dbg.value(metadata i32 %call3, metadata !341, metadata !DIExpression()), !dbg !349
  %cmp4.not = icmp eq i32 %call3, 1, !dbg !366
  br i1 %cmp4.not, label %cleanup.thread, label %out60.loopexit, !dbg !368

cleanup.thread:                                   ; preds = %sw.bb2
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()), !dbg !349
  store i64 0, ptr %pos35, align 8, !dbg !369, !tbaa !314
  store i32 4, ptr %pcoder, align 8, !dbg !370, !tbaa !303
  call void @llvm.dbg.value(metadata i32 %call3, metadata !341, metadata !DIExpression()), !dbg !349
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  %call8 = tail call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter, i32 noundef 2) #4, !dbg !371
  %tobool.not = icmp eq i8 %call8, 0, !dbg !371
  br i1 %tobool.not, label %sw.bb16.thread, label %if.then9, !dbg !373

if.then9:                                         ; preds = %sw.bb7
  %4 = load ptr, ptr %index10, align 8, !dbg !374, !tbaa !311
  %call11 = tail call i32 @lzma_index_padding_size(ptr noundef %4) #4, !dbg !376
  %conv = zext i32 %call11 to i64, !dbg !376
  store i64 %conv, ptr %pos35, align 8, !dbg !377, !tbaa !314
  store i32 5, ptr %pcoder, align 8, !dbg !378, !tbaa !303
  br label %sw.epilog, !dbg !379

sw.bb16.thread:                                   ; preds = %sw.bb7
  store i32 2, ptr %pcoder, align 8, !dbg !380, !tbaa !303
  br label %cond.end, !dbg !381

cond.false:                                       ; preds = %while.body
  br label %cond.end, !dbg !381

cond.end:                                         ; preds = %sw.bb16.thread, %while.body, %cond.false
  %cond.in = phi ptr [ %uncompressed_size, %cond.false ], [ %unpadded_size, %while.body ], [ %unpadded_size, %sw.bb16.thread ]
  %cond = load i64, ptr %cond.in, align 8, !dbg !381, !tbaa !351
  call void @llvm.dbg.value(metadata i64 %cond, metadata !346, metadata !DIExpression()), !dbg !382
  %call24 = tail call i32 @lzma_vli_encode(i64 noundef %cond, ptr noundef nonnull %pos35, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #4, !dbg !383
  call void @llvm.dbg.value(metadata i32 %call24, metadata !341, metadata !DIExpression()), !dbg !349
  %cmp25.not = icmp eq i32 %call24, 1, !dbg !384
  br i1 %cmp25.not, label %cleanup32.thread, label %out60.loopexit, !dbg !386

cleanup32.thread:                                 ; preds = %cond.end
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()), !dbg !349
  store i64 0, ptr %pos35, align 8, !dbg !387, !tbaa !314
  %5 = load i32, ptr %pcoder, align 8, !dbg !388, !tbaa !303
  %inc31 = add i32 %5, 1, !dbg !388
  store i32 %inc31, ptr %pcoder, align 8, !dbg !388, !tbaa !303
  call void @llvm.dbg.value(metadata i32 %call24, metadata !341, metadata !DIExpression()), !dbg !349
  br label %sw.epilog

sw.bb34:                                          ; preds = %while.body
  %6 = load i64, ptr %pos35, align 8, !dbg !389, !tbaa !314
  %cmp36.not = icmp eq i64 %6, 0, !dbg !391
  br i1 %cmp36.not, label %if.end42, label %if.then38, !dbg !392

if.then38:                                        ; preds = %sw.bb34
  %dec = add i64 %6, -1, !dbg !393
  store i64 %dec, ptr %pos35, align 8, !dbg !393, !tbaa !314
  %inc40 = add nuw i64 %2, 1, !dbg !395
  store i64 %inc40, ptr %out_pos, align 8, !dbg !395, !tbaa !351
  %arrayidx41 = getelementptr inbounds i8, ptr %out, i64 %2, !dbg !396
  store i8 0, ptr %arrayidx41, align 1, !dbg !397, !tbaa !358
  br label %sw.epilog, !dbg !398

if.end42:                                         ; preds = %sw.bb34
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %0, !dbg !399
  %sub = sub i64 %2, %0, !dbg !400
  %crc32 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !401
  %7 = load i32, ptr %crc32, align 8, !dbg !401, !tbaa !317
  %call43 = tail call i32 @lzma_crc32(ptr noundef %add.ptr, i64 noundef %sub, i32 noundef %7) #4, !dbg !402
  store i32 %call43, ptr %crc32, align 8, !dbg !403, !tbaa !317
  store i32 6, ptr %pcoder, align 8, !dbg !404, !tbaa !303
  %out_pos.promoted.pre = load i64, ptr %out_pos, align 8, !tbaa !351
  br label %sw.bb46, !dbg !405

sw.bb46:                                          ; preds = %while.body, %if.end42
  %out_pos.promoted = phi i64 [ %out_pos.promoted.pre, %if.end42 ], [ %2, %while.body ]
  %crc3251 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !406
  br label %do.body, !dbg !408

do.body:                                          ; preds = %if.end50, %sw.bb46
  %8 = phi i64 [ %inc55, %if.end50 ], [ %out_pos.promoted, %sw.bb46 ]
  %cmp47 = icmp eq i64 %8, %out_size, !dbg !409
  br i1 %cmp47, label %cleanup66, label %if.end50, !dbg !411

if.end50:                                         ; preds = %do.body
  %9 = load i32, ptr %crc3251, align 8, !dbg !406, !tbaa !317
  %10 = load i64, ptr %pos35, align 8, !dbg !412, !tbaa !314
  %.tr = trunc i64 %10 to i32, !dbg !413
  %sh_prom = shl i32 %.tr, 3, !dbg !413
  %shr = lshr i32 %9, %sh_prom, !dbg !413
  %conv53 = trunc i32 %shr to i8, !dbg !414
  %arrayidx54 = getelementptr inbounds i8, ptr %out, i64 %8, !dbg !415
  store i8 %conv53, ptr %arrayidx54, align 1, !dbg !416, !tbaa !358
  %inc55 = add i64 %8, 1, !dbg !417
  store i64 %inc55, ptr %out_pos, align 8, !dbg !417, !tbaa !351
  %inc57 = add i64 %10, 1, !dbg !418
  store i64 %inc57, ptr %pos35, align 8, !dbg !418, !tbaa !314
  %cmp58 = icmp ult i64 %inc57, 4, !dbg !419
  br i1 %cmp58, label %do.body, label %cleanup66, !dbg !420, !llvm.loop !421

sw.epilog:                                        ; preds = %cleanup32.thread, %cleanup.thread, %if.then38, %if.then9, %sw.bb
  %11 = phi i32 [ %inc31, %cleanup32.thread ], [ 4, %cleanup.thread ], [ 5, %if.then38 ], [ 5, %if.then9 ], [ 1, %sw.bb ]
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()), !dbg !349
  %12 = load i64, ptr %out_pos, align 8, !dbg !425, !tbaa !351
  %cmp = icmp ult i64 %12, %out_size, !dbg !352
  br i1 %cmp, label %while.body, label %out60.loopexit, !dbg !353, !llvm.loop !426

out60.loopexit:                                   ; preds = %cond.end, %sw.bb2, %sw.epilog
  %ret.4.ph = phi i32 [ 0, %sw.epilog ], [ %call3, %sw.bb2 ], [ %call24, %cond.end ]
  %.pre147 = load i64, ptr %out_pos, align 8, !dbg !428, !tbaa !351
  br label %out60, !dbg !429

out60:                                            ; preds = %out60.loopexit, %entry
  %13 = phi i64 [ %0, %entry ], [ %.pre147, %out60.loopexit ], !dbg !428
  %ret.4 = phi i32 [ 0, %entry ], [ %ret.4.ph, %out60.loopexit ], !dbg !349
  call void @llvm.dbg.value(metadata i32 %ret.4, metadata !341, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.label(metadata !348), !dbg !430
  %add.ptr61 = getelementptr inbounds i8, ptr %out, i64 %0, !dbg !429
  %sub62 = sub i64 %13, %0, !dbg !431
  %crc3263 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !432
  %14 = load i32, ptr %crc3263, align 8, !dbg !432, !tbaa !317
  %call64 = tail call i32 @lzma_crc32(ptr noundef %add.ptr61, i64 noundef %sub62, i32 noundef %14) #4, !dbg !433
  store i32 %call64, ptr %crc3263, align 8, !dbg !434, !tbaa !317
  br label %cleanup66, !dbg !435

cleanup66:                                        ; preds = %while.body, %if.end50, %do.body, %out60
  %retval.0 = phi i32 [ %ret.4, %out60 ], [ 1, %if.end50 ], [ 0, %do.body ], [ 11, %while.body ]
  ret i32 %retval.0, !dbg !436
}

; Function Attrs: nounwind uwtable
define internal void @index_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !437 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !439, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !440, metadata !DIExpression()), !dbg !441
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #4, !dbg !442
  ret void, !dbg !443
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_encoder(ptr noundef %strm, ptr noundef %i) local_unnamed_addr #0 !dbg !444 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !472, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata ptr %i, metadata !473, metadata !DIExpression()), !dbg !479
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #4, !dbg !480
  call void @llvm.dbg.value(metadata i32 %call, metadata !474, metadata !DIExpression()), !dbg !481
  %cmp.not = icmp eq i32 %call, 0, !dbg !482
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !484
  %0 = load ptr, ptr %internal, align 8, !dbg !484, !tbaa !485
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !484
  %1 = load ptr, ptr %allocator, align 8, !dbg !484, !tbaa !487
  call void @llvm.dbg.value(metadata ptr %0, metadata !254, metadata !DIExpression()) #4, !dbg !488
  call void @llvm.dbg.value(metadata ptr %1, metadata !255, metadata !DIExpression()) #4, !dbg !488
  call void @llvm.dbg.value(metadata ptr %i, metadata !256, metadata !DIExpression()) #4, !dbg !488
  %init.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2, !dbg !490
  %2 = load i64, ptr %init.i, align 8, !dbg !490, !tbaa !261
  %cmp.not.i = icmp eq i64 %2, ptrtoint (ptr @lzma_index_encoder_init to i64), !dbg !490
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !491

if.then.i:                                        ; preds = %do.end
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #4, !dbg !490
  br label %if.end.i, !dbg !490

if.end.i:                                         ; preds = %if.then.i, %do.end
  store i64 ptrtoint (ptr @lzma_index_encoder_init to i64), ptr %init.i, align 8, !dbg !491, !tbaa !261
  %cmp2.i = icmp eq ptr %i, null, !dbg !492
  br i1 %cmp2.i, label %cleanup7, label %if.end4.i, !dbg !493

if.end4.i:                                        ; preds = %if.end.i
  %3 = load ptr, ptr %0, align 8, !dbg !494, !tbaa !273
  %cmp5.i = icmp eq ptr %3, null, !dbg !495
  br i1 %cmp5.i, label %if.then6.i, label %do.end10, !dbg !496

if.then6.i:                                       ; preds = %if.end4.i
  %call.i = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %1) #4, !dbg !497
  store ptr %call.i, ptr %0, align 8, !dbg !498, !tbaa !273
  %cmp9.i = icmp eq ptr %call.i, null, !dbg !499
  br i1 %cmp9.i, label %cleanup7, label %if.end11.i, !dbg !500

if.end11.i:                                       ; preds = %if.then6.i
  %code.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3, !dbg !501
  store ptr @index_encode, ptr %code.i, align 8, !dbg !502, !tbaa !284
  %end.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4, !dbg !503
  store ptr @index_encoder_end, ptr %end.i, align 8, !dbg !504, !tbaa !287
  br label %do.end10, !dbg !505

cleanup7:                                         ; preds = %if.then6.i, %if.end.i
  %retval.0.i.ph = phi i32 [ 5, %if.then6.i ], [ 11, %if.end.i ]
  call void @llvm.dbg.value(metadata i32 0, metadata !478, metadata !DIExpression()), !dbg !506
  tail call void @lzma_end(ptr noundef nonnull %strm) #4, !dbg !507
  br label %return

do.end10:                                         ; preds = %if.end11.i, %if.end4.i
  %4 = phi ptr [ %call.i, %if.end11.i ], [ %3, %if.end4.i ], !dbg !510
  call void @llvm.dbg.value(metadata ptr %4, metadata !290, metadata !DIExpression()) #4, !dbg !511
  call void @llvm.dbg.value(metadata ptr %i, metadata !295, metadata !DIExpression()) #4, !dbg !511
  call void @llvm.dbg.value(metadata ptr %4, metadata !296, metadata !DIExpression()) #4, !dbg !511
  %iter.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 2, !dbg !513
  tail call void @lzma_index_iter_init(ptr noundef nonnull %iter.i.i, ptr noundef nonnull %i) #4, !dbg !514
  store i32 0, ptr %4, align 8, !dbg !515, !tbaa !303
  %index.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, !dbg !516
  store ptr %i, ptr %index.i.i, align 8, !dbg !517, !tbaa !311
  %pos.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 3, !dbg !518
  store i64 0, ptr %pos.i.i, align 8, !dbg !519, !tbaa !314
  %crc32.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 4, !dbg !520
  store i32 0, ptr %crc32.i.i, align 8, !dbg !521, !tbaa !317
  call void @llvm.dbg.value(metadata i32 0, metadata !478, metadata !DIExpression()), !dbg !506
  %5 = load ptr, ptr %internal, align 8, !dbg !522, !tbaa !485
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %5, i64 0, i32 3, !dbg !523
  store i8 1, ptr %supported_actions, align 8, !dbg !524, !tbaa !525
  %arrayidx14 = getelementptr inbounds %struct.lzma_internal_s, ptr %5, i64 0, i32 3, i64 3, !dbg !527
  store i8 1, ptr %arrayidx14, align 1, !dbg !528, !tbaa !525
  br label %return, !dbg !529

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %retval.0.i.ph, %cleanup7 ], [ 0, %do.end10 ], !dbg !479
  ret i32 %retval.2, !dbg !530
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !531 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare !dbg !534 void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_buffer_encode(ptr noundef %i, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !537 {
entry:
  %coder = alloca %struct.lzma_coder_s, align 8
  call void @llvm.dbg.value(metadata ptr %i, metadata !541, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata ptr %out, metadata !542, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !543, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !544, metadata !DIExpression()), !dbg !548
  %cmp = icmp eq ptr %i, null, !dbg !549
  %cmp1 = icmp eq ptr %out, null
  %or.cond = or i1 %cmp, %cmp1, !dbg !551
  %cmp3 = icmp eq ptr %out_pos, null
  %or.cond13 = or i1 %or.cond, %cmp3, !dbg !551
  br i1 %or.cond13, label %return, label %lor.lhs.false4, !dbg !551

lor.lhs.false4:                                   ; preds = %entry
  %0 = load i64, ptr %out_pos, align 8, !dbg !552, !tbaa !351
  %cmp5 = icmp ugt i64 %0, %out_size, !dbg !553
  br i1 %cmp5, label %return, label %if.end, !dbg !554

if.end:                                           ; preds = %lor.lhs.false4
  %sub = sub i64 %out_size, %0, !dbg !555
  %call = tail call i64 @lzma_index_size(ptr noundef nonnull %i) #4, !dbg !557
  %cmp6 = icmp ult i64 %sub, %call, !dbg !558
  br i1 %cmp6, label %return, label %if.end8, !dbg !559

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %coder) #4, !dbg !560
  call void @llvm.dbg.declare(metadata ptr %coder, metadata !545, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata ptr %coder, metadata !290, metadata !DIExpression()) #4, !dbg !562
  call void @llvm.dbg.value(metadata ptr %i, metadata !295, metadata !DIExpression()) #4, !dbg !562
  call void @llvm.dbg.value(metadata ptr %coder, metadata !296, metadata !DIExpression()) #4, !dbg !562
  %iter.i = getelementptr inbounds %struct.lzma_coder_s, ptr %coder, i64 0, i32 2, !dbg !564
  call void @lzma_index_iter_init(ptr noundef nonnull %iter.i, ptr noundef nonnull %i) #4, !dbg !565
  store i32 0, ptr %coder, align 8, !dbg !566, !tbaa !303
  %index.i = getelementptr inbounds %struct.lzma_coder_s, ptr %coder, i64 0, i32 1, !dbg !567
  store ptr %i, ptr %index.i, align 8, !dbg !568, !tbaa !311
  %pos.i = getelementptr inbounds %struct.lzma_coder_s, ptr %coder, i64 0, i32 3, !dbg !569
  store i64 0, ptr %pos.i, align 8, !dbg !570, !tbaa !314
  %crc32.i = getelementptr inbounds %struct.lzma_coder_s, ptr %coder, i64 0, i32 4, !dbg !571
  store i32 0, ptr %crc32.i, align 8, !dbg !572, !tbaa !317
  %1 = load i64, ptr %out_pos, align 8, !dbg !573, !tbaa !351
  call void @llvm.dbg.value(metadata i64 %1, metadata !546, metadata !DIExpression()), !dbg !548
  %call9 = call i32 @index_encode(ptr noundef nonnull %coder, ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef 0, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 0), !dbg !574
  call void @llvm.dbg.value(metadata i32 %call9, metadata !547, metadata !DIExpression()), !dbg !548
  %cmp10 = icmp eq i32 %call9, 1, !dbg !575
  br i1 %cmp10, label %if.end12, label %if.else, !dbg !577

if.else:                                          ; preds = %if.end8
  store i64 %1, ptr %out_pos, align 8, !dbg !578, !tbaa !351
  call void @llvm.dbg.value(metadata i32 11, metadata !547, metadata !DIExpression()), !dbg !548
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %if.else
  %ret.0 = phi i32 [ 11, %if.else ], [ 0, %if.end8 ], !dbg !580
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %coder) #4, !dbg !581
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false4, %if.end12
  %retval.0 = phi i32 [ %ret.0, %if.end12 ], [ 11, %lor.lhs.false4 ], [ 11, %entry ], [ 10, %if.end ], !dbg !548
  ret i32 %retval.0, !dbg !581
}

declare !dbg !582 i64 @lzma_index_size(ptr noundef) local_unnamed_addr #2

declare !dbg !585 i64 @lzma_index_block_count(ptr noundef) local_unnamed_addr #2

declare !dbg !586 i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !589 zeroext i8 @lzma_index_iter_next(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !594 i32 @lzma_index_padding_size(ptr noundef) local_unnamed_addr #2

declare !dbg !598 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !601 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !604 void @lzma_index_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !241, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/index_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "16b8a0128ac6b9bca59f5e628fc962e5")
!2 = !{!3, !19, !25, !32, !131, !134, !235}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !136, file: !135, line: 19, baseType: !5, size: 32, elements: !227)
!135 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/index_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "16b8a0128ac6b9bca59f5e628fc962e5")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !135, line: 18, size: 2688, elements: !137)
!137 = !{!138, !139, !145, !225, !226}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !136, file: !135, line: 27, baseType: !134, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !136, file: !135, line: 30, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index", file: !143, line: 37, baseType: !144)
!143 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/index.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "923fbd07d3b348bf7a676d089b5c066f")
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_s", file: !143, line: 37, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !136, file: !135, line: 33, baseType: !146, size: 2432, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_iter", file: !143, line: 220, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 43, size: 2432, elements: !148)
!148 = !{!149, !196, !216}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !147, file: !143, line: 114, baseType: !150, size: 960)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !147, file: !143, line: 44, size: 960, elements: !151)
!151 = !{!152, !180, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !143, line: 51, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !156, line: 105, baseType: !157)
!156 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/stream_flags.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 33, size: 448, elements: !158)
!158 = !{!159, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !157, file: !156, line: 51, baseType: !160, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !5)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !157, file: !156, line: 69, baseType: !44, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !157, file: !156, line: 79, baseType: !96, size: 32, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !157, file: !156, line: 90, baseType: !165, size: 32, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !131)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !157, file: !156, line: 91, baseType: !165, size: 32, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !157, file: !156, line: 92, baseType: !165, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !157, file: !156, line: 93, baseType: !165, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !157, file: !156, line: 94, baseType: !170, size: 8, offset: 288)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !81)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !157, file: !156, line: 95, baseType: !170, size: 8, offset: 296)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !157, file: !156, line: 96, baseType: !170, size: 8, offset: 304)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !157, file: !156, line: 97, baseType: !170, size: 8, offset: 312)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !157, file: !156, line: 98, baseType: !170, size: 8, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !157, file: !156, line: 99, baseType: !170, size: 8, offset: 328)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !157, file: !156, line: 100, baseType: !170, size: 8, offset: 336)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !157, file: !156, line: 101, baseType: !170, size: 8, offset: 344)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !157, file: !156, line: 102, baseType: !160, size: 32, offset: 352)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !157, file: !156, line: 103, baseType: !160, size: 32, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !150, file: !143, line: 53, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !150, file: !143, line: 54, baseType: !181, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !150, file: !143, line: 55, baseType: !181, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !150, file: !143, line: 62, baseType: !44, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !150, file: !143, line: 70, baseType: !44, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_offset", scope: !150, file: !143, line: 78, baseType: !44, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_offset", scope: !150, file: !143, line: 86, baseType: !44, size: 64, offset: 448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !150, file: !143, line: 94, baseType: !44, size: 64, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !150, file: !143, line: 99, baseType: !44, size: 64, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !150, file: !143, line: 108, baseType: !44, size: 64, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli1", scope: !150, file: !143, line: 110, baseType: !44, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli2", scope: !150, file: !143, line: 111, baseType: !44, size: 64, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli3", scope: !150, file: !143, line: 112, baseType: !44, size: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli4", scope: !150, file: !143, line: 113, baseType: !44, size: 64, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !147, file: !143, line: 208, baseType: !197, size: 1088, offset: 960)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !147, file: !143, line: 116, size: 1088, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "number_in_file", scope: !197, file: !143, line: 122, baseType: !44, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_file_offset", scope: !197, file: !143, line: 132, baseType: !44, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_file_offset", scope: !197, file: !143, line: 147, baseType: !44, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "number_in_stream", scope: !197, file: !143, line: 154, baseType: !44, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_stream_offset", scope: !197, file: !143, line: 162, baseType: !44, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_stream_offset", scope: !197, file: !143, line: 170, baseType: !44, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !197, file: !143, line: 179, baseType: !44, size: 64, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "unpadded_size", scope: !197, file: !143, line: 188, baseType: !44, size: 64, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !197, file: !143, line: 197, baseType: !44, size: 64, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli1", scope: !197, file: !143, line: 199, baseType: !44, size: 64, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli2", scope: !197, file: !143, line: 200, baseType: !44, size: 64, offset: 640)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli3", scope: !197, file: !143, line: 201, baseType: !44, size: 64, offset: 704)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli4", scope: !197, file: !143, line: 202, baseType: !44, size: 64, offset: 768)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !197, file: !143, line: 204, baseType: !181, size: 64, offset: 832)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !197, file: !143, line: 205, baseType: !181, size: 64, offset: 896)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !197, file: !143, line: 206, baseType: !181, size: 64, offset: 960)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !197, file: !143, line: 207, baseType: !181, size: 64, offset: 1024)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !147, file: !143, line: 219, baseType: !217, size: 384, offset: 2048)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 384, elements: !223)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !143, line: 215, size: 64, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !218, file: !143, line: 216, baseType: !181, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !218, file: !143, line: 217, baseType: !69, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !218, file: !143, line: 218, baseType: !44, size: 64)
!223 = !{!224}
!224 = !DISubrange(count: 6)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !136, file: !135, line: 36, baseType: !69, size: 64, offset: 2560)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !136, file: !135, line: 39, baseType: !160, size: 32, offset: 2624)
!227 = !{!228, !229, !230, !231, !232, !233, !234}
!228 = !DIEnumerator(name: "SEQ_INDICATOR", value: 0)
!229 = !DIEnumerator(name: "SEQ_COUNT", value: 1)
!230 = !DIEnumerator(name: "SEQ_UNPADDED", value: 2)
!231 = !DIEnumerator(name: "SEQ_UNCOMPRESSED", value: 3)
!232 = !DIEnumerator(name: "SEQ_NEXT", value: 4)
!233 = !DIEnumerator(name: "SEQ_PADDING", value: 5)
!234 = !DIEnumerator(name: "SEQ_CRC32", value: 6)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 226, baseType: !5, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240}
!237 = !DIEnumerator(name: "LZMA_INDEX_ITER_ANY", value: 0)
!238 = !DIEnumerator(name: "LZMA_INDEX_ITER_STREAM", value: 1)
!239 = !DIEnumerator(name: "LZMA_INDEX_ITER_BLOCK", value: 2)
!240 = !DIEnumerator(name: "LZMA_INDEX_ITER_NONEMPTY_BLOCK", value: 3)
!241 = !{!52, !68}
!242 = !{i32 7, !"Dwarf Version", i32 5}
!243 = !{i32 2, !"Debug Info Version", i32 3}
!244 = !{i32 1, !"wchar_size", i32 4}
!245 = !{i32 7, !"PIC Level", i32 2}
!246 = !{i32 7, !"PIE Level", i32 2}
!247 = !{i32 7, !"uwtable", i32 2}
!248 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!249 = distinct !DISubprogram(name: "lzma_index_encoder_init", scope: !135, file: !135, line: 186, type: !250, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !253)
!250 = !DISubroutineType(types: !251)
!251 = !{!59, !252, !60, !140}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!253 = !{!254, !255, !256}
!254 = !DILocalVariable(name: "next", arg: 1, scope: !249, file: !135, line: 186, type: !252)
!255 = !DILocalVariable(name: "allocator", arg: 2, scope: !249, file: !135, line: 186, type: !60)
!256 = !DILocalVariable(name: "i", arg: 3, scope: !249, file: !135, line: 187, type: !140)
!257 = !DILocation(line: 0, scope: !249)
!258 = !DILocation(line: 189, column: 2, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !135, line: 189, column: 2)
!260 = distinct !DILexicalBlock(scope: !249, file: !135, line: 189, column: 2)
!261 = !{!262, !266, i64 16}
!262 = !{!"lzma_next_coder_s", !263, i64 0, !266, i64 8, !266, i64 16, !263, i64 24, !263, i64 32, !263, i64 40, !263, i64 48, !263, i64 56}
!263 = !{!"any pointer", !264, i64 0}
!264 = !{!"omnipotent char", !265, i64 0}
!265 = !{!"Simple C/C++ TBAA"}
!266 = !{!"long", !264, i64 0}
!267 = !DILocation(line: 189, column: 2, scope: !260)
!268 = !DILocation(line: 191, column: 8, scope: !269)
!269 = distinct !DILexicalBlock(scope: !249, file: !135, line: 191, column: 6)
!270 = !DILocation(line: 191, column: 6, scope: !249)
!271 = !DILocation(line: 194, column: 12, scope: !272)
!272 = distinct !DILexicalBlock(scope: !249, file: !135, line: 194, column: 6)
!273 = !{!262, !263, i64 0}
!274 = !DILocation(line: 194, column: 18, scope: !272)
!275 = !DILocation(line: 194, column: 6, scope: !249)
!276 = !DILocation(line: 195, column: 17, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !135, line: 194, column: 27)
!278 = !DILocation(line: 195, column: 15, scope: !277)
!279 = !DILocation(line: 196, column: 19, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !135, line: 196, column: 7)
!281 = !DILocation(line: 196, column: 7, scope: !277)
!282 = !DILocation(line: 199, column: 9, scope: !277)
!283 = !DILocation(line: 199, column: 14, scope: !277)
!284 = !{!262, !263, i64 24}
!285 = !DILocation(line: 200, column: 9, scope: !277)
!286 = !DILocation(line: 200, column: 13, scope: !277)
!287 = !{!262, !263, i64 32}
!288 = !DILocation(line: 201, column: 2, scope: !277)
!289 = !DILocation(line: 203, column: 28, scope: !249)
!290 = !DILocalVariable(name: "pcoder", arg: 1, scope: !291, file: !135, line: 171, type: !41)
!291 = distinct !DISubprogram(name: "index_encoder_reset", scope: !135, file: !135, line: 171, type: !292, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !41, !140}
!294 = !{!290, !295, !296}
!295 = !DILocalVariable(name: "i", arg: 2, scope: !291, file: !135, line: 171, type: !140)
!296 = !DILocalVariable(name: "coder", scope: !291, file: !135, line: 173, type: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!298 = !DILocation(line: 0, scope: !291, inlinedAt: !299)
!299 = distinct !DILocation(line: 203, column: 2, scope: !249)
!300 = !DILocation(line: 174, column: 31, scope: !291, inlinedAt: !299)
!301 = !DILocation(line: 174, column: 2, scope: !291, inlinedAt: !299)
!302 = !DILocation(line: 176, column: 18, scope: !291, inlinedAt: !299)
!303 = !{!304, !264, i64 0}
!304 = !{!"lzma_coder_s", !264, i64 0, !263, i64 8, !305, i64 16, !266, i64 320, !308, i64 328}
!305 = !{!"", !306, i64 0, !307, i64 120, !264, i64 256}
!306 = !{!"", !263, i64 0, !263, i64 8, !263, i64 16, !263, i64 24, !266, i64 32, !266, i64 40, !266, i64 48, !266, i64 56, !266, i64 64, !266, i64 72, !266, i64 80, !266, i64 88, !266, i64 96, !266, i64 104, !266, i64 112}
!307 = !{!"", !266, i64 0, !266, i64 8, !266, i64 16, !266, i64 24, !266, i64 32, !266, i64 40, !266, i64 48, !266, i64 56, !266, i64 64, !266, i64 72, !266, i64 80, !266, i64 88, !266, i64 96, !263, i64 104, !263, i64 112, !263, i64 120, !263, i64 128}
!308 = !{!"int", !264, i64 0}
!309 = !DILocation(line: 177, column: 9, scope: !291, inlinedAt: !299)
!310 = !DILocation(line: 177, column: 15, scope: !291, inlinedAt: !299)
!311 = !{!304, !263, i64 8}
!312 = !DILocation(line: 178, column: 9, scope: !291, inlinedAt: !299)
!313 = !DILocation(line: 178, column: 13, scope: !291, inlinedAt: !299)
!314 = !{!304, !266, i64 320}
!315 = !DILocation(line: 179, column: 9, scope: !291, inlinedAt: !299)
!316 = !DILocation(line: 179, column: 15, scope: !291, inlinedAt: !299)
!317 = !{!304, !308, i64 328}
!318 = !DILocation(line: 205, column: 2, scope: !249)
!319 = !DILocation(line: 206, column: 1, scope: !249)
!320 = !DISubprogram(name: "lzma_next_end", scope: !33, file: !33, line: 237, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !252, !60}
!323 = !{}
!324 = !DISubprogram(name: "lzma_alloc", scope: !33, file: !33, line: 211, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!325 = !DISubroutineType(types: !326)
!326 = !{!68, !69, !60}
!327 = distinct !DISubprogram(name: "index_encode", scope: !135, file: !135, line: 44, type: !57, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !341, !342, !346, !348}
!329 = !DILocalVariable(name: "pcoder", arg: 1, scope: !327, file: !135, line: 44, type: !41)
!330 = !DILocalVariable(name: "allocator", arg: 2, scope: !327, file: !135, line: 45, type: !60)
!331 = !DILocalVariable(name: "in", arg: 3, scope: !327, file: !135, line: 46, type: !76)
!332 = !DILocalVariable(name: "in_pos", arg: 4, scope: !327, file: !135, line: 47, type: !82)
!333 = !DILocalVariable(name: "in_size", arg: 5, scope: !327, file: !135, line: 48, type: !69)
!334 = !DILocalVariable(name: "out", arg: 6, scope: !327, file: !135, line: 49, type: !84)
!335 = !DILocalVariable(name: "out_pos", arg: 7, scope: !327, file: !135, line: 49, type: !82)
!336 = !DILocalVariable(name: "out_size", arg: 8, scope: !327, file: !135, line: 50, type: !69)
!337 = !DILocalVariable(name: "action", arg: 9, scope: !327, file: !135, line: 51, type: !86)
!338 = !DILocalVariable(name: "coder", scope: !327, file: !135, line: 53, type: !297)
!339 = !DILocalVariable(name: "out_start", scope: !327, file: !135, line: 56, type: !340)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!341 = !DILocalVariable(name: "ret", scope: !327, file: !135, line: 62, type: !59)
!342 = !DILocalVariable(name: "count", scope: !343, file: !135, line: 73, type: !345)
!343 = distinct !DILexicalBlock(scope: !344, file: !135, line: 72, column: 18)
!344 = distinct !DILexicalBlock(scope: !327, file: !135, line: 65, column: 27)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!346 = !DILocalVariable(name: "size", scope: !347, file: !135, line: 101, type: !345)
!347 = distinct !DILexicalBlock(scope: !344, file: !135, line: 100, column: 25)
!348 = !DILabel(scope: !327, name: "out", file: !135, line: 153)
!349 = !DILocation(line: 0, scope: !327)
!350 = !DILocation(line: 56, column: 27, scope: !327)
!351 = !{!266, !266, i64 0}
!352 = !DILocation(line: 64, column: 18, scope: !327)
!353 = !DILocation(line: 64, column: 2, scope: !327)
!354 = !DILocation(line: 65, column: 17, scope: !327)
!355 = !DILocation(line: 65, column: 2, scope: !327)
!356 = !DILocation(line: 67, column: 3, scope: !344)
!357 = !DILocation(line: 67, column: 17, scope: !344)
!358 = !{!264, !264, i64 0}
!359 = !DILocation(line: 68, column: 3, scope: !344)
!360 = !DILocation(line: 69, column: 19, scope: !344)
!361 = !DILocation(line: 70, column: 3, scope: !344)
!362 = !DILocation(line: 73, column: 56, scope: !343)
!363 = !DILocation(line: 73, column: 26, scope: !343)
!364 = !DILocation(line: 0, scope: !343)
!365 = !DILocation(line: 74, column: 9, scope: !343)
!366 = !DILocation(line: 76, column: 11, scope: !367)
!367 = distinct !DILexicalBlock(scope: !343, file: !135, line: 76, column: 7)
!368 = !DILocation(line: 76, column: 7, scope: !343)
!369 = !DILocation(line: 80, column: 14, scope: !343)
!370 = !DILocation(line: 81, column: 19, scope: !343)
!371 = !DILocation(line: 86, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !344, file: !135, line: 86, column: 7)
!373 = !DILocation(line: 86, column: 7, scope: !344)
!374 = !DILocation(line: 89, column: 48, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !135, line: 87, column: 43)
!376 = !DILocation(line: 89, column: 17, scope: !375)
!377 = !DILocation(line: 89, column: 15, scope: !375)
!378 = !DILocation(line: 91, column: 20, scope: !375)
!379 = !DILocation(line: 92, column: 4, scope: !375)
!380 = !DILocation(line: 95, column: 19, scope: !344)
!381 = !DILocation(line: 101, column: 25, scope: !347)
!382 = !DILocation(line: 0, scope: !347)
!383 = !DILocation(line: 105, column: 9, scope: !347)
!384 = !DILocation(line: 107, column: 11, scope: !385)
!385 = distinct !DILexicalBlock(scope: !347, file: !135, line: 107, column: 7)
!386 = !DILocation(line: 107, column: 7, scope: !347)
!387 = !DILocation(line: 111, column: 14, scope: !347)
!388 = !DILocation(line: 114, column: 3, scope: !347)
!389 = !DILocation(line: 119, column: 14, scope: !390)
!390 = distinct !DILexicalBlock(scope: !344, file: !135, line: 119, column: 7)
!391 = !DILocation(line: 119, column: 18, scope: !390)
!392 = !DILocation(line: 119, column: 7, scope: !344)
!393 = !DILocation(line: 120, column: 4, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !135, line: 119, column: 23)
!395 = !DILocation(line: 121, column: 18, scope: !394)
!396 = !DILocation(line: 121, column: 4, scope: !394)
!397 = !DILocation(line: 121, column: 22, scope: !394)
!398 = !DILocation(line: 122, column: 4, scope: !394)
!399 = !DILocation(line: 126, column: 33, scope: !344)
!400 = !DILocation(line: 127, column: 14, scope: !344)
!401 = !DILocation(line: 127, column: 34, scope: !344)
!402 = !DILocation(line: 126, column: 18, scope: !344)
!403 = !DILocation(line: 126, column: 16, scope: !344)
!404 = !DILocation(line: 129, column: 19, scope: !344)
!405 = !DILocation(line: 129, column: 3, scope: !344)
!406 = !DILocation(line: 140, column: 28, scope: !407)
!407 = distinct !DILexicalBlock(scope: !344, file: !135, line: 136, column: 6)
!408 = !DILocation(line: 136, column: 3, scope: !344)
!409 = !DILocation(line: 137, column: 17, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !135, line: 137, column: 8)
!411 = !DILocation(line: 137, column: 8, scope: !407)
!412 = !DILocation(line: 140, column: 45, scope: !407)
!413 = !DILocation(line: 140, column: 34, scope: !407)
!414 = !DILocation(line: 140, column: 20, scope: !407)
!415 = !DILocation(line: 140, column: 4, scope: !407)
!416 = !DILocation(line: 140, column: 18, scope: !407)
!417 = !DILocation(line: 142, column: 4, scope: !407)
!418 = !DILocation(line: 144, column: 12, scope: !344)
!419 = !DILocation(line: 144, column: 25, scope: !344)
!420 = !DILocation(line: 144, column: 3, scope: !407)
!421 = distinct !{!421, !408, !422, !423, !424}
!422 = !DILocation(line: 144, column: 28, scope: !344)
!423 = !{!"llvm.loop.mustprogress"}
!424 = !{!"llvm.loop.unroll.disable"}
!425 = !DILocation(line: 64, column: 9, scope: !327)
!426 = distinct !{!426, !353, !427, !423, !424}
!427 = !DILocation(line: 151, column: 2, scope: !327)
!428 = !DILocation(line: 156, column: 4, scope: !327)
!429 = !DILocation(line: 155, column: 32, scope: !327)
!430 = !DILocation(line: 153, column: 1, scope: !327)
!431 = !DILocation(line: 156, column: 13, scope: !327)
!432 = !DILocation(line: 156, column: 33, scope: !327)
!433 = !DILocation(line: 155, column: 17, scope: !327)
!434 = !DILocation(line: 155, column: 15, scope: !327)
!435 = !DILocation(line: 158, column: 2, scope: !327)
!436 = !DILocation(line: 159, column: 1, scope: !327)
!437 = distinct !DISubprogram(name: "index_encoder_end", scope: !135, file: !135, line: 163, type: !90, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !438)
!438 = !{!439, !440}
!439 = !DILocalVariable(name: "pcoder", arg: 1, scope: !437, file: !135, line: 163, type: !41)
!440 = !DILocalVariable(name: "allocator", arg: 2, scope: !437, file: !135, line: 163, type: !60)
!441 = !DILocation(line: 0, scope: !437)
!442 = !DILocation(line: 165, column: 2, scope: !437)
!443 = !DILocation(line: 166, column: 2, scope: !437)
!444 = distinct !DISubprogram(name: "lzma_index_encoder", scope: !135, file: !135, line: 210, type: !445, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !471)
!445 = !DISubroutineType(types: !446)
!446 = !{!59, !447, !140}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !449, file: !4, line: 454, baseType: !77, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !449, file: !4, line: 455, baseType: !69, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !449, file: !4, line: 456, baseType: !46, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !449, file: !4, line: 458, baseType: !85, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !449, file: !4, line: 459, baseType: !69, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !449, file: !4, line: 460, baseType: !46, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !449, file: !4, line: 468, baseType: !60, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !449, file: !4, line: 471, baseType: !459, size: 64, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !34)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !449, file: !4, line: 479, baseType: !68, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !449, file: !4, line: 480, baseType: !68, size: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !449, file: !4, line: 481, baseType: !68, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !449, file: !4, line: 482, baseType: !68, size: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !449, file: !4, line: 483, baseType: !46, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !449, file: !4, line: 484, baseType: !46, size: 64, offset: 832)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !449, file: !4, line: 485, baseType: !69, size: 64, offset: 896)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !449, file: !4, line: 486, baseType: !69, size: 64, offset: 960)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !449, file: !4, line: 487, baseType: !165, size: 32, offset: 1024)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !449, file: !4, line: 488, baseType: !165, size: 32, offset: 1056)
!471 = !{!472, !473, !474, !478}
!472 = !DILocalVariable(name: "strm", arg: 1, scope: !444, file: !135, line: 210, type: !447)
!473 = !DILocalVariable(name: "i", arg: 2, scope: !444, file: !135, line: 210, type: !140)
!474 = !DILocalVariable(name: "ret_", scope: !475, file: !135, line: 212, type: !477)
!475 = distinct !DILexicalBlock(scope: !476, file: !135, line: 212, column: 2)
!476 = distinct !DILexicalBlock(scope: !444, file: !135, line: 212, column: 2)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!478 = !DILocalVariable(name: "ret_", scope: !476, file: !135, line: 212, type: !477)
!479 = !DILocation(line: 0, scope: !444)
!480 = !DILocation(line: 212, column: 2, scope: !475)
!481 = !DILocation(line: 0, scope: !475)
!482 = !DILocation(line: 212, column: 2, scope: !483)
!483 = distinct !DILexicalBlock(scope: !475, file: !135, line: 212, column: 2)
!484 = !DILocation(line: 212, column: 2, scope: !476)
!485 = !{!486, !263, i64 56}
!486 = !{!"", !263, i64 0, !266, i64 8, !266, i64 16, !263, i64 24, !266, i64 32, !266, i64 40, !263, i64 48, !263, i64 56, !263, i64 64, !263, i64 72, !263, i64 80, !263, i64 88, !266, i64 96, !266, i64 104, !266, i64 112, !266, i64 120, !264, i64 128, !264, i64 132}
!487 = !{!486, !263, i64 48}
!488 = !DILocation(line: 0, scope: !249, inlinedAt: !489)
!489 = distinct !DILocation(line: 212, column: 2, scope: !476)
!490 = !DILocation(line: 189, column: 2, scope: !259, inlinedAt: !489)
!491 = !DILocation(line: 189, column: 2, scope: !260, inlinedAt: !489)
!492 = !DILocation(line: 191, column: 8, scope: !269, inlinedAt: !489)
!493 = !DILocation(line: 191, column: 6, scope: !249, inlinedAt: !489)
!494 = !DILocation(line: 194, column: 12, scope: !272, inlinedAt: !489)
!495 = !DILocation(line: 194, column: 18, scope: !272, inlinedAt: !489)
!496 = !DILocation(line: 194, column: 6, scope: !249, inlinedAt: !489)
!497 = !DILocation(line: 195, column: 17, scope: !277, inlinedAt: !489)
!498 = !DILocation(line: 195, column: 15, scope: !277, inlinedAt: !489)
!499 = !DILocation(line: 196, column: 19, scope: !280, inlinedAt: !489)
!500 = !DILocation(line: 196, column: 7, scope: !277, inlinedAt: !489)
!501 = !DILocation(line: 199, column: 9, scope: !277, inlinedAt: !489)
!502 = !DILocation(line: 199, column: 14, scope: !277, inlinedAt: !489)
!503 = !DILocation(line: 200, column: 9, scope: !277, inlinedAt: !489)
!504 = !DILocation(line: 200, column: 13, scope: !277, inlinedAt: !489)
!505 = !DILocation(line: 201, column: 2, scope: !277, inlinedAt: !489)
!506 = !DILocation(line: 0, scope: !476)
!507 = !DILocation(line: 212, column: 2, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !135, line: 212, column: 2)
!509 = distinct !DILexicalBlock(scope: !476, file: !135, line: 212, column: 2)
!510 = !DILocation(line: 203, column: 28, scope: !249, inlinedAt: !489)
!511 = !DILocation(line: 0, scope: !291, inlinedAt: !512)
!512 = distinct !DILocation(line: 203, column: 2, scope: !249, inlinedAt: !489)
!513 = !DILocation(line: 174, column: 31, scope: !291, inlinedAt: !512)
!514 = !DILocation(line: 174, column: 2, scope: !291, inlinedAt: !512)
!515 = !DILocation(line: 176, column: 18, scope: !291, inlinedAt: !512)
!516 = !DILocation(line: 177, column: 9, scope: !291, inlinedAt: !512)
!517 = !DILocation(line: 177, column: 15, scope: !291, inlinedAt: !512)
!518 = !DILocation(line: 178, column: 9, scope: !291, inlinedAt: !512)
!519 = !DILocation(line: 178, column: 13, scope: !291, inlinedAt: !512)
!520 = !DILocation(line: 179, column: 9, scope: !291, inlinedAt: !512)
!521 = !DILocation(line: 179, column: 15, scope: !291, inlinedAt: !512)
!522 = !DILocation(line: 214, column: 8, scope: !444)
!523 = !DILocation(line: 214, column: 18, scope: !444)
!524 = !DILocation(line: 214, column: 46, scope: !444)
!525 = !{!526, !526, i64 0}
!526 = !{!"_Bool", !264, i64 0}
!527 = !DILocation(line: 215, column: 2, scope: !444)
!528 = !DILocation(line: 215, column: 49, scope: !444)
!529 = !DILocation(line: 217, column: 2, scope: !444)
!530 = !DILocation(line: 218, column: 1, scope: !444)
!531 = !DISubprogram(name: "lzma_strm_init", scope: !33, file: !33, line: 220, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!532 = !DISubroutineType(types: !533)
!533 = !{!59, !447}
!534 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !447}
!537 = distinct !DISubprogram(name: "lzma_index_buffer_encode", scope: !135, file: !135, line: 222, type: !538, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!59, !140, !85, !83, !69}
!540 = !{!541, !542, !543, !544, !545, !546, !547}
!541 = !DILocalVariable(name: "i", arg: 1, scope: !537, file: !135, line: 222, type: !140)
!542 = !DILocalVariable(name: "out", arg: 2, scope: !537, file: !135, line: 223, type: !85)
!543 = !DILocalVariable(name: "out_pos", arg: 3, scope: !537, file: !135, line: 223, type: !83)
!544 = !DILocalVariable(name: "out_size", arg: 4, scope: !537, file: !135, line: 223, type: !69)
!545 = !DILocalVariable(name: "coder", scope: !537, file: !135, line: 235, type: !136)
!546 = !DILocalVariable(name: "out_start", scope: !537, file: !135, line: 240, type: !340)
!547 = !DILocalVariable(name: "ret", scope: !537, file: !135, line: 241, type: !59)
!548 = !DILocation(line: 0, scope: !537)
!549 = !DILocation(line: 226, column: 8, scope: !550)
!550 = distinct !DILexicalBlock(scope: !537, file: !135, line: 226, column: 6)
!551 = !DILocation(line: 226, column: 16, scope: !550)
!552 = !DILocation(line: 226, column: 53, scope: !550)
!553 = !DILocation(line: 226, column: 62, scope: !550)
!554 = !DILocation(line: 226, column: 6, scope: !537)
!555 = !DILocation(line: 230, column: 15, scope: !556)
!556 = distinct !DILexicalBlock(scope: !537, file: !135, line: 230, column: 6)
!557 = !DILocation(line: 230, column: 28, scope: !556)
!558 = !DILocation(line: 230, column: 26, scope: !556)
!559 = !DILocation(line: 230, column: 6, scope: !537)
!560 = !DILocation(line: 235, column: 2, scope: !537)
!561 = !DILocation(line: 235, column: 22, scope: !537)
!562 = !DILocation(line: 0, scope: !291, inlinedAt: !563)
!563 = distinct !DILocation(line: 236, column: 2, scope: !537)
!564 = !DILocation(line: 174, column: 31, scope: !291, inlinedAt: !563)
!565 = !DILocation(line: 174, column: 2, scope: !291, inlinedAt: !563)
!566 = !DILocation(line: 176, column: 18, scope: !291, inlinedAt: !563)
!567 = !DILocation(line: 177, column: 9, scope: !291, inlinedAt: !563)
!568 = !DILocation(line: 177, column: 15, scope: !291, inlinedAt: !563)
!569 = !DILocation(line: 178, column: 9, scope: !291, inlinedAt: !563)
!570 = !DILocation(line: 178, column: 13, scope: !291, inlinedAt: !563)
!571 = !DILocation(line: 179, column: 9, scope: !291, inlinedAt: !563)
!572 = !DILocation(line: 179, column: 15, scope: !291, inlinedAt: !563)
!573 = !DILocation(line: 240, column: 27, scope: !537)
!574 = !DILocation(line: 241, column: 17, scope: !537)
!575 = !DILocation(line: 244, column: 10, scope: !576)
!576 = distinct !DILexicalBlock(scope: !537, file: !135, line: 244, column: 6)
!577 = !DILocation(line: 244, column: 6, scope: !537)
!578 = !DILocation(line: 251, column: 12, scope: !579)
!579 = distinct !DILexicalBlock(scope: !576, file: !135, line: 246, column: 9)
!580 = !DILocation(line: 0, scope: !576)
!581 = !DILocation(line: 256, column: 1, scope: !537)
!582 = !DISubprogram(name: "lzma_index_size", scope: !143, file: !143, line: 424, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!583 = !DISubroutineType(types: !584)
!584 = !{!44, !140}
!585 = !DISubprogram(name: "lzma_index_block_count", scope: !143, file: !143, line: 415, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!586 = !DISubprogram(name: "lzma_vli_encode", scope: !45, file: !45, line: 115, type: !587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!587 = !DISubroutineType(types: !588)
!588 = !{!59, !44, !83, !85, !83, !69}
!589 = !DISubprogram(name: "lzma_index_iter_next", scope: !143, file: !143, line: 514, type: !590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!590 = !DISubroutineType(types: !591)
!591 = !{!170, !592, !593}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_iter_mode", file: !143, line: 268, baseType: !235)
!594 = !DISubprogram(name: "lzma_index_padding_size", scope: !595, file: !595, line: 28, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!595 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/index.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "8c1da33cfb6445c1ed40367774c91b69")
!596 = !DISubroutineType(types: !597)
!597 = !{!160, !140}
!598 = !DISubprogram(name: "lzma_crc32", scope: !26, file: !26, line: 119, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!599 = !DISubroutineType(types: !600)
!600 = !{!160, !77, !69, !160}
!601 = !DISubprogram(name: "lzma_free", scope: !33, file: !33, line: 215, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !68, !60}
!604 = !DISubprogram(name: "lzma_index_iter_init", scope: !143, file: !143, line: 487, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !592, !140}
