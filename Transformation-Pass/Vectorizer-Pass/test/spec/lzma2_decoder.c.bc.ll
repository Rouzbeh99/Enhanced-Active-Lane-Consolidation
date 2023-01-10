; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/lzma/lzma2_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma2_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_lz_decoder = type { ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, i32, %struct.lzma_lz_decoder, i64, i64, i8, i8, %struct.lzma_options_lzma }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_dict = type { ptr, i64, i64, i64, i64, i8 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma2_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !181 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !237, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !238, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata ptr %filters, metadata !239, metadata !DIExpression()), !dbg !240
  %call = tail call i32 @lzma_lz_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @lzma2_decoder_init) #5, !dbg !241
  ret i32 %call, !dbg !242
}

declare !dbg !243 i32 @lzma_lz_decoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_decoder_init(ptr nocapture noundef %lz, ptr noundef %allocator, ptr noundef %opt, ptr noundef %lz_options) #0 !dbg !258 {
entry:
  call void @llvm.dbg.value(metadata ptr %lz, metadata !260, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !261, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr %opt, metadata !262, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr %lz_options, metadata !263, metadata !DIExpression()), !dbg !267
  %0 = load ptr, ptr %lz, align 8, !dbg !268, !tbaa !270
  %cmp = icmp eq ptr %0, null, !dbg !275
  br i1 %cmp, label %if.then, label %if.end9, !dbg !276

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 184, ptr noundef %allocator) #5, !dbg !277
  store ptr %call, ptr %lz, align 8, !dbg !279, !tbaa !270
  %cmp3 = icmp eq ptr %call, null, !dbg !280
  br i1 %cmp3, label %return, label %if.end, !dbg !282

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds %struct.lzma_lz_decoder, ptr %lz, i64 0, i32 1, !dbg !283
  store ptr @lzma2_decode, ptr %code, align 8, !dbg !284, !tbaa !285
  %end = getelementptr inbounds %struct.lzma_lz_decoder, ptr %lz, i64 0, i32 4, !dbg !286
  store ptr @lzma2_decoder_end, ptr %end, align 8, !dbg !287, !tbaa !288
  %lzma = getelementptr inbounds %struct.lzma_coder_s, ptr %call, i64 0, i32 2, !dbg !289
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %lzma, i8 0, i64 40, i1 false), !dbg !290
  %.pre = load ptr, ptr %lz, align 8, !dbg !291, !tbaa !270
  br label %if.end9, !dbg !292

if.end9:                                          ; preds = %if.end, %entry
  %1 = phi ptr [ %.pre, %if.end ], [ %0, %entry ], !dbg !291
  call void @llvm.dbg.value(metadata ptr %opt, metadata !264, metadata !DIExpression()), !dbg !267
  store i32 0, ptr %1, align 8, !dbg !293, !tbaa !294
  %need_properties = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 5, !dbg !300
  store i8 1, ptr %need_properties, align 8, !dbg !301, !tbaa !302
  %preset_dict = getelementptr inbounds %struct.lzma_options_lzma, ptr %opt, i64 0, i32 1, !dbg !303
  %2 = load ptr, ptr %preset_dict, align 8, !dbg !303, !tbaa !304
  %cmp12 = icmp eq ptr %2, null, !dbg !305
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !306

lor.rhs:                                          ; preds = %if.end9
  %preset_dict_size = getelementptr inbounds %struct.lzma_options_lzma, ptr %opt, i64 0, i32 2, !dbg !307
  %3 = load i32, ptr %preset_dict_size, align 8, !dbg !307, !tbaa !308
  %cmp13 = icmp eq i32 %3, 0, !dbg !309
  %phi.cast = zext i1 %cmp13 to i8, !dbg !306
  br label %lor.end, !dbg !306

lor.end:                                          ; preds = %lor.rhs, %if.end9
  %4 = phi i8 [ 1, %if.end9 ], [ %phi.cast, %lor.rhs ]
  %need_dictionary_reset = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 6, !dbg !310
  store i8 %4, ptr %need_dictionary_reset, align 1, !dbg !311, !tbaa !312
  %lzma16 = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 2, !dbg !313
  %call17 = tail call i32 @lzma_lzma_decoder_create(ptr noundef nonnull %lzma16, ptr noundef %allocator, ptr noundef nonnull %opt, ptr noundef %lz_options) #5, !dbg !314
  br label %return

return:                                           ; preds = %if.then, %lor.end
  %retval.0 = phi i32 [ %call17, %lor.end ], [ 5, %if.then ], !dbg !267
  ret i32 %retval.0, !dbg !315
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_lzma2_decoder_memusage(ptr noundef %options) local_unnamed_addr #0 !dbg !316 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !320, metadata !DIExpression()), !dbg !321
  %call = tail call i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef %options) #5, !dbg !322
  %add = add i64 %call, 184, !dbg !323
  ret i64 %add, !dbg !324
}

declare !dbg !325 i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma2_props_decode(ptr nocapture noundef writeonly %options, ptr noundef %allocator, ptr nocapture noundef readonly %props, i64 noundef %props_size) local_unnamed_addr #0 !dbg !327 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !332, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !333, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata ptr %props, metadata !334, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 %props_size, metadata !335, metadata !DIExpression()), !dbg !338
  %cmp.not = icmp eq i64 %props_size, 1, !dbg !339
  br i1 %cmp.not, label %if.end, label %return, !dbg !341

if.end:                                           ; preds = %entry
  %0 = load i8, ptr %props, align 1, !dbg !342, !tbaa !344
  %cmp5 = icmp ugt i8 %0, 40
  br i1 %cmp5, label %return, label %if.end8, !dbg !345

if.end8:                                          ; preds = %if.end
  %call = tail call ptr @lzma_alloc(i64 noundef 112, ptr noundef %allocator) #5, !dbg !346
  call void @llvm.dbg.value(metadata ptr %call, metadata !336, metadata !DIExpression()), !dbg !338
  %cmp9 = icmp eq ptr %call, null, !dbg !347
  br i1 %cmp9, label %return, label %if.end12, !dbg !349

if.end12:                                         ; preds = %if.end8
  %1 = load i8, ptr %props, align 1, !dbg !350, !tbaa !344
  %cmp15 = icmp eq i8 %1, 40, !dbg !352
  br i1 %cmp15, label %if.end25, label %if.else, !dbg !353

if.else:                                          ; preds = %if.end12
  %2 = and i8 %1, 1, !dbg !354
  %3 = or i8 %2, 2, !dbg !356
  %or = zext i8 %3 to i32, !dbg !356
  store i32 %or, ptr %call, align 8, !dbg !357, !tbaa !358
  %4 = load i8, ptr %props, align 1, !dbg !359, !tbaa !344
  %5 = lshr i8 %4, 1, !dbg !360
  %narrow = add nuw i8 %5, 11, !dbg !361
  %add = zext i8 %narrow to i32, !dbg !361
  %shl = shl i32 %or, %add, !dbg !362
  br label %if.end25

if.end25:                                         ; preds = %if.end12, %if.else
  %storemerge = phi i32 [ %shl, %if.else ], [ -1, %if.end12 ], !dbg !363
  store i32 %storemerge, ptr %call, align 8, !dbg !363, !tbaa !358
  %preset_dict = getelementptr inbounds %struct.lzma_options_lzma, ptr %call, i64 0, i32 1, !dbg !364
  store ptr null, ptr %preset_dict, align 8, !dbg !365, !tbaa !304
  %preset_dict_size = getelementptr inbounds %struct.lzma_options_lzma, ptr %call, i64 0, i32 2, !dbg !366
  store i32 0, ptr %preset_dict_size, align 8, !dbg !367, !tbaa !308
  store ptr %call, ptr %options, align 8, !dbg !368, !tbaa !369
  br label %return, !dbg !370

