; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/lzma/lzma2_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma2_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_lz_encoder = type { ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, ptr, %struct.lzma_options_lzma, i8, i8, i8, i64, i64, i64, [65542 x i8] }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_lz_options = type { i64, i64, i64, i64, i64, i32, i32, ptr, i32 }
%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_filter = type { i64, ptr }

@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma2_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !128 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !209, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !210, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata ptr %filters, metadata !211, metadata !DIExpression()), !dbg !212
  %call = tail call i32 @lzma_lz_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @lzma2_encoder_init) #7, !dbg !213
  ret i32 %call, !dbg !214
}

declare !dbg !215 i32 @lzma_lz_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_encoder_init(ptr nocapture noundef %lz, ptr noundef %allocator, ptr noundef readonly %options, ptr noundef %lz_options) #0 !dbg !294 {
entry:
  call void @llvm.dbg.value(metadata ptr %lz, metadata !296, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !297, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %options, metadata !298, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %lz_options, metadata !299, metadata !DIExpression()), !dbg !303
  %cmp = icmp eq ptr %options, null, !dbg !304
  br i1 %cmp, label %return, label %if.end, !dbg !306

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %lz, align 8, !dbg !307, !tbaa !309
  %cmp1 = icmp eq ptr %0, null, !dbg !314
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !315

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @lzma_alloc(i64 noundef 65704, ptr noundef %allocator) #7, !dbg !316
  store ptr %call, ptr %lz, align 8, !dbg !318, !tbaa !309
  %cmp5 = icmp eq ptr %call, null, !dbg !319
  br i1 %cmp5, label %return, label %if.end7, !dbg !321

if.end7:                                          ; preds = %if.then2
  %code = getelementptr inbounds %struct.lzma_lz_encoder, ptr %lz, i64 0, i32 1, !dbg !322
  store ptr @lzma2_encode, ptr %code, align 8, !dbg !323, !tbaa !324
  %end = getelementptr inbounds %struct.lzma_lz_encoder, ptr %lz, i64 0, i32 2, !dbg !325
  store ptr @lzma2_encoder_end, ptr %end, align 8, !dbg !326, !tbaa !327
  %options_update = getelementptr inbounds %struct.lzma_lz_encoder, ptr %lz, i64 0, i32 3, !dbg !328
  store ptr @lzma2_encoder_options_update, ptr %options_update, align 8, !dbg !329, !tbaa !330
  %lzma = getelementptr inbounds %struct.lzma_coder_s, ptr %call, i64 0, i32 1, !dbg !331
  store ptr null, ptr %lzma, align 8, !dbg !332, !tbaa !333
  br label %if.end9, !dbg !339

if.end9:                                          ; preds = %if.end7, %if.end
  %1 = phi ptr [ %call, %if.end7 ], [ %0, %if.end ], !dbg !340
  %opt_cur = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 2, !dbg !341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %opt_cur, ptr noundef nonnull align 8 dereferenceable(112) %options, i64 112, i1 false), !dbg !342, !tbaa.struct !343
  %2 = load ptr, ptr %lz, align 8, !dbg !347, !tbaa !309
  store i32 0, ptr %2, align 8, !dbg !348, !tbaa !349
  %need_properties = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 3, !dbg !350
  store i8 1, ptr %need_properties, align 8, !dbg !351, !tbaa !352
  %need_state_reset = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 4, !dbg !353
  store i8 0, ptr %need_state_reset, align 1, !dbg !354, !tbaa !355
  %preset_dict = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 2, i32 1, !dbg !356
  %3 = load ptr, ptr %preset_dict, align 8, !dbg !356, !tbaa !357
  %cmp16 = icmp eq ptr %3, null, !dbg !358
  br i1 %cmp16, label %lor.end, label %lor.rhs, !dbg !359

lor.rhs:                                          ; preds = %if.end9
  %preset_dict_size = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 2, i32 2, !dbg !360
  %4 = load i32, ptr %preset_dict_size, align 8, !dbg !360, !tbaa !361
  %cmp19 = icmp eq i32 %4, 0, !dbg !362
  %phi.cast = zext i1 %cmp19 to i8, !dbg !359
  br label %lor.end, !dbg !359

lor.end:                                          ; preds = %lor.rhs, %if.end9
  %5 = phi i8 [ 1, %if.end9 ], [ %phi.cast, %lor.rhs ]
  %need_dictionary_reset = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 5, !dbg !363
  store i8 %5, ptr %need_dictionary_reset, align 2, !dbg !364, !tbaa !365
  %lzma22 = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 1, !dbg !366
  %opt_cur24 = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 2, !dbg !366
  %call25 = tail call i32 @lzma_lzma_encoder_create(ptr noundef nonnull %lzma22, ptr noundef %allocator, ptr noundef nonnull %opt_cur24, ptr noundef %lz_options) #7, !dbg !366
  call void @llvm.dbg.value(metadata i32 %call25, metadata !300, metadata !DIExpression()), !dbg !367
  %cmp26.not = icmp eq i32 %call25, 0, !dbg !368
  br i1 %cmp26.not, label %do.end, label %return

do.end:                                           ; preds = %lor.end
  %6 = load i64, ptr %lz_options, align 8, !dbg !370, !tbaa !372
  %dict_size = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 1, !dbg !374
  %7 = load i64, ptr %dict_size, align 8, !dbg !374, !tbaa !375
  %add = add i64 %7, %6, !dbg !376
  %cmp29 = icmp ult i64 %add, 65536, !dbg !377
  br i1 %cmp29, label %if.then30, label %return, !dbg !378

if.then30:                                        ; preds = %do.end
  %sub = sub i64 65536, %7, !dbg !379
  store i64 %sub, ptr %lz_options, align 8, !dbg !380, !tbaa !372
  br label %return, !dbg !381

return:                                           ; preds = %lor.end, %do.end, %if.then30, %if.then2, %entry
  %retval.1 = phi i32 [ %call25, %lor.end ], [ 11, %entry ], [ 5, %if.then2 ], [ 0, %if.then30 ], [ 0, %do.end ], !dbg !303
  ret i32 %retval.1, !dbg !382
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_lzma2_encoder_memusage(ptr noundef %options) local_unnamed_addr #0 !dbg !383 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !387, metadata !DIExpression()), !dbg !390
  %call = tail call i64 @lzma_lzma_encoder_memusage(ptr noundef %options) #7, !dbg !391
  call void @llvm.dbg.value(metadata i64 %call, metadata !388, metadata !DIExpression()), !dbg !390
  %cmp = icmp eq i64 %call, -1, !dbg !392
  %add = add i64 %call, 65704
  %spec.select = select i1 %cmp, i64 -1, i64 %add, !dbg !394
  ret i64 %spec.select, !dbg !395
}

declare !dbg !396 i64 @lzma_lzma_encoder_memusage(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local i32 @lzma_lzma2_props_encode(ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %out) local_unnamed_addr #2 !dbg !398 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !402, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata ptr %out, metadata !403, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata ptr %options, metadata !404, metadata !DIExpression()), !dbg !407
  %0 = load i32, ptr %options, align 8, !dbg !408, !tbaa !409
  %cmp = icmp ugt i32 %0, 4096, !dbg !408
  %phi.bo = add i32 %0, -1
  %spec.select = select i1 %cmp, i32 %phi.bo, i32 4095, !dbg !408
  call void @llvm.dbg.value(metadata i32 undef, metadata !406, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !406, metadata !DIExpression()), !dbg !407
  %shr = lshr i32 %spec.select, 2, !dbg !410
  %or = or i32 %shr, %spec.select, !dbg !411
  call void @llvm.dbg.value(metadata i32 %or, metadata !406, metadata !DIExpression()), !dbg !407
  %shr2 = lshr i32 %or, 3, !dbg !412
  %or3 = or i32 %shr2, %or, !dbg !413
  call void @llvm.dbg.value(metadata i32 %or3, metadata !406, metadata !DIExpression()), !dbg !407
  %shr4 = lshr i32 %or3, 4, !dbg !414
  %or5 = or i32 %shr4, %or3, !dbg !415
  call void @llvm.dbg.value(metadata i32 %or5, metadata !406, metadata !DIExpression()), !dbg !407
  %shr6 = lshr i32 %or5, 8, !dbg !416
  %or7 = or i32 %shr6, %or5, !dbg !417
  call void @llvm.dbg.value(metadata i32 %or7, metadata !406, metadata !DIExpression()), !dbg !407
  %shr8 = lshr i32 %or7, 16, !dbg !418
  %or9 = or i32 %shr8, %or7, !dbg !419
  call void @llvm.dbg.value(metadata i32 %or9, metadata !406, metadata !DIExpression()), !dbg !407
  %cmp10 = icmp eq i32 %or9, -1, !dbg !420
  br i1 %cmp10, label %if.end, label %if.else, !dbg !422

if.else:                                          ; preds = %entry
  %add = add nuw i32 %or9, 1, !dbg !423
  call void @llvm.dbg.value(metadata i32 %add, metadata !424, metadata !DIExpression()), !dbg !430
  %cmp.i = icmp ult i32 %or9, 8191, !dbg !432
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !434

if.then.i:                                        ; preds = %if.else
  %idxprom.i = zext i32 %add to i64, !dbg !435
  %arrayidx.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom.i, !dbg !435
  %1 = load i8, ptr %arrayidx.i, align 1, !dbg !435, !tbaa !346
  br label %get_pos_slot.exit, !dbg !436

if.end.i:                                         ; preds = %if.else
  %cmp1.i = icmp ult i32 %or9, 33554431, !dbg !437
  br i1 %cmp1.i, label %if.then3.i, label %if.end7.i, !dbg !439

if.then3.i:                                       ; preds = %if.end.i
  %shr.i = lshr i32 %add, 12, !dbg !440
  %idxprom4.i = zext i32 %shr.i to i64, !dbg !440
  %arrayidx5.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom4.i, !dbg !440
  %2 = load i8, ptr %arrayidx5.i, align 1, !dbg !440, !tbaa !346
  %add.i = add i8 %2, 24, !dbg !440
  br label %get_pos_slot.exit, !dbg !441

if.end7.i:                                        ; preds = %if.end.i
  %shr8.i = lshr i32 %add, 24, !dbg !442
  %idxprom9.i = zext i32 %shr8.i to i64, !dbg !442
  %arrayidx10.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom9.i, !dbg !442
  %3 = load i8, ptr %arrayidx10.i, align 1, !dbg !442, !tbaa !346
  %add12.i = add i8 %3, 48, !dbg !442
  br label %get_pos_slot.exit, !dbg !443

get_pos_slot.exit:                                ; preds = %if.then.i, %if.then3.i, %if.end7.i
  %retval.0.i = phi i8 [ %1, %if.then.i ], [ %add.i, %if.then3.i ], [ %add12.i, %if.end7.i ], !dbg !430
  %conv = add i8 %retval.0.i, -24, !dbg !444
  br label %if.end

if.end:                                           ; preds = %entry, %get_pos_slot.exit
  %storemerge = phi i8 [ %conv, %get_pos_slot.exit ], [ 40, %entry ], !dbg !445
  store i8 %storemerge, ptr %out, align 1, !dbg !445, !tbaa !346
  ret i32 0, !dbg !446
}

