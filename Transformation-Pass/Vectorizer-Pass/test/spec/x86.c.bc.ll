; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/simple/x86.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/simple/x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i8, i8, ptr, ptr, i32, i64, i64, i64, i64, [0 x i8] }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_simple_s = type { i32, i32 }

@x86_code.MASK_TO_BIT_NUMBER = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3], align 16, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_x86_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !187 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !202, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !203, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata ptr %filters, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata ptr %next, metadata !206, metadata !DIExpression()) #4, !dbg !216
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !211, metadata !DIExpression()) #4, !dbg !216
  call void @llvm.dbg.value(metadata ptr %filters, metadata !212, metadata !DIExpression()) #4, !dbg !216
  call void @llvm.dbg.value(metadata i1 true, metadata !213, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #4, !dbg !216
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @x86_code, i64 noundef 8, i64 noundef 5, i32 noundef 1, i1 noundef zeroext true) #4, !dbg !218
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !214, metadata !DIExpression()) #4, !dbg !216
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !219
  br i1 %cmp.i, label %if.then.i, label %x86_coder_init.exit, !dbg !221

if.then.i:                                        ; preds = %entry
  %0 = load ptr, ptr %next, align 8, !dbg !222, !tbaa !224
  %simple.i = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, !dbg !230
  %1 = load ptr, ptr %simple.i, align 8, !dbg !230, !tbaa !231
  store i32 0, ptr %1, align 4, !dbg !232, !tbaa !233
  %prev_pos.i = getelementptr inbounds %struct.lzma_simple_s, ptr %1, i64 0, i32 1, !dbg !236
  store i32 -5, ptr %prev_pos.i, align 4, !dbg !237, !tbaa !238
  br label %x86_coder_init.exit, !dbg !239

x86_coder_init.exit:                              ; preds = %entry, %if.then.i
  ret i32 %call.i, !dbg !240
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_x86_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !241 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !243, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !244, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %filters, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %next, metadata !206, metadata !DIExpression()) #4, !dbg !247
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !211, metadata !DIExpression()) #4, !dbg !247
  call void @llvm.dbg.value(metadata ptr %filters, metadata !212, metadata !DIExpression()) #4, !dbg !247
  call void @llvm.dbg.value(metadata i1 false, metadata !213, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #4, !dbg !247
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @x86_code, i64 noundef 8, i64 noundef 5, i32 noundef 1, i1 noundef zeroext false) #4, !dbg !249
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !214, metadata !DIExpression()) #4, !dbg !247
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !250
  br i1 %cmp.i, label %if.then.i, label %x86_coder_init.exit, !dbg !251

if.then.i:                                        ; preds = %entry
  %0 = load ptr, ptr %next, align 8, !dbg !252, !tbaa !224
  %simple.i = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, !dbg !253
  %1 = load ptr, ptr %simple.i, align 8, !dbg !253, !tbaa !231
  store i32 0, ptr %1, align 4, !dbg !254, !tbaa !233
  %prev_pos.i = getelementptr inbounds %struct.lzma_simple_s, ptr %1, i64 0, i32 1, !dbg !255
  store i32 -5, ptr %prev_pos.i, align 4, !dbg !256, !tbaa !238
  br label %x86_coder_init.exit, !dbg !257

x86_coder_init.exit:                              ; preds = %entry, %if.then.i
  ret i32 %call.i, !dbg !258
}

declare !dbg !259 i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal i64 @x86_code(ptr nocapture noundef %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata ptr %simple, metadata !155, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %now_pos, metadata !156, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i1 %is_encoder, metadata !157, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !263
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !158, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %size, metadata !159, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 undef, metadata !160, metadata !DIExpression()), !dbg !263
  %prev_pos2 = getelementptr inbounds %struct.lzma_simple_s, ptr %simple, i64 0, i32 1, !dbg !264
  call void @llvm.dbg.value(metadata i32 undef, metadata !161, metadata !DIExpression()), !dbg !263
  %cmp = icmp ult i64 %size, 5, !dbg !265
  br i1 %cmp, label %cleanup137, label %if.end, !dbg !267

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %simple, align 4, !dbg !268, !tbaa !233
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !263
  %1 = load i32, ptr %prev_pos2, align 4, !dbg !264, !tbaa !238
  call void @llvm.dbg.value(metadata i32 %1, metadata !161, metadata !DIExpression()), !dbg !263
  %sub = sub i32 %now_pos, %1, !dbg !269
  %cmp3 = icmp ugt i32 %sub, 5, !dbg !271
  %sub5 = add i32 %now_pos, -5
  %spec.select = select i1 %cmp3, i32 %sub5, i32 %1, !dbg !272
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !161, metadata !DIExpression()), !dbg !263
  %sub7 = add i64 %size, -5, !dbg !273
  call void @llvm.dbg.value(metadata i64 %sub7, metadata !162, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 0, metadata !164, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !161, metadata !DIExpression()), !dbg !263
  br label %while.body, !dbg !274

