; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/lz/lz_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lz/lz_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_lz_options = type { i64, i64, i64, i64, i64, i32, i32, ptr, i32 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_lz_encoder, %struct.lzma_mf_s, %struct.lzma_next_coder_s }
%struct.lzma_lz_encoder = type { ptr, ptr, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_lz_encoder_memusage(ptr nocapture noundef readonly %lz_options) local_unnamed_addr #0 !dbg !193 {
entry:
  %mf = alloca %struct.lzma_mf_s, align 8
  call void @llvm.dbg.value(metadata ptr %lz_options, metadata !212, metadata !DIExpression()), !dbg !214
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %mf) #7, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %mf, metadata !213, metadata !DIExpression()), !dbg !216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %mf, i8 0, i64 120, i1 false), !dbg !216
  %call = call fastcc zeroext i1 @lz_encoder_prepare(ptr noundef nonnull %mf, ptr noundef null, ptr noundef %lz_options), !dbg !217
  br i1 %call, label %cleanup, label %if.end, !dbg !219

if.end:                                           ; preds = %entry
  %hash_size_sum = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21, !dbg !220
  %0 = load i32, ptr %hash_size_sum, align 4, !dbg !220, !tbaa !221
  %sons_count = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22, !dbg !227
  %1 = load i32, ptr %sons_count, align 8, !dbg !227, !tbaa !228
  %add = add i32 %1, %0, !dbg !229
  %conv = zext i32 %add to i64, !dbg !230
  %mul = shl nuw nsw i64 %conv, 2, !dbg !231
  %size = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 1, !dbg !232
  %2 = load i32, ptr %size, align 8, !dbg !232, !tbaa !233
  %conv1 = zext i32 %2 to i64, !dbg !234
  %add2 = add nuw nsw i64 %conv1, 216, !dbg !235
  %add3 = add nuw nsw i64 %add2, %mul, !dbg !236
  br label %cleanup, !dbg !237

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %add3, %if.end ], [ -1, %entry ], !dbg !214
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %mf) #7, !dbg !238
  ret i64 %retval.0, !dbg !238
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @lz_encoder_prepare(ptr noundef %mf, ptr noundef %allocator, ptr nocapture noundef readonly %lz_options) unnamed_addr #0 !dbg !239 {
entry:
  call void @llvm.dbg.value(metadata ptr %mf, metadata !244, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !245, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata ptr %lz_options, metadata !246, metadata !DIExpression()), !dbg !256
  %dict_size = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 1, !dbg !257
  %0 = load i64, ptr %dict_size, align 8, !dbg !257, !tbaa !259
  %1 = add i64 %0, -1610612737, !dbg !262
  %2 = icmp ult i64 %1, -1610608641, !dbg !262
  br i1 %2, label %return, label %lor.lhs.false3, !dbg !262

lor.lhs.false3:                                   ; preds = %entry
  %nice_len = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 4, !dbg !263
  %3 = load i64, ptr %nice_len, align 8, !dbg !263, !tbaa !264
  %match_len_max = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 3, !dbg !265
  %4 = load i64, ptr %match_len_max, align 8, !dbg !265, !tbaa !266
  %cmp4 = icmp ugt i64 %3, %4, !dbg !267
  br i1 %cmp4, label %return, label %if.end, !dbg !268

if.end:                                           ; preds = %lor.lhs.false3
  %5 = load i64, ptr %lz_options, align 8, !dbg !269, !tbaa !270
  %add = add i64 %5, %0, !dbg !271
  %conv = trunc i64 %add to i32, !dbg !272
  %keep_size_before = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 2, !dbg !273
  store i32 %conv, ptr %keep_size_before, align 4, !dbg !274, !tbaa !275
  %after_size = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 2, !dbg !276
  %6 = load i64, ptr %after_size, align 8, !dbg !276, !tbaa !277
  %add7 = add i64 %6, %4, !dbg !278
  %conv8 = trunc i64 %add7 to i32, !dbg !279
  %keep_size_after = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 3, !dbg !280
  store i32 %conv8, ptr %keep_size_after, align 8, !dbg !281, !tbaa !282
  %div225 = lshr i64 %0, 1, !dbg !283
  %conv10 = trunc i64 %div225 to i32, !dbg !284
  call void @llvm.dbg.value(metadata i32 %conv10, metadata !247, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32 %conv10, metadata !247, metadata !DIExpression()), !dbg !256
  %add20 = add i64 %add7, %5, !dbg !285
  %div21226 = lshr i64 %add20, 1, !dbg !286
  %7 = trunc i64 %div21226 to i32, !dbg !287
  call void @llvm.dbg.value(metadata i32 undef, metadata !247, metadata !DIExpression()), !dbg !256
  %size = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 1, !dbg !288
  %8 = load i32, ptr %size, align 8, !dbg !288, !tbaa !233
  call void @llvm.dbg.value(metadata i32 %8, metadata !248, metadata !DIExpression()), !dbg !256
  %9 = add nuw nsw i32 %conv10, 524288, !dbg !287
  %conv25 = add i32 %9, %conv, !dbg !287
  %add27 = add i32 %conv25, %7, !dbg !289
  %add29 = add i32 %add27, %conv8, !dbg !290
  store i32 %add29, ptr %size, align 8, !dbg !291, !tbaa !233
  %10 = load ptr, ptr %mf, align 8, !dbg !292, !tbaa !294
  %cmp31.not = icmp eq ptr %10, null, !dbg !295
  %cmp34.not = icmp eq i32 %8, %add29
  %or.cond230 = select i1 %cmp31.not, i1 true, i1 %cmp34.not, !dbg !296
  br i1 %or.cond230, label %if.end39, label %if.then36, !dbg !296

if.then36:                                        ; preds = %if.end
  tail call void @lzma_free(ptr noundef nonnull %10, ptr noundef %allocator) #7, !dbg !297
  store ptr null, ptr %mf, align 8, !dbg !299, !tbaa !294
  %.pre = load i64, ptr %match_len_max, align 8, !dbg !300, !tbaa !266
  %.pre235 = load i64, ptr %nice_len, align 8, !dbg !301, !tbaa !264
  %.pre236 = load i64, ptr %dict_size, align 8, !dbg !302, !tbaa !259
  br label %if.end39, !dbg !303

if.end39:                                         ; preds = %if.then36, %if.end
  %11 = phi i64 [ %.pre236, %if.then36 ], [ %0, %if.end ], !dbg !302
  %12 = phi i64 [ %.pre235, %if.then36 ], [ %3, %if.end ], !dbg !301
  %13 = phi i64 [ %.pre, %if.then36 ], [ %4, %if.end ], !dbg !300
  %conv41 = trunc i64 %13 to i32, !dbg !304
  %match_len_max42 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 19, !dbg !305
  store i32 %conv41, ptr %match_len_max42, align 4, !dbg !306, !tbaa !307
  %conv44 = trunc i64 %12 to i32, !dbg !308
  %nice_len45 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18, !dbg !309
  store i32 %conv44, ptr %nice_len45, align 8, !dbg !310, !tbaa !311
  %14 = trunc i64 %11 to i32, !dbg !312
  %conv48 = add i32 %14, 1, !dbg !312
  %cyclic_size = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 15, !dbg !313
  store i32 %conv48, ptr %cyclic_size, align 4, !dbg !314, !tbaa !315
  %match_finder = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 5, !dbg !316
  %15 = load i32, ptr %match_finder, align 8, !dbg !316, !tbaa !317
  switch i32 %15, label %return [
    i32 3, label %sw.epilog
    i32 4, label %sw.bb49
    i32 18, label %sw.bb52
    i32 19, label %sw.bb55
    i32 20, label %sw.bb58
  ], !dbg !318

sw.bb49:                                          ; preds = %if.end39
  br label %sw.epilog, !dbg !319

sw.bb52:                                          ; preds = %if.end39
  br label %sw.epilog, !dbg !321

sw.bb55:                                          ; preds = %if.end39
  br label %sw.epilog, !dbg !322

sw.bb58:                                          ; preds = %if.end39
  br label %sw.epilog, !dbg !323

sw.epilog:                                        ; preds = %if.end39, %sw.bb58, %sw.bb55, %sw.bb52, %sw.bb49
  %lzma_mf_bt4_find.sink = phi ptr [ @lzma_mf_bt4_find, %sw.bb58 ], [ @lzma_mf_bt3_find, %sw.bb55 ], [ @lzma_mf_bt2_find, %sw.bb52 ], [ @lzma_mf_hc4_find, %sw.bb49 ], [ @lzma_mf_hc3_find, %if.end39 ]
  %lzma_mf_bt4_skip.sink = phi ptr [ @lzma_mf_bt4_skip, %sw.bb58 ], [ @lzma_mf_bt3_skip, %sw.bb55 ], [ @lzma_mf_bt2_skip, %sw.bb52 ], [ @lzma_mf_hc4_skip, %sw.bb49 ], [ @lzma_mf_hc3_skip, %if.end39 ]
  %find59 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 10, !dbg !324
  store ptr %lzma_mf_bt4_find.sink, ptr %find59, align 8, !dbg !324, !tbaa !325
  %skip60 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 11, !dbg !324
  store ptr %lzma_mf_bt4_skip.sink, ptr %skip60, align 8, !dbg !324, !tbaa !326
  %and = and i32 %15, 15, !dbg !327
  call void @llvm.dbg.value(metadata i32 %and, metadata !250, metadata !DIExpression()), !dbg !256
  %cmp63 = icmp ugt i32 %and, %conv44, !dbg !328
  br i1 %cmp63, label %return, label %if.end66, !dbg !330

if.end66:                                         ; preds = %sw.epilog
  %and68 = and i32 %15, 16, !dbg !331
  %cmp69.not = icmp eq i32 %and68, 0, !dbg !332
  call void @llvm.dbg.value(metadata i1 %cmp69.not, metadata !251, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !256
  %cmp71 = icmp eq i32 %and, 2, !dbg !333
  br i1 %cmp71, label %if.end94, label %if.else, !dbg !335

if.else:                                          ; preds = %if.end66
  %conv75 = add i32 %14, -1, !dbg !336
  call void @llvm.dbg.value(metadata i32 %conv75, metadata !253, metadata !DIExpression()), !dbg !256
  %shr = lshr i32 %conv75, 1, !dbg !338
  %or = or i32 %shr, %conv75, !dbg !339
  call void @llvm.dbg.value(metadata i32 %or, metadata !253, metadata !DIExpression()), !dbg !256
  %shr76 = lshr i32 %or, 2, !dbg !340
  %or77 = or i32 %shr76, %or, !dbg !341
  call void @llvm.dbg.value(metadata i32 %or77, metadata !253, metadata !DIExpression()), !dbg !256
  %shr78 = lshr i32 %or77, 4, !dbg !342
  %or79 = or i32 %shr78, %or77, !dbg !343
  call void @llvm.dbg.value(metadata i32 %or79, metadata !253, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata !DIArgList(i32 %or79, i32 %or79), metadata !253, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_or, DW_OP_stack_value)), !dbg !256
  %16 = lshr i32 %or79, 9, !dbg !344
  %17 = lshr i32 %or79, 1, !dbg !344
  call void @llvm.dbg.value(metadata i32 undef, metadata !253, metadata !DIExpression()), !dbg !256
  %shr82 = or i32 %17, %16, !dbg !345
  %or83 = or i32 %shr82, 65535, !dbg !345
  call void @llvm.dbg.value(metadata i32 %or83, metadata !253, metadata !DIExpression()), !dbg !256
  %cmp84 = icmp ugt i32 %or83, 16777216, !dbg !346
  br i1 %cmp84, label %if.then86, label %if.end94, !dbg !348

if.then86:                                        ; preds = %if.else
  %cmp87 = icmp eq i32 %and, 3, !dbg !349
  %shr91 = lshr i32 %or83, 1
  %spec.select233 = select i1 %cmp87, i32 16777215, i32 %shr91, !dbg !352
  br label %if.end94, !dbg !352