return:                                           ; preds = %if.end25, %if.end8, %if.end, %entry
  %retval.1 = phi i32 [ 8, %entry ], [ 8, %if.end ], [ 0, %if.end25 ], [ 5, %if.end8 ], !dbg !338
  ret i32 %retval.1, !dbg !371
}

declare !dbg !372 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_decode(ptr noundef %pcoder, ptr noalias noundef %dict, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size) #0 !dbg !375 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !379, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %dict, metadata !380, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %in, metadata !381, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !382, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !383, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !384, metadata !DIExpression()), !dbg !396
  %compressed_size127 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4
  %pos.i = getelementptr inbounds %struct.lzma_dict, ptr %dict, i64 0, i32 1
  %limit.i = getelementptr inbounds %struct.lzma_dict, ptr %dict, i64 0, i32 3
  %full.i = getelementptr inbounds %struct.lzma_dict, ptr %dict, i64 0, i32 2
  %lzma101 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %code = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 1
  %options89 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7
  %reset95 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 2
  %next_sequence86 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1
  %uncompressed_size64 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3
  %set_uncompressed = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 3
  %need_dictionary_reset10 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6
  %need_properties = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5
  br label %while.cond, !dbg !397

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = load i64, ptr %in_pos, align 8, !dbg !398, !tbaa !399
  %cmp = icmp ult i64 %0, %in_size, !dbg !400
  %.pr = load i32, ptr %pcoder, align 8, !dbg !396, !tbaa !294
  br i1 %cmp, label %while.body, label %lor.rhs, !dbg !401

lor.rhs:                                          ; preds = %while.cond
  %cmp1 = icmp eq i32 %.pr, 6, !dbg !402
  br i1 %cmp1, label %sw.bb100, label %cleanup134, !dbg !397

while.body:                                       ; preds = %while.cond
  switch i32 %.pr, label %cleanup134 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb50
    i32 2, label %sw.bb58
    i32 3, label %sw.bb71
    i32 4, label %sw.bb78
    i32 5, label %sw.bb88
    i32 6, label %sw.bb100
    i32 7, label %sw.bb126
  ], !dbg !403

sw.bb:                                            ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !404
  %1 = load i8, ptr %arrayidx, align 1, !dbg !404, !tbaa !344
  %conv = zext i8 %1 to i64, !dbg !404
  call void @llvm.dbg.value(metadata i8 %1, metadata !386, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !405
  %inc = add nuw i64 %0, 1, !dbg !406
  store i64 %inc, ptr %in_pos, align 8, !dbg !406, !tbaa !399
  %cmp3 = icmp eq i8 %1, 0, !dbg !407
  br i1 %cmp3, label %cleanup134, label %if.end, !dbg !409

if.end:                                           ; preds = %sw.bb
  %cmp5 = icmp ugt i8 %1, -33, !dbg !410
  %cmp7 = icmp eq i8 %1, 1
  %or.cond = or i1 %cmp5, %cmp7, !dbg !412
  br i1 %or.cond, label %if.then9, label %if.else, !dbg !412

if.then9:                                         ; preds = %if.end
  store i8 1, ptr %need_properties, align 8, !dbg !413, !tbaa !302
  store i8 1, ptr %need_dictionary_reset10, align 1, !dbg !415, !tbaa !312
  br label %if.end13, !dbg !416

if.else:                                          ; preds = %if.end
  %2 = load i8, ptr %need_dictionary_reset10, align 1, !dbg !417, !tbaa !312, !range !419
  %tobool.not = icmp eq i8 %2, 0, !dbg !417
  br i1 %tobool.not, label %if.end13, label %cleanup134, !dbg !420

if.end13:                                         ; preds = %if.else, %if.then9
  %3 = phi i8 [ 0, %if.else ], [ 1, %if.then9 ]
  %cmp14 = icmp slt i8 %1, 0, !dbg !421
  br i1 %cmp14, label %if.then16, label %if.else37, !dbg !423

if.then16:                                        ; preds = %if.end13
  %and = shl nuw nsw i64 %conv, 16, !dbg !424
  %shl = and i64 %and, 2031616, !dbg !424
  store i64 %shl, ptr %uncompressed_size64, align 8, !dbg !426, !tbaa !427
  store i32 1, ptr %pcoder, align 8, !dbg !428, !tbaa !294
  %cmp19 = icmp ugt i8 %1, -65, !dbg !429
  br i1 %cmp19, label %if.then21, label %if.else23, !dbg !431

if.then21:                                        ; preds = %if.then16
  store i8 0, ptr %need_properties, align 8, !dbg !432, !tbaa !302
  store i32 5, ptr %next_sequence86, align 4, !dbg !434, !tbaa !435
  br label %if.end44, !dbg !436

if.else23:                                        ; preds = %if.then16
  %4 = load i8, ptr %need_properties, align 8, !dbg !437, !tbaa !302, !range !419
  %tobool25.not = icmp eq i8 %4, 0, !dbg !437
  br i1 %tobool25.not, label %if.else27, label %cleanup134, !dbg !439

if.else27:                                        ; preds = %if.else23
  store i32 6, ptr %next_sequence86, align 4, !dbg !440, !tbaa !435
  %cmp29 = icmp ugt i8 %1, -97, !dbg !442
  br i1 %cmp29, label %if.then31, label %if.end44, !dbg !444

if.then31:                                        ; preds = %if.else27
  %5 = load ptr, ptr %reset95, align 8, !dbg !445, !tbaa !446
  %6 = load ptr, ptr %lzma101, align 8, !dbg !447, !tbaa !448
  tail call void %5(ptr noundef %6, ptr noundef nonnull %options89) #5, !dbg !449
  %.pre = load i8, ptr %need_dictionary_reset10, align 1, !dbg !450, !tbaa !312, !range !419
  br label %if.end44, !dbg !449

if.else37:                                        ; preds = %if.end13
  %cmp38 = icmp ugt i8 %1, 2, !dbg !452
  br i1 %cmp38, label %cleanup134, label %if.end41, !dbg !455

if.end41:                                         ; preds = %if.else37
  store i32 3, ptr %pcoder, align 8, !dbg !456, !tbaa !294
  store i32 7, ptr %next_sequence86, align 4, !dbg !457, !tbaa !435
  br label %if.end44

if.end44:                                         ; preds = %if.then21, %if.else27, %if.then31, %if.end41
  %7 = phi i8 [ %3, %if.then21 ], [ %3, %if.else27 ], [ %.pre, %if.then31 ], [ %3, %if.end41 ], !dbg !450
  %tobool46.not = icmp eq i8 %7, 0, !dbg !450
  br i1 %tobool46.not, label %while.cond.backedge, label %if.then47, !dbg !458

if.then47:                                        ; preds = %if.end44
  store i8 0, ptr %need_dictionary_reset10, align 1, !dbg !459, !tbaa !312
  call void @llvm.dbg.value(metadata ptr %dict, metadata !461, metadata !DIExpression()), !dbg !466
  %need_reset.i = getelementptr inbounds %struct.lzma_dict, ptr %dict, i64 0, i32 5, !dbg !468
  store i8 1, ptr %need_reset.i, align 8, !dbg !469, !tbaa !470
  br label %cleanup134, !dbg !472

sw.bb50:                                          ; preds = %while.body
  %inc51 = add nuw i64 %0, 1, !dbg !473
  store i64 %inc51, ptr %in_pos, align 8, !dbg !473, !tbaa !399
  %arrayidx52 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !474
  %8 = load i8, ptr %arrayidx52, align 1, !dbg !474, !tbaa !344
  %conv53 = zext i8 %8 to i64, !dbg !475
  %shl54 = shl nuw nsw i64 %conv53, 8, !dbg !476
  %9 = load i64, ptr %uncompressed_size64, align 8, !dbg !477, !tbaa !427
  %add = add i64 %shl54, %9, !dbg !477
  store i64 %add, ptr %uncompressed_size64, align 8, !dbg !477, !tbaa !427
  store i32 2, ptr %pcoder, align 8, !dbg !478, !tbaa !294
  br label %while.cond.backedge, !dbg !479

sw.bb58:                                          ; preds = %while.body
  %inc59 = add nuw i64 %0, 1, !dbg !480
  store i64 %inc59, ptr %in_pos, align 8, !dbg !480, !tbaa !399
  %arrayidx60 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !481
  %10 = load i8, ptr %arrayidx60, align 1, !dbg !481, !tbaa !344
  %conv61 = zext i8 %10 to i64, !dbg !481
  %add62 = add nuw nsw i64 %conv61, 1, !dbg !482
  %11 = load i64, ptr %uncompressed_size64, align 8, !dbg !483, !tbaa !427
  %add65 = add i64 %add62, %11, !dbg !483
  store i64 %add65, ptr %uncompressed_size64, align 8, !dbg !483, !tbaa !427
  store i32 3, ptr %pcoder, align 8, !dbg !484, !tbaa !294
  %12 = load ptr, ptr %set_uncompressed, align 8, !dbg !485, !tbaa !486
  %13 = load ptr, ptr %lzma101, align 8, !dbg !487, !tbaa !448
  tail call void %12(ptr noundef %13, i64 noundef %add65) #5, !dbg !488
  br label %while.cond.backedge, !dbg !489

sw.bb71:                                          ; preds = %while.body
  %inc72 = add nuw i64 %0, 1, !dbg !490
  store i64 %inc72, ptr %in_pos, align 8, !dbg !490, !tbaa !399
  %arrayidx73 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !491
  %14 = load i8, ptr %arrayidx73, align 1, !dbg !491, !tbaa !344
  %conv74 = zext i8 %14 to i64, !dbg !492
  %shl75 = shl nuw nsw i64 %conv74, 8, !dbg !493
  store i64 %shl75, ptr %compressed_size127, align 8, !dbg !494, !tbaa !495
  store i32 4, ptr %pcoder, align 8, !dbg !496, !tbaa !294
  br label %while.cond.backedge, !dbg !497

sw.bb78:                                          ; preds = %while.body
  %inc79 = add nuw i64 %0, 1, !dbg !498
  store i64 %inc79, ptr %in_pos, align 8, !dbg !498, !tbaa !399
  %arrayidx80 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !499
  %15 = load i8, ptr %arrayidx80, align 1, !dbg !499, !tbaa !344
  %conv81 = zext i8 %15 to i64, !dbg !499
  %add82 = add nuw nsw i64 %conv81, 1, !dbg !500
  %16 = load i64, ptr %compressed_size127, align 8, !dbg !501, !tbaa !495
  %add85 = add i64 %add82, %16, !dbg !501
  store i64 %add85, ptr %compressed_size127, align 8, !dbg !501, !tbaa !495
  %17 = load i32, ptr %next_sequence86, align 4, !dbg !502, !tbaa !435
  store i32 %17, ptr %pcoder, align 8, !dbg !503, !tbaa !294
  br label %while.cond.backedge, !dbg !504

sw.bb88:                                          ; preds = %while.body
  %inc90 = add nuw i64 %0, 1, !dbg !505
  store i64 %inc90, ptr %in_pos, align 8, !dbg !505, !tbaa !399
  %arrayidx91 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !507
  %18 = load i8, ptr %arrayidx91, align 1, !dbg !507, !tbaa !344
  %call = tail call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %options89, i8 noundef zeroext %18) #5, !dbg !508
  br i1 %call, label %cleanup134, label %if.end93, !dbg !509

