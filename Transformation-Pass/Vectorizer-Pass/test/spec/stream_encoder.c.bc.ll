; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/stream_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, i8, %struct.lzma_next_coder_s, %struct.lzma_block, [5 x %struct.lzma_filter], %struct.lzma_next_coder_s, ptr, i64, i64, [1024 x i8] }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

@stream_encode.convert = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 3, i32 3], align 16, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, i32 noundef %check) #0 !dbg !274 {
entry:
  %stream_flags = alloca %struct.lzma_stream_flags, align 8
  call void @llvm.dbg.value(metadata ptr %next, metadata !279, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !280, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata ptr %filters, metadata !281, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i32 %check, metadata !282, metadata !DIExpression()), !dbg !286
  %init = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 2, !dbg !287
  %0 = load i64, ptr %init, align 8, !dbg !287, !tbaa !290
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_stream_encoder_init to i64), !dbg !287
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !296

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5, !dbg !287
  br label %if.end, !dbg !287

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_stream_encoder_init to i64), ptr %init, align 8, !dbg !296, !tbaa !290
  %cmp2 = icmp eq ptr %filters, null, !dbg !297
  br i1 %cmp2, label %return, label %if.end4, !dbg !299

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %next, align 8, !dbg !300, !tbaa !302
  %cmp5 = icmp eq ptr %1, null, !dbg !303
  br i1 %cmp5, label %if.then6, label %if.end4.if.end30_crit_edge, !dbg !304

if.end4.if.end30_crit_edge:                       ; preds = %if.end4
  %index37.phi.trans.insert = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 6
  %.pre = load ptr, ptr %index37.phi.trans.insert, align 8, !dbg !305, !tbaa !306
  br label %if.end30, !dbg !304

if.then6:                                         ; preds = %if.end4
  %call = tail call ptr @lzma_alloc(i64 noundef 1472, ptr noundef %allocator) #5, !dbg !311
  store ptr %call, ptr %next, align 8, !dbg !313, !tbaa !302
  %cmp9 = icmp eq ptr %call, null, !dbg !314
  br i1 %cmp9, label %return, label %if.end11, !dbg !316

if.end11:                                         ; preds = %if.then6
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !317
  store ptr @stream_encode, ptr %code, align 8, !dbg !318, !tbaa !319
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !320
  store ptr @stream_encoder_end, ptr %end, align 8, !dbg !321, !tbaa !322
  %update = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 7, !dbg !323
  store ptr @stream_encoder_update, ptr %update, align 8, !dbg !324, !tbaa !325
  %filters13 = getelementptr inbounds %struct.lzma_coder_s, ptr %call, i64 0, i32 4, !dbg !326
  store i64 -1, ptr %filters13, align 8, !dbg !327, !tbaa !328
  %block_encoder = getelementptr inbounds %struct.lzma_coder_s, ptr %call, i64 0, i32 2, !dbg !330
  store ptr null, ptr %block_encoder, align 8, !dbg !331, !tbaa.struct !332
  %.compoundliteral.sroa.2.0.block_encoder.sroa_idx = getelementptr inbounds i8, ptr %block_encoder, i64 8, !dbg !331
  store i64 -1, ptr %.compoundliteral.sroa.2.0.block_encoder.sroa_idx, align 8, !dbg !331, !tbaa.struct !335
  %.compoundliteral.sroa.3.0.block_encoder.sroa_idx = getelementptr inbounds i8, ptr %block_encoder, i64 16, !dbg !331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.block_encoder.sroa_idx, i8 0, i64 48, i1 false), !dbg !331
  %2 = load ptr, ptr %next, align 8, !dbg !336, !tbaa !302
  %index_encoder = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 5, !dbg !337
  store ptr null, ptr %index_encoder, align 8, !dbg !338, !tbaa.struct !332
  %.compoundliteral22.sroa.2.0.index_encoder.sroa_idx = getelementptr inbounds i8, ptr %index_encoder, i64 8, !dbg !338
  store i64 -1, ptr %.compoundliteral22.sroa.2.0.index_encoder.sroa_idx, align 8, !dbg !338, !tbaa.struct !335
  %.compoundliteral22.sroa.3.0.index_encoder.sroa_idx = getelementptr inbounds i8, ptr %index_encoder, i64 16, !dbg !338
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral22.sroa.3.0.index_encoder.sroa_idx, i8 0, i64 48, i1 false), !dbg !338
  %3 = load ptr, ptr %next, align 8, !dbg !339, !tbaa !302
  %index = getelementptr inbounds %struct.lzma_coder_s, ptr %3, i64 0, i32 6, !dbg !340
  store ptr null, ptr %index, align 8, !dbg !341, !tbaa !306
  br label %if.end30, !dbg !342

if.end30:                                         ; preds = %if.end4.if.end30_crit_edge, %if.end11
  %4 = phi ptr [ null, %if.end11 ], [ %.pre, %if.end4.if.end30_crit_edge ], !dbg !305
  %5 = phi ptr [ %3, %if.end11 ], [ %1, %if.end4.if.end30_crit_edge ], !dbg !343
  store i32 0, ptr %5, align 8, !dbg !344, !tbaa !345
  %block_options = getelementptr inbounds %struct.lzma_coder_s, ptr %5, i64 0, i32 3, !dbg !346
  store i32 0, ptr %block_options, align 8, !dbg !347, !tbaa !348
  %check35 = getelementptr inbounds %struct.lzma_coder_s, ptr %5, i64 0, i32 3, i32 2, !dbg !349
  store i32 %check, ptr %check35, align 8, !dbg !350, !tbaa !351
  tail call void @lzma_index_end(ptr noundef %4, ptr noundef %allocator) #5, !dbg !352
  %call38 = tail call ptr @lzma_index_init(ptr noundef %allocator) #5, !dbg !353
  %6 = load ptr, ptr %next, align 8, !dbg !354, !tbaa !302
  %index40 = getelementptr inbounds %struct.lzma_coder_s, ptr %6, i64 0, i32 6, !dbg !355
  store ptr %call38, ptr %index40, align 8, !dbg !356, !tbaa !306
  %cmp43 = icmp eq ptr %call38, null, !dbg !357
  br i1 %cmp43, label %return, label %if.end45, !dbg !359

if.end45:                                         ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %stream_flags) #5, !dbg !360
  call void @llvm.dbg.declare(metadata ptr %stream_flags, metadata !283, metadata !DIExpression()), !dbg !361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags, i8 0, i64 56, i1 false), !dbg !361
  %check47 = getelementptr inbounds %struct.lzma_stream_flags, ptr %stream_flags, i64 0, i32 2, !dbg !362
  store i32 %check, ptr %check47, align 8, !dbg !362, !tbaa !363
  %buffer = getelementptr inbounds %struct.lzma_coder_s, ptr %6, i64 0, i32 9, !dbg !365
  %call50 = call i32 @lzma_stream_header_encode(ptr noundef nonnull %stream_flags, ptr noundef nonnull %buffer) #5, !dbg !365
  call void @llvm.dbg.value(metadata i32 %call50, metadata !284, metadata !DIExpression()), !dbg !366
  %cmp51.not = icmp eq i32 %call50, 0, !dbg !367
  br i1 %cmp51.not, label %do.end54, label %cleanup59

do.end54:                                         ; preds = %if.end45
  %7 = load ptr, ptr %next, align 8, !dbg !369, !tbaa !302
  %buffer_pos = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 7, !dbg !370
  store i64 0, ptr %buffer_pos, align 8, !dbg !371, !tbaa !372
  %buffer_size = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 8, !dbg !373
  store i64 12, ptr %buffer_size, align 8, !dbg !374, !tbaa !375
  %call58 = call i32 @stream_encoder_update(ptr noundef %7, ptr noundef %allocator, ptr noundef nonnull %filters, ptr noundef null), !dbg !376
  br label %cleanup59, !dbg !377

cleanup59:                                        ; preds = %if.end45, %do.end54
  %retval.1 = phi i32 [ %call58, %do.end54 ], [ %call50, %if.end45 ], !dbg !286
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %stream_flags) #5, !dbg !378
  br label %return

return:                                           ; preds = %if.end30, %if.then6, %if.end, %cleanup59
  %retval.2 = phi i32 [ %retval.1, %cleanup59 ], [ 11, %if.end ], [ 5, %if.then6 ], [ 5, %if.end30 ], !dbg !286
  ret i32 %retval.2, !dbg !378
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !379 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !383 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @stream_encode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !2 {
entry:
  %stream_flags = alloca %struct.lzma_stream_flags, align 8
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !214, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !215, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata ptr %in, metadata !216, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !217, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !218, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata ptr %out, metadata !219, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !220, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !221, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata i32 %action, metadata !222, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !223, metadata !DIExpression()), !dbg !386
  %0 = load i64, ptr %out_pos, align 8, !dbg !387, !tbaa !334
  %cmp180 = icmp ult i64 %0, %out_size, !dbg !388
  br i1 %cmp180, label %while.body.lr.ph, label %cleanup103, !dbg !389

