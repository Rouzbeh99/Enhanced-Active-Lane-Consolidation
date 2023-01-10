; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/stream_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, %struct.lzma_next_coder_s, %struct.lzma_block, %struct.lzma_stream_flags, ptr, i64, i64, i8, i8, i8, i8, i8, i64, [1024 x i8] }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_decoder_init(ptr noundef %next, ptr noundef %allocator, i64 noundef %memlimit, i32 noundef %flags) #0 !dbg !238 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !243, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !244, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i64 %memlimit, metadata !245, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i32 %flags, metadata !246, metadata !DIExpression()), !dbg !247
  %init = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 2, !dbg !248
  %0 = load i64, ptr %init, align 8, !dbg !248, !tbaa !251
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_stream_decoder_init to i64), !dbg !248
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !257

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #7, !dbg !248
  br label %if.end, !dbg !248

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_stream_decoder_init to i64), ptr %init, align 8, !dbg !257, !tbaa !251
  %cmp2 = icmp eq i64 %memlimit, 0, !dbg !258
  br i1 %cmp2, label %return, label %if.end4, !dbg !260

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp ult i32 %flags, 16, !dbg !261
  br i1 %tobool.not, label %if.end6, label %return, !dbg !263

if.end6:                                          ; preds = %if.end4
  %1 = load ptr, ptr %next, align 8, !dbg !264, !tbaa !266
  %cmp7 = icmp eq ptr %1, null, !dbg !267
  br i1 %cmp7, label %if.then8, label %if.end6.if.end22_crit_edge, !dbg !268

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  %index_hash.i.phi.trans.insert = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 4
  %.pre = load ptr, ptr %index_hash.i.phi.trans.insert, align 8, !dbg !269, !tbaa !278
  br label %if.end22, !dbg !268

if.then8:                                         ; preds = %if.end6
  %call = tail call ptr @lzma_alloc(i64 noundef 1400, ptr noundef %allocator) #7, !dbg !284
  store ptr %call, ptr %next, align 8, !dbg !286, !tbaa !266
  %cmp11 = icmp eq ptr %call, null, !dbg !287
  br i1 %cmp11, label %return, label %if.end13, !dbg !289

if.end13:                                         ; preds = %if.then8
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !290
  store ptr @stream_decode, ptr %code, align 8, !dbg !291, !tbaa !292
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !293
  store ptr @stream_decoder_end, ptr %end, align 8, !dbg !294, !tbaa !295
  %get_check = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 5, !dbg !296
  store ptr @stream_decoder_get_check, ptr %get_check, align 8, !dbg !297, !tbaa !298
  %memconfig = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 6, !dbg !299
  store ptr @stream_decoder_memconfig, ptr %memconfig, align 8, !dbg !300, !tbaa !301
  %block_decoder = getelementptr inbounds %struct.lzma_coder_s, ptr %call, i64 0, i32 1, !dbg !302
  store ptr null, ptr %block_decoder, align 8, !dbg !303, !tbaa.struct !304
  %.compoundliteral.sroa.2.0.block_decoder.sroa_idx = getelementptr inbounds i8, ptr %block_decoder, i64 8, !dbg !303
  store i64 -1, ptr %.compoundliteral.sroa.2.0.block_decoder.sroa_idx, align 8, !dbg !303, !tbaa.struct !307
  %.compoundliteral.sroa.3.0.block_decoder.sroa_idx = getelementptr inbounds i8, ptr %block_decoder, i64 16, !dbg !303
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.block_decoder.sroa_idx, i8 0, i64 48, i1 false), !dbg !303
  %2 = load ptr, ptr %next, align 8, !dbg !308, !tbaa !266
  %index_hash = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 4, !dbg !309
  store ptr null, ptr %index_hash, align 8, !dbg !310, !tbaa !278
  br label %if.end22, !dbg !311

if.end22:                                         ; preds = %if.end6.if.end22_crit_edge, %if.end13
  %3 = phi ptr [ null, %if.end13 ], [ %.pre, %if.end6.if.end22_crit_edge ], !dbg !269
  %4 = phi ptr [ %2, %if.end13 ], [ %1, %if.end6.if.end22_crit_edge ], !dbg !312
  %memlimit24 = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 5, !dbg !313
  store i64 %memlimit, ptr %memlimit24, align 8, !dbg !314, !tbaa !315
  %memusage = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 6, !dbg !316
  store i64 32768, ptr %memusage, align 8, !dbg !317, !tbaa !318
  %tell_no_check = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 7, !dbg !319
  %5 = trunc i32 %flags to i8, !dbg !320
  %6 = and i8 %5, 1, !dbg !320
  store i8 %6, ptr %tell_no_check, align 8, !dbg !320, !tbaa !321
  %tell_unsupported_check = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 8, !dbg !322
  %7 = lshr i8 %5, 1, !dbg !323
  %8 = and i8 %7, 1, !dbg !323
  store i8 %8, ptr %tell_unsupported_check, align 1, !dbg !323, !tbaa !324
  %tell_any_check = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 9, !dbg !325
  %9 = lshr i8 %5, 2, !dbg !326
  %10 = and i8 %9, 1, !dbg !326
  store i8 %10, ptr %tell_any_check, align 2, !dbg !326, !tbaa !327
  %concatenated = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 10, !dbg !328
  %11 = lshr i8 %5, 3, !dbg !329
  store i8 %11, ptr %concatenated, align 1, !dbg !329, !tbaa !330
  %first_stream = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 11, !dbg !331
  store i8 1, ptr %first_stream, align 4, !dbg !332, !tbaa !333
  call void @llvm.dbg.value(metadata ptr %4, metadata !274, metadata !DIExpression()) #7, !dbg !334
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !275, metadata !DIExpression()) #7, !dbg !334
  call void @llvm.dbg.value(metadata ptr %4, metadata !276, metadata !DIExpression()) #7, !dbg !334
  %index_hash.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 4, !dbg !269
  %call.i = tail call ptr @lzma_index_hash_init(ptr noundef %3, ptr noundef %allocator) #7, !dbg !335
  store ptr %call.i, ptr %index_hash.i, align 8, !dbg !336, !tbaa !278
  %cmp.i = icmp eq ptr %call.i, null, !dbg !337
  br i1 %cmp.i, label %return, label %if.end.i, !dbg !339

if.end.i:                                         ; preds = %if.end22
  store i32 0, ptr %4, align 8, !dbg !340, !tbaa !341
  %pos.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 12, !dbg !342
  store i64 0, ptr %pos.i, align 8, !dbg !343, !tbaa !344
  br label %return, !dbg !345

return:                                           ; preds = %if.end.i, %if.end22, %if.then8, %if.end4, %if.end
  %retval.0 = phi i32 [ 11, %if.end ], [ 8, %if.end4 ], [ 5, %if.then8 ], [ 0, %if.end.i ], [ 5, %if.end22 ], !dbg !247
  ret i32 %retval.0, !dbg !346
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !347 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !351 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @stream_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !354 {
entry:
  %filters = alloca [5 x %struct.lzma_filter], align 16
  %footer_flags = alloca %struct.lzma_stream_flags, align 8
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !356, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !357, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata ptr %in, metadata !358, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !359, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !360, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata ptr %out, metadata !361, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !362, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !363, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i32 %action, metadata !364, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !365, metadata !DIExpression()), !dbg !395
  %index_hash144 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4
  %buffer155 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13
  %pos157 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12
  %backward_size = getelementptr inbounds %struct.lzma_stream_flags, ptr %footer_flags, i64 0, i32 1
  %stream_flags187 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3
  %concatenated = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10
  %first_stream10 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11
  %check = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i32 2
  %check12 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 2
  %tell_no_check = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7
  %tell_unsupported_check = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 8
  %tell_any_check = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9
  %header_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 1
  %block_options51 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %filters67 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 5
  %memusage85 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6
  %memlimit = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5
  %block_decoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1
  %code = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 3
  %uncompressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 4
  %.pre = load i32, ptr %pcoder, align 8, !dbg !396, !tbaa !341
  br label %while.cond, !dbg !397

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = phi i32 [ %.pre, %entry ], [ %.be, %while.cond.backedge ], !dbg !396
  switch i32 %0, label %cleanup249 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 2, label %sw.bb110
    i32 3, label %sw.bb138
    i32 4, label %sw.bb154
    i32 5, label %sw.bb206
  ], !dbg !398

sw.bb:                                            ; preds = %while.cond
  %call = call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer155, ptr noundef nonnull %pos157, i64 noundef 12) #7, !dbg !399
  %1 = load i64, ptr %pos157, align 8, !dbg !400, !tbaa !344
  %cmp = icmp ult i64 %1, 12, !dbg !402
  br i1 %cmp, label %cleanup249, label %if.end, !dbg !403

if.end:                                           ; preds = %sw.bb
  store i64 0, ptr %pos157, align 8, !dbg !404, !tbaa !344
  %call5 = call i32 @lzma_stream_header_decode(ptr noundef nonnull %stream_flags187, ptr noundef nonnull %buffer155) #7, !dbg !405
  call void @llvm.dbg.value(metadata i32 %call5, metadata !366, metadata !DIExpression()), !dbg !406
  switch i32 %call5, label %cond.false [
    i32 0, label %if.end9
    i32 7, label %land.lhs.true
  ], !dbg !407

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr %first_stream10, align 4, !dbg !408, !tbaa !333, !range !410
  %tobool.not = icmp eq i8 %2, 0, !dbg !408
  br i1 %tobool.not, label %cleanup249, label %cond.false, !dbg !411

cond.false:                                       ; preds = %if.end, %land.lhs.true
  br label %cleanup249, !dbg !411

if.end9:                                          ; preds = %if.end
  store i8 0, ptr %first_stream10, align 4, !dbg !412, !tbaa !333
  %3 = load i32, ptr %check, align 8, !dbg !413, !tbaa !414
  store i32 %3, ptr %check12, align 8, !dbg !415, !tbaa !416
  store i32 1, ptr %pcoder, align 8, !dbg !417, !tbaa !341
  %4 = load i8, ptr %tell_no_check, align 8, !dbg !418, !tbaa !321, !range !410
  %tobool14.not = icmp ne i8 %4, 0, !dbg !418
  %cmp18 = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool14.not, i1 %cmp18, i1 false, !dbg !420
  br i1 %or.cond, label %cleanup249, label %if.end20, !dbg !420

