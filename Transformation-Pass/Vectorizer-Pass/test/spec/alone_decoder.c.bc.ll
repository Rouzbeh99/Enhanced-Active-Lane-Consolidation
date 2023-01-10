; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/alone_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/alone_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i32, i8, i64, i64, i64, i64, %struct.lzma_options_lzma }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_alone_decoder_init(ptr noundef %next, ptr noundef %allocator, i64 noundef %memlimit, i1 noundef zeroext %picky) #0 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !210, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !211, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i64 %memlimit, metadata !212, metadata !DIExpression()), !dbg !214
  %frombool = zext i1 %picky to i8
  call void @llvm.dbg.value(metadata i8 %frombool, metadata !213, metadata !DIExpression()), !dbg !214
  %init = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 2, !dbg !215
  %0 = load i64, ptr %init, align 8, !dbg !215, !tbaa !218
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_alone_decoder_init to i64), !dbg !215
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !224

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #6, !dbg !215
  br label %if.end, !dbg !215

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_alone_decoder_init to i64), ptr %init, align 8, !dbg !224, !tbaa !218
  %cmp2 = icmp eq i64 %memlimit, 0, !dbg !225
  br i1 %cmp2, label %return, label %if.end4, !dbg !227

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %next, align 8, !dbg !228, !tbaa !230
  %cmp5 = icmp eq ptr %1, null, !dbg !231
  br i1 %cmp5, label %if.then6, label %if.end19, !dbg !232

if.then6:                                         ; preds = %if.end4
  %call = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %allocator) #6, !dbg !233
  store ptr %call, ptr %next, align 8, !dbg !235, !tbaa !230
  %cmp9 = icmp eq ptr %call, null, !dbg !236
  br i1 %cmp9, label %return, label %if.end11, !dbg !238

if.end11:                                         ; preds = %if.then6
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !239
  store ptr @alone_decode, ptr %code, align 8, !dbg !240, !tbaa !241
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !242
  store ptr @alone_decoder_end, ptr %end, align 8, !dbg !243, !tbaa !244
  %memconfig = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 6, !dbg !245
  store ptr @alone_decoder_memconfig, ptr %memconfig, align 8, !dbg !246, !tbaa !247
  store ptr null, ptr %call, align 8, !dbg !248, !tbaa.struct !249
  %.compoundliteral.sroa.2.0.next13.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8, !dbg !248
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next13.sroa_idx, align 8, !dbg !248, !tbaa.struct !252
  %.compoundliteral.sroa.3.0.next13.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16, !dbg !248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next13.sroa_idx, i8 0, i64 48, i1 false), !dbg !248
  %.pre = load ptr, ptr %next, align 8, !dbg !253, !tbaa !230
  br label %if.end19, !dbg !254

if.end19:                                         ; preds = %if.end11, %if.end4
  %2 = phi ptr [ %.pre, %if.end11 ], [ %1, %if.end4 ], !dbg !253
  %sequence = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 1, !dbg !255
  store i32 0, ptr %sequence, align 8, !dbg !256, !tbaa !257
  %picky22 = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 2, !dbg !262
  store i8 %frombool, ptr %picky22, align 4, !dbg !263, !tbaa !264
  %pos = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 3, !dbg !265
  %options = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 7, !dbg !266
  store i32 0, ptr %options, align 8, !dbg !267, !tbaa !268
  %preset_dict = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 7, i32 1, !dbg !269
  store ptr null, ptr %preset_dict, align 8, !dbg !270, !tbaa !271
  %preset_dict_size = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 7, i32 2, !dbg !272
  store i32 0, ptr %preset_dict_size, align 8, !dbg !273, !tbaa !274
  %memlimit32 = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 5, !dbg !275
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pos, i8 0, i64 16, i1 false), !dbg !276
  store i64 %memlimit, ptr %memlimit32, align 8, !dbg !277, !tbaa !278
  %memusage = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 6, !dbg !279
  store i64 32768, ptr %memusage, align 8, !dbg !280, !tbaa !281
  br label %return, !dbg !282

return:                                           ; preds = %if.then6, %if.end, %if.end19
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 11, %if.end ], [ 5, %if.then6 ], !dbg !214
  ret i32 %retval.0, !dbg !283
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !284 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !288 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @alone_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !291 {
entry:
  %filters = alloca [2 x %struct.lzma_filter_info_s], align 16
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !293, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !294, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata ptr %in, metadata !295, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !296, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !297, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata ptr %out, metadata !298, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !299, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !300, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i32 %action, metadata !301, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !302, metadata !DIExpression()), !dbg !328
  %0 = load i64, ptr %out_pos, align 8, !dbg !329, !tbaa !251
  %cmp167 = icmp ult i64 %0, %out_size, !dbg !330
  br i1 %cmp167, label %land.rhs.lr.ph, label %cleanup103, !dbg !331

land.rhs.lr.ph:                                   ; preds = %entry
  %sequence = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1
  %pos47 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3
  %uncompressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4
  %picky58 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %options71 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7
  %memusage = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6
  %memlimit = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5
  %init = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 0, i32 1
  %options81 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 0, i32 2
  %arrayinit.element = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 1
  %.pre = load i32, ptr %sequence, align 8, !dbg !332, !tbaa !257
  %cmp1175 = icmp eq i32 %.pre, 4, !dbg !333
  br i1 %cmp1175, label %sw.bb98, label %lor.rhs, !dbg !334

lor.rhs:                                          ; preds = %land.rhs.lr.ph, %sw.epilog
  %1 = phi i32 [ %22, %sw.epilog ], [ %.pre, %land.rhs.lr.ph ]
  %2 = load i64, ptr %in_pos, align 8, !dbg !335, !tbaa !251
  %cmp2 = icmp ult i64 %2, %in_size, !dbg !336
  br i1 %cmp2, label %while.body, label %cleanup103, !dbg !337

while.body:                                       ; preds = %lor.rhs
  switch i32 %1, label %cleanup103 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb44
    i32 3, label %while.body.sw.bb75_crit_edge
  ], !dbg !338

while.body.sw.bb75_crit_edge:                     ; preds = %while.body
  %.pre174 = load i64, ptr %memusage, align 8, !dbg !339, !tbaa !281
  br label %sw.bb75, !dbg !338

sw.bb:                                            ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %2, !dbg !341
  %3 = load i8, ptr %arrayidx, align 1, !dbg !341, !tbaa !343
  %call = call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %options71, i8 noundef zeroext %3) #6, !dbg !344
  br i1 %call, label %cleanup103, label %if.end, !dbg !345

if.end:                                           ; preds = %sw.bb
  store i32 1, ptr %sequence, align 8, !dbg !346, !tbaa !257
  %inc = add nuw i64 %2, 1, !dbg !347
  store i64 %inc, ptr %in_pos, align 8, !dbg !347, !tbaa !251
  br label %sw.epilog, !dbg !348

