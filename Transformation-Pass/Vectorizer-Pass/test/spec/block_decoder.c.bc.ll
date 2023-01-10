; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/block_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_coder_s = type { i32, %struct.lzma_next_coder_s, ptr, i64, i64, i64, i64, %struct.lzma_check_state }
%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %block) #0 !dbg !229 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !234, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !235, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %block, metadata !236, metadata !DIExpression()), !dbg !237
  %init = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 2, !dbg !238
  %0 = load i64, ptr %init, align 8, !dbg !238, !tbaa !241
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_block_decoder_init to i64), !dbg !238
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !247

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5, !dbg !238
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_block_decoder_init to i64), ptr %init, align 8, !dbg !247, !tbaa !241
  %call = tail call i64 @lzma_block_unpadded_size(ptr noundef %block) #5, !dbg !248
  %cmp2 = icmp eq i64 %call, 0, !dbg !250
  br i1 %cmp2, label %return, label %lor.lhs.false, !dbg !251

lor.lhs.false:                                    ; preds = %if.end
  %uncompressed_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 4, !dbg !252
  %1 = load i64, ptr %uncompressed_size, align 8, !dbg !252, !tbaa !253
  %2 = icmp sgt i64 %1, -2, !dbg !252
  br i1 %2, label %if.end8, label %return, !dbg !252

if.end8:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr %next, align 8, !dbg !256, !tbaa !258
  %cmp9 = icmp eq ptr %3, null, !dbg !259
  br i1 %cmp9, label %if.then10, label %if.end23, !dbg !260

if.then10:                                        ; preds = %if.end8
  %call11 = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %allocator) #5, !dbg !261
  store ptr %call11, ptr %next, align 8, !dbg !263, !tbaa !258
  %cmp14 = icmp eq ptr %call11, null, !dbg !264
  br i1 %cmp14, label %return, label %if.end16, !dbg !266

if.end16:                                         ; preds = %if.then10
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !267
  store ptr @block_decode, ptr %code, align 8, !dbg !268, !tbaa !269
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !270
  store ptr @block_decoder_end, ptr %end, align 8, !dbg !271, !tbaa !272
  %next18 = getelementptr inbounds %struct.lzma_coder_s, ptr %call11, i64 0, i32 1, !dbg !273
  store ptr null, ptr %next18, align 8, !dbg !274, !tbaa.struct !275
  %.compoundliteral.sroa.2.0.next18.sroa_idx = getelementptr inbounds i8, ptr %next18, i64 8, !dbg !274
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next18.sroa_idx, align 8, !dbg !274, !tbaa.struct !278
  %.compoundliteral.sroa.3.0.next18.sroa_idx = getelementptr inbounds i8, ptr %next18, i64 16, !dbg !274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next18.sroa_idx, i8 0, i64 48, i1 false), !dbg !274
  %.pre = load ptr, ptr %next, align 8, !dbg !279, !tbaa !258
  br label %if.end23, !dbg !280

if.end23:                                         ; preds = %if.end16, %if.end8
  %4 = phi ptr [ %.pre, %if.end16 ], [ %3, %if.end8 ], !dbg !279
  store i32 0, ptr %4, align 8, !dbg !281, !tbaa !282
  %block26 = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 2, !dbg !285
  store ptr %block, ptr %block26, align 8, !dbg !286, !tbaa !287
  %compressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 3, !dbg !288
  %compressed_size30 = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 3, !dbg !289
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %compressed_size, i8 0, i64 16, i1 false), !dbg !290
  %5 = load i64, ptr %compressed_size30, align 8, !dbg !289, !tbaa !291
  %cmp31 = icmp eq i64 %5, -1, !dbg !292
  br i1 %cmp31, label %cond.true, label %cond.end, !dbg !293

cond.true:                                        ; preds = %if.end23
  %header_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 1, !dbg !294
  %6 = load i32, ptr %header_size, align 4, !dbg !294, !tbaa !295
  %conv = zext i32 %6 to i64, !dbg !296
  %check = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 2, !dbg !297
  %7 = load i32, ptr %check, align 8, !dbg !297, !tbaa !298
  %call32 = tail call i32 @lzma_check_size(i32 noundef %7) #5, !dbg !299
  %conv33 = zext i32 %call32 to i64, !dbg !299
  %8 = add nuw nsw i64 %conv, %conv33, !dbg !300
  %sub34 = sub nuw nsw i64 9223372036854775804, %8, !dbg !300
  %.pre72 = load ptr, ptr %next, align 8, !dbg !301, !tbaa !258
  br label %cond.end, !dbg !293

cond.end:                                         ; preds = %if.end23, %cond.true
  %9 = phi ptr [ %.pre72, %cond.true ], [ %4, %if.end23 ], !dbg !301
  %cond = phi i64 [ %sub34, %cond.true ], [ %5, %if.end23 ], !dbg !293
  %compressed_limit = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 5, !dbg !302
  store i64 %cond, ptr %compressed_limit, align 8, !dbg !303, !tbaa !304
  %check_pos = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 6, !dbg !305
  store i64 0, ptr %check_pos, align 8, !dbg !306, !tbaa !307
  %check39 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 7, !dbg !308
  %check40 = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 2, !dbg !309
  %10 = load i32, ptr %check40, align 8, !dbg !309, !tbaa !298
  tail call void @lzma_check_init(ptr noundef nonnull %check39, i32 noundef %10) #5, !dbg !310
  %11 = load ptr, ptr %next, align 8, !dbg !311, !tbaa !258
  %next42 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 1, !dbg !312
  %filters = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 5, !dbg !313
  %12 = load ptr, ptr %filters, align 8, !dbg !313, !tbaa !314
  %call43 = tail call i32 @lzma_raw_decoder_init(ptr noundef nonnull %next42, ptr noundef %allocator, ptr noundef %12) #5, !dbg !315
  br label %return, !dbg !316

return:                                           ; preds = %if.then10, %if.end, %lor.lhs.false, %cond.end
  %retval.0 = phi i32 [ %call43, %cond.end ], [ 11, %lor.lhs.false ], [ 11, %if.end ], [ 5, %if.then10 ], !dbg !237
  ret i32 %retval.0, !dbg !317
}

declare !dbg !318 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !322 i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

declare !dbg !327 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @block_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !330 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !332, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !333, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata ptr %in, metadata !334, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !335, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !336, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata ptr %out, metadata !337, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !338, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !339, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i32 %action, metadata !340, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !341, metadata !DIExpression()), !dbg !353
  %0 = load i32, ptr %pcoder, align 8, !dbg !354, !tbaa !282
  switch i32 %0, label %cleanup82 [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb33_crit_edge
    i32 2, label %sw.bb54
  ], !dbg !355