if.end20:                                         ; preds = %if.end9
  %5 = load i8, ptr %tell_unsupported_check, align 1, !dbg !421, !tbaa !324, !range !410
  %tobool21.not = icmp eq i8 %5, 0, !dbg !421
  br i1 %tobool21.not, label %cleanup, label %land.lhs.true22, !dbg !423

land.lhs.true22:                                  ; preds = %if.end20
  %call25 = call zeroext i8 @lzma_check_is_supported(i32 noundef %3) #7, !dbg !424
  %tobool26.not = icmp eq i8 %call25, 0, !dbg !424
  br i1 %tobool26.not, label %cleanup249, label %cleanup, !dbg !425

cleanup:                                          ; preds = %if.end20, %land.lhs.true22
  %6 = load i8, ptr %tell_any_check, align 2, !dbg !426, !tbaa !327, !range !410
  %tobool29.not = icmp eq i8 %6, 0, !dbg !426
  br i1 %tobool29.not, label %sw.bb32, label %cleanup249

sw.bb32:                                          ; preds = %cleanup, %while.cond
  %7 = load i64, ptr %in_pos, align 8, !dbg !428, !tbaa !306
  %cmp33.not = icmp ult i64 %7, %in_size, !dbg !430
  br i1 %cmp33.not, label %if.end35, label %cleanup249, !dbg !431

if.end35:                                         ; preds = %sw.bb32
  %8 = load i64, ptr %pos157, align 8, !dbg !432, !tbaa !344
  %cmp37 = icmp eq i64 %8, 0, !dbg !434
  br i1 %cmp37, label %if.then38, label %if.end35.if.end47_crit_edge, !dbg !435

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  %.pre396 = load i32, ptr %header_size, align 4, !dbg !436, !tbaa !437
  br label %if.end47, !dbg !435

if.then38:                                        ; preds = %if.end35
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %7, !dbg !438
  %9 = load i8, ptr %arrayidx, align 1, !dbg !438, !tbaa !441
  %cmp39 = icmp eq i8 %9, 0, !dbg !442
  br i1 %cmp39, label %if.then41, label %if.end43, !dbg !443

if.then41:                                        ; preds = %if.then38
  store i32 3, ptr %pcoder, align 8, !dbg !444, !tbaa !341
  br label %while.cond.backedge, !dbg !446

if.end43:                                         ; preds = %if.then38
  %conv = zext i8 %9 to i32, !dbg !438
  %add = shl nuw nsw i32 %conv, 2, !dbg !447
  %mul = add nuw nsw i32 %add, 4, !dbg !447
  store i32 %mul, ptr %header_size, align 4, !dbg !448, !tbaa !437
  br label %if.end47, !dbg !449

if.end47:                                         ; preds = %if.end35.if.end47_crit_edge, %if.end43
  %10 = phi i32 [ %.pre396, %if.end35.if.end47_crit_edge ], [ %mul, %if.end43 ], !dbg !436
  %conv53 = zext i32 %10 to i64, !dbg !450
  %call54 = call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer155, ptr noundef nonnull %pos157, i64 noundef %conv53) #7, !dbg !451
  %11 = load i64, ptr %pos157, align 8, !dbg !452, !tbaa !344
  %12 = load i32, ptr %header_size, align 4, !dbg !454, !tbaa !437
  %conv58 = zext i32 %12 to i64, !dbg !455
  %cmp59 = icmp ult i64 %11, %conv58, !dbg !456
  br i1 %cmp59, label %cleanup249, label %if.end62, !dbg !457

if.end62:                                         ; preds = %if.end47
  store i64 0, ptr %pos157, align 8, !dbg !458, !tbaa !344
  store i32 0, ptr %block_options51, align 8, !dbg !459, !tbaa !460
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %filters) #7, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %filters, metadata !370, metadata !DIExpression()), !dbg !462
  store ptr %filters, ptr %filters67, align 8, !dbg !463, !tbaa !464
  %call71 = call i32 @lzma_block_header_decode(ptr noundef nonnull %block_options51, ptr noundef %allocator, ptr noundef nonnull %buffer155) #7, !dbg !465
  call void @llvm.dbg.value(metadata i32 %call71, metadata !375, metadata !DIExpression()), !dbg !466
  %cmp72.not = icmp eq i32 %call71, 0, !dbg !467
  br i1 %cmp72.not, label %do.end, label %cleanup107.thread

do.end:                                           ; preds = %if.end62
  %call80 = call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull %filters) #7, !dbg !469
  call void @llvm.dbg.value(metadata i64 %call80, metadata !377, metadata !DIExpression()), !dbg !470
  %cmp82 = icmp eq i64 %call80, -1, !dbg !471
  br i1 %cmp82, label %if.end93, label %if.else, !dbg !473

if.else:                                          ; preds = %do.end
  store i64 %call80, ptr %memusage85, align 8, !dbg !474, !tbaa !318
  %13 = load i64, ptr %memlimit, align 8, !dbg !476, !tbaa !315
  %cmp86 = icmp ugt i64 %call80, %13, !dbg !478
  br i1 %cmp86, label %if.end93, label %if.else89, !dbg !479

if.else89:                                        ; preds = %if.else
  %call91 = call i32 @lzma_block_decoder_init(ptr noundef nonnull %block_decoder, ptr noundef %allocator, ptr noundef nonnull %block_options51) #7, !dbg !480
  call void @llvm.dbg.value(metadata i32 %call91, metadata !379, metadata !DIExpression()), !dbg !470
  br label %if.end93

if.end93:                                         ; preds = %if.else, %do.end, %if.else89
  %ret81.0 = phi i32 [ %call91, %if.else89 ], [ 8, %do.end ], [ 6, %if.else ], !dbg !482
  call void @llvm.dbg.value(metadata i32 %ret81.0, metadata !379, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata i64 0, metadata !380, metadata !DIExpression()), !dbg !483
  br label %for.body, !dbg !484

for.cond.cleanup:                                 ; preds = %for.body
  store ptr null, ptr %filters67, align 8, !dbg !485, !tbaa !464
  %cmp100.not = icmp eq i32 %ret81.0, 0, !dbg !486
  br i1 %cmp100.not, label %cleanup107, label %cleanup107.thread, !dbg !488

for.body:                                         ; preds = %if.end93, %for.body
  %i.0389 = phi i64 [ 0, %if.end93 ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.0389, metadata !380, metadata !DIExpression()), !dbg !483
  %options = getelementptr inbounds [5 x %struct.lzma_filter], ptr %filters, i64 0, i64 %i.0389, i32 1, !dbg !489
  %14 = load ptr, ptr %options, align 8, !dbg !489, !tbaa !491
  call void @lzma_free(ptr noundef %14, ptr noundef %allocator) #7, !dbg !493
  %inc = add nuw nsw i64 %i.0389, 1, !dbg !494
  call void @llvm.dbg.value(metadata i64 %inc, metadata !380, metadata !DIExpression()), !dbg !483
  %exitcond395.not = icmp eq i64 %inc, 4, !dbg !495
  br i1 %exitcond395.not, label %for.cond.cleanup, label %for.body, !dbg !484, !llvm.loop !496

cleanup107.thread:                                ; preds = %if.end62, %for.cond.cleanup
  %retval.5.ph = phi i32 [ %ret81.0, %for.cond.cleanup ], [ %call71, %if.end62 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters) #7, !dbg !500
  br label %cleanup249

cleanup107:                                       ; preds = %for.cond.cleanup
  store i32 2, ptr %pcoder, align 8, !dbg !501, !tbaa !341
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters) #7, !dbg !500
  br label %sw.bb110

sw.bb110:                                         ; preds = %cleanup107, %while.cond
  %15 = load ptr, ptr %code, align 8, !dbg !502, !tbaa !503
  %16 = load ptr, ptr %block_decoder, align 8, !dbg !504, !tbaa !505
  %call115 = call i32 %15(ptr noundef %16, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #7, !dbg !506
  call void @llvm.dbg.value(metadata i32 %call115, metadata !382, metadata !DIExpression()), !dbg !507
  %cmp116.not = icmp eq i32 %call115, 1, !dbg !508
  br i1 %cmp116.not, label %do.body120, label %cleanup249, !dbg !510

do.body120:                                       ; preds = %sw.bb110
  %17 = load ptr, ptr %index_hash144, align 8, !dbg !511, !tbaa !278
  %call123 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %block_options51) #7, !dbg !511
  %18 = load i64, ptr %uncompressed_size, align 8, !dbg !511, !tbaa !512
  %call125 = call i32 @lzma_index_hash_append(ptr noundef %17, i64 noundef %call123, i64 noundef %18) #7, !dbg !511
  call void @llvm.dbg.value(metadata i32 %call125, metadata !384, metadata !DIExpression()), !dbg !513
  %cmp126.not = icmp eq i32 %call125, 0, !dbg !514
  br i1 %cmp126.not, label %cleanup136, label %cleanup249

cleanup136:                                       ; preds = %do.body120
  store i32 1, ptr %pcoder, align 8, !dbg !516, !tbaa !341
  br label %while.cond.backedge

sw.bb138:                                         ; preds = %while.cond
  %19 = load i64, ptr %in_pos, align 8, !dbg !517, !tbaa !306
  %cmp139.not = icmp ult i64 %19, %in_size, !dbg !519
  br i1 %cmp139.not, label %if.end142, label %cleanup249, !dbg !520