while.body.lr.ph:                                 ; preds = %entry
  %index_encoder78 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5
  %code79 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, i32 3
  %backward_size = getelementptr inbounds %struct.lzma_stream_flags, ptr %stream_flags, i64 0, i32 1
  %index87 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6
  %check = getelementptr inbounds %struct.lzma_stream_flags, ptr %stream_flags, i64 0, i32 2
  %check90 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i32 2
  %buffer91 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9
  %buffer_size98 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 8
  %block_encoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %code = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 3
  %idxprom = zext i32 %action to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @stream_encode.convert, i64 0, i64 %idxprom
  %cmp52 = icmp eq i32 %action, 1
  %block_options56 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3
  %uncompressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i32 4
  %block_encoder_is_initialized = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1
  %compressed_size.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i32 3
  %header_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i32 1
  %cmp13.not = icmp eq i32 %action, 3
  %buffer_pos = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7
  %.pre = load i32, ptr %pcoder, align 8, !dbg !390, !tbaa !345
  br label %while.body, !dbg !389

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %1 = phi i32 [ %.pre, %while.body.lr.ph ], [ %19, %sw.epilog ], !dbg !390
  switch i32 %1, label %cleanup103 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 5, label %sw.bb
    i32 1, label %sw.bb10
    i32 3, label %sw.bb46
    i32 4, label %sw.bb76
  ], !dbg !391

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  %2 = load i64, ptr %buffer_size98, align 8, !dbg !392, !tbaa !375
  %call = call i64 @lzma_bufcpy(ptr noundef nonnull %buffer91, ptr noundef nonnull %buffer_pos, i64 noundef %2, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #5, !dbg !393
  %3 = load i64, ptr %buffer_pos, align 8, !dbg !394, !tbaa !372
  %4 = load i64, ptr %buffer_size98, align 8, !dbg !396, !tbaa !375
  %cmp3 = icmp ult i64 %3, %4, !dbg !397
  br i1 %cmp3, label %cleanup103, label %if.end, !dbg !398

if.end:                                           ; preds = %sw.bb
  %5 = load i32, ptr %pcoder, align 8, !dbg !399, !tbaa !345
  %cmp5 = icmp eq i32 %5, 5, !dbg !401
  br i1 %cmp5, label %cleanup103, label %if.end7, !dbg !402

if.end7:                                          ; preds = %if.end
  store i64 0, ptr %buffer_pos, align 8, !dbg !403, !tbaa !372
  %inc = add i32 %5, 1, !dbg !404
  store i32 %inc, ptr %pcoder, align 8, !dbg !404, !tbaa !345
  br label %sw.epilog, !dbg !405

sw.bb10:                                          ; preds = %while.body
  %6 = load i64, ptr %in_pos, align 8, !dbg !406, !tbaa !334
  %cmp11 = icmp eq i64 %6, %in_size, !dbg !407
  br i1 %cmp11, label %if.then12, label %if.end22, !dbg !408

if.then12:                                        ; preds = %sw.bb10
  br i1 %cmp13.not, label %do.body, label %if.then14, !dbg !409

if.then14:                                        ; preds = %if.then12
  %cmp15 = icmp ne i32 %action, 0, !dbg !410
  %cond = zext i1 %cmp15 to i32, !dbg !412
  br label %cleanup103, !dbg !413

do.body:                                          ; preds = %if.then12
  %7 = load ptr, ptr %index87, align 8, !dbg !414, !tbaa !306
  %call17 = call i32 @lzma_index_encoder_init(ptr noundef nonnull %index_encoder78, ptr noundef %allocator, ptr noundef %7) #5, !dbg !414
  call void @llvm.dbg.value(metadata i32 %call17, metadata !224, metadata !DIExpression()), !dbg !415
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !416
  br i1 %cmp18.not, label %do.end, label %cleanup103

do.end:                                           ; preds = %do.body
  store i32 4, ptr %pcoder, align 8, !dbg !418, !tbaa !345
  br label %sw.epilog, !dbg !419

if.end22:                                         ; preds = %sw.bb10
  %8 = load i8, ptr %block_encoder_is_initialized, align 4, !dbg !420, !tbaa !421, !range !422
  %tobool.not = icmp eq i8 %8, 0, !dbg !420
  br i1 %tobool.not, label %do.body24, label %if.end35, !dbg !423

do.body24:                                        ; preds = %if.end22
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !424, metadata !DIExpression()) #5, !dbg !433
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !429, metadata !DIExpression()) #5, !dbg !433
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !430, metadata !DIExpression()) #5, !dbg !433
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %compressed_size.i, i8 -1, i64 16, i1 false) #5, !dbg !435
  %call.i = call i32 @lzma_block_header_size(ptr noundef nonnull %block_options56) #5, !dbg !436
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !431, metadata !DIExpression()) #5, !dbg !437
  %cmp.not.i = icmp eq i32 %call.i, 0, !dbg !438
  br i1 %cmp.not.i, label %block_encoder_init.exit, label %cleanup103

block_encoder_init.exit:                          ; preds = %do.body24
  %call4.i = call i32 @lzma_block_encoder_init(ptr noundef nonnull %block_encoder, ptr noundef %allocator, ptr noundef nonnull %block_options56) #5, !dbg !440
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !231, metadata !DIExpression()), !dbg !441
  %cmp27.not = icmp eq i32 %call4.i, 0, !dbg !442
  br i1 %cmp27.not, label %if.end35, label %cleanup103

if.end35:                                         ; preds = %block_encoder_init.exit, %if.end22
  store i8 0, ptr %block_encoder_is_initialized, align 4, !dbg !444, !tbaa !421
  %call39 = call i32 @lzma_block_header_encode(ptr noundef nonnull %block_options56, ptr noundef nonnull %buffer91) #5, !dbg !445
  %cmp40.not = icmp eq i32 %call39, 0, !dbg !447
  br i1 %cmp40.not, label %if.end42, label %cleanup103, !dbg !448

if.end42:                                         ; preds = %if.end35
  %9 = load i32, ptr %header_size, align 4, !dbg !449, !tbaa !450
  %conv = zext i32 %9 to i64, !dbg !451
  store i64 %conv, ptr %buffer_size98, align 8, !dbg !452, !tbaa !375
  store i32 2, ptr %pcoder, align 8, !dbg !453, !tbaa !345
  br label %sw.epilog, !dbg !454

sw.bb46:                                          ; preds = %while.body
  %10 = load ptr, ptr %code, align 8, !dbg !455, !tbaa !456
  %11 = load ptr, ptr %block_encoder, align 8, !dbg !457, !tbaa !458
  %12 = load i32, ptr %arrayidx, align 4, !dbg !459, !tbaa !460
  %call49 = call i32 %10(ptr noundef %11, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %12) #5, !dbg !461
  call void @llvm.dbg.value(metadata i32 %call49, metadata !234, metadata !DIExpression()), !dbg !462
  %cmp50 = icmp ne i32 %call49, 1, !dbg !463
  %or.cond = or i1 %cmp52, %cmp50, !dbg !465
  br i1 %or.cond, label %cleanup103, label %if.end55, !dbg !465

if.end55:                                         ; preds = %sw.bb46
  %call57 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %block_options56) #5, !dbg !466
  call void @llvm.dbg.value(metadata i64 %call57, metadata !236, metadata !DIExpression()), !dbg !462
  %13 = load ptr, ptr %index87, align 8, !dbg !467, !tbaa !306
  %14 = load i64, ptr %uncompressed_size, align 8, !dbg !467, !tbaa !468
  %call62 = call i32 @lzma_index_append(ptr noundef %13, ptr noundef %allocator, i64 noundef %call57, i64 noundef %14) #5, !dbg !467
  call void @llvm.dbg.value(metadata i32 %call62, metadata !238, metadata !DIExpression()), !dbg !469
  %cmp63.not = icmp eq i32 %call62, 0, !dbg !470
  br i1 %cmp63.not, label %cleanup74, label %cleanup103

cleanup74:                                        ; preds = %if.end55
  store i32 1, ptr %pcoder, align 8, !dbg !472, !tbaa !345
  br label %sw.epilog

sw.bb76:                                          ; preds = %while.body
  %15 = load ptr, ptr %code79, align 8, !dbg !473, !tbaa !474
  %16 = load ptr, ptr %index_encoder78, align 8, !dbg !475, !tbaa !476
  %call82 = call i32 %15(ptr noundef %16, ptr noundef %allocator, ptr noundef null, ptr noundef null, i64 noundef 0, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 0) #5, !dbg !477
  call void @llvm.dbg.value(metadata i32 %call82, metadata !240, metadata !DIExpression()), !dbg !478
  %cmp83.not = icmp eq i32 %call82, 1, !dbg !479
  br i1 %cmp83.not, label %if.end86, label %cleanup103, !dbg !481