entry.sw.bb33_crit_edge:                          ; preds = %entry
  %compressed_size34.phi.trans.insert = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3
  %compressed_size34.promoted.pre = load i64, ptr %compressed_size34.phi.trans.insert, align 8, !tbaa !356
  br label %sw.bb33, !dbg !355

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %in_pos, align 8, !dbg !357, !tbaa !277
  call void @llvm.dbg.value(metadata i64 %1, metadata !342, metadata !DIExpression()), !dbg !358
  %2 = load i64, ptr %out_pos, align 8, !dbg !359, !tbaa !277
  call void @llvm.dbg.value(metadata i64 %2, metadata !346, metadata !DIExpression()), !dbg !358
  %next = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !360
  %code = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 3, !dbg !361
  %3 = load ptr, ptr %code, align 8, !dbg !361, !tbaa !362
  %4 = load ptr, ptr %next, align 8, !dbg !363, !tbaa !364
  %call = tail call i32 %3(ptr noundef %4, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #5, !dbg !365
  call void @llvm.dbg.value(metadata i32 %call, metadata !347, metadata !DIExpression()), !dbg !358
  %5 = load i64, ptr %in_pos, align 8, !dbg !366, !tbaa !277
  %sub = sub i64 %5, %1, !dbg !367
  call void @llvm.dbg.value(metadata i64 %sub, metadata !349, metadata !DIExpression()), !dbg !358
  %6 = load i64, ptr %out_pos, align 8, !dbg !368, !tbaa !277
  %sub3 = sub i64 %6, %2, !dbg !369
  call void @llvm.dbg.value(metadata i64 %sub3, metadata !350, metadata !DIExpression()), !dbg !358
  %compressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !370
  %compressed_limit = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, !dbg !372
  %7 = load i64, ptr %compressed_limit, align 8, !dbg !372, !tbaa !304
  call void @llvm.dbg.value(metadata ptr %compressed_size, metadata !373, metadata !DIExpression()) #5, !dbg !381
  call void @llvm.dbg.value(metadata i64 %sub, metadata !379, metadata !DIExpression()) #5, !dbg !381
  call void @llvm.dbg.value(metadata i64 %7, metadata !380, metadata !DIExpression()) #5, !dbg !381
  %8 = tail call i64 @llvm.umin.i64(i64 %7, i64 9223372036854775807) #5, !dbg !383
  call void @llvm.dbg.value(metadata i64 %8, metadata !380, metadata !DIExpression()) #5, !dbg !381
  %9 = load i64, ptr %compressed_size, align 8, !dbg !384, !tbaa !277
  %cmp1.i = icmp ult i64 %8, %9, !dbg !386
  %sub.i = sub i64 %8, %9
  %cmp2.i = icmp ult i64 %sub.i, %sub
  %or.cond.i = or i1 %cmp1.i, %cmp2.i, !dbg !387
  br i1 %or.cond.i, label %cleanup82, label %lor.lhs.false, !dbg !387

lor.lhs.false:                                    ; preds = %sw.bb
  %add5.i = add i64 %9, %sub, !dbg !388
  store i64 %add5.i, ptr %compressed_size, align 8, !dbg !388, !tbaa !277
  %uncompressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !389
  %block = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !390
  %10 = load ptr, ptr %block, align 8, !dbg !390, !tbaa !287
  %uncompressed_size5 = getelementptr inbounds %struct.lzma_block, ptr %10, i64 0, i32 4, !dbg !391
  %11 = load i64, ptr %uncompressed_size5, align 8, !dbg !391, !tbaa !253
  call void @llvm.dbg.value(metadata ptr %uncompressed_size, metadata !373, metadata !DIExpression()) #5, !dbg !392
  call void @llvm.dbg.value(metadata i64 %sub3, metadata !379, metadata !DIExpression()) #5, !dbg !392
  call void @llvm.dbg.value(metadata i64 %11, metadata !380, metadata !DIExpression()) #5, !dbg !392
  %12 = tail call i64 @llvm.umin.i64(i64 %11, i64 9223372036854775807) #5, !dbg !394
  call void @llvm.dbg.value(metadata i64 %12, metadata !380, metadata !DIExpression()) #5, !dbg !392
  %13 = load i64, ptr %uncompressed_size, align 8, !dbg !395, !tbaa !277
  %cmp1.i130 = icmp ult i64 %12, %13, !dbg !396
  %sub.i131 = sub i64 %12, %13
  %cmp2.i132 = icmp ult i64 %sub.i131, %sub3
  %or.cond.i133 = or i1 %cmp1.i130, %cmp2.i132, !dbg !397
  br i1 %or.cond.i133, label %cleanup82, label %if.end, !dbg !397

if.end:                                           ; preds = %lor.lhs.false
  %add5.i134 = add i64 %13, %sub3, !dbg !398
  store i64 %add5.i134, ptr %uncompressed_size, align 8, !dbg !398, !tbaa !277
  %check = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7, !dbg !399
  %check8 = getelementptr inbounds %struct.lzma_block, ptr %10, i64 0, i32 2, !dbg !400
  %14 = load i32, ptr %check8, align 8, !dbg !400, !tbaa !298
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %2, !dbg !401
  tail call void @lzma_check_update(ptr noundef nonnull %check, i32 noundef %14, ptr noundef %add.ptr, i64 noundef %sub3) #5, !dbg !402
  %cmp.not = icmp eq i32 %call, 1, !dbg !403
  br i1 %cmp.not, label %if.end10, label %cleanup82, !dbg !405

if.end10:                                         ; preds = %if.end
  %15 = load i64, ptr %compressed_size, align 8, !dbg !406, !tbaa !356
  %16 = load ptr, ptr %block, align 8, !dbg !408, !tbaa !287
  %compressed_size13 = getelementptr inbounds %struct.lzma_block, ptr %16, i64 0, i32 3, !dbg !409
  %17 = load i64, ptr %compressed_size13, align 8, !dbg !409, !tbaa !291
  call void @llvm.dbg.value(metadata i64 %15, metadata !410, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 %17, metadata !415, metadata !DIExpression()), !dbg !416
  %cmp.i = icmp eq i64 %17, -1, !dbg !418
  %cmp1.i137 = icmp eq i64 %17, %15
  %spec.select.i = or i1 %cmp.i, %cmp1.i137, !dbg !419
  br i1 %spec.select.i, label %lor.lhs.false15, label %cleanup82, !dbg !420

lor.lhs.false15:                                  ; preds = %if.end10
  %18 = load i64, ptr %uncompressed_size, align 8, !dbg !421, !tbaa !422
  %uncompressed_size18 = getelementptr inbounds %struct.lzma_block, ptr %16, i64 0, i32 4, !dbg !423
  %19 = load i64, ptr %uncompressed_size18, align 8, !dbg !423, !tbaa !253
  call void @llvm.dbg.value(metadata i64 %18, metadata !410, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i64 %19, metadata !415, metadata !DIExpression()), !dbg !424
  %cmp.i138 = icmp eq i64 %19, -1, !dbg !426
  %cmp1.i139 = icmp eq i64 %19, %18
  %spec.select.i140 = or i1 %cmp.i138, %cmp1.i139, !dbg !427
  br i1 %spec.select.i140, label %cleanup, label %cleanup82, !dbg !428

cleanup:                                          ; preds = %lor.lhs.false15
  store i64 %15, ptr %compressed_size13, align 8, !dbg !429, !tbaa !291
  store i64 %18, ptr %uncompressed_size18, align 8, !dbg !430, !tbaa !253
  store i32 1, ptr %pcoder, align 8, !dbg !431, !tbaa !282
  br label %sw.bb33

sw.bb33:                                          ; preds = %entry.sw.bb33_crit_edge, %cleanup
  %compressed_size34.promoted = phi i64 [ %compressed_size34.promoted.pre, %entry.sw.bb33_crit_edge ], [ %15, %cleanup ]
  %compressed_size34 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3
  br label %while.cond, !dbg !432

while.cond:                                       ; preds = %if.end37, %sw.bb33
  %inc143 = phi i64 [ %inc, %if.end37 ], [ %compressed_size34.promoted, %sw.bb33 ]
  %and = and i64 %inc143, 3, !dbg !433
  %tobool.not = icmp eq i64 %and, 0, !dbg !432
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !432

while.body:                                       ; preds = %while.cond
  %20 = load i64, ptr %in_pos, align 8, !dbg !434, !tbaa !277
  %cmp35.not = icmp ult i64 %20, %in_size, !dbg !437
  br i1 %cmp35.not, label %if.end37, label %cleanup82, !dbg !438

if.end37:                                         ; preds = %while.body
  %inc = add i64 %inc143, 1, !dbg !439
  store i64 %inc, ptr %compressed_size34, align 8, !dbg !439, !tbaa !356
  %inc39 = add nuw i64 %20, 1, !dbg !440
  store i64 %inc39, ptr %in_pos, align 8, !dbg !440, !tbaa !277
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %20, !dbg !442
  %21 = load i8, ptr %arrayidx, align 1, !dbg !442, !tbaa !443
  %cmp40.not = icmp eq i8 %21, 0, !dbg !444
  br i1 %cmp40.not, label %while.cond, label %cleanup82, !dbg !445, !llvm.loop !446

while.end:                                        ; preds = %while.cond
  %block44 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !450
  %22 = load ptr, ptr %block44, align 8, !dbg !450, !tbaa !287
  %check45 = getelementptr inbounds %struct.lzma_block, ptr %22, i64 0, i32 2, !dbg !452
  %23 = load i32, ptr %check45, align 8, !dbg !452, !tbaa !298
  %cmp46 = icmp eq i32 %23, 0, !dbg !453
  br i1 %cmp46, label %cleanup82, label %if.end49, !dbg !454

if.end49:                                         ; preds = %while.end
  %check50 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7, !dbg !455
  tail call void @lzma_check_finish(ptr noundef nonnull %check50, i32 noundef %23) #5, !dbg !456
  store i32 2, ptr %pcoder, align 8, !dbg !457, !tbaa !282
  br label %sw.bb54, !dbg !458

sw.bb54:                                          ; preds = %entry, %if.end49
  %block55 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !459
  %24 = load ptr, ptr %block55, align 8, !dbg !459, !tbaa !287
  %check56 = getelementptr inbounds %struct.lzma_block, ptr %24, i64 0, i32 2, !dbg !460
  %25 = load i32, ptr %check56, align 8, !dbg !460, !tbaa !298
  %call57 = tail call i32 @lzma_check_size(i32 noundef %25) #5, !dbg !461
  %conv58 = zext i32 %call57 to i64, !dbg !461
  call void @llvm.dbg.value(metadata i64 %conv58, metadata !351, metadata !DIExpression()), !dbg !462
  %26 = load ptr, ptr %block55, align 8, !dbg !463, !tbaa !287
  %raw_check = getelementptr inbounds %struct.lzma_block, ptr %26, i64 0, i32 6, !dbg !464
  %check_pos = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6, !dbg !465
  %call60 = tail call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %raw_check, ptr noundef nonnull %check_pos, i64 noundef %conv58) #5, !dbg !466
  %27 = load i64, ptr %check_pos, align 8, !dbg !467, !tbaa !307
  %cmp62 = icmp ult i64 %27, %conv58, !dbg !469
  br i1 %cmp62, label %cleanup82, label %if.end65, !dbg !470