declare !dbg !447 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_encode(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size) #0 !dbg !450 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !454, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata ptr %mf, metadata !455, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata ptr %out, metadata !456, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !457, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !458, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !459, metadata !DIExpression()), !dbg !471
  %0 = load i64, ptr %out_pos, align 8, !dbg !472, !tbaa !473
  %cmp173 = icmp ult i64 %0, %out_size, !dbg !474
  br i1 %cmp173, label %while.body.lr.ph, label %cleanup91, !dbg !475

while.body.lr.ph:                                 ; preds = %entry
  %buf73 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9
  %buf_pos75 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 8
  %uncompressed_size84 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6
  %1 = getelementptr i8, ptr %mf, i64 24
  %write_pos.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 8
  %read_pos.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5
  %read_ahead.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 6
  %need_state_reset = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4
  %lzma = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1
  %opt_cur = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %compressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7
  %match_len_max = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 19
  %add.ptr = getelementptr inbounds i8, ptr %buf73, i64 6
  %need_dictionary_reset.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5
  %arrayidx5.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, i64 1
  %arrayidx10.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, i64 2
  %need_properties.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3
  %.pre = load i32, ptr %pcoder, align 8, !dbg !476, !tbaa !349
  br label %while.body, !dbg !475

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %2 = phi i32 [ %.pre, %while.body.lr.ph ], [ %37, %sw.epilog ], !dbg !476
  %3 = phi i64 [ %0, %while.body.lr.ph ], [ %38, %sw.epilog ]
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %while.body.sw.bb14_crit_edge
    i32 2, label %while.body.sw.bb60_crit_edge
    i32 3, label %sw.bb72
    i32 4, label %sw.bb83
  ], !dbg !477

while.body.sw.bb60_crit_edge:                     ; preds = %while.body
  %.pre184 = load i64, ptr %compressed_size, align 8, !dbg !478, !tbaa !479
  br label %sw.bb60, !dbg !477

while.body.sw.bb14_crit_edge:                     ; preds = %while.body
  %.pre181 = load i64, ptr %uncompressed_size84, align 8, !dbg !480, !tbaa !481
  br label %sw.bb14, !dbg !477

sw.bb:                                            ; preds = %while.body
  call void @llvm.dbg.value(metadata ptr %mf, metadata !482, metadata !DIExpression()), !dbg !489
  %4 = load i32, ptr %write_pos.i, align 4, !dbg !492, !tbaa !493
  %5 = load i32, ptr %read_pos.i, align 8, !dbg !495, !tbaa !496
  %sub.i = sub i32 %4, %5, !dbg !497
  %6 = load i32, ptr %read_ahead.i, align 4, !dbg !498, !tbaa !499
  %add.i = sub i32 0, %6, !dbg !500
  %cmp1 = icmp eq i32 %sub.i, %add.i, !dbg !500
  br i1 %cmp1, label %if.then, label %if.end6, !dbg !501

if.then:                                          ; preds = %sw.bb
  %action = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 20, !dbg !502
  %7 = load i32, ptr %action, align 8, !dbg !502, !tbaa !505
  %cmp2 = icmp eq i32 %7, 3, !dbg !506
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !507

if.then3:                                         ; preds = %if.then
  %inc = add nuw i64 %3, 1, !dbg !508
  store i64 %inc, ptr %out_pos, align 8, !dbg !508, !tbaa !473
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %3, !dbg !509
  store i8 0, ptr %arrayidx, align 1, !dbg !510, !tbaa !346
  br label %if.end, !dbg !509

if.end:                                           ; preds = %if.then3, %if.then
  %cmp5 = icmp ne i32 %7, 0, !dbg !511
  %cond = zext i1 %cmp5 to i32, !dbg !512
  br label %cleanup91, !dbg !513

if.end6:                                          ; preds = %sw.bb
  %8 = load i8, ptr %need_state_reset, align 1, !dbg !514, !tbaa !355, !range !515
  %tobool.not = icmp eq i8 %8, 0, !dbg !514
  br i1 %tobool.not, label %if.end12, label %do.body, !dbg !516

do.body:                                          ; preds = %if.end6
  %9 = load ptr, ptr %lzma, align 8, !dbg !517, !tbaa !333
  %call8 = tail call i32 @lzma_lzma_encoder_reset(ptr noundef %9, ptr noundef nonnull %opt_cur) #7, !dbg !517
  call void @llvm.dbg.value(metadata i32 %call8, metadata !461, metadata !DIExpression()), !dbg !518
  %cmp9.not = icmp eq i32 %call8, 0, !dbg !519
  br i1 %cmp9.not, label %if.end12, label %cleanup91

if.end12:                                         ; preds = %do.body, %if.end6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %uncompressed_size84, i8 0, i64 16, i1 false), !dbg !521
  store i32 1, ptr %pcoder, align 8, !dbg !522, !tbaa !349
  br label %sw.bb14, !dbg !523

sw.bb14:                                          ; preds = %while.body.sw.bb14_crit_edge, %if.end12
  %10 = phi i64 [ %.pre181, %while.body.sw.bb14_crit_edge ], [ 0, %if.end12 ], !dbg !480
  %11 = trunc i64 %10 to i32, !dbg !524
  %conv = sub i32 2097152, %11, !dbg !524
  call void @llvm.dbg.value(metadata i32 %conv, metadata !465, metadata !DIExpression()), !dbg !525
  %12 = load i32, ptr %match_len_max, align 4, !dbg !526, !tbaa !528
  %cmp16 = icmp ult i32 %conv, %12, !dbg !529
  %.pre182 = load i32, ptr %read_pos.i, align 8, !dbg !525, !tbaa !496
  %.pre183 = load i32, ptr %read_ahead.i, align 4, !dbg !525, !tbaa !499
  br i1 %cmp16, label %if.end22, label %if.else, !dbg !530

if.else:                                          ; preds = %sw.bb14
  %13 = add i32 %conv, %.pre182, !dbg !531
  %14 = add i32 %12, %.pre183, !dbg !531
  %sub21 = sub i32 %13, %14, !dbg !531
  call void @llvm.dbg.value(metadata i32 %sub21, metadata !468, metadata !DIExpression()), !dbg !525
  br label %if.end22

if.end22:                                         ; preds = %sw.bb14, %if.else
  %limit.0 = phi i32 [ %sub21, %if.else ], [ 0, %sw.bb14 ], !dbg !533
  call void @llvm.dbg.value(metadata i32 %limit.0, metadata !468, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata !DIArgList(i32 %.pre182, i32 %.pre183), metadata !469, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !525
  %15 = load ptr, ptr %lzma, align 8, !dbg !534, !tbaa !333
  %call28 = tail call i32 @lzma_lzma_encode(ptr noundef %15, ptr noundef nonnull %mf, ptr noundef nonnull %add.ptr, ptr noundef nonnull %compressed_size, i64 noundef 65536, i32 noundef %limit.0) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %call28, metadata !470, metadata !DIExpression()), !dbg !525
  %16 = load i32, ptr %read_pos.i, align 8, !dbg !536, !tbaa !496
  %17 = load i32, ptr %read_ahead.i, align 4, !dbg !537, !tbaa !499
  %18 = add i32 %.pre183, %16, !dbg !538
  %19 = add i32 %.pre182, %17, !dbg !538
  %sub32 = sub i32 %18, %19, !dbg !538
  %conv33 = zext i32 %sub32 to i64, !dbg !539
  %20 = load i64, ptr %uncompressed_size84, align 8, !dbg !540, !tbaa !481
  %add35 = add i64 %20, %conv33, !dbg !540
  store i64 %add35, ptr %uncompressed_size84, align 8, !dbg !540, !tbaa !481
  %cmp36.not = icmp eq i32 %call28, 1, !dbg !541
  br i1 %cmp36.not, label %if.end39, label %cleanup91, !dbg !543

if.end39:                                         ; preds = %if.end22
  %21 = load i64, ptr %compressed_size, align 8, !dbg !544, !tbaa !479
  %cmp42.not = icmp ult i64 %21, %add35, !dbg !546
  br i1 %cmp42.not, label %if.end52, label %cleanup54, !dbg !547

if.end52:                                         ; preds = %if.end39
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !548, metadata !DIExpression()) #7, !dbg !556
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !553, metadata !DIExpression()) #7, !dbg !556
  %22 = load i8, ptr %need_properties.i, align 8, !dbg !558, !tbaa !352, !range !515
  %tobool.not.i154 = icmp eq i8 %22, 0, !dbg !558
  br i1 %tobool.not.i154, label %if.else5.i, label %if.then.i, !dbg !560

if.then.i:                                        ; preds = %if.end52
  call void @llvm.dbg.value(metadata i64 0, metadata !554, metadata !DIExpression()) #7, !dbg !556
  %23 = load i8, ptr %need_dictionary_reset.i, align 2, !dbg !561, !tbaa !365, !range !515
  %tobool1.not.i = icmp eq i8 %23, 0, !dbg !561
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i, !dbg !564

if.then2.i:                                       ; preds = %if.then.i
  store i8 -32, ptr %buf73, align 1, !dbg !565, !tbaa !346
  br label %if.end14.i, !dbg !566

if.else.i:                                        ; preds = %if.then.i
  store i8 -64, ptr %buf73, align 1, !dbg !567, !tbaa !346
  br label %if.end14.i

if.else5.i:                                       ; preds = %if.end52
  call void @llvm.dbg.value(metadata i64 1, metadata !554, metadata !DIExpression()) #7, !dbg !556
  %24 = load i8, ptr %need_state_reset, align 1, !dbg !568, !tbaa !355, !range !515
  %tobool6.not.i = icmp eq i8 %24, 0, !dbg !568
  br i1 %tobool6.not.i, label %if.else10.i, label %if.then7.i, !dbg !571

if.then7.i:                                       ; preds = %if.else5.i
  store i8 -96, ptr %arrayidx5.i, align 1, !dbg !572, !tbaa !346
  br label %if.end14.i, !dbg !573