if.end94:                                         ; preds = %if.then86, %if.end66, %if.else
  %hs.0 = phi i32 [ %or83, %if.else ], [ 65535, %if.end66 ], [ %spec.select233, %if.then86 ], !dbg !353
  call void @llvm.dbg.value(metadata i32 %hs.0, metadata !253, metadata !DIExpression()), !dbg !256
  %hash_mask = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 16, !dbg !354
  store i32 %hs.0, ptr %hash_mask, align 8, !dbg !355, !tbaa !356
  call void @llvm.dbg.value(metadata i32 %hs.0, metadata !253, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !256
  %cmp95 = icmp ugt i32 %and, 2, !dbg !357
  %spec.select231.v = select i1 %cmp95, i32 1025, i32 1, !dbg !359
  %spec.select231 = add nuw i32 %hs.0, %spec.select231.v, !dbg !359
  call void @llvm.dbg.value(metadata i32 %spec.select231, metadata !253, metadata !DIExpression()), !dbg !256
  %cmp100 = icmp ugt i32 %and, 3, !dbg !360
  %add103 = add nuw i32 %spec.select231, 65536
  %spec.select234 = select i1 %cmp100, i32 %add103, i32 %spec.select231, !dbg !362
  call void @llvm.dbg.value(metadata i32 %spec.select234, metadata !253, metadata !DIExpression()), !dbg !256
  %hash_size_sum = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21, !dbg !363
  %18 = load i32, ptr %hash_size_sum, align 4, !dbg !363, !tbaa !221
  %sons_count = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22, !dbg !364
  %19 = load i32, ptr %sons_count, align 8, !dbg !364, !tbaa !228
  %add105 = add i32 %19, %18, !dbg !365
  call void @llvm.dbg.value(metadata i32 %add105, metadata !254, metadata !DIExpression()), !dbg !256
  store i32 %spec.select234, ptr %hash_size_sum, align 4, !dbg !366, !tbaa !221
  %not.cmp69.not = xor i1 %cmp69.not, true, !dbg !367
  %mul = zext i1 %not.cmp69.not to i32, !dbg !367
  %spec.select232 = shl i32 %conv48, %mul, !dbg !367
  store i32 %spec.select232, ptr %sons_count, align 8, !dbg !256, !tbaa !228
  %add114 = add i32 %spec.select234, %spec.select232, !dbg !368
  call void @llvm.dbg.value(metadata i32 %add114, metadata !255, metadata !DIExpression()), !dbg !256
  %cmp115.not = icmp eq i32 %add105, %add114, !dbg !369
  br i1 %cmp115.not, label %if.end119, label %if.then117, !dbg !371

if.then117:                                       ; preds = %if.end94
  %hash = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 12, !dbg !372
  %20 = load ptr, ptr %hash, align 8, !dbg !372, !tbaa !374
  tail call void @lzma_free(ptr noundef %20, ptr noundef %allocator) #7, !dbg !375
  store ptr null, ptr %hash, align 8, !dbg !376, !tbaa !374
  br label %if.end119, !dbg !377

if.end119:                                        ; preds = %if.then117, %if.end94
  %depth = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 6, !dbg !378
  %21 = load i32, ptr %depth, align 4, !dbg !378, !tbaa !379
  %depth120 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 17, !dbg !380
  store i32 %21, ptr %depth120, align 4, !dbg !381, !tbaa !382
  %cmp122 = icmp eq i32 %21, 0, !dbg !383
  br i1 %cmp122, label %if.then124, label %return, !dbg !385

if.then124:                                       ; preds = %if.end119
  %22 = load i32, ptr %nice_len45, align 8, !dbg !386, !tbaa !311
  %. = select i1 %cmp69.not, i32 2, i32 1
  %.238 = select i1 %cmp69.not, i32 4, i32 16
  %div133227 = lshr i32 %22, %., !dbg !386
  %add134 = add nuw i32 %div133227, %.238, !dbg !386
  store i32 %add134, ptr %depth120, align 4, !dbg !386, !tbaa !382
  br label %return, !dbg !389

return:                                           ; preds = %if.then124, %if.end39, %if.end119, %sw.epilog, %entry, %lor.lhs.false3
  %retval.2 = phi i1 [ true, %lor.lhs.false3 ], [ true, %entry ], [ true, %if.end39 ], [ false, %if.end119 ], [ true, %sw.epilog ], [ false, %if.then124 ], !dbg !256
  ret i1 %retval.2, !dbg !389
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lz_encoder_init(ptr nocapture noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr nocapture noundef readonly %lz_init) local_unnamed_addr #0 !dbg !390 {
entry:
  %lz_options = alloca %struct.lzma_lz_options, align 8
  call void @llvm.dbg.value(metadata ptr %next, metadata !414, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !415, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %filters, metadata !416, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %lz_init, metadata !417, metadata !DIExpression()), !dbg !422
  %0 = load ptr, ptr %next, align 8, !dbg !423, !tbaa !425
  %cmp = icmp eq ptr %0, null, !dbg !427
  br i1 %cmp, label %if.then, label %if.end26, !dbg !428

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %allocator) #7, !dbg !429
  store ptr %call, ptr %next, align 8, !dbg !431, !tbaa !425
  %cmp3 = icmp eq ptr %call, null, !dbg !432
  br i1 %cmp3, label %return, label %if.end, !dbg !434

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !435
  store ptr @lz_encode, ptr %code, align 8, !dbg !436, !tbaa !437
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !438
  store ptr @lz_encoder_end, ptr %end, align 8, !dbg !439, !tbaa !440
  %update = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 7, !dbg !441
  store ptr @lz_encoder_update, ptr %update, align 8, !dbg !442, !tbaa !443
  %mf = getelementptr inbounds %struct.lzma_coder_s, ptr %call, i64 0, i32 1, !dbg !444
  store ptr null, ptr %mf, align 8, !dbg !445, !tbaa !446
  %hash = getelementptr inbounds %struct.lzma_coder_s, ptr %call, i64 0, i32 1, i32 12, !dbg !449
  store ptr null, ptr %hash, align 8, !dbg !450, !tbaa !451
  %hash_size_sum = getelementptr inbounds %struct.lzma_coder_s, ptr %call, i64 0, i32 1, i32 21, !dbg !452
  store i32 0, ptr %hash_size_sum, align 4, !dbg !453, !tbaa !454
  %sons_count = getelementptr inbounds %struct.lzma_coder_s, ptr %call, i64 0, i32 1, i32 22, !dbg !455
  store i32 0, ptr %sons_count, align 8, !dbg !456, !tbaa !457
  %next21 = getelementptr inbounds %struct.lzma_coder_s, ptr %call, i64 0, i32 2, !dbg !458
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %call, i8 0, i64 24, i1 false), !dbg !459
  store ptr null, ptr %next21, align 8, !dbg !460, !tbaa.struct !461
  %.compoundliteral.sroa.2.0.next21.sroa_idx = getelementptr inbounds i8, ptr %next21, i64 8, !dbg !460
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next21.sroa_idx, align 8, !dbg !460, !tbaa.struct !464
  %.compoundliteral.sroa.3.0.next21.sroa_idx = getelementptr inbounds i8, ptr %next21, i64 16, !dbg !460
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next21.sroa_idx, i8 0, i64 48, i1 false), !dbg !460
  %.pre = load ptr, ptr %next, align 8, !dbg !465, !tbaa !425
  br label %if.end26, !dbg !466

if.end26:                                         ; preds = %if.end, %entry
  %1 = phi ptr [ %.pre, %if.end ], [ %0, %entry ], !dbg !465
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lz_options) #7, !dbg !467
  call void @llvm.dbg.declare(metadata ptr %lz_options, metadata !418, metadata !DIExpression()), !dbg !468
  %options = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 0, i32 2, !dbg !465
  %2 = load ptr, ptr %options, align 8, !dbg !465, !tbaa !469
  %call29 = call i32 %lz_init(ptr noundef %1, ptr noundef %allocator, ptr noundef %2, ptr noundef nonnull %lz_options) #7, !dbg !465
  call void @llvm.dbg.value(metadata i32 %call29, metadata !419, metadata !DIExpression()), !dbg !471
  %cmp30.not = icmp eq i32 %call29, 0, !dbg !472
  br i1 %cmp30.not, label %do.end, label %cleanup46

do.end:                                           ; preds = %if.end26
  %3 = load ptr, ptr %next, align 8, !dbg !474, !tbaa !425
  %mf34 = getelementptr inbounds %struct.lzma_coder_s, ptr %3, i64 0, i32 1, !dbg !476
  %call35 = call fastcc zeroext i1 @lz_encoder_prepare(ptr noundef nonnull %mf34, ptr noundef %allocator, ptr noundef nonnull %lz_options), !dbg !477
  br i1 %call35, label %cleanup46, label %if.end37, !dbg !478

if.end37:                                         ; preds = %do.end
  %4 = load ptr, ptr %next, align 8, !dbg !479, !tbaa !425
  %mf39 = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, !dbg !481
  call void @llvm.dbg.value(metadata ptr %mf39, metadata !482, metadata !DIExpression()) #7, !dbg !489
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !485, metadata !DIExpression()) #7, !dbg !489
  call void @llvm.dbg.value(metadata ptr %lz_options, metadata !486, metadata !DIExpression()) #7, !dbg !489
  %5 = load ptr, ptr %mf39, align 8, !dbg !491, !tbaa !294
  %cmp.i = icmp eq ptr %5, null, !dbg !493
  br i1 %cmp.i, label %if.then.i, label %if.end6.i, !dbg !494

if.then.i:                                        ; preds = %if.end37
  %size.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 1, !dbg !495
  %6 = load i32, ptr %size.i, align 8, !dbg !495, !tbaa !233
  %conv.i = zext i32 %6 to i64, !dbg !497
  %call.i = call ptr @lzma_alloc(i64 noundef %conv.i, ptr noundef %allocator) #7, !dbg !498
  store ptr %call.i, ptr %mf39, align 8, !dbg !499, !tbaa !294
  %cmp3.i = icmp eq ptr %call.i, null, !dbg !500
  br i1 %cmp3.i, label %cleanup46, label %if.end6.i, !dbg !502

if.end6.i:                                        ; preds = %if.then.i, %if.end37
  %cyclic_size.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 15, !dbg !503
  %7 = load i32, ptr %cyclic_size.i, align 4, !dbg !503, !tbaa !315
  %offset.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 4, !dbg !504
  store i32 %7, ptr %offset.i, align 4, !dbg !505, !tbaa !506
  %read_pos.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 5, !dbg !507
  %write_pos.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 8, !dbg !508
  %hash_size_sum.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 21, !dbg !509
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 undef), metadata !487, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !489
  %hash.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 12, !dbg !510
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %read_pos.i, i8 0, i64 20, i1 false) #7, !dbg !512
  %8 = load ptr, ptr %hash.i, align 8, !dbg !510, !tbaa !374
  %cmp8.i = icmp eq ptr %8, null, !dbg !513
  br i1 %cmp8.i, label %if.then10.i, label %if.end18.i, !dbg !514

if.then10.i:                                      ; preds = %if.end6.i
  %9 = load i32, ptr %hash_size_sum.i, align 4, !dbg !509, !tbaa !221
  call void @llvm.dbg.value(metadata !DIArgList(i32 %9, i32 undef), metadata !487, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !489
  %sons_count.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 22, !dbg !515
  %10 = load i32, ptr %sons_count.i, align 8, !dbg !515, !tbaa !228
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 %10), metadata !487, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !489
  %add.i = add i32 %10, %9, !dbg !516
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !487, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !489
  %conv7.i = zext i32 %add.i to i64, !dbg !517
  call void @llvm.dbg.value(metadata i64 %conv7.i, metadata !487, metadata !DIExpression()) #7, !dbg !489
  %mul.i = shl nuw nsw i64 %conv7.i, 2, !dbg !518
  %call11.i = call ptr @lzma_alloc(i64 noundef %mul.i, ptr noundef %allocator) #7, !dbg !520
  store ptr %call11.i, ptr %hash.i, align 8, !dbg !521, !tbaa !374
  %cmp14.i = icmp eq ptr %call11.i, null, !dbg !522
  br i1 %cmp14.i, label %cleanup46, label %if.end18.i, !dbg !524

if.end18.i:                                       ; preds = %if.then10.i, %if.end6.i
  %11 = phi ptr [ %call11.i, %if.then10.i ], [ %8, %if.end6.i ], !dbg !525
  %12 = load i32, ptr %hash_size_sum.i, align 4, !dbg !526, !tbaa !221
  %idx.ext.i = zext i32 %12 to i64, !dbg !527
  %add.ptr.i = getelementptr inbounds i32, ptr %11, i64 %idx.ext.i, !dbg !527
  %son.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 13, !dbg !528
  store ptr %add.ptr.i, ptr %son.i, align 8, !dbg !529, !tbaa !530
  %cyclic_pos.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 14, !dbg !531
  store i32 0, ptr %cyclic_pos.i, align 8, !dbg !532, !tbaa !533
  %mul24.i = shl nuw nsw i64 %idx.ext.i, 2, !dbg !534
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %11, i8 0, i64 %mul24.i, i1 false) #7, !dbg !534
  %preset_dict.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 7, !dbg !535
  %13 = load ptr, ptr %preset_dict.i, align 8, !dbg !535, !tbaa !537
  %cmp25.not.i = icmp eq ptr %13, null, !dbg !538
  br i1 %cmp25.not.i, label %if.end42, label %land.lhs.true.i, !dbg !539