while.body:                                       ; preds = %if.end, %cleanup129
  %prev_mask.0221 = phi i32 [ %0, %if.end ], [ %prev_mask.4, %cleanup129 ]
  %buffer_pos.0219 = phi i64 [ 0, %if.end ], [ %buffer_pos.2, %cleanup129 ]
  %prev_pos.1218 = phi i32 [ %spec.select, %if.end ], [ %prev_pos.2, %cleanup129 ]
  call void @llvm.dbg.value(metadata i32 %prev_mask.0221, metadata !160, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %buffer_pos.0219, metadata !164, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %prev_pos.1218, metadata !161, metadata !DIExpression()), !dbg !263
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %buffer_pos.0219, !dbg !275
  %2 = load i8, ptr %arrayidx, align 1, !dbg !275, !tbaa !276
  call void @llvm.dbg.value(metadata i8 %2, metadata !165, metadata !DIExpression()), !dbg !277
  %3 = and i8 %2, -2, !dbg !278
  %.not = icmp eq i8 %3, -24, !dbg !278
  br i1 %.not, label %if.end15, label %if.then14, !dbg !278

if.then14:                                        ; preds = %while.body
  %inc = add i64 %buffer_pos.0219, 1, !dbg !280
  call void @llvm.dbg.value(metadata i64 %inc, metadata !164, metadata !DIExpression()), !dbg !263
  br label %cleanup129, !dbg !282, !llvm.loop !283

if.end15:                                         ; preds = %while.body
  %conv16 = trunc i64 %buffer_pos.0219 to i32, !dbg !287
  %add = add i32 %conv16, %now_pos, !dbg !288
  %sub17 = sub i32 %add, %prev_pos.1218, !dbg !289
  call void @llvm.dbg.value(metadata i32 %sub17, metadata !167, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 %add, metadata !161, metadata !DIExpression()), !dbg !263
  %cmp20 = icmp ugt i32 %sub17, 5, !dbg !290
  br i1 %cmp20, label %if.end26, label %for.cond.preheader, !dbg !291

for.cond.preheader:                               ; preds = %if.end15
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %prev_mask.0221, metadata !160, metadata !DIExpression()), !dbg !263
  %cmp23207.not = icmp eq i32 %add, %prev_pos.1218, !dbg !293
  br i1 %cmp23207.not, label %if.end26, label %for.body.preheader, !dbg !295

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %sub17, i32 1), !dbg !295
  br label %for.body, !dbg !295

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.0209 = phi i32 [ %inc25, %for.body ], [ 0, %for.body.preheader ]
  %prev_mask.1208 = phi i32 [ %shl, %for.body ], [ %prev_mask.0221, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i32 %i.0209, metadata !169, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %prev_mask.1208, metadata !160, metadata !DIExpression(DW_OP_constu, 119, DW_OP_and, DW_OP_stack_value)), !dbg !263
  %and = shl i32 %prev_mask.1208, 1, !dbg !296
  %shl = and i32 %and, 238, !dbg !296
  call void @llvm.dbg.value(metadata i32 %shl, metadata !160, metadata !DIExpression()), !dbg !263
  %inc25 = add nuw i32 %i.0209, 1, !dbg !298
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !169, metadata !DIExpression()), !dbg !292
  %exitcond.not = icmp eq i32 %inc25, %umax, !dbg !293
  br i1 %exitcond.not, label %if.end26, label %for.body, !dbg !295, !llvm.loop !299

if.end26:                                         ; preds = %for.body, %for.cond.preheader, %if.end15
  %prev_mask.2 = phi i32 [ 0, %if.end15 ], [ %prev_mask.0221, %for.cond.preheader ], [ %shl, %for.body ], !dbg !263
  call void @llvm.dbg.value(metadata i32 %prev_mask.2, metadata !160, metadata !DIExpression()), !dbg !263
  %add27 = add i64 %buffer_pos.0219, 4, !dbg !301
  %arrayidx28 = getelementptr inbounds i8, ptr %buffer, i64 %add27, !dbg !302
  %4 = load i8, ptr %arrayidx28, align 1, !dbg !302, !tbaa !276
  call void @llvm.dbg.value(metadata i8 %4, metadata !165, metadata !DIExpression()), !dbg !277
  %conv29 = zext i8 %4 to i32, !dbg !303
  %5 = add i8 %4, 1, !dbg !303
  %6 = icmp ult i8 %5, 2, !dbg !303
  br i1 %6, label %land.lhs.true35, label %if.else115, !dbg !303