if.end93:                                         ; preds = %sw.bb88
  %19 = load ptr, ptr %reset95, align 8, !dbg !510, !tbaa !446
  %20 = load ptr, ptr %lzma101, align 8, !dbg !511, !tbaa !448
  tail call void %19(ptr noundef %20, ptr noundef nonnull %options89) #5, !dbg !512
  store i32 6, ptr %pcoder, align 8, !dbg !513, !tbaa !294
  br label %while.cond.backedge, !dbg !514

sw.bb100:                                         ; preds = %lor.rhs, %while.body
  call void @llvm.dbg.value(metadata i64 %0, metadata !390, metadata !DIExpression()), !dbg !515
  %21 = load ptr, ptr %code, align 8, !dbg !516, !tbaa !517
  %22 = load ptr, ptr %lzma101, align 8, !dbg !518, !tbaa !448
  %call104 = tail call i32 %21(ptr noundef %22, ptr noundef %dict, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #5, !dbg !519
  call void @llvm.dbg.value(metadata i32 %call104, metadata !393, metadata !DIExpression()), !dbg !515
  %23 = load i64, ptr %in_pos, align 8, !dbg !520, !tbaa !399
  %sub = sub i64 %23, %0, !dbg !521
  call void @llvm.dbg.value(metadata i64 %sub, metadata !395, metadata !DIExpression()), !dbg !515
  %24 = load i64, ptr %compressed_size127, align 8, !dbg !522, !tbaa !495
  %cmp106 = icmp ult i64 %24, %sub, !dbg !524
  br i1 %cmp106, label %cleanup134, label %if.end109, !dbg !525

if.end109:                                        ; preds = %sw.bb100
  %sub111 = sub i64 %24, %sub, !dbg !526
  store i64 %sub111, ptr %compressed_size127, align 8, !dbg !526, !tbaa !495
  %cmp112.not = icmp eq i32 %call104, 1, !dbg !527
  br i1 %cmp112.not, label %if.end115, label %cleanup134, !dbg !529

if.end115:                                        ; preds = %if.end109
  %cmp117.not = icmp eq i64 %24, %sub, !dbg !530
  br i1 %cmp117.not, label %cleanup122, label %cleanup134, !dbg !532

cleanup122:                                       ; preds = %if.end115
  store i32 0, ptr %pcoder, align 8, !dbg !533, !tbaa !294
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cleanup122, %if.end44, %if.end132, %if.end93, %sw.bb78, %sw.bb71, %sw.bb58, %sw.bb50
  br label %while.cond, !dbg !398, !llvm.loop !534

sw.bb126:                                         ; preds = %while.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538), !dbg !541
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543), !dbg !541
  call void @llvm.dbg.value(metadata ptr %dict, metadata !545, metadata !DIExpression()) #5, !dbg !554
  call void @llvm.dbg.value(metadata ptr %in, metadata !550, metadata !DIExpression()) #5, !dbg !554
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !551, metadata !DIExpression()) #5, !dbg !554
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !552, metadata !DIExpression()) #5, !dbg !554
  call void @llvm.dbg.value(metadata ptr %compressed_size127, metadata !553, metadata !DIExpression()) #5, !dbg !554
  %sub.i = sub i64 %in_size, %0, !dbg !556
  %25 = load i64, ptr %compressed_size127, align 8, !dbg !558, !tbaa !399, !alias.scope !543, !noalias !559
  %cmp.i = icmp ugt i64 %sub.i, %25, !dbg !562
  %add.i = add i64 %25, %0
  %spec.select.i = select i1 %cmp.i, i64 %add.i, i64 %in_size, !dbg !563
  call void @llvm.dbg.value(metadata i64 %spec.select.i, metadata !552, metadata !DIExpression()) #5, !dbg !554
  %26 = load ptr, ptr %dict, align 8, !dbg !564, !tbaa !565, !alias.scope !538, !noalias !566
  %27 = load i64, ptr %limit.i, align 8, !dbg !567, !tbaa !568, !alias.scope !538, !noalias !566
  %call.i = tail call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %spec.select.i, ptr noundef %26, ptr noundef nonnull %pos.i, i64 noundef %27) #5, !dbg !569, !noalias !543
  %sub1.i = sub i64 %25, %call.i, !dbg !570
  store i64 %sub1.i, ptr %compressed_size127, align 8, !dbg !570, !tbaa !399, !alias.scope !543, !noalias !559
  %28 = load i64, ptr %pos.i, align 8, !dbg !571, !tbaa !573, !alias.scope !538, !noalias !566
  %29 = load i64, ptr %full.i, align 8, !dbg !574, !tbaa !575, !alias.scope !538, !noalias !566
  %cmp3.i = icmp ugt i64 %28, %29, !dbg !576
  br i1 %cmp3.i, label %if.then4.i, label %dict_write.exit, !dbg !577