if.end65:                                         ; preds = %sw.bb54
  %28 = load ptr, ptr %block55, align 8, !dbg !471, !tbaa !287
  %check67 = getelementptr inbounds %struct.lzma_block, ptr %28, i64 0, i32 2, !dbg !473
  %29 = load i32, ptr %check67, align 8, !dbg !473, !tbaa !298
  %call68 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %29) #5, !dbg !474
  %tobool70.not = icmp eq i8 %call68, 0, !dbg !474
  br i1 %tobool70.not, label %if.end80, label %land.lhs.true, !dbg !475

land.lhs.true:                                    ; preds = %if.end65
  %30 = load ptr, ptr %block55, align 8, !dbg !476, !tbaa !287
  %raw_check72 = getelementptr inbounds %struct.lzma_block, ptr %30, i64 0, i32 6, !dbg !477
  %check74 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7, !dbg !478
  %bcmp = tail call i32 @bcmp(ptr nonnull %raw_check72, ptr nonnull %check74, i64 %conv58), !dbg !479
  %cmp77.not = icmp eq i32 %bcmp, 0, !dbg !480
  br i1 %cmp77.not, label %if.end80, label %cleanup82, !dbg !481

if.end80:                                         ; preds = %land.lhs.true, %if.end65
  br label %cleanup82, !dbg !482

cleanup82:                                        ; preds = %if.end37, %while.body, %lor.lhs.false, %sw.bb, %if.end10, %lor.lhs.false15, %if.end, %entry, %if.end80, %sw.bb54, %land.lhs.true, %while.end
  %retval.2 = phi i32 [ 1, %while.end ], [ 1, %if.end80 ], [ 0, %sw.bb54 ], [ 9, %land.lhs.true ], [ 11, %entry ], [ 9, %if.end10 ], [ 9, %lor.lhs.false15 ], [ %call, %if.end ], [ 9, %sw.bb ], [ 9, %lor.lhs.false ], [ 9, %if.end37 ], [ 0, %while.body ], !dbg !353
  ret i32 %retval.2, !dbg !483
}