land.lhs.true.i:                                  ; preds = %if.end18.i
  %preset_dict_size.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 8, !dbg !540
  %14 = load i32, ptr %preset_dict_size.i, align 8, !dbg !540, !tbaa !541
  %cmp27.not.i = icmp eq i32 %14, 0, !dbg !542
  br i1 %cmp27.not.i, label %if.end42, label %if.then29.i, !dbg !543

if.then29.i:                                      ; preds = %land.lhs.true.i
  %size31.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 1, !dbg !544
  %15 = load i32, ptr %size31.i, align 8, !dbg !544, !tbaa !233
  %16 = call i32 @llvm.umin.i32(i32 %14, i32 %15) #7, !dbg !544
  store i32 %16, ptr %write_pos.i, align 4, !dbg !546, !tbaa !547
  %17 = load ptr, ptr %mf39, align 8, !dbg !548, !tbaa !294
  %idx.ext40.i = zext i32 %14 to i64, !dbg !549
  %add.ptr41.i = getelementptr inbounds i8, ptr %13, i64 %idx.ext40.i, !dbg !549
  %idx.ext43.i = zext i32 %16 to i64, !dbg !550
  %idx.neg.i = sub nsw i64 0, %idx.ext43.i, !dbg !550
  %add.ptr44.i = getelementptr inbounds i8, ptr %add.ptr41.i, i64 %idx.neg.i, !dbg !550
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr nonnull align 1 %add.ptr44.i, i64 %idx.ext43.i, i1 false) #7, !dbg !551
  %action.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 20, !dbg !552
  store i32 1, ptr %action.i, align 8, !dbg !553, !tbaa !554
  %skip.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 11, !dbg !555
  %18 = load ptr, ptr %skip.i, align 8, !dbg !555, !tbaa !326
  %19 = load i32, ptr %write_pos.i, align 4, !dbg !556, !tbaa !547
  call void %18(ptr noundef nonnull %mf39, i32 noundef %19) #7, !dbg !557
  br label %if.end42, !dbg !558

if.end42:                                         ; preds = %if.then29.i, %land.lhs.true.i, %if.end18.i
  %action49.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, i32 20, !dbg !559
  store i32 0, ptr %action49.i, align 8, !dbg !560, !tbaa !554
  %20 = load ptr, ptr %next, align 8, !dbg !561, !tbaa !425
  %next44 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 2, !dbg !562
  %add.ptr = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 1, !dbg !563
  %call45 = call i32 @lzma_next_filter_init(ptr noundef nonnull %next44, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #7, !dbg !564
  br label %cleanup46, !dbg !565

cleanup46:                                        ; preds = %if.then10.i, %if.then.i, %do.end, %if.end26, %if.end42
  %retval.1 = phi i32 [ %call45, %if.end42 ], [ %call29, %if.end26 ], [ 8, %do.end ], [ 5, %if.then.i ], [ 5, %if.then10.i ], !dbg !422
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lz_options) #7, !dbg !566
  br label %return

return:                                           ; preds = %if.then, %cleanup46
  %retval.2 = phi i32 [ %retval.1, %cleanup46 ], [ 5, %if.then ], !dbg !422
  ret i32 %retval.2, !dbg !566
}

declare !dbg !567 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @lz_encode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !571 {
entry:
  %write_pos.i = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !573, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !574, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %in, metadata !575, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !576, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !577, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %out, metadata !578, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !579, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !580, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i32 %action, metadata !581, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !582, metadata !DIExpression()), !dbg !588
  %cmp2 = icmp ne i32 %action, 0
  %mf = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1
  %action3 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 20
  %read_pos = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 5
  %read_limit = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 7
  %size.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 1
  %keep_size_after.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 3
  %keep_size_before.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 2
  %write_pos.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 8
  %offset.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 4
  %code.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 3
  %next.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %cmp13.not.i = icmp eq i32 %action, 0
  %pending.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 9
  %skip.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 11
  %code = getelementptr inbounds %struct.lzma_lz_encoder, ptr %pcoder, i64 0, i32 1
  br label %while.cond, !dbg !589

while.cond:                                       ; preds = %if.end10, %entry
  %0 = load i64, ptr %out_pos, align 8, !dbg !590, !tbaa !463
  %cmp = icmp ult i64 %0, %out_size, !dbg !591
  br i1 %cmp, label %land.rhs, label %cleanup23, !dbg !592

land.rhs:                                         ; preds = %while.cond
  %1 = load i64, ptr %in_pos, align 8, !dbg !593, !tbaa !463
  %cmp1 = icmp ult i64 %1, %in_size, !dbg !594
  %or.cond = or i1 %cmp2, %cmp1, !dbg !595
  br i1 %or.cond, label %while.body, label %cleanup23, !dbg !595

while.body:                                       ; preds = %land.rhs
  %2 = load i32, ptr %action3, align 8, !dbg !596, !tbaa !597
  %cmp4 = icmp eq i32 %2, 0, !dbg !598
  br i1 %cmp4, label %land.lhs.true, label %if.end10, !dbg !599

land.lhs.true:                                    ; preds = %while.body
  %3 = load i32, ptr %read_pos, align 8, !dbg !600, !tbaa !601
  %4 = load i32, ptr %read_limit, align 8, !dbg !602, !tbaa !603
  %cmp7.not = icmp ult i32 %3, %4, !dbg !604
  br i1 %cmp7.not, label %if.end10, label %do.body, !dbg !605

do.body:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !606, metadata !DIExpression()) #7, !dbg !622
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !611, metadata !DIExpression()) #7, !dbg !622
  call void @llvm.dbg.value(metadata ptr %in, metadata !612, metadata !DIExpression()) #7, !dbg !622
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !613, metadata !DIExpression()) #7, !dbg !622
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !614, metadata !DIExpression()) #7, !dbg !622
  call void @llvm.dbg.value(metadata i32 %action, metadata !615, metadata !DIExpression()) #7, !dbg !622
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !616, metadata !DIExpression()) #7, !dbg !622
  %5 = load i32, ptr %size.i, align 8, !dbg !624, !tbaa !626
  %6 = load i32, ptr %keep_size_after.i, align 8, !dbg !627, !tbaa !628
  %sub.i = sub i32 %5, %6, !dbg !629
  %cmp.not.i = icmp ult i32 %3, %sub.i, !dbg !630
  br i1 %cmp.not.i, label %entry.if.end_crit_edge.i, label %if.then.i, !dbg !631

entry.if.end_crit_edge.i:                         ; preds = %do.body
  %.pre.i = load i32, ptr %write_pos.i.i, align 4, !dbg !632, !tbaa !633
  br label %if.end.i, !dbg !631

if.then.i:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata ptr %mf, metadata !634, metadata !DIExpression()) #7, !dbg !641
  %7 = load i32, ptr %keep_size_before.i.i, align 4, !dbg !643, !tbaa !275
  %sub.i.i = sub i32 %3, %7, !dbg !644
  %and.i.i = and i32 %sub.i.i, -16, !dbg !645
  call void @llvm.dbg.value(metadata i32 %and.i.i, metadata !639, metadata !DIExpression()) #7, !dbg !641
  %8 = load i32, ptr %write_pos.i.i, align 4, !dbg !646, !tbaa !547
  %sub1.i.i = sub i32 %8, %and.i.i, !dbg !647
  %conv.i.i = zext i32 %sub1.i.i to i64, !dbg !648
  call void @llvm.dbg.value(metadata i64 %conv.i.i, metadata !640, metadata !DIExpression()) #7, !dbg !641
  %9 = load ptr, ptr %mf, align 8, !dbg !649, !tbaa !294
  %idx.ext.i.i = zext i32 %and.i.i to i64, !dbg !650
  %add.ptr.i.i = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i.i, !dbg !650
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %9, ptr align 1 %add.ptr.i.i, i64 %conv.i.i, i1 false) #7, !dbg !651
  %10 = load i32, ptr %offset.i.i, align 4, !dbg !652, !tbaa !506
  %add.i.i = add i32 %10, %and.i.i, !dbg !652
  store i32 %add.i.i, ptr %offset.i.i, align 4, !dbg !652, !tbaa !506
  %11 = load i32, ptr %read_pos, align 8, !dbg !653, !tbaa !654
  %sub4.i.i = sub i32 %11, %and.i.i, !dbg !653
  store i32 %sub4.i.i, ptr %read_pos, align 8, !dbg !653, !tbaa !654
  %12 = load i32, ptr %read_limit, align 8, !dbg !655, !tbaa !656
  %sub5.i.i = sub i32 %12, %and.i.i, !dbg !655
  store i32 %sub5.i.i, ptr %read_limit, align 8, !dbg !655, !tbaa !656
  %13 = load i32, ptr %write_pos.i.i, align 4, !dbg !657, !tbaa !547
  %sub7.i.i = sub i32 %13, %and.i.i, !dbg !657
  store i32 %sub7.i.i, ptr %write_pos.i.i, align 4, !dbg !657, !tbaa !547
  br label %if.end.i, !dbg !658

if.end.i:                                         ; preds = %if.then.i, %entry.if.end_crit_edge.i
  %14 = phi i32 [ %.pre.i, %entry.if.end_crit_edge.i ], [ %sub7.i.i, %if.then.i ], !dbg !632
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %write_pos.i) #7, !dbg !659
  %conv.i = zext i32 %14 to i64, !dbg !660
  call void @llvm.dbg.value(metadata i64 %conv.i, metadata !617, metadata !DIExpression()) #7, !dbg !622
  store i64 %conv.i, ptr %write_pos.i, align 8, !dbg !661, !tbaa !463
  %15 = load ptr, ptr %code.i, align 8, !dbg !662, !tbaa !664
  %cmp6.i = icmp eq ptr %15, null, !dbg !665
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i, !dbg !666

if.then8.i:                                       ; preds = %if.end.i
  %16 = load ptr, ptr %mf, align 8, !dbg !667, !tbaa !446
  %17 = load i32, ptr %size.i, align 8, !dbg !669, !tbaa !626
  %conv12.i = zext i32 %17 to i64, !dbg !670
  call void @llvm.dbg.value(metadata ptr %write_pos.i, metadata !617, metadata !DIExpression(DW_OP_deref)) #7, !dbg !622
  %call.i = call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %16, ptr noundef nonnull %write_pos.i, i64 noundef %conv12.i) #7, !dbg !671
  br i1 %cmp13.not.i, label %if.end27.thread.i, label %land.rhs.i, !dbg !672

if.end27.thread.i:                                ; preds = %if.then8.i
  call void @llvm.dbg.value(metadata i32 %ret.0.i, metadata !618, metadata !DIExpression()) #7, !dbg !622
  %18 = load i64, ptr %write_pos.i, align 8, !dbg !673, !tbaa !463
  call void @llvm.dbg.value(metadata i64 %23, metadata !617, metadata !DIExpression()) #7, !dbg !622
  %conv28121.i = trunc i64 %18 to i32, !dbg !673
  store i32 %conv28121.i, ptr %write_pos.i.i, align 4, !dbg !674, !tbaa !633
  br label %if.else39.i, !dbg !675

land.rhs.i:                                       ; preds = %if.then8.i
  %19 = load i64, ptr %in_pos, align 8, !dbg !676, !tbaa !463
  %cmp15.i = icmp eq i64 %19, %in_size, !dbg !677
  %phi.cast.i = zext i1 %cmp15.i to i32
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end.i
  %20 = load ptr, ptr %next.i, align 8, !dbg !678, !tbaa !680
  %21 = load ptr, ptr %mf, align 8, !dbg !681, !tbaa !446
  %22 = load i32, ptr %size.i, align 8, !dbg !682, !tbaa !626
  %conv25.i = zext i32 %22 to i64, !dbg !683
  call void @llvm.dbg.value(metadata ptr %write_pos.i, metadata !617, metadata !DIExpression(DW_OP_deref)) #7, !dbg !622
  %call26.i = call i32 %15(ptr noundef %20, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %21, ptr noundef nonnull %write_pos.i, i64 noundef %conv25.i, i32 noundef %action) #7, !dbg !684
  call void @llvm.dbg.value(metadata i32 %call26.i, metadata !618, metadata !DIExpression()) #7, !dbg !622
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %land.rhs.i
  %ret.0.i = phi i32 [ %call26.i, %if.else.i ], [ %phi.cast.i, %land.rhs.i ], !dbg !685
  call void @llvm.dbg.value(metadata i32 %ret.0.i, metadata !618, metadata !DIExpression()) #7, !dbg !622
  %23 = load i64, ptr %write_pos.i, align 8, !dbg !673, !tbaa !463
  call void @llvm.dbg.value(metadata i64 %23, metadata !617, metadata !DIExpression()) #7, !dbg !622
  %conv28.i = trunc i64 %23 to i32, !dbg !673
  store i32 %conv28.i, ptr %write_pos.i.i, align 4, !dbg !674, !tbaa !633
  %cmp31.i = icmp eq i32 %ret.0.i, 1, !dbg !686
  br i1 %cmp31.i, label %if.then33.i, label %if.else39.i, !dbg !675