if.else10.i:                                      ; preds = %if.else5.i
  store i8 -128, ptr %arrayidx5.i, align 1, !dbg !574, !tbaa !346
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else10.i, %if.then7.i, %if.else.i, %if.then2.i
  %pos.0.i = phi i64 [ 0, %if.then2.i ], [ 0, %if.else.i ], [ 1, %if.then7.i ], [ 1, %if.else10.i ], !dbg !575
  call void @llvm.dbg.value(metadata i64 %pos.0.i, metadata !554, metadata !DIExpression()) #7, !dbg !556
  store i64 %pos.0.i, ptr %buf_pos75, align 8, !dbg !576, !tbaa !577
  %sub.i158 = add i64 %add35, -1, !dbg !578
  call void @llvm.dbg.value(metadata i64 %sub.i158, metadata !555, metadata !DIExpression()) #7, !dbg !556
  %shr.i159 = lshr i64 %sub.i158, 16, !dbg !579
  %inc.i = add nuw nsw i64 %pos.0.i, 1, !dbg !580
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !554, metadata !DIExpression()) #7, !dbg !556
  %arrayidx16.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, i64 %pos.0.i, !dbg !581
  %25 = load i8, ptr %arrayidx16.i, align 1, !dbg !582, !tbaa !346
  %26 = trunc i64 %shr.i159 to i8, !dbg !582
  %conv17.i = add i8 %25, %26, !dbg !582
  store i8 %conv17.i, ptr %arrayidx16.i, align 1, !dbg !582, !tbaa !346
  %shr18.i = lshr i64 %sub.i158, 8, !dbg !583
  %conv19.i = trunc i64 %shr18.i to i8, !dbg !584
  %inc21.i = or i64 %pos.0.i, 2, !dbg !585
  call void @llvm.dbg.value(metadata i64 %inc21.i, metadata !554, metadata !DIExpression()) #7, !dbg !556
  %arrayidx22.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, i64 %inc.i, !dbg !586
  store i8 %conv19.i, ptr %arrayidx22.i, align 1, !dbg !587, !tbaa !346
  %conv24.i = trunc i64 %sub.i158 to i8, !dbg !588
  %inc26.i = add nuw nsw i64 %pos.0.i, 3, !dbg !589
  call void @llvm.dbg.value(metadata i64 %inc26.i, metadata !554, metadata !DIExpression()) #7, !dbg !556
  %arrayidx27.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, i64 %inc21.i, !dbg !590
  store i8 %conv24.i, ptr %arrayidx27.i, align 1, !dbg !591, !tbaa !346
  %sub28.i = add i64 %21, -1, !dbg !592
  call void @llvm.dbg.value(metadata i64 %sub28.i, metadata !555, metadata !DIExpression()) #7, !dbg !556
  %shr29.i = lshr i64 %sub28.i, 8, !dbg !593
  %conv30.i = trunc i64 %shr29.i to i8, !dbg !594
  %inc32.i = or i64 %pos.0.i, 4, !dbg !595
  call void @llvm.dbg.value(metadata i64 %inc32.i, metadata !554, metadata !DIExpression()) #7, !dbg !556
  %arrayidx33.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, i64 %inc26.i, !dbg !596
  store i8 %conv30.i, ptr %arrayidx33.i, align 1, !dbg !597, !tbaa !346
  %conv35.i = trunc i64 %sub28.i to i8, !dbg !598
  call void @llvm.dbg.value(metadata i64 %inc32.i, metadata !554, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !556
  %arrayidx38.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, i64 %inc32.i, !dbg !599
  store i8 %conv35.i, ptr %arrayidx38.i, align 1, !dbg !600, !tbaa !346
  br i1 %tobool.not.i154, label %cleanup54.thread165, label %if.then41.i, !dbg !601

if.then41.i:                                      ; preds = %if.end14.i
  %inc37.i = add nuw nsw i64 %pos.0.i, 5, !dbg !602
  call void @llvm.dbg.value(metadata i64 %inc37.i, metadata !554, metadata !DIExpression()) #7, !dbg !556
  %add.ptr.i = getelementptr inbounds i8, ptr %buf73, i64 %inc37.i, !dbg !603
  %call.i = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef nonnull %opt_cur, ptr noundef nonnull %add.ptr.i) #7, !dbg !605
  %.pre.i = load i64, ptr %compressed_size, align 8, !dbg !606, !tbaa !479
  br label %cleanup54.thread165, !dbg !605

cleanup54.thread165:                              ; preds = %if.then41.i, %if.end14.i
  %27 = phi i64 [ %.pre.i, %if.then41.i ], [ %21, %if.end14.i ], !dbg !606
  store i8 0, ptr %need_properties.i, align 8, !dbg !607, !tbaa !352
  store i8 0, ptr %need_state_reset, align 1, !dbg !608, !tbaa !355
  store i8 0, ptr %need_dictionary_reset.i, align 2, !dbg !609, !tbaa !365
  %add48.i = add i64 %27, 6, !dbg !606
  store i64 %add48.i, ptr %compressed_size, align 8, !dbg !606, !tbaa !479
  store i32 2, ptr %pcoder, align 8, !dbg !610, !tbaa !349
  br label %sw.bb60

cleanup54:                                        ; preds = %if.end39
  %conv46 = zext i32 %17 to i64, !dbg !611
  %add48 = add i64 %add35, %conv46, !dbg !613
  store i64 %add48, ptr %uncompressed_size84, align 8, !dbg !613, !tbaa !481
  store i32 0, ptr %read_ahead.i, align 4, !dbg !614, !tbaa !499
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !615, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !618, metadata !DIExpression()), !dbg !619
  %28 = load i8, ptr %need_dictionary_reset.i, align 2, !dbg !621, !tbaa !365, !range !515
  %tobool.not.i = icmp eq i8 %28, 0, !dbg !621
  %spec.select.i = select i1 %tobool.not.i, i8 2, i8 1, !dbg !623
  store i8 %spec.select.i, ptr %buf73, align 8, !dbg !624
  store i8 0, ptr %need_dictionary_reset.i, align 2, !dbg !625, !tbaa !365
  %sub.i153 = add i64 %add48, 65535, !dbg !626
  %shr.i = lshr i64 %sub.i153, 8, !dbg !627
  %conv.i = trunc i64 %shr.i to i8, !dbg !628
  store i8 %conv.i, ptr %arrayidx5.i, align 1, !dbg !629, !tbaa !346
  %29 = trunc i64 %add48 to i8, !dbg !630
  %conv8.i = add i8 %29, -1, !dbg !630
  store i8 %conv8.i, ptr %arrayidx10.i, align 2, !dbg !631, !tbaa !346
  store i64 0, ptr %buf_pos75, align 8, !dbg !632, !tbaa !577
  store i8 1, ptr %need_state_reset, align 1, !dbg !633, !tbaa !355
  br label %sw.epilog.sink.split

sw.bb60:                                          ; preds = %while.body.sw.bb60_crit_edge, %cleanup54.thread165
  %30 = phi i64 [ %.pre184, %while.body.sw.bb60_crit_edge ], [ %add48.i, %cleanup54.thread165 ], !dbg !478
  %call64 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %buf73, ptr noundef nonnull %buf_pos75, i64 noundef %30, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #7, !dbg !634
  %31 = load i64, ptr %buf_pos75, align 8, !dbg !635, !tbaa !577
  %32 = load i64, ptr %compressed_size, align 8, !dbg !637, !tbaa !479
  %cmp67.not = icmp eq i64 %31, %32, !dbg !638
  br i1 %cmp67.not, label %sw.epilog.sink.split, label %cleanup91, !dbg !639

sw.bb72:                                          ; preds = %while.body
  %call76 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %buf73, ptr noundef nonnull %buf_pos75, i64 noundef 3, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #7, !dbg !640
  %33 = load i64, ptr %buf_pos75, align 8, !dbg !641, !tbaa !577
  %cmp78.not = icmp eq i64 %33, 3, !dbg !643
  br i1 %cmp78.not, label %if.end81, label %cleanup91, !dbg !644

if.end81:                                         ; preds = %sw.bb72
  store i32 4, ptr %pcoder, align 8, !dbg !645, !tbaa !349
  %.pre180 = load i64, ptr %out_pos, align 8, !dbg !646, !tbaa !473
  br label %sw.bb83, !dbg !660

sw.bb83:                                          ; preds = %while.body, %if.end81
  %34 = phi i64 [ %3, %while.body ], [ %.pre180, %if.end81 ], !dbg !646
  %mf.val = load ptr, ptr %mf, align 8, !dbg !661, !tbaa !662
  %mf.val152 = load i32, ptr %1, align 8, !dbg !661, !tbaa !496
  call void @llvm.dbg.value(metadata ptr undef, metadata !651, metadata !DIExpression()) #7, !dbg !663
  call void @llvm.dbg.value(metadata ptr %out, metadata !652, metadata !DIExpression()) #7, !dbg !663
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !653, metadata !DIExpression()) #7, !dbg !663
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !654, metadata !DIExpression()) #7, !dbg !663
  call void @llvm.dbg.value(metadata ptr %uncompressed_size84, metadata !655, metadata !DIExpression()) #7, !dbg !663
  %sub.i160 = sub i64 %out_size, %34, !dbg !664
  call void @llvm.dbg.value(metadata i64 %sub.i160, metadata !656, metadata !DIExpression()) #7, !dbg !663
  %35 = load i64, ptr %uncompressed_size84, align 8, !dbg !665, !tbaa !473
  %36 = tail call i64 @llvm.umin.i64(i64 %sub.i160, i64 %35) #7, !dbg !665
  call void @llvm.dbg.value(metadata i64 %36, metadata !658, metadata !DIExpression()) #7, !dbg !663
  %add.ptr.i161 = getelementptr inbounds i8, ptr %out, i64 %34, !dbg !666
  %idx.ext.i = zext i32 %mf.val152 to i64, !dbg !667
  %add.ptr1.i = getelementptr inbounds i8, ptr %mf.val, i64 %idx.ext.i, !dbg !667
  %idx.neg.i = sub i64 0, %35, !dbg !668
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr1.i, i64 %idx.neg.i, !dbg !668
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i161, ptr align 1 %add.ptr2.i, i64 %36, i1 false) #7, !dbg !669
  %add.i162 = add i64 %36, %34, !dbg !670
  store i64 %add.i162, ptr %out_pos, align 8, !dbg !670, !tbaa !473
  %sub3.i = sub i64 %35, %36, !dbg !671
  store i64 %sub3.i, ptr %uncompressed_size84, align 8, !dbg !671, !tbaa !473
  %cmp86.not.not = icmp ugt i64 %35, %sub.i160, !dbg !672
  br i1 %cmp86.not.not, label %cleanup91, label %sw.epilog.sink.split, !dbg !674