if.end142:                                        ; preds = %sw.bb138
  %20 = load ptr, ptr %index_hash144, align 8, !dbg !521, !tbaa !278
  %call145 = call i32 @lzma_index_hash_decode(ptr noundef %20, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #7, !dbg !522
  call void @llvm.dbg.value(metadata i32 %call145, metadata !386, metadata !DIExpression()), !dbg !523
  %cmp146.not = icmp eq i32 %call145, 1, !dbg !524
  br i1 %cmp146.not, label %cleanup151.thread, label %cleanup249, !dbg !526

cleanup151.thread:                                ; preds = %if.end142
  store i32 4, ptr %pcoder, align 8, !dbg !527, !tbaa !341
  br label %sw.bb154

sw.bb154:                                         ; preds = %cleanup151.thread, %while.cond
  %call158 = call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer155, ptr noundef nonnull %pos157, i64 noundef 12) #7, !dbg !528
  %21 = load i64, ptr %pos157, align 8, !dbg !529, !tbaa !344
  %cmp160 = icmp ult i64 %21, 12, !dbg !531
  br i1 %cmp160, label %cleanup249, label %if.end163, !dbg !532

if.end163:                                        ; preds = %sw.bb154
  store i64 0, ptr %pos157, align 8, !dbg !533, !tbaa !344
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %footer_flags) #7, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %footer_flags, metadata !388, metadata !DIExpression()), !dbg !535
  %call168 = call i32 @lzma_stream_footer_decode(ptr noundef nonnull %footer_flags, ptr noundef nonnull %buffer155) #7, !dbg !536
  call void @llvm.dbg.value(metadata i32 %call168, metadata !390, metadata !DIExpression()), !dbg !537
  %cmp169.not = icmp eq i32 %call168, 0, !dbg !538
  br i1 %cmp169.not, label %if.end178, label %if.then171, !dbg !540

if.then171:                                       ; preds = %if.end163
  %cmp172 = icmp eq i32 %call168, 7, !dbg !541
  %spec.select = select i1 %cmp172, i32 9, i32 %call168, !dbg !542
  br label %cleanup202.thread, !dbg !543

if.end178:                                        ; preds = %if.end163
  %22 = load ptr, ptr %index_hash144, align 8, !dbg !544, !tbaa !278
  %call180 = call i64 @lzma_index_hash_size(ptr noundef %22) #7, !dbg !546
  %23 = load i64, ptr %backward_size, align 8, !dbg !547, !tbaa !548
  %cmp181.not = icmp eq i64 %call180, %23, !dbg !549
  br i1 %cmp181.not, label %do.body185, label %cleanup202.thread, !dbg !550

do.body185:                                       ; preds = %if.end178
  %call188 = call i32 @lzma_stream_flags_compare(ptr noundef nonnull %stream_flags187, ptr noundef nonnull %footer_flags) #7, !dbg !551
  call void @llvm.dbg.value(metadata i32 %call188, metadata !391, metadata !DIExpression()), !dbg !552
  %cmp189.not = icmp eq i32 %call188, 0, !dbg !553
  br i1 %cmp189.not, label %do.end197, label %cleanup202.thread

do.end197:                                        ; preds = %do.body185
  %24 = load i8, ptr %concatenated, align 1, !dbg !555, !tbaa !330, !range !410
  %tobool198.not = icmp eq i8 %24, 0, !dbg !555
  br i1 %tobool198.not, label %cleanup202.thread, label %cleanup202, !dbg !557

cleanup202.thread:                                ; preds = %do.body185, %if.end178, %do.end197, %if.then171
  %retval.12.ph = phi i32 [ %spec.select, %if.then171 ], [ %call188, %do.body185 ], [ 9, %if.end178 ], [ 1, %do.end197 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %footer_flags) #7, !dbg !558
  br label %cleanup249

cleanup202:                                       ; preds = %do.end197
  store i32 5, ptr %pcoder, align 8, !dbg !559, !tbaa !341
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %footer_flags) #7, !dbg !558
  br label %sw.bb206

sw.bb206:                                         ; preds = %cleanup202, %while.cond
  %in_pos.promoted = load i64, ptr %in_pos, align 8, !tbaa !306
  %cmp209.not388 = icmp ult i64 %in_pos.promoted, %in_size, !dbg !560
  br i1 %cmp209.not388, label %if.end220, label %if.then211, !dbg !563

if.then211:                                       ; preds = %sw.bb206, %if.end226
  %cmp212.not = icmp eq i32 %action, 3, !dbg !564
  br i1 %cmp212.not, label %if.end215, label %cleanup249, !dbg !567

if.end215:                                        ; preds = %if.then211
  %25 = load i64, ptr %pos157, align 8, !dbg !568, !tbaa !344
  %cmp217 = icmp eq i64 %25, 0, !dbg !569
  %cond219 = select i1 %cmp217, i32 1, i32 9, !dbg !570
  br label %cleanup249, !dbg !571

if.end220:                                        ; preds = %sw.bb206, %if.end226
  %26 = phi i64 [ %inc227, %if.end226 ], [ %in_pos.promoted, %sw.bb206 ]
  %arrayidx221 = getelementptr inbounds i8, ptr %in, i64 %26, !dbg !572
  %27 = load i8, ptr %arrayidx221, align 1, !dbg !572, !tbaa !441
  %cmp223.not = icmp eq i8 %27, 0, !dbg !574
  br i1 %cmp223.not, label %if.end226, label %while.end, !dbg !575

if.end226:                                        ; preds = %if.end220
  %inc227 = add i64 %26, 1, !dbg !576
  store i64 %inc227, ptr %in_pos, align 8, !dbg !576, !tbaa !306
  %28 = load i64, ptr %pos157, align 8, !dbg !577, !tbaa !344
  %add229 = add i64 %28, 1, !dbg !578
  %and = and i64 %add229, 3, !dbg !579
  store i64 %and, ptr %pos157, align 8, !dbg !580, !tbaa !344
  %exitcond.not = icmp eq i64 %inc227, %in_size, !dbg !560
  br i1 %exitcond.not, label %if.then211, label %if.end220, !dbg !563, !llvm.loop !581

while.end:                                        ; preds = %if.end220
  %29 = load i64, ptr %pos157, align 8, !dbg !584, !tbaa !344
  %cmp232.not = icmp eq i64 %29, 0, !dbg !586
  br i1 %cmp232.not, label %do.body237, label %if.then234, !dbg !587

if.then234:                                       ; preds = %while.end
  %inc235 = add nuw i64 %26, 1, !dbg !588
  store i64 %inc235, ptr %in_pos, align 8, !dbg !588, !tbaa !306
  br label %cleanup249, !dbg !590

do.body237:                                       ; preds = %while.end
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !274, metadata !DIExpression()) #7, !dbg !591
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !275, metadata !DIExpression()) #7, !dbg !591
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !276, metadata !DIExpression()) #7, !dbg !591
  %30 = load ptr, ptr %index_hash144, align 8, !dbg !593, !tbaa !278
  %call.i = call ptr @lzma_index_hash_init(ptr noundef %30, ptr noundef %allocator) #7, !dbg !594
  store ptr %call.i, ptr %index_hash144, align 8, !dbg !595, !tbaa !278
  %cmp.i = icmp eq ptr %call.i, null, !dbg !596
  br i1 %cmp.i, label %cleanup249, label %stream_decoder_reset.exit.thread, !dbg !597

stream_decoder_reset.exit.thread:                 ; preds = %do.body237
  store i32 0, ptr %pcoder, align 8, !dbg !598, !tbaa !341
  store i64 0, ptr %pos157, align 8, !dbg !599, !tbaa !344
  call void @llvm.dbg.value(metadata i32 5, metadata !393, metadata !DIExpression()), !dbg !600
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %stream_decoder_reset.exit.thread, %cleanup136, %if.then41
  %.be = phi i32 [ 1, %cleanup136 ], [ 3, %if.then41 ], [ 0, %stream_decoder_reset.exit.thread ]
  br label %while.cond, !dbg !398, !llvm.loop !601

cleanup249:                                       ; preds = %do.body237, %if.end9, %sw.bb110, %do.body120, %land.lhs.true22, %if.end142, %while.cond, %sw.bb154, %sw.bb138, %if.end47, %sw.bb32, %sw.bb, %cleanup, %cond.false, %land.lhs.true, %cleanup202.thread, %cleanup107.thread, %if.then211, %if.then234, %if.end215
  %retval.16 = phi i32 [ %cond219, %if.end215 ], [ 9, %if.then234 ], [ 0, %if.then211 ], [ %retval.5.ph, %cleanup107.thread ], [ %retval.12.ph, %cleanup202.thread ], [ 9, %land.lhs.true ], [ %call5, %cond.false ], [ 5, %do.body237 ], [ 2, %if.end9 ], [ %call125, %do.body120 ], [ %call115, %sw.bb110 ], [ 3, %land.lhs.true22 ], [ %call145, %if.end142 ], [ 11, %while.cond ], [ 0, %sw.bb154 ], [ 0, %sw.bb138 ], [ 0, %if.end47 ], [ 0, %sw.bb32 ], [ 0, %sw.bb ], [ 4, %cleanup ], !dbg !603
  ret i32 %retval.16, !dbg !604
}

; Function Attrs: nounwind uwtable
define internal void @stream_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !605 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !607, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !608, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !609, metadata !DIExpression()), !dbg !610
  %block_decoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !611
  tail call void @lzma_next_end(ptr noundef nonnull %block_decoder, ptr noundef %allocator) #7, !dbg !612
  %index_hash = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !613
  %0 = load ptr, ptr %index_hash, align 8, !dbg !613, !tbaa !278
  tail call void @lzma_index_hash_end(ptr noundef %0, ptr noundef %allocator) #7, !dbg !614
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #7, !dbg !615
  ret void, !dbg !616
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i32 @stream_decoder_get_check(ptr nocapture noundef readonly %pcoder) #3 !dbg !617 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !619, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !620, metadata !DIExpression()), !dbg !623
  %check = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i32 2, !dbg !624
  %0 = load i32, ptr %check, align 8, !dbg !624, !tbaa !414
  ret i32 %0, !dbg !625
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal i32 @stream_decoder_memconfig(ptr nocapture noundef %pcoder, ptr nocapture noundef writeonly %memusage, ptr nocapture noundef writeonly %old_memlimit, i64 noundef %new_memlimit) #4 !dbg !626 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !628, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata ptr %memusage, metadata !629, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata ptr %old_memlimit, metadata !630, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i64 %new_memlimit, metadata !631, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !632, metadata !DIExpression()), !dbg !633
  %memusage1 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6, !dbg !634
  %0 = load i64, ptr %memusage1, align 8, !dbg !634, !tbaa !318
  store i64 %0, ptr %memusage, align 8, !dbg !635, !tbaa !306
  %memlimit = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, !dbg !636
  %1 = load i64, ptr %memlimit, align 8, !dbg !636, !tbaa !315
  store i64 %1, ptr %old_memlimit, align 8, !dbg !637, !tbaa !306
  %cmp.not = icmp eq i64 %new_memlimit, 0, !dbg !638
  br i1 %cmp.not, label %cleanup, label %if.then, !dbg !640

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %memusage1, align 8, !dbg !641, !tbaa !318
  %cmp3 = icmp ugt i64 %2, %new_memlimit, !dbg !644
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !645