if.end86:                                         ; preds = %sw.bb76
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %stream_flags) #5, !dbg !482
  call void @llvm.dbg.declare(metadata ptr %stream_flags, metadata !242, metadata !DIExpression()), !dbg !483
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags, i8 0, i64 56, i1 false), !dbg !483
  %17 = load ptr, ptr %index87, align 8, !dbg !484, !tbaa !306
  %call88 = call i64 @lzma_index_size(ptr noundef %17) #5, !dbg !485
  store i64 %call88, ptr %backward_size, align 8, !dbg !486, !tbaa !487
  %18 = load i32, ptr %check90, align 8, !dbg !488, !tbaa !351
  store i32 %18, ptr %check, align 8, !dbg !486, !tbaa !363
  %call93 = call i32 @lzma_stream_footer_encode(ptr noundef nonnull %stream_flags, ptr noundef nonnull %buffer91) #5, !dbg !489
  %cmp94.not = icmp eq i32 %call93, 0, !dbg !491
  br i1 %cmp94.not, label %cleanup101.thread176, label %cleanup101, !dbg !492

cleanup101.thread176:                             ; preds = %if.end86
  store i64 12, ptr %buffer_size98, align 8, !dbg !493, !tbaa !375
  store i32 5, ptr %pcoder, align 8, !dbg !494, !tbaa !345
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %stream_flags) #5, !dbg !495
  br label %sw.epilog

cleanup101:                                       ; preds = %if.end86
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %stream_flags) #5, !dbg !495
  br label %cleanup103

sw.epilog:                                        ; preds = %cleanup101.thread176, %cleanup74, %if.end42, %do.end, %if.end7
  %19 = phi i32 [ 5, %cleanup101.thread176 ], [ 1, %cleanup74 ], [ 2, %if.end42 ], [ 4, %do.end ], [ %inc, %if.end7 ]
  %20 = load i64, ptr %out_pos, align 8, !dbg !387, !tbaa !334
  %cmp = icmp ult i64 %20, %out_size, !dbg !388
  br i1 %cmp, label %while.body, label %cleanup103, !dbg !389, !llvm.loop !496

cleanup103:                                       ; preds = %block_encoder_init.exit, %do.body, %sw.bb, %if.end, %if.end35, %while.body, %sw.epilog, %sw.bb46, %if.end55, %sw.bb76, %do.body24, %entry, %cleanup101, %if.then14
  %retval.9 = phi i32 [ 11, %cleanup101 ], [ %cond, %if.then14 ], [ 0, %entry ], [ %call4.i, %block_encoder_init.exit ], [ %call17, %do.body ], [ 0, %sw.bb ], [ 1, %if.end ], [ 11, %if.end35 ], [ 11, %while.body ], [ 0, %sw.epilog ], [ %call49, %sw.bb46 ], [ %call62, %if.end55 ], [ %call82, %sw.bb76 ], [ %call.i, %do.body24 ], !dbg !386
  ret i32 %retval.9, !dbg !500
}

; Function Attrs: nounwind uwtable
define internal void @stream_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !501 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !503, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !504, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !505, metadata !DIExpression()), !dbg !508
  %block_encoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !509
  tail call void @lzma_next_end(ptr noundef nonnull %block_encoder, ptr noundef %allocator) #5, !dbg !510
  %index_encoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, !dbg !511
  tail call void @lzma_next_end(ptr noundef nonnull %index_encoder, ptr noundef %allocator) #5, !dbg !512
  %index = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6, !dbg !513
  %0 = load ptr, ptr %index, align 8, !dbg !513, !tbaa !306
  tail call void @lzma_index_end(ptr noundef %0, ptr noundef %allocator) #5, !dbg !514
  call void @llvm.dbg.value(metadata i64 0, metadata !506, metadata !DIExpression()), !dbg !515
  %arrayidx14 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, i64 0, !dbg !516
  %1 = load i64, ptr %arrayidx14, align 8, !dbg !518, !tbaa !328
  %cmp.not15 = icmp eq i64 %1, -1, !dbg !519
  br i1 %cmp.not15, label %for.cond.cleanup, label %for.body, !dbg !520

for.cond.cleanup:                                 ; preds = %for.body, %entry
  tail call void @lzma_free(ptr noundef nonnull %pcoder, ptr noundef %allocator) #5, !dbg !521
  ret void, !dbg !522

for.body:                                         ; preds = %entry, %for.body
  %i.016 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.016, metadata !506, metadata !DIExpression()), !dbg !515
  %options = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, i64 %i.016, i32 1, !dbg !523
  %2 = load ptr, ptr %options, align 8, !dbg !523, !tbaa !524
  tail call void @lzma_free(ptr noundef %2, ptr noundef %allocator) #5, !dbg !525
  %inc = add i64 %i.016, 1, !dbg !526
  call void @llvm.dbg.value(metadata i64 %inc, metadata !506, metadata !DIExpression()), !dbg !515
  %arrayidx = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, i64 %inc, !dbg !516
  %3 = load i64, ptr %arrayidx, align 8, !dbg !518, !tbaa !328
  %cmp.not = icmp eq i64 %3, -1, !dbg !519
  br i1 %cmp.not, label %for.cond.cleanup, label %for.body, !dbg !520, !llvm.loop !527
}

; Function Attrs: nounwind uwtable
define internal i32 @stream_encoder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr noundef %filters, ptr noundef %reversed_filters) #0 !dbg !529 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !531, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !532, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata ptr %filters, metadata !533, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata ptr %reversed_filters, metadata !534, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !535, metadata !DIExpression()), !dbg !545
  %0 = load i32, ptr %pcoder, align 8, !dbg !546, !tbaa !345
  %cmp = icmp ult i32 %0, 2, !dbg !547
  br i1 %cmp, label %if.then, label %if.else, !dbg !548

if.then:                                          ; preds = %entry
  %block_encoder_is_initialized = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !549
  store i8 0, ptr %block_encoder_is_initialized, align 4, !dbg !550, !tbaa !421
  %filters1 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i32 5, !dbg !551
  store ptr %filters, ptr %filters1, align 8, !dbg !552, !tbaa !553
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !424, metadata !DIExpression()) #5, !dbg !554
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !429, metadata !DIExpression()) #5, !dbg !554
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !430, metadata !DIExpression()) #5, !dbg !554
  %block_options.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !556
  %compressed_size.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i32 3, !dbg !557
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %compressed_size.i, i8 -1, i64 16, i1 false) #5, !dbg !558
  %call.i = tail call i32 @lzma_block_header_size(ptr noundef nonnull %block_options.i) #5, !dbg !559
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !431, metadata !DIExpression()) #5, !dbg !560
  %cmp.not.i = icmp eq i32 %call.i, 0, !dbg !561
  br i1 %cmp.not.i, label %block_encoder_init.exit, label %block_encoder_init.exit.thread

block_encoder_init.exit.thread:                   ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !536, metadata !DIExpression()), !dbg !562
  %filters256 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !563
  store ptr %filters256, ptr %filters1, align 8, !dbg !564, !tbaa !553
  br label %cleanup31, !dbg !565

block_encoder_init.exit:                          ; preds = %if.then
  %block_encoder.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !566
  %call4.i = tail call i32 @lzma_block_encoder_init(ptr noundef nonnull %block_encoder.i, ptr noundef %allocator, ptr noundef nonnull %block_options.i) #5, !dbg !567
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !536, metadata !DIExpression()), !dbg !562
  %filters2 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !563
  store ptr %filters2, ptr %filters1, align 8, !dbg !564, !tbaa !553
  %cmp5.not = icmp eq i32 %call4.i, 0, !dbg !568
  br i1 %cmp5.not, label %if.end, label %cleanup31, !dbg !565

if.end:                                           ; preds = %block_encoder_init.exit
  store i8 1, ptr %block_encoder_is_initialized, align 4, !dbg !570, !tbaa !421
  br label %if.end22

if.else:                                          ; preds = %entry
  %cmp9 = icmp ult i32 %0, 4, !dbg !571
  br i1 %cmp9, label %do.body, label %cleanup31, !dbg !572

do.body:                                          ; preds = %if.else
  %block_encoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !573
  %update = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 7, !dbg !573
  %1 = load ptr, ptr %update, align 8, !dbg !573, !tbaa !574
  %2 = load ptr, ptr %block_encoder, align 8, !dbg !573, !tbaa !458
  %call13 = tail call i32 %1(ptr noundef %2, ptr noundef %allocator, ptr noundef %filters, ptr noundef %reversed_filters) #5, !dbg !573
  call void @llvm.dbg.value(metadata i32 %call13, metadata !539, metadata !DIExpression()), !dbg !575
  %cmp14.not = icmp eq i32 %call13, 0, !dbg !576
  br i1 %cmp14.not, label %if.end22, label %cleanup31

if.end22:                                         ; preds = %if.end, %do.body
  call void @llvm.dbg.value(metadata i64 0, metadata !543, metadata !DIExpression()), !dbg !578
  %arrayidx58 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, i64 0, !dbg !579
  %3 = load i64, ptr %arrayidx58, align 8, !dbg !581, !tbaa !328
  %cmp24.not59 = icmp eq i64 %3, -1, !dbg !582
  br i1 %cmp24.not59, label %for.cond.cleanup, label %for.body, !dbg !583

for.cond.cleanup:                                 ; preds = %for.body, %if.end22
  %filters23 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !584
  %call30 = tail call i32 @lzma_filters_copy(ptr noundef %filters, ptr noundef nonnull %filters23, ptr noundef %allocator) #5, !dbg !585
  br label %cleanup31, !dbg !586