sw.epilog.sink.split:                             ; preds = %sw.bb83, %sw.bb60, %cleanup54
  %.sink = phi i32 [ 3, %cleanup54 ], [ 0, %sw.bb60 ], [ 0, %sw.bb83 ]
  store i32 %.sink, ptr %pcoder, align 8, !dbg !675, !tbaa !349
  br label %sw.epilog, !dbg !472

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %while.body
  %37 = phi i32 [ %2, %while.body ], [ %.sink, %sw.epilog.sink.split ]
  %38 = load i64, ptr %out_pos, align 8, !dbg !472, !tbaa !473
  %cmp = icmp ult i64 %38, %out_size, !dbg !474
  br i1 %cmp, label %while.body, label %cleanup91, !dbg !475, !llvm.loop !676

cleanup91:                                        ; preds = %do.body, %sw.bb60, %sw.bb72, %sw.bb83, %sw.epilog, %if.end22, %entry, %if.end
  %retval.7 = phi i32 [ %cond, %if.end ], [ 0, %entry ], [ %call8, %do.body ], [ 0, %sw.bb60 ], [ 0, %sw.bb72 ], [ 0, %sw.bb83 ], [ 0, %sw.epilog ], [ 0, %if.end22 ], !dbg !471
  ret i32 %retval.7, !dbg !680
}

; Function Attrs: nounwind uwtable
define internal void @lzma2_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !681 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !683, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !684, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !685, metadata !DIExpression()), !dbg !686
  %lzma = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !687
  %0 = load ptr, ptr %lzma, align 8, !dbg !687, !tbaa !333
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #7, !dbg !688
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #7, !dbg !689
  ret void, !dbg !690
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal i32 @lzma2_encoder_options_update(ptr nocapture noundef %pcoder, ptr nocapture noundef readonly %filter) #3 !dbg !691 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !693, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata ptr %filter, metadata !694, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !695, metadata !DIExpression()), !dbg !697
  %options = getelementptr inbounds %struct.lzma_filter, ptr %filter, i64 0, i32 1, !dbg !698
  %0 = load ptr, ptr %options, align 8, !dbg !698, !tbaa !700
  %cmp = icmp eq ptr %0, null, !dbg !702
  br i1 %cmp, label %cleanup38, label %lor.lhs.false, !dbg !703

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %pcoder, align 8, !dbg !704, !tbaa !349
  %cmp1.not = icmp eq i32 %1, 0, !dbg !705
  br i1 %cmp1.not, label %if.end, label %cleanup38, !dbg !706

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata ptr %0, metadata !696, metadata !DIExpression()), !dbg !697
  %lc = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 3, !dbg !707
  %2 = load i32, ptr %lc, align 4, !dbg !707, !tbaa !709
  %lc3 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3, !dbg !710
  %3 = load i32, ptr %lc3, align 4, !dbg !710, !tbaa !711
  %cmp4.not = icmp eq i32 %2, %3, !dbg !712
  br i1 %cmp4.not, label %lor.lhs.false5, label %if.then13, !dbg !713

lor.lhs.false5:                                   ; preds = %if.end
  %lp = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 4, !dbg !714
  %4 = load i32, ptr %lp, align 8, !dbg !714, !tbaa !715
  %lp7 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4, !dbg !716
  %5 = load i32, ptr %lp7, align 8, !dbg !716, !tbaa !717
  %cmp8.not = icmp eq i32 %4, %5, !dbg !718
  br i1 %cmp8.not, label %lor.lhs.false9, label %if.then13, !dbg !719

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %pb = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 5, !dbg !720
  %6 = load i32, ptr %pb, align 4, !dbg !720, !tbaa !721
  %pb11 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5, !dbg !722
  %7 = load i32, ptr %pb11, align 4, !dbg !722, !tbaa !723
  %cmp12.not = icmp eq i32 %6, %7, !dbg !724
  br i1 %cmp12.not, label %cleanup38, label %if.then13, !dbg !725

if.then13:                                        ; preds = %lor.lhs.false9, %lor.lhs.false5, %if.end
  %cmp15 = icmp ugt i32 %3, 4, !dbg !726
  br i1 %cmp15, label %cleanup38, label %lor.lhs.false16, !dbg !729

lor.lhs.false16:                                  ; preds = %if.then13
  %lp17 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4, !dbg !730
  %8 = load i32, ptr %lp17, align 8, !dbg !730, !tbaa !717
  %cmp18 = icmp ugt i32 %8, 4, !dbg !731
  %add = add i32 %8, %3
  %cmp22 = icmp ugt i32 %add, 4
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp22, !dbg !732
  br i1 %or.cond, label %cleanup38, label %lor.lhs.false23, !dbg !732

lor.lhs.false23:                                  ; preds = %lor.lhs.false16
  %pb24 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5, !dbg !733
  %9 = load i32, ptr %pb24, align 4, !dbg !733, !tbaa !723
  %cmp25 = icmp ugt i32 %9, 4, !dbg !734
  br i1 %cmp25, label %cleanup38, label %if.end27, !dbg !735

if.end27:                                         ; preds = %lor.lhs.false23
  store i32 %3, ptr %lc, align 4, !dbg !736, !tbaa !709
  %lp33 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 4, !dbg !737
  store i32 %8, ptr %lp33, align 8, !dbg !738, !tbaa !715
  %pb36 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 5, !dbg !739
  store i32 %9, ptr %pb36, align 4, !dbg !740, !tbaa !721
  %need_properties = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !741
  store i8 1, ptr %need_properties, align 8, !dbg !742, !tbaa !352
  %need_state_reset = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !743
  store i8 1, ptr %need_state_reset, align 1, !dbg !744, !tbaa !355
  br label %cleanup38, !dbg !745