if.then33.i:                                      ; preds = %if.end27.i
  call void @llvm.dbg.value(metadata i32 0, metadata !618, metadata !DIExpression()) #7, !dbg !622
  store i32 %action, ptr %action3, align 8, !dbg !688, !tbaa !597
  br label %if.end55.sink.split.i, !dbg !690

if.else39.i:                                      ; preds = %if.end27.i, %if.end27.thread.i
  %conv28124.i = phi i32 [ %conv28121.i, %if.end27.thread.i ], [ %conv28.i, %if.end27.i ]
  %ret.0123.i = phi i32 [ 0, %if.end27.thread.i ], [ %ret.0.i, %if.end27.i ]
  %24 = load i32, ptr %keep_size_after.i, align 8, !dbg !691, !tbaa !628
  %cmp44.i = icmp ugt i32 %conv28124.i, %24, !dbg !693
  br i1 %cmp44.i, label %if.then46.i, label %if.end55.i, !dbg !694

if.then46.i:                                      ; preds = %if.else39.i
  %sub51.i = sub i32 %conv28124.i, %24, !dbg !695
  br label %if.end55.sink.split.i, !dbg !697

if.end55.sink.split.i:                            ; preds = %if.then46.i, %if.then33.i
  %sub51.sink.i = phi i32 [ %sub51.i, %if.then46.i ], [ %conv28.i, %if.then33.i ]
  %ret.1.ph.i = phi i32 [ %ret.0123.i, %if.then46.i ], [ 0, %if.then33.i ]
  store i32 %sub51.sink.i, ptr %read_limit, align 8, !dbg !698, !tbaa !603
  br label %if.end55.i, !dbg !699

if.end55.i:                                       ; preds = %if.end55.sink.split.i, %if.else39.i
  %ret.1.i = phi i32 [ %ret.0123.i, %if.else39.i ], [ %ret.1.ph.i, %if.end55.sink.split.i ], !dbg !622
  call void @llvm.dbg.value(metadata i32 %ret.1.i, metadata !618, metadata !DIExpression()) #7, !dbg !622
  %25 = load i32, ptr %pending.i, align 8, !dbg !699, !tbaa !700
  %cmp57.not.i = icmp eq i32 %25, 0, !dbg !701
  br i1 %cmp57.not.i, label %fill_window.exit, label %land.lhs.true.i, !dbg !702

land.lhs.true.i:                                  ; preds = %if.end55.i
  %26 = load i32, ptr %read_pos, align 8, !dbg !703, !tbaa !601
  %27 = load i32, ptr %read_limit, align 8, !dbg !704, !tbaa !603
  %cmp63.i = icmp ult i32 %26, %27, !dbg !705
  br i1 %cmp63.i, label %if.then65.i, label %fill_window.exit, !dbg !706

if.then65.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.dbg.value(metadata i32 %25, metadata !619, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !707
  store i32 0, ptr %pending.i, align 8, !dbg !708, !tbaa !700
  %sub75.i = sub i32 %26, %25, !dbg !709
  store i32 %sub75.i, ptr %read_pos, align 8, !dbg !709, !tbaa !601
  %28 = load ptr, ptr %skip.i, align 8, !dbg !710, !tbaa !711
  call void %28(ptr noundef nonnull %mf, i32 noundef %25) #7, !dbg !712
  br label %fill_window.exit, !dbg !713

fill_window.exit:                                 ; preds = %if.end55.i, %land.lhs.true.i, %if.then65.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %write_pos.i) #7, !dbg !714
  call void @llvm.dbg.value(metadata i32 %ret.1.i, metadata !583, metadata !DIExpression()), !dbg !715
  %cmp8.not = icmp eq i32 %ret.1.i, 0, !dbg !716
  br i1 %cmp8.not, label %if.end10, label %cleanup23

if.end10:                                         ; preds = %fill_window.exit, %land.lhs.true, %while.body
  %29 = load ptr, ptr %code, align 8, !dbg !718, !tbaa !719
  %30 = load ptr, ptr %pcoder, align 8, !dbg !720, !tbaa !721
  %call14 = call i32 %29(ptr noundef %30, ptr noundef nonnull %mf, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #7, !dbg !722
  call void @llvm.dbg.value(metadata i32 %call14, metadata !587, metadata !DIExpression()), !dbg !723
  %cmp15.not = icmp eq i32 %call14, 0, !dbg !724
  br i1 %cmp15.not, label %while.cond, label %cleanup20.thread, !dbg !726

cleanup20.thread:                                 ; preds = %if.end10
  store i32 0, ptr %action3, align 8, !dbg !727, !tbaa !597
  br label %cleanup23

cleanup23:                                        ; preds = %while.cond, %land.rhs, %fill_window.exit, %cleanup20.thread
  %retval.4 = phi i32 [ %call14, %cleanup20.thread ], [ 0, %while.cond ], [ 0, %land.rhs ], [ %ret.1.i, %fill_window.exit ], !dbg !588
  ret i32 %retval.4, !dbg !729
}

; Function Attrs: nounwind uwtable
define internal void @lz_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !730 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !732, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !733, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !734, metadata !DIExpression()), !dbg !735
  %next = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !736
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #7, !dbg !737
  %mf = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !738
  %hash = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 12, !dbg !739
  %0 = load ptr, ptr %hash, align 8, !dbg !739, !tbaa !451
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #7, !dbg !740
  %1 = load ptr, ptr %mf, align 8, !dbg !741, !tbaa !446
  tail call void @lzma_free(ptr noundef %1, ptr noundef %allocator) #7, !dbg !742
  %end = getelementptr inbounds %struct.lzma_lz_encoder, ptr %pcoder, i64 0, i32 2, !dbg !743
  %2 = load ptr, ptr %end, align 8, !dbg !743, !tbaa !745
  %cmp.not = icmp eq ptr %2, null, !dbg !746
  %3 = load ptr, ptr %pcoder, align 8, !dbg !747, !tbaa !721
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !748

if.then:                                          ; preds = %entry
  tail call void %2(ptr noundef %3, ptr noundef %allocator) #7, !dbg !749
  br label %if.end, !dbg !749

if.else:                                          ; preds = %entry
  tail call void @lzma_free(ptr noundef %3, ptr noundef %allocator) #7, !dbg !750
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @lzma_free(ptr noundef nonnull %pcoder, ptr noundef %allocator) #7, !dbg !751
  ret void, !dbg !752
}

; Function Attrs: nounwind uwtable
define internal i32 @lz_encoder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr nocapture noundef readnone %filters_null, ptr noundef %reversed_filters) #0 !dbg !753 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !755, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !756, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata ptr %filters_null, metadata !757, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata ptr %reversed_filters, metadata !758, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !759, metadata !DIExpression()), !dbg !762
  %options_update = getelementptr inbounds %struct.lzma_lz_encoder, ptr %pcoder, i64 0, i32 3, !dbg !763
  %0 = load ptr, ptr %options_update, align 8, !dbg !763, !tbaa !765
  %cmp = icmp eq ptr %0, null, !dbg !766
  br i1 %cmp, label %cleanup9, label %do.body, !dbg !767

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %pcoder, align 8, !dbg !768, !tbaa !721
  %call = tail call i32 %0(ptr noundef %1, ptr noundef %reversed_filters) #7, !dbg !768
  call void @llvm.dbg.value(metadata i32 %call, metadata !760, metadata !DIExpression()), !dbg !769
  %cmp5.not = icmp eq i32 %call, 0, !dbg !770
  br i1 %cmp5.not, label %do.end, label %cleanup9