land.lhs.true35:                                  ; preds = %if.end26
  %shr = lshr i32 %prev_mask.2, 1, !dbg !304
  %and36 = and i32 %shr, 7, !dbg !305
  %idxprom = zext i32 %and36 to i64, !dbg !306
  %7 = lshr i64 232, %idxprom, !dbg !306
  %8 = and i64 %7, 1, !dbg !306
  %tobool.not.not = icmp eq i64 %8, 0, !dbg !306
  %cmp41 = icmp ult i32 %prev_mask.2, 32
  %or.cond = select i1 %tobool.not.not, i1 %cmp41, i1 false, !dbg !307
  br i1 %or.cond, label %if.then43, label %if.else115, !dbg !307

if.then43:                                        ; preds = %land.lhs.true35
  %shl45 = shl nuw i32 %conv29, 24, !dbg !308
  %add46 = add i64 %buffer_pos.0219, 3, !dbg !309
  %arrayidx47 = getelementptr inbounds i8, ptr %buffer, i64 %add46, !dbg !310
  %9 = load i8, ptr %arrayidx47, align 1, !dbg !310, !tbaa !276
  %conv48 = zext i8 %9 to i32, !dbg !311
  %shl49 = shl nuw nsw i32 %conv48, 16, !dbg !312
  %or = or i32 %shl49, %shl45, !dbg !313
  %add50 = add i64 %buffer_pos.0219, 2, !dbg !314
  %arrayidx51 = getelementptr inbounds i8, ptr %buffer, i64 %add50, !dbg !315
  %10 = load i8, ptr %arrayidx51, align 1, !dbg !315, !tbaa !276
  %conv52 = zext i8 %10 to i32, !dbg !316
  %shl53 = shl nuw nsw i32 %conv52, 8, !dbg !317
  %or54 = or i32 %or, %shl53, !dbg !318
  %add55 = add i64 %buffer_pos.0219, 1, !dbg !319
  %arrayidx56 = getelementptr inbounds i8, ptr %buffer, i64 %add55, !dbg !320
  %11 = load i8, ptr %arrayidx56, align 1, !dbg !320, !tbaa !276
  %conv57 = zext i8 %11 to i32, !dbg !321
  %or58 = or i32 %or54, %conv57, !dbg !322
  call void @llvm.dbg.value(metadata i32 %or58, metadata !173, metadata !DIExpression()), !dbg !323
  %cmp73 = icmp eq i32 %prev_mask.2, 0
  %add70.neg = sub i32 -5, %add
  %add65 = add i32 %add, 5
  br i1 %cmp73, label %if.then43.split.us, label %if.then43.split, !dbg !324

if.then43.split.us:                               ; preds = %if.then43
  call void @llvm.dbg.value(metadata i32 undef, metadata !173, metadata !DIExpression()), !dbg !323
  br i1 %is_encoder, label %if.then62.us, label %if.else67.us, !dbg !325

if.else67.us:                                     ; preds = %if.then43.split.us
  %sub71.us = add i32 %add70.neg, %or58, !dbg !326
  call void @llvm.dbg.value(metadata i32 %sub71.us, metadata !176, metadata !DIExpression()), !dbg !323
  br label %while.end

if.then62.us:                                     ; preds = %if.then43.split.us
  %add66.us = add i32 %add65, %or58, !dbg !328
  call void @llvm.dbg.value(metadata i32 %add66.us, metadata !176, metadata !DIExpression()), !dbg !323
  br label %while.end, !dbg !329

if.then43.split:                                  ; preds = %if.then43
  %idxprom79 = zext i32 %shr to i64
  %arrayidx80 = getelementptr inbounds [8 x i32], ptr @x86_code.MASK_TO_BIT_NUMBER, i64 0, i64 %idxprom79
  %12 = load i32, ptr %arrayidx80, align 4, !tbaa !330
  %mul = shl i32 %12, 3
  %sub81 = sub i32 24, %mul
  %sub94 = sub i32 32, %mul
  %notmask = shl nsw i32 -1, %sub94
  br i1 %is_encoder, label %while.cond59.us210, label %while.cond59, !dbg !325

while.cond59.us210:                               ; preds = %if.then43.split, %cleanup.us
  %src.0.us211 = phi i32 [ %xor.us, %cleanup.us ], [ %or58, %if.then43.split ], !dbg !323
  call void @llvm.dbg.value(metadata i32 %src.0.us211, metadata !173, metadata !DIExpression()), !dbg !323
  %add66.us213 = add i32 %add65, %src.0.us211, !dbg !328
  call void @llvm.dbg.value(metadata i32 undef, metadata !176, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %12, metadata !177, metadata !DIExpression()), !dbg !331
  %shr82.us = lshr i32 %add66.us213, %sub81, !dbg !332
  call void @llvm.dbg.value(metadata i32 %shr82.us, metadata !165, metadata !DIExpression()), !dbg !277
  %trunc.us = trunc i32 %shr82.us to i8, !dbg !333
  switch i8 %trunc.us, label %while.end [
    i8 -1, label %cleanup.us
    i8 0, label %cleanup.us
  ], !dbg !333