if.then4.i:                                       ; preds = %sw.bb126
  store i64 %28, ptr %full.i, align 8, !dbg !578, !tbaa !575, !alias.scope !538, !noalias !566
  br label %dict_write.exit, !dbg !579

dict_write.exit:                                  ; preds = %sw.bb126, %if.then4.i
  %cmp129.not = icmp eq i64 %25, %call.i, !dbg !580
  br i1 %cmp129.not, label %if.end132, label %cleanup134, !dbg !582

if.end132:                                        ; preds = %dict_write.exit
  store i32 0, ptr %pcoder, align 8, !dbg !583, !tbaa !294
  br label %while.cond.backedge, !dbg !584

cleanup134:                                       ; preds = %if.end115, %if.end109, %sw.bb100, %if.else37, %if.else23, %if.else, %sw.bb, %lor.rhs, %while.body, %dict_write.exit, %sw.bb88, %if.then47
  %retval.4 = phi i32 [ 0, %if.then47 ], [ 9, %sw.bb100 ], [ %call104, %if.end109 ], [ 9, %if.end115 ], [ 1, %sw.bb ], [ 9, %if.else ], [ 9, %if.else23 ], [ 9, %if.else37 ], [ 0, %lor.rhs ], [ 11, %while.body ], [ 0, %dict_write.exit ], [ 9, %sw.bb88 ], !dbg !396
  ret i32 %retval.4, !dbg !585
}