do.end:                                           ; preds = %do.body
  %next = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !772
  %add.ptr = getelementptr inbounds %struct.lzma_filter, ptr %reversed_filters, i64 1, !dbg !773
  %call8 = tail call i32 @lzma_next_filter_update(ptr noundef nonnull %next, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #7, !dbg !774
  br label %cleanup9, !dbg !775

cleanup9:                                         ; preds = %entry, %do.body, %do.end
  %retval.1 = phi i32 [ %call8, %do.end ], [ %call, %do.body ], [ 11, %entry ], !dbg !762
  ret i32 %retval.1, !dbg !776
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !777 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local zeroext i8 @lzma_mf_is_supported(i32 noundef %mf) local_unnamed_addr #6 !dbg !778 {
entry:
  call void @llvm.dbg.value(metadata i32 %mf, metadata !783, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i8 0, metadata !784, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i1 undef, metadata !784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !785
  %0 = add i32 %mf, -3, !dbg !786
  %1 = icmp ult i32 %0, 2, !dbg !786
  call void @llvm.dbg.value(metadata i1 %1, metadata !784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !785
  call void @llvm.dbg.value(metadata !DIArgList(i1 undef, i1 %1), metadata !784, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !785
  %2 = and i32 %mf, -2, !dbg !787
  %3 = icmp eq i32 %2, 18, !dbg !787
  %4 = or i1 %3, %1, !dbg !787
  call void @llvm.dbg.value(metadata i1 %4, metadata !784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !785
  %cmp10 = icmp eq i32 %mf, 20, !dbg !788
  %narrow = or i1 %cmp10, %4, !dbg !790
  call void @llvm.dbg.value(metadata i1 %narrow, metadata !784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !785
  %conv = zext i1 %narrow to i8, !dbg !791
  ret i8 %conv, !dbg !792
}

declare !dbg !793 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @lzma_mf_hc3_find(ptr noundef, ptr noundef) #4

declare void @lzma_mf_hc3_skip(ptr noundef, i32 noundef) #4

declare i32 @lzma_mf_hc4_find(ptr noundef, ptr noundef) #4

declare void @lzma_mf_hc4_skip(ptr noundef, i32 noundef) #4

declare i32 @lzma_mf_bt2_find(ptr noundef, ptr noundef) #4

declare void @lzma_mf_bt2_skip(ptr noundef, i32 noundef) #4

declare i32 @lzma_mf_bt3_find(ptr noundef, ptr noundef) #4

declare void @lzma_mf_bt3_skip(ptr noundef, i32 noundef) #4

declare i32 @lzma_mf_bt4_find(ptr noundef, ptr noundef) #4

declare void @lzma_mf_bt4_skip(ptr noundef, i32 noundef) #4

declare !dbg !796 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

declare !dbg !799 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !802 i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lz/lz_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "65da03540b3892812a4487523e184b85")
!2 = !{!3, !12, !19, !33}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/lzma.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!8 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!9 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!10 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!11 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 250, baseType: !5, size: 32, elements: !14)
!13 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!16 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!17 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!18 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 57, baseType: !5, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!21 = !DIEnumerator(name: "LZMA_OK", value: 0)
!22 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!23 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!24 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!25 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!26 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!27 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!28 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!29 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!30 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!31 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!32 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !34, line: 27, baseType: !5, size: 32, elements: !35)
!34 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!35 = !{!36, !37, !38, !39}
!36 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!37 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!38 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!39 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!40 = !{!41, !46, !47, !117}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !42, line: 27, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !44, line: 45, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!45 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !49, line: 24, size: 1728, elements: !50)
!49 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lz/lz_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "65da03540b3892812a4487523e184b85")
!50 = !{!51, !150, !151}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "lz", scope: !48, file: !49, line: 26, baseType: !52, size: 256)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_encoder", file: !53, line: 208, baseType: !54)
!53 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lz/lz_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "780f78e6e21a3ca52f57df68bfdc6f53")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 192, size: 256, elements: !55)
!55 = !{!56, !60, !119, !136}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !54, file: !53, line: 194, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !59, line: 78, baseType: null)
!59 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!60 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !54, file: !53, line: 197, baseType: !61, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !65, !66, !114, !115, !117}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !13, line: 237, baseType: !19)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mf", file: !53, line: 28, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_mf_s", file: !53, line: 29, size: 960, elements: !70)
!70 = !{!71, !76, !79, !80, !81, !82, !83, !84, !85, !86, !87, !97, !101, !103, !104, !105, !106, !107, !108, !109, !110, !112, !113}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !69, file: !53, line: 35, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !42, line: 24, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !44, line: 38, baseType: !75)
!75 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !69, file: !53, line: 39, baseType: !77, size: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !42, line: 26, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !44, line: 42, baseType: !5)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_before", scope: !69, file: !53, line: 45, baseType: !77, size: 32, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_after", scope: !69, file: !53, line: 51, baseType: !77, size: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !69, file: !53, line: 58, baseType: !77, size: 32, offset: 160)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !69, file: !53, line: 63, baseType: !77, size: 32, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !69, file: !53, line: 67, baseType: !77, size: 32, offset: 224)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !69, file: !53, line: 75, baseType: !77, size: 32, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !69, file: !53, line: 80, baseType: !77, size: 32, offset: 288)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !69, file: !53, line: 84, baseType: !77, size: 32, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !69, file: !53, line: 92, baseType: !88, size: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!77, !67, !91}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match", file: !53, line: 25, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 22, size: 64, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !93, file: !53, line: 23, baseType: !77, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !93, file: !53, line: 24, baseType: !77, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !69, file: !53, line: 97, baseType: !98, size: 64, offset: 448)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !67, !77}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !69, file: !53, line: 99, baseType: !102, size: 64, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !69, file: !53, line: 100, baseType: !102, size: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_pos", scope: !69, file: !53, line: 101, baseType: !77, size: 32, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_size", scope: !69, file: !53, line: 102, baseType: !77, size: 32, offset: 672)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !69, file: !53, line: 103, baseType: !77, size: 32, offset: 704)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !69, file: !53, line: 106, baseType: !77, size: 32, offset: 736)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !69, file: !53, line: 109, baseType: !77, size: 32, offset: 768)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !69, file: !53, line: 114, baseType: !77, size: 32, offset: 800)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !69, file: !53, line: 119, baseType: !111, size: 32, offset: 832)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !13, line: 322, baseType: !12)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size_sum", scope: !69, file: !53, line: 122, baseType: !77, size: 32, offset: 864)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "sons_count", scope: !69, file: !53, line: 125, baseType: !77, size: 32, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!115 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 46, baseType: !45)
!118 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!119 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !54, file: !53, line: 202, baseType: !120, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !57, !123}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !13, line: 403, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 341, size: 192, elements: !126)
!126 = !{!127, !131, !135}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !125, file: !13, line: 376, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!46, !46, !117, !117}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !125, file: !13, line: 390, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !46, !46}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !125, file: !13, line: 401, baseType: !46, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "options_update", scope: !54, file: !53, line: 205, baseType: !137, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!64, !57, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !143, line: 65, baseType: !144)
!143 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 43, size: 128, elements: !145)
!145 = !{!146, !149}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !144, file: !143, line: 54, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !148, line: 63, baseType: !41)
!148 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!149 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !144, file: !143, line: 63, baseType: !46, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !48, file: !49, line: 29, baseType: !68, size: 960, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !48, file: !49, line: 32, baseType: !152, size: 512, offset: 1216)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !59, line: 80, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !59, line: 124, size: 512, elements: !154)
!154 = !{!155, !156, !157, !160, !168, !170, !177, !182}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !153, file: !59, line: 126, baseType: !57, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !153, file: !59, line: 130, baseType: !147, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !153, file: !59, line: 136, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !159, line: 90, baseType: !45)
!159 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!160 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !153, file: !59, line: 139, baseType: !161, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !59, line: 94, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!64, !57, !123, !165, !115, !117, !114, !115, !117, !111}
!165 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !153, file: !59, line: 144, baseType: !169, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !59, line: 102, baseType: !120)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !153, file: !59, line: 148, baseType: !171, size: 64, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !34, line: 55, baseType: !33)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !153, file: !59, line: 152, baseType: !178, size: 64, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!64, !57, !181, !181, !41}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !153, file: !59, line: 157, baseType: !183, size: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!64, !57, !123, !140, !140}
!186 = !{i32 7, !"Dwarf Version", i32 5}
!187 = !{i32 2, !"Debug Info Version", i32 3}
!188 = !{i32 1, !"wchar_size", i32 4}
!189 = !{i32 7, !"PIC Level", i32 2}
!190 = !{i32 7, !"PIE Level", i32 2}
!191 = !{i32 7, !"uwtable", i32 2}
!192 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!193 = distinct !DISubprogram(name: "lzma_lz_encoder_memusage", scope: !49, file: !49, line: 444, type: !194, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !211)
!194 = !DISubroutineType(types: !195)
!195 = !{!41, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_options", file: !53, line: 161, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 129, size: 512, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !208, !209, !210}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "before_size", scope: !199, file: !53, line: 132, baseType: !117, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !199, file: !53, line: 135, baseType: !117, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "after_size", scope: !199, file: !53, line: 139, baseType: !117, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !199, file: !53, line: 144, baseType: !117, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !199, file: !53, line: 148, baseType: !117, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "match_finder", scope: !199, file: !53, line: 151, baseType: !207, size: 32, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !4, line: 111, baseType: !3)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !199, file: !53, line: 154, baseType: !77, size: 32, offset: 352)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !199, file: !53, line: 157, baseType: !166, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !199, file: !53, line: 159, baseType: !77, size: 32, offset: 448)
!211 = !{!212, !213}
!212 = !DILocalVariable(name: "lz_options", arg: 1, scope: !193, file: !49, line: 444, type: !196)
!213 = !DILocalVariable(name: "mf", scope: !193, file: !49, line: 447, type: !68)
!214 = !DILocation(line: 0, scope: !193)
!215 = !DILocation(line: 447, column: 2, scope: !193)
!216 = !DILocation(line: 447, column: 10, scope: !193)
!217 = !DILocation(line: 455, column: 6, scope: !218)
!218 = distinct !DILexicalBlock(scope: !193, file: !49, line: 455, column: 6)
!219 = !DILocation(line: 455, column: 6, scope: !193)
!220 = !DILocation(line: 459, column: 23, scope: !193)
!221 = !{!222, !226, i64 108}
!222 = !{!"lzma_mf_s", !223, i64 0, !226, i64 8, !226, i64 12, !226, i64 16, !226, i64 20, !226, i64 24, !226, i64 28, !226, i64 32, !226, i64 36, !226, i64 40, !223, i64 48, !223, i64 56, !223, i64 64, !223, i64 72, !226, i64 80, !226, i64 84, !226, i64 88, !226, i64 92, !226, i64 96, !226, i64 100, !224, i64 104, !226, i64 108, !226, i64 112}
!223 = !{!"any pointer", !224, i64 0}
!224 = !{!"omnipotent char", !225, i64 0}
!225 = !{!"Simple C/C++ TBAA"}
!226 = !{!"int", !224, i64 0}
!227 = !DILocation(line: 459, column: 42, scope: !193)
!228 = !{!222, !226, i64 112}
!229 = !DILocation(line: 459, column: 37, scope: !193)
!230 = !DILocation(line: 459, column: 9, scope: !193)
!231 = !DILocation(line: 460, column: 5, scope: !193)
!232 = !DILocation(line: 461, column: 41, scope: !193)
!233 = !{!222, !226, i64 8}
!234 = !DILocation(line: 461, column: 27, scope: !193)
!235 = !DILocation(line: 461, column: 25, scope: !193)
!236 = !DILocation(line: 461, column: 47, scope: !193)
!237 = !DILocation(line: 459, column: 2, scope: !193)
!238 = !DILocation(line: 462, column: 1, scope: !193)
!239 = distinct !DISubprogram(name: "lz_encoder_prepare", scope: !49, file: !49, line: 184, type: !240, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !243)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !67, !123, !196}
!242 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!243 = !{!244, !245, !246, !247, !248, !250, !251, !253, !254, !255}
!244 = !DILocalVariable(name: "mf", arg: 1, scope: !239, file: !49, line: 184, type: !67)
!245 = !DILocalVariable(name: "allocator", arg: 2, scope: !239, file: !49, line: 184, type: !123)
!246 = !DILocalVariable(name: "lz_options", arg: 3, scope: !239, file: !49, line: 185, type: !196)
!247 = !DILocalVariable(name: "reserve", scope: !239, file: !49, line: 212, type: !77)
!248 = !DILocalVariable(name: "old_size", scope: !239, file: !49, line: 219, type: !249)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!250 = !DILocalVariable(name: "hash_bytes", scope: !239, file: !49, line: 289, type: !249)
!251 = !DILocalVariable(name: "is_bt", scope: !239, file: !49, line: 293, type: !252)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!253 = !DILocalVariable(name: "hs", scope: !239, file: !49, line: 294, type: !77)
!254 = !DILocalVariable(name: "old_count", scope: !239, file: !49, line: 336, type: !249)
!255 = !DILocalVariable(name: "new_count", scope: !239, file: !49, line: 342, type: !249)
!256 = !DILocation(line: 0, scope: !239)
!257 = !DILocation(line: 190, column: 18, scope: !258)
!258 = distinct !DILexicalBlock(scope: !239, file: !49, line: 190, column: 6)
!259 = !{!260, !261, i64 8}
!260 = !{!"", !261, i64 0, !261, i64 8, !261, i64 16, !261, i64 24, !261, i64 32, !224, i64 40, !226, i64 44, !223, i64 48, !226, i64 56}
!261 = !{!"long", !224, i64 0}
!262 = !DILocation(line: 191, column: 4, scope: !258)
!263 = !DILocation(line: 193, column: 19, scope: !258)
!264 = !{!260, !261, i64 32}
!265 = !DILocation(line: 193, column: 42, scope: !258)
!266 = !{!260, !261, i64 24}
!267 = !DILocation(line: 193, column: 28, scope: !258)
!268 = !DILocation(line: 190, column: 6, scope: !239)
!269 = !DILocation(line: 196, column: 37, scope: !239)
!270 = !{!260, !261, i64 0}
!271 = !DILocation(line: 196, column: 49, scope: !239)
!272 = !DILocation(line: 196, column: 25, scope: !239)
!273 = !DILocation(line: 196, column: 6, scope: !239)
!274 = !DILocation(line: 196, column: 23, scope: !239)
!275 = !{!222, !226, i64 12}
!276 = !DILocation(line: 198, column: 36, scope: !239)
!277 = !{!260, !261, i64 16}
!278 = !DILocation(line: 199, column: 4, scope: !239)
!279 = !DILocation(line: 198, column: 24, scope: !239)
!280 = !DILocation(line: 198, column: 6, scope: !239)
!281 = !DILocation(line: 198, column: 22, scope: !239)
!282 = !{!222, !226, i64 16}
!283 = !DILocation(line: 212, column: 43, scope: !239)
!284 = !DILocation(line: 212, column: 21, scope: !239)
!285 = !DILocation(line: 217, column: 4, scope: !239)
!286 = !DILocation(line: 217, column: 30, scope: !239)
!287 = !DILocation(line: 216, column: 10, scope: !239)
!288 = !DILocation(line: 219, column: 32, scope: !239)
!289 = !DILocation(line: 220, column: 34, scope: !239)
!290 = !DILocation(line: 220, column: 44, scope: !239)
!291 = !DILocation(line: 220, column: 11, scope: !239)
!292 = !DILocation(line: 224, column: 10, scope: !293)
!293 = distinct !DILexicalBlock(scope: !239, file: !49, line: 224, column: 6)
!294 = !{!222, !223, i64 0}
!295 = !DILocation(line: 224, column: 17, scope: !293)
!296 = !DILocation(line: 224, column: 25, scope: !293)
!297 = !DILocation(line: 225, column: 3, scope: !298)
!298 = distinct !DILexicalBlock(scope: !293, file: !49, line: 224, column: 50)
!299 = !DILocation(line: 226, column: 14, scope: !298)
!300 = !DILocation(line: 230, column: 34, scope: !239)
!301 = !DILocation(line: 231, column: 29, scope: !239)
!302 = !DILocation(line: 248, column: 32, scope: !239)
!303 = !DILocation(line: 227, column: 2, scope: !298)
!304 = !DILocation(line: 230, column: 22, scope: !239)
!305 = !DILocation(line: 230, column: 6, scope: !239)
!306 = !DILocation(line: 230, column: 20, scope: !239)
!307 = !{!222, !226, i64 100}
!308 = !DILocation(line: 231, column: 17, scope: !239)
!309 = !DILocation(line: 231, column: 6, scope: !239)
!310 = !DILocation(line: 231, column: 15, scope: !239)
!311 = !{!222, !226, i64 96}
!312 = !DILocation(line: 248, column: 20, scope: !239)
!313 = !DILocation(line: 248, column: 6, scope: !239)
!314 = !DILocation(line: 248, column: 18, scope: !239)
!315 = !{!222, !226, i64 84}
!316 = !DILocation(line: 251, column: 22, scope: !239)
!317 = !{!260, !224, i64 40}
!318 = !DILocation(line: 251, column: 2, scope: !239)
!319 = !DILocation(line: 262, column: 3, scope: !320)
!320 = distinct !DILexicalBlock(scope: !239, file: !49, line: 251, column: 36)
!321 = !DILocation(line: 268, column: 3, scope: !320)
!322 = !DILocation(line: 274, column: 3, scope: !320)
!323 = !DILocation(line: 280, column: 3, scope: !320)
!324 = !DILocation(line: 0, scope: !320)
!325 = !{!222, !223, i64 48}
!326 = !{!222, !223, i64 56}
!327 = !DILocation(line: 289, column: 55, scope: !239)
!328 = !DILocation(line: 290, column: 17, scope: !329)
!329 = distinct !DILexicalBlock(scope: !239, file: !49, line: 290, column: 6)
!330 = !DILocation(line: 290, column: 6, scope: !239)
!331 = !DILocation(line: 293, column: 47, scope: !239)
!332 = !DILocation(line: 293, column: 55, scope: !239)
!333 = !DILocation(line: 296, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !239, file: !49, line: 296, column: 6)
!335 = !DILocation(line: 296, column: 6, scope: !239)
!336 = !DILocation(line: 301, column: 8, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !49, line: 298, column: 9)
!338 = !DILocation(line: 302, column: 12, scope: !337)
!339 = !DILocation(line: 302, column: 6, scope: !337)
!340 = !DILocation(line: 303, column: 12, scope: !337)
!341 = !DILocation(line: 303, column: 6, scope: !337)
!342 = !DILocation(line: 304, column: 12, scope: !337)
!343 = !DILocation(line: 304, column: 6, scope: !337)
!344 = !DILocation(line: 306, column: 6, scope: !337)
!345 = !DILocation(line: 307, column: 6, scope: !337)
!346 = !DILocation(line: 309, column: 10, scope: !347)
!347 = distinct !DILexicalBlock(scope: !337, file: !49, line: 309, column: 7)
!348 = !DILocation(line: 309, column: 7, scope: !337)
!349 = !DILocation(line: 310, column: 19, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !49, line: 310, column: 8)
!351 = distinct !DILexicalBlock(scope: !347, file: !49, line: 309, column: 33)
!352 = !DILocation(line: 310, column: 8, scope: !351)
!353 = !DILocation(line: 0, scope: !334)
!354 = !DILocation(line: 317, column: 6, scope: !239)
!355 = !DILocation(line: 317, column: 16, scope: !239)
!356 = !{!222, !226, i64 88}
!357 = !DILocation(line: 320, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !239, file: !49, line: 320, column: 6)
!359 = !DILocation(line: 320, column: 6, scope: !239)
!360 = !DILocation(line: 322, column: 17, scope: !361)
!361 = distinct !DILexicalBlock(scope: !239, file: !49, line: 322, column: 6)
!362 = !DILocation(line: 322, column: 6, scope: !239)
!363 = !DILocation(line: 336, column: 33, scope: !239)
!364 = !DILocation(line: 336, column: 53, scope: !239)
!365 = !DILocation(line: 336, column: 47, scope: !239)
!366 = !DILocation(line: 337, column: 20, scope: !239)
!367 = !DILocation(line: 339, column: 6, scope: !239)
!368 = !DILocation(line: 342, column: 47, scope: !239)
!369 = !DILocation(line: 346, column: 16, scope: !370)
!370 = distinct !DILexicalBlock(scope: !239, file: !49, line: 346, column: 6)
!371 = !DILocation(line: 346, column: 6, scope: !239)
!372 = !DILocation(line: 347, column: 17, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !49, line: 346, column: 30)
!374 = !{!222, !223, i64 64}
!375 = !DILocation(line: 347, column: 3, scope: !373)
!376 = !DILocation(line: 348, column: 12, scope: !373)
!377 = !DILocation(line: 349, column: 2, scope: !373)
!378 = !DILocation(line: 352, column: 26, scope: !239)
!379 = !{!260, !226, i64 44}
!380 = !DILocation(line: 352, column: 6, scope: !239)
!381 = !DILocation(line: 352, column: 12, scope: !239)
!382 = !{!222, !226, i64 92}
!383 = !DILocation(line: 353, column: 16, scope: !384)
!384 = distinct !DILexicalBlock(scope: !239, file: !49, line: 353, column: 6)
!385 = !DILocation(line: 353, column: 6, scope: !239)
!386 = !DILocation(line: 0, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !49, line: 354, column: 7)
!388 = distinct !DILexicalBlock(scope: !384, file: !49, line: 353, column: 22)
!389 = !DILocation(line: 361, column: 1, scope: !239)
!390 = distinct !DISubprogram(name: "lzma_lz_encoder_init", scope: !49, file: !49, line: 502, type: !391, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !413)
!391 = !DISubroutineType(types: !392)
!392 = !{!64, !393, !123, !394, !406}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !59, line: 82, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !59, line: 109, size: 192, elements: !398)
!398 = !{!399, !400, !405}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !397, file: !59, line: 112, baseType: !147, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !397, file: !59, line: 116, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !59, line: 86, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!64, !393, !123, !394}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !397, file: !59, line: 119, baseType: !46, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!64, !409, !123, !410, !412}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!413 = !{!414, !415, !416, !417, !418, !419}
!414 = !DILocalVariable(name: "next", arg: 1, scope: !390, file: !49, line: 502, type: !393)
!415 = !DILocalVariable(name: "allocator", arg: 2, scope: !390, file: !49, line: 502, type: !123)
!416 = !DILocalVariable(name: "filters", arg: 3, scope: !390, file: !49, line: 503, type: !394)
!417 = !DILocalVariable(name: "lz_init", arg: 4, scope: !390, file: !49, line: 504, type: !406)
!418 = !DILocalVariable(name: "lz_options", scope: !390, file: !49, line: 536, type: !198)
!419 = !DILocalVariable(name: "ret_", scope: !420, file: !49, line: 537, type: !421)
!420 = distinct !DILexicalBlock(scope: !390, file: !49, line: 537, column: 2)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!422 = !DILocation(line: 0, scope: !390)
!423 = !DILocation(line: 514, column: 12, scope: !424)
!424 = distinct !DILexicalBlock(scope: !390, file: !49, line: 514, column: 6)
!425 = !{!426, !223, i64 0}
!426 = !{!"lzma_next_coder_s", !223, i64 0, !261, i64 8, !261, i64 16, !223, i64 24, !223, i64 32, !223, i64 40, !223, i64 48, !223, i64 56}
!427 = !DILocation(line: 514, column: 18, scope: !424)
!428 = !DILocation(line: 514, column: 6, scope: !390)
!429 = !DILocation(line: 515, column: 17, scope: !430)
!430 = distinct !DILexicalBlock(scope: !424, file: !49, line: 514, column: 27)
!431 = !DILocation(line: 515, column: 15, scope: !430)
!432 = !DILocation(line: 516, column: 19, scope: !433)
!433 = distinct !DILexicalBlock(scope: !430, file: !49, line: 516, column: 7)
!434 = !DILocation(line: 516, column: 7, scope: !430)
!435 = !DILocation(line: 519, column: 9, scope: !430)
!436 = !DILocation(line: 519, column: 14, scope: !430)
!437 = !{!426, !223, i64 24}
!438 = !DILocation(line: 520, column: 9, scope: !430)
!439 = !DILocation(line: 520, column: 13, scope: !430)
!440 = !{!426, !223, i64 32}
!441 = !DILocation(line: 521, column: 9, scope: !430)
!442 = !DILocation(line: 521, column: 16, scope: !430)
!443 = !{!426, !223, i64 56}
!444 = !DILocation(line: 527, column: 40, scope: !430)
!445 = !DILocation(line: 527, column: 50, scope: !430)
!446 = !{!447, !223, i64 32}
!447 = !{!"lzma_coder_s", !448, i64 0, !222, i64 32, !426, i64 152}
!448 = !{!"", !223, i64 0, !223, i64 8, !223, i64 16, !223, i64 24}
!449 = !DILocation(line: 528, column: 43, scope: !430)
!450 = !DILocation(line: 528, column: 48, scope: !430)
!451 = !{!447, !223, i64 96}
!452 = !DILocation(line: 529, column: 43, scope: !430)
!453 = !DILocation(line: 529, column: 57, scope: !430)
!454 = !{!447, !226, i64 140}
!455 = !DILocation(line: 530, column: 43, scope: !430)
!456 = !DILocation(line: 530, column: 54, scope: !430)
!457 = !{!447, !226, i64 144}
!458 = !DILocation(line: 532, column: 40, scope: !430)
!459 = !DILocation(line: 524, column: 48, scope: !430)
!460 = !DILocation(line: 532, column: 47, scope: !430)
!461 = !{i64 0, i64 8, !462, i64 8, i64 8, !463, i64 16, i64 8, !463, i64 24, i64 8, !462, i64 32, i64 8, !462, i64 40, i64 8, !462, i64 48, i64 8, !462, i64 56, i64 8, !462}
!462 = !{!223, !223, i64 0}
!463 = !{!261, !261, i64 0}
!464 = !{i64 0, i64 8, !463, i64 8, i64 8, !463, i64 16, i64 8, !462, i64 24, i64 8, !462, i64 32, i64 8, !462, i64 40, i64 8, !462, i64 48, i64 8, !462}
!465 = !DILocation(line: 537, column: 2, scope: !420)
!466 = !DILocation(line: 533, column: 2, scope: !430)
!467 = !DILocation(line: 536, column: 2, scope: !390)
!468 = !DILocation(line: 536, column: 18, scope: !390)
!469 = !{!470, !223, i64 16}
!470 = !{!"lzma_filter_info_s", !261, i64 0, !223, i64 8, !223, i64 16}
!471 = !DILocation(line: 0, scope: !420)
!472 = !DILocation(line: 537, column: 2, scope: !473)
!473 = distinct !DILexicalBlock(scope: !420, file: !49, line: 537, column: 2)
!474 = !DILocation(line: 542, column: 55, scope: !475)
!475 = distinct !DILexicalBlock(scope: !390, file: !49, line: 542, column: 6)
!476 = !DILocation(line: 542, column: 63, scope: !475)
!477 = !DILocation(line: 542, column: 6, scope: !475)
!478 = !DILocation(line: 542, column: 6, scope: !390)
!479 = !DILocation(line: 547, column: 52, scope: !480)
!480 = distinct !DILexicalBlock(scope: !390, file: !49, line: 547, column: 6)
!481 = !DILocation(line: 547, column: 60, scope: !480)
!482 = !DILocalVariable(name: "mf", arg: 1, scope: !483, file: !49, line: 365, type: !67)
!483 = distinct !DISubprogram(name: "lz_encoder_init", scope: !49, file: !49, line: 365, type: !240, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !484)
!484 = !{!482, !485, !486, !487}
!485 = !DILocalVariable(name: "allocator", arg: 2, scope: !483, file: !49, line: 365, type: !123)
!486 = !DILocalVariable(name: "lz_options", arg: 3, scope: !483, file: !49, line: 366, type: !196)
!487 = !DILocalVariable(name: "alloc_count", scope: !483, file: !49, line: 387, type: !488)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!489 = !DILocation(line: 0, scope: !483, inlinedAt: !490)
!490 = distinct !DILocation(line: 547, column: 6, scope: !480)
!491 = !DILocation(line: 369, column: 10, scope: !492, inlinedAt: !490)
!492 = distinct !DILexicalBlock(scope: !483, file: !49, line: 369, column: 6)
!493 = !DILocation(line: 369, column: 17, scope: !492, inlinedAt: !490)
!494 = !DILocation(line: 369, column: 6, scope: !483, inlinedAt: !490)
!495 = !DILocation(line: 370, column: 31, scope: !496, inlinedAt: !490)
!496 = distinct !DILexicalBlock(scope: !492, file: !49, line: 369, column: 26)
!497 = !DILocation(line: 370, column: 27, scope: !496, inlinedAt: !490)
!498 = !DILocation(line: 370, column: 16, scope: !496, inlinedAt: !490)
!499 = !DILocation(line: 370, column: 14, scope: !496, inlinedAt: !490)
!500 = !DILocation(line: 371, column: 18, scope: !501, inlinedAt: !490)
!501 = distinct !DILexicalBlock(scope: !496, file: !49, line: 371, column: 7)
!502 = !DILocation(line: 371, column: 7, scope: !496, inlinedAt: !490)
!503 = !DILocation(line: 379, column: 19, scope: !483, inlinedAt: !490)
!504 = !DILocation(line: 379, column: 6, scope: !483, inlinedAt: !490)
!505 = !DILocation(line: 379, column: 13, scope: !483, inlinedAt: !490)
!506 = !{!222, !226, i64 20}
!507 = !DILocation(line: 380, column: 6, scope: !483, inlinedAt: !490)
!508 = !DILocation(line: 383, column: 6, scope: !483, inlinedAt: !490)
!509 = !DILocation(line: 387, column: 33, scope: !483, inlinedAt: !490)
!510 = !DILocation(line: 396, column: 10, scope: !511, inlinedAt: !490)
!511 = distinct !DILexicalBlock(scope: !483, file: !49, line: 396, column: 6)
!512 = !DILocation(line: 381, column: 17, scope: !483, inlinedAt: !490)
!513 = !DILocation(line: 396, column: 15, scope: !511, inlinedAt: !490)
!514 = !DILocation(line: 396, column: 6, scope: !483, inlinedAt: !490)
!515 = !DILocation(line: 387, column: 53, scope: !483, inlinedAt: !490)
!516 = !DILocation(line: 387, column: 47, scope: !483, inlinedAt: !490)
!517 = !DILocation(line: 387, column: 29, scope: !483, inlinedAt: !490)
!518 = !DILocation(line: 397, column: 37, scope: !519, inlinedAt: !490)
!519 = distinct !DILexicalBlock(scope: !511, file: !49, line: 396, column: 24)
!520 = !DILocation(line: 397, column: 14, scope: !519, inlinedAt: !490)
!521 = !DILocation(line: 397, column: 12, scope: !519, inlinedAt: !490)
!522 = !DILocation(line: 399, column: 16, scope: !523, inlinedAt: !490)
!523 = distinct !DILexicalBlock(scope: !519, file: !49, line: 399, column: 7)
!524 = !DILocation(line: 399, column: 7, scope: !519, inlinedAt: !490)
!525 = !DILocation(line: 403, column: 16, scope: !483, inlinedAt: !490)
!526 = !DILocation(line: 403, column: 27, scope: !483, inlinedAt: !490)
!527 = !DILocation(line: 403, column: 21, scope: !483, inlinedAt: !490)
!528 = !DILocation(line: 403, column: 6, scope: !483, inlinedAt: !490)
!529 = !DILocation(line: 403, column: 10, scope: !483, inlinedAt: !490)
!530 = !{!222, !223, i64 72}
!531 = !DILocation(line: 404, column: 6, scope: !483, inlinedAt: !490)
!532 = !DILocation(line: 404, column: 17, scope: !483, inlinedAt: !490)
!533 = !{!222, !226, i64 80}
!534 = !DILocation(line: 412, column: 2, scope: !483, inlinedAt: !490)
!535 = !DILocation(line: 425, column: 18, scope: !536, inlinedAt: !490)
!536 = distinct !DILexicalBlock(scope: !483, file: !49, line: 425, column: 6)
!537 = !{!260, !223, i64 48}
!538 = !DILocation(line: 425, column: 30, scope: !536, inlinedAt: !490)
!539 = !DILocation(line: 426, column: 4, scope: !536, inlinedAt: !490)
!540 = !DILocation(line: 426, column: 19, scope: !536, inlinedAt: !490)
!541 = !{!260, !226, i64 56}
!542 = !DILocation(line: 426, column: 36, scope: !536, inlinedAt: !490)
!543 = !DILocation(line: 425, column: 6, scope: !483, inlinedAt: !490)
!544 = !DILocation(line: 429, column: 19, scope: !545, inlinedAt: !490)
!545 = distinct !DILexicalBlock(scope: !536, file: !49, line: 426, column: 41)
!546 = !DILocation(line: 429, column: 17, scope: !545, inlinedAt: !490)
!547 = !{!222, !226, i64 36}
!548 = !DILocation(line: 430, column: 14, scope: !545, inlinedAt: !490)
!549 = !DILocation(line: 431, column: 5, scope: !545, inlinedAt: !490)
!550 = !DILocation(line: 431, column: 36, scope: !545, inlinedAt: !490)
!551 = !DILocation(line: 430, column: 3, scope: !545, inlinedAt: !490)
!552 = !DILocation(line: 433, column: 7, scope: !545, inlinedAt: !490)
!553 = !DILocation(line: 433, column: 14, scope: !545, inlinedAt: !490)
!554 = !{!222, !224, i64 104}
!555 = !DILocation(line: 434, column: 7, scope: !545, inlinedAt: !490)
!556 = !DILocation(line: 434, column: 20, scope: !545, inlinedAt: !490)
!557 = !DILocation(line: 434, column: 3, scope: !545, inlinedAt: !490)
!558 = !DILocation(line: 435, column: 2, scope: !545, inlinedAt: !490)
!559 = !DILocation(line: 437, column: 6, scope: !483, inlinedAt: !490)
!560 = !DILocation(line: 437, column: 13, scope: !483, inlinedAt: !490)
!561 = !DILocation(line: 551, column: 61, scope: !390)
!562 = !DILocation(line: 551, column: 69, scope: !390)
!563 = !DILocation(line: 552, column: 12, scope: !390)
!564 = !DILocation(line: 551, column: 9, scope: !390)
!565 = !DILocation(line: 551, column: 2, scope: !390)
!566 = !DILocation(line: 553, column: 1, scope: !390)
!567 = !DISubprogram(name: "lzma_alloc", scope: !59, file: !59, line: 211, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{!46, !117, !123}
!570 = !{}
!571 = distinct !DISubprogram(name: "lz_encode", scope: !49, file: !49, line: 152, type: !163, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !572)
!572 = !{!573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !587}
!573 = !DILocalVariable(name: "pcoder", arg: 1, scope: !571, file: !49, line: 152, type: !57)
!574 = !DILocalVariable(name: "allocator", arg: 2, scope: !571, file: !49, line: 152, type: !123)
!575 = !DILocalVariable(name: "in", arg: 3, scope: !571, file: !49, line: 153, type: !165)
!576 = !DILocalVariable(name: "in_pos", arg: 4, scope: !571, file: !49, line: 153, type: !115)
!577 = !DILocalVariable(name: "in_size", arg: 5, scope: !571, file: !49, line: 154, type: !117)
!578 = !DILocalVariable(name: "out", arg: 6, scope: !571, file: !49, line: 155, type: !114)
!579 = !DILocalVariable(name: "out_pos", arg: 7, scope: !571, file: !49, line: 155, type: !115)
!580 = !DILocalVariable(name: "out_size", arg: 8, scope: !571, file: !49, line: 156, type: !117)
!581 = !DILocalVariable(name: "action", arg: 9, scope: !571, file: !49, line: 156, type: !111)
!582 = !DILocalVariable(name: "coder", scope: !571, file: !49, line: 158, type: !47)
!583 = !DILocalVariable(name: "ret_", scope: !584, file: !49, line: 164, type: !421)
!584 = distinct !DILexicalBlock(scope: !585, file: !49, line: 164, column: 4)
!585 = distinct !DILexicalBlock(scope: !586, file: !49, line: 162, column: 7)
!586 = distinct !DILexicalBlock(scope: !571, file: !49, line: 160, column: 50)
!587 = !DILocalVariable(name: "ret", scope: !586, file: !49, line: 168, type: !421)
!588 = !DILocation(line: 0, scope: !571)
!589 = !DILocation(line: 159, column: 2, scope: !571)
!590 = !DILocation(line: 159, column: 9, scope: !571)
!591 = !DILocation(line: 159, column: 18, scope: !571)
!592 = !DILocation(line: 160, column: 4, scope: !571)
!593 = !DILocation(line: 160, column: 8, scope: !571)
!594 = !DILocation(line: 160, column: 16, scope: !571)
!595 = !DILocation(line: 160, column: 26, scope: !571)
!596 = !DILocation(line: 162, column: 17, scope: !585)
!597 = !{!447, !224, i64 136}
!598 = !DILocation(line: 162, column: 24, scope: !585)
!599 = !DILocation(line: 162, column: 36, scope: !585)
!600 = !DILocation(line: 162, column: 49, scope: !585)
!601 = !{!447, !226, i64 56}
!602 = !DILocation(line: 163, column: 18, scope: !585)
!603 = !{!447, !226, i64 64}
!604 = !DILocation(line: 163, column: 5, scope: !585)
!605 = !DILocation(line: 162, column: 7, scope: !586)
!606 = !DILocalVariable(name: "pcoder", arg: 1, scope: !607, file: !49, line: 79, type: !57)
!607 = distinct !DISubprogram(name: "fill_window", scope: !49, file: !49, line: 79, type: !608, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !610)
!608 = !DISubroutineType(types: !609)
!609 = !{!64, !57, !123, !166, !116, !117, !111}
!610 = !{!606, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!611 = !DILocalVariable(name: "allocator", arg: 2, scope: !607, file: !49, line: 79, type: !123)
!612 = !DILocalVariable(name: "in", arg: 3, scope: !607, file: !49, line: 79, type: !166)
!613 = !DILocalVariable(name: "in_pos", arg: 4, scope: !607, file: !49, line: 80, type: !116)
!614 = !DILocalVariable(name: "in_size", arg: 5, scope: !607, file: !49, line: 80, type: !117)
!615 = !DILocalVariable(name: "action", arg: 6, scope: !607, file: !49, line: 80, type: !111)
!616 = !DILocalVariable(name: "coder", scope: !607, file: !49, line: 82, type: !47)
!617 = !DILocalVariable(name: "write_pos", scope: !607, file: !49, line: 92, type: !117)
!618 = !DILocalVariable(name: "ret", scope: !607, file: !49, line: 93, type: !64)
!619 = !DILocalVariable(name: "pending", scope: !620, file: !49, line: 134, type: !488)
!620 = distinct !DILexicalBlock(scope: !621, file: !49, line: 131, column: 50)
!621 = distinct !DILexicalBlock(scope: !607, file: !49, line: 130, column: 6)
!622 = !DILocation(line: 0, scope: !607, inlinedAt: !623)
!623 = distinct !DILocation(line: 164, column: 4, scope: !584)
!624 = !DILocation(line: 86, column: 38, scope: !625, inlinedAt: !623)
!625 = distinct !DILexicalBlock(scope: !607, file: !49, line: 86, column: 6)
!626 = !{!447, !226, i64 40}
!627 = !DILocation(line: 86, column: 55, scope: !625, inlinedAt: !623)
!628 = !{!447, !226, i64 48}
!629 = !DILocation(line: 86, column: 43, scope: !625, inlinedAt: !623)
!630 = !DILocation(line: 86, column: 25, scope: !625, inlinedAt: !623)
!631 = !DILocation(line: 86, column: 6, scope: !607, inlinedAt: !623)
!632 = !DILocation(line: 92, column: 31, scope: !607, inlinedAt: !623)
!633 = !{!447, !226, i64 68}
!634 = !DILocalVariable(name: "mf", arg: 1, scope: !635, file: !49, line: 44, type: !67)
!635 = distinct !DISubprogram(name: "move_window", scope: !49, file: !49, line: 44, type: !636, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !67}
!638 = !{!634, !639, !640}
!639 = !DILocalVariable(name: "move_offset", scope: !635, file: !49, line: 51, type: !249)
!640 = !DILocalVariable(name: "move_size", scope: !635, file: !49, line: 55, type: !488)
!641 = !DILocation(line: 0, scope: !635, inlinedAt: !642)
!642 = distinct !DILocation(line: 87, column: 3, scope: !625, inlinedAt: !623)
!643 = !DILocation(line: 52, column: 25, scope: !635, inlinedAt: !642)
!644 = !DILocation(line: 52, column: 19, scope: !635, inlinedAt: !642)
!645 = !DILocation(line: 52, column: 43, scope: !635, inlinedAt: !642)
!646 = !DILocation(line: 55, column: 31, scope: !635, inlinedAt: !642)
!647 = !DILocation(line: 55, column: 41, scope: !635, inlinedAt: !642)
!648 = !DILocation(line: 55, column: 27, scope: !635, inlinedAt: !642)
!649 = !DILocation(line: 59, column: 14, scope: !635, inlinedAt: !642)
!650 = !DILocation(line: 59, column: 33, scope: !635, inlinedAt: !642)
!651 = !DILocation(line: 59, column: 2, scope: !635, inlinedAt: !642)
!652 = !DILocation(line: 61, column: 13, scope: !635, inlinedAt: !642)
!653 = !DILocation(line: 62, column: 15, scope: !635, inlinedAt: !642)
!654 = !{!222, !226, i64 24}
!655 = !DILocation(line: 63, column: 17, scope: !635, inlinedAt: !642)
!656 = !{!222, !226, i64 32}
!657 = !DILocation(line: 64, column: 16, scope: !635, inlinedAt: !642)
!658 = !DILocation(line: 87, column: 3, scope: !625, inlinedAt: !623)
!659 = !DILocation(line: 92, column: 2, scope: !607, inlinedAt: !623)
!660 = !DILocation(line: 92, column: 21, scope: !607, inlinedAt: !623)
!661 = !DILocation(line: 92, column: 9, scope: !607, inlinedAt: !623)
!662 = !DILocation(line: 94, column: 18, scope: !663, inlinedAt: !623)
!663 = distinct !DILexicalBlock(scope: !607, file: !49, line: 94, column: 6)
!664 = !{!447, !223, i64 176}
!665 = !DILocation(line: 94, column: 23, scope: !663, inlinedAt: !623)
!666 = !DILocation(line: 94, column: 6, scope: !607, inlinedAt: !623)
!667 = !DILocation(line: 96, column: 46, scope: !668, inlinedAt: !623)
!668 = distinct !DILexicalBlock(scope: !663, file: !49, line: 94, column: 32)
!669 = !DILocation(line: 97, column: 27, scope: !668, inlinedAt: !623)
!670 = !DILocation(line: 97, column: 17, scope: !668, inlinedAt: !623)
!671 = !DILocation(line: 96, column: 3, scope: !668, inlinedAt: !623)
!672 = !DILocation(line: 99, column: 28, scope: !668, inlinedAt: !623)
!673 = !DILocation(line: 109, column: 24, scope: !607, inlinedAt: !623)
!674 = !DILocation(line: 109, column: 22, scope: !607, inlinedAt: !623)
!675 = !DILocation(line: 115, column: 6, scope: !607, inlinedAt: !623)
!676 = !DILocation(line: 99, column: 31, scope: !668, inlinedAt: !623)
!677 = !DILocation(line: 99, column: 39, scope: !668, inlinedAt: !623)
!678 = !DILocation(line: 103, column: 38, scope: !679, inlinedAt: !623)
!679 = distinct !DILexicalBlock(scope: !663, file: !49, line: 102, column: 9)
!680 = !{!447, !223, i64 152}
!681 = !DILocation(line: 105, column: 15, scope: !679, inlinedAt: !623)
!682 = !DILocation(line: 106, column: 15, scope: !679, inlinedAt: !623)
!683 = !DILocation(line: 106, column: 5, scope: !679, inlinedAt: !623)
!684 = !DILocation(line: 103, column: 9, scope: !679, inlinedAt: !623)
!685 = !DILocation(line: 0, scope: !663, inlinedAt: !623)
!686 = !DILocation(line: 115, column: 10, scope: !687, inlinedAt: !623)
!687 = distinct !DILexicalBlock(scope: !607, file: !49, line: 115, column: 6)
!688 = !DILocation(line: 118, column: 20, scope: !689, inlinedAt: !623)
!689 = distinct !DILexicalBlock(scope: !687, file: !49, line: 115, column: 30)
!690 = !DILocation(line: 121, column: 2, scope: !689, inlinedAt: !623)
!691 = !DILocation(line: 121, column: 45, scope: !692, inlinedAt: !623)
!692 = distinct !DILexicalBlock(scope: !687, file: !49, line: 121, column: 13)
!693 = !DILocation(line: 121, column: 33, scope: !692, inlinedAt: !623)
!694 = !DILocation(line: 121, column: 13, scope: !687, inlinedAt: !623)
!695 = !DILocation(line: 126, column: 5, scope: !696, inlinedAt: !623)
!696 = distinct !DILexicalBlock(scope: !692, file: !49, line: 121, column: 62)
!697 = !DILocation(line: 127, column: 2, scope: !696, inlinedAt: !623)
!698 = !DILocation(line: 0, scope: !687, inlinedAt: !623)
!699 = !DILocation(line: 130, column: 16, scope: !621, inlinedAt: !623)
!700 = !{!447, !226, i64 72}
!701 = !DILocation(line: 130, column: 24, scope: !621, inlinedAt: !623)
!702 = !DILocation(line: 131, column: 4, scope: !621, inlinedAt: !623)
!703 = !DILocation(line: 131, column: 17, scope: !621, inlinedAt: !623)
!704 = !DILocation(line: 131, column: 38, scope: !621, inlinedAt: !623)
!705 = !DILocation(line: 131, column: 26, scope: !621, inlinedAt: !623)
!706 = !DILocation(line: 130, column: 6, scope: !607, inlinedAt: !623)
!707 = !DILocation(line: 0, scope: !620, inlinedAt: !623)
!708 = !DILocation(line: 135, column: 21, scope: !620, inlinedAt: !623)
!709 = !DILocation(line: 140, column: 22, scope: !620, inlinedAt: !623)
!710 = !DILocation(line: 144, column: 13, scope: !620, inlinedAt: !623)
!711 = !{!447, !223, i64 88}
!712 = !DILocation(line: 144, column: 3, scope: !620, inlinedAt: !623)
!713 = !DILocation(line: 145, column: 2, scope: !620, inlinedAt: !623)
!714 = !DILocation(line: 148, column: 1, scope: !607, inlinedAt: !623)
!715 = !DILocation(line: 0, scope: !584)
!716 = !DILocation(line: 164, column: 4, scope: !717)
!717 = distinct !DILexicalBlock(scope: !584, file: !49, line: 164, column: 4)
!718 = !DILocation(line: 168, column: 34, scope: !586)
!719 = !{!447, !223, i64 8}
!720 = !DILocation(line: 168, column: 49, scope: !586)
!721 = !{!447, !223, i64 0}
!722 = !DILocation(line: 168, column: 24, scope: !586)
!723 = !DILocation(line: 0, scope: !586)
!724 = !DILocation(line: 170, column: 11, scope: !725)
!725 = distinct !DILexicalBlock(scope: !586, file: !49, line: 170, column: 7)
!726 = !DILocation(line: 170, column: 7, scope: !586)
!727 = !DILocation(line: 174, column: 21, scope: !728)
!728 = distinct !DILexicalBlock(scope: !725, file: !49, line: 170, column: 23)
!729 = !DILocation(line: 180, column: 1, scope: !571)
!730 = distinct !DISubprogram(name: "lz_encoder_end", scope: !49, file: !49, line: 466, type: !121, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !731)
!731 = !{!732, !733, !734}
!732 = !DILocalVariable(name: "pcoder", arg: 1, scope: !730, file: !49, line: 466, type: !57)
!733 = !DILocalVariable(name: "allocator", arg: 2, scope: !730, file: !49, line: 466, type: !123)
!734 = !DILocalVariable(name: "coder", scope: !730, file: !49, line: 468, type: !47)
!735 = !DILocation(line: 0, scope: !730)
!736 = !DILocation(line: 469, column: 24, scope: !730)
!737 = !DILocation(line: 469, column: 2, scope: !730)
!738 = !DILocation(line: 471, column: 19, scope: !730)
!739 = !DILocation(line: 471, column: 22, scope: !730)
!740 = !DILocation(line: 471, column: 2, scope: !730)
!741 = !DILocation(line: 472, column: 22, scope: !730)
!742 = !DILocation(line: 472, column: 2, scope: !730)
!743 = !DILocation(line: 474, column: 16, scope: !744)
!744 = distinct !DILexicalBlock(scope: !730, file: !49, line: 474, column: 6)
!745 = !{!447, !223, i64 16}
!746 = !DILocation(line: 474, column: 20, scope: !744)
!747 = !DILocation(line: 0, scope: !744)
!748 = !DILocation(line: 474, column: 6, scope: !730)
!749 = !DILocation(line: 475, column: 3, scope: !744)
!750 = !DILocation(line: 477, column: 3, scope: !744)
!751 = !DILocation(line: 479, column: 2, scope: !730)
!752 = !DILocation(line: 481, column: 1, scope: !730)
!753 = distinct !DISubprogram(name: "lz_encoder_update", scope: !49, file: !49, line: 485, type: !184, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !754)
!754 = !{!755, !756, !757, !758, !759, !760}
!755 = !DILocalVariable(name: "pcoder", arg: 1, scope: !753, file: !49, line: 485, type: !57)
!756 = !DILocalVariable(name: "allocator", arg: 2, scope: !753, file: !49, line: 485, type: !123)
!757 = !DILocalVariable(name: "filters_null", arg: 3, scope: !753, file: !49, line: 486, type: !140)
!758 = !DILocalVariable(name: "reversed_filters", arg: 4, scope: !753, file: !49, line: 487, type: !140)
!759 = !DILocalVariable(name: "coder", scope: !753, file: !49, line: 489, type: !47)
!760 = !DILocalVariable(name: "ret_", scope: !761, file: !49, line: 493, type: !421)
!761 = distinct !DILexicalBlock(scope: !753, file: !49, line: 493, column: 2)
!762 = !DILocation(line: 0, scope: !753)
!763 = !DILocation(line: 490, column: 16, scope: !764)
!764 = distinct !DILexicalBlock(scope: !753, file: !49, line: 490, column: 6)
!765 = !{!447, !223, i64 24}
!766 = !DILocation(line: 490, column: 31, scope: !764)
!767 = !DILocation(line: 490, column: 6, scope: !753)
!768 = !DILocation(line: 493, column: 2, scope: !761)
!769 = !DILocation(line: 0, scope: !761)
!770 = !DILocation(line: 493, column: 2, scope: !771)
!771 = distinct !DILexicalBlock(scope: !761, file: !49, line: 493, column: 2)
!772 = !DILocation(line: 497, column: 12, scope: !753)
!773 = !DILocation(line: 497, column: 46, scope: !753)
!774 = !DILocation(line: 496, column: 9, scope: !753)
!775 = !DILocation(line: 496, column: 2, scope: !753)
!776 = !DILocation(line: 498, column: 1, scope: !753)
!777 = !DISubprogram(name: "lzma_next_filter_init", scope: !59, file: !59, line: 226, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !570)
!778 = distinct !DISubprogram(name: "lzma_mf_is_supported", scope: !49, file: !49, line: 557, type: !779, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !782)
!779 = !DISubroutineType(types: !780)
!780 = !{!781, !207}
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !13, line: 29, baseType: !75)
!782 = !{!783, !784}
!783 = !DILocalVariable(name: "mf", arg: 1, scope: !778, file: !49, line: 557, type: !207)
!784 = !DILocalVariable(name: "ret", scope: !778, file: !49, line: 559, type: !242)
!785 = !DILocation(line: 0, scope: !778)
!786 = !DILocation(line: 567, column: 6, scope: !778)
!787 = !DILocation(line: 577, column: 6, scope: !778)
!788 = !DILocation(line: 582, column: 9, scope: !789)
!789 = distinct !DILexicalBlock(scope: !778, file: !49, line: 582, column: 6)
!790 = !DILocation(line: 582, column: 6, scope: !778)
!791 = !DILocation(line: 586, column: 9, scope: !778)
!792 = !DILocation(line: 586, column: 2, scope: !778)
!793 = !DISubprogram(name: "lzma_free", scope: !59, file: !59, line: 215, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !570)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !46, !123}
!796 = !DISubprogram(name: "lzma_bufcpy", scope: !59, file: !59, line: 242, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !570)
!797 = !DISubroutineType(types: !798)
!798 = !{!117, !165, !115, !117, !114, !115, !117}
!799 = !DISubprogram(name: "lzma_next_end", scope: !59, file: !59, line: 237, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !570)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !393, !123}
!802 = !DISubprogram(name: "lzma_next_filter_update", scope: !59, file: !59, line: 231, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !570)
!803 = !DISubroutineType(types: !804)
!804 = !{!64, !393, !123, !140}