sw.bb5:                                           ; preds = %while.body
  %arrayidx6 = getelementptr inbounds i8, ptr %in, i64 %2, !dbg !349
  %4 = load i8, ptr %arrayidx6, align 1, !dbg !349, !tbaa !343
  %conv = zext i8 %4 to i64, !dbg !350
  %5 = load i64, ptr %pos47, align 8, !dbg !351, !tbaa !352
  %mul = shl i64 %5, 3, !dbg !353
  %shl = shl i64 %conv, %mul, !dbg !354
  %6 = load i32, ptr %options71, align 8, !dbg !355, !tbaa !268
  %7 = trunc i64 %shl to i32, !dbg !355
  %conv9 = or i32 %6, %7, !dbg !355
  store i32 %conv9, ptr %options71, align 8, !dbg !355, !tbaa !268
  %inc11 = add i64 %5, 1, !dbg !356
  store i64 %inc11, ptr %pos47, align 8, !dbg !356, !tbaa !352
  %cmp12 = icmp eq i64 %inc11, 4, !dbg !357
  br i1 %cmp12, label %if.then14, label %if.end42, !dbg !358

if.then14:                                        ; preds = %sw.bb5
  %8 = load i8, ptr %picky58, align 4, !dbg !359, !tbaa !264, !range !360
  %tobool.not = icmp eq i8 %8, 0, !dbg !359
  %cmp18.not = icmp eq i32 %conv9, -1
  %or.cond165 = select i1 %tobool.not, i1 true, i1 %cmp18.not, !dbg !361
  br i1 %or.cond165, label %if.end39, label %if.then20, !dbg !361

if.then20:                                        ; preds = %if.then14
  %sub = add i32 %conv9, -1, !dbg !362
  call void @llvm.dbg.value(metadata i32 %sub, metadata !303, metadata !DIExpression()), !dbg !363
  %shr = lshr i32 %sub, 2, !dbg !364
  %or23 = or i32 %shr, %sub, !dbg !365
  call void @llvm.dbg.value(metadata i32 %or23, metadata !303, metadata !DIExpression()), !dbg !363
  %shr24 = lshr i32 %or23, 3, !dbg !366
  %or25 = or i32 %shr24, %or23, !dbg !367
  call void @llvm.dbg.value(metadata i32 %or25, metadata !303, metadata !DIExpression()), !dbg !363
  %shr26 = lshr i32 %or25, 4, !dbg !368
  %or27 = or i32 %shr26, %or25, !dbg !369
  call void @llvm.dbg.value(metadata i32 %or27, metadata !303, metadata !DIExpression()), !dbg !363
  %shr28 = lshr i32 %or27, 8, !dbg !370
  %or29 = or i32 %shr28, %or27, !dbg !371
  call void @llvm.dbg.value(metadata i32 %or29, metadata !303, metadata !DIExpression()), !dbg !363
  %shr30 = lshr i32 %or29, 16, !dbg !372
  %or31 = or i32 %shr30, %or29, !dbg !373
  call void @llvm.dbg.value(metadata i32 %or31, metadata !303, metadata !DIExpression()), !dbg !363
  %inc32 = add i32 %or31, 1, !dbg !374
  call void @llvm.dbg.value(metadata i32 %inc32, metadata !303, metadata !DIExpression()), !dbg !363
  %cmp35.not = icmp eq i32 %inc32, %conv9, !dbg !375
  br i1 %cmp35.not, label %if.end39, label %cleanup103

if.end39:                                         ; preds = %if.then20, %if.then14
  store i64 0, ptr %pos47, align 8, !dbg !377, !tbaa !352
  store i32 2, ptr %sequence, align 8, !dbg !378, !tbaa !257
  br label %if.end42, !dbg !379

if.end42:                                         ; preds = %if.end39, %sw.bb5
  %9 = phi i32 [ 2, %if.end39 ], [ 1, %sw.bb5 ]
  %inc43 = add nuw i64 %2, 1, !dbg !380
  store i64 %inc43, ptr %in_pos, align 8, !dbg !380, !tbaa !251
  br label %sw.epilog, !dbg !381

sw.bb44:                                          ; preds = %while.body
  %arrayidx45 = getelementptr inbounds i8, ptr %in, i64 %2, !dbg !382
  %10 = load i8, ptr %arrayidx45, align 1, !dbg !382, !tbaa !343
  %conv46 = zext i8 %10 to i64, !dbg !383
  %11 = load i64, ptr %pos47, align 8, !dbg !384, !tbaa !352
  %mul48 = shl i64 %11, 3, !dbg !385
  %shl49 = shl i64 %conv46, %mul48, !dbg !386
  %12 = load i64, ptr %uncompressed_size, align 8, !dbg !387, !tbaa !388
  %or50 = or i64 %shl49, %12, !dbg !387
  store i64 %or50, ptr %uncompressed_size, align 8, !dbg !387, !tbaa !388
  %inc51 = add nuw i64 %2, 1, !dbg !389
  store i64 %inc51, ptr %in_pos, align 8, !dbg !389, !tbaa !251
  %inc53 = add i64 %11, 1, !dbg !390
  store i64 %inc53, ptr %pos47, align 8, !dbg !390, !tbaa !352
  %cmp54 = icmp ult i64 %inc53, 8, !dbg !392
  br i1 %cmp54, label %sw.epilog, label %if.end57, !dbg !393

if.end57:                                         ; preds = %sw.bb44
  %13 = load i8, ptr %picky58, align 4, !dbg !394, !tbaa !264, !range !360
  %tobool59.not = icmp ne i8 %13, 0, !dbg !394
  %14 = add i64 %or50, -274877906944
  %15 = icmp ult i64 %14, -274877906945
  %or.cond = select i1 %tobool59.not, i1 %15, i1 false, !dbg !396
  br i1 %or.cond, label %cleanup103, label %if.end70, !dbg !396

if.end70:                                         ; preds = %if.end57
  %call72 = call i64 @lzma_lzma_decoder_memusage(ptr noundef nonnull %options71) #6, !dbg !397
  %add = add i64 %call72, 32768, !dbg !398
  store i64 %add, ptr %memusage, align 8, !dbg !399, !tbaa !281
  store i64 0, ptr %pos47, align 8, !dbg !400, !tbaa !352
  store i32 3, ptr %sequence, align 8, !dbg !401, !tbaa !257
  br label %sw.bb75, !dbg !402

sw.bb75:                                          ; preds = %while.body.sw.bb75_crit_edge, %if.end70
  %16 = phi i64 [ %.pre174, %while.body.sw.bb75_crit_edge ], [ %add, %if.end70 ], !dbg !339
  %17 = load i64, ptr %memlimit, align 8, !dbg !403, !tbaa !278
  %cmp77 = icmp ugt i64 %16, %17, !dbg !404
  br i1 %cmp77, label %cleanup103, label %if.end80, !dbg !405

if.end80:                                         ; preds = %sw.bb75
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %filters) #6, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %filters, metadata !309, metadata !DIExpression()), !dbg !407
  store i64 0, ptr %filters, align 16, !dbg !408, !tbaa !409
  store ptr @lzma_lzma_decoder_init, ptr %init, align 8, !dbg !408, !tbaa !411
  store ptr %options71, ptr %options81, align 16, !dbg !408, !tbaa !412
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayinit.element, i8 0, i64 24, i1 false), !dbg !413
  %call86 = call i32 @lzma_next_filter_init(ptr noundef nonnull %pcoder, ptr noundef %allocator, ptr noundef nonnull %filters) #6, !dbg !414
  call void @llvm.dbg.value(metadata i32 %call86, metadata !326, metadata !DIExpression()), !dbg !415
  %cmp87.not = icmp eq i32 %call86, 0, !dbg !416
  br i1 %cmp87.not, label %cleanup95.thread, label %cleanup95, !dbg !418