; Function Attrs: nounwind uwtable
define internal void @block_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !484 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !486, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !487, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !488, metadata !DIExpression()), !dbg !489
  %next = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !490
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5, !dbg !491
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !492
  ret void, !dbg !493
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !494 i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare !dbg !497 void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !501 i32 @lzma_raw_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_decoder(ptr noundef %strm, ptr noundef %block) local_unnamed_addr #0 !dbg !505 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !533, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %block, metadata !534, metadata !DIExpression()), !dbg !539
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #5, !dbg !540
  call void @llvm.dbg.value(metadata i32 %call, metadata !535, metadata !DIExpression()), !dbg !541
  %cmp.not = icmp eq i32 %call, 0, !dbg !542
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !544
  %0 = load ptr, ptr %internal, align 8, !dbg !544, !tbaa !545
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !544
  %1 = load ptr, ptr %allocator, align 8, !dbg !544, !tbaa !547
  %call3 = tail call i32 @lzma_block_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %block), !dbg !544
  call void @llvm.dbg.value(metadata i32 %call3, metadata !538, metadata !DIExpression()), !dbg !548
  %cmp4.not = icmp eq i32 %call3, 0, !dbg !549
  br i1 %cmp4.not, label %do.end10, label %cleanup7, !dbg !544

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #5, !dbg !551
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !553, !tbaa !545
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, !dbg !554
  store i8 1, ptr %supported_actions, align 8, !dbg !555, !tbaa !556
  %arrayidx14 = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, i64 3, !dbg !558
  store i8 1, ptr %arrayidx14, align 1, !dbg !559, !tbaa !556
  br label %return, !dbg !560

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !539
  ret i32 %retval.2, !dbg !561
}

declare !dbg !562 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

declare !dbg !565 void @lzma_end(ptr noundef) local_unnamed_addr #1

declare !dbg !568 void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !571 void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !572 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !575 zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