cleanup.us:                                       ; preds = %while.cond59.us210, %while.cond59.us210
  %13 = xor i32 %add66.us213, %notmask, !dbg !335
  %xor.us = xor i32 %13, -1, !dbg !335
  call void @llvm.dbg.value(metadata i32 %xor.us, metadata !173, metadata !DIExpression()), !dbg !323
  br label %while.cond59.us210

while.cond59:                                     ; preds = %if.then43.split, %cleanup
  %src.0 = phi i32 [ %xor, %cleanup ], [ %or58, %if.then43.split ], !dbg !323
  call void @llvm.dbg.value(metadata i32 %src.0, metadata !173, metadata !DIExpression()), !dbg !323
  %sub71 = add i32 %add70.neg, %src.0, !dbg !326
  call void @llvm.dbg.value(metadata i32 %sub71, metadata !176, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %12, metadata !177, metadata !DIExpression()), !dbg !331
  %shr82 = lshr i32 %sub71, %sub81, !dbg !332
  call void @llvm.dbg.value(metadata i32 %shr82, metadata !165, metadata !DIExpression()), !dbg !277
  %trunc = trunc i32 %shr82 to i8, !dbg !333
  switch i8 %trunc, label %while.end [
    i8 -1, label %cleanup
    i8 0, label %cleanup
  ], !dbg !333

cleanup:                                          ; preds = %while.cond59, %while.cond59
  %14 = xor i32 %sub71, %notmask, !dbg !335
  %xor = xor i32 %14, -1, !dbg !335
  call void @llvm.dbg.value(metadata i32 %xor, metadata !173, metadata !DIExpression()), !dbg !323
  br label %while.cond59

while.end:                                        ; preds = %while.cond59, %while.cond59.us210, %if.else67.us, %if.then62.us
  %.us-phi = phi i32 [ %add66.us, %if.then62.us ], [ %sub71.us, %if.else67.us ], [ %add66.us213, %while.cond59.us210 ], [ %sub71, %while.cond59 ]
  %15 = shl i32 %.us-phi, 7, !dbg !336
  %16 = ashr i32 %15, 31, !dbg !336
  %conv100 = trunc i32 %16 to i8, !dbg !337
  store i8 %conv100, ptr %arrayidx28, align 1, !dbg !338, !tbaa !276
  %shr103 = lshr i32 %.us-phi, 16, !dbg !339
  %conv104 = trunc i32 %shr103 to i8, !dbg !340
  store i8 %conv104, ptr %arrayidx47, align 1, !dbg !341, !tbaa !276
  %shr107 = lshr i32 %.us-phi, 8, !dbg !342
  %conv108 = trunc i32 %shr107 to i8, !dbg !343
  store i8 %conv108, ptr %arrayidx51, align 1, !dbg !344, !tbaa !276
  %conv111 = trunc i32 %.us-phi to i8, !dbg !345
  store i8 %conv111, ptr %arrayidx56, align 1, !dbg !346, !tbaa !276
  %add114 = add i64 %buffer_pos.0219, 5, !dbg !347
  call void @llvm.dbg.value(metadata i64 %add114, metadata !164, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 0, metadata !160, metadata !DIExpression()), !dbg !263
  br label %cleanup129, !dbg !348