; Function Attrs: nounwind uwtable
define internal void @lzma2_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !586 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !588, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !589, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !590, metadata !DIExpression()), !dbg !591
  %lzma = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !592
  %0 = load ptr, ptr %lzma, align 8, !dbg !593, !tbaa !448
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #5, !dbg !594
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !595
  ret void, !dbg !596
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !597 i32 @lzma_lzma_decoder_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !598 zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare !dbg !601 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !604 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !58, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma2_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "9cda6399cf9c2869972035c0d84226da")
!2 = !{!3, !19, !25, !32, !37, !44, !47}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 138, baseType: !5, size: 32, elements: !34)
!33 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/lzma.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!36 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 58, baseType: !5, size: 32, elements: !38)
!38 = !{!39, !40, !41, !42, !43}
!39 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!40 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!41 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!42 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!43 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sequence", file: !48, line: 20, baseType: !5, size: 32, elements: !49)
!48 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma2_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9cda6399cf9c2869972035c0d84226da")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57}
!50 = !DIEnumerator(name: "SEQ_CONTROL", value: 0)
!51 = !DIEnumerator(name: "SEQ_UNCOMPRESSED_1", value: 1)
!52 = !DIEnumerator(name: "SEQ_UNCOMPRESSED_2", value: 2)
!53 = !DIEnumerator(name: "SEQ_COMPRESSED_0", value: 3)
!54 = !DIEnumerator(name: "SEQ_COMPRESSED_1", value: 4)
!55 = !DIEnumerator(name: "SEQ_PROPERTIES", value: 5)
!56 = !DIEnumerator(name: "SEQ_LZMA", value: 6)
!57 = !DIEnumerator(name: "SEQ_COPY", value: 7)
!58 = !{!59, !60, !146}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !48, line: 19, size: 1472, elements: !62)
!62 = !{!63, !64, !65, !137, !138, !139, !140, !141}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !61, file: !48, line: 29, baseType: !47, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next_sequence", scope: !61, file: !48, line: 32, baseType: !47, size: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "lzma", scope: !61, file: !48, line: 35, baseType: !66, size: 320, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_decoder", file: !67, line: 72, baseType: !68)
!67 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lz/lz_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27344aa2da5754ad4a118fbd9137003b")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 54, size: 320, elements: !69)
!69 = !{!70, !74, !106, !112, !120}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !68, file: !67, line: 56, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !73, line: 78, baseType: null)
!73 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!74 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !68, file: !67, line: 59, baseType: !75, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !79, !80, !101, !104, !93}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!79 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_dict", file: !67, line: 44, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 20, size: 384, elements: !84)
!84 = !{!85, !92, !96, !97, !98, !99}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !83, file: !67, line: 24, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !88, line: 24, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !90, line: 38, baseType: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!91 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !83, file: !67, line: 28, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 46, baseType: !95)
!94 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!95 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !83, file: !67, line: 33, baseType: !93, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !83, file: !67, line: 36, baseType: !93, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !83, file: !67, line: 39, baseType: !93, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "need_reset", scope: !83, file: !67, line: 42, baseType: !100, size: 8, offset: 320)
!100 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !68, file: !67, line: 63, baseType: !107, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !71, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "set_uncompressed", scope: !68, file: !67, line: 66, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !71, !116}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !117, line: 63, baseType: !118)
!117 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !88, line: 27, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !90, line: 45, baseType: !95)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !68, file: !67, line: 70, baseType: !121, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !71, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !127)
!127 = !{!128, !132, !136}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !126, file: !4, line: 376, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!59, !59, !93, !93}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !126, file: !4, line: 390, baseType: !133, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !59, !59}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !126, file: !4, line: 401, baseType: !59, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !61, file: !48, line: 38, baseType: !93, size: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !61, file: !48, line: 42, baseType: !93, size: 64, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "need_properties", scope: !61, file: !48, line: 46, baseType: !100, size: 8, offset: 512)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "need_dictionary_reset", scope: !61, file: !48, line: 50, baseType: !100, size: 8, offset: 520)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !61, file: !48, line: 52, baseType: !142, size: 896, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !33, line: 399, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 185, size: 896, elements: !144)
!144 = !{!145, !148, !149, !150, !151, !152, !153, !155, !156, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !169, !170, !171, !172, !173}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !143, file: !33, line: 217, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 26, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !90, line: 42, baseType: !5)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !143, file: !33, line: 240, baseType: !102, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !143, file: !33, line: 254, baseType: !146, size: 32, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !143, file: !33, line: 281, baseType: !146, size: 32, offset: 160)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !143, file: !33, line: 293, baseType: !146, size: 32, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !143, file: !33, line: 316, baseType: !146, size: 32, offset: 224)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !143, file: !33, line: 322, baseType: !154, size: 32, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !33, line: 155, baseType: !32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !143, file: !33, line: 342, baseType: !146, size: 32, offset: 288)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !143, file: !33, line: 345, baseType: !157, size: 32, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !33, line: 111, baseType: !37)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !143, file: !33, line: 375, baseType: !146, size: 32, offset: 352)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !143, file: !33, line: 384, baseType: !146, size: 32, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !143, file: !33, line: 385, baseType: !146, size: 32, offset: 416)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !143, file: !33, line: 386, baseType: !146, size: 32, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !143, file: !33, line: 387, baseType: !146, size: 32, offset: 480)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !143, file: !33, line: 388, baseType: !146, size: 32, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !143, file: !33, line: 389, baseType: !146, size: 32, offset: 544)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !143, file: !33, line: 390, baseType: !146, size: 32, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !143, file: !33, line: 391, baseType: !146, size: 32, offset: 608)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !143, file: !33, line: 392, baseType: !168, size: 32, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !44)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !143, file: !33, line: 393, baseType: !168, size: 32, offset: 672)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !143, file: !33, line: 394, baseType: !168, size: 32, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !143, file: !33, line: 395, baseType: !168, size: 32, offset: 736)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !143, file: !33, line: 396, baseType: !59, size: 64, offset: 768)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !143, file: !33, line: 397, baseType: !59, size: 64, offset: 832)
!174 = !{i32 7, !"Dwarf Version", i32 5}
!175 = !{i32 2, !"Debug Info Version", i32 3}
!176 = !{i32 1, !"wchar_size", i32 4}
!177 = !{i32 7, !"PIC Level", i32 2}
!178 = !{i32 7, !"PIE Level", i32 2}
!179 = !{i32 7, !"uwtable", i32 2}
!180 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!181 = distinct !DISubprogram(name: "lzma_lzma2_decoder_init", scope: !48, file: !48, line: 253, type: !182, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !236)
!182 = !DISubroutineType(types: !183)
!183 = !{!78, !184, !124, !226}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !73, line: 80, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !73, line: 124, size: 512, elements: !187)
!187 = !{!188, !189, !190, !193, !200, !202, !209, !214}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !186, file: !73, line: 126, baseType: !71, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !186, file: !73, line: 130, baseType: !116, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !186, file: !73, line: 136, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !192, line: 90, baseType: !95)
!192 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!193 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !186, file: !73, line: 139, baseType: !194, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !73, line: 94, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!78, !71, !124, !101, !104, !93, !198, !104, !93, !199}
!198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !186, file: !73, line: 144, baseType: !201, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !73, line: 102, baseType: !121)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !186, file: !73, line: 148, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !186, file: !73, line: 152, baseType: !210, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!78, !71, !213, !213, !118}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !186, file: !73, line: 157, baseType: !215, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!78, !71, !124, !218, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !221, line: 65, baseType: !222)
!221 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 43, size: 128, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !222, file: !221, line: 54, baseType: !116, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !222, file: !221, line: 63, baseType: !59, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !73, line: 82, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !73, line: 109, size: 192, elements: !230)
!230 = !{!231, !232, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !229, file: !73, line: 112, baseType: !116, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !229, file: !73, line: 116, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !73, line: 86, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !229, file: !73, line: 119, baseType: !59, size: 64, offset: 128)
!236 = !{!237, !238, !239}
!237 = !DILocalVariable(name: "next", arg: 1, scope: !181, file: !48, line: 253, type: !184)
!238 = !DILocalVariable(name: "allocator", arg: 2, scope: !181, file: !48, line: 253, type: !124)
!239 = !DILocalVariable(name: "filters", arg: 3, scope: !181, file: !48, line: 254, type: !226)
!240 = !DILocation(line: 0, scope: !181)
!241 = !DILocation(line: 260, column: 9, scope: !181)
!242 = !DILocation(line: 260, column: 2, scope: !181)
!243 = !DISubprogram(name: "lzma_lz_decoder_init", scope: !67, file: !67, line: 85, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!244 = !DISubroutineType(types: !245)
!245 = !{!78, !184, !124, !226, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!78, !249, !124, !110, !250}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_options", file: !67, line: 51, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 47, size: 192, elements: !253)
!253 = !{!254, !255, !256}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !252, file: !67, line: 48, baseType: !93, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !252, file: !67, line: 49, baseType: !102, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !252, file: !67, line: 50, baseType: !93, size: 64, offset: 128)
!257 = !{}
!258 = distinct !DISubprogram(name: "lzma2_decoder_init", scope: !48, file: !48, line: 226, type: !247, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !259)
!259 = !{!260, !261, !262, !263, !264}
!260 = !DILocalVariable(name: "lz", arg: 1, scope: !258, file: !48, line: 226, type: !249)
!261 = !DILocalVariable(name: "allocator", arg: 2, scope: !258, file: !48, line: 226, type: !124)
!262 = !DILocalVariable(name: "opt", arg: 3, scope: !258, file: !48, line: 227, type: !110)
!263 = !DILocalVariable(name: "lz_options", arg: 4, scope: !258, file: !48, line: 227, type: !250)
!264 = !DILocalVariable(name: "options", scope: !258, file: !48, line: 240, type: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!267 = !DILocation(line: 0, scope: !258)
!268 = !DILocation(line: 229, column: 10, scope: !269)
!269 = distinct !DILexicalBlock(scope: !258, file: !48, line: 229, column: 6)
!270 = !{!271, !272, i64 0}
!271 = !{!"", !272, i64 0, !272, i64 8, !272, i64 16, !272, i64 24, !272, i64 32}
!272 = !{!"any pointer", !273, i64 0}
!273 = !{!"omnipotent char", !274, i64 0}
!274 = !{!"Simple C/C++ TBAA"}
!275 = !DILocation(line: 229, column: 16, scope: !269)
!276 = !DILocation(line: 229, column: 6, scope: !258)
!277 = !DILocation(line: 230, column: 15, scope: !278)
!278 = distinct !DILexicalBlock(scope: !269, file: !48, line: 229, column: 25)
!279 = !DILocation(line: 230, column: 13, scope: !278)
!280 = !DILocation(line: 231, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !48, line: 231, column: 7)
!282 = !DILocation(line: 231, column: 7, scope: !278)
!283 = !DILocation(line: 234, column: 7, scope: !278)
!284 = !DILocation(line: 234, column: 12, scope: !278)
!285 = !{!271, !272, i64 8}
!286 = !DILocation(line: 235, column: 7, scope: !278)
!287 = !DILocation(line: 235, column: 11, scope: !278)
!288 = !{!271, !272, i64 32}
!289 = !DILocation(line: 237, column: 38, scope: !278)
!290 = !DILocation(line: 237, column: 45, scope: !278)
!291 = !DILocation(line: 242, column: 29, scope: !258)
!292 = !DILocation(line: 238, column: 2, scope: !278)
!293 = !DILocation(line: 242, column: 46, scope: !258)
!294 = !{!295, !273, i64 0}
!295 = !{!"lzma_coder_s", !273, i64 0, !273, i64 4, !271, i64 8, !296, i64 48, !296, i64 56, !297, i64 64, !297, i64 65, !298, i64 72}
!296 = !{!"long", !273, i64 0}
!297 = !{!"_Bool", !273, i64 0}
!298 = !{!"", !299, i64 0, !272, i64 8, !299, i64 16, !299, i64 20, !299, i64 24, !299, i64 28, !273, i64 32, !299, i64 36, !273, i64 40, !299, i64 44, !299, i64 48, !299, i64 52, !299, i64 56, !299, i64 60, !299, i64 64, !299, i64 68, !299, i64 72, !299, i64 76, !273, i64 80, !273, i64 84, !273, i64 88, !273, i64 92, !272, i64 96, !272, i64 104}
!299 = !{!"int", !273, i64 0}
!300 = !DILocation(line: 243, column: 37, scope: !258)
!301 = !DILocation(line: 243, column: 53, scope: !258)
!302 = !{!295, !297, i64 64}
!303 = !DILocation(line: 244, column: 70, scope: !258)
!304 = !{!298, !272, i64 8}
!305 = !DILocation(line: 244, column: 82, scope: !258)
!306 = !DILocation(line: 245, column: 4, scope: !258)
!307 = !DILocation(line: 245, column: 16, scope: !258)
!308 = !{!298, !299, i64 16}
!309 = !DILocation(line: 245, column: 33, scope: !258)
!310 = !DILocation(line: 244, column: 37, scope: !258)
!311 = !DILocation(line: 244, column: 59, scope: !258)
!312 = !{!295, !297, i64 65}
!313 = !DILocation(line: 247, column: 70, scope: !258)
!314 = !DILocation(line: 247, column: 9, scope: !258)
!315 = !DILocation(line: 249, column: 1, scope: !258)
!316 = distinct !DISubprogram(name: "lzma_lzma2_decoder_memusage", scope: !48, file: !48, line: 266, type: !317, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{!118, !110}
!319 = !{!320}
!320 = !DILocalVariable(name: "options", arg: 1, scope: !316, file: !48, line: 266, type: !110)
!321 = !DILocation(line: 0, scope: !316)
!322 = !DILocation(line: 269, column: 6, scope: !316)
!323 = !DILocation(line: 269, column: 4, scope: !316)
!324 = !DILocation(line: 268, column: 2, scope: !316)
!325 = !DISubprogram(name: "lzma_lzma_decoder_memusage_nocheck", scope: !326, file: !326, line: 48, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!326 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0caa14a517fbe6eb5d1a0f4dac3f4c24")
!327 = distinct !DISubprogram(name: "lzma_lzma2_props_decode", scope: !48, file: !48, line: 274, type: !328, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !331)
!328 = !DISubroutineType(types: !329)
!329 = !{!78, !330, !124, !102, !93}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!331 = !{!332, !333, !334, !335, !336}
!332 = !DILocalVariable(name: "options", arg: 1, scope: !327, file: !48, line: 274, type: !330)
!333 = !DILocalVariable(name: "allocator", arg: 2, scope: !327, file: !48, line: 274, type: !124)
!334 = !DILocalVariable(name: "props", arg: 3, scope: !327, file: !48, line: 275, type: !102)
!335 = !DILocalVariable(name: "props_size", arg: 4, scope: !327, file: !48, line: 275, type: !93)
!336 = !DILocalVariable(name: "opt", scope: !327, file: !48, line: 288, type: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!338 = !DILocation(line: 0, scope: !327)
!339 = !DILocation(line: 277, column: 17, scope: !340)
!340 = distinct !DILexicalBlock(scope: !327, file: !48, line: 277, column: 6)
!341 = !DILocation(line: 277, column: 6, scope: !327)
!342 = !DILocation(line: 281, column: 6, scope: !343)
!343 = distinct !DILexicalBlock(scope: !327, file: !48, line: 281, column: 6)
!344 = !{!273, !273, i64 0}
!345 = !DILocation(line: 281, column: 6, scope: !327)
!346 = !DILocation(line: 288, column: 27, scope: !327)
!347 = !DILocation(line: 290, column: 10, scope: !348)
!348 = distinct !DILexicalBlock(scope: !327, file: !48, line: 290, column: 6)
!349 = !DILocation(line: 290, column: 6, scope: !327)
!350 = !DILocation(line: 293, column: 6, scope: !351)
!351 = distinct !DILexicalBlock(scope: !327, file: !48, line: 293, column: 6)
!352 = !DILocation(line: 293, column: 15, scope: !351)
!353 = !DILocation(line: 293, column: 6, scope: !327)
!354 = !DILocation(line: 296, column: 34, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !48, line: 295, column: 9)
!356 = !DILocation(line: 296, column: 22, scope: !355)
!357 = !DILocation(line: 296, column: 18, scope: !355)
!358 = !{!298, !299, i64 0}
!359 = !DILocation(line: 297, column: 22, scope: !355)
!360 = !DILocation(line: 297, column: 31, scope: !355)
!361 = !DILocation(line: 297, column: 35, scope: !355)
!362 = !DILocation(line: 297, column: 18, scope: !355)
!363 = !DILocation(line: 0, scope: !351)
!364 = !DILocation(line: 300, column: 7, scope: !327)
!365 = !DILocation(line: 300, column: 19, scope: !327)
!366 = !DILocation(line: 301, column: 7, scope: !327)
!367 = !DILocation(line: 301, column: 24, scope: !327)
!368 = !DILocation(line: 303, column: 11, scope: !327)
!369 = !{!272, !272, i64 0}
!370 = !DILocation(line: 305, column: 2, scope: !327)
!371 = !DILocation(line: 306, column: 1, scope: !327)
!372 = !DISubprogram(name: "lzma_alloc", scope: !73, file: !73, line: 211, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!373 = !DISubroutineType(types: !374)
!374 = !{!59, !93, !124}
!375 = distinct !DISubprogram(name: "lzma2_decode", scope: !48, file: !48, line: 57, type: !376, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !378)
!376 = !DISubroutineType(types: !377)
!377 = !{!78, !71, !80, !101, !104, !93}
!378 = !{!379, !380, !381, !382, !383, !384, !386, !390, !393, !395}
!379 = !DILocalVariable(name: "pcoder", arg: 1, scope: !375, file: !48, line: 57, type: !71)
!380 = !DILocalVariable(name: "dict", arg: 2, scope: !375, file: !48, line: 57, type: !80)
!381 = !DILocalVariable(name: "in", arg: 3, scope: !375, file: !48, line: 58, type: !101)
!382 = !DILocalVariable(name: "in_pos", arg: 4, scope: !375, file: !48, line: 58, type: !104)
!383 = !DILocalVariable(name: "in_size", arg: 5, scope: !375, file: !48, line: 59, type: !93)
!384 = !DILocalVariable(name: "coder", scope: !375, file: !48, line: 61, type: !385)
!385 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!386 = !DILocalVariable(name: "control", scope: !387, file: !48, line: 68, type: !389)
!387 = distinct !DILexicalBlock(scope: !388, file: !48, line: 67, column: 20)
!388 = distinct !DILexicalBlock(scope: !375, file: !48, line: 66, column: 27)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!390 = !DILocalVariable(name: "in_start", scope: !391, file: !48, line: 166, type: !392)
!391 = distinct !DILexicalBlock(scope: !388, file: !48, line: 163, column: 17)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!393 = !DILocalVariable(name: "ret", scope: !391, file: !48, line: 169, type: !394)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!395 = !DILocalVariable(name: "in_used", scope: !391, file: !48, line: 173, type: !392)
!396 = !DILocation(line: 0, scope: !375)
!397 = !DILocation(line: 65, column: 2, scope: !375)
!398 = !DILocation(line: 65, column: 9, scope: !375)
!399 = !{!296, !296, i64 0}
!400 = !DILocation(line: 65, column: 17, scope: !375)
!401 = !DILocation(line: 65, column: 27, scope: !375)
!402 = !DILocation(line: 65, column: 46, scope: !375)
!403 = !DILocation(line: 66, column: 2, scope: !375)
!404 = !DILocation(line: 68, column: 28, scope: !387)
!405 = !DILocation(line: 0, scope: !387)
!406 = !DILocation(line: 69, column: 3, scope: !387)
!407 = !DILocation(line: 72, column: 15, scope: !408)
!408 = distinct !DILexicalBlock(scope: !387, file: !48, line: 72, column: 7)
!409 = !DILocation(line: 72, column: 7, scope: !387)
!410 = !DILocation(line: 75, column: 15, scope: !411)
!411 = distinct !DILexicalBlock(scope: !387, file: !48, line: 75, column: 7)
!412 = !DILocation(line: 75, column: 23, scope: !411)
!413 = !DILocation(line: 78, column: 27, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !48, line: 75, column: 40)
!415 = !DILocation(line: 79, column: 33, scope: !414)
!416 = !DILocation(line: 80, column: 3, scope: !414)
!417 = !DILocation(line: 80, column: 21, scope: !418)
!418 = distinct !DILexicalBlock(scope: !411, file: !48, line: 80, column: 14)
!419 = !{i8 0, i8 2}
!420 = !DILocation(line: 80, column: 14, scope: !411)
!421 = !DILocation(line: 84, column: 15, scope: !422)
!422 = distinct !DILexicalBlock(scope: !387, file: !48, line: 84, column: 7)
!423 = !DILocation(line: 84, column: 7, scope: !387)
!424 = !DILocation(line: 87, column: 48, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !48, line: 84, column: 24)
!426 = !DILocation(line: 87, column: 29, scope: !425)
!427 = !{!295, !296, i64 48}
!428 = !DILocation(line: 88, column: 20, scope: !425)
!429 = !DILocation(line: 92, column: 16, scope: !430)
!430 = distinct !DILexicalBlock(scope: !425, file: !48, line: 92, column: 8)
!431 = !DILocation(line: 92, column: 8, scope: !425)
!432 = !DILocation(line: 95, column: 28, scope: !433)
!433 = distinct !DILexicalBlock(scope: !430, file: !48, line: 92, column: 25)
!434 = !DILocation(line: 96, column: 26, scope: !433)
!435 = !{!295, !273, i64 4}
!436 = !DILocation(line: 98, column: 4, scope: !433)
!437 = !DILocation(line: 98, column: 22, scope: !438)
!438 = distinct !DILexicalBlock(scope: !430, file: !48, line: 98, column: 15)
!439 = !DILocation(line: 98, column: 15, scope: !430)
!440 = !DILocation(line: 102, column: 26, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !48, line: 101, column: 11)
!442 = !DILocation(line: 107, column: 17, scope: !443)
!443 = distinct !DILexicalBlock(scope: !441, file: !48, line: 107, column: 9)
!444 = !DILocation(line: 107, column: 9, scope: !441)
!445 = !DILocation(line: 108, column: 18, scope: !443)
!446 = !{!295, !272, i64 24}
!447 = !DILocation(line: 108, column: 36, scope: !443)
!448 = !{!295, !272, i64 8}
!449 = !DILocation(line: 108, column: 6, scope: !443)
!450 = !DILocation(line: 121, column: 14, scope: !451)
!451 = distinct !DILexicalBlock(scope: !387, file: !48, line: 121, column: 7)
!452 = !DILocation(line: 113, column: 16, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !48, line: 113, column: 8)
!454 = distinct !DILexicalBlock(scope: !422, file: !48, line: 111, column: 10)
!455 = !DILocation(line: 113, column: 8, scope: !454)
!456 = !DILocation(line: 117, column: 20, scope: !454)
!457 = !DILocation(line: 118, column: 25, scope: !454)
!458 = !DILocation(line: 121, column: 7, scope: !387)
!459 = !DILocation(line: 124, column: 33, scope: !460)
!460 = distinct !DILexicalBlock(scope: !451, file: !48, line: 121, column: 37)
!461 = !DILocalVariable(name: "dict", arg: 1, scope: !462, file: !67, line: 228, type: !81)
!462 = distinct !DISubprogram(name: "dict_reset", scope: !67, file: !67, line: 228, type: !463, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !81}
!465 = !{!461}
!466 = !DILocation(line: 0, scope: !462, inlinedAt: !467)
!467 = distinct !DILocation(line: 125, column: 4, scope: !460)
!468 = !DILocation(line: 230, column: 8, scope: !462, inlinedAt: !467)
!469 = !DILocation(line: 230, column: 19, scope: !462, inlinedAt: !467)
!470 = !{!471, !297, i64 40}
!471 = !{!"", !272, i64 0, !296, i64 8, !296, i64 16, !296, i64 24, !296, i64 32, !297, i64 40}
!472 = !DILocation(line: 126, column: 4, scope: !460)
!473 = !DILocation(line: 133, column: 54, scope: !388)
!474 = !DILocation(line: 133, column: 42, scope: !388)
!475 = !DILocation(line: 133, column: 31, scope: !388)
!476 = !DILocation(line: 133, column: 59, scope: !388)
!477 = !DILocation(line: 133, column: 28, scope: !388)
!478 = !DILocation(line: 134, column: 19, scope: !388)
!479 = !DILocation(line: 135, column: 3, scope: !388)
!480 = !DILocation(line: 138, column: 43, scope: !388)
!481 = !DILocation(line: 138, column: 31, scope: !388)
!482 = !DILocation(line: 138, column: 47, scope: !388)
!483 = !DILocation(line: 138, column: 28, scope: !388)
!484 = !DILocation(line: 139, column: 19, scope: !388)
!485 = !DILocation(line: 140, column: 15, scope: !388)
!486 = !{!295, !272, i64 32}
!487 = !DILocation(line: 140, column: 44, scope: !388)
!488 = !DILocation(line: 140, column: 3, scope: !388)
!489 = !DILocation(line: 142, column: 3, scope: !388)
!490 = !DILocation(line: 145, column: 51, scope: !388)
!491 = !DILocation(line: 145, column: 39, scope: !388)
!492 = !DILocation(line: 145, column: 28, scope: !388)
!493 = !DILocation(line: 145, column: 56, scope: !388)
!494 = !DILocation(line: 145, column: 26, scope: !388)
!495 = !{!295, !296, i64 56}
!496 = !DILocation(line: 146, column: 19, scope: !388)
!497 = !DILocation(line: 147, column: 3, scope: !388)
!498 = !DILocation(line: 150, column: 41, scope: !388)
!499 = !DILocation(line: 150, column: 29, scope: !388)
!500 = !DILocation(line: 150, column: 45, scope: !388)
!501 = !DILocation(line: 150, column: 26, scope: !388)
!502 = !DILocation(line: 151, column: 28, scope: !388)
!503 = !DILocation(line: 151, column: 19, scope: !388)
!504 = !DILocation(line: 152, column: 3, scope: !388)
!505 = !DILocation(line: 155, column: 60, scope: !506)
!506 = distinct !DILexicalBlock(scope: !388, file: !48, line: 155, column: 7)
!507 = !DILocation(line: 155, column: 48, scope: !506)
!508 = !DILocation(line: 155, column: 7, scope: !506)
!509 = !DILocation(line: 155, column: 7, scope: !388)
!510 = !DILocation(line: 158, column: 15, scope: !388)
!511 = !DILocation(line: 158, column: 33, scope: !388)
!512 = !DILocation(line: 158, column: 3, scope: !388)
!513 = !DILocation(line: 160, column: 19, scope: !388)
!514 = !DILocation(line: 161, column: 3, scope: !388)
!515 = !DILocation(line: 0, scope: !391)
!516 = !DILocation(line: 169, column: 36, scope: !391)
!517 = !{!295, !272, i64 16}
!518 = !DILocation(line: 169, column: 53, scope: !391)
!519 = !DILocation(line: 169, column: 24, scope: !391)
!520 = !DILocation(line: 173, column: 26, scope: !391)
!521 = !DILocation(line: 173, column: 34, scope: !391)
!522 = !DILocation(line: 174, column: 24, scope: !523)
!523 = distinct !DILexicalBlock(scope: !391, file: !48, line: 174, column: 7)
!524 = !DILocation(line: 174, column: 15, scope: !523)
!525 = !DILocation(line: 174, column: 7, scope: !391)
!526 = !DILocation(line: 177, column: 26, scope: !391)
!527 = !DILocation(line: 180, column: 11, scope: !528)
!528 = distinct !DILexicalBlock(scope: !391, file: !48, line: 180, column: 7)
!529 = !DILocation(line: 180, column: 7, scope: !391)
!530 = !DILocation(line: 186, column: 30, scope: !531)
!531 = distinct !DILexicalBlock(scope: !391, file: !48, line: 186, column: 7)
!532 = !DILocation(line: 186, column: 7, scope: !391)
!533 = !DILocation(line: 189, column: 19, scope: !391)
!534 = distinct !{!534, !397, !535, !536, !537}
!535 = !DILocation(line: 206, column: 2, scope: !375)
!536 = !{!"llvm.loop.mustprogress"}
!537 = !{!"llvm.loop.unroll.disable"}
!538 = !{!539}
!539 = distinct !{!539, !540, !"dict_write: %dict"}
!540 = distinct !{!540, !"dict_write"}
!541 = !DILocation(line: 195, column: 3, scope: !542)
!542 = distinct !DILexicalBlock(scope: !388, file: !48, line: 193, column: 17)
!543 = !{!544}
!544 = distinct !{!544, !540, !"dict_write: %left"}
!545 = !DILocalVariable(name: "dict", arg: 1, scope: !546, file: !67, line: 203, type: !80)
!546 = distinct !DISubprogram(name: "dict_write", scope: !67, file: !67, line: 203, type: !547, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !80, !101, !104, !93, !104}
!549 = !{!545, !550, !551, !552, !553}
!550 = !DILocalVariable(name: "in", arg: 2, scope: !546, file: !67, line: 203, type: !101)
!551 = !DILocalVariable(name: "in_pos", arg: 3, scope: !546, file: !67, line: 204, type: !104)
!552 = !DILocalVariable(name: "in_size", arg: 4, scope: !546, file: !67, line: 204, type: !93)
!553 = !DILocalVariable(name: "left", arg: 5, scope: !546, file: !67, line: 205, type: !104)
!554 = !DILocation(line: 0, scope: !546, inlinedAt: !555)
!555 = distinct !DILocation(line: 195, column: 3, scope: !542)
!556 = !DILocation(line: 214, column: 14, scope: !557, inlinedAt: !555)
!557 = distinct !DILexicalBlock(scope: !546, file: !67, line: 214, column: 6)
!558 = !DILocation(line: 214, column: 26, scope: !557, inlinedAt: !555)
!559 = !{!539, !560, !561}
!560 = distinct !{!560, !540, !"dict_write: %in"}
!561 = distinct !{!561, !540, !"dict_write: %in_pos"}
!562 = !DILocation(line: 214, column: 24, scope: !557, inlinedAt: !555)
!563 = !DILocation(line: 214, column: 6, scope: !546, inlinedAt: !555)
!564 = !DILocation(line: 218, column: 10, scope: !546, inlinedAt: !555)
!565 = !{!471, !272, i64 0}
!566 = !{!560, !561, !544}
!567 = !DILocation(line: 218, column: 33, scope: !546, inlinedAt: !555)
!568 = !{!471, !296, i64 24}
!569 = !DILocation(line: 217, column: 11, scope: !546, inlinedAt: !555)
!570 = !DILocation(line: 217, column: 8, scope: !546, inlinedAt: !555)
!571 = !DILocation(line: 220, column: 12, scope: !572, inlinedAt: !555)
!572 = distinct !DILexicalBlock(scope: !546, file: !67, line: 220, column: 6)
!573 = !{!471, !296, i64 8}
!574 = !DILocation(line: 220, column: 24, scope: !572, inlinedAt: !555)
!575 = !{!471, !296, i64 16}
!576 = !DILocation(line: 220, column: 16, scope: !572, inlinedAt: !555)
!577 = !DILocation(line: 220, column: 6, scope: !546, inlinedAt: !555)
!578 = !DILocation(line: 221, column: 14, scope: !572, inlinedAt: !555)
!579 = !DILocation(line: 221, column: 3, scope: !572, inlinedAt: !555)
!580 = !DILocation(line: 196, column: 30, scope: !581)
!581 = distinct !DILexicalBlock(scope: !542, file: !48, line: 196, column: 7)
!582 = !DILocation(line: 196, column: 7, scope: !542)
!583 = !DILocation(line: 199, column: 19, scope: !542)
!584 = !DILocation(line: 200, column: 3, scope: !542)
!585 = !DILocation(line: 209, column: 1, scope: !375)
!586 = distinct !DISubprogram(name: "lzma2_decoder_end", scope: !48, file: !48, line: 213, type: !122, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !587)
!587 = !{!588, !589, !590}
!588 = !DILocalVariable(name: "pcoder", arg: 1, scope: !586, file: !48, line: 213, type: !71)
!589 = !DILocalVariable(name: "allocator", arg: 2, scope: !586, file: !48, line: 213, type: !124)
!590 = !DILocalVariable(name: "coder", scope: !586, file: !48, line: 215, type: !60)
!591 = !DILocation(line: 0, scope: !586)
!592 = !DILocation(line: 217, column: 19, scope: !586)
!593 = !DILocation(line: 217, column: 24, scope: !586)
!594 = !DILocation(line: 217, column: 2, scope: !586)
!595 = !DILocation(line: 219, column: 2, scope: !586)
!596 = !DILocation(line: 222, column: 1, scope: !586)
!597 = !DISubprogram(name: "lzma_lzma_decoder_create", scope: !326, file: !326, line: 42, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!598 = !DISubprogram(name: "lzma_lzma_lclppb_decode", scope: !326, file: !326, line: 35, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!599 = !DISubroutineType(types: !600)
!600 = !{!100, !337, !87}
!601 = !DISubprogram(name: "lzma_bufcpy", scope: !73, file: !73, line: 242, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!602 = !DISubroutineType(types: !603)
!603 = !{!93, !101, !104, !93, !198, !104, !93}
!604 = !DISubprogram(name: "lzma_free", scope: !73, file: !73, line: 215, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !59, !124}