for.body:                                         ; preds = %if.end22, %for.body
  %i.060 = phi i64 [ %inc, %for.body ], [ 0, %if.end22 ]
  call void @llvm.dbg.value(metadata i64 %i.060, metadata !543, metadata !DIExpression()), !dbg !578
  %options = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, i64 %i.060, i32 1, !dbg !587
  %4 = load ptr, ptr %options, align 8, !dbg !587, !tbaa !524
  tail call void @lzma_free(ptr noundef %4, ptr noundef %allocator) #5, !dbg !588
  %inc = add i64 %i.060, 1, !dbg !589
  call void @llvm.dbg.value(metadata i64 %inc, metadata !543, metadata !DIExpression()), !dbg !578
  %arrayidx = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, i64 %inc, !dbg !579
  %5 = load i64, ptr %arrayidx, align 8, !dbg !581, !tbaa !328
  %cmp24.not = icmp eq i64 %5, -1, !dbg !582
  br i1 %cmp24.not, label %for.cond.cleanup, label %for.body, !dbg !583, !llvm.loop !590

cleanup31:                                        ; preds = %block_encoder_init.exit.thread, %block_encoder_init.exit, %if.else, %do.body, %for.cond.cleanup
  %retval.2 = phi i32 [ %call30, %for.cond.cleanup ], [ %call13, %do.body ], [ 11, %if.else ], [ %call4.i, %block_encoder_init.exit ], [ %call.i, %block_encoder_init.exit.thread ], !dbg !545
  ret i32 %retval.2, !dbg !592
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !593 void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !596 ptr @lzma_index_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare !dbg !599 i32 @lzma_stream_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_encoder(ptr noundef %strm, ptr noundef %filters, i32 noundef %check) local_unnamed_addr #0 !dbg !603 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !631, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata ptr %filters, metadata !632, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i32 %check, metadata !633, metadata !DIExpression()), !dbg !638
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #5, !dbg !639
  call void @llvm.dbg.value(metadata i32 %call, metadata !634, metadata !DIExpression()), !dbg !640
  %cmp.not = icmp eq i32 %call, 0, !dbg !641
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !643
  %0 = load ptr, ptr %internal, align 8, !dbg !643, !tbaa !644
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !643
  %1 = load ptr, ptr %allocator, align 8, !dbg !643, !tbaa !646
  %call3 = tail call i32 @lzma_stream_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %filters, i32 noundef %check), !dbg !643
  call void @llvm.dbg.value(metadata i32 %call3, metadata !637, metadata !DIExpression()), !dbg !647
  %cmp4.not = icmp eq i32 %call3, 0, !dbg !648
  br i1 %cmp4.not, label %do.end10, label %cleanup7, !dbg !643

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #5, !dbg !650
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !652, !tbaa !644
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, !dbg !653
  store i32 16843009, ptr %supported_actions, align 8, !dbg !654
  br label %return, !dbg !655

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !638
  ret i32 %retval.2, !dbg !656
}

declare !dbg !657 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

declare !dbg !660 void @lzma_end(ptr noundef) local_unnamed_addr #2

declare !dbg !663 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !666 i32 @lzma_index_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !672 i32 @lzma_block_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !677 i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare !dbg !680 i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !683 i64 @lzma_index_size(ptr noundef) local_unnamed_addr #2

declare !dbg !686 i32 @lzma_stream_footer_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !687 i32 @lzma_block_header_size(ptr noundef) local_unnamed_addr #2