cleanup95.thread:                                 ; preds = %if.end80
  %18 = load ptr, ptr %pcoder, align 8, !dbg !419, !tbaa !420
  %19 = load i64, ptr %uncompressed_size, align 8, !dbg !421, !tbaa !388
  call void @lzma_lz_decoder_uncompressed(ptr noundef %18, i64 noundef %19) #6, !dbg !422
  store i32 4, ptr %sequence, align 8, !dbg !423, !tbaa !257
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %filters) #6, !dbg !424
  br label %sw.epilog

cleanup95:                                        ; preds = %if.end80
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %filters) #6, !dbg !424
  br label %cleanup103

sw.bb98:                                          ; preds = %sw.epilog, %land.rhs.lr.ph
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !425
  %20 = load ptr, ptr %code, align 8, !dbg !425, !tbaa !427
  %21 = load ptr, ptr %pcoder, align 8, !dbg !428, !tbaa !420
  %call102 = call i32 %20(ptr noundef %21, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #6, !dbg !429
  br label %cleanup103, !dbg !430

sw.epilog:                                        ; preds = %cleanup95.thread, %sw.bb44, %if.end42, %if.end
  %22 = phi i32 [ 4, %cleanup95.thread ], [ 2, %sw.bb44 ], [ %9, %if.end42 ], [ 1, %if.end ]
  %cmp1 = icmp eq i32 %22, 4, !dbg !333
  br i1 %cmp1, label %sw.bb98, label %lor.rhs, !dbg !334, !llvm.loop !431

cleanup103:                                       ; preds = %if.then20, %sw.bb, %sw.bb75, %while.body, %lor.rhs, %if.end57, %entry, %cleanup95, %sw.bb98
  %retval.6 = phi i32 [ %call102, %sw.bb98 ], [ %call86, %cleanup95 ], [ 0, %entry ], [ 7, %if.end57 ], [ 0, %lor.rhs ], [ 11, %while.body ], [ 6, %sw.bb75 ], [ 7, %sw.bb ], [ 7, %if.then20 ], !dbg !328
  ret i32 %retval.6, !dbg !435
}

; Function Attrs: nounwind uwtable
define internal void @alone_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !436 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !438, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !439, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !440, metadata !DIExpression()), !dbg !441
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #6, !dbg !442
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #6, !dbg !443
  ret void, !dbg !444
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal i32 @alone_decoder_memconfig(ptr nocapture noundef %pcoder, ptr nocapture noundef writeonly %memusage, ptr nocapture noundef writeonly %old_memlimit, i64 noundef %new_memlimit) #3 !dbg !445 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !447, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata ptr %memusage, metadata !448, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata ptr %old_memlimit, metadata !449, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i64 %new_memlimit, metadata !450, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !451, metadata !DIExpression()), !dbg !452
  %memusage1 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6, !dbg !453
  %0 = load i64, ptr %memusage1, align 8, !dbg !453, !tbaa !281
  store i64 %0, ptr %memusage, align 8, !dbg !454, !tbaa !251
  %memlimit = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, !dbg !455
  %1 = load i64, ptr %memlimit, align 8, !dbg !455, !tbaa !278
  store i64 %1, ptr %old_memlimit, align 8, !dbg !456, !tbaa !251
  %cmp.not = icmp eq i64 %new_memlimit, 0, !dbg !457
  br i1 %cmp.not, label %cleanup, label %if.then, !dbg !459

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %memusage1, align 8, !dbg !460, !tbaa !281
  %cmp3 = icmp ugt i64 %2, %new_memlimit, !dbg !463
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !464

if.end:                                           ; preds = %if.then
  store i64 %new_memlimit, ptr %memlimit, align 8, !dbg !465, !tbaa !278
  br label %cleanup, !dbg !466

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 6, %if.then ], [ 0, %if.end ], [ 0, %entry ], !dbg !452
  ret i32 %retval.0, !dbg !467
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_alone_decoder(ptr noundef %strm, i64 noundef %memlimit) local_unnamed_addr #0 !dbg !468 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !496, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i64 %memlimit, metadata !497, metadata !DIExpression()), !dbg !502
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #6, !dbg !503
  call void @llvm.dbg.value(metadata i32 %call, metadata !498, metadata !DIExpression()), !dbg !504
  %cmp.not = icmp eq i32 %call, 0, !dbg !505
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !507
  %0 = load ptr, ptr %internal, align 8, !dbg !507, !tbaa !508
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !507
  %1 = load ptr, ptr %allocator, align 8, !dbg !507, !tbaa !510
  call void @llvm.dbg.value(metadata ptr %0, metadata !210, metadata !DIExpression()) #6, !dbg !511
  call void @llvm.dbg.value(metadata ptr %1, metadata !211, metadata !DIExpression()) #6, !dbg !511
  call void @llvm.dbg.value(metadata i64 %memlimit, metadata !212, metadata !DIExpression()) #6, !dbg !511
  call void @llvm.dbg.value(metadata i8 0, metadata !213, metadata !DIExpression()) #6, !dbg !511
  %init.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2, !dbg !513
  %2 = load i64, ptr %init.i, align 8, !dbg !513, !tbaa !218
  %cmp.not.i = icmp eq i64 %2, ptrtoint (ptr @lzma_alone_decoder_init to i64), !dbg !513
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !514

if.then.i:                                        ; preds = %do.end
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #6, !dbg !513
  br label %if.end.i, !dbg !513

if.end.i:                                         ; preds = %if.then.i, %do.end
  store i64 ptrtoint (ptr @lzma_alone_decoder_init to i64), ptr %init.i, align 8, !dbg !514, !tbaa !218
  %cmp2.i = icmp eq i64 %memlimit, 0, !dbg !515
  br i1 %cmp2.i, label %cleanup7, label %if.end4.i, !dbg !516

if.end4.i:                                        ; preds = %if.end.i
  %3 = load ptr, ptr %0, align 8, !dbg !517, !tbaa !230
  %cmp5.i = icmp eq ptr %3, null, !dbg !518
  br i1 %cmp5.i, label %if.then6.i, label %do.end10, !dbg !519

if.then6.i:                                       ; preds = %if.end4.i
  %call.i = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %1) #6, !dbg !520
  store ptr %call.i, ptr %0, align 8, !dbg !521, !tbaa !230
  %cmp9.i = icmp eq ptr %call.i, null, !dbg !522
  br i1 %cmp9.i, label %cleanup7, label %if.end11.i, !dbg !523

if.end11.i:                                       ; preds = %if.then6.i
  %code.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3, !dbg !524
  store ptr @alone_decode, ptr %code.i, align 8, !dbg !525, !tbaa !241
  %end.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4, !dbg !526
  store ptr @alone_decoder_end, ptr %end.i, align 8, !dbg !527, !tbaa !244
  %memconfig.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6, !dbg !528
  store ptr @alone_decoder_memconfig, ptr %memconfig.i, align 8, !dbg !529, !tbaa !247
  store ptr null, ptr %call.i, align 8, !dbg !530, !tbaa.struct !249
  %.compoundliteral.sroa.2.0.next13.sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i64 8, !dbg !530
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next13.sroa_idx.i, align 8, !dbg !530, !tbaa.struct !252
  %.compoundliteral.sroa.3.0.next13.sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i64 16, !dbg !530
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next13.sroa_idx.i, i8 0, i64 48, i1 false) #6, !dbg !530
  %.pre.i = load ptr, ptr %0, align 8, !dbg !531, !tbaa !230
  br label %do.end10, !dbg !532