if.else115:                                       ; preds = %if.end26, %land.lhs.true35
  %spec.select203.v = phi i32 [ 1, %if.end26 ], [ 17, %land.lhs.true35 ], !dbg !349
  %inc116 = add i64 %buffer_pos.0219, 1, !dbg !349
  call void @llvm.dbg.value(metadata i64 %inc116, metadata !164, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %prev_mask.2, metadata !160, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !263
  %spec.select203 = or i32 %spec.select203.v, %prev_mask.2, !dbg !351
  br label %cleanup129, !dbg !351

cleanup129:                                       ; preds = %if.else115, %while.end, %if.then14
  %prev_pos.2 = phi i32 [ %prev_pos.1218, %if.then14 ], [ %add, %if.else115 ], [ %add, %while.end ], !dbg !263
  %buffer_pos.2 = phi i64 [ %inc, %if.then14 ], [ %inc116, %if.else115 ], [ %add114, %while.end ], !dbg !277
  %prev_mask.4 = phi i32 [ %prev_mask.0221, %if.then14 ], [ %spec.select203, %if.else115 ], [ 0, %while.end ], !dbg !263
  call void @llvm.dbg.value(metadata i32 %prev_mask.4, metadata !160, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %buffer_pos.2, metadata !164, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %prev_pos.2, metadata !161, metadata !DIExpression()), !dbg !263
  %cmp8.not = icmp ugt i64 %buffer_pos.2, %sub7, !dbg !353
  br i1 %cmp8.not, label %while.end132, label %while.body, !dbg !274

while.end132:                                     ; preds = %cleanup129
  store i32 %prev_mask.4, ptr %simple, align 4, !dbg !354, !tbaa !233
  store i32 %prev_pos.2, ptr %prev_pos2, align 4, !dbg !355, !tbaa !238
  br label %cleanup137

cleanup137:                                       ; preds = %entry, %while.end132
  %retval.0 = phi i64 [ %buffer_pos.2, %while.end132 ], [ 0, %entry ], !dbg !263
  ret i64 %retval.0, !dbg !356
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "MASK_TO_BIT_NUMBER", scope: !2, file: !3, line: 33, type: !179, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "x86_code", scope: !3, file: !3, line: 27, type: !4, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !154)
!3 = !DIFile(filename: "apps/557.xz_r/src/liblzma/simple/x86.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d511d504c4e6105d3bb96252bce2f620")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9, !15, !21, !22, !6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 46, baseType: !8)
!7 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_simple", file: !11, line: 19, baseType: !12)
!11 = !DIFile(filename: "apps/557.xz_r/src/liblzma/simple/simple_private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2921a659cca72849047c4661dc5d5b7e")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_simple_s", file: !3, line: 20, size: 64, elements: !13)
!13 = !{!14, !20}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "prev_mask", scope: !12, file: !3, line: 21, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !16, line: 26, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !18, line: 42, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !12, file: !3, line: 22, baseType: !15, size: 32, offset: 32)
!21 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !16, line: 24, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !18, line: 38, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !28, retainedTypes: !57, globals: !147, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/simple/x86.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "d511d504c4e6105d3bb96252bce2f620")
!28 = !{!29, !44, !50}
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 57, baseType: !19, size: 32, elements: !31)
!30 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!32 = !DIEnumerator(name: "LZMA_OK", value: 0)
!33 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!34 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!35 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!36 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!37 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!38 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!39 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!40 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!41 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!42 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!43 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 250, baseType: !19, size: 32, elements: !45)
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!47 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!48 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!49 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 27, baseType: !19, size: 32, elements: !52)
!51 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!54 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!55 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!56 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!57 = !{!58, !15, !23}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !11, line: 21, size: 1024, elements: !60)
!60 = !{!61, !133, !134, !135, !137, !138, !139, !140, !141, !142, !143}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !59, file: !11, line: 23, baseType: !62, size: 512)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !63, line: 80, baseType: !64)
!63 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !63, line: 124, size: 512, elements: !65)
!65 = !{!66, !69, !74, !77, !104, !109, !116, !121}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !64, file: !63, line: 126, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !63, line: 78, baseType: null)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !64, file: !63, line: 130, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !71, line: 63, baseType: !72)
!71 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !16, line: 27, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !18, line: 45, baseType: !8)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !64, file: !63, line: 136, baseType: !75, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !76, line: 90, baseType: !8)
!76 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !64, file: !63, line: 139, baseType: !78, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !63, line: 94, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !67, !83, !97, !100, !6, !102, !100, !6, !103}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !30, line: 237, baseType: !29)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !30, line: 403, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 341, size: 192, elements: !86)
!86 = !{!87, !92, !96}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !85, file: !30, line: 376, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!91, !91, !6, !6}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !85, file: !30, line: 390, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !91, !91}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !85, file: !30, line: 401, baseType: !91, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !30, line: 322, baseType: !44)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !64, file: !63, line: 144, baseType: !105, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !63, line: 102, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !67, !83}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !64, file: !63, line: 148, baseType: !110, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !51, line: 55, baseType: !50)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !64, file: !63, line: 152, baseType: !117, size: 64, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!82, !67, !120, !120, !72}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !64, file: !63, line: 157, baseType: !122, size: 64, offset: 448)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!82, !67, !83, !125, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !128, line: 65, baseType: !129)
!128 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 43, size: 128, elements: !130)
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !129, file: !128, line: 54, baseType: !70, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !129, file: !128, line: 63, baseType: !91, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "end_was_reached", scope: !59, file: !11, line: 26, baseType: !21, size: 8, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "is_encoder", scope: !59, file: !11, line: 32, baseType: !21, size: 8, offset: 520)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !59, file: !11, line: 36, baseType: !136, size: 64, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "simple", scope: !59, file: !11, line: 41, baseType: !9, size: 64, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "now_pos", scope: !59, file: !11, line: 46, baseType: !15, size: 32, offset: 704)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !59, file: !11, line: 49, baseType: !6, size: 64, offset: 768)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !59, file: !11, line: 53, baseType: !6, size: 64, offset: 832)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !59, file: !11, line: 57, baseType: !6, size: 64, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !59, file: !11, line: 61, baseType: !6, size: 64, offset: 960)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !59, file: !11, line: 64, baseType: !144, offset: 1024)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: -1)
!147 = !{!148, !0}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "MASK_TO_ALLOWED_STATUS", scope: !2, file: !3, line: 30, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !152)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!152 = !{!153}
!153 = !DISubrange(count: 8)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !164, !165, !167, !169, !173, !176, !177}
!155 = !DILocalVariable(name: "simple", arg: 1, scope: !2, file: !3, line: 27, type: !9)
!156 = !DILocalVariable(name: "now_pos", arg: 2, scope: !2, file: !3, line: 27, type: !15)
!157 = !DILocalVariable(name: "is_encoder", arg: 3, scope: !2, file: !3, line: 27, type: !21)
!158 = !DILocalVariable(name: "buffer", arg: 4, scope: !2, file: !3, line: 28, type: !22)
!159 = !DILocalVariable(name: "size", arg: 5, scope: !2, file: !3, line: 28, type: !6)
!160 = !DILocalVariable(name: "prev_mask", scope: !2, file: !3, line: 36, type: !15)
!161 = !DILocalVariable(name: "prev_pos", scope: !2, file: !3, line: 37, type: !15)
!162 = !DILocalVariable(name: "limit", scope: !2, file: !3, line: 45, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!164 = !DILocalVariable(name: "buffer_pos", scope: !2, file: !3, line: 46, type: !6)
!165 = !DILocalVariable(name: "b", scope: !166, file: !3, line: 49, type: !23)
!166 = distinct !DILexicalBlock(scope: !2, file: !3, line: 48, column: 30)
!167 = !DILocalVariable(name: "offset", scope: !166, file: !3, line: 55, type: !168)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!169 = !DILocalVariable(name: "i", scope: !170, file: !3, line: 62, type: !15)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 62, column: 4)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 61, column: 10)
!172 = distinct !DILexicalBlock(scope: !166, file: !3, line: 59, column: 7)
!173 = !DILocalVariable(name: "src", scope: !174, file: !3, line: 74, type: !15)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 72, column: 33)
!175 = distinct !DILexicalBlock(scope: !166, file: !3, line: 70, column: 7)
!176 = !DILocalVariable(name: "dest", scope: !174, file: !3, line: 79, type: !15)
!177 = !DILocalVariable(name: "i", scope: !178, file: !3, line: 91, type: !168)
!178 = distinct !DILexicalBlock(scope: !174, file: !3, line: 80, column: 17)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 256, elements: !152)
!180 = !{i32 7, !"Dwarf Version", i32 5}
!181 = !{i32 2, !"Debug Info Version", i32 3}
!182 = !{i32 1, !"wchar_size", i32 4}
!183 = !{i32 7, !"PIC Level", i32 2}
!184 = !{i32 7, !"PIE Level", i32 2}
!185 = !{i32 7, !"uwtable", i32 2}
!186 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!187 = distinct !DISubprogram(name: "lzma_simple_x86_encoder_init", scope: !3, file: !3, line: 142, type: !188, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !201)
!188 = !DISubroutineType(types: !189)
!189 = !{!82, !190, !83, !191}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !63, line: 82, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !63, line: 109, size: 192, elements: !195)
!195 = !{!196, !197, !200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !194, file: !63, line: 112, baseType: !70, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !194, file: !63, line: 116, baseType: !198, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !63, line: 86, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !194, file: !63, line: 119, baseType: !91, size: 64, offset: 128)
!201 = !{!202, !203, !204}
!202 = !DILocalVariable(name: "next", arg: 1, scope: !187, file: !3, line: 142, type: !190)
!203 = !DILocalVariable(name: "allocator", arg: 2, scope: !187, file: !3, line: 142, type: !83)
!204 = !DILocalVariable(name: "filters", arg: 3, scope: !187, file: !3, line: 143, type: !191)
!205 = !DILocation(line: 0, scope: !187)
!206 = !DILocalVariable(name: "next", arg: 1, scope: !207, file: !3, line: 126, type: !190)
!207 = distinct !DISubprogram(name: "x86_coder_init", scope: !3, file: !3, line: 126, type: !208, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !210)
!208 = !DISubroutineType(types: !209)
!209 = !{!82, !190, !83, !191, !21}
!210 = !{!206, !211, !212, !213, !214}
!211 = !DILocalVariable(name: "allocator", arg: 2, scope: !207, file: !3, line: 126, type: !83)
!212 = !DILocalVariable(name: "filters", arg: 3, scope: !207, file: !3, line: 127, type: !191)
!213 = !DILocalVariable(name: "is_encoder", arg: 4, scope: !207, file: !3, line: 127, type: !21)
!214 = !DILocalVariable(name: "ret", scope: !207, file: !3, line: 129, type: !215)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!216 = !DILocation(line: 0, scope: !207, inlinedAt: !217)
!217 = distinct !DILocation(line: 145, column: 9, scope: !187)
!218 = !DILocation(line: 129, column: 23, scope: !207, inlinedAt: !217)
!219 = !DILocation(line: 132, column: 10, scope: !220, inlinedAt: !217)
!220 = distinct !DILexicalBlock(scope: !207, file: !3, line: 132, column: 6)
!221 = !DILocation(line: 132, column: 6, scope: !207, inlinedAt: !217)
!222 = !DILocation(line: 133, column: 32, scope: !223, inlinedAt: !217)
!223 = distinct !DILexicalBlock(scope: !220, file: !3, line: 132, column: 22)
!224 = !{!225, !226, i64 0}
!225 = !{!"lzma_next_coder_s", !226, i64 0, !229, i64 8, !229, i64 16, !226, i64 24, !226, i64 32, !226, i64 40, !226, i64 48, !226, i64 56}
!226 = !{!"any pointer", !227, i64 0}
!227 = !{!"omnipotent char", !228, i64 0}
!228 = !{!"Simple C/C++ TBAA"}
!229 = !{!"long", !227, i64 0}
!230 = !DILocation(line: 133, column: 40, scope: !223, inlinedAt: !217)
!231 = !{!226, !226, i64 0}
!232 = !DILocation(line: 133, column: 58, scope: !223, inlinedAt: !217)
!233 = !{!234, !235, i64 0}
!234 = !{!"lzma_simple_s", !235, i64 0, !235, i64 4}
!235 = !{!"int", !227, i64 0}
!236 = !DILocation(line: 134, column: 48, scope: !223, inlinedAt: !217)
!237 = !DILocation(line: 134, column: 57, scope: !223, inlinedAt: !217)
!238 = !{!234, !235, i64 4}
!239 = !DILocation(line: 135, column: 2, scope: !223, inlinedAt: !217)
!240 = !DILocation(line: 145, column: 2, scope: !187)
!241 = distinct !DISubprogram(name: "lzma_simple_x86_decoder_init", scope: !3, file: !3, line: 150, type: !188, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !242)
!242 = !{!243, !244, !245}
!243 = !DILocalVariable(name: "next", arg: 1, scope: !241, file: !3, line: 150, type: !190)
!244 = !DILocalVariable(name: "allocator", arg: 2, scope: !241, file: !3, line: 150, type: !83)
!245 = !DILocalVariable(name: "filters", arg: 3, scope: !241, file: !3, line: 151, type: !191)
!246 = !DILocation(line: 0, scope: !241)
!247 = !DILocation(line: 0, scope: !207, inlinedAt: !248)
!248 = distinct !DILocation(line: 153, column: 9, scope: !241)
!249 = !DILocation(line: 129, column: 23, scope: !207, inlinedAt: !248)
!250 = !DILocation(line: 132, column: 10, scope: !220, inlinedAt: !248)
!251 = !DILocation(line: 132, column: 6, scope: !207, inlinedAt: !248)
!252 = !DILocation(line: 133, column: 32, scope: !223, inlinedAt: !248)
!253 = !DILocation(line: 133, column: 40, scope: !223, inlinedAt: !248)
!254 = !DILocation(line: 133, column: 58, scope: !223, inlinedAt: !248)
!255 = !DILocation(line: 134, column: 48, scope: !223, inlinedAt: !248)
!256 = !DILocation(line: 134, column: 57, scope: !223, inlinedAt: !248)
!257 = !DILocation(line: 135, column: 2, scope: !223, inlinedAt: !248)
!258 = !DILocation(line: 153, column: 2, scope: !241)
!259 = !DISubprogram(name: "lzma_simple_coder_init", scope: !11, file: !11, line: 68, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{!82, !190, !83, !191, !136, !6, !6, !15, !21}
!262 = !{}
!263 = !DILocation(line: 0, scope: !2)
!264 = !DILocation(line: 37, column: 30, scope: !2)
!265 = !DILocation(line: 39, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !2, file: !3, line: 39, column: 6)
!267 = !DILocation(line: 39, column: 6, scope: !2)
!268 = !DILocation(line: 36, column: 31, scope: !2)
!269 = !DILocation(line: 42, column: 14, scope: !270)
!270 = distinct !DILexicalBlock(scope: !2, file: !3, line: 42, column: 6)
!271 = !DILocation(line: 42, column: 25, scope: !270)
!272 = !DILocation(line: 42, column: 6, scope: !2)
!273 = !DILocation(line: 45, column: 28, scope: !2)
!274 = !DILocation(line: 48, column: 2, scope: !2)
!275 = !DILocation(line: 49, column: 15, scope: !166)
!276 = !{!227, !227, i64 0}
!277 = !DILocation(line: 0, scope: !166)
!278 = !DILocation(line: 50, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !166, file: !3, line: 50, column: 7)
!280 = !DILocation(line: 51, column: 4, scope: !281)
!281 = distinct !DILexicalBlock(scope: !279, file: !3, line: 50, column: 31)
!282 = !DILocation(line: 52, column: 4, scope: !281)
!283 = distinct !{!283, !274, !284, !285, !286}
!284 = !DILocation(line: 116, column: 2, scope: !2)
!285 = !{!"llvm.loop.mustprogress"}
!286 = !{!"llvm.loop.unroll.disable"}
!287 = !DILocation(line: 55, column: 37, scope: !166)
!288 = !DILocation(line: 55, column: 35, scope: !166)
!289 = !DILocation(line: 56, column: 5, scope: !166)
!290 = !DILocation(line: 59, column: 14, scope: !172)
!291 = !DILocation(line: 59, column: 7, scope: !166)
!292 = !DILocation(line: 0, scope: !170)
!293 = !DILocation(line: 62, column: 27, scope: !294)
!294 = distinct !DILexicalBlock(scope: !170, file: !3, line: 62, column: 4)
!295 = !DILocation(line: 62, column: 4, scope: !170)
!296 = !DILocation(line: 64, column: 15, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !3, line: 62, column: 42)
!298 = !DILocation(line: 62, column: 37, scope: !294)
!299 = distinct !{!299, !295, !300, !285, !286}
!300 = !DILocation(line: 65, column: 4, scope: !170)
!301 = !DILocation(line: 68, column: 25, scope: !166)
!302 = !DILocation(line: 68, column: 7, scope: !166)
!303 = !DILocation(line: 70, column: 7, scope: !175)
!304 = !DILocation(line: 71, column: 41, scope: !175)
!305 = !DILocation(line: 71, column: 47, scope: !175)
!306 = !DILocation(line: 71, column: 7, scope: !175)
!307 = !DILocation(line: 72, column: 5, scope: !175)
!308 = !DILocation(line: 74, column: 34, scope: !174)
!309 = !DILocation(line: 75, column: 37, scope: !174)
!310 = !DILocation(line: 75, column: 19, scope: !174)
!311 = !DILocation(line: 75, column: 8, scope: !174)
!312 = !DILocation(line: 75, column: 43, scope: !174)
!313 = !DILocation(line: 75, column: 5, scope: !174)
!314 = !DILocation(line: 76, column: 37, scope: !174)
!315 = !DILocation(line: 76, column: 19, scope: !174)
!316 = !DILocation(line: 76, column: 8, scope: !174)
!317 = !DILocation(line: 76, column: 43, scope: !174)
!318 = !DILocation(line: 76, column: 5, scope: !174)
!319 = !DILocation(line: 77, column: 26, scope: !174)
!320 = !DILocation(line: 77, column: 8, scope: !174)
!321 = !DILocation(line: 77, column: 7, scope: !174)
!322 = !DILocation(line: 77, column: 5, scope: !174)
!323 = !DILocation(line: 0, scope: !174)
!324 = !DILocation(line: 88, column: 9, scope: !178)
!325 = !DILocation(line: 81, column: 9, scope: !178)
!326 = !DILocation(line: 85, column: 17, scope: !327)
!327 = distinct !DILexicalBlock(scope: !178, file: !3, line: 81, column: 9)
!328 = !DILocation(line: 82, column: 17, scope: !327)
!329 = !DILocation(line: 82, column: 6, scope: !327)
!330 = !{!235, !235, i64 0}
!331 = !DILocation(line: 0, scope: !178)
!332 = !DILocation(line: 94, column: 24, scope: !178)
!333 = !DILocation(line: 96, column: 10, scope: !334)
!334 = distinct !DILexicalBlock(scope: !178, file: !3, line: 96, column: 9)
!335 = !DILocation(line: 99, column: 16, scope: !178)
!336 = !DILocation(line: 103, column: 34, scope: !174)
!337 = !DILocation(line: 103, column: 8, scope: !174)
!338 = !DILocation(line: 103, column: 6, scope: !174)
!339 = !DILocation(line: 104, column: 44, scope: !174)
!340 = !DILocation(line: 104, column: 29, scope: !174)
!341 = !DILocation(line: 104, column: 27, scope: !174)
!342 = !DILocation(line: 105, column: 44, scope: !174)
!343 = !DILocation(line: 105, column: 29, scope: !174)
!344 = !DILocation(line: 105, column: 27, scope: !174)
!345 = !DILocation(line: 106, column: 29, scope: !174)
!346 = !DILocation(line: 106, column: 27, scope: !174)
!347 = !DILocation(line: 107, column: 15, scope: !174)
!348 = !DILocation(line: 110, column: 3, scope: !174)
!349 = !DILocation(line: 111, column: 4, scope: !350)
!350 = distinct !DILexicalBlock(scope: !175, file: !3, line: 110, column: 10)
!351 = !DILocation(line: 113, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !350, file: !3, line: 113, column: 8)
!353 = !DILocation(line: 48, column: 20, scope: !2)
!354 = !DILocation(line: 118, column: 20, scope: !2)
!355 = !DILocation(line: 119, column: 19, scope: !2)
!356 = !DILocation(line: 122, column: 1, scope: !2)