if.end:                                           ; preds = %if.then
  store i64 %new_memlimit, ptr %memlimit, align 8, !dbg !646, !tbaa !315
  br label %cleanup, !dbg !647

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 6, %if.then ], [ 0, %if.end ], [ 0, %entry ], !dbg !633
  ret i32 %retval.0, !dbg !648
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_decoder(ptr noundef %strm, i64 noundef %memlimit, i32 noundef %flags) local_unnamed_addr #0 !dbg !649 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !677, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i64 %memlimit, metadata !678, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i32 %flags, metadata !679, metadata !DIExpression()), !dbg !684
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #7, !dbg !685
  call void @llvm.dbg.value(metadata i32 %call, metadata !680, metadata !DIExpression()), !dbg !686
  %cmp.not = icmp eq i32 %call, 0, !dbg !687
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !689
  %0 = load ptr, ptr %internal, align 8, !dbg !689, !tbaa !690
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !689
  %1 = load ptr, ptr %allocator, align 8, !dbg !689, !tbaa !692
  %call3 = tail call i32 @lzma_stream_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %memlimit, i32 noundef %flags), !dbg !689
  call void @llvm.dbg.value(metadata i32 %call3, metadata !683, metadata !DIExpression()), !dbg !693
  %cmp4.not = icmp eq i32 %call3, 0, !dbg !694
  br i1 %cmp4.not, label %do.end10, label %cleanup7, !dbg !689

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #7, !dbg !696
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !698, !tbaa !690
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, !dbg !699
  store i8 1, ptr %supported_actions, align 8, !dbg !700, !tbaa !701
  %arrayidx14 = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, i64 3, !dbg !702
  store i8 1, ptr %arrayidx14, align 1, !dbg !703, !tbaa !701
  br label %return, !dbg !704

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !684
  ret i32 %retval.2, !dbg !705
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare !dbg !706 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

declare !dbg !709 void @lzma_end(ptr noundef) local_unnamed_addr #2

declare !dbg !712 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !715 i32 @lzma_stream_header_decode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !719 zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #2

declare !dbg !722 i32 @lzma_block_header_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !726 i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #2