cleanup7:                                         ; preds = %if.then6.i, %if.end.i
  %retval.0.i.ph = phi i32 [ 5, %if.then6.i ], [ 11, %if.end.i ]
  call void @llvm.dbg.value(metadata i32 0, metadata !501, metadata !DIExpression()), !dbg !533
  tail call void @lzma_end(ptr noundef nonnull %strm) #6, !dbg !534
  br label %return

do.end10:                                         ; preds = %if.end11.i, %if.end4.i
  %4 = phi ptr [ %.pre.i, %if.end11.i ], [ %3, %if.end4.i ], !dbg !531
  %sequence.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, !dbg !537
  store i32 0, ptr %sequence.i, align 8, !dbg !538, !tbaa !257
  %picky22.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 2, !dbg !539
  store i8 0, ptr %picky22.i, align 4, !dbg !540, !tbaa !264
  %pos.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 3, !dbg !541
  %options.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 7, !dbg !542
  store i32 0, ptr %options.i, align 8, !dbg !543, !tbaa !268
  %preset_dict.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 7, i32 1, !dbg !544
  store ptr null, ptr %preset_dict.i, align 8, !dbg !545, !tbaa !271
  %preset_dict_size.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 7, i32 2, !dbg !546
  store i32 0, ptr %preset_dict_size.i, align 8, !dbg !547, !tbaa !274
  %memlimit32.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 5, !dbg !548
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pos.i, i8 0, i64 16, i1 false) #6, !dbg !549
  store i64 %memlimit, ptr %memlimit32.i, align 8, !dbg !550, !tbaa !278
  %memusage.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 6, !dbg !551
  store i64 32768, ptr %memusage.i, align 8, !dbg !552, !tbaa !281
  call void @llvm.dbg.value(metadata i32 0, metadata !501, metadata !DIExpression()), !dbg !533
  %5 = load ptr, ptr %internal, align 8, !dbg !553, !tbaa !508
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %5, i64 0, i32 3, !dbg !554
  store i8 1, ptr %supported_actions, align 8, !dbg !555, !tbaa !556
  %arrayidx14 = getelementptr inbounds %struct.lzma_internal_s, ptr %5, i64 0, i32 3, i64 3, !dbg !557
  store i8 1, ptr %arrayidx14, align 1, !dbg !558, !tbaa !556
  br label %return, !dbg !559

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %retval.0.i.ph, %cleanup7 ], [ 0, %do.end10 ], !dbg !502
  ret i32 %retval.2, !dbg !560
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare !dbg !561 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare !dbg !564 void @lzma_end(ptr noundef) local_unnamed_addr #2