cleanup38:                                        ; preds = %lor.lhs.false23, %lor.lhs.false16, %if.then13, %if.end27, %lor.lhs.false9, %entry, %lor.lhs.false
  %retval.1 = phi i32 [ 11, %lor.lhs.false ], [ 11, %entry ], [ 8, %lor.lhs.false23 ], [ 8, %lor.lhs.false16 ], [ 8, %if.then13 ], [ 0, %if.end27 ], [ 0, %lor.lhs.false9 ], !dbg !697
  ret i32 %retval.1, !dbg !746
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !747 i32 @lzma_lzma_encoder_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !751 i32 @lzma_lzma_encoder_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !754 i32 @lzma_lzma_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !757 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !760 zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !763 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !117, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma2_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "24a99a9eab13c31bc3d49edc2de38059")
!2 = !{!3, !19, !25, !32, !40, !44, !47}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 58, baseType: !5, size: 32, elements: !34)
!33 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/lzma.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!36 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!37 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!38 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!39 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 138, baseType: !5, size: 32, elements: !41)
!41 = !{!42, !43}
!42 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!43 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !49, file: !48, line: 21, baseType: !5, size: 32, elements: !111)
!48 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma2_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "24a99a9eab13c31bc3d49edc2de38059")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !48, line: 20, size: 525632, elements: !50)
!50 = !{!51, !52, !56, !97, !99, !100, !101, !105, !106, !107}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !49, file: !48, line: 27, baseType: !47, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lzma", scope: !49, file: !48, line: 30, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !55, line: 78, baseType: null)
!55 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!56 = !DIDerivedType(tag: DW_TAG_member, name: "opt_cur", scope: !49, file: !48, line: 33, baseType: !57, size: 896, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !33, line: 399, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 185, size: 896, elements: !59)
!59 = !{!60, !65, !71, !72, !73, !74, !75, !77, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94, !96}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !58, file: !33, line: 217, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !62, line: 26, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !64, line: 42, baseType: !5)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!65 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !58, file: !33, line: 240, baseType: !66, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !62, line: 24, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !64, line: 38, baseType: !70)
!70 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !58, file: !33, line: 254, baseType: !61, size: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !58, file: !33, line: 281, baseType: !61, size: 32, offset: 160)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !58, file: !33, line: 293, baseType: !61, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !58, file: !33, line: 316, baseType: !61, size: 32, offset: 224)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !58, file: !33, line: 322, baseType: !76, size: 32, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !33, line: 155, baseType: !40)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !58, file: !33, line: 342, baseType: !61, size: 32, offset: 288)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !58, file: !33, line: 345, baseType: !79, size: 32, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !33, line: 111, baseType: !32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !58, file: !33, line: 375, baseType: !61, size: 32, offset: 352)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !58, file: !33, line: 384, baseType: !61, size: 32, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !58, file: !33, line: 385, baseType: !61, size: 32, offset: 416)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !58, file: !33, line: 386, baseType: !61, size: 32, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !58, file: !33, line: 387, baseType: !61, size: 32, offset: 480)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !58, file: !33, line: 388, baseType: !61, size: 32, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !58, file: !33, line: 389, baseType: !61, size: 32, offset: 544)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !58, file: !33, line: 390, baseType: !61, size: 32, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !58, file: !33, line: 391, baseType: !61, size: 32, offset: 608)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !58, file: !33, line: 392, baseType: !90, size: 32, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !44)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !58, file: !33, line: 393, baseType: !90, size: 32, offset: 672)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !58, file: !33, line: 394, baseType: !90, size: 32, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !58, file: !33, line: 395, baseType: !90, size: 32, offset: 736)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !58, file: !33, line: 396, baseType: !95, size: 64, offset: 768)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !58, file: !33, line: 397, baseType: !95, size: 64, offset: 832)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "need_properties", scope: !49, file: !48, line: 35, baseType: !98, size: 8, offset: 1024)
!98 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "need_state_reset", scope: !49, file: !48, line: 36, baseType: !98, size: 8, offset: 1032)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "need_dictionary_reset", scope: !49, file: !48, line: 37, baseType: !98, size: 8, offset: 1040)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !49, file: !48, line: 40, baseType: !102, size: 64, offset: 1088)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 46, baseType: !104)
!103 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!104 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !49, file: !48, line: 44, baseType: !102, size: 64, offset: 1152)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "buf_pos", scope: !49, file: !48, line: 47, baseType: !102, size: 64, offset: 1216)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !49, file: !48, line: 50, baseType: !108, size: 524336, offset: 1280)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 524336, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 65542)
!111 = !{!112, !113, !114, !115, !116}
!112 = !DIEnumerator(name: "SEQ_INIT", value: 0)
!113 = !DIEnumerator(name: "SEQ_LZMA_ENCODE", value: 1)
!114 = !DIEnumerator(name: "SEQ_LZMA_COPY", value: 2)
!115 = !DIEnumerator(name: "SEQ_UNCOMPRESSED_HEADER", value: 3)
!116 = !DIEnumerator(name: "SEQ_UNCOMPRESSED_COPY", value: 4)
!117 = !{!95, !118, !119}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!121 = !{i32 7, !"Dwarf Version", i32 5}
!122 = !{i32 2, !"Debug Info Version", i32 3}
!123 = !{i32 1, !"wchar_size", i32 4}
!124 = !{i32 7, !"PIC Level", i32 2}
!125 = !{i32 7, !"PIE Level", i32 2}
!126 = !{i32 7, !"uwtable", i32 2}
!127 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!128 = distinct !DISubprogram(name: "lzma_lzma2_encoder_init", scope: !48, file: !48, line: 357, type: !129, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !208)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !132, !150, !198}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !55, line: 80, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !55, line: 124, size: 512, elements: !135)
!135 = !{!136, !137, !142, !145, !169, !174, !181, !186}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !134, file: !55, line: 126, baseType: !53, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !134, file: !55, line: 130, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !139, line: 63, baseType: !140)
!139 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !62, line: 27, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !64, line: 45, baseType: !104)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !134, file: !55, line: 136, baseType: !143, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !144, line: 90, baseType: !104)
!144 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!145 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !134, file: !55, line: 139, baseType: !146, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !55, line: 94, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!131, !53, !150, !163, !164, !102, !166, !164, !102, !168}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !153)
!153 = !{!154, !158, !162}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !152, file: !4, line: 376, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!95, !95, !102, !102}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !152, file: !4, line: 390, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !95, !95}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !152, file: !4, line: 401, baseType: !95, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!164 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !134, file: !55, line: 144, baseType: !170, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !55, line: 102, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !53, !150}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !134, file: !55, line: 148, baseType: !175, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !134, file: !55, line: 152, baseType: !182, size: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!131, !53, !185, !185, !140}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !134, file: !55, line: 157, baseType: !187, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!131, !53, !150, !190, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !193, line: 65, baseType: !194)
!193 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 43, size: 128, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !194, file: !193, line: 54, baseType: !138, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !194, file: !193, line: 63, baseType: !95, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !55, line: 82, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !55, line: 109, size: 192, elements: !202)
!202 = !{!203, !204, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !201, file: !55, line: 112, baseType: !138, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !201, file: !55, line: 116, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !55, line: 86, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !201, file: !55, line: 119, baseType: !95, size: 64, offset: 128)
!208 = !{!209, !210, !211}
!209 = !DILocalVariable(name: "next", arg: 1, scope: !128, file: !48, line: 357, type: !132)
!210 = !DILocalVariable(name: "allocator", arg: 2, scope: !128, file: !48, line: 357, type: !150)
!211 = !DILocalVariable(name: "filters", arg: 3, scope: !128, file: !48, line: 358, type: !198)
!212 = !DILocation(line: 0, scope: !128)
!213 = !DILocation(line: 360, column: 9, scope: !128)
!214 = !DILocation(line: 360, column: 2, scope: !128)
!215 = !DISubprogram(name: "lzma_lz_encoder_init", scope: !216, file: !216, line: 298, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !293)
!216 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lz/lz_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "780f78e6e21a3ca52f57df68bfdc6f53")
!217 = !DISubroutineType(types: !218)
!218 = !{!131, !132, !150, !198, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!131, !222, !150, !278, !280}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_encoder", file: !216, line: 208, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 192, size: 256, elements: !225)
!225 = !{!226, !227, !273, !274}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !224, file: !216, line: 194, baseType: !53, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !224, file: !216, line: 197, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!131, !231, !232, !166, !164, !102}
!231 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!232 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mf", file: !216, line: 28, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_mf_s", file: !216, line: 29, size: 960, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !257, !261, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !235, file: !216, line: 35, baseType: !167, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !235, file: !216, line: 39, baseType: !61, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_before", scope: !235, file: !216, line: 45, baseType: !61, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_after", scope: !235, file: !216, line: 51, baseType: !61, size: 32, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !235, file: !216, line: 58, baseType: !61, size: 32, offset: 160)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !235, file: !216, line: 63, baseType: !61, size: 32, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !235, file: !216, line: 67, baseType: !61, size: 32, offset: 224)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !235, file: !216, line: 75, baseType: !61, size: 32, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !235, file: !216, line: 80, baseType: !61, size: 32, offset: 288)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !235, file: !216, line: 84, baseType: !61, size: 32, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !235, file: !216, line: 92, baseType: !248, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!61, !233, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match", file: !216, line: 25, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 22, size: 64, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !253, file: !216, line: 23, baseType: !61, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !253, file: !216, line: 24, baseType: !61, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !235, file: !216, line: 97, baseType: !258, size: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !233, !61}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !235, file: !216, line: 99, baseType: !262, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !235, file: !216, line: 100, baseType: !262, size: 64, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_pos", scope: !235, file: !216, line: 101, baseType: !61, size: 32, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_size", scope: !235, file: !216, line: 102, baseType: !61, size: 32, offset: 672)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !235, file: !216, line: 103, baseType: !61, size: 32, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !235, file: !216, line: 106, baseType: !61, size: 32, offset: 736)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !235, file: !216, line: 109, baseType: !61, size: 32, offset: 768)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !235, file: !216, line: 114, baseType: !61, size: 32, offset: 800)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !235, file: !216, line: 119, baseType: !168, size: 32, offset: 832)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size_sum", scope: !235, file: !216, line: 122, baseType: !61, size: 32, offset: 864)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sons_count", scope: !235, file: !216, line: 125, baseType: !61, size: 32, offset: 896)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !224, file: !216, line: 202, baseType: !171, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "options_update", scope: !224, file: !216, line: 205, baseType: !275, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!131, !53, !190}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_options", file: !216, line: 161, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 129, size: 512, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "before_size", scope: !282, file: !216, line: 132, baseType: !102, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !282, file: !216, line: 135, baseType: !102, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "after_size", scope: !282, file: !216, line: 139, baseType: !102, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !282, file: !216, line: 144, baseType: !102, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !282, file: !216, line: 148, baseType: !102, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "match_finder", scope: !282, file: !216, line: 151, baseType: !79, size: 32, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !282, file: !216, line: 154, baseType: !61, size: 32, offset: 352)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !282, file: !216, line: 157, baseType: !66, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !282, file: !216, line: 159, baseType: !61, size: 32, offset: 448)
!293 = !{}
!294 = distinct !DISubprogram(name: "lzma2_encoder_init", scope: !48, file: !48, line: 312, type: !220, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !295)
!295 = !{!296, !297, !298, !299, !300}
!296 = !DILocalVariable(name: "lz", arg: 1, scope: !294, file: !48, line: 312, type: !222)
!297 = !DILocalVariable(name: "allocator", arg: 2, scope: !294, file: !48, line: 312, type: !150)
!298 = !DILocalVariable(name: "options", arg: 3, scope: !294, file: !48, line: 313, type: !278)
!299 = !DILocalVariable(name: "lz_options", arg: 4, scope: !294, file: !48, line: 313, type: !280)
!300 = !DILocalVariable(name: "ret_", scope: !301, file: !48, line: 340, type: !302)
!301 = distinct !DILexicalBlock(scope: !294, file: !48, line: 340, column: 2)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!303 = !DILocation(line: 0, scope: !294)
!304 = !DILocation(line: 315, column: 14, scope: !305)
!305 = distinct !DILexicalBlock(scope: !294, file: !48, line: 315, column: 6)
!306 = !DILocation(line: 315, column: 6, scope: !294)
!307 = !DILocation(line: 318, column: 10, scope: !308)
!308 = distinct !DILexicalBlock(scope: !294, file: !48, line: 318, column: 6)
!309 = !{!310, !311, i64 0}
!310 = !{!"", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24}
!311 = !{!"any pointer", !312, i64 0}
!312 = !{!"omnipotent char", !313, i64 0}
!313 = !{!"Simple C/C++ TBAA"}
!314 = !DILocation(line: 318, column: 16, scope: !308)
!315 = !DILocation(line: 318, column: 6, scope: !294)
!316 = !DILocation(line: 319, column: 15, scope: !317)
!317 = distinct !DILexicalBlock(scope: !308, file: !48, line: 318, column: 25)
!318 = !DILocation(line: 319, column: 13, scope: !317)
!319 = !DILocation(line: 320, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !48, line: 320, column: 7)
!321 = !DILocation(line: 320, column: 7, scope: !317)
!322 = !DILocation(line: 323, column: 7, scope: !317)
!323 = !DILocation(line: 323, column: 12, scope: !317)
!324 = !{!310, !311, i64 8}
!325 = !DILocation(line: 324, column: 7, scope: !317)
!326 = !DILocation(line: 324, column: 11, scope: !317)
!327 = !{!310, !311, i64 16}
!328 = !DILocation(line: 325, column: 7, scope: !317)
!329 = !DILocation(line: 325, column: 22, scope: !317)
!330 = !{!310, !311, i64 24}
!331 = !DILocation(line: 327, column: 38, scope: !317)
!332 = !DILocation(line: 327, column: 43, scope: !317)
!333 = !{!334, !311, i64 8}
!334 = !{!"lzma_coder_s", !312, i64 0, !311, i64 8, !335, i64 16, !337, i64 128, !337, i64 129, !337, i64 130, !338, i64 136, !338, i64 144, !338, i64 152, !312, i64 160}
!335 = !{!"", !336, i64 0, !311, i64 8, !336, i64 16, !336, i64 20, !336, i64 24, !336, i64 28, !312, i64 32, !336, i64 36, !312, i64 40, !336, i64 44, !336, i64 48, !336, i64 52, !336, i64 56, !336, i64 60, !336, i64 64, !336, i64 68, !336, i64 72, !336, i64 76, !312, i64 80, !312, i64 84, !312, i64 88, !312, i64 92, !311, i64 96, !311, i64 104}
!336 = !{!"int", !312, i64 0}
!337 = !{!"_Bool", !312, i64 0}
!338 = !{!"long", !312, i64 0}
!339 = !DILocation(line: 328, column: 2, scope: !317)
!340 = !DILocation(line: 330, column: 29, scope: !294)
!341 = !DILocation(line: 330, column: 37, scope: !294)
!342 = !DILocation(line: 330, column: 47, scope: !294)
!343 = !{i64 0, i64 4, !344, i64 8, i64 8, !345, i64 16, i64 4, !344, i64 20, i64 4, !344, i64 24, i64 4, !344, i64 28, i64 4, !344, i64 32, i64 4, !346, i64 36, i64 4, !344, i64 40, i64 4, !346, i64 44, i64 4, !344, i64 48, i64 4, !344, i64 52, i64 4, !344, i64 56, i64 4, !344, i64 60, i64 4, !344, i64 64, i64 4, !344, i64 68, i64 4, !344, i64 72, i64 4, !344, i64 76, i64 4, !344, i64 80, i64 4, !346, i64 84, i64 4, !346, i64 88, i64 4, !346, i64 92, i64 4, !346, i64 96, i64 8, !345, i64 104, i64 8, !345}
!344 = !{!336, !336, i64 0}
!345 = !{!311, !311, i64 0}
!346 = !{!312, !312, i64 0}
!347 = !DILocation(line: 332, column: 29, scope: !294)
!348 = !DILocation(line: 332, column: 46, scope: !294)
!349 = !{!334, !312, i64 0}
!350 = !DILocation(line: 333, column: 37, scope: !294)
!351 = !DILocation(line: 333, column: 53, scope: !294)
!352 = !{!334, !337, i64 128}
!353 = !DILocation(line: 334, column: 37, scope: !294)
!354 = !DILocation(line: 334, column: 54, scope: !294)
!355 = !{!334, !337, i64 129}
!356 = !DILocation(line: 336, column: 49, scope: !294)
!357 = !{!334, !311, i64 24}
!358 = !DILocation(line: 336, column: 61, scope: !294)
!359 = !DILocation(line: 337, column: 4, scope: !294)
!360 = !DILocation(line: 337, column: 50, scope: !294)
!361 = !{!334, !336, i64 32}
!362 = !DILocation(line: 337, column: 67, scope: !294)
!363 = !DILocation(line: 335, column: 37, scope: !294)
!364 = !DILocation(line: 336, column: 4, scope: !294)
!365 = !{!334, !337, i64 130}
!366 = !DILocation(line: 340, column: 2, scope: !301)
!367 = !DILocation(line: 0, scope: !301)
!368 = !DILocation(line: 340, column: 2, scope: !369)
!369 = distinct !DILexicalBlock(scope: !301, file: !48, line: 340, column: 2)
!370 = !DILocation(line: 348, column: 18, scope: !371)
!371 = distinct !DILexicalBlock(scope: !294, file: !48, line: 348, column: 6)
!372 = !{!373, !338, i64 0}
!373 = !{!"", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !312, i64 40, !336, i64 44, !311, i64 48, !336, i64 56}
!374 = !DILocation(line: 348, column: 44, scope: !371)
!375 = !{!373, !338, i64 8}
!376 = !DILocation(line: 348, column: 30, scope: !371)
!377 = !DILocation(line: 348, column: 54, scope: !371)
!378 = !DILocation(line: 348, column: 6, scope: !294)
!379 = !DILocation(line: 350, column: 23, scope: !371)
!380 = !DILocation(line: 350, column: 5, scope: !371)
!381 = !DILocation(line: 349, column: 3, scope: !371)
!382 = !DILocation(line: 353, column: 1, scope: !294)
!383 = distinct !DISubprogram(name: "lzma_lzma2_encoder_memusage", scope: !48, file: !48, line: 366, type: !384, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{!140, !278}
!386 = !{!387, !388}
!387 = !DILocalVariable(name: "options", arg: 1, scope: !383, file: !48, line: 366, type: !278)
!388 = !DILocalVariable(name: "lzma_mem", scope: !383, file: !48, line: 368, type: !389)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!390 = !DILocation(line: 0, scope: !383)
!391 = !DILocation(line: 368, column: 28, scope: !383)
!392 = !DILocation(line: 369, column: 15, scope: !393)
!393 = distinct !DILexicalBlock(scope: !383, file: !48, line: 369, column: 6)
!394 = !DILocation(line: 369, column: 6, scope: !383)
!395 = !DILocation(line: 373, column: 1, scope: !383)
!396 = !DISubprogram(name: "lzma_lzma_encoder_memusage", scope: !397, file: !397, line: 24, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !293)
!397 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f040cedafb3694586d90cdd6536f6965")
!398 = distinct !DISubprogram(name: "lzma_lzma2_props_encode", scope: !48, file: !48, line: 377, type: !399, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!131, !278, !167}
!401 = !{!402, !403, !404, !406}
!402 = !DILocalVariable(name: "options", arg: 1, scope: !398, file: !48, line: 377, type: !278)
!403 = !DILocalVariable(name: "out", arg: 2, scope: !398, file: !48, line: 377, type: !167)
!404 = !DILocalVariable(name: "opt", scope: !398, file: !48, line: 379, type: !405)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!406 = !DILocalVariable(name: "d", scope: !398, file: !48, line: 380, type: !61)
!407 = !DILocation(line: 0, scope: !398)
!408 = !DILocation(line: 380, column: 15, scope: !398)
!409 = !{!335, !336, i64 0}
!410 = !DILocation(line: 385, column: 9, scope: !398)
!411 = !DILocation(line: 385, column: 4, scope: !398)
!412 = !DILocation(line: 386, column: 9, scope: !398)
!413 = !DILocation(line: 386, column: 4, scope: !398)
!414 = !DILocation(line: 387, column: 9, scope: !398)
!415 = !DILocation(line: 387, column: 4, scope: !398)
!416 = !DILocation(line: 388, column: 9, scope: !398)
!417 = !DILocation(line: 388, column: 4, scope: !398)
!418 = !DILocation(line: 389, column: 9, scope: !398)
!419 = !DILocation(line: 389, column: 4, scope: !398)
!420 = !DILocation(line: 392, column: 8, scope: !421)
!421 = distinct !DILexicalBlock(scope: !398, file: !48, line: 392, column: 6)
!422 = !DILocation(line: 392, column: 6, scope: !398)
!423 = !DILocation(line: 395, column: 27, scope: !421)
!424 = !DILocalVariable(name: "pos", arg: 1, scope: !425, file: !426, line: 108, type: !61)
!425 = distinct !DISubprogram(name: "get_pos_slot", scope: !426, file: !426, line: 108, type: !427, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !429)
!426 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/fastpos.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cbaa9cd9040be4a8dee21ea4da47c8df")
!427 = !DISubroutineType(types: !428)
!428 = !{!61, !61}
!429 = !{!424}
!430 = !DILocation(line: 0, scope: !425, inlinedAt: !431)
!431 = distinct !DILocation(line: 395, column: 12, scope: !421)
!432 = !DILocation(line: 112, column: 10, scope: !433, inlinedAt: !431)
!433 = distinct !DILexicalBlock(scope: !425, file: !426, line: 112, column: 6)
!434 = !DILocation(line: 112, column: 6, scope: !425, inlinedAt: !431)
!435 = !DILocation(line: 113, column: 10, scope: !433, inlinedAt: !431)
!436 = !DILocation(line: 113, column: 3, scope: !433, inlinedAt: !431)
!437 = !DILocation(line: 115, column: 10, scope: !438, inlinedAt: !431)
!438 = distinct !DILexicalBlock(scope: !425, file: !426, line: 115, column: 6)
!439 = !DILocation(line: 115, column: 6, scope: !425, inlinedAt: !431)
!440 = !DILocation(line: 116, column: 10, scope: !438, inlinedAt: !431)
!441 = !DILocation(line: 116, column: 3, scope: !438, inlinedAt: !431)
!442 = !DILocation(line: 118, column: 9, scope: !425, inlinedAt: !431)
!443 = !DILocation(line: 118, column: 2, scope: !425, inlinedAt: !431)
!444 = !DILocation(line: 395, column: 12, scope: !421)
!445 = !DILocation(line: 0, scope: !421)
!446 = !DILocation(line: 397, column: 2, scope: !398)
!447 = !DISubprogram(name: "lzma_alloc", scope: !55, file: !55, line: 211, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !293)
!448 = !DISubroutineType(types: !449)
!449 = !{!95, !102, !150}
!450 = distinct !DISubprogram(name: "lzma2_encode", scope: !48, file: !48, line: 138, type: !451, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{!131, !53, !232, !166, !164, !102}
!453 = !{!454, !455, !456, !457, !458, !459, !461, !465, !468, !469, !470}
!454 = !DILocalVariable(name: "pcoder", arg: 1, scope: !450, file: !48, line: 138, type: !53)
!455 = !DILocalVariable(name: "mf", arg: 2, scope: !450, file: !48, line: 138, type: !232)
!456 = !DILocalVariable(name: "out", arg: 3, scope: !450, file: !48, line: 139, type: !166)
!457 = !DILocalVariable(name: "out_pos", arg: 4, scope: !450, file: !48, line: 139, type: !164)
!458 = !DILocalVariable(name: "out_size", arg: 5, scope: !450, file: !48, line: 140, type: !102)
!459 = !DILocalVariable(name: "coder", scope: !450, file: !48, line: 142, type: !460)
!460 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!461 = !DILocalVariable(name: "ret_", scope: !462, file: !48, line: 158, type: !302)
!462 = distinct !DILexicalBlock(scope: !463, file: !48, line: 158, column: 4)
!463 = distinct !DILexicalBlock(scope: !464, file: !48, line: 157, column: 7)
!464 = distinct !DILexicalBlock(scope: !450, file: !48, line: 144, column: 27)
!465 = !DILocalVariable(name: "left", scope: !466, file: !48, line: 170, type: !467)
!466 = distinct !DILexicalBlock(scope: !464, file: !48, line: 167, column: 24)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!468 = !DILocalVariable(name: "limit", scope: !466, file: !48, line: 172, type: !61)
!469 = !DILocalVariable(name: "read_start", scope: !466, file: !48, line: 188, type: !467)
!470 = !DILocalVariable(name: "ret", scope: !466, file: !48, line: 191, type: !302)
!471 = !DILocation(line: 0, scope: !450)
!472 = !DILocation(line: 143, column: 9, scope: !450)
!473 = !{!338, !338, i64 0}
!474 = !DILocation(line: 143, column: 18, scope: !450)
!475 = !DILocation(line: 143, column: 2, scope: !450)
!476 = !DILocation(line: 144, column: 17, scope: !450)
!477 = !DILocation(line: 144, column: 2, scope: !450)
!478 = !DILocation(line: 232, column: 12, scope: !464)
!479 = !{!334, !338, i64 144}
!480 = !DILocation(line: 171, column: 14, scope: !466)
!481 = !{!334, !338, i64 136}
!482 = !DILocalVariable(name: "mf", arg: 1, scope: !483, file: !216, line: 239, type: !486)
!483 = distinct !DISubprogram(name: "mf_unencoded", scope: !216, file: !216, line: 239, type: !484, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !488)
!484 = !DISubroutineType(types: !485)
!485 = !{!61, !486}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!488 = !{!482}
!489 = !DILocation(line: 0, scope: !483, inlinedAt: !490)
!490 = distinct !DILocation(line: 148, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !464, file: !48, line: 148, column: 7)
!492 = !DILocation(line: 241, column: 13, scope: !483, inlinedAt: !490)
!493 = !{!494, !336, i64 36}
!494 = !{!"lzma_mf_s", !311, i64 0, !336, i64 8, !336, i64 12, !336, i64 16, !336, i64 20, !336, i64 24, !336, i64 28, !336, i64 32, !336, i64 36, !336, i64 40, !311, i64 48, !311, i64 56, !311, i64 64, !311, i64 72, !336, i64 80, !336, i64 84, !336, i64 88, !336, i64 92, !336, i64 96, !336, i64 100, !312, i64 104, !336, i64 108, !336, i64 112}
!495 = !DILocation(line: 241, column: 29, scope: !483, inlinedAt: !490)
!496 = !{!494, !336, i64 24}
!497 = !DILocation(line: 241, column: 23, scope: !483, inlinedAt: !490)
!498 = !DILocation(line: 241, column: 44, scope: !483, inlinedAt: !490)
!499 = !{!494, !336, i64 28}
!500 = !DILocation(line: 148, column: 24, scope: !491)
!501 = !DILocation(line: 148, column: 7, scope: !464)
!502 = !DILocation(line: 150, column: 12, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !48, line: 150, column: 8)
!504 = distinct !DILexicalBlock(scope: !491, file: !48, line: 148, column: 30)
!505 = !{!494, !312, i64 104}
!506 = !DILocation(line: 150, column: 19, scope: !503)
!507 = !DILocation(line: 150, column: 8, scope: !504)
!508 = !DILocation(line: 151, column: 19, scope: !503)
!509 = !DILocation(line: 151, column: 5, scope: !503)
!510 = !DILocation(line: 151, column: 23, scope: !503)
!511 = !DILocation(line: 153, column: 22, scope: !504)
!512 = !DILocation(line: 153, column: 11, scope: !504)
!513 = !DILocation(line: 153, column: 4, scope: !504)
!514 = !DILocation(line: 157, column: 14, scope: !463)
!515 = !{i8 0, i8 2}
!516 = !DILocation(line: 157, column: 7, scope: !464)
!517 = !DILocation(line: 158, column: 4, scope: !462)
!518 = !DILocation(line: 0, scope: !462)
!519 = !DILocation(line: 158, column: 4, scope: !520)
!520 = distinct !DILexicalBlock(scope: !462, file: !48, line: 158, column: 4)
!521 = !DILocation(line: 162, column: 26, scope: !464)
!522 = !DILocation(line: 163, column: 19, scope: !464)
!523 = !DILocation(line: 163, column: 3, scope: !464)
!524 = !DILocation(line: 170, column: 25, scope: !466)
!525 = !DILocation(line: 0, scope: !466)
!526 = !DILocation(line: 174, column: 18, scope: !527)
!527 = distinct !DILexicalBlock(scope: !466, file: !48, line: 174, column: 7)
!528 = !{!494, !336, i64 100}
!529 = !DILocation(line: 174, column: 12, scope: !527)
!530 = !DILocation(line: 174, column: 7, scope: !466)
!531 = !DILocation(line: 183, column: 13, scope: !532)
!532 = distinct !DILexicalBlock(scope: !527, file: !48, line: 179, column: 10)
!533 = !DILocation(line: 0, scope: !527)
!534 = !DILocation(line: 191, column: 48, scope: !466)
!535 = !DILocation(line: 191, column: 24, scope: !466)
!536 = !DILocation(line: 196, column: 35, scope: !466)
!537 = !DILocation(line: 196, column: 50, scope: !466)
!538 = !DILocation(line: 197, column: 5, scope: !466)
!539 = !DILocation(line: 196, column: 31, scope: !466)
!540 = !DILocation(line: 196, column: 28, scope: !466)
!541 = !DILocation(line: 202, column: 11, scope: !542)
!542 = distinct !DILexicalBlock(scope: !466, file: !48, line: 202, column: 7)
!543 = !DILocation(line: 202, column: 7, scope: !466)
!544 = !DILocation(line: 208, column: 14, scope: !545)
!545 = distinct !DILexicalBlock(scope: !466, file: !48, line: 208, column: 7)
!546 = !DILocation(line: 208, column: 30, scope: !545)
!547 = !DILocation(line: 208, column: 7, scope: !466)
!548 = !DILocalVariable(name: "pcoder", arg: 1, scope: !549, file: !48, line: 55, type: !53)
!549 = distinct !DISubprogram(name: "lzma2_header_lzma", scope: !48, file: !48, line: 55, type: !550, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !53}
!552 = !{!548, !553, !554, !555}
!553 = !DILocalVariable(name: "coder", scope: !549, file: !48, line: 57, type: !118)
!554 = !DILocalVariable(name: "pos", scope: !549, file: !48, line: 63, type: !102)
!555 = !DILocalVariable(name: "size", scope: !549, file: !48, line: 85, type: !102)
!556 = !DILocation(line: 0, scope: !549, inlinedAt: !557)
!557 = distinct !DILocation(line: 221, column: 3, scope: !466)
!558 = !DILocation(line: 65, column: 13, scope: !559, inlinedAt: !557)
!559 = distinct !DILexicalBlock(scope: !549, file: !48, line: 65, column: 6)
!560 = !DILocation(line: 65, column: 6, scope: !549, inlinedAt: !557)
!561 = !DILocation(line: 68, column: 14, scope: !562, inlinedAt: !557)
!562 = distinct !DILexicalBlock(scope: !563, file: !48, line: 68, column: 7)
!563 = distinct !DILexicalBlock(scope: !559, file: !48, line: 65, column: 30)
!564 = !DILocation(line: 68, column: 7, scope: !563, inlinedAt: !557)
!565 = !DILocation(line: 69, column: 20, scope: !562, inlinedAt: !557)
!566 = !DILocation(line: 69, column: 4, scope: !562, inlinedAt: !557)
!567 = !DILocation(line: 71, column: 20, scope: !562, inlinedAt: !557)
!568 = !DILocation(line: 75, column: 14, scope: !569, inlinedAt: !557)
!569 = distinct !DILexicalBlock(scope: !570, file: !48, line: 75, column: 7)
!570 = distinct !DILexicalBlock(scope: !559, file: !48, line: 72, column: 9)
!571 = !DILocation(line: 75, column: 7, scope: !570, inlinedAt: !557)
!572 = !DILocation(line: 76, column: 20, scope: !569, inlinedAt: !557)
!573 = !DILocation(line: 76, column: 4, scope: !569, inlinedAt: !557)
!574 = !DILocation(line: 78, column: 20, scope: !569, inlinedAt: !557)
!575 = !DILocation(line: 0, scope: !559, inlinedAt: !557)
!576 = !DILocation(line: 82, column: 17, scope: !549, inlinedAt: !557)
!577 = !{!334, !338, i64 152}
!578 = !DILocation(line: 85, column: 41, scope: !549, inlinedAt: !557)
!579 = !DILocation(line: 86, column: 28, scope: !549, inlinedAt: !557)
!580 = !DILocation(line: 86, column: 16, scope: !549, inlinedAt: !557)
!581 = !DILocation(line: 86, column: 2, scope: !549, inlinedAt: !557)
!582 = !DILocation(line: 86, column: 20, scope: !549, inlinedAt: !557)
!583 = !DILocation(line: 87, column: 28, scope: !549, inlinedAt: !557)
!584 = !DILocation(line: 87, column: 22, scope: !549, inlinedAt: !557)
!585 = !DILocation(line: 87, column: 16, scope: !549, inlinedAt: !557)
!586 = !DILocation(line: 87, column: 2, scope: !549, inlinedAt: !557)
!587 = !DILocation(line: 87, column: 20, scope: !549, inlinedAt: !557)
!588 = !DILocation(line: 88, column: 22, scope: !549, inlinedAt: !557)
!589 = !DILocation(line: 88, column: 16, scope: !549, inlinedAt: !557)
!590 = !DILocation(line: 88, column: 2, scope: !549, inlinedAt: !557)
!591 = !DILocation(line: 88, column: 20, scope: !549, inlinedAt: !557)
!592 = !DILocation(line: 91, column: 32, scope: !549, inlinedAt: !557)
!593 = !DILocation(line: 92, column: 27, scope: !549, inlinedAt: !557)
!594 = !DILocation(line: 92, column: 22, scope: !549, inlinedAt: !557)
!595 = !DILocation(line: 92, column: 16, scope: !549, inlinedAt: !557)
!596 = !DILocation(line: 92, column: 2, scope: !549, inlinedAt: !557)
!597 = !DILocation(line: 92, column: 20, scope: !549, inlinedAt: !557)
!598 = !DILocation(line: 93, column: 22, scope: !549, inlinedAt: !557)
!599 = !DILocation(line: 93, column: 2, scope: !549, inlinedAt: !557)
!600 = !DILocation(line: 93, column: 20, scope: !549, inlinedAt: !557)
!601 = !DILocation(line: 96, column: 6, scope: !549, inlinedAt: !557)
!602 = !DILocation(line: 93, column: 16, scope: !549, inlinedAt: !557)
!603 = !DILocation(line: 97, column: 55, scope: !604, inlinedAt: !557)
!604 = distinct !DILexicalBlock(scope: !549, file: !48, line: 96, column: 6)
!605 = !DILocation(line: 97, column: 3, scope: !604, inlinedAt: !557)
!606 = !DILocation(line: 105, column: 25, scope: !549, inlinedAt: !557)
!607 = !DILocation(line: 99, column: 25, scope: !549, inlinedAt: !557)
!608 = !DILocation(line: 100, column: 26, scope: !549, inlinedAt: !557)
!609 = !DILocation(line: 101, column: 31, scope: !549, inlinedAt: !557)
!610 = !DILocation(line: 223, column: 19, scope: !466)
!611 = !DILocation(line: 209, column: 32, scope: !612)
!612 = distinct !DILexicalBlock(scope: !545, file: !48, line: 208, column: 59)
!613 = !DILocation(line: 209, column: 29, scope: !612)
!614 = !DILocation(line: 212, column: 19, scope: !612)
!615 = !DILocalVariable(name: "pcoder", arg: 1, scope: !616, file: !48, line: 112, type: !53)
!616 = distinct !DISubprogram(name: "lzma2_header_uncompressed", scope: !48, file: !48, line: 112, type: !550, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !617)
!617 = !{!615, !618}
!618 = !DILocalVariable(name: "coder", scope: !616, file: !48, line: 114, type: !118)
!619 = !DILocation(line: 0, scope: !616, inlinedAt: !620)
!620 = distinct !DILocation(line: 213, column: 4, scope: !612)
!621 = !DILocation(line: 120, column: 13, scope: !622, inlinedAt: !620)
!622 = distinct !DILexicalBlock(scope: !616, file: !48, line: 120, column: 6)
!623 = !DILocation(line: 120, column: 6, scope: !616, inlinedAt: !620)
!624 = !DILocation(line: 123, column: 17, scope: !622, inlinedAt: !620)
!625 = !DILocation(line: 125, column: 31, scope: !616, inlinedAt: !620)
!626 = !DILocation(line: 128, column: 44, scope: !616, inlinedAt: !620)
!627 = !DILocation(line: 128, column: 49, scope: !616, inlinedAt: !620)
!628 = !DILocation(line: 128, column: 18, scope: !616, inlinedAt: !620)
!629 = !DILocation(line: 128, column: 16, scope: !616, inlinedAt: !620)
!630 = !DILocation(line: 129, column: 18, scope: !616, inlinedAt: !620)
!631 = !DILocation(line: 129, column: 16, scope: !616, inlinedAt: !620)
!632 = !DILocation(line: 132, column: 17, scope: !616, inlinedAt: !620)
!633 = !DILocation(line: 214, column: 28, scope: !612)
!634 = !DILocation(line: 231, column: 3, scope: !464)
!635 = !DILocation(line: 234, column: 14, scope: !636)
!636 = distinct !DILexicalBlock(scope: !464, file: !48, line: 234, column: 7)
!637 = !DILocation(line: 234, column: 32, scope: !636)
!638 = !DILocation(line: 234, column: 22, scope: !636)
!639 = !DILocation(line: 234, column: 7, scope: !464)
!640 = !DILocation(line: 242, column: 3, scope: !464)
!641 = !DILocation(line: 245, column: 14, scope: !642)
!642 = distinct !DILexicalBlock(scope: !464, file: !48, line: 245, column: 7)
!643 = !DILocation(line: 245, column: 22, scope: !642)
!644 = !DILocation(line: 245, column: 7, scope: !464)
!645 = !DILocation(line: 248, column: 19, scope: !464)
!646 = !DILocation(line: 283, column: 38, scope: !647, inlinedAt: !659)
!647 = distinct !DISubprogram(name: "mf_read", scope: !216, file: !216, line: 280, type: !648, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !233, !167, !165, !102, !165}
!650 = !{!651, !652, !653, !654, !655, !656, !658}
!651 = !DILocalVariable(name: "mf", arg: 1, scope: !647, file: !216, line: 280, type: !233)
!652 = !DILocalVariable(name: "out", arg: 2, scope: !647, file: !216, line: 280, type: !167)
!653 = !DILocalVariable(name: "out_pos", arg: 3, scope: !647, file: !216, line: 280, type: !165)
!654 = !DILocalVariable(name: "out_size", arg: 4, scope: !647, file: !216, line: 280, type: !102)
!655 = !DILocalVariable(name: "left", arg: 5, scope: !647, file: !216, line: 281, type: !165)
!656 = !DILocalVariable(name: "out_avail", scope: !647, file: !216, line: 283, type: !657)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!658 = !DILocalVariable(name: "copy_size", scope: !647, file: !216, line: 284, type: !657)
!659 = distinct !DILocation(line: 255, column: 3, scope: !464)
!660 = !DILocation(line: 248, column: 3, scope: !464)
!661 = !DILocation(line: 255, column: 3, scope: !464)
!662 = !{!494, !311, i64 0}
!663 = !DILocation(line: 0, scope: !647, inlinedAt: !659)
!664 = !DILocation(line: 283, column: 36, scope: !647, inlinedAt: !659)
!665 = !DILocation(line: 284, column: 27, scope: !647, inlinedAt: !659)
!666 = !DILocation(line: 289, column: 13, scope: !647, inlinedAt: !659)
!667 = !DILocation(line: 289, column: 36, scope: !647, inlinedAt: !659)
!668 = !DILocation(line: 289, column: 51, scope: !647, inlinedAt: !659)
!669 = !DILocation(line: 289, column: 2, scope: !647, inlinedAt: !659)
!670 = !DILocation(line: 292, column: 11, scope: !647, inlinedAt: !659)
!671 = !DILocation(line: 293, column: 8, scope: !647, inlinedAt: !659)
!672 = !DILocation(line: 256, column: 32, scope: !673)
!673 = distinct !DILexicalBlock(scope: !464, file: !48, line: 256, column: 7)
!674 = !DILocation(line: 256, column: 7, scope: !464)
!675 = !DILocation(line: 0, scope: !464)
!676 = distinct !{!676, !475, !677, !678, !679}
!677 = !DILocation(line: 261, column: 2, scope: !450)
!678 = !{!"llvm.loop.mustprogress"}
!679 = !{!"llvm.loop.unroll.disable"}
!680 = !DILocation(line: 264, column: 1, scope: !450)
!681 = distinct !DISubprogram(name: "lzma2_encoder_end", scope: !48, file: !48, line: 268, type: !172, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !682)
!682 = !{!683, !684, !685}
!683 = !DILocalVariable(name: "pcoder", arg: 1, scope: !681, file: !48, line: 268, type: !53)
!684 = !DILocalVariable(name: "allocator", arg: 2, scope: !681, file: !48, line: 268, type: !150)
!685 = !DILocalVariable(name: "coder", scope: !681, file: !48, line: 270, type: !118)
!686 = !DILocation(line: 0, scope: !681)
!687 = !DILocation(line: 271, column: 19, scope: !681)
!688 = !DILocation(line: 271, column: 2, scope: !681)
!689 = !DILocation(line: 272, column: 2, scope: !681)
!690 = !DILocation(line: 274, column: 1, scope: !681)
!691 = distinct !DISubprogram(name: "lzma2_encoder_options_update", scope: !48, file: !48, line: 278, type: !276, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !692)
!692 = !{!693, !694, !695, !696}
!693 = !DILocalVariable(name: "pcoder", arg: 1, scope: !691, file: !48, line: 278, type: !53)
!694 = !DILocalVariable(name: "filter", arg: 2, scope: !691, file: !48, line: 278, type: !190)
!695 = !DILocalVariable(name: "coder", scope: !691, file: !48, line: 280, type: !118)
!696 = !DILocalVariable(name: "opt", scope: !691, file: !48, line: 289, type: !119)
!697 = !DILocation(line: 0, scope: !691)
!698 = !DILocation(line: 284, column: 14, scope: !699)
!699 = distinct !DILexicalBlock(scope: !691, file: !48, line: 284, column: 6)
!700 = !{!701, !311, i64 8}
!701 = !{!"", !338, i64 0, !311, i64 8}
!702 = !DILocation(line: 284, column: 22, scope: !699)
!703 = !DILocation(line: 284, column: 30, scope: !699)
!704 = !DILocation(line: 284, column: 40, scope: !699)
!705 = !DILocation(line: 284, column: 49, scope: !699)
!706 = !DILocation(line: 284, column: 6, scope: !691)
!707 = !DILocation(line: 290, column: 21, scope: !708)
!708 = distinct !DILexicalBlock(scope: !691, file: !48, line: 290, column: 6)
!709 = !{!334, !336, i64 36}
!710 = !DILocation(line: 290, column: 32, scope: !708)
!711 = !{!335, !336, i64 20}
!712 = !DILocation(line: 290, column: 24, scope: !708)
!713 = !DILocation(line: 290, column: 35, scope: !708)
!714 = !DILocation(line: 290, column: 53, scope: !708)
!715 = !{!334, !336, i64 40}
!716 = !DILocation(line: 290, column: 64, scope: !708)
!717 = !{!335, !336, i64 24}
!718 = !DILocation(line: 290, column: 56, scope: !708)
!719 = !DILocation(line: 291, column: 4, scope: !708)
!720 = !DILocation(line: 291, column: 22, scope: !708)
!721 = !{!334, !336, i64 44}
!722 = !DILocation(line: 291, column: 33, scope: !708)
!723 = !{!335, !336, i64 28}
!724 = !DILocation(line: 291, column: 25, scope: !708)
!725 = !DILocation(line: 290, column: 6, scope: !691)
!726 = !DILocation(line: 293, column: 15, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !48, line: 293, column: 7)
!728 = distinct !DILexicalBlock(scope: !708, file: !48, line: 291, column: 37)
!729 = !DILocation(line: 293, column: 31, scope: !727)
!730 = !DILocation(line: 293, column: 39, scope: !727)
!731 = !DILocation(line: 293, column: 42, scope: !727)
!732 = !DILocation(line: 294, column: 5, scope: !727)
!733 = !DILocation(line: 295, column: 13, scope: !727)
!734 = !DILocation(line: 295, column: 16, scope: !727)
!735 = !DILocation(line: 293, column: 7, scope: !728)
!736 = !DILocation(line: 300, column: 21, scope: !728)
!737 = !DILocation(line: 301, column: 18, scope: !728)
!738 = !DILocation(line: 301, column: 21, scope: !728)
!739 = !DILocation(line: 302, column: 18, scope: !728)
!740 = !DILocation(line: 302, column: 21, scope: !728)
!741 = !DILocation(line: 303, column: 10, scope: !728)
!742 = !DILocation(line: 303, column: 26, scope: !728)
!743 = !DILocation(line: 304, column: 10, scope: !728)
!744 = !DILocation(line: 304, column: 27, scope: !728)
!745 = !DILocation(line: 305, column: 2, scope: !728)
!746 = !DILocation(line: 308, column: 1, scope: !691)
!747 = !DISubprogram(name: "lzma_lzma_encoder_create", scope: !397, file: !397, line: 37, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !293)
!748 = !DISubroutineType(types: !749)
!749 = !{!131, !750, !150, !119, !280}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!751 = !DISubprogram(name: "lzma_lzma_encoder_reset", scope: !397, file: !397, line: 43, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !293)
!752 = !DISubroutineType(types: !753)
!753 = !{!131, !53, !119}
!754 = !DISubprogram(name: "lzma_lzma_encode", scope: !397, file: !397, line: 47, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !293)
!755 = !DISubroutineType(types: !756)
!756 = !{!131, !231, !232, !166, !164, !102, !61}
!757 = !DISubprogram(name: "lzma_bufcpy", scope: !55, file: !55, line: 242, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !293)
!758 = !DISubroutineType(types: !759)
!759 = !{!102, !163, !164, !102, !166, !164, !102}
!760 = !DISubprogram(name: "lzma_lzma_lclppb_encode", scope: !397, file: !397, line: 30, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !293)
!761 = !DISubroutineType(types: !762)
!762 = !{!98, !119, !167}
!763 = !DISubprogram(name: "lzma_free", scope: !55, file: !55, line: 215, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !293)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !95, !150}