declare !dbg !578 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !220, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "a9c2ade3280bfe5426dd8f7a5b8e1a9e")
!2 = !{!3, !19, !25, !32, !35, !201}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !33)
!33 = !{!34}
!34 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !37, file: !36, line: 19, baseType: !5, size: 32, elements: !197)
!36 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/block_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a9c2ade3280bfe5426dd8f7a5b8e1a9e")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !36, line: 18, size: 1728, elements: !38)
!38 = !{!39, !40, !121, !165, !166, !167, !168, !169}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !37, file: !36, line: 23, baseType: !35, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !37, file: !36, line: 26, baseType: !41, size: 512, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !42, line: 80, baseType: !43)
!42 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !42, line: 124, size: 512, elements: !44)
!44 = !{!45, !48, !56, !59, !92, !97, !104, !109}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !43, file: !42, line: 126, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !42, line: 78, baseType: null)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !43, file: !42, line: 130, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !50, line: 63, baseType: !51)
!50 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !52, line: 27, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !54, line: 45, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !43, file: !42, line: 136, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !58, line: 90, baseType: !55)
!58 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!59 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !43, file: !42, line: 139, baseType: !60, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !42, line: 94, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !46, !65, !81, !87, !74, !89, !87, !74, !91}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !68)
!68 = !{!69, !76, !80}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !67, file: !4, line: 376, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !73, !74, !74}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !55)
!75 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!76 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !67, file: !4, line: 390, baseType: !77, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !73, !73}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !67, file: !4, line: 401, baseType: !73, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !52, line: 24, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !54, line: 38, baseType: !86)
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !43, file: !42, line: 144, baseType: !93, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !42, line: 102, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !46, !65}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !43, file: !42, line: 148, baseType: !98, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !43, file: !42, line: 152, baseType: !105, size: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!64, !46, !108, !108, !51}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !43, file: !42, line: 157, baseType: !110, size: 64, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!64, !46, !65, !113, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !116, line: 65, baseType: !117)
!116 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 43, size: 128, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !117, file: !116, line: 54, baseType: !49, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !117, file: !116, line: 63, baseType: !73, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !37, file: !36, line: 30, baseType: !122, size: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !124, line: 245, baseType: !125)
!124 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/block.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 30, size: 1664, elements: !126)
!126 = !{!127, !130, !131, !132, !133, !134, !136, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !162, !163, !164}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !125, file: !124, line: 47, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !52, line: 26, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !54, line: 42, baseType: !5)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !125, file: !124, line: 67, baseType: !128, size: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !125, file: !124, line: 88, baseType: !101, size: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !125, file: !124, line: 143, baseType: !49, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !125, file: !124, line: 167, baseType: !49, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !125, file: !124, line: 195, baseType: !135, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !125, file: !124, line: 212, baseType: !137, size: 512, offset: 320)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 512, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !125, file: !124, line: 221, baseType: !73, size: 64, offset: 832)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !125, file: !124, line: 222, baseType: !73, size: 64, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !125, file: !124, line: 223, baseType: !73, size: 64, offset: 960)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !125, file: !124, line: 224, baseType: !128, size: 32, offset: 1024)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !125, file: !124, line: 225, baseType: !128, size: 32, offset: 1056)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !125, file: !124, line: 226, baseType: !49, size: 64, offset: 1088)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !125, file: !124, line: 227, baseType: !49, size: 64, offset: 1152)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !125, file: !124, line: 228, baseType: !49, size: 64, offset: 1216)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !125, file: !124, line: 229, baseType: !49, size: 64, offset: 1280)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !125, file: !124, line: 230, baseType: !49, size: 64, offset: 1344)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !125, file: !124, line: 231, baseType: !49, size: 64, offset: 1408)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !125, file: !124, line: 232, baseType: !152, size: 32, offset: 1472)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !125, file: !124, line: 233, baseType: !152, size: 32, offset: 1504)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !125, file: !124, line: 234, baseType: !152, size: 32, offset: 1536)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !125, file: !124, line: 235, baseType: !152, size: 32, offset: 1568)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !125, file: !124, line: 236, baseType: !157, size: 8, offset: 1600)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !86)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !125, file: !124, line: 237, baseType: !157, size: 8, offset: 1608)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !125, file: !124, line: 238, baseType: !157, size: 8, offset: 1616)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !125, file: !124, line: 239, baseType: !157, size: 8, offset: 1624)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !125, file: !124, line: 240, baseType: !157, size: 8, offset: 1632)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !125, file: !124, line: 241, baseType: !157, size: 8, offset: 1640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !125, file: !124, line: 242, baseType: !157, size: 8, offset: 1648)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !125, file: !124, line: 243, baseType: !157, size: 8, offset: 1656)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !37, file: !36, line: 33, baseType: !49, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !37, file: !36, line: 36, baseType: !49, size: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_limit", scope: !37, file: !36, line: 41, baseType: !49, size: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "check_pos", scope: !37, file: !36, line: 44, baseType: !74, size: 64, offset: 832)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !37, file: !36, line: 47, baseType: !170, size: 832, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check_state", file: !171, line: 56, baseType: !172)
!171 = !DIFile(filename: "apps/557.xz_r/src/liblzma/check/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "938220df6e0ab33115ef85b0d8c70c5b")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 34, size: 832, elements: !173)
!173 = !{!174, !186}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !172, file: !171, line: 40, baseType: !175, size: 512)
!175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !171, line: 36, size: 512, elements: !176)
!176 = !{!177, !178, !182}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !175, file: !171, line: 37, baseType: !137, size: 512)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !175, file: !171, line: 38, baseType: !179, size: 512)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 512, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 16)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !175, file: !171, line: 39, baseType: !183, size: 512)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 512, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !172, file: !171, line: 54, baseType: !187, size: 320, offset: 512)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !171, line: 43, size: 320, elements: !188)
!188 = !{!189, !190, !191}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !187, file: !171, line: 44, baseType: !128, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "crc64", scope: !187, file: !171, line: 45, baseType: !51, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !187, file: !171, line: 53, baseType: !192, size: 320)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !187, file: !171, line: 47, size: 320, elements: !193)
!193 = !{!194, !196}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !192, file: !171, line: 49, baseType: !195, size: 256)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !184)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !192, file: !171, line: 52, baseType: !51, size: 64, offset: 256)
!197 = !{!198, !199, !200}
!198 = !DIEnumerator(name: "SEQ_CODE", value: 0)
!199 = !DIEnumerator(name: "SEQ_PADDING", value: 1)
!200 = !DIEnumerator(name: "SEQ_CHECK", value: 2)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !202, file: !42, line: 187, baseType: !5, size: 32, elements: !213)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !42, line: 179, size: 704, elements: !203)
!203 = !{!204, !205, !206, !207, !212}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !42, line: 181, baseType: !41, size: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !202, file: !42, line: 194, baseType: !201, size: 32, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !202, file: !42, line: 199, baseType: !74, size: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !202, file: !42, line: 202, baseType: !208, size: 32, offset: 640)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 32, elements: !210)
!209 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!210 = !{!211}
!211 = !DISubrange(count: 4)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !202, file: !42, line: 206, baseType: !209, size: 8, offset: 672)
!213 = !{!214, !215, !216, !217, !218, !219}
!214 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!215 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!216 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!217 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!218 = !DIEnumerator(name: "ISEQ_END", value: 4)
!219 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!220 = !{!57, !73, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!222 = !{i32 7, !"Dwarf Version", i32 5}
!223 = !{i32 2, !"Debug Info Version", i32 3}
!224 = !{i32 1, !"wchar_size", i32 4}
!225 = !{i32 7, !"PIC Level", i32 2}
!226 = !{i32 7, !"PIE Level", i32 2}
!227 = !{i32 7, !"uwtable", i32 2}
!228 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!229 = distinct !DISubprogram(name: "lzma_block_decoder_init", scope: !36, file: !36, line: 184, type: !230, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!230 = !DISubroutineType(types: !231)
!231 = !{!64, !232, !65, !122}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!233 = !{!234, !235, !236}
!234 = !DILocalVariable(name: "next", arg: 1, scope: !229, file: !36, line: 184, type: !232)
!235 = !DILocalVariable(name: "allocator", arg: 2, scope: !229, file: !36, line: 184, type: !65)
!236 = !DILocalVariable(name: "block", arg: 3, scope: !229, file: !36, line: 185, type: !122)
!237 = !DILocation(line: 0, scope: !229)
!238 = !DILocation(line: 187, column: 2, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !36, line: 187, column: 2)
!240 = distinct !DILexicalBlock(scope: !229, file: !36, line: 187, column: 2)
!241 = !{!242, !246, i64 16}
!242 = !{!"lzma_next_coder_s", !243, i64 0, !246, i64 8, !246, i64 16, !243, i64 24, !243, i64 32, !243, i64 40, !243, i64 48, !243, i64 56}
!243 = !{!"any pointer", !244, i64 0}
!244 = !{!"omnipotent char", !245, i64 0}
!245 = !{!"Simple C/C++ TBAA"}
!246 = !{!"long", !244, i64 0}
!247 = !DILocation(line: 187, column: 2, scope: !240)
!248 = !DILocation(line: 192, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !229, file: !36, line: 192, column: 6)
!250 = !DILocation(line: 192, column: 38, scope: !249)
!251 = !DILocation(line: 193, column: 4, scope: !249)
!252 = !DILocation(line: 193, column: 8, scope: !249)
!253 = !{!254, !246, i64 24}
!254 = !{!"", !255, i64 0, !255, i64 4, !244, i64 8, !246, i64 16, !246, i64 24, !243, i64 32, !244, i64 40, !243, i64 104, !243, i64 112, !243, i64 120, !255, i64 128, !255, i64 132, !246, i64 136, !246, i64 144, !246, i64 152, !246, i64 160, !246, i64 168, !246, i64 176, !244, i64 184, !244, i64 188, !244, i64 192, !244, i64 196, !244, i64 200, !244, i64 201, !244, i64 202, !244, i64 203, !244, i64 204, !244, i64 205, !244, i64 206, !244, i64 207}
!255 = !{!"int", !244, i64 0}
!256 = !DILocation(line: 197, column: 12, scope: !257)
!257 = distinct !DILexicalBlock(scope: !229, file: !36, line: 197, column: 6)
!258 = !{!242, !243, i64 0}
!259 = !DILocation(line: 197, column: 18, scope: !257)
!260 = !DILocation(line: 197, column: 6, scope: !229)
!261 = !DILocation(line: 198, column: 17, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !36, line: 197, column: 27)
!263 = !DILocation(line: 198, column: 15, scope: !262)
!264 = !DILocation(line: 199, column: 19, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !36, line: 199, column: 7)
!266 = !DILocation(line: 199, column: 7, scope: !262)
!267 = !DILocation(line: 202, column: 9, scope: !262)
!268 = !DILocation(line: 202, column: 14, scope: !262)
!269 = !{!242, !243, i64 24}
!270 = !DILocation(line: 203, column: 9, scope: !262)
!271 = !DILocation(line: 203, column: 13, scope: !262)
!272 = !{!242, !243, i64 32}
!273 = !DILocation(line: 204, column: 40, scope: !262)
!274 = !DILocation(line: 204, column: 47, scope: !262)
!275 = !{i64 0, i64 8, !276, i64 8, i64 8, !277, i64 16, i64 8, !277, i64 24, i64 8, !276, i64 32, i64 8, !276, i64 40, i64 8, !276, i64 48, i64 8, !276, i64 56, i64 8, !276}
!276 = !{!243, !243, i64 0}
!277 = !{!246, !246, i64 0}
!278 = !{i64 0, i64 8, !277, i64 8, i64 8, !277, i64 16, i64 8, !276, i64 24, i64 8, !276, i64 32, i64 8, !276, i64 40, i64 8, !276, i64 48, i64 8, !276}
!279 = !DILocation(line: 208, column: 31, scope: !229)
!280 = !DILocation(line: 205, column: 2, scope: !262)
!281 = !DILocation(line: 208, column: 48, scope: !229)
!282 = !{!283, !244, i64 0}
!283 = !{!"lzma_coder_s", !244, i64 0, !242, i64 8, !243, i64 72, !246, i64 80, !246, i64 88, !246, i64 96, !246, i64 104, !284, i64 112}
!284 = !{!"", !244, i64 0, !244, i64 64}
!285 = !DILocation(line: 209, column: 39, scope: !229)
!286 = !DILocation(line: 209, column: 45, scope: !229)
!287 = !{!283, !243, i64 72}
!288 = !DILocation(line: 210, column: 39, scope: !229)
!289 = !DILocation(line: 217, column: 13, scope: !229)
!290 = !DILocation(line: 211, column: 57, scope: !229)
!291 = !{!254, !246, i64 16}
!292 = !DILocation(line: 217, column: 29, scope: !229)
!293 = !DILocation(line: 217, column: 6, scope: !229)
!294 = !DILocation(line: 219, column: 15, scope: !229)
!295 = !{!254, !255, i64 4}
!296 = !DILocation(line: 219, column: 8, scope: !229)
!297 = !DILocation(line: 220, column: 31, scope: !229)
!298 = !{!254, !244, i64 8}
!299 = !DILocation(line: 220, column: 8, scope: !229)
!300 = !DILocation(line: 220, column: 6, scope: !229)
!301 = !DILocation(line: 216, column: 31, scope: !229)
!302 = !DILocation(line: 216, column: 39, scope: !229)
!303 = !DILocation(line: 217, column: 4, scope: !229)
!304 = !{!283, !246, i64 96}
!305 = !DILocation(line: 226, column: 39, scope: !229)
!306 = !DILocation(line: 226, column: 49, scope: !229)
!307 = !{!283, !246, i64 104}
!308 = !DILocation(line: 227, column: 56, scope: !229)
!309 = !DILocation(line: 227, column: 70, scope: !229)
!310 = !DILocation(line: 227, column: 2, scope: !229)
!311 = !DILocation(line: 230, column: 61, scope: !229)
!312 = !DILocation(line: 230, column: 69, scope: !229)
!313 = !DILocation(line: 231, column: 11, scope: !229)
!314 = !{!254, !243, i64 32}
!315 = !DILocation(line: 230, column: 9, scope: !229)
!316 = !DILocation(line: 230, column: 2, scope: !229)
!317 = !DILocation(line: 232, column: 1, scope: !229)
!318 = !DISubprogram(name: "lzma_next_end", scope: !42, file: !42, line: 237, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !232, !65}
!321 = !{}
!322 = !DISubprogram(name: "lzma_block_unpadded_size", scope: !124, file: !124, line: 391, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!323 = !DISubroutineType(types: !324)
!324 = !{!49, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!327 = !DISubprogram(name: "lzma_alloc", scope: !42, file: !42, line: 211, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!328 = !DISubroutineType(types: !329)
!329 = !{!73, !74, !65}
!330 = distinct !DISubprogram(name: "block_decode", scope: !36, file: !36, line: 74, type: !62, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !346, !347, !349, !350, !351}
!332 = !DILocalVariable(name: "pcoder", arg: 1, scope: !330, file: !36, line: 74, type: !46)
!333 = !DILocalVariable(name: "allocator", arg: 2, scope: !330, file: !36, line: 74, type: !65)
!334 = !DILocalVariable(name: "in", arg: 3, scope: !330, file: !36, line: 75, type: !81)
!335 = !DILocalVariable(name: "in_pos", arg: 4, scope: !330, file: !36, line: 75, type: !87)
!336 = !DILocalVariable(name: "in_size", arg: 5, scope: !330, file: !36, line: 76, type: !74)
!337 = !DILocalVariable(name: "out", arg: 6, scope: !330, file: !36, line: 76, type: !89)
!338 = !DILocalVariable(name: "out_pos", arg: 7, scope: !330, file: !36, line: 77, type: !87)
!339 = !DILocalVariable(name: "out_size", arg: 8, scope: !330, file: !36, line: 77, type: !74)
!340 = !DILocalVariable(name: "action", arg: 9, scope: !330, file: !36, line: 77, type: !91)
!341 = !DILocalVariable(name: "coder", scope: !330, file: !36, line: 79, type: !221)
!342 = !DILocalVariable(name: "in_start", scope: !343, file: !36, line: 82, type: !345)
!343 = distinct !DILexicalBlock(scope: !344, file: !36, line: 81, column: 17)
!344 = distinct !DILexicalBlock(scope: !330, file: !36, line: 80, column: 27)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!346 = !DILocalVariable(name: "out_start", scope: !343, file: !36, line: 83, type: !345)
!347 = !DILocalVariable(name: "ret", scope: !343, file: !36, line: 85, type: !348)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!349 = !DILocalVariable(name: "in_used", scope: !343, file: !36, line: 89, type: !345)
!350 = !DILocalVariable(name: "out_used", scope: !343, file: !36, line: 90, type: !345)
!351 = !DILocalVariable(name: "check_size", scope: !352, file: !36, line: 150, type: !345)
!352 = distinct !DILexicalBlock(scope: !344, file: !36, line: 149, column: 18)
!353 = !DILocation(line: 0, scope: !330)
!354 = !DILocation(line: 80, column: 17, scope: !330)
!355 = !DILocation(line: 80, column: 2, scope: !330)
!356 = !{!283, !246, i64 80}
!357 = !DILocation(line: 82, column: 27, scope: !343)
!358 = !DILocation(line: 0, scope: !343)
!359 = !DILocation(line: 83, column: 28, scope: !343)
!360 = !DILocation(line: 85, column: 31, scope: !343)
!361 = !DILocation(line: 85, column: 36, scope: !343)
!362 = !{!283, !243, i64 32}
!363 = !DILocation(line: 85, column: 53, scope: !343)
!364 = !{!283, !243, i64 8}
!365 = !DILocation(line: 85, column: 24, scope: !343)
!366 = !DILocation(line: 89, column: 26, scope: !343)
!367 = !DILocation(line: 89, column: 34, scope: !343)
!368 = !DILocation(line: 90, column: 27, scope: !343)
!369 = !DILocation(line: 90, column: 36, scope: !343)
!370 = !DILocation(line: 94, column: 27, scope: !371)
!371 = distinct !DILexicalBlock(scope: !343, file: !36, line: 94, column: 7)
!372 = !DILocation(line: 95, column: 13, scope: !371)
!373 = !DILocalVariable(name: "size", arg: 1, scope: !374, file: !36, line: 52, type: !377)
!374 = distinct !DISubprogram(name: "update_size", scope: !36, file: !36, line: 52, type: !375, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !378)
!375 = !DISubroutineType(types: !376)
!376 = !{!209, !377, !49, !49}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!378 = !{!373, !379, !380}
!379 = !DILocalVariable(name: "add", arg: 2, scope: !374, file: !36, line: 52, type: !49)
!380 = !DILocalVariable(name: "limit", arg: 3, scope: !374, file: !36, line: 52, type: !49)
!381 = !DILocation(line: 0, scope: !374, inlinedAt: !382)
!382 = distinct !DILocation(line: 94, column: 7, scope: !371)
!383 = !DILocation(line: 54, column: 6, scope: !374, inlinedAt: !382)
!384 = !DILocation(line: 57, column: 14, scope: !385, inlinedAt: !382)
!385 = distinct !DILexicalBlock(scope: !374, file: !36, line: 57, column: 6)
!386 = !DILocation(line: 57, column: 12, scope: !385, inlinedAt: !382)
!387 = !DILocation(line: 57, column: 20, scope: !385, inlinedAt: !382)
!388 = !DILocation(line: 60, column: 8, scope: !374, inlinedAt: !382)
!389 = !DILocation(line: 96, column: 28, scope: !371)
!390 = !DILocation(line: 98, column: 13, scope: !371)
!391 = !DILocation(line: 98, column: 20, scope: !371)
!392 = !DILocation(line: 0, scope: !374, inlinedAt: !393)
!393 = distinct !DILocation(line: 96, column: 8, scope: !371)
!394 = !DILocation(line: 54, column: 6, scope: !374, inlinedAt: !393)
!395 = !DILocation(line: 57, column: 14, scope: !385, inlinedAt: !393)
!396 = !DILocation(line: 57, column: 12, scope: !385, inlinedAt: !393)
!397 = !DILocation(line: 57, column: 20, scope: !385, inlinedAt: !393)
!398 = !DILocation(line: 60, column: 8, scope: !374, inlinedAt: !393)
!399 = !DILocation(line: 101, column: 29, scope: !343)
!400 = !DILocation(line: 101, column: 50, scope: !343)
!401 = !DILocation(line: 102, column: 9, scope: !343)
!402 = !DILocation(line: 101, column: 3, scope: !343)
!403 = !DILocation(line: 104, column: 11, scope: !404)
!404 = distinct !DILexicalBlock(scope: !343, file: !36, line: 104, column: 7)
!405 = !DILocation(line: 104, column: 7, scope: !343)
!406 = !DILocation(line: 109, column: 29, scope: !407)
!407 = distinct !DILexicalBlock(scope: !343, file: !36, line: 109, column: 7)
!408 = !DILocation(line: 110, column: 13, scope: !407)
!409 = !DILocation(line: 110, column: 20, scope: !407)
!410 = !DILocalVariable(name: "size", arg: 1, scope: !411, file: !36, line: 67, type: !49)
!411 = distinct !DISubprogram(name: "is_size_valid", scope: !36, file: !36, line: 67, type: !412, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!209, !49, !49}
!414 = !{!410, !415}
!415 = !DILocalVariable(name: "reference", arg: 2, scope: !411, file: !36, line: 67, type: !49)
!416 = !DILocation(line: 0, scope: !411, inlinedAt: !417)
!417 = distinct !DILocation(line: 109, column: 8, scope: !407)
!418 = !DILocation(line: 69, column: 19, scope: !411, inlinedAt: !417)
!419 = !DILocation(line: 69, column: 39, scope: !411, inlinedAt: !417)
!420 = !DILocation(line: 111, column: 5, scope: !407)
!421 = !DILocation(line: 111, column: 30, scope: !407)
!422 = !{!283, !246, i64 88}
!423 = !DILocation(line: 112, column: 20, scope: !407)
!424 = !DILocation(line: 0, scope: !411, inlinedAt: !425)
!425 = distinct !DILocation(line: 111, column: 9, scope: !407)
!426 = !DILocation(line: 69, column: 19, scope: !411, inlinedAt: !425)
!427 = !DILocation(line: 69, column: 39, scope: !411, inlinedAt: !425)
!428 = !DILocation(line: 109, column: 7, scope: !343)
!429 = !DILocation(line: 117, column: 33, scope: !343)
!430 = !DILocation(line: 118, column: 35, scope: !343)
!431 = !DILocation(line: 120, column: 19, scope: !343)
!432 = !DILocation(line: 127, column: 3, scope: !344)
!433 = !DILocation(line: 127, column: 33, scope: !344)
!434 = !DILocation(line: 128, column: 8, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !36, line: 128, column: 8)
!436 = distinct !DILexicalBlock(scope: !344, file: !36, line: 127, column: 38)
!437 = !DILocation(line: 128, column: 16, scope: !435)
!438 = !DILocation(line: 128, column: 8, scope: !436)
!439 = !DILocation(line: 135, column: 4, scope: !436)
!440 = !DILocation(line: 137, column: 20, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !36, line: 137, column: 8)
!442 = !DILocation(line: 137, column: 8, scope: !441)
!443 = !{!244, !244, i64 0}
!444 = !DILocation(line: 137, column: 24, scope: !441)
!445 = !DILocation(line: 137, column: 8, scope: !436)
!446 = distinct !{!446, !432, !447, !448, !449}
!447 = !DILocation(line: 139, column: 3, scope: !344)
!448 = !{!"llvm.loop.mustprogress"}
!449 = !{!"llvm.loop.unroll.disable"}
!450 = !DILocation(line: 141, column: 14, scope: !451)
!451 = distinct !DILexicalBlock(scope: !344, file: !36, line: 141, column: 7)
!452 = !DILocation(line: 141, column: 21, scope: !451)
!453 = !DILocation(line: 141, column: 27, scope: !451)
!454 = !DILocation(line: 141, column: 7, scope: !344)
!455 = !DILocation(line: 144, column: 29, scope: !344)
!456 = !DILocation(line: 144, column: 3, scope: !344)
!457 = !DILocation(line: 145, column: 19, scope: !344)
!458 = !DILocation(line: 145, column: 3, scope: !344)
!459 = !DILocation(line: 150, column: 52, scope: !352)
!460 = !DILocation(line: 150, column: 59, scope: !352)
!461 = !DILocation(line: 150, column: 29, scope: !352)
!462 = !DILocation(line: 0, scope: !352)
!463 = !DILocation(line: 151, column: 43, scope: !352)
!464 = !DILocation(line: 151, column: 50, scope: !352)
!465 = !DILocation(line: 152, column: 13, scope: !352)
!466 = !DILocation(line: 151, column: 3, scope: !352)
!467 = !DILocation(line: 153, column: 14, scope: !468)
!468 = distinct !DILexicalBlock(scope: !352, file: !36, line: 153, column: 7)
!469 = !DILocation(line: 153, column: 24, scope: !468)
!470 = !DILocation(line: 153, column: 7, scope: !352)
!471 = !DILocation(line: 159, column: 38, scope: !472)
!472 = distinct !DILexicalBlock(scope: !352, file: !36, line: 159, column: 7)
!473 = !DILocation(line: 159, column: 45, scope: !472)
!474 = !DILocation(line: 159, column: 7, scope: !472)
!475 = !DILocation(line: 160, column: 5, scope: !472)
!476 = !DILocation(line: 160, column: 22, scope: !472)
!477 = !DILocation(line: 160, column: 29, scope: !472)
!478 = !DILocation(line: 161, column: 13, scope: !472)
!479 = !DILocation(line: 160, column: 8, scope: !472)
!480 = !DILocation(line: 162, column: 18, scope: !472)
!481 = !DILocation(line: 159, column: 7, scope: !352)
!482 = !DILocation(line: 165, column: 3, scope: !352)
!483 = !DILocation(line: 170, column: 1, scope: !330)
!484 = distinct !DISubprogram(name: "block_decoder_end", scope: !36, file: !36, line: 174, type: !95, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !485)
!485 = !{!486, !487, !488}
!486 = !DILocalVariable(name: "pcoder", arg: 1, scope: !484, file: !36, line: 174, type: !46)
!487 = !DILocalVariable(name: "allocator", arg: 2, scope: !484, file: !36, line: 174, type: !65)
!488 = !DILocalVariable(name: "coder", scope: !484, file: !36, line: 176, type: !221)
!489 = !DILocation(line: 0, scope: !484)
!490 = !DILocation(line: 177, column: 24, scope: !484)
!491 = !DILocation(line: 177, column: 2, scope: !484)
!492 = !DILocation(line: 178, column: 2, scope: !484)
!493 = !DILocation(line: 180, column: 1, scope: !484)
!494 = !DISubprogram(name: "lzma_check_size", scope: !26, file: !26, line: 95, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!495 = !DISubroutineType(types: !496)
!496 = !{!128, !101}
!497 = !DISubprogram(name: "lzma_check_init", scope: !171, file: !171, line: 75, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !500, !101}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!501 = !DISubprogram(name: "lzma_raw_decoder_init", scope: !502, file: !502, line: 19, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!502 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "eb6564ac887b86e116dfd99078c48b83")
!503 = !DISubroutineType(types: !504)
!504 = !{!64, !232, !65, !113}
!505 = distinct !DISubprogram(name: "lzma_block_decoder", scope: !36, file: !36, line: 236, type: !506, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !532)
!506 = !DISubroutineType(types: !507)
!507 = !{!64, !508, !122}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !510, file: !4, line: 454, baseType: !82, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !510, file: !4, line: 455, baseType: !74, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !510, file: !4, line: 456, baseType: !51, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !510, file: !4, line: 458, baseType: !90, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !510, file: !4, line: 459, baseType: !74, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !510, file: !4, line: 460, baseType: !51, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !510, file: !4, line: 468, baseType: !65, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !510, file: !4, line: 471, baseType: !520, size: 64, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !202)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !510, file: !4, line: 479, baseType: !73, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !510, file: !4, line: 480, baseType: !73, size: 64, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !510, file: !4, line: 481, baseType: !73, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !510, file: !4, line: 482, baseType: !73, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !510, file: !4, line: 483, baseType: !51, size: 64, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !510, file: !4, line: 484, baseType: !51, size: 64, offset: 832)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !510, file: !4, line: 485, baseType: !74, size: 64, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !510, file: !4, line: 486, baseType: !74, size: 64, offset: 960)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !510, file: !4, line: 487, baseType: !152, size: 32, offset: 1024)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !510, file: !4, line: 488, baseType: !152, size: 32, offset: 1056)
!532 = !{!533, !534, !535, !538}
!533 = !DILocalVariable(name: "strm", arg: 1, scope: !505, file: !36, line: 236, type: !508)
!534 = !DILocalVariable(name: "block", arg: 2, scope: !505, file: !36, line: 236, type: !122)
!535 = !DILocalVariable(name: "ret_", scope: !536, file: !36, line: 238, type: !348)
!536 = distinct !DILexicalBlock(scope: !537, file: !36, line: 238, column: 2)
!537 = distinct !DILexicalBlock(scope: !505, file: !36, line: 238, column: 2)
!538 = !DILocalVariable(name: "ret_", scope: !537, file: !36, line: 238, type: !348)
!539 = !DILocation(line: 0, scope: !505)
!540 = !DILocation(line: 238, column: 2, scope: !536)
!541 = !DILocation(line: 0, scope: !536)
!542 = !DILocation(line: 238, column: 2, scope: !543)
!543 = distinct !DILexicalBlock(scope: !536, file: !36, line: 238, column: 2)
!544 = !DILocation(line: 238, column: 2, scope: !537)
!545 = !{!546, !243, i64 56}
!546 = !{!"", !243, i64 0, !246, i64 8, !246, i64 16, !243, i64 24, !246, i64 32, !246, i64 40, !243, i64 48, !243, i64 56, !243, i64 64, !243, i64 72, !243, i64 80, !243, i64 88, !246, i64 96, !246, i64 104, !246, i64 112, !246, i64 120, !244, i64 128, !244, i64 132}
!547 = !{!546, !243, i64 48}
!548 = !DILocation(line: 0, scope: !537)
!549 = !DILocation(line: 238, column: 2, scope: !550)
!550 = distinct !DILexicalBlock(scope: !537, file: !36, line: 238, column: 2)
!551 = !DILocation(line: 238, column: 2, scope: !552)
!552 = distinct !DILexicalBlock(scope: !550, file: !36, line: 238, column: 2)
!553 = !DILocation(line: 240, column: 8, scope: !505)
!554 = !DILocation(line: 240, column: 18, scope: !505)
!555 = !DILocation(line: 240, column: 46, scope: !505)
!556 = !{!557, !557, i64 0}
!557 = !{!"_Bool", !244, i64 0}
!558 = !DILocation(line: 241, column: 2, scope: !505)
!559 = !DILocation(line: 241, column: 49, scope: !505)
!560 = !DILocation(line: 243, column: 2, scope: !505)
!561 = !DILocation(line: 244, column: 1, scope: !505)
!562 = !DISubprogram(name: "lzma_strm_init", scope: !42, file: !42, line: 220, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!563 = !DISubroutineType(types: !564)
!564 = !{!64, !508}
!565 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !508}
!568 = !DISubprogram(name: "lzma_check_update", scope: !171, file: !171, line: 78, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !500, !101, !82, !74}
!571 = !DISubprogram(name: "lzma_check_finish", scope: !171, file: !171, line: 82, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!572 = !DISubprogram(name: "lzma_bufcpy", scope: !42, file: !42, line: 242, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!573 = !DISubroutineType(types: !574)
!574 = !{!74, !81, !87, !74, !89, !87, !74}
!575 = !DISubprogram(name: "lzma_check_is_supported", scope: !26, file: !26, line: 81, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!576 = !DISubroutineType(types: !577)
!577 = !{!157, !101}
!578 = !DISubprogram(name: "lzma_free", scope: !42, file: !42, line: 215, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !321)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !73, !65}