declare !dbg !729 i32 @lzma_block_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !733 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !736 i32 @lzma_index_hash_append(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !739 i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare !dbg !744 i32 @lzma_index_hash_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !747 i32 @lzma_stream_footer_decode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !748 i64 @lzma_index_hash_size(ptr noundef) local_unnamed_addr #2

declare !dbg !753 i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !758 void @lzma_index_hash_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !761 ptr @lzma_index_hash_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236}
!llvm.ident = !{!237}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !229, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "31c1350369f43f430bea3ddc3de42944")
!2 = !{!3, !19, !25, !32, !149, !211}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !33, line: 18, baseType: !5, size: 32, elements: !204)
!33 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/stream_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "31c1350369f43f430bea3ddc3de42944")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !33, line: 17, size: 11200, elements: !35)
!35 = !{!36, !37, !118, !164, !186, !191, !192, !193, !195, !196, !197, !198, !199, !200}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !34, file: !33, line: 25, baseType: !32, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "block_decoder", scope: !34, file: !33, line: 30, baseType: !38, size: 512, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !39, line: 80, baseType: !40)
!39 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !39, line: 124, size: 512, elements: !41)
!41 = !{!42, !45, !53, !56, !89, !94, !101, !106}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !40, file: !39, line: 126, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !39, line: 78, baseType: null)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !40, file: !39, line: 130, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !47, line: 63, baseType: !48)
!47 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !49, line: 27, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !51, line: 45, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !40, file: !39, line: 136, baseType: !54, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !55, line: 90, baseType: !52)
!55 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!56 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !40, file: !39, line: 139, baseType: !57, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !39, line: 94, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !43, !62, !78, !84, !71, !86, !84, !71, !88}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !65)
!65 = !{!66, !73, !77}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !64, file: !4, line: 376, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !70, !71, !71}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !52)
!72 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !64, file: !4, line: 390, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !70, !70}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !64, file: !4, line: 401, baseType: !70, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !49, line: 24, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !51, line: 38, baseType: !83)
!83 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !40, file: !39, line: 144, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !39, line: 102, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !43, !62}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !40, file: !39, line: 148, baseType: !95, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !40, file: !39, line: 152, baseType: !102, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!61, !43, !105, !105, !48}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !40, file: !39, line: 157, baseType: !107, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!61, !43, !62, !110, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !113, line: 65, baseType: !114)
!113 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 43, size: 128, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !114, file: !113, line: 54, baseType: !46, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !114, file: !113, line: 63, baseType: !70, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "block_options", scope: !34, file: !33, line: 34, baseType: !119, size: 1664, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !120, line: 245, baseType: !121)
!120 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/block.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 30, size: 1664, elements: !122)
!122 = !{!123, !126, !127, !128, !129, !130, !132, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !152, !153, !154, !155, !157, !158, !159, !160, !161, !162, !163}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !121, file: !120, line: 47, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !49, line: 26, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !51, line: 42, baseType: !5)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !121, file: !120, line: 67, baseType: !124, size: 32, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !121, file: !120, line: 88, baseType: !98, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !121, file: !120, line: 143, baseType: !46, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !121, file: !120, line: 167, baseType: !46, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !121, file: !120, line: 195, baseType: !131, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !121, file: !120, line: 212, baseType: !133, size: 512, offset: 320)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 512, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !121, file: !120, line: 221, baseType: !70, size: 64, offset: 832)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !121, file: !120, line: 222, baseType: !70, size: 64, offset: 896)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !121, file: !120, line: 223, baseType: !70, size: 64, offset: 960)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !121, file: !120, line: 224, baseType: !124, size: 32, offset: 1024)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !121, file: !120, line: 225, baseType: !124, size: 32, offset: 1056)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !121, file: !120, line: 226, baseType: !46, size: 64, offset: 1088)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !121, file: !120, line: 227, baseType: !46, size: 64, offset: 1152)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !121, file: !120, line: 228, baseType: !46, size: 64, offset: 1216)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !121, file: !120, line: 229, baseType: !46, size: 64, offset: 1280)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !121, file: !120, line: 230, baseType: !46, size: 64, offset: 1344)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !121, file: !120, line: 231, baseType: !46, size: 64, offset: 1408)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !121, file: !120, line: 232, baseType: !148, size: 32, offset: 1472)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !150)
!150 = !{!151}
!151 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !121, file: !120, line: 233, baseType: !148, size: 32, offset: 1504)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !121, file: !120, line: 234, baseType: !148, size: 32, offset: 1536)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !121, file: !120, line: 235, baseType: !148, size: 32, offset: 1568)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !121, file: !120, line: 236, baseType: !156, size: 8, offset: 1600)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !83)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !121, file: !120, line: 237, baseType: !156, size: 8, offset: 1608)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !121, file: !120, line: 238, baseType: !156, size: 8, offset: 1616)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !121, file: !120, line: 239, baseType: !156, size: 8, offset: 1624)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !121, file: !120, line: 240, baseType: !156, size: 8, offset: 1632)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !121, file: !120, line: 241, baseType: !156, size: 8, offset: 1640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !121, file: !120, line: 242, baseType: !156, size: 8, offset: 1648)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !121, file: !120, line: 243, baseType: !156, size: 8, offset: 1656)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "stream_flags", scope: !34, file: !33, line: 37, baseType: !165, size: 448, offset: 2240)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !166, line: 105, baseType: !167)
!166 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/stream_flags.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !166, line: 33, size: 448, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !167, file: !166, line: 51, baseType: !124, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !167, file: !166, line: 69, baseType: !46, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !167, file: !166, line: 79, baseType: !98, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !167, file: !166, line: 90, baseType: !148, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !167, file: !166, line: 91, baseType: !148, size: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !167, file: !166, line: 92, baseType: !148, size: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !167, file: !166, line: 93, baseType: !148, size: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !167, file: !166, line: 94, baseType: !156, size: 8, offset: 288)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !167, file: !166, line: 95, baseType: !156, size: 8, offset: 296)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !167, file: !166, line: 96, baseType: !156, size: 8, offset: 304)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !167, file: !166, line: 97, baseType: !156, size: 8, offset: 312)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !167, file: !166, line: 98, baseType: !156, size: 8, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !167, file: !166, line: 99, baseType: !156, size: 8, offset: 328)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !167, file: !166, line: 100, baseType: !156, size: 8, offset: 336)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !167, file: !166, line: 101, baseType: !156, size: 8, offset: 344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !167, file: !166, line: 102, baseType: !124, size: 32, offset: 352)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !167, file: !166, line: 103, baseType: !124, size: 32, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "index_hash", scope: !34, file: !33, line: 41, baseType: !187, size: 64, offset: 2688)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_hash", file: !189, line: 25, baseType: !190)
!189 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/index_hash.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "93f41ec399d5b72fa726dbb2f572cbec")
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_hash_s", file: !189, line: 25, flags: DIFlagFwdDecl)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "memlimit", scope: !34, file: !33, line: 44, baseType: !48, size: 64, offset: 2752)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !34, file: !33, line: 47, baseType: !48, size: 64, offset: 2816)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tell_no_check", scope: !34, file: !33, line: 51, baseType: !194, size: 8, offset: 2880)
!194 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tell_unsupported_check", scope: !34, file: !33, line: 55, baseType: !194, size: 8, offset: 2888)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tell_any_check", scope: !34, file: !33, line: 58, baseType: !194, size: 8, offset: 2896)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "concatenated", scope: !34, file: !33, line: 65, baseType: !194, size: 8, offset: 2904)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "first_stream", scope: !34, file: !33, line: 71, baseType: !194, size: 8, offset: 2912)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !34, file: !33, line: 74, baseType: !71, size: 64, offset: 2944)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !34, file: !33, line: 78, baseType: !201, size: 8192, offset: 3008)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 8192, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 1024)
!204 = !{!205, !206, !207, !208, !209, !210}
!205 = !DIEnumerator(name: "SEQ_STREAM_HEADER", value: 0)
!206 = !DIEnumerator(name: "SEQ_BLOCK_HEADER", value: 1)
!207 = !DIEnumerator(name: "SEQ_BLOCK", value: 2)
!208 = !DIEnumerator(name: "SEQ_INDEX", value: 3)
!209 = !DIEnumerator(name: "SEQ_STREAM_FOOTER", value: 4)
!210 = !DIEnumerator(name: "SEQ_STREAM_PADDING", value: 5)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !212, file: !39, line: 187, baseType: !5, size: 32, elements: !222)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !39, line: 179, size: 704, elements: !213)
!213 = !{!214, !215, !216, !217, !221}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !39, line: 181, baseType: !38, size: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !212, file: !39, line: 194, baseType: !211, size: 32, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !212, file: !39, line: 199, baseType: !71, size: 64, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !212, file: !39, line: 202, baseType: !218, size: 32, offset: 640)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 32, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 4)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !212, file: !39, line: 206, baseType: !194, size: 8, offset: 672)
!222 = !{!223, !224, !225, !226, !227, !228}
!223 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!224 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!225 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!226 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!227 = !DIEnumerator(name: "ISEQ_END", value: 4)
!228 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!229 = !{!54, !70, !230, !124}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!231 = !{i32 7, !"Dwarf Version", i32 5}
!232 = !{i32 2, !"Debug Info Version", i32 3}
!233 = !{i32 1, !"wchar_size", i32 4}
!234 = !{i32 7, !"PIC Level", i32 2}
!235 = !{i32 7, !"PIE Level", i32 2}
!236 = !{i32 7, !"uwtable", i32 2}
!237 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!238 = distinct !DISubprogram(name: "lzma_stream_decoder_init", scope: !33, file: !33, line: 409, type: !239, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !242)
!239 = !DISubroutineType(types: !240)
!240 = !{!61, !241, !62, !48, !124}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!242 = !{!243, !244, !245, !246}
!243 = !DILocalVariable(name: "next", arg: 1, scope: !238, file: !33, line: 409, type: !241)
!244 = !DILocalVariable(name: "allocator", arg: 2, scope: !238, file: !33, line: 409, type: !62)
!245 = !DILocalVariable(name: "memlimit", arg: 3, scope: !238, file: !33, line: 410, type: !48)
!246 = !DILocalVariable(name: "flags", arg: 4, scope: !238, file: !33, line: 410, type: !124)
!247 = !DILocation(line: 0, scope: !238)
!248 = !DILocation(line: 412, column: 2, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !33, line: 412, column: 2)
!250 = distinct !DILexicalBlock(scope: !238, file: !33, line: 412, column: 2)
!251 = !{!252, !256, i64 16}
!252 = !{!"lzma_next_coder_s", !253, i64 0, !256, i64 8, !256, i64 16, !253, i64 24, !253, i64 32, !253, i64 40, !253, i64 48, !253, i64 56}
!253 = !{!"any pointer", !254, i64 0}
!254 = !{!"omnipotent char", !255, i64 0}
!255 = !{!"Simple C/C++ TBAA"}
!256 = !{!"long", !254, i64 0}
!257 = !DILocation(line: 412, column: 2, scope: !250)
!258 = !DILocation(line: 414, column: 15, scope: !259)
!259 = distinct !DILexicalBlock(scope: !238, file: !33, line: 414, column: 6)
!260 = !DILocation(line: 414, column: 6, scope: !238)
!261 = !DILocation(line: 417, column: 12, scope: !262)
!262 = distinct !DILexicalBlock(scope: !238, file: !33, line: 417, column: 6)
!263 = !DILocation(line: 417, column: 6, scope: !238)
!264 = !DILocation(line: 420, column: 12, scope: !265)
!265 = distinct !DILexicalBlock(scope: !238, file: !33, line: 420, column: 6)
!266 = !{!252, !253, i64 0}
!267 = !DILocation(line: 420, column: 18, scope: !265)
!268 = !DILocation(line: 420, column: 6, scope: !238)
!269 = !DILocation(line: 87, column: 50, scope: !270, inlinedAt: !277)
!270 = distinct !DISubprogram(name: "stream_decoder_reset", scope: !33, file: !33, line: 83, type: !271, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{!61, !43, !62}
!273 = !{!274, !275, !276}
!274 = !DILocalVariable(name: "pcoder", arg: 1, scope: !270, file: !33, line: 83, type: !43)
!275 = !DILocalVariable(name: "allocator", arg: 2, scope: !270, file: !33, line: 83, type: !62)
!276 = !DILocalVariable(name: "coder", scope: !270, file: !33, line: 85, type: !230)
!277 = distinct !DILocation(line: 443, column: 9, scope: !238)
!278 = !{!279, !253, i64 336}
!279 = !{!"lzma_coder_s", !254, i64 0, !252, i64 8, !280, i64 72, !282, i64 280, !253, i64 336, !256, i64 344, !256, i64 352, !283, i64 360, !283, i64 361, !283, i64 362, !283, i64 363, !283, i64 364, !256, i64 368, !254, i64 376}
!280 = !{!"", !281, i64 0, !281, i64 4, !254, i64 8, !256, i64 16, !256, i64 24, !253, i64 32, !254, i64 40, !253, i64 104, !253, i64 112, !253, i64 120, !281, i64 128, !281, i64 132, !256, i64 136, !256, i64 144, !256, i64 152, !256, i64 160, !256, i64 168, !256, i64 176, !254, i64 184, !254, i64 188, !254, i64 192, !254, i64 196, !254, i64 200, !254, i64 201, !254, i64 202, !254, i64 203, !254, i64 204, !254, i64 205, !254, i64 206, !254, i64 207}
!281 = !{!"int", !254, i64 0}
!282 = !{!"", !281, i64 0, !256, i64 8, !254, i64 16, !254, i64 20, !254, i64 24, !254, i64 28, !254, i64 32, !254, i64 36, !254, i64 37, !254, i64 38, !254, i64 39, !254, i64 40, !254, i64 41, !254, i64 42, !254, i64 43, !281, i64 44, !281, i64 48}
!283 = !{!"_Bool", !254, i64 0}
!284 = !DILocation(line: 421, column: 17, scope: !285)
!285 = distinct !DILexicalBlock(scope: !265, file: !33, line: 420, column: 27)
!286 = !DILocation(line: 421, column: 15, scope: !285)
!287 = !DILocation(line: 422, column: 19, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !33, line: 422, column: 7)
!289 = !DILocation(line: 422, column: 7, scope: !285)
!290 = !DILocation(line: 425, column: 9, scope: !285)
!291 = !DILocation(line: 425, column: 14, scope: !285)
!292 = !{!252, !253, i64 24}
!293 = !DILocation(line: 426, column: 9, scope: !285)
!294 = !DILocation(line: 426, column: 13, scope: !285)
!295 = !{!252, !253, i64 32}
!296 = !DILocation(line: 427, column: 9, scope: !285)
!297 = !DILocation(line: 427, column: 19, scope: !285)
!298 = !{!252, !253, i64 40}
!299 = !DILocation(line: 428, column: 9, scope: !285)
!300 = !DILocation(line: 428, column: 19, scope: !285)
!301 = !{!252, !253, i64 48}
!302 = !DILocation(line: 430, column: 40, scope: !285)
!303 = !DILocation(line: 430, column: 56, scope: !285)
!304 = !{i64 0, i64 8, !305, i64 8, i64 8, !306, i64 16, i64 8, !306, i64 24, i64 8, !305, i64 32, i64 8, !305, i64 40, i64 8, !305, i64 48, i64 8, !305, i64 56, i64 8, !305}
!305 = !{!253, !253, i64 0}
!306 = !{!256, !256, i64 0}
!307 = !{i64 0, i64 8, !306, i64 8, i64 8, !306, i64 16, i64 8, !305, i64 24, i64 8, !305, i64 32, i64 8, !305, i64 40, i64 8, !305, i64 48, i64 8, !305}
!308 = !DILocation(line: 431, column: 32, scope: !285)
!309 = !DILocation(line: 431, column: 40, scope: !285)
!310 = !DILocation(line: 431, column: 51, scope: !285)
!311 = !DILocation(line: 432, column: 2, scope: !285)
!312 = !DILocation(line: 434, column: 31, scope: !238)
!313 = !DILocation(line: 434, column: 39, scope: !238)
!314 = !DILocation(line: 434, column: 48, scope: !238)
!315 = !{!279, !256, i64 344}
!316 = !DILocation(line: 435, column: 39, scope: !238)
!317 = !DILocation(line: 435, column: 48, scope: !238)
!318 = !{!279, !256, i64 352}
!319 = !DILocation(line: 436, column: 39, scope: !238)
!320 = !DILocation(line: 436, column: 53, scope: !238)
!321 = !{!279, !283, i64 360}
!322 = !DILocation(line: 437, column: 39, scope: !238)
!323 = !DILocation(line: 438, column: 4, scope: !238)
!324 = !{!279, !283, i64 361}
!325 = !DILocation(line: 439, column: 39, scope: !238)
!326 = !DILocation(line: 439, column: 54, scope: !238)
!327 = !{!279, !283, i64 362}
!328 = !DILocation(line: 440, column: 39, scope: !238)
!329 = !DILocation(line: 440, column: 52, scope: !238)
!330 = !{!279, !283, i64 363}
!331 = !DILocation(line: 441, column: 39, scope: !238)
!332 = !DILocation(line: 441, column: 52, scope: !238)
!333 = !{!279, !283, i64 364}
!334 = !DILocation(line: 0, scope: !270, inlinedAt: !277)
!335 = !DILocation(line: 87, column: 22, scope: !270, inlinedAt: !277)
!336 = !DILocation(line: 87, column: 20, scope: !270, inlinedAt: !277)
!337 = !DILocation(line: 88, column: 24, scope: !338, inlinedAt: !277)
!338 = distinct !DILexicalBlock(scope: !270, file: !33, line: 88, column: 6)
!339 = !DILocation(line: 88, column: 6, scope: !270, inlinedAt: !277)
!340 = !DILocation(line: 92, column: 18, scope: !270, inlinedAt: !277)
!341 = !{!279, !254, i64 0}
!342 = !DILocation(line: 93, column: 9, scope: !270, inlinedAt: !277)
!343 = !DILocation(line: 93, column: 13, scope: !270, inlinedAt: !277)
!344 = !{!279, !256, i64 368}
!345 = !DILocation(line: 95, column: 2, scope: !270, inlinedAt: !277)
!346 = !DILocation(line: 444, column: 1, scope: !238)
!347 = !DISubprogram(name: "lzma_next_end", scope: !39, file: !39, line: 237, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !241, !62}
!350 = !{}
!351 = !DISubprogram(name: "lzma_alloc", scope: !39, file: !39, line: 211, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!352 = !DISubroutineType(types: !353)
!353 = !{!70, !71, !62}
!354 = distinct !DISubprogram(name: "stream_decode", scope: !33, file: !33, line: 100, type: !59, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !370, !375, !377, !379, !380, !382, !384, !386, !388, !390, !391, !393}
!356 = !DILocalVariable(name: "pcoder", arg: 1, scope: !354, file: !33, line: 100, type: !43)
!357 = !DILocalVariable(name: "allocator", arg: 2, scope: !354, file: !33, line: 100, type: !62)
!358 = !DILocalVariable(name: "in", arg: 3, scope: !354, file: !33, line: 101, type: !78)
!359 = !DILocalVariable(name: "in_pos", arg: 4, scope: !354, file: !33, line: 101, type: !84)
!360 = !DILocalVariable(name: "in_size", arg: 5, scope: !354, file: !33, line: 102, type: !71)
!361 = !DILocalVariable(name: "out", arg: 6, scope: !354, file: !33, line: 102, type: !86)
!362 = !DILocalVariable(name: "out_pos", arg: 7, scope: !354, file: !33, line: 103, type: !84)
!363 = !DILocalVariable(name: "out_size", arg: 8, scope: !354, file: !33, line: 103, type: !71)
!364 = !DILocalVariable(name: "action", arg: 9, scope: !354, file: !33, line: 103, type: !88)
!365 = !DILocalVariable(name: "coder", scope: !354, file: !33, line: 105, type: !230)
!366 = !DILocalVariable(name: "ret", scope: !367, file: !33, line: 122, type: !369)
!367 = distinct !DILexicalBlock(scope: !368, file: !33, line: 110, column: 26)
!368 = distinct !DILexicalBlock(scope: !354, file: !33, line: 109, column: 27)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!370 = !DILocalVariable(name: "filters", scope: !371, file: !33, line: 193, type: !372)
!371 = distinct !DILexicalBlock(scope: !368, file: !33, line: 158, column: 25)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 640, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 5)
!375 = !DILocalVariable(name: "ret_", scope: !376, file: !33, line: 197, type: !369)
!376 = distinct !DILexicalBlock(scope: !371, file: !33, line: 197, column: 3)
!377 = !DILocalVariable(name: "memusage", scope: !371, file: !33, line: 201, type: !378)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!379 = !DILocalVariable(name: "ret", scope: !371, file: !33, line: 202, type: !61)
!380 = !DILocalVariable(name: "i", scope: !381, file: !33, line: 229, type: !71)
!381 = distinct !DILexicalBlock(scope: !371, file: !33, line: 229, column: 3)
!382 = !DILocalVariable(name: "ret", scope: !383, file: !33, line: 245, type: !369)
!383 = distinct !DILexicalBlock(scope: !368, file: !33, line: 244, column: 18)
!384 = !DILocalVariable(name: "ret_", scope: !385, file: !33, line: 255, type: !369)
!385 = distinct !DILexicalBlock(scope: !383, file: !33, line: 255, column: 3)
!386 = !DILocalVariable(name: "ret", scope: !387, file: !33, line: 273, type: !369)
!387 = distinct !DILexicalBlock(scope: !368, file: !33, line: 264, column: 18)
!388 = !DILocalVariable(name: "footer_flags", scope: !389, file: !33, line: 297, type: !165)
!389 = distinct !DILexicalBlock(scope: !368, file: !33, line: 283, column: 26)
!390 = !DILocalVariable(name: "ret", scope: !389, file: !33, line: 298, type: !369)
!391 = !DILocalVariable(name: "ret_", scope: !392, file: !33, line: 312, type: !369)
!392 = distinct !DILexicalBlock(scope: !389, file: !33, line: 312, column: 3)
!393 = !DILocalVariable(name: "ret_", scope: !394, file: !33, line: 358, type: !369)
!394 = distinct !DILexicalBlock(scope: !368, file: !33, line: 358, column: 3)
!395 = !DILocation(line: 0, scope: !354)
!396 = !DILocation(line: 109, column: 17, scope: !354)
!397 = !DILocation(line: 108, column: 2, scope: !354)
!398 = !DILocation(line: 109, column: 2, scope: !354)
!399 = !DILocation(line: 112, column: 3, scope: !367)
!400 = !DILocation(line: 116, column: 14, scope: !401)
!401 = distinct !DILexicalBlock(scope: !367, file: !33, line: 116, column: 7)
!402 = !DILocation(line: 116, column: 18, scope: !401)
!403 = !DILocation(line: 116, column: 7, scope: !367)
!404 = !DILocation(line: 119, column: 14, scope: !367)
!405 = !DILocation(line: 122, column: 24, scope: !367)
!406 = !DILocation(line: 0, scope: !367)
!407 = !DILocation(line: 124, column: 7, scope: !367)
!408 = !DILocation(line: 125, column: 47, scope: !409)
!409 = distinct !DILexicalBlock(scope: !367, file: !33, line: 124, column: 7)
!410 = !{i8 0, i8 2}
!411 = !DILocation(line: 125, column: 11, scope: !409)
!412 = !DILocation(line: 131, column: 23, scope: !367)
!413 = !DILocation(line: 135, column: 52, scope: !367)
!414 = !{!279, !254, i64 296}
!415 = !DILocation(line: 135, column: 30, scope: !367)
!416 = !{!279, !254, i64 80}
!417 = !DILocation(line: 139, column: 19, scope: !367)
!418 = !DILocation(line: 143, column: 14, scope: !419)
!419 = distinct !DILexicalBlock(scope: !367, file: !33, line: 143, column: 7)
!420 = !DILocation(line: 143, column: 28, scope: !419)
!421 = !DILocation(line: 147, column: 14, scope: !422)
!422 = distinct !DILexicalBlock(scope: !367, file: !33, line: 147, column: 7)
!423 = !DILocation(line: 148, column: 5, scope: !422)
!424 = !DILocation(line: 148, column: 9, scope: !422)
!425 = !DILocation(line: 147, column: 7, scope: !367)
!426 = !DILocation(line: 152, column: 14, scope: !427)
!427 = distinct !DILexicalBlock(scope: !367, file: !33, line: 152, column: 7)
!428 = !DILocation(line: 159, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !371, file: !33, line: 159, column: 7)
!430 = !DILocation(line: 159, column: 15, scope: !429)
!431 = !DILocation(line: 159, column: 7, scope: !371)
!432 = !DILocation(line: 162, column: 14, scope: !433)
!433 = distinct !DILexicalBlock(scope: !371, file: !33, line: 162, column: 7)
!434 = !DILocation(line: 162, column: 18, scope: !433)
!435 = !DILocation(line: 162, column: 7, scope: !371)
!436 = !DILocation(line: 179, column: 26, scope: !371)
!437 = !{!279, !281, i64 76}
!438 = !DILocation(line: 164, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !33, line: 164, column: 8)
!440 = distinct !DILexicalBlock(scope: !433, file: !33, line: 162, column: 24)
!441 = !{!254, !254, i64 0}
!442 = !DILocation(line: 164, column: 20, scope: !439)
!443 = !DILocation(line: 164, column: 8, scope: !440)
!444 = !DILocation(line: 165, column: 21, scope: !445)
!445 = distinct !DILexicalBlock(scope: !439, file: !33, line: 164, column: 29)
!446 = !DILocation(line: 166, column: 5, scope: !445)
!447 = !DILocation(line: 173, column: 8, scope: !440)
!448 = !DILocation(line: 173, column: 6, scope: !440)
!449 = !DILocation(line: 175, column: 3, scope: !440)
!450 = !DILocation(line: 179, column: 5, scope: !371)
!451 = !DILocation(line: 178, column: 3, scope: !371)
!452 = !DILocation(line: 182, column: 14, scope: !453)
!453 = distinct !DILexicalBlock(scope: !371, file: !33, line: 182, column: 7)
!454 = !DILocation(line: 182, column: 41, scope: !453)
!455 = !DILocation(line: 182, column: 20, scope: !453)
!456 = !DILocation(line: 182, column: 18, scope: !453)
!457 = !DILocation(line: 182, column: 7, scope: !371)
!458 = !DILocation(line: 185, column: 14, scope: !371)
!459 = !DILocation(line: 188, column: 32, scope: !371)
!460 = !{!279, !281, i64 72}
!461 = !DILocation(line: 193, column: 3, scope: !371)
!462 = !DILocation(line: 193, column: 15, scope: !371)
!463 = !DILocation(line: 194, column: 32, scope: !371)
!464 = !{!279, !253, i64 104}
!465 = !DILocation(line: 197, column: 3, scope: !376)
!466 = !DILocation(line: 0, scope: !376)
!467 = !DILocation(line: 197, column: 3, scope: !468)
!468 = distinct !DILexicalBlock(scope: !376, file: !33, line: 197, column: 3)
!469 = !DILocation(line: 201, column: 29, scope: !371)
!470 = !DILocation(line: 0, scope: !371)
!471 = !DILocation(line: 204, column: 16, scope: !472)
!472 = distinct !DILexicalBlock(scope: !371, file: !33, line: 204, column: 7)
!473 = !DILocation(line: 204, column: 7, scope: !371)
!474 = !DILocation(line: 212, column: 20, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !33, line: 207, column: 10)
!476 = !DILocation(line: 214, column: 26, scope: !477)
!477 = distinct !DILexicalBlock(scope: !475, file: !33, line: 214, column: 8)
!478 = !DILocation(line: 214, column: 17, scope: !477)
!479 = !DILocation(line: 214, column: 8, scope: !475)
!480 = !DILocation(line: 220, column: 11, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !33, line: 217, column: 11)
!482 = !DILocation(line: 0, scope: !472)
!483 = !DILocation(line: 0, scope: !381)
!484 = !DILocation(line: 229, column: 3, scope: !381)
!485 = !DILocation(line: 232, column: 32, scope: !371)
!486 = !DILocation(line: 236, column: 11, scope: !487)
!487 = distinct !DILexicalBlock(scope: !371, file: !33, line: 236, column: 7)
!488 = !DILocation(line: 236, column: 7, scope: !371)
!489 = !DILocation(line: 230, column: 25, scope: !490)
!490 = distinct !DILexicalBlock(scope: !381, file: !33, line: 229, column: 3)
!491 = !{!492, !253, i64 8}
!492 = !{!"", !256, i64 0, !253, i64 8}
!493 = !DILocation(line: 230, column: 4, scope: !490)
!494 = !DILocation(line: 229, column: 44, scope: !490)
!495 = !DILocation(line: 229, column: 24, scope: !490)
!496 = distinct !{!496, !484, !497, !498, !499}
!497 = !DILocation(line: 230, column: 43, scope: !381)
!498 = !{!"llvm.loop.mustprogress"}
!499 = !{!"llvm.loop.unroll.disable"}
!500 = !DILocation(line: 240, column: 2, scope: !368)
!501 = !DILocation(line: 239, column: 19, scope: !371)
!502 = !DILocation(line: 245, column: 45, scope: !383)
!503 = !{!279, !253, i64 32}
!504 = !DILocation(line: 246, column: 26, scope: !383)
!505 = !{!279, !253, i64 8}
!506 = !DILocation(line: 245, column: 24, scope: !383)
!507 = !DILocation(line: 0, scope: !383)
!508 = !DILocation(line: 250, column: 11, scope: !509)
!509 = distinct !DILexicalBlock(scope: !383, file: !33, line: 250, column: 7)
!510 = !DILocation(line: 250, column: 7, scope: !383)
!511 = !DILocation(line: 255, column: 3, scope: !385)
!512 = !{!279, !256, i64 96}
!513 = !DILocation(line: 0, scope: !385)
!514 = !DILocation(line: 255, column: 3, scope: !515)
!515 = distinct !DILexicalBlock(scope: !385, file: !33, line: 255, column: 3)
!516 = !DILocation(line: 260, column: 19, scope: !383)
!517 = !DILocation(line: 268, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !387, file: !33, line: 268, column: 7)
!519 = !DILocation(line: 268, column: 15, scope: !518)
!520 = !DILocation(line: 268, column: 7, scope: !387)
!521 = !DILocation(line: 273, column: 54, scope: !387)
!522 = !DILocation(line: 273, column: 24, scope: !387)
!523 = !DILocation(line: 0, scope: !387)
!524 = !DILocation(line: 275, column: 11, scope: !525)
!525 = distinct !DILexicalBlock(scope: !387, file: !33, line: 275, column: 7)
!526 = !DILocation(line: 275, column: 7, scope: !387)
!527 = !DILocation(line: 278, column: 19, scope: !387)
!528 = !DILocation(line: 285, column: 3, scope: !389)
!529 = !DILocation(line: 289, column: 14, scope: !530)
!530 = distinct !DILexicalBlock(scope: !389, file: !33, line: 289, column: 7)
!531 = !DILocation(line: 289, column: 18, scope: !530)
!532 = !DILocation(line: 289, column: 7, scope: !389)
!533 = !DILocation(line: 292, column: 14, scope: !389)
!534 = !DILocation(line: 297, column: 3, scope: !389)
!535 = !DILocation(line: 297, column: 21, scope: !389)
!536 = !DILocation(line: 298, column: 24, scope: !389)
!537 = !DILocation(line: 0, scope: !389)
!538 = !DILocation(line: 300, column: 11, scope: !539)
!539 = distinct !DILexicalBlock(scope: !389, file: !33, line: 300, column: 7)
!540 = !DILocation(line: 300, column: 7, scope: !389)
!541 = !DILocation(line: 301, column: 15, scope: !539)
!542 = !DILocation(line: 301, column: 11, scope: !539)
!543 = !DILocation(line: 301, column: 4, scope: !539)
!544 = !DILocation(line: 306, column: 35, scope: !545)
!545 = distinct !DILexicalBlock(scope: !389, file: !33, line: 306, column: 7)
!546 = !DILocation(line: 306, column: 7, scope: !545)
!547 = !DILocation(line: 307, column: 21, scope: !545)
!548 = !{!282, !256, i64 8}
!549 = !DILocation(line: 307, column: 5, scope: !545)
!550 = !DILocation(line: 306, column: 7, scope: !389)
!551 = !DILocation(line: 312, column: 3, scope: !392)
!552 = !DILocation(line: 0, scope: !392)
!553 = !DILocation(line: 312, column: 3, scope: !554)
!554 = distinct !DILexicalBlock(scope: !392, file: !33, line: 312, column: 3)
!555 = !DILocation(line: 315, column: 15, scope: !556)
!556 = distinct !DILexicalBlock(scope: !389, file: !33, line: 315, column: 7)
!557 = !DILocation(line: 315, column: 7, scope: !389)
!558 = !DILocation(line: 319, column: 2, scope: !368)
!559 = !DILocation(line: 318, column: 19, scope: !389)
!560 = !DILocation(line: 328, column: 16, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !33, line: 328, column: 8)
!562 = distinct !DILexicalBlock(scope: !368, file: !33, line: 327, column: 16)
!563 = !DILocation(line: 328, column: 8, scope: !562)
!564 = !DILocation(line: 331, column: 16, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !33, line: 331, column: 9)
!566 = distinct !DILexicalBlock(scope: !561, file: !33, line: 328, column: 28)
!567 = !DILocation(line: 331, column: 9, scope: !566)
!568 = !DILocation(line: 336, column: 19, scope: !566)
!569 = !DILocation(line: 336, column: 23, scope: !566)
!570 = !DILocation(line: 336, column: 12, scope: !566)
!571 = !DILocation(line: 336, column: 5, scope: !566)
!572 = !DILocation(line: 343, column: 8, scope: !573)
!573 = distinct !DILexicalBlock(scope: !562, file: !33, line: 343, column: 8)
!574 = !DILocation(line: 343, column: 20, scope: !573)
!575 = !DILocation(line: 343, column: 8, scope: !562)
!576 = !DILocation(line: 346, column: 4, scope: !562)
!577 = !DILocation(line: 347, column: 25, scope: !562)
!578 = !DILocation(line: 347, column: 29, scope: !562)
!579 = !DILocation(line: 347, column: 34, scope: !562)
!580 = !DILocation(line: 347, column: 15, scope: !562)
!581 = distinct !{!581, !582, !583, !499}
!582 = !DILocation(line: 327, column: 3, scope: !368)
!583 = !DILocation(line: 348, column: 3, scope: !368)
!584 = !DILocation(line: 352, column: 14, scope: !585)
!585 = distinct !DILexicalBlock(scope: !368, file: !33, line: 352, column: 7)
!586 = !DILocation(line: 352, column: 18, scope: !585)
!587 = !DILocation(line: 352, column: 7, scope: !368)
!588 = !DILocation(line: 353, column: 4, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !33, line: 352, column: 24)
!590 = !DILocation(line: 354, column: 4, scope: !589)
!591 = !DILocation(line: 0, scope: !270, inlinedAt: !592)
!592 = distinct !DILocation(line: 358, column: 3, scope: !394)
!593 = !DILocation(line: 87, column: 50, scope: !270, inlinedAt: !592)
!594 = !DILocation(line: 87, column: 22, scope: !270, inlinedAt: !592)
!595 = !DILocation(line: 87, column: 20, scope: !270, inlinedAt: !592)
!596 = !DILocation(line: 88, column: 24, scope: !338, inlinedAt: !592)
!597 = !DILocation(line: 88, column: 6, scope: !270, inlinedAt: !592)
!598 = !DILocation(line: 92, column: 18, scope: !270, inlinedAt: !592)
!599 = !DILocation(line: 93, column: 13, scope: !270, inlinedAt: !592)
!600 = !DILocation(line: 0, scope: !394)
!601 = distinct !{!601, !397, !602, !499}
!602 = !DILocation(line: 364, column: 2, scope: !354)
!603 = !DILocation(line: 0, scope: !368)
!604 = !DILocation(line: 367, column: 1, scope: !354)
!605 = distinct !DISubprogram(name: "stream_decoder_end", scope: !33, file: !33, line: 371, type: !92, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !606)
!606 = !{!607, !608, !609}
!607 = !DILocalVariable(name: "pcoder", arg: 1, scope: !605, file: !33, line: 371, type: !43)
!608 = !DILocalVariable(name: "allocator", arg: 2, scope: !605, file: !33, line: 371, type: !62)
!609 = !DILocalVariable(name: "coder", scope: !605, file: !33, line: 373, type: !230)
!610 = !DILocation(line: 0, scope: !605)
!611 = !DILocation(line: 374, column: 24, scope: !605)
!612 = !DILocation(line: 374, column: 2, scope: !605)
!613 = !DILocation(line: 375, column: 29, scope: !605)
!614 = !DILocation(line: 375, column: 2, scope: !605)
!615 = !DILocation(line: 376, column: 2, scope: !605)
!616 = !DILocation(line: 378, column: 1, scope: !605)
!617 = distinct !DISubprogram(name: "stream_decoder_get_check", scope: !33, file: !33, line: 382, type: !96, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !618)
!618 = !{!619, !620}
!619 = !DILocalVariable(name: "pcoder", arg: 1, scope: !617, file: !33, line: 382, type: !99)
!620 = !DILocalVariable(name: "coder", scope: !617, file: !33, line: 384, type: !621)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!623 = !DILocation(line: 0, scope: !617)
!624 = !DILocation(line: 385, column: 29, scope: !617)
!625 = !DILocation(line: 385, column: 2, scope: !617)
!626 = distinct !DISubprogram(name: "stream_decoder_memconfig", scope: !33, file: !33, line: 390, type: !103, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !627)
!627 = !{!628, !629, !630, !631, !632}
!628 = !DILocalVariable(name: "pcoder", arg: 1, scope: !626, file: !33, line: 390, type: !43)
!629 = !DILocalVariable(name: "memusage", arg: 2, scope: !626, file: !33, line: 390, type: !105)
!630 = !DILocalVariable(name: "old_memlimit", arg: 3, scope: !626, file: !33, line: 391, type: !105)
!631 = !DILocalVariable(name: "new_memlimit", arg: 4, scope: !626, file: !33, line: 391, type: !48)
!632 = !DILocalVariable(name: "coder", scope: !626, file: !33, line: 393, type: !230)
!633 = !DILocation(line: 0, scope: !626)
!634 = !DILocation(line: 394, column: 21, scope: !626)
!635 = !DILocation(line: 394, column: 12, scope: !626)
!636 = !DILocation(line: 395, column: 25, scope: !626)
!637 = !DILocation(line: 395, column: 16, scope: !626)
!638 = !DILocation(line: 397, column: 19, scope: !639)
!639 = distinct !DILexicalBlock(scope: !626, file: !33, line: 397, column: 6)
!640 = !DILocation(line: 397, column: 6, scope: !626)
!641 = !DILocation(line: 398, column: 29, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !33, line: 398, column: 7)
!643 = distinct !DILexicalBlock(scope: !639, file: !33, line: 397, column: 25)
!644 = !DILocation(line: 398, column: 20, scope: !642)
!645 = !DILocation(line: 398, column: 7, scope: !643)
!646 = !DILocation(line: 401, column: 19, scope: !643)
!647 = !DILocation(line: 402, column: 2, scope: !643)
!648 = !DILocation(line: 405, column: 1, scope: !626)
!649 = distinct !DISubprogram(name: "lzma_stream_decoder", scope: !33, file: !33, line: 448, type: !650, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !676)
!650 = !DISubroutineType(types: !651)
!651 = !{!61, !652, !48, !124}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !654, file: !4, line: 454, baseType: !79, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !654, file: !4, line: 455, baseType: !71, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !654, file: !4, line: 456, baseType: !48, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !654, file: !4, line: 458, baseType: !87, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !654, file: !4, line: 459, baseType: !71, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !654, file: !4, line: 460, baseType: !48, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !654, file: !4, line: 468, baseType: !62, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !654, file: !4, line: 471, baseType: !664, size: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !212)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !654, file: !4, line: 479, baseType: !70, size: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !654, file: !4, line: 480, baseType: !70, size: 64, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !654, file: !4, line: 481, baseType: !70, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !654, file: !4, line: 482, baseType: !70, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !654, file: !4, line: 483, baseType: !48, size: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !654, file: !4, line: 484, baseType: !48, size: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !654, file: !4, line: 485, baseType: !71, size: 64, offset: 896)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !654, file: !4, line: 486, baseType: !71, size: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !654, file: !4, line: 487, baseType: !148, size: 32, offset: 1024)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !654, file: !4, line: 488, baseType: !148, size: 32, offset: 1056)
!676 = !{!677, !678, !679, !680, !683}
!677 = !DILocalVariable(name: "strm", arg: 1, scope: !649, file: !33, line: 448, type: !652)
!678 = !DILocalVariable(name: "memlimit", arg: 2, scope: !649, file: !33, line: 448, type: !48)
!679 = !DILocalVariable(name: "flags", arg: 3, scope: !649, file: !33, line: 448, type: !124)
!680 = !DILocalVariable(name: "ret_", scope: !681, file: !33, line: 450, type: !369)
!681 = distinct !DILexicalBlock(scope: !682, file: !33, line: 450, column: 2)
!682 = distinct !DILexicalBlock(scope: !649, file: !33, line: 450, column: 2)
!683 = !DILocalVariable(name: "ret_", scope: !682, file: !33, line: 450, type: !369)
!684 = !DILocation(line: 0, scope: !649)
!685 = !DILocation(line: 450, column: 2, scope: !681)
!686 = !DILocation(line: 0, scope: !681)
!687 = !DILocation(line: 450, column: 2, scope: !688)
!688 = distinct !DILexicalBlock(scope: !681, file: !33, line: 450, column: 2)
!689 = !DILocation(line: 450, column: 2, scope: !682)
!690 = !{!691, !253, i64 56}
!691 = !{!"", !253, i64 0, !256, i64 8, !256, i64 16, !253, i64 24, !256, i64 32, !256, i64 40, !253, i64 48, !253, i64 56, !253, i64 64, !253, i64 72, !253, i64 80, !253, i64 88, !256, i64 96, !256, i64 104, !256, i64 112, !256, i64 120, !254, i64 128, !254, i64 132}
!692 = !{!691, !253, i64 48}
!693 = !DILocation(line: 0, scope: !682)
!694 = !DILocation(line: 450, column: 2, scope: !695)
!695 = distinct !DILexicalBlock(scope: !682, file: !33, line: 450, column: 2)
!696 = !DILocation(line: 450, column: 2, scope: !697)
!697 = distinct !DILexicalBlock(scope: !695, file: !33, line: 450, column: 2)
!698 = !DILocation(line: 452, column: 8, scope: !649)
!699 = !DILocation(line: 452, column: 18, scope: !649)
!700 = !DILocation(line: 452, column: 46, scope: !649)
!701 = !{!283, !283, i64 0}
!702 = !DILocation(line: 453, column: 2, scope: !649)
!703 = !DILocation(line: 453, column: 49, scope: !649)
!704 = !DILocation(line: 455, column: 2, scope: !649)
!705 = !DILocation(line: 456, column: 1, scope: !649)
!706 = !DISubprogram(name: "lzma_strm_init", scope: !39, file: !39, line: 220, type: !707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!707 = !DISubroutineType(types: !708)
!708 = !{!61, !652}
!709 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !652}
!712 = !DISubprogram(name: "lzma_bufcpy", scope: !39, file: !39, line: 242, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!713 = !DISubroutineType(types: !714)
!714 = !{!71, !78, !84, !71, !86, !84, !71}
!715 = !DISubprogram(name: "lzma_stream_header_decode", scope: !166, file: !166, line: 174, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!716 = !DISubroutineType(types: !717)
!717 = !{!61, !718, !79}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!719 = !DISubprogram(name: "lzma_check_is_supported", scope: !26, file: !26, line: 81, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!720 = !DISubroutineType(types: !721)
!721 = !{!156, !98}
!722 = !DISubprogram(name: "lzma_block_header_decode", scope: !120, file: !120, line: 343, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!723 = !DISubroutineType(types: !724)
!724 = !{!61, !725, !62, !79}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!726 = !DISubprogram(name: "lzma_raw_decoder_memusage", scope: !113, file: !113, line: 157, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!727 = !DISubroutineType(types: !728)
!728 = !{!48, !110}
!729 = !DISubprogram(name: "lzma_block_decoder_init", scope: !730, file: !730, line: 19, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!730 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/block_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d741972e9232abef21e8d748627f2569")
!731 = !DISubroutineType(types: !732)
!732 = !{!61, !241, !62, !725}
!733 = !DISubprogram(name: "lzma_free", scope: !39, file: !39, line: 215, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !70, !62}
!736 = !DISubprogram(name: "lzma_index_hash_append", scope: !189, file: !189, line: 65, type: !737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!737 = !DISubroutineType(types: !738)
!738 = !{!61, !187, !46, !46}
!739 = !DISubprogram(name: "lzma_block_unpadded_size", scope: !120, file: !120, line: 391, type: !740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!740 = !DISubroutineType(types: !741)
!741 = !{!46, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!744 = !DISubprogram(name: "lzma_index_hash_decode", scope: !189, file: !189, line: 95, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!745 = !DISubroutineType(types: !746)
!746 = !{!61, !187, !79, !85, !71}
!747 = !DISubprogram(name: "lzma_stream_footer_decode", scope: !166, file: !166, line: 201, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!748 = !DISubprogram(name: "lzma_index_hash_size", scope: !189, file: !189, line: 105, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!749 = !DISubroutineType(types: !750)
!750 = !{!46, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!753 = !DISubprogram(name: "lzma_stream_flags_compare", scope: !166, file: !166, line: 221, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!754 = !DISubroutineType(types: !755)
!755 = !{!61, !756, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!758 = !DISubprogram(name: "lzma_index_hash_end", scope: !189, file: !189, line: 47, type: !759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !187, !62}
!761 = !DISubprogram(name: "lzma_index_hash_init", scope: !189, file: !189, line: 39, type: !762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !350)
!762 = !DISubroutineType(types: !763)
!763 = !{!187, !187, !62}