declare !dbg !691 i32 @lzma_block_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !695 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !698 i32 @lzma_filters_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!62}
!llvm.module.flags = !{!267, !268, !269, !270, !271, !272}
!llvm.ident = !{!273}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "convert", scope: !2, file: !3, line: 152, type: !265, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "stream_encode", scope: !3, file: !3, line: 83, type: !4, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !213)
!3 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/stream_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "287ced045cc767023270c37a9a55e979")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !23, !26, !43, !51, !35, !53, !51, !35, !55}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !7, line: 237, baseType: !8)
!7 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 57, baseType: !9, size: 32, elements: !10)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!11 = !DIEnumerator(name: "LZMA_OK", value: 0)
!12 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!13 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!14 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!15 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!16 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!17 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!18 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!19 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!20 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!21 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!22 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !25, line: 78, baseType: null)
!25 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !7, line: 403, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 341, size: 192, elements: !29)
!29 = !{!30, !38, !42}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !28, file: !7, line: 376, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !34, !35, !35}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !28, file: !7, line: 390, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !34, !34}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !28, file: !7, line: 401, baseType: !34, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 24, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !49, line: 38, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !7, line: 322, baseType: !56)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 250, baseType: !9, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!59 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!60 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!61 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !210, globals: !212, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "287ced045cc767023270c37a9a55e979")
!64 = !{!8, !56, !65, !72, !154, !192}
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 27, baseType: !9, size: 32, elements: !67)
!66 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!69 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!70 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!71 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !73, file: !3, line: 19, baseType: !9, size: 32, elements: !185)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !3, line: 18, size: 11776, elements: !74)
!74 = !{!75, !76, !78, !123, !169, !173, !174, !179, !180, !181}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !73, file: !3, line: 26, baseType: !72, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "block_encoder_is_initialized", scope: !73, file: !3, line: 31, baseType: !77, size: 8, offset: 32)
!77 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "block_encoder", scope: !73, file: !3, line: 34, baseType: !79, size: 512, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !25, line: 80, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !25, line: 124, size: 512, elements: !81)
!81 = !{!82, !83, !88, !91, !94, !99, !106, !111}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !80, file: !25, line: 126, baseType: !23, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !80, file: !25, line: 130, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !85, line: 63, baseType: !86)
!85 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 27, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 45, baseType: !37)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !80, file: !25, line: 136, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !90, line: 90, baseType: !37)
!90 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !80, file: !25, line: 139, baseType: !92, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !25, line: 94, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !80, file: !25, line: 144, baseType: !95, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !25, line: 102, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !23, !26}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !80, file: !25, line: 148, baseType: !100, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !66, line: 55, baseType: !65)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !80, file: !25, line: 152, baseType: !107, size: 64, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!6, !23, !110, !110, !86}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !80, file: !25, line: 157, baseType: !112, size: 64, offset: 448)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!6, !23, !26, !115, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !118, line: 65, baseType: !119)
!118 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 43, size: 128, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !119, file: !118, line: 54, baseType: !84, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !119, file: !118, line: 63, baseType: !34, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "block_options", scope: !73, file: !3, line: 37, baseType: !124, size: 1664, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !125, line: 245, baseType: !126)
!125 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/block.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 30, size: 1664, elements: !127)
!127 = !{!128, !131, !132, !133, !134, !135, !137, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !157, !158, !159, !160, !162, !163, !164, !165, !166, !167, !168}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !126, file: !125, line: 47, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !9)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !126, file: !125, line: 67, baseType: !129, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !126, file: !125, line: 88, baseType: !103, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !126, file: !125, line: 143, baseType: !84, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !126, file: !125, line: 167, baseType: !84, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !126, file: !125, line: 195, baseType: !136, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !126, file: !125, line: 212, baseType: !138, size: 512, offset: 320)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 512, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !126, file: !125, line: 221, baseType: !34, size: 64, offset: 832)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !126, file: !125, line: 222, baseType: !34, size: 64, offset: 896)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !126, file: !125, line: 223, baseType: !34, size: 64, offset: 960)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !126, file: !125, line: 224, baseType: !129, size: 32, offset: 1024)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !126, file: !125, line: 225, baseType: !129, size: 32, offset: 1056)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !126, file: !125, line: 226, baseType: !84, size: 64, offset: 1088)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !126, file: !125, line: 227, baseType: !84, size: 64, offset: 1152)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !126, file: !125, line: 228, baseType: !84, size: 64, offset: 1216)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !126, file: !125, line: 229, baseType: !84, size: 64, offset: 1280)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !126, file: !125, line: 230, baseType: !84, size: 64, offset: 1344)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !126, file: !125, line: 231, baseType: !84, size: 64, offset: 1408)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !126, file: !125, line: 232, baseType: !153, size: 32, offset: 1472)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !7, line: 46, baseType: !154)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 44, baseType: !9, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !126, file: !125, line: 233, baseType: !153, size: 32, offset: 1504)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !126, file: !125, line: 234, baseType: !153, size: 32, offset: 1536)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !126, file: !125, line: 235, baseType: !153, size: 32, offset: 1568)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !126, file: !125, line: 236, baseType: !161, size: 8, offset: 1600)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !7, line: 29, baseType: !50)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !126, file: !125, line: 237, baseType: !161, size: 8, offset: 1608)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !126, file: !125, line: 238, baseType: !161, size: 8, offset: 1616)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !126, file: !125, line: 239, baseType: !161, size: 8, offset: 1624)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !126, file: !125, line: 240, baseType: !161, size: 8, offset: 1632)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !126, file: !125, line: 241, baseType: !161, size: 8, offset: 1640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !126, file: !125, line: 242, baseType: !161, size: 8, offset: 1648)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !126, file: !125, line: 243, baseType: !161, size: 8, offset: 1656)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !73, file: !3, line: 40, baseType: !170, size: 640, offset: 2240)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 640, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 5)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "index_encoder", scope: !73, file: !3, line: 45, baseType: !79, size: 512, offset: 2880)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !73, file: !3, line: 48, baseType: !175, size: 64, offset: 3392)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index", file: !177, line: 37, baseType: !178)
!177 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/index.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "923fbd07d3b348bf7a676d089b5c066f")
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_s", file: !177, line: 37, flags: DIFlagFwdDecl)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_pos", scope: !73, file: !3, line: 51, baseType: !35, size: 64, offset: 3456)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !73, file: !3, line: 54, baseType: !35, size: 64, offset: 3520)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !73, file: !3, line: 58, baseType: !182, size: 8192, offset: 3584)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8192, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 1024)
!185 = !{!186, !187, !188, !189, !190, !191}
!186 = !DIEnumerator(name: "SEQ_STREAM_HEADER", value: 0)
!187 = !DIEnumerator(name: "SEQ_BLOCK_INIT", value: 1)
!188 = !DIEnumerator(name: "SEQ_BLOCK_HEADER", value: 2)
!189 = !DIEnumerator(name: "SEQ_BLOCK_ENCODE", value: 3)
!190 = !DIEnumerator(name: "SEQ_INDEX_ENCODE", value: 4)
!191 = !DIEnumerator(name: "SEQ_STREAM_FOOTER", value: 5)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !193, file: !25, line: 187, baseType: !9, size: 32, elements: !203)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !25, line: 179, size: 704, elements: !194)
!194 = !{!195, !196, !197, !198, !202}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !25, line: 181, baseType: !79, size: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !193, file: !25, line: 194, baseType: !192, size: 32, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !193, file: !25, line: 199, baseType: !35, size: 64, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !193, file: !25, line: 202, baseType: !199, size: 32, offset: 640)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 4)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !193, file: !25, line: 206, baseType: !77, size: 8, offset: 672)
!203 = !{!204, !205, !206, !207, !208, !209}
!204 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!205 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!206 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!207 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!208 = !DIEnumerator(name: "ISEQ_END", value: 4)
!209 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!210 = !{!89, !34, !211, !136}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!212 = !{!0}
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !231, !234, !236, !238, !240, !242}
!214 = !DILocalVariable(name: "pcoder", arg: 1, scope: !2, file: !3, line: 83, type: !23)
!215 = !DILocalVariable(name: "allocator", arg: 2, scope: !2, file: !3, line: 83, type: !26)
!216 = !DILocalVariable(name: "in", arg: 3, scope: !2, file: !3, line: 84, type: !43)
!217 = !DILocalVariable(name: "in_pos", arg: 4, scope: !2, file: !3, line: 84, type: !51)
!218 = !DILocalVariable(name: "in_size", arg: 5, scope: !2, file: !3, line: 85, type: !35)
!219 = !DILocalVariable(name: "out", arg: 6, scope: !2, file: !3, line: 85, type: !53)
!220 = !DILocalVariable(name: "out_pos", arg: 7, scope: !2, file: !3, line: 86, type: !51)
!221 = !DILocalVariable(name: "out_size", arg: 8, scope: !2, file: !3, line: 86, type: !35)
!222 = !DILocalVariable(name: "action", arg: 9, scope: !2, file: !3, line: 86, type: !55)
!223 = !DILocalVariable(name: "coder", scope: !2, file: !3, line: 88, type: !211)
!224 = !DILocalVariable(name: "ret_", scope: !225, file: !3, line: 123, type: !230)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 123, column: 4)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 108, column: 27)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 108, column: 7)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 107, column: 23)
!229 = distinct !DILexicalBlock(scope: !2, file: !3, line: 91, column: 27)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!231 = !DILocalVariable(name: "ret_", scope: !232, file: !3, line: 134, type: !230)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 134, column: 4)
!233 = distinct !DILexicalBlock(scope: !228, file: !3, line: 133, column: 7)
!234 = !DILocalVariable(name: "ret", scope: !235, file: !3, line: 159, type: !230)
!235 = distinct !DILexicalBlock(scope: !229, file: !3, line: 151, column: 25)
!236 = !DILocalVariable(name: "unpadded_size", scope: !235, file: !3, line: 167, type: !237)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!238 = !DILocalVariable(name: "ret_", scope: !239, file: !3, line: 170, type: !230)
!239 = distinct !DILexicalBlock(scope: !235, file: !3, line: 170, column: 3)
!240 = !DILocalVariable(name: "ret", scope: !241, file: !3, line: 181, type: !230)
!241 = distinct !DILexicalBlock(scope: !229, file: !3, line: 178, column: 25)
!242 = !DILocalVariable(name: "stream_flags", scope: !241, file: !3, line: 189, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !245, line: 105, baseType: !246)
!245 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/stream_flags.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !245, line: 33, size: 448, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !246, file: !245, line: 51, baseType: !129, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !246, file: !245, line: 69, baseType: !84, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !246, file: !245, line: 79, baseType: !103, size: 32, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !246, file: !245, line: 90, baseType: !153, size: 32, offset: 160)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !246, file: !245, line: 91, baseType: !153, size: 32, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !246, file: !245, line: 92, baseType: !153, size: 32, offset: 224)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !246, file: !245, line: 93, baseType: !153, size: 32, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !246, file: !245, line: 94, baseType: !161, size: 8, offset: 288)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !246, file: !245, line: 95, baseType: !161, size: 8, offset: 296)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !246, file: !245, line: 96, baseType: !161, size: 8, offset: 304)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !246, file: !245, line: 97, baseType: !161, size: 8, offset: 312)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !246, file: !245, line: 98, baseType: !161, size: 8, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !246, file: !245, line: 99, baseType: !161, size: 8, offset: 328)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !246, file: !245, line: 100, baseType: !161, size: 8, offset: 336)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !246, file: !245, line: 101, baseType: !161, size: 8, offset: 344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !246, file: !245, line: 102, baseType: !129, size: 32, offset: 352)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !246, file: !245, line: 103, baseType: !129, size: 32, offset: 384)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 128, elements: !200)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!267 = !{i32 7, !"Dwarf Version", i32 5}
!268 = !{i32 2, !"Debug Info Version", i32 3}
!269 = !{i32 1, !"wchar_size", i32 4}
!270 = !{i32 7, !"PIC Level", i32 2}
!271 = !{i32 7, !"PIE Level", i32 2}
!272 = !{i32 7, !"uwtable", i32 2}
!273 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!274 = distinct !DISubprogram(name: "lzma_stream_encoder_init", scope: !3, file: !3, line: 272, type: !275, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !278)
!275 = !DISubroutineType(types: !276)
!276 = !{!6, !277, !26, !115, !103}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!278 = !{!279, !280, !281, !282, !283, !284}
!279 = !DILocalVariable(name: "next", arg: 1, scope: !274, file: !3, line: 272, type: !277)
!280 = !DILocalVariable(name: "allocator", arg: 2, scope: !274, file: !3, line: 272, type: !26)
!281 = !DILocalVariable(name: "filters", arg: 3, scope: !274, file: !3, line: 273, type: !115)
!282 = !DILocalVariable(name: "check", arg: 4, scope: !274, file: !3, line: 273, type: !103)
!283 = !DILocalVariable(name: "stream_flags", scope: !274, file: !3, line: 307, type: !244)
!284 = !DILocalVariable(name: "ret_", scope: !285, file: !3, line: 311, type: !230)
!285 = distinct !DILexicalBlock(scope: !274, file: !3, line: 311, column: 2)
!286 = !DILocation(line: 0, scope: !274)
!287 = !DILocation(line: 275, column: 2, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 275, column: 2)
!289 = distinct !DILexicalBlock(scope: !274, file: !3, line: 275, column: 2)
!290 = !{!291, !295, i64 16}
!291 = !{!"lzma_next_coder_s", !292, i64 0, !295, i64 8, !295, i64 16, !292, i64 24, !292, i64 32, !292, i64 40, !292, i64 48, !292, i64 56}
!292 = !{!"any pointer", !293, i64 0}
!293 = !{!"omnipotent char", !294, i64 0}
!294 = !{!"Simple C/C++ TBAA"}
!295 = !{!"long", !293, i64 0}
!296 = !DILocation(line: 275, column: 2, scope: !289)
!297 = !DILocation(line: 277, column: 14, scope: !298)
!298 = distinct !DILexicalBlock(scope: !274, file: !3, line: 277, column: 6)
!299 = !DILocation(line: 277, column: 6, scope: !274)
!300 = !DILocation(line: 280, column: 12, scope: !301)
!301 = distinct !DILexicalBlock(scope: !274, file: !3, line: 280, column: 6)
!302 = !{!291, !292, i64 0}
!303 = !DILocation(line: 280, column: 18, scope: !301)
!304 = !DILocation(line: 280, column: 6, scope: !274)
!305 = !DILocation(line: 301, column: 54, scope: !274)
!306 = !{!307, !292, i64 424}
!307 = !{!"lzma_coder_s", !293, i64 0, !308, i64 4, !291, i64 8, !309, i64 72, !293, i64 280, !291, i64 360, !292, i64 424, !295, i64 432, !295, i64 440, !293, i64 448}
!308 = !{!"_Bool", !293, i64 0}
!309 = !{!"", !310, i64 0, !310, i64 4, !293, i64 8, !295, i64 16, !295, i64 24, !292, i64 32, !293, i64 40, !292, i64 104, !292, i64 112, !292, i64 120, !310, i64 128, !310, i64 132, !295, i64 136, !295, i64 144, !295, i64 152, !295, i64 160, !295, i64 168, !295, i64 176, !293, i64 184, !293, i64 188, !293, i64 192, !293, i64 196, !293, i64 200, !293, i64 201, !293, i64 202, !293, i64 203, !293, i64 204, !293, i64 205, !293, i64 206, !293, i64 207}
!310 = !{!"int", !293, i64 0}
!311 = !DILocation(line: 281, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !301, file: !3, line: 280, column: 27)
!313 = !DILocation(line: 281, column: 15, scope: !312)
!314 = !DILocation(line: 282, column: 19, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !3, line: 282, column: 7)
!316 = !DILocation(line: 282, column: 7, scope: !312)
!317 = !DILocation(line: 285, column: 9, scope: !312)
!318 = !DILocation(line: 285, column: 14, scope: !312)
!319 = !{!291, !292, i64 24}
!320 = !DILocation(line: 286, column: 9, scope: !312)
!321 = !DILocation(line: 286, column: 13, scope: !312)
!322 = !{!291, !292, i64 32}
!323 = !DILocation(line: 287, column: 9, scope: !312)
!324 = !DILocation(line: 287, column: 16, scope: !312)
!325 = !{!291, !292, i64 56}
!326 = !DILocation(line: 289, column: 40, scope: !312)
!327 = !DILocation(line: 289, column: 54, scope: !312)
!328 = !{!329, !295, i64 0}
!329 = !{!"", !295, i64 0, !292, i64 8}
!330 = !DILocation(line: 290, column: 40, scope: !312)
!331 = !DILocation(line: 290, column: 56, scope: !312)
!332 = !{i64 0, i64 8, !333, i64 8, i64 8, !334, i64 16, i64 8, !334, i64 24, i64 8, !333, i64 32, i64 8, !333, i64 40, i64 8, !333, i64 48, i64 8, !333, i64 56, i64 8, !333}
!333 = !{!292, !292, i64 0}
!334 = !{!295, !295, i64 0}
!335 = !{i64 0, i64 8, !334, i64 8, i64 8, !334, i64 16, i64 8, !333, i64 24, i64 8, !333, i64 32, i64 8, !333, i64 40, i64 8, !333, i64 48, i64 8, !333}
!336 = !DILocation(line: 291, column: 32, scope: !312)
!337 = !DILocation(line: 291, column: 40, scope: !312)
!338 = !DILocation(line: 291, column: 56, scope: !312)
!339 = !DILocation(line: 292, column: 32, scope: !312)
!340 = !DILocation(line: 292, column: 40, scope: !312)
!341 = !DILocation(line: 292, column: 46, scope: !312)
!342 = !DILocation(line: 293, column: 2, scope: !312)
!343 = !DILocation(line: 296, column: 31, scope: !274)
!344 = !DILocation(line: 296, column: 48, scope: !274)
!345 = !{!307, !293, i64 0}
!346 = !DILocation(line: 297, column: 39, scope: !274)
!347 = !DILocation(line: 297, column: 61, scope: !274)
!348 = !{!307, !310, i64 72}
!349 = !DILocation(line: 298, column: 53, scope: !274)
!350 = !DILocation(line: 298, column: 59, scope: !274)
!351 = !{!307, !293, i64 80}
!352 = !DILocation(line: 301, column: 2, scope: !274)
!353 = !DILocation(line: 302, column: 47, scope: !274)
!354 = !DILocation(line: 302, column: 31, scope: !274)
!355 = !DILocation(line: 302, column: 39, scope: !274)
!356 = !DILocation(line: 302, column: 45, scope: !274)
!357 = !DILocation(line: 303, column: 49, scope: !358)
!358 = distinct !DILexicalBlock(scope: !274, file: !3, line: 303, column: 6)
!359 = !DILocation(line: 303, column: 6, scope: !274)
!360 = !DILocation(line: 307, column: 2, scope: !274)
!361 = !DILocation(line: 307, column: 20, scope: !274)
!362 = !DILocation(line: 307, column: 35, scope: !274)
!363 = !{!364, !293, i64 16}
!364 = !{!"", !310, i64 0, !295, i64 8, !293, i64 16, !293, i64 20, !293, i64 24, !293, i64 28, !293, i64 32, !293, i64 36, !293, i64 37, !293, i64 38, !293, i64 39, !293, i64 40, !293, i64 41, !293, i64 42, !293, i64 43, !310, i64 44, !310, i64 48}
!365 = !DILocation(line: 311, column: 2, scope: !285)
!366 = !DILocation(line: 0, scope: !285)
!367 = !DILocation(line: 311, column: 2, scope: !368)
!368 = distinct !DILexicalBlock(scope: !285, file: !3, line: 311, column: 2)
!369 = !DILocation(line: 314, column: 31, scope: !274)
!370 = !DILocation(line: 314, column: 39, scope: !274)
!371 = !DILocation(line: 314, column: 50, scope: !274)
!372 = !{!307, !295, i64 432}
!373 = !DILocation(line: 315, column: 39, scope: !274)
!374 = !DILocation(line: 315, column: 51, scope: !274)
!375 = !{!307, !295, i64 440}
!376 = !DILocation(line: 320, column: 9, scope: !274)
!377 = !DILocation(line: 320, column: 2, scope: !274)
!378 = !DILocation(line: 322, column: 1, scope: !274)
!379 = !DISubprogram(name: "lzma_next_end", scope: !25, file: !25, line: 237, type: !380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !277, !26}
!382 = !{}
!383 = !DISubprogram(name: "lzma_alloc", scope: !25, file: !25, line: 211, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!384 = !DISubroutineType(types: !385)
!385 = !{!34, !35, !26}
!386 = !DILocation(line: 0, scope: !2)
!387 = !DILocation(line: 90, column: 9, scope: !2)
!388 = !DILocation(line: 90, column: 18, scope: !2)
!389 = !DILocation(line: 90, column: 2, scope: !2)
!390 = !DILocation(line: 91, column: 17, scope: !2)
!391 = !DILocation(line: 91, column: 2, scope: !2)
!392 = !DILocation(line: 96, column: 12, scope: !229)
!393 = !DILocation(line: 95, column: 3, scope: !229)
!394 = !DILocation(line: 97, column: 14, scope: !395)
!395 = distinct !DILexicalBlock(scope: !229, file: !3, line: 97, column: 7)
!396 = !DILocation(line: 97, column: 34, scope: !395)
!397 = !DILocation(line: 97, column: 25, scope: !395)
!398 = !DILocation(line: 97, column: 7, scope: !229)
!399 = !DILocation(line: 100, column: 14, scope: !400)
!400 = distinct !DILexicalBlock(scope: !229, file: !3, line: 100, column: 7)
!401 = !DILocation(line: 100, column: 23, scope: !400)
!402 = !DILocation(line: 100, column: 7, scope: !229)
!403 = !DILocation(line: 103, column: 21, scope: !229)
!404 = !DILocation(line: 104, column: 3, scope: !229)
!405 = !DILocation(line: 105, column: 3, scope: !229)
!406 = !DILocation(line: 108, column: 7, scope: !227)
!407 = !DILocation(line: 108, column: 15, scope: !227)
!408 = !DILocation(line: 108, column: 7, scope: !228)
!409 = !DILocation(line: 112, column: 8, scope: !226)
!410 = !DILocation(line: 113, column: 19, scope: !411)
!411 = distinct !DILexicalBlock(scope: !226, file: !3, line: 112, column: 8)
!412 = !DILocation(line: 113, column: 12, scope: !411)
!413 = !DILocation(line: 113, column: 5, scope: !411)
!414 = !DILocation(line: 123, column: 4, scope: !225)
!415 = !DILocation(line: 0, scope: !225)
!416 = !DILocation(line: 123, column: 4, scope: !417)
!417 = distinct !DILexicalBlock(scope: !225, file: !3, line: 123, column: 4)
!418 = !DILocation(line: 126, column: 20, scope: !226)
!419 = !DILocation(line: 127, column: 4, scope: !226)
!420 = !DILocation(line: 133, column: 15, scope: !233)
!421 = !{!307, !308, i64 4}
!422 = !{i8 0, i8 2}
!423 = !DILocation(line: 133, column: 7, scope: !228)
!424 = !DILocalVariable(name: "pcoder", arg: 1, scope: !425, file: !3, line: 63, type: !23)
!425 = distinct !DISubprogram(name: "block_encoder_init", scope: !3, file: !3, line: 63, type: !426, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{!6, !23, !26}
!428 = !{!424, !429, !430, !431}
!429 = !DILocalVariable(name: "allocator", arg: 2, scope: !425, file: !3, line: 63, type: !26)
!430 = !DILocalVariable(name: "coder", scope: !425, file: !3, line: 65, type: !211)
!431 = !DILocalVariable(name: "ret_", scope: !432, file: !3, line: 74, type: !230)
!432 = distinct !DILexicalBlock(scope: !425, file: !3, line: 74, column: 2)
!433 = !DILocation(line: 0, scope: !425, inlinedAt: !434)
!434 = distinct !DILocation(line: 134, column: 4, scope: !232)
!435 = !DILocation(line: 72, column: 41, scope: !425, inlinedAt: !434)
!436 = !DILocation(line: 74, column: 2, scope: !432, inlinedAt: !434)
!437 = !DILocation(line: 0, scope: !432, inlinedAt: !434)
!438 = !DILocation(line: 74, column: 2, scope: !439, inlinedAt: !434)
!439 = distinct !DILexicalBlock(scope: !432, file: !3, line: 74, column: 2)
!440 = !DILocation(line: 77, column: 9, scope: !425, inlinedAt: !434)
!441 = !DILocation(line: 0, scope: !232)
!442 = !DILocation(line: 134, column: 4, scope: !443)
!443 = distinct !DILexicalBlock(scope: !232, file: !3, line: 134, column: 4)
!444 = !DILocation(line: 138, column: 39, scope: !228)
!445 = !DILocation(line: 142, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !228, file: !3, line: 142, column: 7)
!447 = !DILocation(line: 143, column: 20, scope: !446)
!448 = !DILocation(line: 142, column: 7, scope: !228)
!449 = !DILocation(line: 146, column: 45, scope: !228)
!450 = !{!307, !310, i64 76}
!451 = !DILocation(line: 146, column: 24, scope: !228)
!452 = !DILocation(line: 146, column: 22, scope: !228)
!453 = !DILocation(line: 147, column: 19, scope: !228)
!454 = !DILocation(line: 148, column: 3, scope: !228)
!455 = !DILocation(line: 159, column: 45, scope: !235)
!456 = !{!307, !292, i64 32}
!457 = !DILocation(line: 160, column: 26, scope: !235)
!458 = !{!307, !292, i64 8}
!459 = !DILocation(line: 162, column: 29, scope: !235)
!460 = !{!293, !293, i64 0}
!461 = !DILocation(line: 159, column: 24, scope: !235)
!462 = !DILocation(line: 0, scope: !235)
!463 = !DILocation(line: 163, column: 11, scope: !464)
!464 = distinct !DILexicalBlock(scope: !235, file: !3, line: 163, column: 7)
!465 = !DILocation(line: 163, column: 30, scope: !464)
!466 = !DILocation(line: 167, column: 34, scope: !235)
!467 = !DILocation(line: 170, column: 3, scope: !239)
!468 = !{!307, !295, i64 96}
!469 = !DILocation(line: 0, scope: !239)
!470 = !DILocation(line: 170, column: 3, scope: !471)
!471 = distinct !DILexicalBlock(scope: !239, file: !3, line: 170, column: 3)
!472 = !DILocation(line: 174, column: 19, scope: !235)
!473 = !DILocation(line: 181, column: 45, scope: !241)
!474 = !{!307, !292, i64 384}
!475 = !DILocation(line: 182, column: 26, scope: !241)
!476 = !{!307, !292, i64 360}
!477 = !DILocation(line: 181, column: 24, scope: !241)
!478 = !DILocation(line: 0, scope: !241)
!479 = !DILocation(line: 185, column: 11, scope: !480)
!480 = distinct !DILexicalBlock(scope: !241, file: !3, line: 185, column: 7)
!481 = !DILocation(line: 185, column: 7, scope: !241)
!482 = !DILocation(line: 189, column: 3, scope: !241)
!483 = !DILocation(line: 189, column: 27, scope: !241)
!484 = !DILocation(line: 191, column: 44, scope: !241)
!485 = !DILocation(line: 191, column: 21, scope: !241)
!486 = !DILocation(line: 189, column: 42, scope: !241)
!487 = !{!364, !295, i64 8}
!488 = !DILocation(line: 192, column: 34, scope: !241)
!489 = !DILocation(line: 195, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !241, file: !3, line: 195, column: 7)
!491 = !DILocation(line: 196, column: 5, scope: !490)
!492 = !DILocation(line: 195, column: 7, scope: !241)
!493 = !DILocation(line: 199, column: 22, scope: !241)
!494 = !DILocation(line: 200, column: 19, scope: !241)
!495 = !DILocation(line: 202, column: 2, scope: !229)
!496 = distinct !{!496, !389, !497, !498, !499}
!497 = !DILocation(line: 207, column: 2, scope: !2)
!498 = !{!"llvm.loop.mustprogress"}
!499 = !{!"llvm.loop.unroll.disable"}
!500 = !DILocation(line: 210, column: 1, scope: !2)
!501 = distinct !DISubprogram(name: "stream_encoder_end", scope: !3, file: !3, line: 214, type: !97, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !502)
!502 = !{!503, !504, !505, !506}
!503 = !DILocalVariable(name: "pcoder", arg: 1, scope: !501, file: !3, line: 214, type: !23)
!504 = !DILocalVariable(name: "allocator", arg: 2, scope: !501, file: !3, line: 214, type: !26)
!505 = !DILocalVariable(name: "coder", scope: !501, file: !3, line: 216, type: !211)
!506 = !DILocalVariable(name: "i", scope: !507, file: !3, line: 222, type: !35)
!507 = distinct !DILexicalBlock(scope: !501, file: !3, line: 222, column: 2)
!508 = !DILocation(line: 0, scope: !501)
!509 = !DILocation(line: 218, column: 24, scope: !501)
!510 = !DILocation(line: 218, column: 2, scope: !501)
!511 = !DILocation(line: 219, column: 24, scope: !501)
!512 = !DILocation(line: 219, column: 2, scope: !501)
!513 = !DILocation(line: 220, column: 24, scope: !501)
!514 = !DILocation(line: 220, column: 2, scope: !501)
!515 = !DILocation(line: 0, scope: !507)
!516 = !DILocation(line: 222, column: 21, scope: !517)
!517 = distinct !DILexicalBlock(scope: !507, file: !3, line: 222, column: 2)
!518 = !DILocation(line: 222, column: 39, scope: !517)
!519 = !DILocation(line: 222, column: 42, scope: !517)
!520 = !DILocation(line: 222, column: 2, scope: !507)
!521 = !DILocation(line: 225, column: 2, scope: !501)
!522 = !DILocation(line: 227, column: 1, scope: !501)
!523 = !DILocation(line: 223, column: 31, scope: !517)
!524 = !{!329, !292, i64 8}
!525 = !DILocation(line: 223, column: 3, scope: !517)
!526 = !DILocation(line: 222, column: 63, scope: !517)
!527 = distinct !{!527, !520, !528, !498, !499}
!528 = !DILocation(line: 223, column: 49, scope: !507)
!529 = distinct !DISubprogram(name: "stream_encoder_update", scope: !3, file: !3, line: 231, type: !113, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !539, !543}
!531 = !DILocalVariable(name: "pcoder", arg: 1, scope: !529, file: !3, line: 231, type: !23)
!532 = !DILocalVariable(name: "allocator", arg: 2, scope: !529, file: !3, line: 231, type: !26)
!533 = !DILocalVariable(name: "filters", arg: 3, scope: !529, file: !3, line: 232, type: !115)
!534 = !DILocalVariable(name: "reversed_filters", arg: 4, scope: !529, file: !3, line: 233, type: !115)
!535 = !DILocalVariable(name: "coder", scope: !529, file: !3, line: 235, type: !211)
!536 = !DILocalVariable(name: "ret", scope: !537, file: !3, line: 244, type: !230)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 237, column: 41)
!538 = distinct !DILexicalBlock(scope: !529, file: !3, line: 237, column: 6)
!539 = !DILocalVariable(name: "ret_", scope: !540, file: !3, line: 254, type: !230)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 254, column: 3)
!541 = distinct !DILexicalBlock(scope: !542, file: !3, line: 251, column: 50)
!542 = distinct !DILexicalBlock(scope: !538, file: !3, line: 251, column: 13)
!543 = !DILocalVariable(name: "i", scope: !544, file: !3, line: 264, type: !35)
!544 = distinct !DILexicalBlock(scope: !529, file: !3, line: 264, column: 2)
!545 = !DILocation(line: 0, scope: !529)
!546 = !DILocation(line: 237, column: 13, scope: !538)
!547 = !DILocation(line: 237, column: 22, scope: !538)
!548 = !DILocation(line: 237, column: 6, scope: !529)
!549 = !DILocation(line: 242, column: 10, scope: !537)
!550 = !DILocation(line: 242, column: 39, scope: !537)
!551 = !DILocation(line: 243, column: 24, scope: !537)
!552 = !DILocation(line: 243, column: 32, scope: !537)
!553 = !{!307, !292, i64 104}
!554 = !DILocation(line: 0, scope: !425, inlinedAt: !555)
!555 = distinct !DILocation(line: 244, column: 24, scope: !537)
!556 = !DILocation(line: 71, column: 9, scope: !425, inlinedAt: !555)
!557 = !DILocation(line: 71, column: 23, scope: !425, inlinedAt: !555)
!558 = !DILocation(line: 72, column: 41, scope: !425, inlinedAt: !555)
!559 = !DILocation(line: 74, column: 2, scope: !432, inlinedAt: !555)
!560 = !DILocation(line: 0, scope: !432, inlinedAt: !555)
!561 = !DILocation(line: 74, column: 2, scope: !439, inlinedAt: !555)
!562 = !DILocation(line: 0, scope: !537)
!563 = !DILocation(line: 245, column: 41, scope: !537)
!564 = !DILocation(line: 245, column: 32, scope: !537)
!565 = !DILocation(line: 246, column: 7, scope: !537)
!566 = !DILocation(line: 77, column: 41, scope: !425, inlinedAt: !555)
!567 = !DILocation(line: 77, column: 9, scope: !425, inlinedAt: !555)
!568 = !DILocation(line: 246, column: 11, scope: !569)
!569 = distinct !DILexicalBlock(scope: !537, file: !3, line: 246, column: 7)
!570 = !DILocation(line: 249, column: 39, scope: !537)
!571 = !DILocation(line: 251, column: 29, scope: !542)
!572 = !DILocation(line: 251, column: 13, scope: !538)
!573 = !DILocation(line: 254, column: 3, scope: !540)
!574 = !{!307, !292, i64 64}
!575 = !DILocation(line: 0, scope: !540)
!576 = !DILocation(line: 254, column: 3, scope: !577)
!577 = distinct !DILexicalBlock(scope: !540, file: !3, line: 254, column: 3)
!578 = !DILocation(line: 0, scope: !544)
!579 = !DILocation(line: 264, column: 21, scope: !580)
!580 = distinct !DILexicalBlock(scope: !544, file: !3, line: 264, column: 2)
!581 = !DILocation(line: 264, column: 39, scope: !580)
!582 = !DILocation(line: 264, column: 42, scope: !580)
!583 = !DILocation(line: 264, column: 2, scope: !544)
!584 = !DILocation(line: 264, column: 28, scope: !580)
!585 = !DILocation(line: 267, column: 9, scope: !529)
!586 = !DILocation(line: 267, column: 2, scope: !529)
!587 = !DILocation(line: 265, column: 31, scope: !580)
!588 = !DILocation(line: 265, column: 3, scope: !580)
!589 = !DILocation(line: 264, column: 63, scope: !580)
!590 = distinct !{!590, !583, !591, !498, !499}
!591 = !DILocation(line: 265, column: 49, scope: !544)
!592 = !DILocation(line: 268, column: 1, scope: !529)
!593 = !DISubprogram(name: "lzma_index_end", scope: !177, file: !177, line: 315, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !175, !26}
!596 = !DISubprogram(name: "lzma_index_init", scope: !177, file: !177, line: 306, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!597 = !DISubroutineType(types: !598)
!598 = !{!175, !26}
!599 = !DISubprogram(name: "lzma_stream_header_encode", scope: !245, file: !245, line: 122, type: !600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!600 = !DISubroutineType(types: !601)
!601 = !{!6, !602, !54}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!603 = distinct !DISubprogram(name: "lzma_stream_encoder", scope: !3, file: !3, line: 326, type: !604, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !630)
!604 = !DISubroutineType(types: !605)
!605 = !{!6, !606, !115, !103}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !7, line: 490, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 453, size: 1088, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !608, file: !7, line: 454, baseType: !44, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !608, file: !7, line: 455, baseType: !35, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !608, file: !7, line: 456, baseType: !86, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !608, file: !7, line: 458, baseType: !54, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !608, file: !7, line: 459, baseType: !35, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !608, file: !7, line: 460, baseType: !86, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !608, file: !7, line: 468, baseType: !26, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !608, file: !7, line: 471, baseType: !618, size: 64, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !7, line: 411, baseType: !193)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !608, file: !7, line: 479, baseType: !34, size: 64, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !608, file: !7, line: 480, baseType: !34, size: 64, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !608, file: !7, line: 481, baseType: !34, size: 64, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !608, file: !7, line: 482, baseType: !34, size: 64, offset: 704)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !608, file: !7, line: 483, baseType: !86, size: 64, offset: 768)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !608, file: !7, line: 484, baseType: !86, size: 64, offset: 832)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !608, file: !7, line: 485, baseType: !35, size: 64, offset: 896)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !608, file: !7, line: 486, baseType: !35, size: 64, offset: 960)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !608, file: !7, line: 487, baseType: !153, size: 32, offset: 1024)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !608, file: !7, line: 488, baseType: !153, size: 32, offset: 1056)
!630 = !{!631, !632, !633, !634, !637}
!631 = !DILocalVariable(name: "strm", arg: 1, scope: !603, file: !3, line: 326, type: !606)
!632 = !DILocalVariable(name: "filters", arg: 2, scope: !603, file: !3, line: 327, type: !115)
!633 = !DILocalVariable(name: "check", arg: 3, scope: !603, file: !3, line: 327, type: !103)
!634 = !DILocalVariable(name: "ret_", scope: !635, file: !3, line: 329, type: !230)
!635 = distinct !DILexicalBlock(scope: !636, file: !3, line: 329, column: 2)
!636 = distinct !DILexicalBlock(scope: !603, file: !3, line: 329, column: 2)
!637 = !DILocalVariable(name: "ret_", scope: !636, file: !3, line: 329, type: !230)
!638 = !DILocation(line: 0, scope: !603)
!639 = !DILocation(line: 329, column: 2, scope: !635)
!640 = !DILocation(line: 0, scope: !635)
!641 = !DILocation(line: 329, column: 2, scope: !642)
!642 = distinct !DILexicalBlock(scope: !635, file: !3, line: 329, column: 2)
!643 = !DILocation(line: 329, column: 2, scope: !636)
!644 = !{!645, !292, i64 56}
!645 = !{!"", !292, i64 0, !295, i64 8, !295, i64 16, !292, i64 24, !295, i64 32, !295, i64 40, !292, i64 48, !292, i64 56, !292, i64 64, !292, i64 72, !292, i64 80, !292, i64 88, !295, i64 96, !295, i64 104, !295, i64 112, !295, i64 120, !293, i64 128, !293, i64 132}
!646 = !{!645, !292, i64 48}
!647 = !DILocation(line: 0, scope: !636)
!648 = !DILocation(line: 329, column: 2, scope: !649)
!649 = distinct !DILexicalBlock(scope: !636, file: !3, line: 329, column: 2)
!650 = !DILocation(line: 329, column: 2, scope: !651)
!651 = distinct !DILexicalBlock(scope: !649, file: !3, line: 329, column: 2)
!652 = !DILocation(line: 331, column: 8, scope: !603)
!653 = !DILocation(line: 331, column: 18, scope: !603)
!654 = !DILocation(line: 332, column: 53, scope: !603)
!655 = !DILocation(line: 336, column: 2, scope: !603)
!656 = !DILocation(line: 337, column: 1, scope: !603)
!657 = !DISubprogram(name: "lzma_strm_init", scope: !25, file: !25, line: 220, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!658 = !DISubroutineType(types: !659)
!659 = !{!6, !606}
!660 = !DISubprogram(name: "lzma_end", scope: !7, file: !7, line: 546, type: !661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !606}
!663 = !DISubprogram(name: "lzma_bufcpy", scope: !25, file: !25, line: 242, type: !664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!664 = !DISubroutineType(types: !665)
!665 = !{!35, !43, !51, !35, !53, !51, !35}
!666 = !DISubprogram(name: "lzma_index_encoder_init", scope: !667, file: !667, line: 19, type: !668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!667 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/index_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f7a42f9f8fa2ab3e3b4b125f8be1d4d")
!668 = !DISubroutineType(types: !669)
!669 = !{!6, !277, !26, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!672 = !DISubprogram(name: "lzma_block_header_encode", scope: !125, file: !125, line: 305, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!673 = !DISubroutineType(types: !674)
!674 = !{!6, !675, !54}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!677 = !DISubprogram(name: "lzma_block_unpadded_size", scope: !125, file: !125, line: 391, type: !678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!678 = !DISubroutineType(types: !679)
!679 = !{!84, !675}
!680 = !DISubprogram(name: "lzma_index_append", scope: !177, file: !177, line: 343, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!681 = !DISubroutineType(types: !682)
!682 = !{!6, !175, !26, !84, !84}
!683 = !DISubprogram(name: "lzma_index_size", scope: !177, file: !177, line: 424, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!684 = !DISubroutineType(types: !685)
!685 = !{!84, !670}
!686 = !DISubprogram(name: "lzma_stream_footer_encode", scope: !245, file: !245, line: 139, type: !600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!687 = !DISubprogram(name: "lzma_block_header_size", scope: !125, file: !125, line: 283, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!688 = !DISubroutineType(types: !689)
!689 = !{!6, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!691 = !DISubprogram(name: "lzma_block_encoder_init", scope: !692, file: !692, line: 44, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!692 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/block_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "8a5855f99931e218b4ed02132bba4fb7")
!693 = !DISubroutineType(types: !694)
!694 = !{!6, !277, !26, !690}
!695 = !DISubprogram(name: "lzma_free", scope: !25, file: !25, line: 215, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !34, !26}
!698 = !DISubprogram(name: "lzma_filters_copy", scope: !118, file: !118, line: 119, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !382)
!699 = !DISubroutineType(types: !700)
!700 = !{!6, !115, !136, !26}