declare !dbg !567 zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare !dbg !572 i64 @lzma_lzma_decoder_memusage(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_lzma_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !577 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !578 void @lzma_lz_decoder_uncompressed(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !582 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203}
!llvm.ident = !{!204}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !196, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/alone_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "3e33dd073c64eb400f430c607a596c8a")
!2 = !{!3, !19, !25, !32, !139, !146, !164, !178}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !33, line: 21, baseType: !5, size: 32, elements: !172)
!33 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/alone_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e33dd073c64eb400f430c607a596c8a")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !33, line: 18, size: 1728, elements: !35)
!35 = !{!36, !117, !118, !120, !121, !122, !123, !124}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !33, line: 19, baseType: !37, size: 512)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !38, line: 80, baseType: !39)
!38 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !38, line: 124, size: 512, elements: !40)
!40 = !{!41, !44, !52, !55, !88, !93, !100, !105}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !39, file: !38, line: 126, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !38, line: 78, baseType: null)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !39, file: !38, line: 130, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !46, line: 63, baseType: !47)
!46 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !48, line: 27, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !50, line: 45, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !39, file: !38, line: 136, baseType: !53, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !54, line: 90, baseType: !51)
!54 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!55 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !39, file: !38, line: 139, baseType: !56, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !38, line: 94, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !42, !61, !77, !83, !70, !85, !83, !70, !87}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !64)
!64 = !{!65, !72, !76}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !63, file: !4, line: 376, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !69, !70, !70}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !51)
!71 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!72 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !63, file: !4, line: 390, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !69, !69}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !63, file: !4, line: 401, baseType: !69, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !48, line: 24, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !50, line: 38, baseType: !82)
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !39, file: !38, line: 144, baseType: !89, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !38, line: 102, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !42, !61}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !39, file: !38, line: 148, baseType: !94, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !39, file: !38, line: 152, baseType: !101, size: 64, offset: 384)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!60, !42, !104, !104, !47}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !39, file: !38, line: 157, baseType: !106, size: 64, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!60, !42, !61, !109, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !112, line: 65, baseType: !113)
!112 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 43, size: 128, elements: !114)
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !113, file: !112, line: 54, baseType: !45, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !113, file: !112, line: 63, baseType: !69, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !34, file: !33, line: 27, baseType: !32, size: 32, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "picky", scope: !34, file: !33, line: 32, baseType: !119, size: 8, offset: 544)
!119 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !34, file: !33, line: 35, baseType: !70, size: 64, offset: 576)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !34, file: !33, line: 38, baseType: !45, size: 64, offset: 640)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "memlimit", scope: !34, file: !33, line: 41, baseType: !47, size: 64, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !34, file: !33, line: 44, baseType: !47, size: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !34, file: !33, line: 48, baseType: !125, size: 896, offset: 832)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !126, line: 399, baseType: !127)
!126 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/lzma.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 185, size: 896, elements: !128)
!128 = !{!129, !132, !133, !134, !135, !136, !137, !143, !144, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !167, !168, !169, !170, !171}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !127, file: !126, line: 217, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !48, line: 26, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !50, line: 42, baseType: !5)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !127, file: !126, line: 240, baseType: !78, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !127, file: !126, line: 254, baseType: !130, size: 32, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !127, file: !126, line: 281, baseType: !130, size: 32, offset: 160)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !127, file: !126, line: 293, baseType: !130, size: 32, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !127, file: !126, line: 316, baseType: !130, size: 32, offset: 224)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !127, file: !126, line: 322, baseType: !138, size: 32, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !126, line: 155, baseType: !139)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 138, baseType: !5, size: 32, elements: !140)
!140 = !{!141, !142}
!141 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!142 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !127, file: !126, line: 342, baseType: !130, size: 32, offset: 288)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !127, file: !126, line: 345, baseType: !145, size: 32, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !126, line: 111, baseType: !146)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 58, baseType: !5, size: 32, elements: !147)
!147 = !{!148, !149, !150, !151, !152}
!148 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!149 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!150 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!151 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!152 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !127, file: !126, line: 375, baseType: !130, size: 32, offset: 352)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !127, file: !126, line: 384, baseType: !130, size: 32, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !127, file: !126, line: 385, baseType: !130, size: 32, offset: 416)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !127, file: !126, line: 386, baseType: !130, size: 32, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !127, file: !126, line: 387, baseType: !130, size: 32, offset: 480)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !127, file: !126, line: 388, baseType: !130, size: 32, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !127, file: !126, line: 389, baseType: !130, size: 32, offset: 544)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !127, file: !126, line: 390, baseType: !130, size: 32, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !127, file: !126, line: 391, baseType: !130, size: 32, offset: 608)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !127, file: !126, line: 392, baseType: !163, size: 32, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !164)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !165)
!165 = !{!166}
!166 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !127, file: !126, line: 393, baseType: !163, size: 32, offset: 672)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !127, file: !126, line: 394, baseType: !163, size: 32, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !127, file: !126, line: 395, baseType: !163, size: 32, offset: 736)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !127, file: !126, line: 396, baseType: !69, size: 64, offset: 768)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !127, file: !126, line: 397, baseType: !69, size: 64, offset: 832)
!172 = !{!173, !174, !175, !176, !177}
!173 = !DIEnumerator(name: "SEQ_PROPERTIES", value: 0)
!174 = !DIEnumerator(name: "SEQ_DICTIONARY_SIZE", value: 1)
!175 = !DIEnumerator(name: "SEQ_UNCOMPRESSED_SIZE", value: 2)
!176 = !DIEnumerator(name: "SEQ_CODER_INIT", value: 3)
!177 = !DIEnumerator(name: "SEQ_CODE", value: 4)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !179, file: !38, line: 187, baseType: !5, size: 32, elements: !189)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !38, line: 179, size: 704, elements: !180)
!180 = !{!181, !182, !183, !184, !188}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !38, line: 181, baseType: !37, size: 512)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !179, file: !38, line: 194, baseType: !178, size: 32, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !179, file: !38, line: 199, baseType: !70, size: 64, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !179, file: !38, line: 202, baseType: !185, size: 32, offset: 640)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 32, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 4)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !179, file: !38, line: 206, baseType: !119, size: 8, offset: 672)
!189 = !{!190, !191, !192, !193, !194, !195}
!190 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!191 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!192 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!193 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!194 = !DIEnumerator(name: "ISEQ_END", value: 4)
!195 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!196 = !{!53, !69, !197, !70, !45}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!198 = !{i32 7, !"Dwarf Version", i32 5}
!199 = !{i32 2, !"Debug Info Version", i32 3}
!200 = !{i32 1, !"wchar_size", i32 4}
!201 = !{i32 7, !"PIC Level", i32 2}
!202 = !{i32 7, !"PIE Level", i32 2}
!203 = !{i32 7, !"uwtable", i32 2}
!204 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!205 = distinct !DISubprogram(name: "lzma_alone_decoder_init", scope: !33, file: !33, line: 199, type: !206, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !209)
!206 = !DISubroutineType(types: !207)
!207 = !{!60, !208, !61, !47, !119}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!209 = !{!210, !211, !212, !213}
!210 = !DILocalVariable(name: "next", arg: 1, scope: !205, file: !33, line: 199, type: !208)
!211 = !DILocalVariable(name: "allocator", arg: 2, scope: !205, file: !33, line: 199, type: !61)
!212 = !DILocalVariable(name: "memlimit", arg: 3, scope: !205, file: !33, line: 200, type: !47)
!213 = !DILocalVariable(name: "picky", arg: 4, scope: !205, file: !33, line: 200, type: !119)
!214 = !DILocation(line: 0, scope: !205)
!215 = !DILocation(line: 202, column: 2, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !33, line: 202, column: 2)
!217 = distinct !DILexicalBlock(scope: !205, file: !33, line: 202, column: 2)
!218 = !{!219, !223, i64 16}
!219 = !{!"lzma_next_coder_s", !220, i64 0, !223, i64 8, !223, i64 16, !220, i64 24, !220, i64 32, !220, i64 40, !220, i64 48, !220, i64 56}
!220 = !{!"any pointer", !221, i64 0}
!221 = !{!"omnipotent char", !222, i64 0}
!222 = !{!"Simple C/C++ TBAA"}
!223 = !{!"long", !221, i64 0}
!224 = !DILocation(line: 202, column: 2, scope: !217)
!225 = !DILocation(line: 204, column: 15, scope: !226)
!226 = distinct !DILexicalBlock(scope: !205, file: !33, line: 204, column: 6)
!227 = !DILocation(line: 204, column: 6, scope: !205)
!228 = !DILocation(line: 207, column: 12, scope: !229)
!229 = distinct !DILexicalBlock(scope: !205, file: !33, line: 207, column: 6)
!230 = !{!219, !220, i64 0}
!231 = !DILocation(line: 207, column: 18, scope: !229)
!232 = !DILocation(line: 207, column: 6, scope: !205)
!233 = !DILocation(line: 208, column: 17, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !33, line: 207, column: 27)
!235 = !DILocation(line: 208, column: 15, scope: !234)
!236 = !DILocation(line: 209, column: 19, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !33, line: 209, column: 7)
!238 = !DILocation(line: 209, column: 7, scope: !234)
!239 = !DILocation(line: 212, column: 9, scope: !234)
!240 = !DILocation(line: 212, column: 14, scope: !234)
!241 = !{!219, !220, i64 24}
!242 = !DILocation(line: 213, column: 9, scope: !234)
!243 = !DILocation(line: 213, column: 13, scope: !234)
!244 = !{!219, !220, i64 32}
!245 = !DILocation(line: 214, column: 9, scope: !234)
!246 = !DILocation(line: 214, column: 19, scope: !234)
!247 = !{!219, !220, i64 48}
!248 = !DILocation(line: 215, column: 47, scope: !234)
!249 = !{i64 0, i64 8, !250, i64 8, i64 8, !251, i64 16, i64 8, !251, i64 24, i64 8, !250, i64 32, i64 8, !250, i64 40, i64 8, !250, i64 48, i64 8, !250, i64 56, i64 8, !250}
!250 = !{!220, !220, i64 0}
!251 = !{!223, !223, i64 0}
!252 = !{i64 0, i64 8, !251, i64 8, i64 8, !251, i64 16, i64 8, !250, i64 24, i64 8, !250, i64 32, i64 8, !250, i64 40, i64 8, !250, i64 48, i64 8, !250}
!253 = !DILocation(line: 218, column: 31, scope: !205)
!254 = !DILocation(line: 216, column: 2, scope: !234)
!255 = !DILocation(line: 218, column: 39, scope: !205)
!256 = !DILocation(line: 218, column: 48, scope: !205)
!257 = !{!258, !221, i64 64}
!258 = !{!"lzma_coder_s", !219, i64 0, !221, i64 64, !259, i64 68, !223, i64 72, !223, i64 80, !223, i64 88, !223, i64 96, !260, i64 104}
!259 = !{!"_Bool", !221, i64 0}
!260 = !{!"", !261, i64 0, !220, i64 8, !261, i64 16, !261, i64 20, !261, i64 24, !261, i64 28, !221, i64 32, !261, i64 36, !221, i64 40, !261, i64 44, !261, i64 48, !261, i64 52, !261, i64 56, !261, i64 60, !261, i64 64, !261, i64 68, !261, i64 72, !261, i64 76, !221, i64 80, !221, i64 84, !221, i64 88, !221, i64 92, !220, i64 96, !220, i64 104}
!261 = !{!"int", !221, i64 0}
!262 = !DILocation(line: 219, column: 39, scope: !205)
!263 = !DILocation(line: 219, column: 45, scope: !205)
!264 = !{!258, !259, i64 68}
!265 = !DILocation(line: 220, column: 39, scope: !205)
!266 = !DILocation(line: 221, column: 39, scope: !205)
!267 = !DILocation(line: 221, column: 57, scope: !205)
!268 = !{!258, !261, i64 104}
!269 = !DILocation(line: 222, column: 47, scope: !205)
!270 = !DILocation(line: 222, column: 59, scope: !205)
!271 = !{!258, !220, i64 112}
!272 = !DILocation(line: 223, column: 47, scope: !205)
!273 = !DILocation(line: 223, column: 64, scope: !205)
!274 = !{!258, !261, i64 120}
!275 = !DILocation(line: 225, column: 39, scope: !205)
!276 = !DILocation(line: 224, column: 57, scope: !205)
!277 = !DILocation(line: 225, column: 48, scope: !205)
!278 = !{!258, !223, i64 88}
!279 = !DILocation(line: 226, column: 39, scope: !205)
!280 = !DILocation(line: 226, column: 48, scope: !205)
!281 = !{!258, !223, i64 96}
!282 = !DILocation(line: 228, column: 2, scope: !205)
!283 = !DILocation(line: 229, column: 1, scope: !205)
!284 = !DISubprogram(name: "lzma_next_end", scope: !38, file: !38, line: 237, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !208, !61}
!287 = !{}
!288 = !DISubprogram(name: "lzma_alloc", scope: !38, file: !38, line: 211, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!289 = !DISubroutineType(types: !290)
!290 = !{!69, !70, !61}
!291 = distinct !DISubprogram(name: "alone_decode", scope: !33, file: !33, line: 53, type: !58, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !309, !326}
!293 = !DILocalVariable(name: "pcoder", arg: 1, scope: !291, file: !33, line: 53, type: !42)
!294 = !DILocalVariable(name: "allocator", arg: 2, scope: !291, file: !33, line: 54, type: !61)
!295 = !DILocalVariable(name: "in", arg: 3, scope: !291, file: !33, line: 55, type: !77)
!296 = !DILocalVariable(name: "in_pos", arg: 4, scope: !291, file: !33, line: 55, type: !83)
!297 = !DILocalVariable(name: "in_size", arg: 5, scope: !291, file: !33, line: 56, type: !70)
!298 = !DILocalVariable(name: "out", arg: 6, scope: !291, file: !33, line: 56, type: !85)
!299 = !DILocalVariable(name: "out_pos", arg: 7, scope: !291, file: !33, line: 57, type: !83)
!300 = !DILocalVariable(name: "out_size", arg: 8, scope: !291, file: !33, line: 57, type: !70)
!301 = !DILocalVariable(name: "action", arg: 9, scope: !291, file: !33, line: 58, type: !87)
!302 = !DILocalVariable(name: "coder", scope: !291, file: !33, line: 60, type: !197)
!303 = !DILocalVariable(name: "d", scope: !304, file: !33, line: 84, type: !130)
!304 = distinct !DILexicalBlock(scope: !305, file: !33, line: 78, column: 21)
!305 = distinct !DILexicalBlock(scope: !306, file: !33, line: 77, column: 8)
!306 = distinct !DILexicalBlock(scope: !307, file: !33, line: 76, column: 26)
!307 = distinct !DILexicalBlock(scope: !308, file: !33, line: 76, column: 7)
!308 = distinct !DILexicalBlock(scope: !291, file: !33, line: 63, column: 27)
!309 = !DILocalVariable(name: "filters", scope: !310, file: !33, line: 133, type: !311)
!310 = distinct !DILexicalBlock(scope: !308, file: !33, line: 129, column: 23)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 384, elements: !324)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !38, line: 82, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !38, line: 109, size: 192, elements: !314)
!314 = !{!315, !316, !323}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !313, file: !38, line: 112, baseType: !45, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !313, file: !38, line: 116, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !38, line: 86, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!60, !208, !61, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !313, file: !38, line: 119, baseType: !69, size: 64, offset: 128)
!324 = !{!325}
!325 = !DISubrange(count: 2)
!326 = !DILocalVariable(name: "ret", scope: !310, file: !33, line: 142, type: !327)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!328 = !DILocation(line: 0, scope: !291)
!329 = !DILocation(line: 61, column: 9, scope: !291)
!330 = !DILocation(line: 61, column: 18, scope: !291)
!331 = !DILocation(line: 62, column: 4, scope: !291)
!332 = !DILocation(line: 62, column: 15, scope: !291)
!333 = !DILocation(line: 62, column: 24, scope: !291)
!334 = !DILocation(line: 62, column: 36, scope: !291)
!335 = !DILocation(line: 62, column: 39, scope: !291)
!336 = !DILocation(line: 62, column: 47, scope: !291)
!337 = !DILocation(line: 61, column: 2, scope: !291)
!338 = !DILocation(line: 63, column: 2, scope: !291)
!339 = !DILocation(line: 130, column: 14, scope: !340)
!340 = distinct !DILexicalBlock(scope: !310, file: !33, line: 130, column: 7)
!341 = !DILocation(line: 65, column: 48, scope: !342)
!342 = distinct !DILexicalBlock(scope: !308, file: !33, line: 65, column: 7)
!343 = !{!221, !221, i64 0}
!344 = !DILocation(line: 65, column: 7, scope: !342)
!345 = !DILocation(line: 65, column: 7, scope: !308)
!346 = !DILocation(line: 68, column: 19, scope: !308)
!347 = !DILocation(line: 69, column: 3, scope: !308)
!348 = !DILocation(line: 70, column: 3, scope: !308)
!349 = !DILocation(line: 74, column: 17, scope: !308)
!350 = !DILocation(line: 74, column: 8, scope: !308)
!351 = !DILocation(line: 74, column: 41, scope: !308)
!352 = !{!258, !223, i64 72}
!353 = !DILocation(line: 74, column: 45, scope: !308)
!354 = !DILocation(line: 74, column: 30, scope: !308)
!355 = !DILocation(line: 74, column: 5, scope: !308)
!356 = !DILocation(line: 76, column: 7, scope: !307)
!357 = !DILocation(line: 76, column: 20, scope: !307)
!358 = !DILocation(line: 76, column: 7, scope: !308)
!359 = !DILocation(line: 77, column: 15, scope: !305)
!360 = !{i8 0, i8 2}
!361 = !DILocation(line: 77, column: 21, scope: !305)
!362 = !DILocation(line: 84, column: 43, scope: !304)
!363 = !DILocation(line: 0, scope: !304)
!364 = !DILocation(line: 85, column: 12, scope: !304)
!365 = !DILocation(line: 85, column: 7, scope: !304)
!366 = !DILocation(line: 86, column: 12, scope: !304)
!367 = !DILocation(line: 86, column: 7, scope: !304)
!368 = !DILocation(line: 87, column: 12, scope: !304)
!369 = !DILocation(line: 87, column: 7, scope: !304)
!370 = !DILocation(line: 88, column: 12, scope: !304)
!371 = !DILocation(line: 88, column: 7, scope: !304)
!372 = !DILocation(line: 89, column: 12, scope: !304)
!373 = !DILocation(line: 89, column: 7, scope: !304)
!374 = !DILocation(line: 90, column: 5, scope: !304)
!375 = !DILocation(line: 92, column: 11, scope: !376)
!376 = distinct !DILexicalBlock(scope: !304, file: !33, line: 92, column: 9)
!377 = !DILocation(line: 96, column: 15, scope: !306)
!378 = !DILocation(line: 97, column: 20, scope: !306)
!379 = !DILocation(line: 98, column: 3, scope: !306)
!380 = !DILocation(line: 100, column: 3, scope: !308)
!381 = !DILocation(line: 101, column: 3, scope: !308)
!382 = !DILocation(line: 105, column: 19, scope: !308)
!383 = !DILocation(line: 105, column: 8, scope: !308)
!384 = !DILocation(line: 105, column: 43, scope: !308)
!385 = !DILocation(line: 105, column: 47, scope: !308)
!386 = !DILocation(line: 105, column: 32, scope: !308)
!387 = !DILocation(line: 105, column: 5, scope: !308)
!388 = !{!258, !223, i64 80}
!389 = !DILocation(line: 106, column: 3, scope: !308)
!390 = !DILocation(line: 107, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !308, file: !33, line: 107, column: 7)
!392 = !DILocation(line: 107, column: 20, scope: !391)
!393 = !DILocation(line: 107, column: 7, scope: !308)
!394 = !DILocation(line: 113, column: 14, scope: !395)
!395 = distinct !DILexicalBlock(scope: !308, file: !33, line: 113, column: 7)
!396 = !DILocation(line: 114, column: 5, scope: !395)
!397 = !DILocation(line: 121, column: 21, scope: !308)
!398 = !DILocation(line: 122, column: 5, scope: !308)
!399 = !DILocation(line: 121, column: 19, scope: !308)
!400 = !DILocation(line: 124, column: 14, scope: !308)
!401 = !DILocation(line: 125, column: 19, scope: !308)
!402 = !DILocation(line: 125, column: 3, scope: !308)
!403 = !DILocation(line: 130, column: 32, scope: !340)
!404 = !DILocation(line: 130, column: 23, scope: !340)
!405 = !DILocation(line: 130, column: 7, scope: !310)
!406 = !DILocation(line: 133, column: 3, scope: !310)
!407 = !DILocation(line: 133, column: 20, scope: !310)
!408 = !DILocation(line: 134, column: 4, scope: !310)
!409 = !{!410, !223, i64 0}
!410 = !{!"lzma_filter_info_s", !223, i64 0, !220, i64 8, !220, i64 16}
!411 = !{!410, !220, i64 8}
!412 = !{!410, !220, i64 16}
!413 = !DILocation(line: 133, column: 33, scope: !310)
!414 = !DILocation(line: 142, column: 24, scope: !310)
!415 = !DILocation(line: 0, scope: !310)
!416 = !DILocation(line: 144, column: 11, scope: !417)
!417 = distinct !DILexicalBlock(scope: !310, file: !33, line: 144, column: 7)
!418 = !DILocation(line: 144, column: 7, scope: !310)
!419 = !DILocation(line: 148, column: 44, scope: !310)
!420 = !{!258, !220, i64 0}
!421 = !DILocation(line: 149, column: 12, scope: !310)
!422 = !DILocation(line: 148, column: 3, scope: !310)
!423 = !DILocation(line: 151, column: 19, scope: !310)
!424 = !DILocation(line: 153, column: 2, scope: !308)
!425 = !DILocation(line: 156, column: 22, scope: !426)
!426 = distinct !DILexicalBlock(scope: !308, file: !33, line: 155, column: 17)
!427 = !{!258, !220, i64 24}
!428 = !DILocation(line: 156, column: 39, scope: !426)
!429 = !DILocation(line: 156, column: 10, scope: !426)
!430 = !DILocation(line: 156, column: 3, scope: !426)
!431 = distinct !{!431, !337, !432, !433, !434}
!432 = !DILocation(line: 163, column: 2, scope: !291)
!433 = !{!"llvm.loop.mustprogress"}
!434 = !{!"llvm.loop.unroll.disable"}
!435 = !DILocation(line: 166, column: 1, scope: !291)
!436 = distinct !DISubprogram(name: "alone_decoder_end", scope: !33, file: !33, line: 170, type: !91, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !437)
!437 = !{!438, !439, !440}
!438 = !DILocalVariable(name: "pcoder", arg: 1, scope: !436, file: !33, line: 170, type: !42)
!439 = !DILocalVariable(name: "allocator", arg: 2, scope: !436, file: !33, line: 170, type: !61)
!440 = !DILocalVariable(name: "coder", scope: !436, file: !33, line: 172, type: !197)
!441 = !DILocation(line: 0, scope: !436)
!442 = !DILocation(line: 173, column: 2, scope: !436)
!443 = !DILocation(line: 174, column: 2, scope: !436)
!444 = !DILocation(line: 176, column: 1, scope: !436)
!445 = distinct !DISubprogram(name: "alone_decoder_memconfig", scope: !33, file: !33, line: 180, type: !102, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !446)
!446 = !{!447, !448, !449, !450, !451}
!447 = !DILocalVariable(name: "pcoder", arg: 1, scope: !445, file: !33, line: 180, type: !42)
!448 = !DILocalVariable(name: "memusage", arg: 2, scope: !445, file: !33, line: 180, type: !104)
!449 = !DILocalVariable(name: "old_memlimit", arg: 3, scope: !445, file: !33, line: 181, type: !104)
!450 = !DILocalVariable(name: "new_memlimit", arg: 4, scope: !445, file: !33, line: 181, type: !47)
!451 = !DILocalVariable(name: "coder", scope: !445, file: !33, line: 183, type: !197)
!452 = !DILocation(line: 0, scope: !445)
!453 = !DILocation(line: 184, column: 21, scope: !445)
!454 = !DILocation(line: 184, column: 12, scope: !445)
!455 = !DILocation(line: 185, column: 25, scope: !445)
!456 = !DILocation(line: 185, column: 16, scope: !445)
!457 = !DILocation(line: 187, column: 19, scope: !458)
!458 = distinct !DILexicalBlock(scope: !445, file: !33, line: 187, column: 6)
!459 = !DILocation(line: 187, column: 6, scope: !445)
!460 = !DILocation(line: 188, column: 29, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !33, line: 188, column: 7)
!462 = distinct !DILexicalBlock(scope: !458, file: !33, line: 187, column: 25)
!463 = !DILocation(line: 188, column: 20, scope: !461)
!464 = !DILocation(line: 188, column: 7, scope: !462)
!465 = !DILocation(line: 191, column: 19, scope: !462)
!466 = !DILocation(line: 192, column: 2, scope: !462)
!467 = !DILocation(line: 195, column: 1, scope: !445)
!468 = distinct !DISubprogram(name: "lzma_alone_decoder", scope: !33, file: !33, line: 233, type: !469, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !495)
!469 = !DISubroutineType(types: !470)
!470 = !{!60, !471, !47}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !473, file: !4, line: 454, baseType: !78, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !473, file: !4, line: 455, baseType: !70, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !473, file: !4, line: 456, baseType: !47, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !473, file: !4, line: 458, baseType: !86, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !473, file: !4, line: 459, baseType: !70, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !473, file: !4, line: 460, baseType: !47, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !473, file: !4, line: 468, baseType: !61, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !473, file: !4, line: 471, baseType: !483, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !179)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !473, file: !4, line: 479, baseType: !69, size: 64, offset: 512)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !473, file: !4, line: 480, baseType: !69, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !473, file: !4, line: 481, baseType: !69, size: 64, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !473, file: !4, line: 482, baseType: !69, size: 64, offset: 704)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !473, file: !4, line: 483, baseType: !47, size: 64, offset: 768)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !473, file: !4, line: 484, baseType: !47, size: 64, offset: 832)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !473, file: !4, line: 485, baseType: !70, size: 64, offset: 896)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !473, file: !4, line: 486, baseType: !70, size: 64, offset: 960)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !473, file: !4, line: 487, baseType: !163, size: 32, offset: 1024)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !473, file: !4, line: 488, baseType: !163, size: 32, offset: 1056)
!495 = !{!496, !497, !498, !501}
!496 = !DILocalVariable(name: "strm", arg: 1, scope: !468, file: !33, line: 233, type: !471)
!497 = !DILocalVariable(name: "memlimit", arg: 2, scope: !468, file: !33, line: 233, type: !47)
!498 = !DILocalVariable(name: "ret_", scope: !499, file: !33, line: 235, type: !327)
!499 = distinct !DILexicalBlock(scope: !500, file: !33, line: 235, column: 2)
!500 = distinct !DILexicalBlock(scope: !468, file: !33, line: 235, column: 2)
!501 = !DILocalVariable(name: "ret_", scope: !500, file: !33, line: 235, type: !327)
!502 = !DILocation(line: 0, scope: !468)
!503 = !DILocation(line: 235, column: 2, scope: !499)
!504 = !DILocation(line: 0, scope: !499)
!505 = !DILocation(line: 235, column: 2, scope: !506)
!506 = distinct !DILexicalBlock(scope: !499, file: !33, line: 235, column: 2)
!507 = !DILocation(line: 235, column: 2, scope: !500)
!508 = !{!509, !220, i64 56}
!509 = !{!"", !220, i64 0, !223, i64 8, !223, i64 16, !220, i64 24, !223, i64 32, !223, i64 40, !220, i64 48, !220, i64 56, !220, i64 64, !220, i64 72, !220, i64 80, !220, i64 88, !223, i64 96, !223, i64 104, !223, i64 112, !223, i64 120, !221, i64 128, !221, i64 132}
!510 = !{!509, !220, i64 48}
!511 = !DILocation(line: 0, scope: !205, inlinedAt: !512)
!512 = distinct !DILocation(line: 235, column: 2, scope: !500)
!513 = !DILocation(line: 202, column: 2, scope: !216, inlinedAt: !512)
!514 = !DILocation(line: 202, column: 2, scope: !217, inlinedAt: !512)
!515 = !DILocation(line: 204, column: 15, scope: !226, inlinedAt: !512)
!516 = !DILocation(line: 204, column: 6, scope: !205, inlinedAt: !512)
!517 = !DILocation(line: 207, column: 12, scope: !229, inlinedAt: !512)
!518 = !DILocation(line: 207, column: 18, scope: !229, inlinedAt: !512)
!519 = !DILocation(line: 207, column: 6, scope: !205, inlinedAt: !512)
!520 = !DILocation(line: 208, column: 17, scope: !234, inlinedAt: !512)
!521 = !DILocation(line: 208, column: 15, scope: !234, inlinedAt: !512)
!522 = !DILocation(line: 209, column: 19, scope: !237, inlinedAt: !512)
!523 = !DILocation(line: 209, column: 7, scope: !234, inlinedAt: !512)
!524 = !DILocation(line: 212, column: 9, scope: !234, inlinedAt: !512)
!525 = !DILocation(line: 212, column: 14, scope: !234, inlinedAt: !512)
!526 = !DILocation(line: 213, column: 9, scope: !234, inlinedAt: !512)
!527 = !DILocation(line: 213, column: 13, scope: !234, inlinedAt: !512)
!528 = !DILocation(line: 214, column: 9, scope: !234, inlinedAt: !512)
!529 = !DILocation(line: 214, column: 19, scope: !234, inlinedAt: !512)
!530 = !DILocation(line: 215, column: 47, scope: !234, inlinedAt: !512)
!531 = !DILocation(line: 218, column: 31, scope: !205, inlinedAt: !512)
!532 = !DILocation(line: 216, column: 2, scope: !234, inlinedAt: !512)
!533 = !DILocation(line: 0, scope: !500)
!534 = !DILocation(line: 235, column: 2, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !33, line: 235, column: 2)
!536 = distinct !DILexicalBlock(scope: !500, file: !33, line: 235, column: 2)
!537 = !DILocation(line: 218, column: 39, scope: !205, inlinedAt: !512)
!538 = !DILocation(line: 218, column: 48, scope: !205, inlinedAt: !512)
!539 = !DILocation(line: 219, column: 39, scope: !205, inlinedAt: !512)
!540 = !DILocation(line: 219, column: 45, scope: !205, inlinedAt: !512)
!541 = !DILocation(line: 220, column: 39, scope: !205, inlinedAt: !512)
!542 = !DILocation(line: 221, column: 39, scope: !205, inlinedAt: !512)
!543 = !DILocation(line: 221, column: 57, scope: !205, inlinedAt: !512)
!544 = !DILocation(line: 222, column: 47, scope: !205, inlinedAt: !512)
!545 = !DILocation(line: 222, column: 59, scope: !205, inlinedAt: !512)
!546 = !DILocation(line: 223, column: 47, scope: !205, inlinedAt: !512)
!547 = !DILocation(line: 223, column: 64, scope: !205, inlinedAt: !512)
!548 = !DILocation(line: 225, column: 39, scope: !205, inlinedAt: !512)
!549 = !DILocation(line: 224, column: 57, scope: !205, inlinedAt: !512)
!550 = !DILocation(line: 225, column: 48, scope: !205, inlinedAt: !512)
!551 = !DILocation(line: 226, column: 39, scope: !205, inlinedAt: !512)
!552 = !DILocation(line: 226, column: 48, scope: !205, inlinedAt: !512)
!553 = !DILocation(line: 237, column: 8, scope: !468)
!554 = !DILocation(line: 237, column: 18, scope: !468)
!555 = !DILocation(line: 237, column: 46, scope: !468)
!556 = !{!259, !259, i64 0}
!557 = !DILocation(line: 238, column: 2, scope: !468)
!558 = !DILocation(line: 238, column: 49, scope: !468)
!559 = !DILocation(line: 240, column: 2, scope: !468)
!560 = !DILocation(line: 241, column: 1, scope: !468)
!561 = !DISubprogram(name: "lzma_strm_init", scope: !38, file: !38, line: 220, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!562 = !DISubroutineType(types: !563)
!563 = !{!60, !471}
!564 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !471}
!567 = !DISubprogram(name: "lzma_lzma_lclppb_decode", scope: !568, file: !568, line: 35, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!568 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0caa14a517fbe6eb5d1a0f4dac3f4c24")
!569 = !DISubroutineType(types: !570)
!570 = !{!119, !571, !80}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!572 = !DISubprogram(name: "lzma_lzma_decoder_memusage", scope: !568, file: !568, line: 24, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!573 = !DISubroutineType(types: !574)
!574 = !{!47, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!577 = !DISubprogram(name: "lzma_next_filter_init", scope: !38, file: !38, line: 226, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!578 = !DISubprogram(name: "lzma_lz_decoder_uncompressed", scope: !579, file: !579, line: 93, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!579 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lz/lz_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27344aa2da5754ad4a118fbd9137003b")
!580 = !DISubroutineType(types: !581)
!581 = !{null, !42, !45}
!582 = !DISubprogram(name: "lzma_free", scope: !38, file: !38, line: 215, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !69, !61}
