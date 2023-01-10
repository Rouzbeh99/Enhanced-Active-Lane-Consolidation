; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/lz/lz_encoder_mf.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lz/lz_encoder_mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_match = type { i32, i32 }

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_mf_find(ptr noundef %mf, ptr nocapture noundef writeonly %count_ptr, ptr noundef %matches) local_unnamed_addr #0 !dbg !23 {
entry:
  call void @llvm.dbg.value(metadata ptr %mf, metadata !74, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata ptr %count_ptr, metadata !75, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata ptr %matches, metadata !76, metadata !DIExpression()), !dbg !89
  %find = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 10, !dbg !90
  %0 = load ptr, ptr %find, align 8, !dbg !90, !tbaa !91
  %call = tail call i32 %0(ptr noundef %mf, ptr noundef %matches) #3, !dbg !97
  call void @llvm.dbg.value(metadata i32 %call, metadata !77, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i32 0, metadata !79, metadata !DIExpression()), !dbg !89
  %cmp.not = icmp eq i32 %call, 0, !dbg !98
  br i1 %cmp.not, label %if.end22, label %if.then, !dbg !99

if.then:                                          ; preds = %entry
  %sub = add i32 %call, -1, !dbg !100
  %idxprom = zext i32 %sub to i64, !dbg !101
  %arrayidx = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom, !dbg !101
  %1 = load i32, ptr %arrayidx, align 4, !dbg !102, !tbaa !103
  call void @llvm.dbg.value(metadata i32 %1, metadata !79, metadata !DIExpression()), !dbg !89
  %nice_len = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18, !dbg !105
  %2 = load i32, ptr %nice_len, align 8, !dbg !105, !tbaa !106
  %cmp1 = icmp eq i32 %1, %2, !dbg !107
  br i1 %cmp1, label %if.then2, label %if.end22, !dbg !108

if.then2:                                         ; preds = %if.then
  %3 = getelementptr i8, ptr %mf, i64 24, !dbg !109
  %mf.val = load i32, ptr %3, align 8, !dbg !109, !tbaa !110
  %4 = getelementptr i8, ptr %mf, i64 36, !dbg !109
  %mf.val44 = load i32, ptr %4, align 4, !dbg !109, !tbaa !111
  call void @llvm.dbg.value(metadata ptr undef, metadata !112, metadata !DIExpression()), !dbg !119
  %sub.i = sub i32 1, %mf.val, !dbg !121
  %add = add i32 %sub.i, %mf.val44, !dbg !122
  call void @llvm.dbg.value(metadata i32 %add, metadata !80, metadata !DIExpression()), !dbg !123
  %match_len_max = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 19, !dbg !124
  %5 = load i32, ptr %match_len_max, align 4, !dbg !124, !tbaa !126
  %6 = tail call i32 @llvm.umin.i32(i32 %add, i32 %5), !dbg !127
  call void @llvm.dbg.value(metadata i32 %6, metadata !80, metadata !DIExpression()), !dbg !123
  %mf.val45 = load ptr, ptr %mf, align 8, !dbg !128, !tbaa !129
  call void @llvm.dbg.value(metadata ptr undef, metadata !130, metadata !DIExpression()), !dbg !135
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !137
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val45, i64 %idx.ext.i, !dbg !137
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 -1, !dbg !138
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !85, metadata !DIExpression()), !dbg !123
  %dist = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom, i32 1, !dbg !139
  %7 = load i32, ptr %dist, align 4, !dbg !139, !tbaa !140
  %idx.ext = zext i32 %7 to i64, !dbg !141
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !141
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg, !dbg !141
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1, !dbg !142
  call void @llvm.dbg.value(metadata ptr %add.ptr12, metadata !88, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 %1, metadata !79, metadata !DIExpression()), !dbg !89
  %cmp1347 = icmp ult i32 %1, %6, !dbg !143
  br i1 %cmp1347, label %land.rhs.preheader, label %if.end22, !dbg !144

land.rhs.preheader:                               ; preds = %if.then2
  %8 = zext i32 %1 to i64, !dbg !145
  br label %land.rhs, !dbg !145

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %indvars.iv = phi i64 [ %8, %land.rhs.preheader ], [ %indvars.iv.next, %while.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !79, metadata !DIExpression()), !dbg !89
  %arrayidx15 = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv, !dbg !146
  %9 = load i8, ptr %arrayidx15, align 1, !dbg !146, !tbaa !147
  %arrayidx17 = getelementptr inbounds i8, ptr %add.ptr12, i64 %indvars.iv, !dbg !148
  %10 = load i8, ptr %arrayidx17, align 1, !dbg !148, !tbaa !147
  %cmp19 = icmp eq i8 %9, %10, !dbg !149
  br i1 %cmp19, label %while.body, label %if.end22.loopexit.split.loop.exit, !dbg !145

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !150
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !79, metadata !DIExpression()), !dbg !89
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !143
  %exitcond.not = icmp eq i32 %6, %lftr.wideiv, !dbg !143
  br i1 %exitcond.not, label %if.end22, label %land.rhs, !dbg !144, !llvm.loop !151

if.end22.loopexit.split.loop.exit:                ; preds = %land.rhs
  %11 = trunc i64 %indvars.iv to i32, !dbg !145
  br label %if.end22, !dbg !155

if.end22:                                         ; preds = %while.body, %if.end22.loopexit.split.loop.exit, %if.then2, %if.then, %entry
  %len_best.1 = phi i32 [ %1, %if.then ], [ 0, %entry ], [ %1, %if.then2 ], [ %11, %if.end22.loopexit.split.loop.exit ], [ %6, %while.body ], !dbg !89
  call void @llvm.dbg.value(metadata i32 %len_best.1, metadata !79, metadata !DIExpression()), !dbg !89
  store i32 %call, ptr %count_ptr, align 4, !dbg !155, !tbaa !156
  %read_ahead = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 6, !dbg !157
  %12 = load i32, ptr %read_ahead, align 4, !dbg !158, !tbaa !159
  %inc23 = add i32 %12, 1, !dbg !158
  store i32 %inc23, ptr %read_ahead, align 4, !dbg !158, !tbaa !159
  ret i32 %len_best.1, !dbg !160
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @lzma_mf_hc3_find(ptr noundef %mf, ptr noundef %matches) local_unnamed_addr #1 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata ptr %mf, metadata !163, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata ptr %matches, metadata !164, metadata !DIExpression()), !dbg !175
  %0 = getelementptr i8, ptr %mf, i64 24, !dbg !176
  %mf.val = load i32, ptr %0, align 8, !dbg !176, !tbaa !110
  %1 = getelementptr i8, ptr %mf, i64 36, !dbg !176
  %mf.val127 = load i32, ptr %1, align 4, !dbg !176, !tbaa !111
  call void @llvm.dbg.value(metadata ptr undef, metadata !112, metadata !DIExpression()), !dbg !177
  %sub.i = sub i32 %mf.val127, %mf.val, !dbg !179
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !165, metadata !DIExpression()), !dbg !175
  %nice_len = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18, !dbg !180
  %2 = load i32, ptr %nice_len, align 8, !dbg !180, !tbaa !106
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !180
  br i1 %cmp.not, label %if.else, label %if.end4, !dbg !176

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 3, !dbg !182
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !180

if.then3:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %mf, metadata !184, metadata !DIExpression()), !dbg !189
  %read_pos.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5, !dbg !192
  %inc.i = add i32 %mf.val, 1, !dbg !193
  store i32 %inc.i, ptr %read_pos.i, align 8, !dbg !193, !tbaa !110
  %pending.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 9, !dbg !194
  %3 = load i32, ptr %pending.i, align 8, !dbg !195, !tbaa !196
  %inc1.i = add i32 %3, 1, !dbg !195
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !195, !tbaa !196
  br label %cleanup75, !dbg !197

if.end4:                                          ; preds = %entry, %if.else
  %len_limit.0 = phi i32 [ %sub.i, %if.else ], [ %2, %entry ], !dbg !175
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !165, metadata !DIExpression()), !dbg !175
  %mf.val128 = load ptr, ptr %mf, align 8, !dbg !176, !tbaa !129
  call void @llvm.dbg.value(metadata ptr undef, metadata !130, metadata !DIExpression()), !dbg !198
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !200
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val128, i64 %idx.ext.i, !dbg !200
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !166, metadata !DIExpression()), !dbg !175
  %read_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5, !dbg !176
  %offset = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 4, !dbg !176
  %4 = load i32, ptr %offset, align 4, !dbg !176, !tbaa !201
  %add = add i32 %4, %mf.val, !dbg !176
  call void @llvm.dbg.value(metadata i32 %add, metadata !167, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i32 0, metadata !168, metadata !DIExpression()), !dbg !175
  %5 = load i8, ptr %add.ptr.i, align 1, !dbg !202, !tbaa !147
  %idxprom = zext i8 %5 to i64, !dbg !202
  %arrayidx6 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !202
  %6 = load i32, ptr %arrayidx6, align 4, !dbg !202, !tbaa !156
  %arrayidx7 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !202
  %7 = load i8, ptr %arrayidx7, align 1, !dbg !202, !tbaa !147
  %conv = zext i8 %7 to i32, !dbg !202
  %xor = xor i32 %6, %conv, !dbg !202
  call void @llvm.dbg.value(metadata i32 %xor, metadata !169, metadata !DIExpression()), !dbg !175
  %and = and i32 %xor, 1023, !dbg !202
  call void @llvm.dbg.value(metadata i32 %and, metadata !170, metadata !DIExpression()), !dbg !175
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !202
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !202, !tbaa !147
  %conv9 = zext i8 %8 to i32, !dbg !202
  %shl = shl nuw nsw i32 %conv9, 8, !dbg !202
  %xor10 = xor i32 %shl, %xor, !dbg !202
  %hash_mask = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 16, !dbg !202
  %9 = load i32, ptr %hash_mask, align 8, !dbg !202, !tbaa !203
  %and11 = and i32 %xor10, %9, !dbg !202
  call void @llvm.dbg.value(metadata i32 %and11, metadata !171, metadata !DIExpression()), !dbg !175
  %hash = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 12, !dbg !204
  %10 = load ptr, ptr %hash, align 8, !dbg !204, !tbaa !205
  %idxprom12 = zext i32 %and to i64, !dbg !206
  %arrayidx13 = getelementptr inbounds i32, ptr %10, i64 %idxprom12, !dbg !206
  %11 = load i32, ptr %arrayidx13, align 4, !dbg !206, !tbaa !156
  %sub = sub i32 %add, %11, !dbg !207
  call void @llvm.dbg.value(metadata i32 %sub, metadata !172, metadata !DIExpression()), !dbg !175
  %add15 = add i32 %and11, 1024, !dbg !208
  %idxprom16 = zext i32 %add15 to i64, !dbg !209
  %arrayidx17 = getelementptr inbounds i32, ptr %10, i64 %idxprom16, !dbg !209
  %12 = load i32, ptr %arrayidx17, align 4, !dbg !209, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %12, metadata !173, metadata !DIExpression()), !dbg !175
  store i32 %add, ptr %arrayidx13, align 4, !dbg !210, !tbaa !156
  store i32 %add, ptr %arrayidx17, align 4, !dbg !211, !tbaa !156
  call void @llvm.dbg.value(metadata i32 2, metadata !174, metadata !DIExpression()), !dbg !175
  %cyclic_size = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 15, !dbg !212
  %13 = load i32, ptr %cyclic_size, align 4, !dbg !212, !tbaa !214
  %cmp25 = icmp ult i32 %sub, %13, !dbg !215
  br i1 %cmp25, label %land.lhs.true, label %do.body57, !dbg !216

land.lhs.true:                                    ; preds = %if.end4
  %idx.ext = zext i32 %sub to i64, !dbg !217
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !217
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg, !dbg !217
  %14 = load i8, ptr %add.ptr, align 1, !dbg !218, !tbaa !147
  %15 = load i8, ptr %add.ptr.i, align 1, !dbg !219, !tbaa !147
  %cmp29 = icmp eq i8 %14, %15, !dbg !220
  br i1 %cmp29, label %for.cond.preheader, label %do.body57, !dbg !221

for.cond.preheader:                               ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32 2, metadata !174, metadata !DIExpression()), !dbg !175
  %cmp32.not171 = icmp eq i32 %len_limit.0, 2, !dbg !222
  br i1 %cmp32.not171, label %do.body, label %for.body, !dbg !226

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %len_best.0172 = phi i32 [ %inc, %for.inc ], [ 2, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i32 %len_best.0172, metadata !174, metadata !DIExpression()), !dbg !175
  %idx.ext34 = zext i32 %len_best.0172 to i64, !dbg !227
  %add.ptr35 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext34, !dbg !227
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr35, i64 %idx.neg, !dbg !229
  %16 = load i8, ptr %add.ptr38, align 1, !dbg !230, !tbaa !147
  %17 = load i8, ptr %add.ptr35, align 1, !dbg !231, !tbaa !147
  %cmp43.not = icmp eq i8 %16, %17, !dbg !232
  br i1 %cmp43.not, label %for.inc, label %for.end, !dbg !233

for.inc:                                          ; preds = %for.body
  %inc = add i32 %len_best.0172, 1, !dbg !234
  call void @llvm.dbg.value(metadata i32 %inc, metadata !174, metadata !DIExpression()), !dbg !175
  %cmp32.not = icmp eq i32 %inc, %len_limit.0, !dbg !222
  br i1 %cmp32.not, label %do.body, label %for.body, !dbg !226, !llvm.loop !235

for.end:                                          ; preds = %for.body
  store i32 %len_best.0172, ptr %matches, align 4, !dbg !237, !tbaa !103
  %sub48 = add i32 %sub, -1, !dbg !238
  %dist = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 0, i32 1, !dbg !239
  store i32 %sub48, ptr %dist, align 4, !dbg !240, !tbaa !140
  call void @llvm.dbg.value(metadata i32 1, metadata !168, metadata !DIExpression()), !dbg !175
  br label %do.body57

do.body:                                          ; preds = %for.inc, %for.cond.preheader
  store i32 %len_limit.0, ptr %matches, align 4, !dbg !237, !tbaa !103
  %sub48166 = add i32 %sub, -1, !dbg !238
  %dist167 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 0, i32 1, !dbg !239
  store i32 %sub48166, ptr %dist167, align 4, !dbg !240, !tbaa !140
  call void @llvm.dbg.value(metadata i32 1, metadata !168, metadata !DIExpression()), !dbg !175
  %son = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13, !dbg !241
  %18 = load ptr, ptr %son, align 8, !dbg !241, !tbaa !245
  %cyclic_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14, !dbg !241
  %19 = load i32, ptr %cyclic_pos, align 8, !dbg !241, !tbaa !246
  %idxprom53 = zext i32 %19 to i64, !dbg !241
  %arrayidx54 = getelementptr inbounds i32, ptr %18, i64 %idxprom53, !dbg !241
  store i32 %12, ptr %arrayidx54, align 4, !dbg !241, !tbaa !156
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !250
  %20 = load i32, ptr %cyclic_pos, align 8, !dbg !252, !tbaa !246
  %inc.i130 = add i32 %20, 1, !dbg !252
  %21 = load i32, ptr %cyclic_size, align 4, !dbg !254, !tbaa !214
  %cmp.i = icmp eq i32 %inc.i130, %21, !dbg !255
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i130, !dbg !256
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !250
  %22 = load i32, ptr %read_pos, align 8, !dbg !257, !tbaa !110
  %inc2.i = add i32 %22, 1, !dbg !257
  store i32 %inc2.i, ptr %read_pos, align 8, !dbg !257, !tbaa !110
  %23 = load i32, ptr %offset, align 4, !dbg !258, !tbaa !201
  %add.i = add i32 %23, %inc2.i, !dbg !258
  %cmp4.i = icmp eq i32 %add.i, -1, !dbg !258
  br i1 %cmp4.i, label %if.then5.i, label %cleanup75, !dbg !260

if.then5.i:                                       ; preds = %do.body
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !269
  %sub.i.i = xor i32 %21, -1, !dbg !271
  call void @llvm.dbg.value(metadata i32 %sub.i.i, metadata !264, metadata !DIExpression()) #3, !dbg !269
  %hash_size_sum.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21, !dbg !272
  %24 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !272, !tbaa !273
  %sons_count.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22, !dbg !274
  %25 = load i32, ptr %sons_count.i.i, align 8, !dbg !274, !tbaa !275
  %add.i.i = add i32 %25, %24, !dbg !276
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !265, metadata !DIExpression()) #3, !dbg !269
  call void @llvm.dbg.value(metadata ptr %10, metadata !266, metadata !DIExpression()) #3, !dbg !269
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !277
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !278
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !280

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !278
  br label %for.body.i.i, !dbg !280

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !277
  %arrayidx.i.i = getelementptr inbounds i32, ptr %10, i64 %indvars.iv.i.i, !dbg !281
  %26 = load i32, ptr %arrayidx.i.i, align 4, !dbg !281, !tbaa !156
  %27 = tail call i32 @llvm.usub.sat.i32(i32 %26, i32 %sub.i.i) #3, !dbg !284
  store i32 %27, ptr %arrayidx.i.i, align 4, !dbg !285, !tbaa !156
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !286
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !277
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !278
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !280, !llvm.loop !287

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i
  %.pre.i = load i32, ptr %offset, align 4, !dbg !289, !tbaa !201
  br label %normalize.exit.i, !dbg !289

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %28 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %23, %if.then5.i ], !dbg !289
  %sub8.i.i = sub i32 %28, %sub.i.i, !dbg !289
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !289, !tbaa !201
  br label %cleanup75, !dbg !290

do.body57:                                        ; preds = %for.end, %if.end4, %land.lhs.true
  %matches_count.0 = phi i64 [ 1, %for.end ], [ 0, %land.lhs.true ], [ 0, %if.end4 ]
  %len_best.1 = phi i32 [ %len_best.0172, %for.end ], [ 2, %land.lhs.true ], [ 2, %if.end4 ], !dbg !291
  call void @llvm.dbg.value(metadata i32 %len_best.1, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i32 undef, metadata !168, metadata !DIExpression()), !dbg !175
  %depth = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 17, !dbg !292
  %29 = load i32, ptr %depth, align 4, !dbg !292, !tbaa !294
  %son58 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13, !dbg !292
  %30 = load ptr, ptr %son58, align 8, !dbg !292, !tbaa !245
  %cyclic_pos59 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14, !dbg !292
  %31 = load i32, ptr %cyclic_pos59, align 8, !dbg !292, !tbaa !246
  %add.ptr62 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %matches_count.0, !dbg !292
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !295, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %add, metadata !302, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !303, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %12, metadata !304, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %29, metadata !305, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata ptr %30, metadata !306, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %31, metadata !307, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %13, metadata !308, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata ptr %add.ptr62, metadata !309, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %len_best.1, metadata !310, metadata !DIExpression()), !dbg !317
  %idxprom.i = zext i32 %31 to i64, !dbg !319
  %arrayidx.i = getelementptr inbounds i32, ptr %30, i64 %idxprom.i, !dbg !319
  store i32 %12, ptr %arrayidx.i, align 4, !dbg !320, !tbaa !156
  %sub96.i = sub i32 %add, %12, !dbg !321
  call void @llvm.dbg.value(metadata i32 %sub96.i, metadata !311, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 %29, metadata !305, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !317
  %cmp98.i = icmp ne i32 %29, 0, !dbg !323
  %cmp1.not99.i = icmp ult i32 %sub96.i, %13
  %or.cond100.i = and i1 %cmp1.not99.i, %cmp98.i, !dbg !325
  br i1 %or.cond100.i, label %if.end.preheader.i, label %hc_find_func.exit, !dbg !325

if.end.preheader.i:                               ; preds = %do.body57
  %32 = add i32 %len_limit.0, -1, !dbg !326
  %wide.trip.count.i = zext i32 %32 to i64
  br label %if.end.i, !dbg !326

if.end.i:                                         ; preds = %cleanup46.i, %if.end.preheader.i
  %dec104.in.i = phi i32 [ %dec104.i, %cleanup46.i ], [ %29, %if.end.preheader.i ]
  %sub103.i = phi i32 [ %sub.i135, %cleanup46.i ], [ %sub96.i, %if.end.preheader.i ]
  %len_best.addr.0102.i = phi i32 [ %len_best.addr.5.i, %cleanup46.i ], [ %len_best.1, %if.end.preheader.i ]
  %matches.addr.0101.i = phi ptr [ %matches.addr.5.i, %cleanup46.i ], [ %add.ptr62, %if.end.preheader.i ]
  %dec104.i = add i32 %dec104.in.i, -1, !dbg !327
  call void @llvm.dbg.value(metadata i32 %len_best.addr.0102.i, metadata !310, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata ptr %matches.addr.0101.i, metadata !309, metadata !DIExpression()), !dbg !317
  %idx.ext.i132 = zext i32 %sub103.i to i64, !dbg !328
  %idx.neg.i = sub nsw i64 0, %idx.ext.i132, !dbg !328
  %add.ptr.i133 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !328
  call void @llvm.dbg.value(metadata ptr %add.ptr.i133, metadata !313, metadata !DIExpression()), !dbg !322
  %sub2.i = sub i32 %31, %sub103.i, !dbg !329
  %cmp3.i = icmp ult i32 %31, %sub103.i, !dbg !330
  %spec.select.i = select i1 %cmp3.i, i32 %13, i32 0, !dbg !331
  %add.i134 = add i32 %sub2.i, %spec.select.i, !dbg !332
  %idxprom4.i = zext i32 %add.i134 to i64, !dbg !333
  %arrayidx5.i = getelementptr inbounds i32, ptr %30, i64 %idxprom4.i, !dbg !333
  %33 = load i32, ptr %arrayidx5.i, align 4, !dbg !333, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %33, metadata !304, metadata !DIExpression()), !dbg !317
  %idxprom6.i = zext i32 %len_best.addr.0102.i to i64, !dbg !334
  %arrayidx7.i = getelementptr inbounds i8, ptr %add.ptr.i133, i64 %idxprom6.i, !dbg !334
  %34 = load i8, ptr %arrayidx7.i, align 1, !dbg !334, !tbaa !147
  %arrayidx9.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom6.i, !dbg !335
  %35 = load i8, ptr %arrayidx9.i, align 1, !dbg !335, !tbaa !147
  %cmp11.i = icmp eq i8 %34, %35, !dbg !336
  br i1 %cmp11.i, label %land.lhs.true.i, label %cleanup46.i, !dbg !326

land.lhs.true.i:                                  ; preds = %if.end.i
  %36 = load i8, ptr %add.ptr.i133, align 1, !dbg !337, !tbaa !147
  %37 = load i8, ptr %add.ptr.i, align 1, !dbg !338, !tbaa !147
  %cmp17.i = icmp eq i8 %36, %37, !dbg !339
  br i1 %cmp17.i, label %while.cond20.i, label %cleanup46.i, !dbg !340

while.cond20.i:                                   ; preds = %land.lhs.true.i, %while.body23.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.body23.i ], [ 0, %land.lhs.true.i ], !dbg !341
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !314, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !341
  %exitcond.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i, !dbg !342
  br i1 %exitcond.i, label %while.end.i, label %while.body23.i, !dbg !343

while.body23.i:                                   ; preds = %while.cond20.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !344
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !314, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !341
  %idxprom24.i = and i64 %indvars.iv.next.i, 4294967295, !dbg !345
  %arrayidx25.i = getelementptr inbounds i8, ptr %add.ptr.i133, i64 %idxprom24.i, !dbg !345
  %38 = load i8, ptr %arrayidx25.i, align 1, !dbg !345, !tbaa !147
  %arrayidx28.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom24.i, !dbg !347
  %39 = load i8, ptr %arrayidx28.i, align 1, !dbg !347, !tbaa !147
  %cmp30.not.i = icmp eq i8 %38, %39, !dbg !348
  br i1 %cmp30.not.i, label %while.cond20.i, label %while.end.thread.i, !dbg !349, !llvm.loop !350

while.end.i:                                      ; preds = %while.cond20.i
  %cmp34.i = icmp ult i32 %len_best.addr.0102.i, %len_limit.0, !dbg !352
  br i1 %cmp34.i, label %cleanup.i, label %cleanup46.i, !dbg !354

while.end.thread.i:                               ; preds = %while.body23.i
  %indvars.le.i = trunc i64 %indvars.iv.next.i to i32, !dbg !344
  %cmp3478.i = icmp ult i32 %len_best.addr.0102.i, %indvars.le.i, !dbg !352
  br i1 %cmp3478.i, label %if.then36.thread.i, label %cleanup46.i, !dbg !354

if.then36.thread.i:                               ; preds = %while.end.thread.i
  call void @llvm.dbg.value(metadata i32 %indvars.le.i, metadata !310, metadata !DIExpression()), !dbg !317
  store i32 %indvars.le.i, ptr %matches.addr.0101.i, align 4, !dbg !355, !tbaa !103
  %sub3879.i = add i32 %sub103.i, -1, !dbg !357
  %dist80.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0101.i, i64 0, i32 1, !dbg !358
  store i32 %sub3879.i, ptr %dist80.i, align 4, !dbg !359, !tbaa !140
  %incdec.ptr81.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0101.i, i64 1, !dbg !360
  br label %cleanup46.i, !dbg !361

cleanup.i:                                        ; preds = %while.end.i
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !310, metadata !DIExpression()), !dbg !317
  store i32 %len_limit.0, ptr %matches.addr.0101.i, align 4, !dbg !355, !tbaa !103
  %sub38.i = add i32 %sub103.i, -1, !dbg !357
  %dist.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0101.i, i64 0, i32 1, !dbg !358
  store i32 %sub38.i, ptr %dist.i, align 4, !dbg !359, !tbaa !140
  %incdec.ptr.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0101.i, i64 1, !dbg !360
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !309, metadata !DIExpression()), !dbg !317
  br label %hc_find_func.exit

cleanup46.i:                                      ; preds = %if.then36.thread.i, %while.end.thread.i, %while.end.i, %land.lhs.true.i, %if.end.i
  %matches.addr.5.i = phi ptr [ %matches.addr.0101.i, %land.lhs.true.i ], [ %matches.addr.0101.i, %if.end.i ], [ %incdec.ptr81.i, %if.then36.thread.i ], [ %matches.addr.0101.i, %while.end.thread.i ], [ %matches.addr.0101.i, %while.end.i ]
  %len_best.addr.5.i = phi i32 [ %len_best.addr.0102.i, %land.lhs.true.i ], [ %len_best.addr.0102.i, %if.end.i ], [ %indvars.le.i, %if.then36.thread.i ], [ %len_best.addr.0102.i, %while.end.thread.i ], [ %len_best.addr.0102.i, %while.end.i ]
  call void @llvm.dbg.value(metadata i32 %33, metadata !304, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %len_best.addr.5.i, metadata !310, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata ptr %matches.addr.5.i, metadata !309, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %dec104.i, metadata !305, metadata !DIExpression()), !dbg !317
  %sub.i135 = sub i32 %add, %33, !dbg !321
  call void @llvm.dbg.value(metadata i32 %sub.i135, metadata !311, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 %dec104.i, metadata !305, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !317
  %cmp.i136 = icmp ne i32 %dec104.i, 0, !dbg !323
  %cmp1.not.i = icmp ult i32 %sub.i135, %13
  %or.cond.i = select i1 %cmp.i136, i1 %cmp1.not.i, i1 false, !dbg !325
  br i1 %or.cond.i, label %if.end.i, label %hc_find_func.exit, !dbg !325

hc_find_func.exit:                                ; preds = %cleanup46.i, %do.body57, %cleanup.i
  %retval.4.ph.i = phi ptr [ %incdec.ptr.i, %cleanup.i ], [ %add.ptr62, %do.body57 ], [ %matches.addr.5.i, %cleanup46.i ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !309, metadata !DIExpression()), !dbg !317
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.4.ph.i to i64, !dbg !292
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64, !dbg !292
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !292
  %40 = lshr exact i64 %sub.ptr.sub, 3, !dbg !292
  %conv64 = trunc i64 %40 to i32, !dbg !292
  call void @llvm.dbg.value(metadata i32 %conv64, metadata !168, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !362
  %41 = load i32, ptr %cyclic_pos59, align 8, !dbg !364, !tbaa !246
  %inc.i138 = add i32 %41, 1, !dbg !364
  %42 = load i32, ptr %cyclic_size, align 4, !dbg !365, !tbaa !214
  %cmp.i140 = icmp eq i32 %inc.i138, %42, !dbg !366
  %spec.store.select.i141 = select i1 %cmp.i140, i32 0, i32 %inc.i138, !dbg !367
  store i32 %spec.store.select.i141, ptr %cyclic_pos59, align 8, !dbg !362
  %43 = load i32, ptr %read_pos, align 8, !dbg !368, !tbaa !110
  %inc2.i143 = add i32 %43, 1, !dbg !368
  store i32 %inc2.i143, ptr %read_pos, align 8, !dbg !368, !tbaa !110
  %44 = load i32, ptr %offset, align 4, !dbg !369, !tbaa !201
  %add.i145 = add i32 %44, %inc2.i143, !dbg !369
  %cmp4.i146 = icmp eq i32 %add.i145, -1, !dbg !369
  br i1 %cmp4.i146, label %if.then5.i153, label %cleanup75, !dbg !370

if.then5.i153:                                    ; preds = %hc_find_func.exit
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !371
  %sub.i.i147 = xor i32 %42, -1, !dbg !373
  call void @llvm.dbg.value(metadata i32 %sub.i.i147, metadata !264, metadata !DIExpression()) #3, !dbg !371
  %hash_size_sum.i.i148 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21, !dbg !374
  %45 = load i32, ptr %hash_size_sum.i.i148, align 4, !dbg !374, !tbaa !273
  %sons_count.i.i149 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22, !dbg !375
  %46 = load i32, ptr %sons_count.i.i149, align 8, !dbg !375, !tbaa !275
  %add.i.i150 = add i32 %46, %45, !dbg !376
  call void @llvm.dbg.value(metadata i32 %add.i.i150, metadata !265, metadata !DIExpression()) #3, !dbg !371
  call void @llvm.dbg.value(metadata ptr %10, metadata !266, metadata !DIExpression()) #3, !dbg !371
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !377
  %cmp21.not.i.i152 = icmp eq i32 %add.i.i150, 0, !dbg !378
  br i1 %cmp21.not.i.i152, label %normalize.exit.i164, label %for.body.preheader.i.i155, !dbg !379

for.body.preheader.i.i155:                        ; preds = %if.then5.i153
  %wide.trip.count.i.i154 = zext i32 %add.i.i150 to i64, !dbg !378
  br label %for.body.i.i160, !dbg !379

for.body.i.i160:                                  ; preds = %for.body.i.i160, %for.body.preheader.i.i155
  %indvars.iv.i.i156 = phi i64 [ 0, %for.body.preheader.i.i155 ], [ %indvars.iv.next.i.i158, %for.body.i.i160 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i156, metadata !267, metadata !DIExpression()) #3, !dbg !377
  %arrayidx.i.i157 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv.i.i156, !dbg !380
  %47 = load i32, ptr %arrayidx.i.i157, align 4, !dbg !380, !tbaa !156
  %48 = tail call i32 @llvm.usub.sat.i32(i32 %47, i32 %sub.i.i147) #3, !dbg !381
  store i32 %48, ptr %arrayidx.i.i157, align 4, !dbg !382, !tbaa !156
  %indvars.iv.next.i.i158 = add nuw nsw i64 %indvars.iv.i.i156, 1, !dbg !383
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i158, metadata !267, metadata !DIExpression()) #3, !dbg !377
  %exitcond.not.i.i159 = icmp eq i64 %indvars.iv.next.i.i158, %wide.trip.count.i.i154, !dbg !378
  br i1 %exitcond.not.i.i159, label %normalize.exit.loopexit.i162, label %for.body.i.i160, !dbg !379, !llvm.loop !384

normalize.exit.loopexit.i162:                     ; preds = %for.body.i.i160
  %.pre.i161 = load i32, ptr %offset, align 4, !dbg !386, !tbaa !201
  br label %normalize.exit.i164, !dbg !386

normalize.exit.i164:                              ; preds = %normalize.exit.loopexit.i162, %if.then5.i153
  %49 = phi i32 [ %.pre.i161, %normalize.exit.loopexit.i162 ], [ %44, %if.then5.i153 ], !dbg !386
  %sub8.i.i163 = sub i32 %49, %sub.i.i147, !dbg !386
  store i32 %sub8.i.i163, ptr %offset, align 4, !dbg !386, !tbaa !201
  br label %cleanup75, !dbg !387

cleanup75:                                        ; preds = %normalize.exit.i164, %hc_find_func.exit, %normalize.exit.i, %do.body, %if.then3
  %retval.1 = phi i32 [ 0, %if.then3 ], [ 1, %do.body ], [ 1, %normalize.exit.i ], [ %conv64, %hc_find_func.exit ], [ %conv64, %normalize.exit.i164 ], !dbg !175
  ret i32 %retval.1, !dbg !388
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @lzma_mf_hc3_skip(ptr nocapture noundef %mf, i32 noundef %amount) local_unnamed_addr #1 !dbg !389 {
entry:
  call void @llvm.dbg.value(metadata ptr %mf, metadata !391, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 %amount, metadata !392, metadata !DIExpression()), !dbg !400
  %0 = getelementptr i8, ptr %mf, i64 24
  %1 = getelementptr i8, ptr %mf, i64 36
  %read_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5
  %offset = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 4
  %hash_mask = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 16
  %hash = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 12
  %son = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13
  %cyclic_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14
  %cyclic_size.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 15
  %hash_size_sum.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21
  %sons_count.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22
  %pending.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 9
  br label %do.body, !dbg !401

do.body:                                          ; preds = %do.cond21, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %do.cond21 ]
  call void @llvm.dbg.value(metadata i32 %amount.addr.0, metadata !392, metadata !DIExpression()), !dbg !400
  %mf.val = load i32, ptr %0, align 8, !dbg !402, !tbaa !110
  %mf.val41 = load i32, ptr %1, align 4, !dbg !402, !tbaa !111
  call void @llvm.dbg.value(metadata ptr undef, metadata !112, metadata !DIExpression()), !dbg !404
  %sub.i = sub i32 %mf.val41, %mf.val, !dbg !406
  %cmp = icmp ult i32 %sub.i, 3, !dbg !407
  br i1 %cmp, label %if.then, label %if.end, !dbg !408

if.then:                                          ; preds = %do.body
  call void @llvm.dbg.value(metadata ptr %mf, metadata !184, metadata !DIExpression()), !dbg !409
  %inc.i = add i32 %mf.val, 1, !dbg !412
  store i32 %inc.i, ptr %read_pos, align 8, !dbg !412, !tbaa !110
  %2 = load i32, ptr %pending.i, align 8, !dbg !413, !tbaa !196
  %inc1.i = add i32 %2, 1, !dbg !413
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !413, !tbaa !196
  br label %do.cond21, !dbg !414

if.end:                                           ; preds = %do.body
  %mf.val42 = load ptr, ptr %mf, align 8, !dbg !415, !tbaa !129
  call void @llvm.dbg.value(metadata ptr undef, metadata !130, metadata !DIExpression()), !dbg !416
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !418
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val42, i64 %idx.ext.i, !dbg !418
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !393, metadata !DIExpression()), !dbg !419
  %3 = load i32, ptr %offset, align 4, !dbg !420, !tbaa !201
  %add = add i32 %3, %mf.val, !dbg !421
  call void @llvm.dbg.value(metadata i32 %add, metadata !395, metadata !DIExpression()), !dbg !419
  %4 = load i8, ptr %add.ptr.i, align 1, !dbg !422, !tbaa !147
  %idxprom = zext i8 %4 to i64, !dbg !422
  %arrayidx2 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !422
  %5 = load i32, ptr %arrayidx2, align 4, !dbg !422, !tbaa !156
  %arrayidx3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !422
  %6 = load i8, ptr %arrayidx3, align 1, !dbg !422, !tbaa !147
  %conv = zext i8 %6 to i32, !dbg !422
  %xor = xor i32 %5, %conv, !dbg !422
  call void @llvm.dbg.value(metadata i32 %xor, metadata !396, metadata !DIExpression()), !dbg !419
  %and = and i32 %xor, 1023, !dbg !422
  call void @llvm.dbg.value(metadata i32 %and, metadata !397, metadata !DIExpression()), !dbg !419
  %arrayidx4 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !422
  %7 = load i8, ptr %arrayidx4, align 1, !dbg !422, !tbaa !147
  %conv5 = zext i8 %7 to i32, !dbg !422
  %shl = shl nuw nsw i32 %conv5, 8, !dbg !422
  %xor6 = xor i32 %shl, %xor, !dbg !422
  %8 = load i32, ptr %hash_mask, align 8, !dbg !422, !tbaa !203
  %and7 = and i32 %xor6, %8, !dbg !422
  call void @llvm.dbg.value(metadata i32 %and7, metadata !398, metadata !DIExpression()), !dbg !419
  %9 = load ptr, ptr %hash, align 8, !dbg !423, !tbaa !205
  %add8 = add i32 %and7, 1024, !dbg !424
  %idxprom9 = zext i32 %add8 to i64, !dbg !425
  %arrayidx10 = getelementptr inbounds i32, ptr %9, i64 %idxprom9, !dbg !425
  %10 = load i32, ptr %arrayidx10, align 4, !dbg !425, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %10, metadata !399, metadata !DIExpression()), !dbg !419
  %idxprom12 = zext i32 %and to i64, !dbg !426
  %arrayidx13 = getelementptr inbounds i32, ptr %9, i64 %idxprom12, !dbg !426
  store i32 %add, ptr %arrayidx13, align 4, !dbg !427, !tbaa !156
  store i32 %add, ptr %arrayidx10, align 4, !dbg !428, !tbaa !156
  %11 = load ptr, ptr %son, align 8, !dbg !429, !tbaa !245
  %12 = load i32, ptr %cyclic_pos, align 8, !dbg !429, !tbaa !246
  %idxprom19 = zext i32 %12 to i64, !dbg !429
  %arrayidx20 = getelementptr inbounds i32, ptr %11, i64 %idxprom19, !dbg !429
  store i32 %10, ptr %arrayidx20, align 4, !dbg !429, !tbaa !156
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !431
  %13 = load i32, ptr %cyclic_pos, align 8, !dbg !433, !tbaa !246
  %inc.i44 = add i32 %13, 1, !dbg !433
  %14 = load i32, ptr %cyclic_size.i, align 4, !dbg !434, !tbaa !214
  %cmp.i = icmp eq i32 %inc.i44, %14, !dbg !435
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i44, !dbg !436
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !431
  %15 = load i32, ptr %read_pos, align 8, !dbg !437, !tbaa !110
  %inc2.i = add i32 %15, 1, !dbg !437
  store i32 %inc2.i, ptr %read_pos, align 8, !dbg !437, !tbaa !110
  %16 = load i32, ptr %offset, align 4, !dbg !438, !tbaa !201
  %add.i = add i32 %16, %inc2.i, !dbg !438
  %cmp4.i = icmp eq i32 %add.i, -1, !dbg !438
  br i1 %cmp4.i, label %if.then5.i, label %do.cond21, !dbg !439

if.then5.i:                                       ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !440
  %sub.i.i = xor i32 %14, -1, !dbg !442
  call void @llvm.dbg.value(metadata i32 %sub.i.i, metadata !264, metadata !DIExpression()) #3, !dbg !440
  %17 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !443, !tbaa !273
  %18 = load i32, ptr %sons_count.i.i, align 8, !dbg !444, !tbaa !275
  %add.i.i = add i32 %18, %17, !dbg !445
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !265, metadata !DIExpression()) #3, !dbg !440
  call void @llvm.dbg.value(metadata ptr %9, metadata !266, metadata !DIExpression()) #3, !dbg !440
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !446
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !447
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !448

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !447
  br label %for.body.i.i, !dbg !448

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !446
  %arrayidx.i.i = getelementptr inbounds i32, ptr %9, i64 %indvars.iv.i.i, !dbg !449
  %19 = load i32, ptr %arrayidx.i.i, align 4, !dbg !449, !tbaa !156
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %19, i32 %sub.i.i) #3, !dbg !450
  store i32 %20, ptr %arrayidx.i.i, align 4, !dbg !451, !tbaa !156
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !452
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !446
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !447
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !448, !llvm.loop !453

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i
  %.pre.i = load i32, ptr %offset, align 4, !dbg !455, !tbaa !201
  br label %normalize.exit.i, !dbg !455

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %21 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %16, %if.then5.i ], !dbg !455
  %sub8.i.i = sub i32 %21, %sub.i.i, !dbg !455
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !455, !tbaa !201
  br label %do.cond21, !dbg !456

do.cond21:                                        ; preds = %normalize.exit.i, %if.end, %if.then
  %dec = add i32 %amount.addr.0, -1, !dbg !457
  call void @llvm.dbg.value(metadata i32 %dec, metadata !392, metadata !DIExpression()), !dbg !400
  %cmp22.not = icmp eq i32 %dec, 0, !dbg !458
  br i1 %cmp22.not, label %do.end24, label %do.body, !dbg !459, !llvm.loop !460

do.end24:                                         ; preds = %do.cond21
  ret void, !dbg !462
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @lzma_mf_hc4_find(ptr noundef %mf, ptr noundef %matches) local_unnamed_addr #1 !dbg !463 {
entry:
  call void @llvm.dbg.value(metadata ptr %mf, metadata !465, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata ptr %matches, metadata !466, metadata !DIExpression()), !dbg !479
  %0 = getelementptr i8, ptr %mf, i64 24, !dbg !480
  %mf.val = load i32, ptr %0, align 8, !dbg !480, !tbaa !110
  %1 = getelementptr i8, ptr %mf, i64 36, !dbg !480
  %mf.val204 = load i32, ptr %1, align 4, !dbg !480, !tbaa !111
  call void @llvm.dbg.value(metadata ptr undef, metadata !112, metadata !DIExpression()), !dbg !481
  %sub.i = sub i32 %mf.val204, %mf.val, !dbg !483
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !467, metadata !DIExpression()), !dbg !479
  %nice_len = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18, !dbg !484
  %2 = load i32, ptr %nice_len, align 8, !dbg !484, !tbaa !106
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !484
  br i1 %cmp.not, label %if.else, label %if.end4, !dbg !480

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 4, !dbg !486
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !484

if.then3:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %mf, metadata !184, metadata !DIExpression()), !dbg !488
  %read_pos.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5, !dbg !491
  %inc.i = add i32 %mf.val, 1, !dbg !492
  store i32 %inc.i, ptr %read_pos.i, align 8, !dbg !492, !tbaa !110
  %pending.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 9, !dbg !493
  %3 = load i32, ptr %pending.i, align 8, !dbg !494, !tbaa !196
  %inc1.i = add i32 %3, 1, !dbg !494
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !494, !tbaa !196
  br label %cleanup129, !dbg !495

if.end4:                                          ; preds = %entry, %if.else
  %len_limit.0 = phi i32 [ %sub.i, %if.else ], [ %2, %entry ], !dbg !479
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !467, metadata !DIExpression()), !dbg !479
  %mf.val205 = load ptr, ptr %mf, align 8, !dbg !480, !tbaa !129
  call void @llvm.dbg.value(metadata ptr undef, metadata !130, metadata !DIExpression()), !dbg !496
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !498
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val205, i64 %idx.ext.i, !dbg !498
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !468, metadata !DIExpression()), !dbg !479
  %read_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5, !dbg !480
  %offset = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 4, !dbg !480
  %4 = load i32, ptr %offset, align 4, !dbg !480, !tbaa !201
  %add = add i32 %4, %mf.val, !dbg !480
  call void @llvm.dbg.value(metadata i32 %add, metadata !469, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 0, metadata !470, metadata !DIExpression()), !dbg !479
  %5 = load i8, ptr %add.ptr.i, align 1, !dbg !499, !tbaa !147
  %idxprom = zext i8 %5 to i64, !dbg !499
  %arrayidx6 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !499
  %6 = load i32, ptr %arrayidx6, align 4, !dbg !499, !tbaa !156
  %arrayidx7 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !499
  %7 = load i8, ptr %arrayidx7, align 1, !dbg !499, !tbaa !147
  %conv = zext i8 %7 to i32, !dbg !499
  %xor = xor i32 %6, %conv, !dbg !499
  call void @llvm.dbg.value(metadata i32 %xor, metadata !471, metadata !DIExpression()), !dbg !479
  %and = and i32 %xor, 1023, !dbg !499
  call void @llvm.dbg.value(metadata i32 %and, metadata !472, metadata !DIExpression()), !dbg !479
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !499
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !499, !tbaa !147
  %conv9 = zext i8 %8 to i32, !dbg !499
  %shl = shl nuw nsw i32 %conv9, 8, !dbg !499
  %xor10 = xor i32 %shl, %xor, !dbg !499
  %and11 = and i32 %xor10, 65535, !dbg !499
  call void @llvm.dbg.value(metadata i32 %and11, metadata !473, metadata !DIExpression()), !dbg !479
  %arrayidx16 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3, !dbg !499
  %9 = load i8, ptr %arrayidx16, align 1, !dbg !499, !tbaa !147
  %idxprom17 = zext i8 %9 to i64, !dbg !499
  %arrayidx18 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom17, !dbg !499
  %10 = load i32, ptr %arrayidx18, align 4, !dbg !499, !tbaa !156
  %shl19 = shl i32 %10, 5, !dbg !499
  %xor20 = xor i32 %xor10, %shl19, !dbg !499
  %hash_mask = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 16, !dbg !499
  %11 = load i32, ptr %hash_mask, align 8, !dbg !499, !tbaa !203
  %and21 = and i32 %xor20, %11, !dbg !499
  call void @llvm.dbg.value(metadata i32 %and21, metadata !474, metadata !DIExpression()), !dbg !479
  %hash = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 12, !dbg !500
  %12 = load ptr, ptr %hash, align 8, !dbg !500, !tbaa !205
  %idxprom22 = zext i32 %and to i64, !dbg !501
  %arrayidx23 = getelementptr inbounds i32, ptr %12, i64 %idxprom22, !dbg !501
  %13 = load i32, ptr %arrayidx23, align 4, !dbg !501, !tbaa !156
  %sub = sub i32 %add, %13, !dbg !502
  call void @llvm.dbg.value(metadata i32 %sub, metadata !475, metadata !DIExpression()), !dbg !479
  %add25 = add nuw nsw i32 %and11, 1024, !dbg !503
  %idxprom26 = zext i32 %add25 to i64, !dbg !504
  %arrayidx27 = getelementptr inbounds i32, ptr %12, i64 %idxprom26, !dbg !504
  %14 = load i32, ptr %arrayidx27, align 4, !dbg !504, !tbaa !156
  %sub28 = sub i32 %add, %14, !dbg !505
  call void @llvm.dbg.value(metadata i32 %sub28, metadata !476, metadata !DIExpression()), !dbg !479
  %add30 = add i32 %and21, 66560, !dbg !506
  %idxprom31 = zext i32 %add30 to i64, !dbg !507
  %arrayidx32 = getelementptr inbounds i32, ptr %12, i64 %idxprom31, !dbg !507
  %15 = load i32, ptr %arrayidx32, align 4, !dbg !507, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %15, metadata !477, metadata !DIExpression()), !dbg !479
  store i32 %add, ptr %arrayidx23, align 4, !dbg !508, !tbaa !156
  store i32 %add, ptr %arrayidx27, align 4, !dbg !509, !tbaa !156
  store i32 %add, ptr %arrayidx32, align 4, !dbg !510, !tbaa !156
  call void @llvm.dbg.value(metadata i32 1, metadata !478, metadata !DIExpression()), !dbg !479
  %cyclic_size = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 15, !dbg !511
  %16 = load i32, ptr %cyclic_size, align 4, !dbg !511, !tbaa !214
  %cmp44 = icmp ult i32 %sub, %16, !dbg !513
  br i1 %cmp44, label %land.lhs.true, label %if.end54, !dbg !514

land.lhs.true:                                    ; preds = %if.end4
  %idx.ext = zext i32 %sub to i64, !dbg !515
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !515
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg, !dbg !515
  %17 = load i8, ptr %add.ptr, align 1, !dbg !516, !tbaa !147
  %18 = load i8, ptr %add.ptr.i, align 1, !dbg !517, !tbaa !147
  %cmp48 = icmp eq i8 %17, %18, !dbg !518
  br i1 %cmp48, label %if.then50, label %if.end54, !dbg !519

if.then50:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32 2, metadata !478, metadata !DIExpression()), !dbg !479
  store i32 2, ptr %matches, align 4, !dbg !520, !tbaa !103
  %sub52 = add i32 %sub, -1, !dbg !522
  %dist = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 0, i32 1, !dbg !523
  store i32 %sub52, ptr %dist, align 4, !dbg !524, !tbaa !140
  call void @llvm.dbg.value(metadata i32 1, metadata !470, metadata !DIExpression()), !dbg !479
  br label %if.end54, !dbg !525

if.end54:                                         ; preds = %if.then50, %land.lhs.true, %if.end4
  %cmp75.not = phi i1 [ false, %if.then50 ], [ true, %land.lhs.true ], [ true, %if.end4 ], !dbg !479
  %matches_count.0 = phi i32 [ 1, %if.then50 ], [ 0, %land.lhs.true ], [ 0, %if.end4 ], !dbg !479
  %len_best.0 = phi i32 [ 2, %if.then50 ], [ 1, %land.lhs.true ], [ 1, %if.end4 ], !dbg !479
  call void @llvm.dbg.value(metadata i32 %len_best.0, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 %matches_count.0, metadata !470, metadata !DIExpression()), !dbg !479
  %cmp55.not = icmp ne i32 %14, %13, !dbg !526
  %cmp59 = icmp ult i32 %sub28, %16
  %or.cond = select i1 %cmp55.not, i1 %cmp59, i1 false, !dbg !528
  br i1 %or.cond, label %land.lhs.true61, label %if.end74, !dbg !528

land.lhs.true61:                                  ; preds = %if.end54
  %idx.ext62 = zext i32 %sub28 to i64, !dbg !529
  %idx.neg63 = sub nsw i64 0, %idx.ext62, !dbg !529
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg63, !dbg !529
  %19 = load i8, ptr %add.ptr64, align 1, !dbg !530, !tbaa !147
  %20 = load i8, ptr %add.ptr.i, align 1, !dbg !531, !tbaa !147
  %cmp67 = icmp eq i8 %19, %20, !dbg !532
  br i1 %cmp67, label %if.end74.thread, label %if.end74, !dbg !533

if.end74.thread:                                  ; preds = %land.lhs.true61
  call void @llvm.dbg.value(metadata i32 3, metadata !478, metadata !DIExpression()), !dbg !479
  %sub70 = add i32 %sub28, -1, !dbg !534
  %inc = add nuw nsw i32 %matches_count.0, 1, !dbg !536
  call void @llvm.dbg.value(metadata i32 %inc, metadata !470, metadata !DIExpression()), !dbg !479
  %idxprom71 = zext i32 %matches_count.0 to i64, !dbg !537
  %dist73 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom71, i32 1, !dbg !538
  store i32 %sub70, ptr %dist73, align 4, !dbg !539, !tbaa !140
  call void @llvm.dbg.value(metadata i32 %len_best.0, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 %sub, metadata !475, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 %matches_count.0, metadata !470, metadata !DIExpression()), !dbg !479
  br label %for.cond.preheader, !dbg !540

if.end74:                                         ; preds = %land.lhs.true61, %if.end54
  call void @llvm.dbg.value(metadata i32 %len_best.0, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 %sub, metadata !475, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 %matches_count.0, metadata !470, metadata !DIExpression()), !dbg !479
  br i1 %cmp75.not, label %if.end104, label %for.cond.preheader, !dbg !540

for.cond.preheader:                               ; preds = %if.end74.thread, %if.end74
  %len_best.1262 = phi i32 [ 3, %if.end74.thread ], [ %len_best.0, %if.end74 ]
  %delta2.0261 = phi i32 [ %sub28, %if.end74.thread ], [ %sub, %if.end74 ]
  %matches_count.1258 = phi i32 [ %inc, %if.end74.thread ], [ 1, %if.end74 ]
  call void @llvm.dbg.value(metadata i32 %len_best.0, metadata !478, metadata !DIExpression()), !dbg !479
  %cmp78.not249 = icmp eq i32 %len_best.1262, %len_limit.0, !dbg !541
  br i1 %cmp78.not249, label %do.body, label %for.body.lr.ph, !dbg !546

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext82 = zext i32 %delta2.0261 to i64
  %idx.neg83 = sub nsw i64 0, %idx.ext82
  br label %for.body, !dbg !546

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %len_best.2250 = phi i32 [ %len_best.1262, %for.body.lr.ph ], [ %inc93, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %len_best.2250, metadata !478, metadata !DIExpression()), !dbg !479
  %idx.ext80 = zext i32 %len_best.2250 to i64, !dbg !547
  %add.ptr81 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext80, !dbg !547
  %add.ptr84 = getelementptr inbounds i8, ptr %add.ptr81, i64 %idx.neg83, !dbg !549
  %21 = load i8, ptr %add.ptr84, align 1, !dbg !550, !tbaa !147
  %22 = load i8, ptr %add.ptr81, align 1, !dbg !551, !tbaa !147
  %cmp89.not = icmp eq i8 %21, %22, !dbg !552
  br i1 %cmp89.not, label %for.inc, label %for.end, !dbg !553

for.inc:                                          ; preds = %for.body
  %inc93 = add i32 %len_best.2250, 1, !dbg !554
  call void @llvm.dbg.value(metadata i32 %inc93, metadata !478, metadata !DIExpression()), !dbg !479
  %cmp78.not = icmp eq i32 %inc93, %len_limit.0, !dbg !541
  br i1 %cmp78.not, label %do.body, label %for.body, !dbg !546, !llvm.loop !555

for.end:                                          ; preds = %for.body
  %sub94 = add nsw i32 %matches_count.1258, -1, !dbg !557
  %idxprom95 = zext i32 %sub94 to i64, !dbg !558
  %arrayidx96 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom95, !dbg !558
  store i32 %len_best.2250, ptr %arrayidx96, align 4, !dbg !559, !tbaa !103
  br label %if.end104

do.body:                                          ; preds = %for.inc, %for.cond.preheader
  %sub94243 = add nsw i32 %matches_count.1258, -1, !dbg !557
  %idxprom95244 = zext i32 %sub94243 to i64, !dbg !558
  %arrayidx96245 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom95244, !dbg !558
  store i32 %len_limit.0, ptr %arrayidx96245, align 4, !dbg !559, !tbaa !103
  %son = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13, !dbg !560
  %23 = load ptr, ptr %son, align 8, !dbg !560, !tbaa !245
  %cyclic_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14, !dbg !560
  %24 = load i32, ptr %cyclic_pos, align 8, !dbg !560, !tbaa !246
  %idxprom101 = zext i32 %24 to i64, !dbg !560
  %arrayidx102 = getelementptr inbounds i32, ptr %23, i64 %idxprom101, !dbg !560
  store i32 %15, ptr %arrayidx102, align 4, !dbg !560, !tbaa !156
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !564
  %25 = load i32, ptr %cyclic_pos, align 8, !dbg !566, !tbaa !246
  %inc.i207 = add i32 %25, 1, !dbg !566
  %26 = load i32, ptr %cyclic_size, align 4, !dbg !567, !tbaa !214
  %cmp.i = icmp eq i32 %inc.i207, %26, !dbg !568
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i207, !dbg !569
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !564
  %27 = load i32, ptr %read_pos, align 8, !dbg !570, !tbaa !110
  %inc2.i = add i32 %27, 1, !dbg !570
  store i32 %inc2.i, ptr %read_pos, align 8, !dbg !570, !tbaa !110
  %28 = load i32, ptr %offset, align 4, !dbg !571, !tbaa !201
  %add.i = add i32 %28, %inc2.i, !dbg !571
  %cmp4.i = icmp eq i32 %add.i, -1, !dbg !571
  br i1 %cmp4.i, label %if.then5.i, label %cleanup129, !dbg !572

if.then5.i:                                       ; preds = %do.body
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !573
  %sub.i.i = xor i32 %26, -1, !dbg !575
  call void @llvm.dbg.value(metadata i32 %sub.i.i, metadata !264, metadata !DIExpression()) #3, !dbg !573
  %hash_size_sum.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21, !dbg !576
  %29 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !576, !tbaa !273
  %sons_count.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22, !dbg !577
  %30 = load i32, ptr %sons_count.i.i, align 8, !dbg !577, !tbaa !275
  %add.i.i = add i32 %30, %29, !dbg !578
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !265, metadata !DIExpression()) #3, !dbg !573
  call void @llvm.dbg.value(metadata ptr %12, metadata !266, metadata !DIExpression()) #3, !dbg !573
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !579
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !580
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !581

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !580
  br label %for.body.i.i, !dbg !581

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !579
  %arrayidx.i.i = getelementptr inbounds i32, ptr %12, i64 %indvars.iv.i.i, !dbg !582
  %31 = load i32, ptr %arrayidx.i.i, align 4, !dbg !582, !tbaa !156
  %32 = tail call i32 @llvm.usub.sat.i32(i32 %31, i32 %sub.i.i) #3, !dbg !583
  store i32 %32, ptr %arrayidx.i.i, align 4, !dbg !584, !tbaa !156
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !585
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !579
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !580
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !581, !llvm.loop !586

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i
  %.pre.i = load i32, ptr %offset, align 4, !dbg !588, !tbaa !201
  br label %normalize.exit.i, !dbg !588

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %33 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %28, %if.then5.i ], !dbg !588
  %sub8.i.i = sub i32 %33, %sub.i.i, !dbg !588
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !588, !tbaa !201
  br label %cleanup129, !dbg !589

if.end104:                                        ; preds = %for.end, %if.end74
  %matches_count.1259 = phi i32 [ %matches_count.1258, %for.end ], [ 0, %if.end74 ]
  %len_best.3 = phi i32 [ %len_best.2250, %for.end ], [ %len_best.0, %if.end74 ], !dbg !590
  call void @llvm.dbg.value(metadata i32 undef, metadata !478, metadata !DIExpression()), !dbg !479
  %depth = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 17, !dbg !591
  %34 = load i32, ptr %depth, align 4, !dbg !591, !tbaa !294
  %son110 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13, !dbg !591
  %35 = load ptr, ptr %son110, align 8, !dbg !591, !tbaa !245
  %cyclic_pos111 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14, !dbg !591
  %36 = load i32, ptr %cyclic_pos111, align 8, !dbg !591, !tbaa !246
  %idx.ext113 = zext i32 %matches_count.1259 to i64, !dbg !591
  %add.ptr114 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idx.ext113, !dbg !591
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !295, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 %add, metadata !302, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !303, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 %15, metadata !304, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 %34, metadata !305, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata ptr %35, metadata !306, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 %36, metadata !307, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 %16, metadata !308, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata ptr %add.ptr114, metadata !309, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 undef, metadata !310, metadata !DIExpression()), !dbg !593
  %idxprom.i = zext i32 %36 to i64, !dbg !595
  %arrayidx.i = getelementptr inbounds i32, ptr %35, i64 %idxprom.i, !dbg !595
  store i32 %15, ptr %arrayidx.i, align 4, !dbg !596, !tbaa !156
  %sub96.i = sub i32 %add, %15, !dbg !597
  call void @llvm.dbg.value(metadata i32 %sub96.i, metadata !311, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i32 %34, metadata !305, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !593
  %cmp98.i = icmp ne i32 %34, 0, !dbg !599
  %cmp1.not99.i = icmp ult i32 %sub96.i, %16
  %or.cond100.i = and i1 %cmp1.not99.i, %cmp98.i, !dbg !600
  br i1 %or.cond100.i, label %if.end.preheader.i, label %hc_find_func.exit, !dbg !600

if.end.preheader.i:                               ; preds = %if.end104
  %37 = tail call i32 @llvm.umax.i32(i32 %len_best.3, i32 3), !dbg !601
  call void @llvm.dbg.value(metadata i32 %37, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i32 %37, metadata !310, metadata !DIExpression()), !dbg !593
  %38 = add i32 %len_limit.0, -1, !dbg !602
  %wide.trip.count.i = zext i32 %38 to i64
  br label %if.end.i, !dbg !602

if.end.i:                                         ; preds = %cleanup46.i, %if.end.preheader.i
  %dec104.in.i = phi i32 [ %dec104.i, %cleanup46.i ], [ %34, %if.end.preheader.i ]
  %sub103.i = phi i32 [ %sub.i212, %cleanup46.i ], [ %sub96.i, %if.end.preheader.i ]
  %len_best.addr.0102.i = phi i32 [ %len_best.addr.5.i, %cleanup46.i ], [ %37, %if.end.preheader.i ]
  %matches.addr.0101.i = phi ptr [ %matches.addr.5.i, %cleanup46.i ], [ %add.ptr114, %if.end.preheader.i ]
  %dec104.i = add i32 %dec104.in.i, -1, !dbg !603
  call void @llvm.dbg.value(metadata i32 %len_best.addr.0102.i, metadata !310, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata ptr %matches.addr.0101.i, metadata !309, metadata !DIExpression()), !dbg !593
  %idx.ext.i209 = zext i32 %sub103.i to i64, !dbg !604
  %idx.neg.i = sub nsw i64 0, %idx.ext.i209, !dbg !604
  %add.ptr.i210 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !604
  call void @llvm.dbg.value(metadata ptr %add.ptr.i210, metadata !313, metadata !DIExpression()), !dbg !598
  %sub2.i = sub i32 %36, %sub103.i, !dbg !605
  %cmp3.i = icmp ult i32 %36, %sub103.i, !dbg !606
  %spec.select.i = select i1 %cmp3.i, i32 %16, i32 0, !dbg !607
  %add.i211 = add i32 %sub2.i, %spec.select.i, !dbg !608
  %idxprom4.i = zext i32 %add.i211 to i64, !dbg !609
  %arrayidx5.i = getelementptr inbounds i32, ptr %35, i64 %idxprom4.i, !dbg !609
  %39 = load i32, ptr %arrayidx5.i, align 4, !dbg !609, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %39, metadata !304, metadata !DIExpression()), !dbg !593
  %idxprom6.i = zext i32 %len_best.addr.0102.i to i64, !dbg !610
  %arrayidx7.i = getelementptr inbounds i8, ptr %add.ptr.i210, i64 %idxprom6.i, !dbg !610
  %40 = load i8, ptr %arrayidx7.i, align 1, !dbg !610, !tbaa !147
  %arrayidx9.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom6.i, !dbg !611
  %41 = load i8, ptr %arrayidx9.i, align 1, !dbg !611, !tbaa !147
  %cmp11.i = icmp eq i8 %40, %41, !dbg !612
  br i1 %cmp11.i, label %land.lhs.true.i, label %cleanup46.i, !dbg !602

land.lhs.true.i:                                  ; preds = %if.end.i
  %42 = load i8, ptr %add.ptr.i210, align 1, !dbg !613, !tbaa !147
  %43 = load i8, ptr %add.ptr.i, align 1, !dbg !614, !tbaa !147
  %cmp17.i = icmp eq i8 %42, %43, !dbg !615
  br i1 %cmp17.i, label %while.cond20.i, label %cleanup46.i, !dbg !616

while.cond20.i:                                   ; preds = %land.lhs.true.i, %while.body23.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.body23.i ], [ 0, %land.lhs.true.i ], !dbg !617
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !314, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !617
  %exitcond.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i, !dbg !618
  br i1 %exitcond.i, label %while.end.i, label %while.body23.i, !dbg !619

while.body23.i:                                   ; preds = %while.cond20.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !620
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !314, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !617
  %idxprom24.i = and i64 %indvars.iv.next.i, 4294967295, !dbg !621
  %arrayidx25.i = getelementptr inbounds i8, ptr %add.ptr.i210, i64 %idxprom24.i, !dbg !621
  %44 = load i8, ptr %arrayidx25.i, align 1, !dbg !621, !tbaa !147
  %arrayidx28.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom24.i, !dbg !622
  %45 = load i8, ptr %arrayidx28.i, align 1, !dbg !622, !tbaa !147
  %cmp30.not.i = icmp eq i8 %44, %45, !dbg !623
  br i1 %cmp30.not.i, label %while.cond20.i, label %while.end.thread.i, !dbg !624, !llvm.loop !625

while.end.i:                                      ; preds = %while.cond20.i
  %cmp34.i = icmp ult i32 %len_best.addr.0102.i, %len_limit.0, !dbg !627
  br i1 %cmp34.i, label %cleanup.i, label %cleanup46.i, !dbg !628

while.end.thread.i:                               ; preds = %while.body23.i
  %indvars.le.i = trunc i64 %indvars.iv.next.i to i32, !dbg !620
  %cmp3478.i = icmp ult i32 %len_best.addr.0102.i, %indvars.le.i, !dbg !627
  br i1 %cmp3478.i, label %if.then36.thread.i, label %cleanup46.i, !dbg !628

if.then36.thread.i:                               ; preds = %while.end.thread.i
  call void @llvm.dbg.value(metadata i32 %indvars.le.i, metadata !310, metadata !DIExpression()), !dbg !593
  store i32 %indvars.le.i, ptr %matches.addr.0101.i, align 4, !dbg !629, !tbaa !103
  %sub3879.i = add i32 %sub103.i, -1, !dbg !630
  %dist80.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0101.i, i64 0, i32 1, !dbg !631
  store i32 %sub3879.i, ptr %dist80.i, align 4, !dbg !632, !tbaa !140
  %incdec.ptr81.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0101.i, i64 1, !dbg !633
  br label %cleanup46.i, !dbg !634

cleanup.i:                                        ; preds = %while.end.i
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !310, metadata !DIExpression()), !dbg !593
  store i32 %len_limit.0, ptr %matches.addr.0101.i, align 4, !dbg !629, !tbaa !103
  %sub38.i = add i32 %sub103.i, -1, !dbg !630
  %dist.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0101.i, i64 0, i32 1, !dbg !631
  store i32 %sub38.i, ptr %dist.i, align 4, !dbg !632, !tbaa !140
  %incdec.ptr.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0101.i, i64 1, !dbg !633
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !309, metadata !DIExpression()), !dbg !593
  br label %hc_find_func.exit

cleanup46.i:                                      ; preds = %if.then36.thread.i, %while.end.thread.i, %while.end.i, %land.lhs.true.i, %if.end.i
  %matches.addr.5.i = phi ptr [ %matches.addr.0101.i, %land.lhs.true.i ], [ %matches.addr.0101.i, %if.end.i ], [ %incdec.ptr81.i, %if.then36.thread.i ], [ %matches.addr.0101.i, %while.end.thread.i ], [ %matches.addr.0101.i, %while.end.i ]
  %len_best.addr.5.i = phi i32 [ %len_best.addr.0102.i, %land.lhs.true.i ], [ %len_best.addr.0102.i, %if.end.i ], [ %indvars.le.i, %if.then36.thread.i ], [ %len_best.addr.0102.i, %while.end.thread.i ], [ %len_best.addr.0102.i, %while.end.i ]
  call void @llvm.dbg.value(metadata i32 %39, metadata !304, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 %len_best.addr.5.i, metadata !310, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata ptr %matches.addr.5.i, metadata !309, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 %dec104.i, metadata !305, metadata !DIExpression()), !dbg !593
  %sub.i212 = sub i32 %add, %39, !dbg !597
  call void @llvm.dbg.value(metadata i32 %sub.i212, metadata !311, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i32 %dec104.i, metadata !305, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !593
  %cmp.i213 = icmp ne i32 %dec104.i, 0, !dbg !599
  %cmp1.not.i = icmp ult i32 %sub.i212, %16
  %or.cond.i = select i1 %cmp.i213, i1 %cmp1.not.i, i1 false, !dbg !600
  br i1 %or.cond.i, label %if.end.i, label %hc_find_func.exit, !dbg !600

hc_find_func.exit:                                ; preds = %cleanup46.i, %if.end104, %cleanup.i
  %retval.4.ph.i = phi ptr [ %incdec.ptr.i, %cleanup.i ], [ %add.ptr114, %if.end104 ], [ %matches.addr.5.i, %cleanup46.i ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !309, metadata !DIExpression()), !dbg !593
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.4.ph.i to i64, !dbg !591
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64, !dbg !591
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !591
  %46 = lshr exact i64 %sub.ptr.sub, 3, !dbg !591
  %conv116 = trunc i64 %46 to i32, !dbg !591
  call void @llvm.dbg.value(metadata i32 %conv116, metadata !470, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !635
  %47 = load i32, ptr %cyclic_pos111, align 8, !dbg !637, !tbaa !246
  %inc.i215 = add i32 %47, 1, !dbg !637
  %48 = load i32, ptr %cyclic_size, align 4, !dbg !638, !tbaa !214
  %cmp.i217 = icmp eq i32 %inc.i215, %48, !dbg !639
  %spec.store.select.i218 = select i1 %cmp.i217, i32 0, i32 %inc.i215, !dbg !640
  store i32 %spec.store.select.i218, ptr %cyclic_pos111, align 8, !dbg !635
  %49 = load i32, ptr %read_pos, align 8, !dbg !641, !tbaa !110
  %inc2.i220 = add i32 %49, 1, !dbg !641
  store i32 %inc2.i220, ptr %read_pos, align 8, !dbg !641, !tbaa !110
  %50 = load i32, ptr %offset, align 4, !dbg !642, !tbaa !201
  %add.i222 = add i32 %50, %inc2.i220, !dbg !642
  %cmp4.i223 = icmp eq i32 %add.i222, -1, !dbg !642
  br i1 %cmp4.i223, label %if.then5.i230, label %cleanup129, !dbg !643

if.then5.i230:                                    ; preds = %hc_find_func.exit
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !644
  %sub.i.i224 = xor i32 %48, -1, !dbg !646
  call void @llvm.dbg.value(metadata i32 %sub.i.i224, metadata !264, metadata !DIExpression()) #3, !dbg !644
  %hash_size_sum.i.i225 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21, !dbg !647
  %51 = load i32, ptr %hash_size_sum.i.i225, align 4, !dbg !647, !tbaa !273
  %sons_count.i.i226 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22, !dbg !648
  %52 = load i32, ptr %sons_count.i.i226, align 8, !dbg !648, !tbaa !275
  %add.i.i227 = add i32 %52, %51, !dbg !649
  call void @llvm.dbg.value(metadata i32 %add.i.i227, metadata !265, metadata !DIExpression()) #3, !dbg !644
  call void @llvm.dbg.value(metadata ptr %12, metadata !266, metadata !DIExpression()) #3, !dbg !644
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !650
  %cmp21.not.i.i229 = icmp eq i32 %add.i.i227, 0, !dbg !651
  br i1 %cmp21.not.i.i229, label %normalize.exit.i241, label %for.body.preheader.i.i232, !dbg !652

for.body.preheader.i.i232:                        ; preds = %if.then5.i230
  %wide.trip.count.i.i231 = zext i32 %add.i.i227 to i64, !dbg !651
  br label %for.body.i.i237, !dbg !652

for.body.i.i237:                                  ; preds = %for.body.i.i237, %for.body.preheader.i.i232
  %indvars.iv.i.i233 = phi i64 [ 0, %for.body.preheader.i.i232 ], [ %indvars.iv.next.i.i235, %for.body.i.i237 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i233, metadata !267, metadata !DIExpression()) #3, !dbg !650
  %arrayidx.i.i234 = getelementptr inbounds i32, ptr %12, i64 %indvars.iv.i.i233, !dbg !653
  %53 = load i32, ptr %arrayidx.i.i234, align 4, !dbg !653, !tbaa !156
  %54 = tail call i32 @llvm.usub.sat.i32(i32 %53, i32 %sub.i.i224) #3, !dbg !654
  store i32 %54, ptr %arrayidx.i.i234, align 4, !dbg !655, !tbaa !156
  %indvars.iv.next.i.i235 = add nuw nsw i64 %indvars.iv.i.i233, 1, !dbg !656
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i235, metadata !267, metadata !DIExpression()) #3, !dbg !650
  %exitcond.not.i.i236 = icmp eq i64 %indvars.iv.next.i.i235, %wide.trip.count.i.i231, !dbg !651
  br i1 %exitcond.not.i.i236, label %normalize.exit.loopexit.i239, label %for.body.i.i237, !dbg !652, !llvm.loop !657

normalize.exit.loopexit.i239:                     ; preds = %for.body.i.i237
  %.pre.i238 = load i32, ptr %offset, align 4, !dbg !659, !tbaa !201
  br label %normalize.exit.i241, !dbg !659

normalize.exit.i241:                              ; preds = %normalize.exit.loopexit.i239, %if.then5.i230
  %55 = phi i32 [ %.pre.i238, %normalize.exit.loopexit.i239 ], [ %50, %if.then5.i230 ], !dbg !659
  %sub8.i.i240 = sub i32 %55, %sub.i.i224, !dbg !659
  store i32 %sub8.i.i240, ptr %offset, align 4, !dbg !659, !tbaa !201
  br label %cleanup129, !dbg !660

cleanup129:                                       ; preds = %normalize.exit.i241, %hc_find_func.exit, %normalize.exit.i, %do.body, %if.then3
  %retval.1 = phi i32 [ 0, %if.then3 ], [ %matches_count.1258, %do.body ], [ %matches_count.1258, %normalize.exit.i ], [ %conv116, %hc_find_func.exit ], [ %conv116, %normalize.exit.i241 ], !dbg !479
  ret i32 %retval.1, !dbg !661
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @lzma_mf_hc4_skip(ptr nocapture noundef %mf, i32 noundef %amount) local_unnamed_addr #1 !dbg !662 {
entry:
  call void @llvm.dbg.value(metadata ptr %mf, metadata !664, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata i32 %amount, metadata !665, metadata !DIExpression()), !dbg !674
  %0 = getelementptr i8, ptr %mf, i64 24
  %1 = getelementptr i8, ptr %mf, i64 36
  %read_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5
  %offset = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 4
  %hash_mask = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 16
  %hash = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 12
  %son = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13
  %cyclic_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14
  %cyclic_size.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 15
  %hash_size_sum.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21
  %sons_count.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22
  %pending.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 9
  br label %do.body, !dbg !675

do.body:                                          ; preds = %do.cond35, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %do.cond35 ]
  call void @llvm.dbg.value(metadata i32 %amount.addr.0, metadata !665, metadata !DIExpression()), !dbg !674
  %mf.val = load i32, ptr %0, align 8, !dbg !676, !tbaa !110
  %mf.val60 = load i32, ptr %1, align 4, !dbg !676, !tbaa !111
  call void @llvm.dbg.value(metadata ptr undef, metadata !112, metadata !DIExpression()), !dbg !678
  %sub.i = sub i32 %mf.val60, %mf.val, !dbg !680
  %cmp = icmp ult i32 %sub.i, 4, !dbg !681
  br i1 %cmp, label %if.then, label %if.end, !dbg !682

if.then:                                          ; preds = %do.body
  call void @llvm.dbg.value(metadata ptr %mf, metadata !184, metadata !DIExpression()), !dbg !683
  %inc.i = add i32 %mf.val, 1, !dbg !686
  store i32 %inc.i, ptr %read_pos, align 8, !dbg !686, !tbaa !110
  %2 = load i32, ptr %pending.i, align 8, !dbg !687, !tbaa !196
  %inc1.i = add i32 %2, 1, !dbg !687
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !687, !tbaa !196
  br label %do.cond35, !dbg !688

if.end:                                           ; preds = %do.body
  %mf.val61 = load ptr, ptr %mf, align 8, !dbg !689, !tbaa !129
  call void @llvm.dbg.value(metadata ptr undef, metadata !130, metadata !DIExpression()), !dbg !690
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !692
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val61, i64 %idx.ext.i, !dbg !692
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !666, metadata !DIExpression()), !dbg !693
  %3 = load i32, ptr %offset, align 4, !dbg !694, !tbaa !201
  %add = add i32 %3, %mf.val, !dbg !695
  call void @llvm.dbg.value(metadata i32 %add, metadata !668, metadata !DIExpression()), !dbg !693
  %4 = load i8, ptr %add.ptr.i, align 1, !dbg !696, !tbaa !147
  %idxprom = zext i8 %4 to i64, !dbg !696
  %arrayidx2 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !696
  %5 = load i32, ptr %arrayidx2, align 4, !dbg !696, !tbaa !156
  %arrayidx3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !696
  %6 = load i8, ptr %arrayidx3, align 1, !dbg !696, !tbaa !147
  %conv = zext i8 %6 to i32, !dbg !696
  %xor = xor i32 %5, %conv, !dbg !696
  call void @llvm.dbg.value(metadata i32 %xor, metadata !669, metadata !DIExpression()), !dbg !693
  %and = and i32 %xor, 1023, !dbg !696
  call void @llvm.dbg.value(metadata i32 %and, metadata !670, metadata !DIExpression()), !dbg !693
  %arrayidx4 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !696
  %7 = load i8, ptr %arrayidx4, align 1, !dbg !696, !tbaa !147
  %conv5 = zext i8 %7 to i32, !dbg !696
  %shl = shl nuw nsw i32 %conv5, 8, !dbg !696
  %xor6 = xor i32 %shl, %xor, !dbg !696
  %and7 = and i32 %xor6, 65535, !dbg !696
  call void @llvm.dbg.value(metadata i32 %and7, metadata !671, metadata !DIExpression()), !dbg !693
  %arrayidx12 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3, !dbg !696
  %8 = load i8, ptr %arrayidx12, align 1, !dbg !696, !tbaa !147
  %idxprom13 = zext i8 %8 to i64, !dbg !696
  %arrayidx14 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom13, !dbg !696
  %9 = load i32, ptr %arrayidx14, align 4, !dbg !696, !tbaa !156
  %shl15 = shl i32 %9, 5, !dbg !696
  %xor16 = xor i32 %xor6, %shl15, !dbg !696
  %10 = load i32, ptr %hash_mask, align 8, !dbg !696, !tbaa !203
  %and17 = and i32 %xor16, %10, !dbg !696
  call void @llvm.dbg.value(metadata i32 %and17, metadata !672, metadata !DIExpression()), !dbg !693
  %11 = load ptr, ptr %hash, align 8, !dbg !697, !tbaa !205
  %add18 = add i32 %and17, 66560, !dbg !698
  %idxprom19 = zext i32 %add18 to i64, !dbg !699
  %arrayidx20 = getelementptr inbounds i32, ptr %11, i64 %idxprom19, !dbg !699
  %12 = load i32, ptr %arrayidx20, align 4, !dbg !699, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %12, metadata !673, metadata !DIExpression()), !dbg !693
  %idxprom22 = zext i32 %and to i64, !dbg !700
  %arrayidx23 = getelementptr inbounds i32, ptr %11, i64 %idxprom22, !dbg !700
  store i32 %add, ptr %arrayidx23, align 4, !dbg !701, !tbaa !156
  %add25 = add nuw nsw i32 %and7, 1024, !dbg !702
  %idxprom26 = zext i32 %add25 to i64, !dbg !703
  %arrayidx27 = getelementptr inbounds i32, ptr %11, i64 %idxprom26, !dbg !703
  store i32 %add, ptr %arrayidx27, align 4, !dbg !704, !tbaa !156
  store i32 %add, ptr %arrayidx20, align 4, !dbg !705, !tbaa !156
  %13 = load ptr, ptr %son, align 8, !dbg !706, !tbaa !245
  %14 = load i32, ptr %cyclic_pos, align 8, !dbg !706, !tbaa !246
  %idxprom33 = zext i32 %14 to i64, !dbg !706
  %arrayidx34 = getelementptr inbounds i32, ptr %13, i64 %idxprom33, !dbg !706
  store i32 %12, ptr %arrayidx34, align 4, !dbg !706, !tbaa !156
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !708
  %15 = load i32, ptr %cyclic_pos, align 8, !dbg !710, !tbaa !246
  %inc.i63 = add i32 %15, 1, !dbg !710
  %16 = load i32, ptr %cyclic_size.i, align 4, !dbg !711, !tbaa !214
  %cmp.i = icmp eq i32 %inc.i63, %16, !dbg !712
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i63, !dbg !713
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !708
  %17 = load i32, ptr %read_pos, align 8, !dbg !714, !tbaa !110
  %inc2.i = add i32 %17, 1, !dbg !714
  store i32 %inc2.i, ptr %read_pos, align 8, !dbg !714, !tbaa !110
  %18 = load i32, ptr %offset, align 4, !dbg !715, !tbaa !201
  %add.i = add i32 %18, %inc2.i, !dbg !715
  %cmp4.i = icmp eq i32 %add.i, -1, !dbg !715
  br i1 %cmp4.i, label %if.then5.i, label %do.cond35, !dbg !716

if.then5.i:                                       ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !717
  %sub.i.i = xor i32 %16, -1, !dbg !719
  call void @llvm.dbg.value(metadata i32 %sub.i.i, metadata !264, metadata !DIExpression()) #3, !dbg !717
  %19 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !720, !tbaa !273
  %20 = load i32, ptr %sons_count.i.i, align 8, !dbg !721, !tbaa !275
  %add.i.i = add i32 %20, %19, !dbg !722
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !265, metadata !DIExpression()) #3, !dbg !717
  call void @llvm.dbg.value(metadata ptr %11, metadata !266, metadata !DIExpression()) #3, !dbg !717
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !723
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !724
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !725

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !724
  br label %for.body.i.i, !dbg !725

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !723
  %arrayidx.i.i = getelementptr inbounds i32, ptr %11, i64 %indvars.iv.i.i, !dbg !726
  %21 = load i32, ptr %arrayidx.i.i, align 4, !dbg !726, !tbaa !156
  %22 = tail call i32 @llvm.usub.sat.i32(i32 %21, i32 %sub.i.i) #3, !dbg !727
  store i32 %22, ptr %arrayidx.i.i, align 4, !dbg !728, !tbaa !156
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !729
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !723
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !724
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !725, !llvm.loop !730

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i
  %.pre.i = load i32, ptr %offset, align 4, !dbg !732, !tbaa !201
  br label %normalize.exit.i, !dbg !732

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %23 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %18, %if.then5.i ], !dbg !732
  %sub8.i.i = sub i32 %23, %sub.i.i, !dbg !732
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !732, !tbaa !201
  br label %do.cond35, !dbg !733

do.cond35:                                        ; preds = %normalize.exit.i, %if.end, %if.then
  %dec = add i32 %amount.addr.0, -1, !dbg !734
  call void @llvm.dbg.value(metadata i32 %dec, metadata !665, metadata !DIExpression()), !dbg !674
  %cmp36.not = icmp eq i32 %dec, 0, !dbg !735
  br i1 %cmp36.not, label %do.end38, label %do.body, !dbg !736, !llvm.loop !737

do.end38:                                         ; preds = %do.cond35
  ret void, !dbg !739
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @lzma_mf_bt2_find(ptr noundef %mf, ptr noundef %matches) local_unnamed_addr #1 !dbg !740 {
entry:
  call void @llvm.dbg.value(metadata ptr %mf, metadata !742, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata ptr %matches, metadata !743, metadata !DIExpression()), !dbg !750
  %0 = getelementptr i8, ptr %mf, i64 24, !dbg !751
  %mf.val = load i32, ptr %0, align 8, !dbg !751, !tbaa !110
  %1 = getelementptr i8, ptr %mf, i64 36, !dbg !751
  %mf.val42 = load i32, ptr %1, align 4, !dbg !751, !tbaa !111
  call void @llvm.dbg.value(metadata ptr undef, metadata !112, metadata !DIExpression()), !dbg !752
  %sub.i = sub i32 %mf.val42, %mf.val, !dbg !754
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !744, metadata !DIExpression()), !dbg !750
  %nice_len = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18, !dbg !755
  %2 = load i32, ptr %nice_len, align 8, !dbg !755, !tbaa !106
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !755
  br i1 %cmp.not, label %if.else, label %if.end5, !dbg !751

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 2, !dbg !757
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !757

lor.lhs.false:                                    ; preds = %if.else
  %action = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 20, !dbg !757
  %3 = load i32, ptr %action, align 8, !dbg !757, !tbaa !759
  %cmp3 = icmp eq i32 %3, 1, !dbg !757
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !755

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  call void @llvm.dbg.value(metadata ptr %mf, metadata !184, metadata !DIExpression()), !dbg !760
  %read_pos.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5, !dbg !763
  %inc.i = add i32 %mf.val, 1, !dbg !764
  store i32 %inc.i, ptr %read_pos.i, align 8, !dbg !764, !tbaa !110
  %pending.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 9, !dbg !765
  %4 = load i32, ptr %pending.i, align 8, !dbg !766, !tbaa !196
  %inc1.i = add i32 %4, 1, !dbg !766
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !766, !tbaa !196
  br label %cleanup19, !dbg !767

if.end5:                                          ; preds = %entry, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %entry ], !dbg !750
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !744, metadata !DIExpression()), !dbg !750
  %mf.val43 = load ptr, ptr %mf, align 8, !dbg !751, !tbaa !129
  call void @llvm.dbg.value(metadata ptr undef, metadata !130, metadata !DIExpression()), !dbg !768
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !770
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val43, i64 %idx.ext.i, !dbg !770
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !745, metadata !DIExpression()), !dbg !750
  %read_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5, !dbg !751
  %offset = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 4, !dbg !751
  %5 = load i32, ptr %offset, align 4, !dbg !751, !tbaa !201
  %add = add i32 %5, %mf.val, !dbg !751
  call void @llvm.dbg.value(metadata i32 %add, metadata !746, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 0, metadata !747, metadata !DIExpression()), !dbg !750
  %6 = load i8, ptr %add.ptr.i, align 1, !dbg !771, !tbaa !147
  %conv = zext i8 %6 to i64, !dbg !771
  %arrayidx7 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !771
  %7 = load i8, ptr %arrayidx7, align 1, !dbg !771, !tbaa !147
  %conv8 = zext i8 %7 to i64, !dbg !771
  %shl = shl nuw nsw i64 %conv8, 8, !dbg !771
  %or = or i64 %shl, %conv, !dbg !771
  call void @llvm.dbg.value(metadata !DIArgList(i8 %7, i8 %6), metadata !748, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !750
  %hash = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 12, !dbg !772
  %8 = load ptr, ptr %hash, align 8, !dbg !772, !tbaa !205
  %arrayidx9 = getelementptr inbounds i32, ptr %8, i64 %or, !dbg !773
  %9 = load i32, ptr %arrayidx9, align 4, !dbg !773, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %9, metadata !749, metadata !DIExpression()), !dbg !750
  store i32 %add, ptr %arrayidx9, align 4, !dbg !774, !tbaa !156
  %depth = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 17, !dbg !775
  %10 = load i32, ptr %depth, align 4, !dbg !775, !tbaa !294
  %son = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13, !dbg !775
  %11 = load ptr, ptr %son, align 8, !dbg !775, !tbaa !245
  %cyclic_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14, !dbg !775
  %12 = load i32, ptr %cyclic_pos, align 8, !dbg !775, !tbaa !246
  %cyclic_size = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 15, !dbg !775
  %13 = load i32, ptr %cyclic_size, align 4, !dbg !775, !tbaa !214
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !777, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %add, metadata !780, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !781, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %9, metadata !782, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %10, metadata !783, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr %11, metadata !784, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %12, metadata !785, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %13, metadata !786, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr %matches, metadata !787, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 1, metadata !788, metadata !DIExpression()) #3, !dbg !798
  %shl.i = shl i32 %12, 1, !dbg !800
  %idx.ext.i45 = zext i32 %shl.i to i64, !dbg !801
  %add.ptr.i46 = getelementptr inbounds i32, ptr %11, i64 %idx.ext.i45, !dbg !801
  %add.ptr1.i = getelementptr inbounds i32, ptr %add.ptr.i46, i64 1, !dbg !802
  call void @llvm.dbg.value(metadata ptr %add.ptr1.i, metadata !789, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr %add.ptr.i46, metadata !790, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 0, metadata !791, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 0, metadata !792, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %9, metadata !782, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %10, metadata !783, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 1, metadata !788, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr %matches, metadata !787, metadata !DIExpression()) #3, !dbg !798
  %sub135.i = sub i32 %add, %9, !dbg !803
  call void @llvm.dbg.value(metadata i32 %sub135.i, metadata !793, metadata !DIExpression()) #3, !dbg !804
  call void @llvm.dbg.value(metadata i32 %10, metadata !783, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !798
  %cmp137.i = icmp ne i32 %10, 0, !dbg !805
  %cmp5.not138.i = icmp ult i32 %sub135.i, %13
  %or.cond139.i = and i1 %cmp137.i, %cmp5.not138.i, !dbg !807
  br i1 %or.cond139.i, label %if.end.i.preheader, label %if.then.i, !dbg !807

if.end.i.preheader:                               ; preds = %if.end5
  %.pre = zext i32 %len_limit.0 to i64
  br label %if.end.i, !dbg !808

if.then.i:                                        ; preds = %cleanup64.i, %if.end5
  %matches.addr.0.lcssa.i = phi ptr [ %matches, %if.end5 ], [ %matches.addr.1.i, %cleanup64.i ]
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i, %cleanup64.i ], !dbg !809
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i46, %if.end5 ], [ %ptr1.1.i, %cleanup64.i ], !dbg !810
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !dbg !811, !tbaa !156
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !dbg !813, !tbaa !156
  br label %bt_find_func.exit, !dbg !814

if.end.i:                                         ; preds = %if.end.i.preheader, %cleanup64.i
  %dec150.in.i = phi i32 [ %dec150.i, %cleanup64.i ], [ %10, %if.end.i.preheader ]
  %sub149.i = phi i32 [ %sub.i48, %cleanup64.i ], [ %sub135.i, %if.end.i.preheader ]
  %cur_match.addr.0148.i = phi i32 [ %cur_match.addr.1.i, %cleanup64.i ], [ %9, %if.end.i.preheader ]
  %len1.0147.i = phi i32 [ %len1.1.i, %cleanup64.i ], [ 0, %if.end.i.preheader ]
  %len0.0146.i = phi i32 [ %len0.1.i, %cleanup64.i ], [ 0, %if.end.i.preheader ]
  %ptr1.0144.i = phi ptr [ %ptr1.1.i, %cleanup64.i ], [ %add.ptr.i46, %if.end.i.preheader ]
  %ptr0.0142.i = phi ptr [ %ptr0.1.i, %cleanup64.i ], [ %add.ptr1.i, %if.end.i.preheader ]
  %len_best.addr.0141.i = phi i32 [ %len_best.addr.1.i, %cleanup64.i ], [ 1, %if.end.i.preheader ]
  %matches.addr.0140.i = phi ptr [ %matches.addr.1.i, %cleanup64.i ], [ %matches, %if.end.i.preheader ]
  %dec150.i = add i32 %dec150.in.i, -1, !dbg !815
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.0148.i, metadata !782, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %len1.0147.i, metadata !792, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %len0.0146.i, metadata !791, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr %ptr1.0144.i, metadata !790, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr %ptr0.0142.i, metadata !789, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %len_best.addr.0141.i, metadata !788, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr %matches.addr.0140.i, metadata !787, metadata !DIExpression()) #3, !dbg !798
  %sub6.i = sub i32 %12, %sub149.i, !dbg !816
  %cmp7.i = icmp ult i32 %12, %sub149.i, !dbg !817
  %spec.select.i = select i1 %cmp7.i, i32 %13, i32 0, !dbg !818
  %add.i = add i32 %sub6.i, %spec.select.i, !dbg !819
  %shl8.i = shl i32 %add.i, 1, !dbg !820
  %idx.ext9.i = zext i32 %shl8.i to i64, !dbg !821
  %add.ptr10.i = getelementptr inbounds i32, ptr %11, i64 %idx.ext9.i, !dbg !821
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i, metadata !795, metadata !DIExpression()) #3, !dbg !804
  %idx.ext11.i = zext i32 %sub149.i to i64, !dbg !822
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i, !dbg !822
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !822
  call void @llvm.dbg.value(metadata ptr %add.ptr12.i, metadata !796, metadata !DIExpression()) #3, !dbg !804
  %14 = tail call i32 @llvm.umin.i32(i32 %len0.0146.i, i32 %len1.0147.i) #3, !dbg !823
  call void @llvm.dbg.value(metadata i32 %14, metadata !797, metadata !DIExpression()) #3, !dbg !804
  %idxprom.i = zext i32 %14 to i64, !dbg !824
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i, !dbg !824
  %15 = load i8, ptr %arrayidx.i, align 1, !dbg !824, !tbaa !147
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i, !dbg !826
  %16 = load i8, ptr %arrayidx19.i, align 1, !dbg !826, !tbaa !147
  %cmp21.i = icmp eq i8 %15, %16, !dbg !827
  br i1 %cmp21.i, label %while.cond24.i, label %if.end50.i, !dbg !828

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i47, %while.body27.i ], [ %14, %if.end.i ], !dbg !804
  call void @llvm.dbg.value(metadata i32 %len.0.i, metadata !797, metadata !DIExpression()) #3, !dbg !804
  %inc.i47 = add i32 %len.0.i, 1, !dbg !829
  call void @llvm.dbg.value(metadata i32 %inc.i47, metadata !797, metadata !DIExpression()) #3, !dbg !804
  %cmp25.not.i = icmp eq i32 %inc.i47, %len_limit.0, !dbg !831
  br i1 %cmp25.not.i, label %while.end.i, label %while.body27.i, !dbg !832

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i47 to i64, !dbg !833
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i, !dbg !833
  %17 = load i8, ptr %arrayidx29.i, align 1, !dbg !833, !tbaa !147
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i, !dbg !835
  %18 = load i8, ptr %arrayidx32.i, align 1, !dbg !835, !tbaa !147
  %cmp34.not.i = icmp eq i8 %17, %18, !dbg !836
  br i1 %cmp34.not.i, label %while.cond24.i, label %while.end.thread.i, !dbg !837, !llvm.loop !838

while.end.i:                                      ; preds = %while.cond24.i
  %cmp38.i = icmp ult i32 %len_best.addr.0141.i, %len_limit.0, !dbg !840
  br i1 %cmp38.i, label %if.then45.i, label %if.end50.i, !dbg !842

while.end.thread.i:                               ; preds = %while.body27.i
  %idxprom28.i.le = zext i32 %inc.i47 to i64, !dbg !833
  %cmp38115.i = icmp ult i32 %len_best.addr.0141.i, %inc.i47, !dbg !840
  br i1 %cmp38115.i, label %if.then40.thread.i, label %if.end50.i, !dbg !842

if.then40.thread.i:                               ; preds = %while.end.thread.i
  call void @llvm.dbg.value(metadata i32 %inc.i47, metadata !788, metadata !DIExpression()) #3, !dbg !798
  store i32 %inc.i47, ptr %matches.addr.0140.i, align 4, !dbg !843, !tbaa !103
  %sub42116.i = add i32 %sub149.i, -1, !dbg !845
  %dist117.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0140.i, i64 0, i32 1, !dbg !846
  store i32 %sub42116.i, ptr %dist117.i, align 4, !dbg !847, !tbaa !140
  %incdec.ptr118.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0140.i, i64 1, !dbg !848
  br label %if.end50.i, !dbg !849

if.then45.i:                                      ; preds = %while.end.i
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !788, metadata !DIExpression()) #3, !dbg !798
  store i32 %len_limit.0, ptr %matches.addr.0140.i, align 4, !dbg !843, !tbaa !103
  %sub42.i = add i32 %sub149.i, -1, !dbg !845
  %dist.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0140.i, i64 0, i32 1, !dbg !846
  store i32 %sub42.i, ptr %dist.i, align 4, !dbg !847, !tbaa !140
  %incdec.ptr.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0140.i, i64 1, !dbg !848
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !787, metadata !DIExpression()) #3, !dbg !798
  %19 = load i32, ptr %add.ptr10.i, align 4, !dbg !850, !tbaa !156
  store i32 %19, ptr %ptr1.0144.i, align 4, !dbg !853, !tbaa !156
  %arrayidx47.i = getelementptr inbounds i32, ptr %add.ptr10.i, i64 1, !dbg !854
  %20 = load i32, ptr %arrayidx47.i, align 4, !dbg !854, !tbaa !156
  store i32 %20, ptr %ptr0.0142.i, align 4, !dbg !855, !tbaa !156
  br label %bt_find_func.exit, !dbg !856

if.end50.i:                                       ; preds = %while.end.i, %if.then40.thread.i, %while.end.thread.i, %if.end.i
  %idxprom51.i.pre-phi = phi i64 [ %idxprom28.i.le, %if.then40.thread.i ], [ %idxprom28.i.le, %while.end.thread.i ], [ %idxprom.i, %if.end.i ], [ %.pre, %while.end.i ], !dbg !857
  %matches.addr.1.i = phi ptr [ %incdec.ptr118.i, %if.then40.thread.i ], [ %matches.addr.0140.i, %while.end.thread.i ], [ %matches.addr.0140.i, %if.end.i ], [ %matches.addr.0140.i, %while.end.i ]
  %len_best.addr.1.i = phi i32 [ %inc.i47, %if.then40.thread.i ], [ %len_best.addr.0141.i, %while.end.thread.i ], [ %len_best.addr.0141.i, %if.end.i ], [ %len_best.addr.0141.i, %while.end.i ]
  %len.1.i = phi i32 [ %inc.i47, %if.then40.thread.i ], [ %inc.i47, %while.end.thread.i ], [ %14, %if.end.i ], [ %len_limit.0, %while.end.i ], !dbg !804
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !797, metadata !DIExpression()) #3, !dbg !804
  call void @llvm.dbg.value(metadata i32 %len_best.addr.1.i, metadata !788, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr %matches.addr.1.i, metadata !787, metadata !DIExpression()) #3, !dbg !798
  %arrayidx52.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom51.i.pre-phi, !dbg !857
  %21 = load i8, ptr %arrayidx52.i, align 1, !dbg !857, !tbaa !147
  %arrayidx55.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom51.i.pre-phi, !dbg !859
  %22 = load i8, ptr %arrayidx55.i, align 1, !dbg !859, !tbaa !147
  %cmp57.i = icmp ult i8 %21, %22, !dbg !860
  br i1 %cmp57.i, label %if.then59.i, label %if.else.i, !dbg !861

if.then59.i:                                      ; preds = %if.end50.i
  store i32 %cur_match.addr.0148.i, ptr %ptr1.0144.i, align 4, !dbg !862, !tbaa !156
  %add.ptr60.i = getelementptr inbounds i32, ptr %add.ptr10.i, i64 1, !dbg !864
  call void @llvm.dbg.value(metadata ptr %add.ptr60.i, metadata !790, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 undef, metadata !782, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !792, metadata !DIExpression()) #3, !dbg !798
  br label %cleanup64.i, !dbg !865

if.else.i:                                        ; preds = %if.end50.i
  store i32 %cur_match.addr.0148.i, ptr %ptr0.0142.i, align 4, !dbg !866, !tbaa !156
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i, metadata !789, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 undef, metadata !782, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !791, metadata !DIExpression()) #3, !dbg !798
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.else.i, %if.then59.i
  %ptr0.1.i = phi ptr [ %ptr0.0142.i, %if.then59.i ], [ %add.ptr10.i, %if.else.i ], !dbg !798
  %ptr1.1.i = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %ptr1.0144.i, %if.else.i ], !dbg !798
  %len0.1.i = phi i32 [ %len0.0146.i, %if.then59.i ], [ %len.1.i, %if.else.i ], !dbg !798
  %len1.1.i = phi i32 [ %len.1.i, %if.then59.i ], [ %len1.0147.i, %if.else.i ], !dbg !798
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !dbg !868, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.1.i, metadata !782, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %dec150.i, metadata !783, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %len1.1.i, metadata !792, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %len0.1.i, metadata !791, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr %ptr1.1.i, metadata !790, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr %ptr0.1.i, metadata !789, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata i32 %len_best.addr.1.i, metadata !788, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr %matches.addr.1.i, metadata !787, metadata !DIExpression()) #3, !dbg !798
  %sub.i48 = sub i32 %add, %cur_match.addr.1.i, !dbg !803
  call void @llvm.dbg.value(metadata i32 %sub.i48, metadata !793, metadata !DIExpression()) #3, !dbg !804
  call void @llvm.dbg.value(metadata i32 %dec150.i, metadata !783, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !798
  %cmp.i = icmp ne i32 %dec150.i, 0, !dbg !805
  %cmp5.not.i = icmp ult i32 %sub.i48, %13
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false, !dbg !807
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !807, !llvm.loop !869

bt_find_func.exit:                                ; preds = %if.then.i, %if.then45.i
  %retval.2.ph.i = phi ptr [ %incdec.ptr.i, %if.then45.i ], [ %matches.addr.0.lcssa.i, %if.then.i ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !790, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr undef, metadata !789, metadata !DIExpression()) #3, !dbg !798
  call void @llvm.dbg.value(metadata ptr undef, metadata !787, metadata !DIExpression()) #3, !dbg !798
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.2.ph.i to i64, !dbg !775
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64, !dbg !775
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !775
  %23 = lshr exact i64 %sub.ptr.sub, 3, !dbg !775
  %conv14 = trunc i64 %23 to i32, !dbg !775
  call void @llvm.dbg.value(metadata i32 %conv14, metadata !747, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !871
  %24 = load i32, ptr %cyclic_pos, align 8, !dbg !873, !tbaa !246
  %inc.i49 = add i32 %24, 1, !dbg !873
  %25 = load i32, ptr %cyclic_size, align 4, !dbg !874, !tbaa !214
  %cmp.i50 = icmp eq i32 %inc.i49, %25, !dbg !875
  %spec.store.select.i = select i1 %cmp.i50, i32 0, i32 %inc.i49, !dbg !876
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !871
  %26 = load i32, ptr %read_pos, align 8, !dbg !877, !tbaa !110
  %inc2.i = add i32 %26, 1, !dbg !877
  store i32 %inc2.i, ptr %read_pos, align 8, !dbg !877, !tbaa !110
  %27 = load i32, ptr %offset, align 4, !dbg !878, !tbaa !201
  %add.i52 = add i32 %27, %inc2.i, !dbg !878
  %cmp4.i = icmp eq i32 %add.i52, -1, !dbg !878
  br i1 %cmp4.i, label %if.then5.i, label %cleanup19, !dbg !879

if.then5.i:                                       ; preds = %bt_find_func.exit
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !880
  %sub.i.i = xor i32 %25, -1, !dbg !882
  call void @llvm.dbg.value(metadata i32 %sub.i.i, metadata !264, metadata !DIExpression()) #3, !dbg !880
  %hash_size_sum.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21, !dbg !883
  %28 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !883, !tbaa !273
  %sons_count.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22, !dbg !884
  %29 = load i32, ptr %sons_count.i.i, align 8, !dbg !884, !tbaa !275
  %add.i.i = add i32 %29, %28, !dbg !885
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !265, metadata !DIExpression()) #3, !dbg !880
  call void @llvm.dbg.value(metadata ptr %8, metadata !266, metadata !DIExpression()) #3, !dbg !880
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !886
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !887
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !888

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !887
  br label %for.body.i.i, !dbg !888

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !886
  %arrayidx.i.i = getelementptr inbounds i32, ptr %8, i64 %indvars.iv.i.i, !dbg !889
  %30 = load i32, ptr %arrayidx.i.i, align 4, !dbg !889, !tbaa !156
  %31 = tail call i32 @llvm.usub.sat.i32(i32 %30, i32 %sub.i.i) #3, !dbg !890
  store i32 %31, ptr %arrayidx.i.i, align 4, !dbg !891, !tbaa !156
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !892
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !886
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !887
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !888, !llvm.loop !893

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i
  %.pre.i = load i32, ptr %offset, align 4, !dbg !895, !tbaa !201
  br label %normalize.exit.i, !dbg !895

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %32 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %27, %if.then5.i ], !dbg !895
  %sub8.i.i = sub i32 %32, %sub.i.i, !dbg !895
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !895, !tbaa !201
  br label %cleanup19, !dbg !896

cleanup19:                                        ; preds = %normalize.exit.i, %bt_find_func.exit, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %conv14, %bt_find_func.exit ], [ %conv14, %normalize.exit.i ], !dbg !750
  ret i32 %retval.0, !dbg !897
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @lzma_mf_bt2_skip(ptr noundef %mf, i32 noundef %amount) local_unnamed_addr #1 !dbg !898 {
entry:
  call void @llvm.dbg.value(metadata ptr %mf, metadata !900, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i32 %amount, metadata !901, metadata !DIExpression()), !dbg !908
  %0 = getelementptr i8, ptr %mf, i64 24
  %1 = getelementptr i8, ptr %mf, i64 36
  %nice_len = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18
  %action = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 20
  %read_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5
  %offset = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 4
  %hash = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 12
  %depth = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 17
  %son = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13
  %cyclic_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14
  %cyclic_size = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 15
  %hash_size_sum.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21
  %sons_count.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22
  %pending.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 9
  br label %do.body, !dbg !909

do.body:                                          ; preds = %cleanup, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %amount.addr.0, metadata !901, metadata !DIExpression()), !dbg !908
  %mf.val = load i32, ptr %0, align 8, !dbg !910, !tbaa !110
  %mf.val38 = load i32, ptr %1, align 4, !dbg !910, !tbaa !111
  call void @llvm.dbg.value(metadata ptr undef, metadata !112, metadata !DIExpression()), !dbg !911
  %sub.i = sub i32 %mf.val38, %mf.val, !dbg !913
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !902, metadata !DIExpression()), !dbg !914
  %2 = load i32, ptr %nice_len, align 8, !dbg !915, !tbaa !106
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !915
  br i1 %cmp.not, label %if.else, label %if.end5, !dbg !910

if.else:                                          ; preds = %do.body
  %cmp2 = icmp ult i32 %sub.i, 2, !dbg !917
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !917

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, ptr %action, align 8, !dbg !917, !tbaa !759
  %cmp3 = icmp eq i32 %3, 1, !dbg !917
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !915

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  call void @llvm.dbg.value(metadata ptr %mf, metadata !184, metadata !DIExpression()), !dbg !919
  %inc.i = add i32 %mf.val, 1, !dbg !922
  store i32 %inc.i, ptr %read_pos, align 8, !dbg !922, !tbaa !110
  %4 = load i32, ptr %pending.i, align 8, !dbg !923, !tbaa !196
  %inc1.i = add i32 %4, 1, !dbg !923
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !923, !tbaa !196
  br label %cleanup, !dbg !924

if.end5:                                          ; preds = %do.body, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %do.body ], !dbg !914
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !902, metadata !DIExpression()), !dbg !914
  %mf.val39 = load ptr, ptr %mf, align 8, !dbg !910, !tbaa !129
  call void @llvm.dbg.value(metadata ptr undef, metadata !130, metadata !DIExpression()), !dbg !925
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !927
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val39, i64 %idx.ext.i, !dbg !927
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !904, metadata !DIExpression()), !dbg !914
  %5 = load i32, ptr %offset, align 4, !dbg !910, !tbaa !201
  %add = add i32 %5, %mf.val, !dbg !910
  call void @llvm.dbg.value(metadata i32 %add, metadata !905, metadata !DIExpression()), !dbg !914
  %6 = load i8, ptr %add.ptr.i, align 1, !dbg !928, !tbaa !147
  %conv = zext i8 %6 to i64, !dbg !928
  %arrayidx7 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !928
  %7 = load i8, ptr %arrayidx7, align 1, !dbg !928, !tbaa !147
  %conv8 = zext i8 %7 to i64, !dbg !928
  %shl = shl nuw nsw i64 %conv8, 8, !dbg !928
  %or = or i64 %shl, %conv, !dbg !928
  call void @llvm.dbg.value(metadata !DIArgList(i8 %7, i8 %6), metadata !906, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !914
  %8 = load ptr, ptr %hash, align 8, !dbg !929, !tbaa !205
  %arrayidx9 = getelementptr inbounds i32, ptr %8, i64 %or, !dbg !930
  %9 = load i32, ptr %arrayidx9, align 4, !dbg !930, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %9, metadata !907, metadata !DIExpression()), !dbg !914
  store i32 %add, ptr %arrayidx9, align 4, !dbg !931, !tbaa !156
  %10 = load i32, ptr %depth, align 4, !dbg !932, !tbaa !294
  %11 = load ptr, ptr %son, align 8, !dbg !932, !tbaa !245
  %12 = load i32, ptr %cyclic_pos, align 8, !dbg !932, !tbaa !246
  %13 = load i32, ptr %cyclic_size, align 4, !dbg !932, !tbaa !214
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !934, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %add, metadata !939, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !940, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %9, metadata !941, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %10, metadata !942, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata ptr %11, metadata !943, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %12, metadata !944, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %13, metadata !945, metadata !DIExpression()) #3, !dbg !955
  %shl.i = shl i32 %12, 1, !dbg !957
  %idx.ext.i41 = zext i32 %shl.i to i64, !dbg !958
  %add.ptr.i42 = getelementptr inbounds i32, ptr %11, i64 %idx.ext.i41, !dbg !958
  %add.ptr1.i = getelementptr inbounds i32, ptr %add.ptr.i42, i64 1, !dbg !959
  call void @llvm.dbg.value(metadata ptr %add.ptr1.i, metadata !946, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata ptr %add.ptr.i42, metadata !947, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 0, metadata !948, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %9, metadata !941, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %10, metadata !942, metadata !DIExpression()) #3, !dbg !955
  %sub111.i = sub i32 %add, %9, !dbg !960
  call void @llvm.dbg.value(metadata i32 %sub111.i, metadata !950, metadata !DIExpression()) #3, !dbg !961
  call void @llvm.dbg.value(metadata i32 %10, metadata !942, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !955
  %cmp113.i = icmp ne i32 %10, 0, !dbg !962
  %cmp5.not114.i = icmp ult i32 %sub111.i, %13
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i, !dbg !964
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i, !dbg !964

if.then.i:                                        ; preds = %cleanup58.i, %if.end5
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i42, %if.end5 ], [ %ptr1.1.i, %cleanup58.i ], !dbg !965
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i, %cleanup58.i ], !dbg !966
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !dbg !967, !tbaa !156
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !dbg !969, !tbaa !156
  br label %bt_skip_func.exit, !dbg !970

if.end.i:                                         ; preds = %if.end5, %cleanup58.i
  %dec124.in.i = phi i32 [ %dec124.i, %cleanup58.i ], [ %10, %if.end5 ]
  %sub123.i = phi i32 [ %sub.i44, %cleanup58.i ], [ %sub111.i, %if.end5 ]
  %cur_match.addr.0122.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %9, %if.end5 ]
  %ptr0.0120.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %if.end5 ]
  %len1.0119.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %len0.0118.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i42, %if.end5 ]
  %dec124.i = add i32 %dec124.in.i, -1, !dbg !971
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.0122.i, metadata !941, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata ptr %ptr0.0120.i, metadata !946, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %len1.0119.i, metadata !949, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %len0.0118.i, metadata !948, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata ptr %ptr1.0116.i, metadata !947, metadata !DIExpression()) #3, !dbg !955
  %sub6.i = sub i32 %12, %sub123.i, !dbg !972
  %cmp7.i = icmp ult i32 %12, %sub123.i, !dbg !973
  %spec.select.i = select i1 %cmp7.i, i32 %13, i32 0, !dbg !974
  %add.i = add i32 %sub6.i, %spec.select.i, !dbg !975
  %shl8.i = shl i32 %add.i, 1, !dbg !976
  %idx.ext9.i = zext i32 %shl8.i to i64, !dbg !977
  %add.ptr10.i = getelementptr inbounds i32, ptr %11, i64 %idx.ext9.i, !dbg !977
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i, metadata !952, metadata !DIExpression()) #3, !dbg !961
  %idx.ext11.i = zext i32 %sub123.i to i64, !dbg !978
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i, !dbg !978
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !978
  call void @llvm.dbg.value(metadata ptr %add.ptr12.i, metadata !953, metadata !DIExpression()) #3, !dbg !961
  %14 = tail call i32 @llvm.umin.i32(i32 %len0.0118.i, i32 %len1.0119.i) #3, !dbg !979
  call void @llvm.dbg.value(metadata i32 %14, metadata !954, metadata !DIExpression()) #3, !dbg !961
  %idxprom.i = zext i32 %14 to i64, !dbg !980
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i, !dbg !980
  %15 = load i8, ptr %arrayidx.i, align 1, !dbg !980, !tbaa !147
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i, !dbg !982
  %16 = load i8, ptr %arrayidx19.i, align 1, !dbg !982, !tbaa !147
  %cmp21.i = icmp eq i8 %15, %16, !dbg !983
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i, !dbg !984

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i43, %while.body27.i ], [ %14, %if.end.i ], !dbg !961
  call void @llvm.dbg.value(metadata i32 %len.0.i, metadata !954, metadata !DIExpression()) #3, !dbg !961
  %inc.i43 = add i32 %len.0.i, 1, !dbg !985
  call void @llvm.dbg.value(metadata i32 %inc.i43, metadata !954, metadata !DIExpression()) #3, !dbg !961
  %cmp25.not.i = icmp eq i32 %inc.i43, %len_limit.0, !dbg !987
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i, !dbg !988

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i43 to i64, !dbg !989
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i, !dbg !989
  %17 = load i8, ptr %arrayidx29.i, align 1, !dbg !989, !tbaa !147
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i, !dbg !991
  %18 = load i8, ptr %arrayidx32.i, align 1, !dbg !991, !tbaa !147
  %cmp34.not.i = icmp eq i8 %17, %18, !dbg !992
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i, !dbg !993, !llvm.loop !994

if.then40.i:                                      ; preds = %while.cond24.i
  %19 = load i32, ptr %add.ptr10.i, align 4, !dbg !996, !tbaa !156
  store i32 %19, ptr %ptr1.0116.i, align 4, !dbg !999, !tbaa !156
  %arrayidx42.i = getelementptr inbounds i32, ptr %add.ptr10.i, i64 1, !dbg !1000
  %20 = load i32, ptr %arrayidx42.i, align 4, !dbg !1000, !tbaa !156
  store i32 %20, ptr %ptr0.0120.i, align 4, !dbg !1001, !tbaa !156
  br label %bt_skip_func.exit, !dbg !1002

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %21 = phi i8 [ %16, %if.end.i ], [ %18, %while.body27.i ], !dbg !1003
  %22 = phi i8 [ %15, %if.end.i ], [ %17, %while.body27.i ], !dbg !1005
  %len.1.i = phi i32 [ %14, %if.end.i ], [ %inc.i43, %while.body27.i ], !dbg !961
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !954, metadata !DIExpression()) #3, !dbg !961
  %cmp51.i = icmp ult i8 %22, %21, !dbg !1006
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i, !dbg !1007

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0122.i, ptr %ptr1.0116.i, align 4, !dbg !1008, !tbaa !156
  %add.ptr54.i = getelementptr inbounds i32, ptr %add.ptr10.i, i64 1, !dbg !1010
  call void @llvm.dbg.value(metadata ptr %add.ptr54.i, metadata !947, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 undef, metadata !941, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !949, metadata !DIExpression()) #3, !dbg !955
  br label %cleanup58.i, !dbg !1011

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0122.i, ptr %ptr0.0120.i, align 4, !dbg !1012, !tbaa !156
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i, metadata !946, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 undef, metadata !941, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !948, metadata !DIExpression()) #3, !dbg !955
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ], !dbg !955
  %len0.1.i = phi i32 [ %len0.0118.i, %if.then53.i ], [ %len.1.i, %if.else.i ], !dbg !955
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0119.i, %if.else.i ], !dbg !955
  %ptr0.1.i = phi ptr [ %ptr0.0120.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ], !dbg !955
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !dbg !1014, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.1.i, metadata !941, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %dec124.i, metadata !942, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata ptr %ptr0.1.i, metadata !946, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %len1.1.i, metadata !949, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata i32 %len0.1.i, metadata !948, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata ptr %ptr1.1.i, metadata !947, metadata !DIExpression()) #3, !dbg !955
  %sub.i44 = sub i32 %add, %cur_match.addr.1.i, !dbg !960
  call void @llvm.dbg.value(metadata i32 %sub.i44, metadata !950, metadata !DIExpression()) #3, !dbg !961
  call void @llvm.dbg.value(metadata i32 %dec124.i, metadata !942, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !955
  %cmp.i = icmp ne i32 %dec124.i, 0, !dbg !962
  %cmp5.not.i = icmp ult i32 %sub.i44, %13
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false, !dbg !964
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !964, !llvm.loop !1015

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !946, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata ptr undef, metadata !947, metadata !DIExpression()) #3, !dbg !955
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !1018
  %23 = load i32, ptr %cyclic_pos, align 8, !dbg !1020, !tbaa !246
  %inc.i45 = add i32 %23, 1, !dbg !1020
  %24 = load i32, ptr %cyclic_size, align 4, !dbg !1021, !tbaa !214
  %cmp.i46 = icmp eq i32 %inc.i45, %24, !dbg !1022
  %spec.store.select.i = select i1 %cmp.i46, i32 0, i32 %inc.i45, !dbg !1023
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !1018
  %25 = load i32, ptr %read_pos, align 8, !dbg !1024, !tbaa !110
  %inc2.i = add i32 %25, 1, !dbg !1024
  store i32 %inc2.i, ptr %read_pos, align 8, !dbg !1024, !tbaa !110
  %26 = load i32, ptr %offset, align 4, !dbg !1025, !tbaa !201
  %add.i48 = add i32 %26, %inc2.i, !dbg !1025
  %cmp4.i = icmp eq i32 %add.i48, -1, !dbg !1025
  br i1 %cmp4.i, label %if.then5.i, label %cleanup, !dbg !1026

if.then5.i:                                       ; preds = %bt_skip_func.exit
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !1027
  %sub.i.i = xor i32 %24, -1, !dbg !1029
  call void @llvm.dbg.value(metadata i32 %sub.i.i, metadata !264, metadata !DIExpression()) #3, !dbg !1027
  %27 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !1030, !tbaa !273
  %28 = load i32, ptr %sons_count.i.i, align 8, !dbg !1031, !tbaa !275
  %add.i.i = add i32 %28, %27, !dbg !1032
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !265, metadata !DIExpression()) #3, !dbg !1027
  call void @llvm.dbg.value(metadata ptr %8, metadata !266, metadata !DIExpression()) #3, !dbg !1027
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !1033
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !1034
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !1035

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !1034
  br label %for.body.i.i, !dbg !1035

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !1033
  %arrayidx.i.i = getelementptr inbounds i32, ptr %8, i64 %indvars.iv.i.i, !dbg !1036
  %29 = load i32, ptr %arrayidx.i.i, align 4, !dbg !1036, !tbaa !156
  %30 = tail call i32 @llvm.usub.sat.i32(i32 %29, i32 %sub.i.i) #3, !dbg !1037
  store i32 %30, ptr %arrayidx.i.i, align 4, !dbg !1038, !tbaa !156
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !1033
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1034
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !1035, !llvm.loop !1040

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i
  %.pre.i = load i32, ptr %offset, align 4, !dbg !1042, !tbaa !201
  br label %normalize.exit.i, !dbg !1042

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %31 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %26, %if.then5.i ], !dbg !1042
  %sub8.i.i = sub i32 %31, %sub.i.i, !dbg !1042
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !1042, !tbaa !201
  br label %cleanup, !dbg !1043

cleanup:                                          ; preds = %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %dec = add i32 %amount.addr.0, -1, !dbg !1044
  call void @llvm.dbg.value(metadata i32 %dec, metadata !901, metadata !DIExpression()), !dbg !908
  %cmp15.not = icmp eq i32 %dec, 0, !dbg !1045
  br i1 %cmp15.not, label %do.end17, label %do.body, !dbg !1046, !llvm.loop !1047

do.end17:                                         ; preds = %cleanup
  ret void, !dbg !1049
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @lzma_mf_bt3_find(ptr noundef %mf, ptr noundef %matches) local_unnamed_addr #1 !dbg !1050 {
entry:
  call void @llvm.dbg.value(metadata ptr %mf, metadata !1052, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata ptr %matches, metadata !1053, metadata !DIExpression()), !dbg !1064
  %0 = getelementptr i8, ptr %mf, i64 24, !dbg !1065
  %mf.val = load i32, ptr %0, align 8, !dbg !1065, !tbaa !110
  %1 = getelementptr i8, ptr %mf, i64 36, !dbg !1065
  %mf.val134 = load i32, ptr %1, align 4, !dbg !1065, !tbaa !111
  call void @llvm.dbg.value(metadata ptr undef, metadata !112, metadata !DIExpression()), !dbg !1066
  %sub.i = sub i32 %mf.val134, %mf.val, !dbg !1068
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !1054, metadata !DIExpression()), !dbg !1064
  %nice_len = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18, !dbg !1069
  %2 = load i32, ptr %nice_len, align 8, !dbg !1069, !tbaa !106
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !1069
  br i1 %cmp.not, label %if.else, label %if.end5, !dbg !1065

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 3, !dbg !1071
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !1071

lor.lhs.false:                                    ; preds = %if.else
  %action = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 20, !dbg !1071
  %3 = load i32, ptr %action, align 8, !dbg !1071, !tbaa !759
  %cmp3 = icmp eq i32 %3, 1, !dbg !1071
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1069

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  call void @llvm.dbg.value(metadata ptr %mf, metadata !184, metadata !DIExpression()), !dbg !1073
  %read_pos.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5, !dbg !1076
  %inc.i = add i32 %mf.val, 1, !dbg !1077
  store i32 %inc.i, ptr %read_pos.i, align 8, !dbg !1077, !tbaa !110
  %pending.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 9, !dbg !1078
  %4 = load i32, ptr %pending.i, align 8, !dbg !1079, !tbaa !196
  %inc1.i = add i32 %4, 1, !dbg !1079
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !1079, !tbaa !196
  br label %cleanup76, !dbg !1080

if.end5:                                          ; preds = %entry, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %entry ], !dbg !1064
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !1054, metadata !DIExpression()), !dbg !1064
  %mf.val135 = load ptr, ptr %mf, align 8, !dbg !1065, !tbaa !129
  call void @llvm.dbg.value(metadata ptr undef, metadata !130, metadata !DIExpression()), !dbg !1081
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !1083
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val135, i64 %idx.ext.i, !dbg !1083
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1055, metadata !DIExpression()), !dbg !1064
  %read_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5, !dbg !1065
  %offset = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 4, !dbg !1065
  %5 = load i32, ptr %offset, align 4, !dbg !1065, !tbaa !201
  %add = add i32 %5, %mf.val, !dbg !1065
  call void @llvm.dbg.value(metadata i32 %add, metadata !1056, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i32 0, metadata !1057, metadata !DIExpression()), !dbg !1064
  %6 = load i8, ptr %add.ptr.i, align 1, !dbg !1084, !tbaa !147
  %idxprom = zext i8 %6 to i64, !dbg !1084
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !1084
  %7 = load i32, ptr %arrayidx7, align 4, !dbg !1084, !tbaa !156
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !1084
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !1084, !tbaa !147
  %conv = zext i8 %8 to i32, !dbg !1084
  %xor = xor i32 %7, %conv, !dbg !1084
  call void @llvm.dbg.value(metadata i32 %xor, metadata !1058, metadata !DIExpression()), !dbg !1064
  %and = and i32 %xor, 1023, !dbg !1084
  call void @llvm.dbg.value(metadata i32 %and, metadata !1059, metadata !DIExpression()), !dbg !1064
  %arrayidx9 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !1084
  %9 = load i8, ptr %arrayidx9, align 1, !dbg !1084, !tbaa !147
  %conv10 = zext i8 %9 to i32, !dbg !1084
  %shl = shl nuw nsw i32 %conv10, 8, !dbg !1084
  %xor11 = xor i32 %shl, %xor, !dbg !1084
  %hash_mask = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 16, !dbg !1084
  %10 = load i32, ptr %hash_mask, align 8, !dbg !1084, !tbaa !203
  %and12 = and i32 %xor11, %10, !dbg !1084
  call void @llvm.dbg.value(metadata i32 %and12, metadata !1060, metadata !DIExpression()), !dbg !1064
  %hash = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 12, !dbg !1085
  %11 = load ptr, ptr %hash, align 8, !dbg !1085, !tbaa !205
  %idxprom13 = zext i32 %and to i64, !dbg !1086
  %arrayidx14 = getelementptr inbounds i32, ptr %11, i64 %idxprom13, !dbg !1086
  %12 = load i32, ptr %arrayidx14, align 4, !dbg !1086, !tbaa !156
  %sub = sub i32 %add, %12, !dbg !1087
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1061, metadata !DIExpression()), !dbg !1064
  %add16 = add i32 %and12, 1024, !dbg !1088
  %idxprom17 = zext i32 %add16 to i64, !dbg !1089
  %arrayidx18 = getelementptr inbounds i32, ptr %11, i64 %idxprom17, !dbg !1089
  %13 = load i32, ptr %arrayidx18, align 4, !dbg !1089, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %13, metadata !1062, metadata !DIExpression()), !dbg !1064
  store i32 %add, ptr %arrayidx14, align 4, !dbg !1090, !tbaa !156
  store i32 %add, ptr %arrayidx18, align 4, !dbg !1091, !tbaa !156
  call void @llvm.dbg.value(metadata i32 2, metadata !1063, metadata !DIExpression()), !dbg !1064
  %cyclic_size = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 15, !dbg !1092
  %14 = load i32, ptr %cyclic_size, align 4, !dbg !1092, !tbaa !214
  %cmp26 = icmp ult i32 %sub, %14, !dbg !1094
  br i1 %cmp26, label %land.lhs.true, label %do.body57, !dbg !1095

land.lhs.true:                                    ; preds = %if.end5
  %idx.ext = zext i32 %sub to i64, !dbg !1096
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !1096
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg, !dbg !1096
  %15 = load i8, ptr %add.ptr, align 1, !dbg !1097, !tbaa !147
  %16 = load i8, ptr %add.ptr.i, align 1, !dbg !1098, !tbaa !147
  %cmp30 = icmp eq i8 %15, %16, !dbg !1099
  br i1 %cmp30, label %for.cond.preheader, label %do.body57, !dbg !1100

for.cond.preheader:                               ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32 2, metadata !1063, metadata !DIExpression()), !dbg !1064
  %cmp33.not231 = icmp eq i32 %len_limit.0, 2, !dbg !1101
  br i1 %cmp33.not231, label %do.body, label %for.body, !dbg !1105

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %len_best.0232 = phi i32 [ %inc, %for.inc ], [ 2, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i32 %len_best.0232, metadata !1063, metadata !DIExpression()), !dbg !1064
  %idx.ext35 = zext i32 %len_best.0232 to i64, !dbg !1106
  %add.ptr36 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext35, !dbg !1106
  %add.ptr39 = getelementptr inbounds i8, ptr %add.ptr36, i64 %idx.neg, !dbg !1108
  %17 = load i8, ptr %add.ptr39, align 1, !dbg !1109, !tbaa !147
  %18 = load i8, ptr %add.ptr36, align 1, !dbg !1110, !tbaa !147
  %cmp44.not = icmp eq i8 %17, %18, !dbg !1111
  br i1 %cmp44.not, label %for.inc, label %for.end, !dbg !1112

for.inc:                                          ; preds = %for.body
  %inc = add i32 %len_best.0232, 1, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1063, metadata !DIExpression()), !dbg !1064
  %cmp33.not = icmp eq i32 %inc, %len_limit.0, !dbg !1101
  br i1 %cmp33.not, label %do.body, label %for.body, !dbg !1105, !llvm.loop !1114

for.end:                                          ; preds = %for.body
  store i32 %len_best.0232, ptr %matches, align 4, !dbg !1116, !tbaa !103
  %sub49 = add i32 %sub, -1, !dbg !1117
  %dist = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 0, i32 1, !dbg !1118
  store i32 %sub49, ptr %dist, align 4, !dbg !1119, !tbaa !140
  call void @llvm.dbg.value(metadata i32 1, metadata !1057, metadata !DIExpression()), !dbg !1064
  br label %do.body57

do.body:                                          ; preds = %for.inc, %for.cond.preheader
  store i32 %len_limit.0, ptr %matches, align 4, !dbg !1116, !tbaa !103
  %sub49217 = add i32 %sub, -1, !dbg !1117
  %dist218 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 0, i32 1, !dbg !1118
  store i32 %sub49217, ptr %dist218, align 4, !dbg !1119, !tbaa !140
  call void @llvm.dbg.value(metadata i32 1, metadata !1057, metadata !DIExpression()), !dbg !1064
  %depth = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 17, !dbg !1120
  %19 = load i32, ptr %depth, align 4, !dbg !1120, !tbaa !294
  %son = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13, !dbg !1120
  %20 = load ptr, ptr %son, align 8, !dbg !1120, !tbaa !245
  %cyclic_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14, !dbg !1120
  %21 = load i32, ptr %cyclic_pos, align 8, !dbg !1120, !tbaa !246
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !934, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %add, metadata !939, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !940, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %13, metadata !941, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %19, metadata !942, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata ptr %20, metadata !943, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %21, metadata !944, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %14, metadata !945, metadata !DIExpression()) #3, !dbg !1124
  %shl.i = shl i32 %21, 1, !dbg !1126
  %idx.ext.i137 = zext i32 %shl.i to i64, !dbg !1127
  %add.ptr.i138 = getelementptr inbounds i32, ptr %20, i64 %idx.ext.i137, !dbg !1127
  %add.ptr1.i = getelementptr inbounds i32, ptr %add.ptr.i138, i64 1, !dbg !1128
  call void @llvm.dbg.value(metadata ptr %add.ptr1.i, metadata !946, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata ptr %add.ptr.i138, metadata !947, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 0, metadata !948, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()) #3, !dbg !1124
  %sub111.i = sub i32 %add, %13, !dbg !1129
  call void @llvm.dbg.value(metadata i32 %sub111.i, metadata !950, metadata !DIExpression()) #3, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %19, metadata !942, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !1124
  %cmp113.i = icmp ne i32 %19, 0, !dbg !1131
  %cmp5.not114.i = icmp ult i32 %sub111.i, %14
  %or.cond115.i = and i1 %cmp5.not114.i, %cmp113.i, !dbg !1132
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i, !dbg !1132

if.then.i:                                        ; preds = %cleanup58.i, %do.body
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i138, %do.body ], [ %ptr1.1.i, %cleanup58.i ], !dbg !1133
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %do.body ], [ %ptr0.1.i, %cleanup58.i ], !dbg !1134
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !dbg !1135, !tbaa !156
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !dbg !1136, !tbaa !156
  br label %bt_skip_func.exit, !dbg !1137

if.end.i:                                         ; preds = %do.body, %cleanup58.i
  %dec124.in.i = phi i32 [ %dec124.i, %cleanup58.i ], [ %19, %do.body ]
  %sub123.i = phi i32 [ %sub.i140, %cleanup58.i ], [ %sub111.i, %do.body ]
  %cur_match.addr.0122.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %13, %do.body ]
  %ptr0.0120.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %do.body ]
  %len1.0119.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %do.body ]
  %len0.0118.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %do.body ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i138, %do.body ]
  %dec124.i = add i32 %dec124.in.i, -1, !dbg !1138
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.0122.i, metadata !941, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata ptr %ptr0.0120.i, metadata !946, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %len1.0119.i, metadata !949, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %len0.0118.i, metadata !948, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata ptr %ptr1.0116.i, metadata !947, metadata !DIExpression()) #3, !dbg !1124
  %sub6.i = sub i32 %21, %sub123.i, !dbg !1139
  %cmp7.i = icmp ult i32 %21, %sub123.i, !dbg !1140
  %spec.select.i = select i1 %cmp7.i, i32 %14, i32 0, !dbg !1141
  %add.i = add i32 %sub6.i, %spec.select.i, !dbg !1142
  %shl8.i = shl i32 %add.i, 1, !dbg !1143
  %idx.ext9.i = zext i32 %shl8.i to i64, !dbg !1144
  %add.ptr10.i = getelementptr inbounds i32, ptr %20, i64 %idx.ext9.i, !dbg !1144
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i, metadata !952, metadata !DIExpression()) #3, !dbg !1130
  %idx.ext11.i = zext i32 %sub123.i to i64, !dbg !1145
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i, !dbg !1145
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !1145
  call void @llvm.dbg.value(metadata ptr %add.ptr12.i, metadata !953, metadata !DIExpression()) #3, !dbg !1130
  %22 = tail call i32 @llvm.umin.i32(i32 %len0.0118.i, i32 %len1.0119.i) #3, !dbg !1146
  call void @llvm.dbg.value(metadata i32 %22, metadata !954, metadata !DIExpression()) #3, !dbg !1130
  %idxprom.i = zext i32 %22 to i64, !dbg !1147
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i, !dbg !1147
  %23 = load i8, ptr %arrayidx.i, align 1, !dbg !1147, !tbaa !147
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i, !dbg !1148
  %24 = load i8, ptr %arrayidx19.i, align 1, !dbg !1148, !tbaa !147
  %cmp21.i = icmp eq i8 %23, %24, !dbg !1149
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i, !dbg !1150

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i139, %while.body27.i ], [ %22, %if.end.i ], !dbg !1130
  call void @llvm.dbg.value(metadata i32 %len.0.i, metadata !954, metadata !DIExpression()) #3, !dbg !1130
  %inc.i139 = add i32 %len.0.i, 1, !dbg !1151
  call void @llvm.dbg.value(metadata i32 %inc.i139, metadata !954, metadata !DIExpression()) #3, !dbg !1130
  %cmp25.not.i = icmp eq i32 %inc.i139, %len_limit.0, !dbg !1152
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i, !dbg !1153

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i139 to i64, !dbg !1154
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i, !dbg !1154
  %25 = load i8, ptr %arrayidx29.i, align 1, !dbg !1154, !tbaa !147
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i, !dbg !1155
  %26 = load i8, ptr %arrayidx32.i, align 1, !dbg !1155, !tbaa !147
  %cmp34.not.i = icmp eq i8 %25, %26, !dbg !1156
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i, !dbg !1157, !llvm.loop !1158

if.then40.i:                                      ; preds = %while.cond24.i
  %27 = load i32, ptr %add.ptr10.i, align 4, !dbg !1160, !tbaa !156
  store i32 %27, ptr %ptr1.0116.i, align 4, !dbg !1161, !tbaa !156
  %arrayidx42.i = getelementptr inbounds i32, ptr %add.ptr10.i, i64 1, !dbg !1162
  %28 = load i32, ptr %arrayidx42.i, align 4, !dbg !1162, !tbaa !156
  store i32 %28, ptr %ptr0.0120.i, align 4, !dbg !1163, !tbaa !156
  br label %bt_skip_func.exit, !dbg !1164

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %29 = phi i8 [ %24, %if.end.i ], [ %26, %while.body27.i ], !dbg !1165
  %30 = phi i8 [ %23, %if.end.i ], [ %25, %while.body27.i ], !dbg !1166
  %len.1.i = phi i32 [ %22, %if.end.i ], [ %inc.i139, %while.body27.i ], !dbg !1130
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !954, metadata !DIExpression()) #3, !dbg !1130
  %cmp51.i = icmp ult i8 %30, %29, !dbg !1167
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i, !dbg !1168

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0122.i, ptr %ptr1.0116.i, align 4, !dbg !1169, !tbaa !156
  %add.ptr54.i = getelementptr inbounds i32, ptr %add.ptr10.i, i64 1, !dbg !1170
  call void @llvm.dbg.value(metadata ptr %add.ptr54.i, metadata !947, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 undef, metadata !941, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !949, metadata !DIExpression()) #3, !dbg !1124
  br label %cleanup58.i, !dbg !1171

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0122.i, ptr %ptr0.0120.i, align 4, !dbg !1172, !tbaa !156
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i, metadata !946, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 undef, metadata !941, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !948, metadata !DIExpression()) #3, !dbg !1124
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ], !dbg !1124
  %len0.1.i = phi i32 [ %len0.0118.i, %if.then53.i ], [ %len.1.i, %if.else.i ], !dbg !1124
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0119.i, %if.else.i ], !dbg !1124
  %ptr0.1.i = phi ptr [ %ptr0.0120.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ], !dbg !1124
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !dbg !1173, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.1.i, metadata !941, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %dec124.i, metadata !942, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata ptr %ptr0.1.i, metadata !946, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %len1.1.i, metadata !949, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %len0.1.i, metadata !948, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata ptr %ptr1.1.i, metadata !947, metadata !DIExpression()) #3, !dbg !1124
  %sub.i140 = sub i32 %add, %cur_match.addr.1.i, !dbg !1129
  call void @llvm.dbg.value(metadata i32 %sub.i140, metadata !950, metadata !DIExpression()) #3, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %dec124.i, metadata !942, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !1124
  %cmp.i = icmp ne i32 %dec124.i, 0, !dbg !1131
  %cmp5.not.i = icmp ult i32 %sub.i140, %14
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false, !dbg !1132
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !1132, !llvm.loop !1174

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !946, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata ptr undef, metadata !947, metadata !DIExpression()) #3, !dbg !1124
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !1177
  %31 = load i32, ptr %cyclic_pos, align 8, !dbg !1179, !tbaa !246
  %inc.i141 = add i32 %31, 1, !dbg !1179
  %32 = load i32, ptr %cyclic_size, align 4, !dbg !1180, !tbaa !214
  %cmp.i142 = icmp eq i32 %inc.i141, %32, !dbg !1181
  %spec.store.select.i = select i1 %cmp.i142, i32 0, i32 %inc.i141, !dbg !1182
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !1177
  %33 = load i32, ptr %read_pos, align 8, !dbg !1183, !tbaa !110
  %inc2.i = add i32 %33, 1, !dbg !1183
  store i32 %inc2.i, ptr %read_pos, align 8, !dbg !1183, !tbaa !110
  %34 = load i32, ptr %offset, align 4, !dbg !1184, !tbaa !201
  %add.i144 = add i32 %34, %inc2.i, !dbg !1184
  %cmp4.i = icmp eq i32 %add.i144, -1, !dbg !1184
  br i1 %cmp4.i, label %if.then5.i, label %cleanup76, !dbg !1185

if.then5.i:                                       ; preds = %bt_skip_func.exit
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !1186
  %sub.i.i = xor i32 %32, -1, !dbg !1188
  call void @llvm.dbg.value(metadata i32 %sub.i.i, metadata !264, metadata !DIExpression()) #3, !dbg !1186
  %hash_size_sum.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21, !dbg !1189
  %35 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !1189, !tbaa !273
  %sons_count.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22, !dbg !1190
  %36 = load i32, ptr %sons_count.i.i, align 8, !dbg !1190, !tbaa !275
  %add.i.i = add i32 %36, %35, !dbg !1191
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !265, metadata !DIExpression()) #3, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %11, metadata !266, metadata !DIExpression()) #3, !dbg !1186
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !1192
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !1193
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !1194

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !1193
  br label %for.body.i.i, !dbg !1194

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !1192
  %arrayidx.i.i = getelementptr inbounds i32, ptr %11, i64 %indvars.iv.i.i, !dbg !1195
  %37 = load i32, ptr %arrayidx.i.i, align 4, !dbg !1195, !tbaa !156
  %38 = tail call i32 @llvm.usub.sat.i32(i32 %37, i32 %sub.i.i) #3, !dbg !1196
  store i32 %38, ptr %arrayidx.i.i, align 4, !dbg !1197, !tbaa !156
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !1192
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1193
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !1194, !llvm.loop !1199

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i
  %.pre.i = load i32, ptr %offset, align 4, !dbg !1201, !tbaa !201
  br label %normalize.exit.i, !dbg !1201

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %39 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %34, %if.then5.i ], !dbg !1201
  %sub8.i.i = sub i32 %39, %sub.i.i, !dbg !1201
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !1201, !tbaa !201
  br label %cleanup76, !dbg !1202

do.body57:                                        ; preds = %for.end, %if.end5, %land.lhs.true
  %matches_count.0 = phi i64 [ 1, %for.end ], [ 0, %land.lhs.true ], [ 0, %if.end5 ]
  %len_best.1 = phi i32 [ %len_best.0232, %for.end ], [ 2, %land.lhs.true ], [ 2, %if.end5 ], !dbg !1203
  call void @llvm.dbg.value(metadata i32 %len_best.1, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i32 undef, metadata !1057, metadata !DIExpression()), !dbg !1064
  %depth58 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 17, !dbg !1204
  %40 = load i32, ptr %depth58, align 4, !dbg !1204, !tbaa !294
  %son59 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13, !dbg !1204
  %41 = load ptr, ptr %son59, align 8, !dbg !1204, !tbaa !245
  %cyclic_pos60 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14, !dbg !1204
  %42 = load i32, ptr %cyclic_pos60, align 8, !dbg !1204, !tbaa !246
  %add.ptr63 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %matches_count.0, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !777, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %add, metadata !780, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !781, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %13, metadata !782, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %40, metadata !783, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %41, metadata !784, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %42, metadata !785, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %14, metadata !786, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %add.ptr63, metadata !787, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %len_best.1, metadata !788, metadata !DIExpression()) #3, !dbg !1206
  %shl.i145 = shl i32 %42, 1, !dbg !1208
  %idx.ext.i146 = zext i32 %shl.i145 to i64, !dbg !1209
  %add.ptr.i147 = getelementptr inbounds i32, ptr %41, i64 %idx.ext.i146, !dbg !1209
  %add.ptr1.i148 = getelementptr inbounds i32, ptr %add.ptr.i147, i64 1, !dbg !1210
  call void @llvm.dbg.value(metadata ptr %add.ptr1.i148, metadata !789, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %add.ptr.i147, metadata !790, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 0, metadata !791, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 0, metadata !792, metadata !DIExpression()) #3, !dbg !1206
  %sub135.i = sub i32 %add, %13, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %sub135.i, metadata !793, metadata !DIExpression()) #3, !dbg !1212
  call void @llvm.dbg.value(metadata i32 %40, metadata !783, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !1206
  %cmp137.i = icmp ne i32 %40, 0, !dbg !1213
  %cmp5.not138.i = icmp ult i32 %sub135.i, %14
  %or.cond139.i = and i1 %cmp5.not138.i, %cmp137.i, !dbg !1214
  br i1 %or.cond139.i, label %if.end.i166.preheader, label %if.then.i151, !dbg !1214

if.end.i166.preheader:                            ; preds = %do.body57
  %.pre = zext i32 %len_limit.0 to i64
  br label %if.end.i166, !dbg !1215

if.then.i151:                                     ; preds = %cleanup64.i, %do.body57
  %matches.addr.0.lcssa.i = phi ptr [ %add.ptr63, %do.body57 ], [ %matches.addr.1.i, %cleanup64.i ]
  %ptr0.0.lcssa.i149 = phi ptr [ %add.ptr1.i148, %do.body57 ], [ %ptr0.1.i178, %cleanup64.i ], !dbg !1216
  %ptr1.0.lcssa.i150 = phi ptr [ %add.ptr.i147, %do.body57 ], [ %ptr1.1.i179, %cleanup64.i ], !dbg !1217
  store i32 0, ptr %ptr0.0.lcssa.i149, align 4, !dbg !1218, !tbaa !156
  store i32 0, ptr %ptr1.0.lcssa.i150, align 4, !dbg !1219, !tbaa !156
  br label %bt_find_func.exit, !dbg !1220

if.end.i166:                                      ; preds = %if.end.i166.preheader, %cleanup64.i
  %dec150.in.i = phi i32 [ %dec150.i, %cleanup64.i ], [ %40, %if.end.i166.preheader ]
  %sub149.i = phi i32 [ %sub.i184, %cleanup64.i ], [ %sub135.i, %if.end.i166.preheader ]
  %cur_match.addr.0148.i = phi i32 [ %cur_match.addr.1.i183, %cleanup64.i ], [ %13, %if.end.i166.preheader ]
  %len1.0147.i = phi i32 [ %len1.1.i181, %cleanup64.i ], [ 0, %if.end.i166.preheader ]
  %len0.0146.i = phi i32 [ %len0.1.i180, %cleanup64.i ], [ 0, %if.end.i166.preheader ]
  %ptr1.0144.i = phi ptr [ %ptr1.1.i179, %cleanup64.i ], [ %add.ptr.i147, %if.end.i166.preheader ]
  %ptr0.0142.i = phi ptr [ %ptr0.1.i178, %cleanup64.i ], [ %add.ptr1.i148, %if.end.i166.preheader ]
  %len_best.addr.0141.i = phi i32 [ %len_best.addr.1.i, %cleanup64.i ], [ %len_best.1, %if.end.i166.preheader ]
  %matches.addr.0140.i = phi ptr [ %matches.addr.1.i, %cleanup64.i ], [ %add.ptr63, %if.end.i166.preheader ]
  %dec150.i = add i32 %dec150.in.i, -1, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.0148.i, metadata !782, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %len1.0147.i, metadata !792, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %len0.0146.i, metadata !791, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %ptr1.0144.i, metadata !790, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %ptr0.0142.i, metadata !789, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %len_best.addr.0141.i, metadata !788, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %matches.addr.0140.i, metadata !787, metadata !DIExpression()) #3, !dbg !1206
  %sub6.i152 = sub i32 %42, %sub149.i, !dbg !1222
  %cmp7.i153 = icmp ult i32 %42, %sub149.i, !dbg !1223
  %spec.select.i154 = select i1 %cmp7.i153, i32 %14, i32 0, !dbg !1224
  %add.i155 = add i32 %sub6.i152, %spec.select.i154, !dbg !1225
  %shl8.i156 = shl i32 %add.i155, 1, !dbg !1226
  %idx.ext9.i157 = zext i32 %shl8.i156 to i64, !dbg !1227
  %add.ptr10.i158 = getelementptr inbounds i32, ptr %41, i64 %idx.ext9.i157, !dbg !1227
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i158, metadata !795, metadata !DIExpression()) #3, !dbg !1212
  %idx.ext11.i159 = zext i32 %sub149.i to i64, !dbg !1228
  %idx.neg.i160 = sub nsw i64 0, %idx.ext11.i159, !dbg !1228
  %add.ptr12.i161 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i160, !dbg !1228
  call void @llvm.dbg.value(metadata ptr %add.ptr12.i161, metadata !796, metadata !DIExpression()) #3, !dbg !1212
  %43 = tail call i32 @llvm.umin.i32(i32 %len0.0146.i, i32 %len1.0147.i) #3, !dbg !1229
  call void @llvm.dbg.value(metadata i32 %43, metadata !797, metadata !DIExpression()) #3, !dbg !1212
  %idxprom.i162 = zext i32 %43 to i64, !dbg !1230
  %arrayidx.i163 = getelementptr inbounds i8, ptr %add.ptr12.i161, i64 %idxprom.i162, !dbg !1230
  %44 = load i8, ptr %arrayidx.i163, align 1, !dbg !1230, !tbaa !147
  %arrayidx19.i164 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i162, !dbg !1231
  %45 = load i8, ptr %arrayidx19.i164, align 1, !dbg !1231, !tbaa !147
  %cmp21.i165 = icmp eq i8 %44, %45, !dbg !1232
  br i1 %cmp21.i165, label %while.cond24.i170, label %if.end50.i, !dbg !1233

while.cond24.i170:                                ; preds = %if.end.i166, %while.body27.i175
  %len.0.i167 = phi i32 [ %inc.i168, %while.body27.i175 ], [ %43, %if.end.i166 ], !dbg !1212
  call void @llvm.dbg.value(metadata i32 %len.0.i167, metadata !797, metadata !DIExpression()) #3, !dbg !1212
  %inc.i168 = add i32 %len.0.i167, 1, !dbg !1234
  call void @llvm.dbg.value(metadata i32 %inc.i168, metadata !797, metadata !DIExpression()) #3, !dbg !1212
  %cmp25.not.i169 = icmp eq i32 %inc.i168, %len_limit.0, !dbg !1235
  br i1 %cmp25.not.i169, label %while.end.i, label %while.body27.i175, !dbg !1236

while.body27.i175:                                ; preds = %while.cond24.i170
  %idxprom28.i171 = zext i32 %inc.i168 to i64, !dbg !1237
  %arrayidx29.i172 = getelementptr inbounds i8, ptr %add.ptr12.i161, i64 %idxprom28.i171, !dbg !1237
  %46 = load i8, ptr %arrayidx29.i172, align 1, !dbg !1237, !tbaa !147
  %arrayidx32.i173 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i171, !dbg !1238
  %47 = load i8, ptr %arrayidx32.i173, align 1, !dbg !1238, !tbaa !147
  %cmp34.not.i174 = icmp eq i8 %46, %47, !dbg !1239
  br i1 %cmp34.not.i174, label %while.cond24.i170, label %while.end.thread.i, !dbg !1240, !llvm.loop !1241

while.end.i:                                      ; preds = %while.cond24.i170
  %cmp38.i = icmp ult i32 %len_best.addr.0141.i, %len_limit.0, !dbg !1243
  br i1 %cmp38.i, label %if.then45.i, label %if.end50.i, !dbg !1244

while.end.thread.i:                               ; preds = %while.body27.i175
  %idxprom28.i171.le = zext i32 %inc.i168 to i64, !dbg !1237
  %cmp38115.i = icmp ult i32 %len_best.addr.0141.i, %inc.i168, !dbg !1243
  br i1 %cmp38115.i, label %if.then40.thread.i, label %if.end50.i, !dbg !1244

if.then40.thread.i:                               ; preds = %while.end.thread.i
  call void @llvm.dbg.value(metadata i32 %inc.i168, metadata !788, metadata !DIExpression()) #3, !dbg !1206
  store i32 %inc.i168, ptr %matches.addr.0140.i, align 4, !dbg !1245, !tbaa !103
  %sub42116.i = add i32 %sub149.i, -1, !dbg !1246
  %dist117.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0140.i, i64 0, i32 1, !dbg !1247
  store i32 %sub42116.i, ptr %dist117.i, align 4, !dbg !1248, !tbaa !140
  %incdec.ptr118.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0140.i, i64 1, !dbg !1249
  br label %if.end50.i, !dbg !1250

if.then45.i:                                      ; preds = %while.end.i
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !788, metadata !DIExpression()) #3, !dbg !1206
  store i32 %len_limit.0, ptr %matches.addr.0140.i, align 4, !dbg !1245, !tbaa !103
  %sub42.i = add i32 %sub149.i, -1, !dbg !1246
  %dist.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0140.i, i64 0, i32 1, !dbg !1247
  store i32 %sub42.i, ptr %dist.i, align 4, !dbg !1248, !tbaa !140
  %incdec.ptr.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0140.i, i64 1, !dbg !1249
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !787, metadata !DIExpression()) #3, !dbg !1206
  %48 = load i32, ptr %add.ptr10.i158, align 4, !dbg !1251, !tbaa !156
  store i32 %48, ptr %ptr1.0144.i, align 4, !dbg !1252, !tbaa !156
  %arrayidx47.i = getelementptr inbounds i32, ptr %add.ptr10.i158, i64 1, !dbg !1253
  %49 = load i32, ptr %arrayidx47.i, align 4, !dbg !1253, !tbaa !156
  store i32 %49, ptr %ptr0.0142.i, align 4, !dbg !1254, !tbaa !156
  br label %bt_find_func.exit, !dbg !1255

if.end50.i:                                       ; preds = %while.end.i, %if.then40.thread.i, %while.end.thread.i, %if.end.i166
  %idxprom51.i.pre-phi = phi i64 [ %idxprom28.i171.le, %if.then40.thread.i ], [ %idxprom28.i171.le, %while.end.thread.i ], [ %idxprom.i162, %if.end.i166 ], [ %.pre, %while.end.i ], !dbg !1256
  %matches.addr.1.i = phi ptr [ %incdec.ptr118.i, %if.then40.thread.i ], [ %matches.addr.0140.i, %while.end.thread.i ], [ %matches.addr.0140.i, %if.end.i166 ], [ %matches.addr.0140.i, %while.end.i ]
  %len_best.addr.1.i = phi i32 [ %inc.i168, %if.then40.thread.i ], [ %len_best.addr.0141.i, %while.end.thread.i ], [ %len_best.addr.0141.i, %if.end.i166 ], [ %len_best.addr.0141.i, %while.end.i ]
  %len.1.i176 = phi i32 [ %inc.i168, %if.then40.thread.i ], [ %inc.i168, %while.end.thread.i ], [ %43, %if.end.i166 ], [ %len_limit.0, %while.end.i ], !dbg !1212
  call void @llvm.dbg.value(metadata i32 %len.1.i176, metadata !797, metadata !DIExpression()) #3, !dbg !1212
  call void @llvm.dbg.value(metadata i32 %len_best.addr.1.i, metadata !788, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %matches.addr.1.i, metadata !787, metadata !DIExpression()) #3, !dbg !1206
  %arrayidx52.i = getelementptr inbounds i8, ptr %add.ptr12.i161, i64 %idxprom51.i.pre-phi, !dbg !1256
  %50 = load i8, ptr %arrayidx52.i, align 1, !dbg !1256, !tbaa !147
  %arrayidx55.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom51.i.pre-phi, !dbg !1257
  %51 = load i8, ptr %arrayidx55.i, align 1, !dbg !1257, !tbaa !147
  %cmp57.i = icmp ult i8 %50, %51, !dbg !1258
  br i1 %cmp57.i, label %if.then59.i, label %if.else.i177, !dbg !1259

if.then59.i:                                      ; preds = %if.end50.i
  store i32 %cur_match.addr.0148.i, ptr %ptr1.0144.i, align 4, !dbg !1260, !tbaa !156
  %add.ptr60.i = getelementptr inbounds i32, ptr %add.ptr10.i158, i64 1, !dbg !1261
  call void @llvm.dbg.value(metadata ptr %add.ptr60.i, metadata !790, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 undef, metadata !782, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %len.1.i176, metadata !792, metadata !DIExpression()) #3, !dbg !1206
  br label %cleanup64.i, !dbg !1262

if.else.i177:                                     ; preds = %if.end50.i
  store i32 %cur_match.addr.0148.i, ptr %ptr0.0142.i, align 4, !dbg !1263, !tbaa !156
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i158, metadata !789, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 undef, metadata !782, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %len.1.i176, metadata !791, metadata !DIExpression()) #3, !dbg !1206
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.else.i177, %if.then59.i
  %ptr0.1.i178 = phi ptr [ %ptr0.0142.i, %if.then59.i ], [ %add.ptr10.i158, %if.else.i177 ], !dbg !1206
  %ptr1.1.i179 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %ptr1.0144.i, %if.else.i177 ], !dbg !1206
  %len0.1.i180 = phi i32 [ %len0.0146.i, %if.then59.i ], [ %len.1.i176, %if.else.i177 ], !dbg !1206
  %len1.1.i181 = phi i32 [ %len.1.i176, %if.then59.i ], [ %len1.0147.i, %if.else.i177 ], !dbg !1206
  %cur_match.addr.1.in.i182 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %add.ptr10.i158, %if.else.i177 ]
  %cur_match.addr.1.i183 = load i32, ptr %cur_match.addr.1.in.i182, align 4, !dbg !1264, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.1.i183, metadata !782, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %dec150.i, metadata !783, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %len1.1.i181, metadata !792, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %len0.1.i180, metadata !791, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %ptr1.1.i179, metadata !790, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %ptr0.1.i178, metadata !789, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %len_best.addr.1.i, metadata !788, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %matches.addr.1.i, metadata !787, metadata !DIExpression()) #3, !dbg !1206
  %sub.i184 = sub i32 %add, %cur_match.addr.1.i183, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %sub.i184, metadata !793, metadata !DIExpression()) #3, !dbg !1212
  call void @llvm.dbg.value(metadata i32 %dec150.i, metadata !783, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !1206
  %cmp.i185 = icmp ne i32 %dec150.i, 0, !dbg !1213
  %cmp5.not.i186 = icmp ult i32 %sub.i184, %14
  %or.cond.i187 = select i1 %cmp.i185, i1 %cmp5.not.i186, i1 false, !dbg !1214
  br i1 %or.cond.i187, label %if.end.i166, label %if.then.i151, !dbg !1214, !llvm.loop !1265

bt_find_func.exit:                                ; preds = %if.then.i151, %if.then45.i
  %retval.2.ph.i = phi ptr [ %incdec.ptr.i, %if.then45.i ], [ %matches.addr.0.lcssa.i, %if.then.i151 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !790, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr undef, metadata !789, metadata !DIExpression()) #3, !dbg !1206
  call void @llvm.dbg.value(metadata ptr undef, metadata !787, metadata !DIExpression()) #3, !dbg !1206
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.2.ph.i to i64, !dbg !1204
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64, !dbg !1204
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1204
  %52 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1204
  %conv65 = trunc i64 %52 to i32, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %conv65, metadata !1057, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !1267
  %53 = load i32, ptr %cyclic_pos60, align 8, !dbg !1269, !tbaa !246
  %inc.i189 = add i32 %53, 1, !dbg !1269
  %54 = load i32, ptr %cyclic_size, align 4, !dbg !1270, !tbaa !214
  %cmp.i191 = icmp eq i32 %inc.i189, %54, !dbg !1271
  %spec.store.select.i192 = select i1 %cmp.i191, i32 0, i32 %inc.i189, !dbg !1272
  store i32 %spec.store.select.i192, ptr %cyclic_pos60, align 8, !dbg !1267
  %55 = load i32, ptr %read_pos, align 8, !dbg !1273, !tbaa !110
  %inc2.i194 = add i32 %55, 1, !dbg !1273
  store i32 %inc2.i194, ptr %read_pos, align 8, !dbg !1273, !tbaa !110
  %56 = load i32, ptr %offset, align 4, !dbg !1274, !tbaa !201
  %add.i196 = add i32 %56, %inc2.i194, !dbg !1274
  %cmp4.i197 = icmp eq i32 %add.i196, -1, !dbg !1274
  br i1 %cmp4.i197, label %if.then5.i204, label %cleanup76, !dbg !1275

if.then5.i204:                                    ; preds = %bt_find_func.exit
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !1276
  %sub.i.i198 = xor i32 %54, -1, !dbg !1278
  call void @llvm.dbg.value(metadata i32 %sub.i.i198, metadata !264, metadata !DIExpression()) #3, !dbg !1276
  %hash_size_sum.i.i199 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21, !dbg !1279
  %57 = load i32, ptr %hash_size_sum.i.i199, align 4, !dbg !1279, !tbaa !273
  %sons_count.i.i200 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22, !dbg !1280
  %58 = load i32, ptr %sons_count.i.i200, align 8, !dbg !1280, !tbaa !275
  %add.i.i201 = add i32 %58, %57, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %add.i.i201, metadata !265, metadata !DIExpression()) #3, !dbg !1276
  call void @llvm.dbg.value(metadata ptr %11, metadata !266, metadata !DIExpression()) #3, !dbg !1276
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !1282
  %cmp21.not.i.i203 = icmp eq i32 %add.i.i201, 0, !dbg !1283
  br i1 %cmp21.not.i.i203, label %normalize.exit.i215, label %for.body.preheader.i.i206, !dbg !1284

for.body.preheader.i.i206:                        ; preds = %if.then5.i204
  %wide.trip.count.i.i205 = zext i32 %add.i.i201 to i64, !dbg !1283
  br label %for.body.i.i211, !dbg !1284

for.body.i.i211:                                  ; preds = %for.body.i.i211, %for.body.preheader.i.i206
  %indvars.iv.i.i207 = phi i64 [ 0, %for.body.preheader.i.i206 ], [ %indvars.iv.next.i.i209, %for.body.i.i211 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i207, metadata !267, metadata !DIExpression()) #3, !dbg !1282
  %arrayidx.i.i208 = getelementptr inbounds i32, ptr %11, i64 %indvars.iv.i.i207, !dbg !1285
  %59 = load i32, ptr %arrayidx.i.i208, align 4, !dbg !1285, !tbaa !156
  %60 = tail call i32 @llvm.usub.sat.i32(i32 %59, i32 %sub.i.i198) #3, !dbg !1286
  store i32 %60, ptr %arrayidx.i.i208, align 4, !dbg !1287, !tbaa !156
  %indvars.iv.next.i.i209 = add nuw nsw i64 %indvars.iv.i.i207, 1, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i209, metadata !267, metadata !DIExpression()) #3, !dbg !1282
  %exitcond.not.i.i210 = icmp eq i64 %indvars.iv.next.i.i209, %wide.trip.count.i.i205, !dbg !1283
  br i1 %exitcond.not.i.i210, label %normalize.exit.loopexit.i213, label %for.body.i.i211, !dbg !1284, !llvm.loop !1289

normalize.exit.loopexit.i213:                     ; preds = %for.body.i.i211
  %.pre.i212 = load i32, ptr %offset, align 4, !dbg !1291, !tbaa !201
  br label %normalize.exit.i215, !dbg !1291

normalize.exit.i215:                              ; preds = %normalize.exit.loopexit.i213, %if.then5.i204
  %61 = phi i32 [ %.pre.i212, %normalize.exit.loopexit.i213 ], [ %56, %if.then5.i204 ], !dbg !1291
  %sub8.i.i214 = sub i32 %61, %sub.i.i198, !dbg !1291
  store i32 %sub8.i.i214, ptr %offset, align 4, !dbg !1291, !tbaa !201
  br label %cleanup76, !dbg !1292

cleanup76:                                        ; preds = %normalize.exit.i215, %bt_find_func.exit, %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %retval.1 = phi i32 [ 0, %if.then4 ], [ 1, %bt_skip_func.exit ], [ 1, %normalize.exit.i ], [ %conv65, %bt_find_func.exit ], [ %conv65, %normalize.exit.i215 ], !dbg !1064
  ret i32 %retval.1, !dbg !1293
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @lzma_mf_bt3_skip(ptr noundef %mf, i32 noundef %amount) local_unnamed_addr #1 !dbg !1294 {
entry:
  call void @llvm.dbg.value(metadata ptr %mf, metadata !1296, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i32 %amount, metadata !1297, metadata !DIExpression()), !dbg !1306
  %0 = getelementptr i8, ptr %mf, i64 24
  %1 = getelementptr i8, ptr %mf, i64 36
  %nice_len = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18
  %action = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 20
  %read_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5
  %offset = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 4
  %hash_mask = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 16
  %hash = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 12
  %depth = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 17
  %son = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13
  %cyclic_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14
  %cyclic_size = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 15
  %hash_size_sum.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21
  %sons_count.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22
  %pending.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 9
  br label %do.body, !dbg !1307

do.body:                                          ; preds = %cleanup, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %amount.addr.0, metadata !1297, metadata !DIExpression()), !dbg !1306
  %mf.val = load i32, ptr %0, align 8, !dbg !1308, !tbaa !110
  %mf.val53 = load i32, ptr %1, align 4, !dbg !1308, !tbaa !111
  call void @llvm.dbg.value(metadata ptr undef, metadata !112, metadata !DIExpression()), !dbg !1309
  %sub.i = sub i32 %mf.val53, %mf.val, !dbg !1311
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !1298, metadata !DIExpression()), !dbg !1312
  %2 = load i32, ptr %nice_len, align 8, !dbg !1313, !tbaa !106
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !1313
  br i1 %cmp.not, label %if.else, label %if.end5, !dbg !1308

if.else:                                          ; preds = %do.body
  %cmp2 = icmp ult i32 %sub.i, 3, !dbg !1315
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !1315

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, ptr %action, align 8, !dbg !1315, !tbaa !759
  %cmp3 = icmp eq i32 %3, 1, !dbg !1315
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1313

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  call void @llvm.dbg.value(metadata ptr %mf, metadata !184, metadata !DIExpression()), !dbg !1317
  %inc.i = add i32 %mf.val, 1, !dbg !1320
  store i32 %inc.i, ptr %read_pos, align 8, !dbg !1320, !tbaa !110
  %4 = load i32, ptr %pending.i, align 8, !dbg !1321, !tbaa !196
  %inc1.i = add i32 %4, 1, !dbg !1321
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !1321, !tbaa !196
  br label %cleanup, !dbg !1322

if.end5:                                          ; preds = %do.body, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %do.body ], !dbg !1312
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !1298, metadata !DIExpression()), !dbg !1312
  %mf.val54 = load ptr, ptr %mf, align 8, !dbg !1308, !tbaa !129
  call void @llvm.dbg.value(metadata ptr undef, metadata !130, metadata !DIExpression()), !dbg !1323
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !1325
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val54, i64 %idx.ext.i, !dbg !1325
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1300, metadata !DIExpression()), !dbg !1312
  %5 = load i32, ptr %offset, align 4, !dbg !1308, !tbaa !201
  %add = add i32 %5, %mf.val, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %add, metadata !1301, metadata !DIExpression()), !dbg !1312
  %6 = load i8, ptr %add.ptr.i, align 1, !dbg !1326, !tbaa !147
  %idxprom = zext i8 %6 to i64, !dbg !1326
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !1326
  %7 = load i32, ptr %arrayidx7, align 4, !dbg !1326, !tbaa !156
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !1326
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !1326, !tbaa !147
  %conv = zext i8 %8 to i32, !dbg !1326
  %xor = xor i32 %7, %conv, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %xor, metadata !1302, metadata !DIExpression()), !dbg !1312
  %and = and i32 %xor, 1023, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %and, metadata !1303, metadata !DIExpression()), !dbg !1312
  %arrayidx9 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !1326
  %9 = load i8, ptr %arrayidx9, align 1, !dbg !1326, !tbaa !147
  %conv10 = zext i8 %9 to i32, !dbg !1326
  %shl = shl nuw nsw i32 %conv10, 8, !dbg !1326
  %xor11 = xor i32 %shl, %xor, !dbg !1326
  %10 = load i32, ptr %hash_mask, align 8, !dbg !1326, !tbaa !203
  %and12 = and i32 %xor11, %10, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %and12, metadata !1304, metadata !DIExpression()), !dbg !1312
  %11 = load ptr, ptr %hash, align 8, !dbg !1327, !tbaa !205
  %add13 = add i32 %and12, 1024, !dbg !1328
  %idxprom14 = zext i32 %add13 to i64, !dbg !1329
  %arrayidx15 = getelementptr inbounds i32, ptr %11, i64 %idxprom14, !dbg !1329
  %12 = load i32, ptr %arrayidx15, align 4, !dbg !1329, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %12, metadata !1305, metadata !DIExpression()), !dbg !1312
  %idxprom17 = zext i32 %and to i64, !dbg !1330
  %arrayidx18 = getelementptr inbounds i32, ptr %11, i64 %idxprom17, !dbg !1330
  store i32 %add, ptr %arrayidx18, align 4, !dbg !1331, !tbaa !156
  store i32 %add, ptr %arrayidx15, align 4, !dbg !1332, !tbaa !156
  %13 = load i32, ptr %depth, align 4, !dbg !1333, !tbaa !294
  %14 = load ptr, ptr %son, align 8, !dbg !1333, !tbaa !245
  %15 = load i32, ptr %cyclic_pos, align 8, !dbg !1333, !tbaa !246
  %16 = load i32, ptr %cyclic_size, align 4, !dbg !1333, !tbaa !214
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !934, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %add, metadata !939, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !940, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %12, metadata !941, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %13, metadata !942, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %14, metadata !943, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %15, metadata !944, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %16, metadata !945, metadata !DIExpression()) #3, !dbg !1335
  %shl.i = shl i32 %15, 1, !dbg !1337
  %idx.ext.i56 = zext i32 %shl.i to i64, !dbg !1338
  %add.ptr.i57 = getelementptr inbounds i32, ptr %14, i64 %idx.ext.i56, !dbg !1338
  %add.ptr1.i = getelementptr inbounds i32, ptr %add.ptr.i57, i64 1, !dbg !1339
  call void @llvm.dbg.value(metadata ptr %add.ptr1.i, metadata !946, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %add.ptr.i57, metadata !947, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 0, metadata !948, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %12, metadata !941, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %13, metadata !942, metadata !DIExpression()) #3, !dbg !1335
  %sub111.i = sub i32 %add, %12, !dbg !1340
  call void @llvm.dbg.value(metadata i32 %sub111.i, metadata !950, metadata !DIExpression()) #3, !dbg !1341
  call void @llvm.dbg.value(metadata i32 %13, metadata !942, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !1335
  %cmp113.i = icmp ne i32 %13, 0, !dbg !1342
  %cmp5.not114.i = icmp ult i32 %sub111.i, %16
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i, !dbg !1343
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i, !dbg !1343

if.then.i:                                        ; preds = %cleanup58.i, %if.end5
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i57, %if.end5 ], [ %ptr1.1.i, %cleanup58.i ], !dbg !1344
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i, %cleanup58.i ], !dbg !1345
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !dbg !1346, !tbaa !156
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !dbg !1347, !tbaa !156
  br label %bt_skip_func.exit, !dbg !1348

if.end.i:                                         ; preds = %if.end5, %cleanup58.i
  %dec124.in.i = phi i32 [ %dec124.i, %cleanup58.i ], [ %13, %if.end5 ]
  %sub123.i = phi i32 [ %sub.i59, %cleanup58.i ], [ %sub111.i, %if.end5 ]
  %cur_match.addr.0122.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %12, %if.end5 ]
  %ptr0.0120.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %if.end5 ]
  %len1.0119.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %len0.0118.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i57, %if.end5 ]
  %dec124.i = add i32 %dec124.in.i, -1, !dbg !1349
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.0122.i, metadata !941, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %ptr0.0120.i, metadata !946, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %len1.0119.i, metadata !949, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %len0.0118.i, metadata !948, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %ptr1.0116.i, metadata !947, metadata !DIExpression()) #3, !dbg !1335
  %sub6.i = sub i32 %15, %sub123.i, !dbg !1350
  %cmp7.i = icmp ult i32 %15, %sub123.i, !dbg !1351
  %spec.select.i = select i1 %cmp7.i, i32 %16, i32 0, !dbg !1352
  %add.i = add i32 %sub6.i, %spec.select.i, !dbg !1353
  %shl8.i = shl i32 %add.i, 1, !dbg !1354
  %idx.ext9.i = zext i32 %shl8.i to i64, !dbg !1355
  %add.ptr10.i = getelementptr inbounds i32, ptr %14, i64 %idx.ext9.i, !dbg !1355
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i, metadata !952, metadata !DIExpression()) #3, !dbg !1341
  %idx.ext11.i = zext i32 %sub123.i to i64, !dbg !1356
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i, !dbg !1356
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !1356
  call void @llvm.dbg.value(metadata ptr %add.ptr12.i, metadata !953, metadata !DIExpression()) #3, !dbg !1341
  %17 = tail call i32 @llvm.umin.i32(i32 %len0.0118.i, i32 %len1.0119.i) #3, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %17, metadata !954, metadata !DIExpression()) #3, !dbg !1341
  %idxprom.i = zext i32 %17 to i64, !dbg !1358
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i, !dbg !1358
  %18 = load i8, ptr %arrayidx.i, align 1, !dbg !1358, !tbaa !147
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i, !dbg !1359
  %19 = load i8, ptr %arrayidx19.i, align 1, !dbg !1359, !tbaa !147
  %cmp21.i = icmp eq i8 %18, %19, !dbg !1360
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i, !dbg !1361

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i58, %while.body27.i ], [ %17, %if.end.i ], !dbg !1341
  call void @llvm.dbg.value(metadata i32 %len.0.i, metadata !954, metadata !DIExpression()) #3, !dbg !1341
  %inc.i58 = add i32 %len.0.i, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i32 %inc.i58, metadata !954, metadata !DIExpression()) #3, !dbg !1341
  %cmp25.not.i = icmp eq i32 %inc.i58, %len_limit.0, !dbg !1363
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i, !dbg !1364

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i58 to i64, !dbg !1365
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i, !dbg !1365
  %20 = load i8, ptr %arrayidx29.i, align 1, !dbg !1365, !tbaa !147
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i, !dbg !1366
  %21 = load i8, ptr %arrayidx32.i, align 1, !dbg !1366, !tbaa !147
  %cmp34.not.i = icmp eq i8 %20, %21, !dbg !1367
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i, !dbg !1368, !llvm.loop !1369

if.then40.i:                                      ; preds = %while.cond24.i
  %22 = load i32, ptr %add.ptr10.i, align 4, !dbg !1371, !tbaa !156
  store i32 %22, ptr %ptr1.0116.i, align 4, !dbg !1372, !tbaa !156
  %arrayidx42.i = getelementptr inbounds i32, ptr %add.ptr10.i, i64 1, !dbg !1373
  %23 = load i32, ptr %arrayidx42.i, align 4, !dbg !1373, !tbaa !156
  store i32 %23, ptr %ptr0.0120.i, align 4, !dbg !1374, !tbaa !156
  br label %bt_skip_func.exit, !dbg !1375

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %24 = phi i8 [ %19, %if.end.i ], [ %21, %while.body27.i ], !dbg !1376
  %25 = phi i8 [ %18, %if.end.i ], [ %20, %while.body27.i ], !dbg !1377
  %len.1.i = phi i32 [ %17, %if.end.i ], [ %inc.i58, %while.body27.i ], !dbg !1341
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !954, metadata !DIExpression()) #3, !dbg !1341
  %cmp51.i = icmp ult i8 %25, %24, !dbg !1378
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i, !dbg !1379

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0122.i, ptr %ptr1.0116.i, align 4, !dbg !1380, !tbaa !156
  %add.ptr54.i = getelementptr inbounds i32, ptr %add.ptr10.i, i64 1, !dbg !1381
  call void @llvm.dbg.value(metadata ptr %add.ptr54.i, metadata !947, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 undef, metadata !941, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !949, metadata !DIExpression()) #3, !dbg !1335
  br label %cleanup58.i, !dbg !1382

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0122.i, ptr %ptr0.0120.i, align 4, !dbg !1383, !tbaa !156
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i, metadata !946, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 undef, metadata !941, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !948, metadata !DIExpression()) #3, !dbg !1335
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ], !dbg !1335
  %len0.1.i = phi i32 [ %len0.0118.i, %if.then53.i ], [ %len.1.i, %if.else.i ], !dbg !1335
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0119.i, %if.else.i ], !dbg !1335
  %ptr0.1.i = phi ptr [ %ptr0.0120.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ], !dbg !1335
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !dbg !1384, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.1.i, metadata !941, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %dec124.i, metadata !942, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %ptr0.1.i, metadata !946, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %len1.1.i, metadata !949, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %len0.1.i, metadata !948, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %ptr1.1.i, metadata !947, metadata !DIExpression()) #3, !dbg !1335
  %sub.i59 = sub i32 %add, %cur_match.addr.1.i, !dbg !1340
  call void @llvm.dbg.value(metadata i32 %sub.i59, metadata !950, metadata !DIExpression()) #3, !dbg !1341
  call void @llvm.dbg.value(metadata i32 %dec124.i, metadata !942, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !1335
  %cmp.i = icmp ne i32 %dec124.i, 0, !dbg !1342
  %cmp5.not.i = icmp ult i32 %sub.i59, %16
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false, !dbg !1343
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !1343, !llvm.loop !1385

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !946, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata ptr undef, metadata !947, metadata !DIExpression()) #3, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !1388
  %26 = load i32, ptr %cyclic_pos, align 8, !dbg !1390, !tbaa !246
  %inc.i60 = add i32 %26, 1, !dbg !1390
  %27 = load i32, ptr %cyclic_size, align 4, !dbg !1391, !tbaa !214
  %cmp.i61 = icmp eq i32 %inc.i60, %27, !dbg !1392
  %spec.store.select.i = select i1 %cmp.i61, i32 0, i32 %inc.i60, !dbg !1393
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !1388
  %28 = load i32, ptr %read_pos, align 8, !dbg !1394, !tbaa !110
  %inc2.i = add i32 %28, 1, !dbg !1394
  store i32 %inc2.i, ptr %read_pos, align 8, !dbg !1394, !tbaa !110
  %29 = load i32, ptr %offset, align 4, !dbg !1395, !tbaa !201
  %add.i63 = add i32 %29, %inc2.i, !dbg !1395
  %cmp4.i = icmp eq i32 %add.i63, -1, !dbg !1395
  br i1 %cmp4.i, label %if.then5.i, label %cleanup, !dbg !1396

if.then5.i:                                       ; preds = %bt_skip_func.exit
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !1397
  %sub.i.i = xor i32 %27, -1, !dbg !1399
  call void @llvm.dbg.value(metadata i32 %sub.i.i, metadata !264, metadata !DIExpression()) #3, !dbg !1397
  %30 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !1400, !tbaa !273
  %31 = load i32, ptr %sons_count.i.i, align 8, !dbg !1401, !tbaa !275
  %add.i.i = add i32 %31, %30, !dbg !1402
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !265, metadata !DIExpression()) #3, !dbg !1397
  call void @llvm.dbg.value(metadata ptr %11, metadata !266, metadata !DIExpression()) #3, !dbg !1397
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !1403
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !1404
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !1405

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !1404
  br label %for.body.i.i, !dbg !1405

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !1403
  %arrayidx.i.i = getelementptr inbounds i32, ptr %11, i64 %indvars.iv.i.i, !dbg !1406
  %32 = load i32, ptr %arrayidx.i.i, align 4, !dbg !1406, !tbaa !156
  %33 = tail call i32 @llvm.usub.sat.i32(i32 %32, i32 %sub.i.i) #3, !dbg !1407
  store i32 %33, ptr %arrayidx.i.i, align 4, !dbg !1408, !tbaa !156
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !1403
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1404
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !1405, !llvm.loop !1410

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i
  %.pre.i = load i32, ptr %offset, align 4, !dbg !1412, !tbaa !201
  br label %normalize.exit.i, !dbg !1412

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %34 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %29, %if.then5.i ], !dbg !1412
  %sub8.i.i = sub i32 %34, %sub.i.i, !dbg !1412
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !1412, !tbaa !201
  br label %cleanup, !dbg !1413

cleanup:                                          ; preds = %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %dec = add i32 %amount.addr.0, -1, !dbg !1414
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1297, metadata !DIExpression()), !dbg !1306
  %cmp25.not = icmp eq i32 %dec, 0, !dbg !1415
  br i1 %cmp25.not, label %do.end27, label %do.body, !dbg !1416, !llvm.loop !1417

do.end27:                                         ; preds = %cleanup
  ret void, !dbg !1419
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @lzma_mf_bt4_find(ptr noundef %mf, ptr noundef %matches) local_unnamed_addr #1 !dbg !1420 {
entry:
  call void @llvm.dbg.value(metadata ptr %mf, metadata !1422, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata ptr %matches, metadata !1423, metadata !DIExpression()), !dbg !1436
  %0 = getelementptr i8, ptr %mf, i64 24, !dbg !1437
  %mf.val = load i32, ptr %0, align 8, !dbg !1437, !tbaa !110
  %1 = getelementptr i8, ptr %mf, i64 36, !dbg !1437
  %mf.val211 = load i32, ptr %1, align 4, !dbg !1437, !tbaa !111
  call void @llvm.dbg.value(metadata ptr undef, metadata !112, metadata !DIExpression()), !dbg !1438
  %sub.i = sub i32 %mf.val211, %mf.val, !dbg !1440
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !1424, metadata !DIExpression()), !dbg !1436
  %nice_len = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18, !dbg !1441
  %2 = load i32, ptr %nice_len, align 8, !dbg !1441, !tbaa !106
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !1441
  br i1 %cmp.not, label %if.else, label %if.end5, !dbg !1437

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sub.i, 4, !dbg !1443
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !1443

lor.lhs.false:                                    ; preds = %if.else
  %action = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 20, !dbg !1443
  %3 = load i32, ptr %action, align 8, !dbg !1443, !tbaa !759
  %cmp3 = icmp eq i32 %3, 1, !dbg !1443
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1441

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  call void @llvm.dbg.value(metadata ptr %mf, metadata !184, metadata !DIExpression()), !dbg !1445
  %read_pos.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5, !dbg !1448
  %inc.i = add i32 %mf.val, 1, !dbg !1449
  store i32 %inc.i, ptr %read_pos.i, align 8, !dbg !1449, !tbaa !110
  %pending.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 9, !dbg !1450
  %4 = load i32, ptr %pending.i, align 8, !dbg !1451, !tbaa !196
  %inc1.i = add i32 %4, 1, !dbg !1451
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !1451, !tbaa !196
  br label %cleanup130, !dbg !1452

if.end5:                                          ; preds = %entry, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %entry ], !dbg !1436
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !1424, metadata !DIExpression()), !dbg !1436
  %mf.val212 = load ptr, ptr %mf, align 8, !dbg !1437, !tbaa !129
  call void @llvm.dbg.value(metadata ptr undef, metadata !130, metadata !DIExpression()), !dbg !1453
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !1455
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val212, i64 %idx.ext.i, !dbg !1455
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1425, metadata !DIExpression()), !dbg !1436
  %read_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5, !dbg !1437
  %offset = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 4, !dbg !1437
  %5 = load i32, ptr %offset, align 4, !dbg !1437, !tbaa !201
  %add = add i32 %5, %mf.val, !dbg !1437
  call void @llvm.dbg.value(metadata i32 %add, metadata !1426, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 0, metadata !1427, metadata !DIExpression()), !dbg !1436
  %6 = load i8, ptr %add.ptr.i, align 1, !dbg !1456, !tbaa !147
  %idxprom = zext i8 %6 to i64, !dbg !1456
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !1456
  %7 = load i32, ptr %arrayidx7, align 4, !dbg !1456, !tbaa !156
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !1456
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !1456, !tbaa !147
  %conv = zext i8 %8 to i32, !dbg !1456
  %xor = xor i32 %7, %conv, !dbg !1456
  call void @llvm.dbg.value(metadata i32 %xor, metadata !1428, metadata !DIExpression()), !dbg !1436
  %and = and i32 %xor, 1023, !dbg !1456
  call void @llvm.dbg.value(metadata i32 %and, metadata !1429, metadata !DIExpression()), !dbg !1436
  %arrayidx9 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !1456
  %9 = load i8, ptr %arrayidx9, align 1, !dbg !1456, !tbaa !147
  %conv10 = zext i8 %9 to i32, !dbg !1456
  %shl = shl nuw nsw i32 %conv10, 8, !dbg !1456
  %xor11 = xor i32 %shl, %xor, !dbg !1456
  %and12 = and i32 %xor11, 65535, !dbg !1456
  call void @llvm.dbg.value(metadata i32 %and12, metadata !1430, metadata !DIExpression()), !dbg !1436
  %arrayidx17 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3, !dbg !1456
  %10 = load i8, ptr %arrayidx17, align 1, !dbg !1456, !tbaa !147
  %idxprom18 = zext i8 %10 to i64, !dbg !1456
  %arrayidx19 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom18, !dbg !1456
  %11 = load i32, ptr %arrayidx19, align 4, !dbg !1456, !tbaa !156
  %shl20 = shl i32 %11, 5, !dbg !1456
  %xor21 = xor i32 %xor11, %shl20, !dbg !1456
  %hash_mask = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 16, !dbg !1456
  %12 = load i32, ptr %hash_mask, align 8, !dbg !1456, !tbaa !203
  %and22 = and i32 %xor21, %12, !dbg !1456
  call void @llvm.dbg.value(metadata i32 %and22, metadata !1431, metadata !DIExpression()), !dbg !1436
  %hash = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 12, !dbg !1457
  %13 = load ptr, ptr %hash, align 8, !dbg !1457, !tbaa !205
  %idxprom23 = zext i32 %and to i64, !dbg !1458
  %arrayidx24 = getelementptr inbounds i32, ptr %13, i64 %idxprom23, !dbg !1458
  %14 = load i32, ptr %arrayidx24, align 4, !dbg !1458, !tbaa !156
  %sub = sub i32 %add, %14, !dbg !1459
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1432, metadata !DIExpression()), !dbg !1436
  %add26 = add nuw nsw i32 %and12, 1024, !dbg !1460
  %idxprom27 = zext i32 %add26 to i64, !dbg !1461
  %arrayidx28 = getelementptr inbounds i32, ptr %13, i64 %idxprom27, !dbg !1461
  %15 = load i32, ptr %arrayidx28, align 4, !dbg !1461, !tbaa !156
  %sub29 = sub i32 %add, %15, !dbg !1462
  call void @llvm.dbg.value(metadata i32 %sub29, metadata !1433, metadata !DIExpression()), !dbg !1436
  %add31 = add i32 %and22, 66560, !dbg !1463
  %idxprom32 = zext i32 %add31 to i64, !dbg !1464
  %arrayidx33 = getelementptr inbounds i32, ptr %13, i64 %idxprom32, !dbg !1464
  %16 = load i32, ptr %arrayidx33, align 4, !dbg !1464, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %16, metadata !1434, metadata !DIExpression()), !dbg !1436
  store i32 %add, ptr %arrayidx24, align 4, !dbg !1465, !tbaa !156
  store i32 %add, ptr %arrayidx28, align 4, !dbg !1466, !tbaa !156
  store i32 %add, ptr %arrayidx33, align 4, !dbg !1467, !tbaa !156
  call void @llvm.dbg.value(metadata i32 1, metadata !1435, metadata !DIExpression()), !dbg !1436
  %cyclic_size = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 15, !dbg !1468
  %17 = load i32, ptr %cyclic_size, align 4, !dbg !1468, !tbaa !214
  %cmp45 = icmp ult i32 %sub, %17, !dbg !1470
  br i1 %cmp45, label %land.lhs.true, label %if.end55, !dbg !1471

land.lhs.true:                                    ; preds = %if.end5
  %idx.ext = zext i32 %sub to i64, !dbg !1472
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !1472
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg, !dbg !1472
  %18 = load i8, ptr %add.ptr, align 1, !dbg !1473, !tbaa !147
  %19 = load i8, ptr %add.ptr.i, align 1, !dbg !1474, !tbaa !147
  %cmp49 = icmp eq i8 %18, %19, !dbg !1475
  br i1 %cmp49, label %if.then51, label %if.end55, !dbg !1476

if.then51:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32 2, metadata !1435, metadata !DIExpression()), !dbg !1436
  store i32 2, ptr %matches, align 4, !dbg !1477, !tbaa !103
  %sub53 = add i32 %sub, -1, !dbg !1479
  %dist = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 0, i32 1, !dbg !1480
  store i32 %sub53, ptr %dist, align 4, !dbg !1481, !tbaa !140
  call void @llvm.dbg.value(metadata i32 1, metadata !1427, metadata !DIExpression()), !dbg !1436
  br label %if.end55, !dbg !1482

if.end55:                                         ; preds = %if.then51, %land.lhs.true, %if.end5
  %cmp76.not = phi i1 [ false, %if.then51 ], [ true, %land.lhs.true ], [ true, %if.end5 ], !dbg !1436
  %matches_count.0 = phi i32 [ 1, %if.then51 ], [ 0, %land.lhs.true ], [ 0, %if.end5 ], !dbg !1436
  %len_best.0 = phi i32 [ 2, %if.then51 ], [ 1, %land.lhs.true ], [ 1, %if.end5 ], !dbg !1436
  call void @llvm.dbg.value(metadata i32 %len_best.0, metadata !1435, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %matches_count.0, metadata !1427, metadata !DIExpression()), !dbg !1436
  %cmp56.not = icmp ne i32 %15, %14, !dbg !1483
  %cmp60 = icmp ult i32 %sub29, %17
  %or.cond = select i1 %cmp56.not, i1 %cmp60, i1 false, !dbg !1485
  br i1 %or.cond, label %land.lhs.true62, label %if.end75, !dbg !1485

land.lhs.true62:                                  ; preds = %if.end55
  %idx.ext63 = zext i32 %sub29 to i64, !dbg !1486
  %idx.neg64 = sub nsw i64 0, %idx.ext63, !dbg !1486
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg64, !dbg !1486
  %20 = load i8, ptr %add.ptr65, align 1, !dbg !1487, !tbaa !147
  %21 = load i8, ptr %add.ptr.i, align 1, !dbg !1488, !tbaa !147
  %cmp68 = icmp eq i8 %20, %21, !dbg !1489
  br i1 %cmp68, label %if.end75.thread, label %if.end75, !dbg !1490

if.end75.thread:                                  ; preds = %land.lhs.true62
  call void @llvm.dbg.value(metadata i32 3, metadata !1435, metadata !DIExpression()), !dbg !1436
  %sub71 = add i32 %sub29, -1, !dbg !1491
  %inc = add nuw nsw i32 %matches_count.0, 1, !dbg !1493
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1427, metadata !DIExpression()), !dbg !1436
  %idxprom72 = zext i32 %matches_count.0 to i64, !dbg !1494
  %dist74 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom72, i32 1, !dbg !1495
  store i32 %sub71, ptr %dist74, align 4, !dbg !1496, !tbaa !140
  call void @llvm.dbg.value(metadata i32 %len_best.0, metadata !1435, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1432, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %matches_count.0, metadata !1427, metadata !DIExpression()), !dbg !1436
  br label %for.cond.preheader, !dbg !1497

if.end75:                                         ; preds = %land.lhs.true62, %if.end55
  call void @llvm.dbg.value(metadata i32 %len_best.0, metadata !1435, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1432, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %matches_count.0, metadata !1427, metadata !DIExpression()), !dbg !1436
  br i1 %cmp76.not, label %if.end104, label %for.cond.preheader, !dbg !1497

for.cond.preheader:                               ; preds = %if.end75.thread, %if.end75
  %len_best.1331 = phi i32 [ 3, %if.end75.thread ], [ %len_best.0, %if.end75 ]
  %delta2.0330 = phi i32 [ %sub29, %if.end75.thread ], [ %sub, %if.end75 ]
  %matches_count.1327 = phi i32 [ %inc, %if.end75.thread ], [ 1, %if.end75 ]
  call void @llvm.dbg.value(metadata i32 %len_best.0, metadata !1435, metadata !DIExpression()), !dbg !1436
  %cmp79.not309 = icmp eq i32 %len_best.1331, %len_limit.0, !dbg !1498
  br i1 %cmp79.not309, label %do.body, label %for.body.lr.ph, !dbg !1503

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext83 = zext i32 %delta2.0330 to i64
  %idx.neg84 = sub nsw i64 0, %idx.ext83
  br label %for.body, !dbg !1503

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %len_best.2310 = phi i32 [ %len_best.1331, %for.body.lr.ph ], [ %inc94, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %len_best.2310, metadata !1435, metadata !DIExpression()), !dbg !1436
  %idx.ext81 = zext i32 %len_best.2310 to i64, !dbg !1504
  %add.ptr82 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext81, !dbg !1504
  %add.ptr85 = getelementptr inbounds i8, ptr %add.ptr82, i64 %idx.neg84, !dbg !1506
  %22 = load i8, ptr %add.ptr85, align 1, !dbg !1507, !tbaa !147
  %23 = load i8, ptr %add.ptr82, align 1, !dbg !1508, !tbaa !147
  %cmp90.not = icmp eq i8 %22, %23, !dbg !1509
  br i1 %cmp90.not, label %for.inc, label %for.end, !dbg !1510

for.inc:                                          ; preds = %for.body
  %inc94 = add i32 %len_best.2310, 1, !dbg !1511
  call void @llvm.dbg.value(metadata i32 %inc94, metadata !1435, metadata !DIExpression()), !dbg !1436
  %cmp79.not = icmp eq i32 %inc94, %len_limit.0, !dbg !1498
  br i1 %cmp79.not, label %do.body, label %for.body, !dbg !1503, !llvm.loop !1512

for.end:                                          ; preds = %for.body
  %sub95 = add nsw i32 %matches_count.1327, -1, !dbg !1514
  %idxprom96 = zext i32 %sub95 to i64, !dbg !1515
  %arrayidx97 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom96, !dbg !1515
  store i32 %len_best.2310, ptr %arrayidx97, align 4, !dbg !1516, !tbaa !103
  br label %if.end104

do.body:                                          ; preds = %for.inc, %for.cond.preheader
  %sub95294 = add nsw i32 %matches_count.1327, -1, !dbg !1514
  %idxprom96295 = zext i32 %sub95294 to i64, !dbg !1515
  %arrayidx97296 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idxprom96295, !dbg !1515
  store i32 %len_limit.0, ptr %arrayidx97296, align 4, !dbg !1516, !tbaa !103
  %depth = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 17, !dbg !1517
  %24 = load i32, ptr %depth, align 4, !dbg !1517, !tbaa !294
  %son = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13, !dbg !1517
  %25 = load ptr, ptr %son, align 8, !dbg !1517, !tbaa !245
  %cyclic_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14, !dbg !1517
  %26 = load i32, ptr %cyclic_pos, align 8, !dbg !1517, !tbaa !246
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !934, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %add, metadata !939, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !940, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %16, metadata !941, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %24, metadata !942, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %25, metadata !943, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %26, metadata !944, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %17, metadata !945, metadata !DIExpression()) #3, !dbg !1521
  %shl.i = shl i32 %26, 1, !dbg !1523
  %idx.ext.i214 = zext i32 %shl.i to i64, !dbg !1524
  %add.ptr.i215 = getelementptr inbounds i32, ptr %25, i64 %idx.ext.i214, !dbg !1524
  %add.ptr1.i = getelementptr inbounds i32, ptr %add.ptr.i215, i64 1, !dbg !1525
  call void @llvm.dbg.value(metadata ptr %add.ptr1.i, metadata !946, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %add.ptr.i215, metadata !947, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 0, metadata !948, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()) #3, !dbg !1521
  %sub111.i = sub i32 %add, %16, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %sub111.i, metadata !950, metadata !DIExpression()) #3, !dbg !1527
  call void @llvm.dbg.value(metadata i32 %24, metadata !942, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !1521
  %cmp113.i = icmp ne i32 %24, 0, !dbg !1528
  %cmp5.not114.i = icmp ult i32 %sub111.i, %17
  %or.cond115.i = and i1 %cmp5.not114.i, %cmp113.i, !dbg !1529
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i, !dbg !1529

if.then.i:                                        ; preds = %cleanup58.i, %do.body
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i215, %do.body ], [ %ptr1.1.i, %cleanup58.i ], !dbg !1530
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %do.body ], [ %ptr0.1.i, %cleanup58.i ], !dbg !1531
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !dbg !1532, !tbaa !156
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !dbg !1533, !tbaa !156
  br label %bt_skip_func.exit, !dbg !1534

if.end.i:                                         ; preds = %do.body, %cleanup58.i
  %dec124.in.i = phi i32 [ %dec124.i, %cleanup58.i ], [ %24, %do.body ]
  %sub123.i = phi i32 [ %sub.i217, %cleanup58.i ], [ %sub111.i, %do.body ]
  %cur_match.addr.0122.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %16, %do.body ]
  %ptr0.0120.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %do.body ]
  %len1.0119.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %do.body ]
  %len0.0118.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %do.body ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i215, %do.body ]
  %dec124.i = add i32 %dec124.in.i, -1, !dbg !1535
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.0122.i, metadata !941, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %ptr0.0120.i, metadata !946, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %len1.0119.i, metadata !949, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %len0.0118.i, metadata !948, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %ptr1.0116.i, metadata !947, metadata !DIExpression()) #3, !dbg !1521
  %sub6.i = sub i32 %26, %sub123.i, !dbg !1536
  %cmp7.i = icmp ult i32 %26, %sub123.i, !dbg !1537
  %spec.select.i = select i1 %cmp7.i, i32 %17, i32 0, !dbg !1538
  %add.i = add i32 %sub6.i, %spec.select.i, !dbg !1539
  %shl8.i = shl i32 %add.i, 1, !dbg !1540
  %idx.ext9.i = zext i32 %shl8.i to i64, !dbg !1541
  %add.ptr10.i = getelementptr inbounds i32, ptr %25, i64 %idx.ext9.i, !dbg !1541
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i, metadata !952, metadata !DIExpression()) #3, !dbg !1527
  %idx.ext11.i = zext i32 %sub123.i to i64, !dbg !1542
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i, !dbg !1542
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !1542
  call void @llvm.dbg.value(metadata ptr %add.ptr12.i, metadata !953, metadata !DIExpression()) #3, !dbg !1527
  %27 = tail call i32 @llvm.umin.i32(i32 %len0.0118.i, i32 %len1.0119.i) #3, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %27, metadata !954, metadata !DIExpression()) #3, !dbg !1527
  %idxprom.i = zext i32 %27 to i64, !dbg !1544
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i, !dbg !1544
  %28 = load i8, ptr %arrayidx.i, align 1, !dbg !1544, !tbaa !147
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i, !dbg !1545
  %29 = load i8, ptr %arrayidx19.i, align 1, !dbg !1545, !tbaa !147
  %cmp21.i = icmp eq i8 %28, %29, !dbg !1546
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i, !dbg !1547

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i216, %while.body27.i ], [ %27, %if.end.i ], !dbg !1527
  call void @llvm.dbg.value(metadata i32 %len.0.i, metadata !954, metadata !DIExpression()) #3, !dbg !1527
  %inc.i216 = add i32 %len.0.i, 1, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %inc.i216, metadata !954, metadata !DIExpression()) #3, !dbg !1527
  %cmp25.not.i = icmp eq i32 %inc.i216, %len_limit.0, !dbg !1549
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i, !dbg !1550

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i216 to i64, !dbg !1551
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i, !dbg !1551
  %30 = load i8, ptr %arrayidx29.i, align 1, !dbg !1551, !tbaa !147
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i, !dbg !1552
  %31 = load i8, ptr %arrayidx32.i, align 1, !dbg !1552, !tbaa !147
  %cmp34.not.i = icmp eq i8 %30, %31, !dbg !1553
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i, !dbg !1554, !llvm.loop !1555

if.then40.i:                                      ; preds = %while.cond24.i
  %32 = load i32, ptr %add.ptr10.i, align 4, !dbg !1557, !tbaa !156
  store i32 %32, ptr %ptr1.0116.i, align 4, !dbg !1558, !tbaa !156
  %arrayidx42.i = getelementptr inbounds i32, ptr %add.ptr10.i, i64 1, !dbg !1559
  %33 = load i32, ptr %arrayidx42.i, align 4, !dbg !1559, !tbaa !156
  store i32 %33, ptr %ptr0.0120.i, align 4, !dbg !1560, !tbaa !156
  br label %bt_skip_func.exit, !dbg !1561

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %34 = phi i8 [ %29, %if.end.i ], [ %31, %while.body27.i ], !dbg !1562
  %35 = phi i8 [ %28, %if.end.i ], [ %30, %while.body27.i ], !dbg !1563
  %len.1.i = phi i32 [ %27, %if.end.i ], [ %inc.i216, %while.body27.i ], !dbg !1527
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !954, metadata !DIExpression()) #3, !dbg !1527
  %cmp51.i = icmp ult i8 %35, %34, !dbg !1564
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i, !dbg !1565

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0122.i, ptr %ptr1.0116.i, align 4, !dbg !1566, !tbaa !156
  %add.ptr54.i = getelementptr inbounds i32, ptr %add.ptr10.i, i64 1, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %add.ptr54.i, metadata !947, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 undef, metadata !941, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !949, metadata !DIExpression()) #3, !dbg !1521
  br label %cleanup58.i, !dbg !1568

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0122.i, ptr %ptr0.0120.i, align 4, !dbg !1569, !tbaa !156
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i, metadata !946, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 undef, metadata !941, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !948, metadata !DIExpression()) #3, !dbg !1521
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ], !dbg !1521
  %len0.1.i = phi i32 [ %len0.0118.i, %if.then53.i ], [ %len.1.i, %if.else.i ], !dbg !1521
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0119.i, %if.else.i ], !dbg !1521
  %ptr0.1.i = phi ptr [ %ptr0.0120.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ], !dbg !1521
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !dbg !1570, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.1.i, metadata !941, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %dec124.i, metadata !942, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %ptr0.1.i, metadata !946, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %len1.1.i, metadata !949, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %len0.1.i, metadata !948, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %ptr1.1.i, metadata !947, metadata !DIExpression()) #3, !dbg !1521
  %sub.i217 = sub i32 %add, %cur_match.addr.1.i, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %sub.i217, metadata !950, metadata !DIExpression()) #3, !dbg !1527
  call void @llvm.dbg.value(metadata i32 %dec124.i, metadata !942, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !1521
  %cmp.i = icmp ne i32 %dec124.i, 0, !dbg !1528
  %cmp5.not.i = icmp ult i32 %sub.i217, %17
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false, !dbg !1529
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !1529, !llvm.loop !1571

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !946, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata ptr undef, metadata !947, metadata !DIExpression()) #3, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !1574
  %36 = load i32, ptr %cyclic_pos, align 8, !dbg !1576, !tbaa !246
  %inc.i218 = add i32 %36, 1, !dbg !1576
  %37 = load i32, ptr %cyclic_size, align 4, !dbg !1577, !tbaa !214
  %cmp.i219 = icmp eq i32 %inc.i218, %37, !dbg !1578
  %spec.store.select.i = select i1 %cmp.i219, i32 0, i32 %inc.i218, !dbg !1579
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !1574
  %38 = load i32, ptr %read_pos, align 8, !dbg !1580, !tbaa !110
  %inc2.i = add i32 %38, 1, !dbg !1580
  store i32 %inc2.i, ptr %read_pos, align 8, !dbg !1580, !tbaa !110
  %39 = load i32, ptr %offset, align 4, !dbg !1581, !tbaa !201
  %add.i221 = add i32 %39, %inc2.i, !dbg !1581
  %cmp4.i = icmp eq i32 %add.i221, -1, !dbg !1581
  br i1 %cmp4.i, label %if.then5.i, label %cleanup130, !dbg !1582

if.then5.i:                                       ; preds = %bt_skip_func.exit
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !1583
  %sub.i.i = xor i32 %37, -1, !dbg !1585
  call void @llvm.dbg.value(metadata i32 %sub.i.i, metadata !264, metadata !DIExpression()) #3, !dbg !1583
  %hash_size_sum.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21, !dbg !1586
  %40 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !1586, !tbaa !273
  %sons_count.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22, !dbg !1587
  %41 = load i32, ptr %sons_count.i.i, align 8, !dbg !1587, !tbaa !275
  %add.i.i = add i32 %41, %40, !dbg !1588
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !265, metadata !DIExpression()) #3, !dbg !1583
  call void @llvm.dbg.value(metadata ptr %13, metadata !266, metadata !DIExpression()) #3, !dbg !1583
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !1589
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !1590
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !1591

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !1590
  br label %for.body.i.i, !dbg !1591

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !1589
  %arrayidx.i.i = getelementptr inbounds i32, ptr %13, i64 %indvars.iv.i.i, !dbg !1592
  %42 = load i32, ptr %arrayidx.i.i, align 4, !dbg !1592, !tbaa !156
  %43 = tail call i32 @llvm.usub.sat.i32(i32 %42, i32 %sub.i.i) #3, !dbg !1593
  store i32 %43, ptr %arrayidx.i.i, align 4, !dbg !1594, !tbaa !156
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !1589
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1590
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !1591, !llvm.loop !1596

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i
  %.pre.i = load i32, ptr %offset, align 4, !dbg !1598, !tbaa !201
  br label %normalize.exit.i, !dbg !1598

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %44 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %39, %if.then5.i ], !dbg !1598
  %sub8.i.i = sub i32 %44, %sub.i.i, !dbg !1598
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !1598, !tbaa !201
  br label %cleanup130, !dbg !1599

if.end104:                                        ; preds = %for.end, %if.end75
  %matches_count.1328 = phi i32 [ %matches_count.1327, %for.end ], [ 0, %if.end75 ]
  %len_best.3 = phi i32 [ %len_best.2310, %for.end ], [ %len_best.0, %if.end75 ], !dbg !1600
  call void @llvm.dbg.value(metadata i32 undef, metadata !1435, metadata !DIExpression()), !dbg !1436
  %depth110 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 17, !dbg !1601
  %45 = load i32, ptr %depth110, align 4, !dbg !1601, !tbaa !294
  %son111 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13, !dbg !1601
  %46 = load ptr, ptr %son111, align 8, !dbg !1601, !tbaa !245
  %cyclic_pos112 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14, !dbg !1601
  %47 = load i32, ptr %cyclic_pos112, align 8, !dbg !1601, !tbaa !246
  %idx.ext114 = zext i32 %matches_count.1328 to i64, !dbg !1601
  %add.ptr115 = getelementptr inbounds %struct.lzma_match, ptr %matches, i64 %idx.ext114, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !777, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %add, metadata !780, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !781, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %16, metadata !782, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %45, metadata !783, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %46, metadata !784, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %47, metadata !785, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %17, metadata !786, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %add.ptr115, metadata !787, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 undef, metadata !788, metadata !DIExpression()) #3, !dbg !1603
  %shl.i222 = shl i32 %47, 1, !dbg !1605
  %idx.ext.i223 = zext i32 %shl.i222 to i64, !dbg !1606
  %add.ptr.i224 = getelementptr inbounds i32, ptr %46, i64 %idx.ext.i223, !dbg !1606
  %add.ptr1.i225 = getelementptr inbounds i32, ptr %add.ptr.i224, i64 1, !dbg !1607
  call void @llvm.dbg.value(metadata ptr %add.ptr1.i225, metadata !789, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %add.ptr.i224, metadata !790, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 0, metadata !791, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 0, metadata !792, metadata !DIExpression()) #3, !dbg !1603
  %sub135.i = sub i32 %add, %16, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %sub135.i, metadata !793, metadata !DIExpression()) #3, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %45, metadata !783, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !1603
  %cmp137.i = icmp ne i32 %45, 0, !dbg !1610
  %cmp5.not138.i = icmp ult i32 %sub135.i, %17
  %or.cond139.i = and i1 %cmp5.not138.i, %cmp137.i, !dbg !1611
  br i1 %or.cond139.i, label %if.end.i243.preheader, label %if.then.i228, !dbg !1611

if.end.i243.preheader:                            ; preds = %if.end104
  %48 = tail call i32 @llvm.umax.i32(i32 %len_best.3, i32 3), !dbg !1612
  call void @llvm.dbg.value(metadata i32 %48, metadata !1435, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %48, metadata !788, metadata !DIExpression()) #3, !dbg !1603
  %.pre = zext i32 %len_limit.0 to i64
  br label %if.end.i243, !dbg !1613

if.then.i228:                                     ; preds = %cleanup64.i, %if.end104
  %matches.addr.0.lcssa.i = phi ptr [ %add.ptr115, %if.end104 ], [ %matches.addr.1.i, %cleanup64.i ]
  %ptr0.0.lcssa.i226 = phi ptr [ %add.ptr1.i225, %if.end104 ], [ %ptr0.1.i255, %cleanup64.i ], !dbg !1614
  %ptr1.0.lcssa.i227 = phi ptr [ %add.ptr.i224, %if.end104 ], [ %ptr1.1.i256, %cleanup64.i ], !dbg !1615
  store i32 0, ptr %ptr0.0.lcssa.i226, align 4, !dbg !1616, !tbaa !156
  store i32 0, ptr %ptr1.0.lcssa.i227, align 4, !dbg !1617, !tbaa !156
  br label %bt_find_func.exit, !dbg !1618

if.end.i243:                                      ; preds = %if.end.i243.preheader, %cleanup64.i
  %dec150.in.i = phi i32 [ %dec150.i, %cleanup64.i ], [ %45, %if.end.i243.preheader ]
  %sub149.i = phi i32 [ %sub.i261, %cleanup64.i ], [ %sub135.i, %if.end.i243.preheader ]
  %cur_match.addr.0148.i = phi i32 [ %cur_match.addr.1.i260, %cleanup64.i ], [ %16, %if.end.i243.preheader ]
  %len1.0147.i = phi i32 [ %len1.1.i258, %cleanup64.i ], [ 0, %if.end.i243.preheader ]
  %len0.0146.i = phi i32 [ %len0.1.i257, %cleanup64.i ], [ 0, %if.end.i243.preheader ]
  %ptr1.0144.i = phi ptr [ %ptr1.1.i256, %cleanup64.i ], [ %add.ptr.i224, %if.end.i243.preheader ]
  %ptr0.0142.i = phi ptr [ %ptr0.1.i255, %cleanup64.i ], [ %add.ptr1.i225, %if.end.i243.preheader ]
  %len_best.addr.0141.i = phi i32 [ %len_best.addr.1.i, %cleanup64.i ], [ %48, %if.end.i243.preheader ]
  %matches.addr.0140.i = phi ptr [ %matches.addr.1.i, %cleanup64.i ], [ %add.ptr115, %if.end.i243.preheader ]
  %dec150.i = add i32 %dec150.in.i, -1, !dbg !1619
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.0148.i, metadata !782, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %len1.0147.i, metadata !792, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %len0.0146.i, metadata !791, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %ptr1.0144.i, metadata !790, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %ptr0.0142.i, metadata !789, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %len_best.addr.0141.i, metadata !788, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %matches.addr.0140.i, metadata !787, metadata !DIExpression()) #3, !dbg !1603
  %sub6.i229 = sub i32 %47, %sub149.i, !dbg !1620
  %cmp7.i230 = icmp ult i32 %47, %sub149.i, !dbg !1621
  %spec.select.i231 = select i1 %cmp7.i230, i32 %17, i32 0, !dbg !1622
  %add.i232 = add i32 %sub6.i229, %spec.select.i231, !dbg !1623
  %shl8.i233 = shl i32 %add.i232, 1, !dbg !1624
  %idx.ext9.i234 = zext i32 %shl8.i233 to i64, !dbg !1625
  %add.ptr10.i235 = getelementptr inbounds i32, ptr %46, i64 %idx.ext9.i234, !dbg !1625
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i235, metadata !795, metadata !DIExpression()) #3, !dbg !1609
  %idx.ext11.i236 = zext i32 %sub149.i to i64, !dbg !1626
  %idx.neg.i237 = sub nsw i64 0, %idx.ext11.i236, !dbg !1626
  %add.ptr12.i238 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i237, !dbg !1626
  call void @llvm.dbg.value(metadata ptr %add.ptr12.i238, metadata !796, metadata !DIExpression()) #3, !dbg !1609
  %49 = tail call i32 @llvm.umin.i32(i32 %len0.0146.i, i32 %len1.0147.i) #3, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %49, metadata !797, metadata !DIExpression()) #3, !dbg !1609
  %idxprom.i239 = zext i32 %49 to i64, !dbg !1628
  %arrayidx.i240 = getelementptr inbounds i8, ptr %add.ptr12.i238, i64 %idxprom.i239, !dbg !1628
  %50 = load i8, ptr %arrayidx.i240, align 1, !dbg !1628, !tbaa !147
  %arrayidx19.i241 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i239, !dbg !1629
  %51 = load i8, ptr %arrayidx19.i241, align 1, !dbg !1629, !tbaa !147
  %cmp21.i242 = icmp eq i8 %50, %51, !dbg !1630
  br i1 %cmp21.i242, label %while.cond24.i247, label %if.end50.i, !dbg !1631

while.cond24.i247:                                ; preds = %if.end.i243, %while.body27.i252
  %len.0.i244 = phi i32 [ %inc.i245, %while.body27.i252 ], [ %49, %if.end.i243 ], !dbg !1609
  call void @llvm.dbg.value(metadata i32 %len.0.i244, metadata !797, metadata !DIExpression()) #3, !dbg !1609
  %inc.i245 = add i32 %len.0.i244, 1, !dbg !1632
  call void @llvm.dbg.value(metadata i32 %inc.i245, metadata !797, metadata !DIExpression()) #3, !dbg !1609
  %cmp25.not.i246 = icmp eq i32 %inc.i245, %len_limit.0, !dbg !1633
  br i1 %cmp25.not.i246, label %while.end.i, label %while.body27.i252, !dbg !1634

while.body27.i252:                                ; preds = %while.cond24.i247
  %idxprom28.i248 = zext i32 %inc.i245 to i64, !dbg !1635
  %arrayidx29.i249 = getelementptr inbounds i8, ptr %add.ptr12.i238, i64 %idxprom28.i248, !dbg !1635
  %52 = load i8, ptr %arrayidx29.i249, align 1, !dbg !1635, !tbaa !147
  %arrayidx32.i250 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i248, !dbg !1636
  %53 = load i8, ptr %arrayidx32.i250, align 1, !dbg !1636, !tbaa !147
  %cmp34.not.i251 = icmp eq i8 %52, %53, !dbg !1637
  br i1 %cmp34.not.i251, label %while.cond24.i247, label %while.end.thread.i, !dbg !1638, !llvm.loop !1639

while.end.i:                                      ; preds = %while.cond24.i247
  %cmp38.i = icmp ult i32 %len_best.addr.0141.i, %len_limit.0, !dbg !1641
  br i1 %cmp38.i, label %if.then45.i, label %if.end50.i, !dbg !1642

while.end.thread.i:                               ; preds = %while.body27.i252
  %idxprom28.i248.le = zext i32 %inc.i245 to i64, !dbg !1635
  %cmp38115.i = icmp ult i32 %len_best.addr.0141.i, %inc.i245, !dbg !1641
  br i1 %cmp38115.i, label %if.then40.thread.i, label %if.end50.i, !dbg !1642

if.then40.thread.i:                               ; preds = %while.end.thread.i
  call void @llvm.dbg.value(metadata i32 %inc.i245, metadata !788, metadata !DIExpression()) #3, !dbg !1603
  store i32 %inc.i245, ptr %matches.addr.0140.i, align 4, !dbg !1643, !tbaa !103
  %sub42116.i = add i32 %sub149.i, -1, !dbg !1644
  %dist117.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0140.i, i64 0, i32 1, !dbg !1645
  store i32 %sub42116.i, ptr %dist117.i, align 4, !dbg !1646, !tbaa !140
  %incdec.ptr118.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0140.i, i64 1, !dbg !1647
  br label %if.end50.i, !dbg !1648

if.then45.i:                                      ; preds = %while.end.i
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !788, metadata !DIExpression()) #3, !dbg !1603
  store i32 %len_limit.0, ptr %matches.addr.0140.i, align 4, !dbg !1643, !tbaa !103
  %sub42.i = add i32 %sub149.i, -1, !dbg !1644
  %dist.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0140.i, i64 0, i32 1, !dbg !1645
  store i32 %sub42.i, ptr %dist.i, align 4, !dbg !1646, !tbaa !140
  %incdec.ptr.i = getelementptr inbounds %struct.lzma_match, ptr %matches.addr.0140.i, i64 1, !dbg !1647
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !787, metadata !DIExpression()) #3, !dbg !1603
  %54 = load i32, ptr %add.ptr10.i235, align 4, !dbg !1649, !tbaa !156
  store i32 %54, ptr %ptr1.0144.i, align 4, !dbg !1650, !tbaa !156
  %arrayidx47.i = getelementptr inbounds i32, ptr %add.ptr10.i235, i64 1, !dbg !1651
  %55 = load i32, ptr %arrayidx47.i, align 4, !dbg !1651, !tbaa !156
  store i32 %55, ptr %ptr0.0142.i, align 4, !dbg !1652, !tbaa !156
  br label %bt_find_func.exit, !dbg !1653

if.end50.i:                                       ; preds = %while.end.i, %if.then40.thread.i, %while.end.thread.i, %if.end.i243
  %idxprom51.i.pre-phi = phi i64 [ %idxprom28.i248.le, %if.then40.thread.i ], [ %idxprom28.i248.le, %while.end.thread.i ], [ %idxprom.i239, %if.end.i243 ], [ %.pre, %while.end.i ], !dbg !1654
  %matches.addr.1.i = phi ptr [ %incdec.ptr118.i, %if.then40.thread.i ], [ %matches.addr.0140.i, %while.end.thread.i ], [ %matches.addr.0140.i, %if.end.i243 ], [ %matches.addr.0140.i, %while.end.i ]
  %len_best.addr.1.i = phi i32 [ %inc.i245, %if.then40.thread.i ], [ %len_best.addr.0141.i, %while.end.thread.i ], [ %len_best.addr.0141.i, %if.end.i243 ], [ %len_best.addr.0141.i, %while.end.i ]
  %len.1.i253 = phi i32 [ %inc.i245, %if.then40.thread.i ], [ %inc.i245, %while.end.thread.i ], [ %49, %if.end.i243 ], [ %len_limit.0, %while.end.i ], !dbg !1609
  call void @llvm.dbg.value(metadata i32 %len.1.i253, metadata !797, metadata !DIExpression()) #3, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %len_best.addr.1.i, metadata !788, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %matches.addr.1.i, metadata !787, metadata !DIExpression()) #3, !dbg !1603
  %arrayidx52.i = getelementptr inbounds i8, ptr %add.ptr12.i238, i64 %idxprom51.i.pre-phi, !dbg !1654
  %56 = load i8, ptr %arrayidx52.i, align 1, !dbg !1654, !tbaa !147
  %arrayidx55.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom51.i.pre-phi, !dbg !1655
  %57 = load i8, ptr %arrayidx55.i, align 1, !dbg !1655, !tbaa !147
  %cmp57.i = icmp ult i8 %56, %57, !dbg !1656
  br i1 %cmp57.i, label %if.then59.i, label %if.else.i254, !dbg !1657

if.then59.i:                                      ; preds = %if.end50.i
  store i32 %cur_match.addr.0148.i, ptr %ptr1.0144.i, align 4, !dbg !1658, !tbaa !156
  %add.ptr60.i = getelementptr inbounds i32, ptr %add.ptr10.i235, i64 1, !dbg !1659
  call void @llvm.dbg.value(metadata ptr %add.ptr60.i, metadata !790, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 undef, metadata !782, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %len.1.i253, metadata !792, metadata !DIExpression()) #3, !dbg !1603
  br label %cleanup64.i, !dbg !1660

if.else.i254:                                     ; preds = %if.end50.i
  store i32 %cur_match.addr.0148.i, ptr %ptr0.0142.i, align 4, !dbg !1661, !tbaa !156
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i235, metadata !789, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 undef, metadata !782, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %len.1.i253, metadata !791, metadata !DIExpression()) #3, !dbg !1603
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.else.i254, %if.then59.i
  %ptr0.1.i255 = phi ptr [ %ptr0.0142.i, %if.then59.i ], [ %add.ptr10.i235, %if.else.i254 ], !dbg !1603
  %ptr1.1.i256 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %ptr1.0144.i, %if.else.i254 ], !dbg !1603
  %len0.1.i257 = phi i32 [ %len0.0146.i, %if.then59.i ], [ %len.1.i253, %if.else.i254 ], !dbg !1603
  %len1.1.i258 = phi i32 [ %len.1.i253, %if.then59.i ], [ %len1.0147.i, %if.else.i254 ], !dbg !1603
  %cur_match.addr.1.in.i259 = phi ptr [ %add.ptr60.i, %if.then59.i ], [ %add.ptr10.i235, %if.else.i254 ]
  %cur_match.addr.1.i260 = load i32, ptr %cur_match.addr.1.in.i259, align 4, !dbg !1662, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.1.i260, metadata !782, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %dec150.i, metadata !783, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %len1.1.i258, metadata !792, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %len0.1.i257, metadata !791, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %ptr1.1.i256, metadata !790, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %ptr0.1.i255, metadata !789, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %len_best.addr.1.i, metadata !788, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %matches.addr.1.i, metadata !787, metadata !DIExpression()) #3, !dbg !1603
  %sub.i261 = sub i32 %add, %cur_match.addr.1.i260, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %sub.i261, metadata !793, metadata !DIExpression()) #3, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %dec150.i, metadata !783, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !1603
  %cmp.i262 = icmp ne i32 %dec150.i, 0, !dbg !1610
  %cmp5.not.i263 = icmp ult i32 %sub.i261, %17
  %or.cond.i264 = select i1 %cmp.i262, i1 %cmp5.not.i263, i1 false, !dbg !1611
  br i1 %or.cond.i264, label %if.end.i243, label %if.then.i228, !dbg !1611, !llvm.loop !1663

bt_find_func.exit:                                ; preds = %if.then.i228, %if.then45.i
  %retval.2.ph.i = phi ptr [ %incdec.ptr.i, %if.then45.i ], [ %matches.addr.0.lcssa.i, %if.then.i228 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !790, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr undef, metadata !789, metadata !DIExpression()) #3, !dbg !1603
  call void @llvm.dbg.value(metadata ptr undef, metadata !787, metadata !DIExpression()) #3, !dbg !1603
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.2.ph.i to i64, !dbg !1601
  %sub.ptr.rhs.cast = ptrtoint ptr %matches to i64, !dbg !1601
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1601
  %58 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1601
  %conv117 = trunc i64 %58 to i32, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %conv117, metadata !1427, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !1665
  %59 = load i32, ptr %cyclic_pos112, align 8, !dbg !1667, !tbaa !246
  %inc.i266 = add i32 %59, 1, !dbg !1667
  %60 = load i32, ptr %cyclic_size, align 4, !dbg !1668, !tbaa !214
  %cmp.i268 = icmp eq i32 %inc.i266, %60, !dbg !1669
  %spec.store.select.i269 = select i1 %cmp.i268, i32 0, i32 %inc.i266, !dbg !1670
  store i32 %spec.store.select.i269, ptr %cyclic_pos112, align 8, !dbg !1665
  %61 = load i32, ptr %read_pos, align 8, !dbg !1671, !tbaa !110
  %inc2.i271 = add i32 %61, 1, !dbg !1671
  store i32 %inc2.i271, ptr %read_pos, align 8, !dbg !1671, !tbaa !110
  %62 = load i32, ptr %offset, align 4, !dbg !1672, !tbaa !201
  %add.i273 = add i32 %62, %inc2.i271, !dbg !1672
  %cmp4.i274 = icmp eq i32 %add.i273, -1, !dbg !1672
  br i1 %cmp4.i274, label %if.then5.i281, label %cleanup130, !dbg !1673

if.then5.i281:                                    ; preds = %bt_find_func.exit
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !1674
  %sub.i.i275 = xor i32 %60, -1, !dbg !1676
  call void @llvm.dbg.value(metadata i32 %sub.i.i275, metadata !264, metadata !DIExpression()) #3, !dbg !1674
  %hash_size_sum.i.i276 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21, !dbg !1677
  %63 = load i32, ptr %hash_size_sum.i.i276, align 4, !dbg !1677, !tbaa !273
  %sons_count.i.i277 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22, !dbg !1678
  %64 = load i32, ptr %sons_count.i.i277, align 8, !dbg !1678, !tbaa !275
  %add.i.i278 = add i32 %64, %63, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %add.i.i278, metadata !265, metadata !DIExpression()) #3, !dbg !1674
  call void @llvm.dbg.value(metadata ptr %13, metadata !266, metadata !DIExpression()) #3, !dbg !1674
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !1680
  %cmp21.not.i.i280 = icmp eq i32 %add.i.i278, 0, !dbg !1681
  br i1 %cmp21.not.i.i280, label %normalize.exit.i292, label %for.body.preheader.i.i283, !dbg !1682

for.body.preheader.i.i283:                        ; preds = %if.then5.i281
  %wide.trip.count.i.i282 = zext i32 %add.i.i278 to i64, !dbg !1681
  br label %for.body.i.i288, !dbg !1682

for.body.i.i288:                                  ; preds = %for.body.i.i288, %for.body.preheader.i.i283
  %indvars.iv.i.i284 = phi i64 [ 0, %for.body.preheader.i.i283 ], [ %indvars.iv.next.i.i286, %for.body.i.i288 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i284, metadata !267, metadata !DIExpression()) #3, !dbg !1680
  %arrayidx.i.i285 = getelementptr inbounds i32, ptr %13, i64 %indvars.iv.i.i284, !dbg !1683
  %65 = load i32, ptr %arrayidx.i.i285, align 4, !dbg !1683, !tbaa !156
  %66 = tail call i32 @llvm.usub.sat.i32(i32 %65, i32 %sub.i.i275) #3, !dbg !1684
  store i32 %66, ptr %arrayidx.i.i285, align 4, !dbg !1685, !tbaa !156
  %indvars.iv.next.i.i286 = add nuw nsw i64 %indvars.iv.i.i284, 1, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i286, metadata !267, metadata !DIExpression()) #3, !dbg !1680
  %exitcond.not.i.i287 = icmp eq i64 %indvars.iv.next.i.i286, %wide.trip.count.i.i282, !dbg !1681
  br i1 %exitcond.not.i.i287, label %normalize.exit.loopexit.i290, label %for.body.i.i288, !dbg !1682, !llvm.loop !1687

normalize.exit.loopexit.i290:                     ; preds = %for.body.i.i288
  %.pre.i289 = load i32, ptr %offset, align 4, !dbg !1689, !tbaa !201
  br label %normalize.exit.i292, !dbg !1689

normalize.exit.i292:                              ; preds = %normalize.exit.loopexit.i290, %if.then5.i281
  %67 = phi i32 [ %.pre.i289, %normalize.exit.loopexit.i290 ], [ %62, %if.then5.i281 ], !dbg !1689
  %sub8.i.i291 = sub i32 %67, %sub.i.i275, !dbg !1689
  store i32 %sub8.i.i291, ptr %offset, align 4, !dbg !1689, !tbaa !201
  br label %cleanup130, !dbg !1690

cleanup130:                                       ; preds = %normalize.exit.i292, %bt_find_func.exit, %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %retval.1 = phi i32 [ 0, %if.then4 ], [ %matches_count.1327, %bt_skip_func.exit ], [ %matches_count.1327, %normalize.exit.i ], [ %conv117, %bt_find_func.exit ], [ %conv117, %normalize.exit.i292 ], !dbg !1436
  ret i32 %retval.1, !dbg !1691
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @lzma_mf_bt4_skip(ptr noundef %mf, i32 noundef %amount) local_unnamed_addr #1 !dbg !1692 {
entry:
  call void @llvm.dbg.value(metadata ptr %mf, metadata !1694, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %amount, metadata !1695, metadata !DIExpression()), !dbg !1705
  %0 = getelementptr i8, ptr %mf, i64 24
  %1 = getelementptr i8, ptr %mf, i64 36
  %nice_len = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18
  %action = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 20
  %read_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5
  %offset = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 4
  %hash_mask = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 16
  %hash = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 12
  %depth = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 17
  %son = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 13
  %cyclic_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 14
  %cyclic_size = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 15
  %hash_size_sum.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 21
  %sons_count.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 22
  %pending.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 9
  br label %do.body, !dbg !1706

do.body:                                          ; preds = %cleanup, %entry
  %amount.addr.0 = phi i32 [ %amount, %entry ], [ %dec, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %amount.addr.0, metadata !1695, metadata !DIExpression()), !dbg !1705
  %mf.val = load i32, ptr %0, align 8, !dbg !1707, !tbaa !110
  %mf.val72 = load i32, ptr %1, align 4, !dbg !1707, !tbaa !111
  call void @llvm.dbg.value(metadata ptr undef, metadata !112, metadata !DIExpression()), !dbg !1708
  %sub.i = sub i32 %mf.val72, %mf.val, !dbg !1710
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !1696, metadata !DIExpression()), !dbg !1711
  %2 = load i32, ptr %nice_len, align 8, !dbg !1712, !tbaa !106
  %cmp.not = icmp ugt i32 %2, %sub.i, !dbg !1712
  br i1 %cmp.not, label %if.else, label %if.end5, !dbg !1707

if.else:                                          ; preds = %do.body
  %cmp2 = icmp ult i32 %sub.i, 4, !dbg !1714
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !1714

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, ptr %action, align 8, !dbg !1714, !tbaa !759
  %cmp3 = icmp eq i32 %3, 1, !dbg !1714
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1712

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  call void @llvm.dbg.value(metadata ptr %mf, metadata !184, metadata !DIExpression()), !dbg !1716
  %inc.i = add i32 %mf.val, 1, !dbg !1719
  store i32 %inc.i, ptr %read_pos, align 8, !dbg !1719, !tbaa !110
  %4 = load i32, ptr %pending.i, align 8, !dbg !1720, !tbaa !196
  %inc1.i = add i32 %4, 1, !dbg !1720
  store i32 %inc1.i, ptr %pending.i, align 8, !dbg !1720, !tbaa !196
  br label %cleanup, !dbg !1721

if.end5:                                          ; preds = %do.body, %lor.lhs.false
  %len_limit.0 = phi i32 [ %sub.i, %lor.lhs.false ], [ %2, %do.body ], !dbg !1711
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !1696, metadata !DIExpression()), !dbg !1711
  %mf.val73 = load ptr, ptr %mf, align 8, !dbg !1707, !tbaa !129
  call void @llvm.dbg.value(metadata ptr undef, metadata !130, metadata !DIExpression()), !dbg !1722
  %idx.ext.i = zext i32 %mf.val to i64, !dbg !1724
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val73, i64 %idx.ext.i, !dbg !1724
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1698, metadata !DIExpression()), !dbg !1711
  %5 = load i32, ptr %offset, align 4, !dbg !1707, !tbaa !201
  %add = add i32 %5, %mf.val, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %add, metadata !1699, metadata !DIExpression()), !dbg !1711
  %6 = load i8, ptr %add.ptr.i, align 1, !dbg !1725, !tbaa !147
  %idxprom = zext i8 %6 to i64, !dbg !1725
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom, !dbg !1725
  %7 = load i32, ptr %arrayidx7, align 4, !dbg !1725, !tbaa !156
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1, !dbg !1725
  %8 = load i8, ptr %arrayidx8, align 1, !dbg !1725, !tbaa !147
  %conv = zext i8 %8 to i32, !dbg !1725
  %xor = xor i32 %7, %conv, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %xor, metadata !1700, metadata !DIExpression()), !dbg !1711
  %and = and i32 %xor, 1023, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %and, metadata !1701, metadata !DIExpression()), !dbg !1711
  %arrayidx9 = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !1725
  %9 = load i8, ptr %arrayidx9, align 1, !dbg !1725, !tbaa !147
  %conv10 = zext i8 %9 to i32, !dbg !1725
  %shl = shl nuw nsw i32 %conv10, 8, !dbg !1725
  %xor11 = xor i32 %shl, %xor, !dbg !1725
  %and12 = and i32 %xor11, 65535, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %and12, metadata !1702, metadata !DIExpression()), !dbg !1711
  %arrayidx17 = getelementptr inbounds i8, ptr %add.ptr.i, i64 3, !dbg !1725
  %10 = load i8, ptr %arrayidx17, align 1, !dbg !1725, !tbaa !147
  %idxprom18 = zext i8 %10 to i64, !dbg !1725
  %arrayidx19 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %idxprom18, !dbg !1725
  %11 = load i32, ptr %arrayidx19, align 4, !dbg !1725, !tbaa !156
  %shl20 = shl i32 %11, 5, !dbg !1725
  %xor21 = xor i32 %xor11, %shl20, !dbg !1725
  %12 = load i32, ptr %hash_mask, align 8, !dbg !1725, !tbaa !203
  %and22 = and i32 %xor21, %12, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %and22, metadata !1703, metadata !DIExpression()), !dbg !1711
  %13 = load ptr, ptr %hash, align 8, !dbg !1726, !tbaa !205
  %add23 = add i32 %and22, 66560, !dbg !1727
  %idxprom24 = zext i32 %add23 to i64, !dbg !1728
  %arrayidx25 = getelementptr inbounds i32, ptr %13, i64 %idxprom24, !dbg !1728
  %14 = load i32, ptr %arrayidx25, align 4, !dbg !1728, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %14, metadata !1704, metadata !DIExpression()), !dbg !1711
  %idxprom27 = zext i32 %and to i64, !dbg !1729
  %arrayidx28 = getelementptr inbounds i32, ptr %13, i64 %idxprom27, !dbg !1729
  store i32 %add, ptr %arrayidx28, align 4, !dbg !1730, !tbaa !156
  %add30 = add nuw nsw i32 %and12, 1024, !dbg !1731
  %idxprom31 = zext i32 %add30 to i64, !dbg !1732
  %arrayidx32 = getelementptr inbounds i32, ptr %13, i64 %idxprom31, !dbg !1732
  store i32 %add, ptr %arrayidx32, align 4, !dbg !1733, !tbaa !156
  store i32 %add, ptr %arrayidx25, align 4, !dbg !1734, !tbaa !156
  %15 = load i32, ptr %depth, align 4, !dbg !1735, !tbaa !294
  %16 = load ptr, ptr %son, align 8, !dbg !1735, !tbaa !245
  %17 = load i32, ptr %cyclic_pos, align 8, !dbg !1735, !tbaa !246
  %18 = load i32, ptr %cyclic_size, align 4, !dbg !1735, !tbaa !214
  call void @llvm.dbg.value(metadata i32 %len_limit.0, metadata !934, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %add, metadata !939, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !940, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %14, metadata !941, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %15, metadata !942, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata ptr %16, metadata !943, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %17, metadata !944, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %18, metadata !945, metadata !DIExpression()) #3, !dbg !1737
  %shl.i = shl i32 %17, 1, !dbg !1739
  %idx.ext.i75 = zext i32 %shl.i to i64, !dbg !1740
  %add.ptr.i76 = getelementptr inbounds i32, ptr %16, i64 %idx.ext.i75, !dbg !1740
  %add.ptr1.i = getelementptr inbounds i32, ptr %add.ptr.i76, i64 1, !dbg !1741
  call void @llvm.dbg.value(metadata ptr %add.ptr1.i, metadata !946, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata ptr %add.ptr.i76, metadata !947, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 0, metadata !948, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %14, metadata !941, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %15, metadata !942, metadata !DIExpression()) #3, !dbg !1737
  %sub111.i = sub i32 %add, %14, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %sub111.i, metadata !950, metadata !DIExpression()) #3, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %15, metadata !942, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !1737
  %cmp113.i = icmp ne i32 %15, 0, !dbg !1744
  %cmp5.not114.i = icmp ult i32 %sub111.i, %18
  %or.cond115.i = and i1 %cmp113.i, %cmp5.not114.i, !dbg !1745
  br i1 %or.cond115.i, label %if.end.i, label %if.then.i, !dbg !1745

if.then.i:                                        ; preds = %cleanup58.i, %if.end5
  %ptr1.0.lcssa.i = phi ptr [ %add.ptr.i76, %if.end5 ], [ %ptr1.1.i, %cleanup58.i ], !dbg !1746
  %ptr0.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.end5 ], [ %ptr0.1.i, %cleanup58.i ], !dbg !1747
  store i32 0, ptr %ptr0.0.lcssa.i, align 4, !dbg !1748, !tbaa !156
  store i32 0, ptr %ptr1.0.lcssa.i, align 4, !dbg !1749, !tbaa !156
  br label %bt_skip_func.exit, !dbg !1750

if.end.i:                                         ; preds = %if.end5, %cleanup58.i
  %dec124.in.i = phi i32 [ %dec124.i, %cleanup58.i ], [ %15, %if.end5 ]
  %sub123.i = phi i32 [ %sub.i78, %cleanup58.i ], [ %sub111.i, %if.end5 ]
  %cur_match.addr.0122.i = phi i32 [ %cur_match.addr.1.i, %cleanup58.i ], [ %14, %if.end5 ]
  %ptr0.0120.i = phi ptr [ %ptr0.1.i, %cleanup58.i ], [ %add.ptr1.i, %if.end5 ]
  %len1.0119.i = phi i32 [ %len1.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %len0.0118.i = phi i32 [ %len0.1.i, %cleanup58.i ], [ 0, %if.end5 ]
  %ptr1.0116.i = phi ptr [ %ptr1.1.i, %cleanup58.i ], [ %add.ptr.i76, %if.end5 ]
  %dec124.i = add i32 %dec124.in.i, -1, !dbg !1751
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.0122.i, metadata !941, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata ptr %ptr0.0120.i, metadata !946, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %len1.0119.i, metadata !949, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %len0.0118.i, metadata !948, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata ptr %ptr1.0116.i, metadata !947, metadata !DIExpression()) #3, !dbg !1737
  %sub6.i = sub i32 %17, %sub123.i, !dbg !1752
  %cmp7.i = icmp ult i32 %17, %sub123.i, !dbg !1753
  %spec.select.i = select i1 %cmp7.i, i32 %18, i32 0, !dbg !1754
  %add.i = add i32 %sub6.i, %spec.select.i, !dbg !1755
  %shl8.i = shl i32 %add.i, 1, !dbg !1756
  %idx.ext9.i = zext i32 %shl8.i to i64, !dbg !1757
  %add.ptr10.i = getelementptr inbounds i32, ptr %16, i64 %idx.ext9.i, !dbg !1757
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i, metadata !952, metadata !DIExpression()) #3, !dbg !1743
  %idx.ext11.i = zext i32 %sub123.i to i64, !dbg !1758
  %idx.neg.i = sub nsw i64 0, %idx.ext11.i, !dbg !1758
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !1758
  call void @llvm.dbg.value(metadata ptr %add.ptr12.i, metadata !953, metadata !DIExpression()) #3, !dbg !1743
  %19 = tail call i32 @llvm.umin.i32(i32 %len0.0118.i, i32 %len1.0119.i) #3, !dbg !1759
  call void @llvm.dbg.value(metadata i32 %19, metadata !954, metadata !DIExpression()) #3, !dbg !1743
  %idxprom.i = zext i32 %19 to i64, !dbg !1760
  %arrayidx.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom.i, !dbg !1760
  %20 = load i8, ptr %arrayidx.i, align 1, !dbg !1760, !tbaa !147
  %arrayidx19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom.i, !dbg !1761
  %21 = load i8, ptr %arrayidx19.i, align 1, !dbg !1761, !tbaa !147
  %cmp21.i = icmp eq i8 %20, %21, !dbg !1762
  br i1 %cmp21.i, label %while.cond24.i, label %if.end44.i, !dbg !1763

while.cond24.i:                                   ; preds = %if.end.i, %while.body27.i
  %len.0.i = phi i32 [ %inc.i77, %while.body27.i ], [ %19, %if.end.i ], !dbg !1743
  call void @llvm.dbg.value(metadata i32 %len.0.i, metadata !954, metadata !DIExpression()) #3, !dbg !1743
  %inc.i77 = add i32 %len.0.i, 1, !dbg !1764
  call void @llvm.dbg.value(metadata i32 %inc.i77, metadata !954, metadata !DIExpression()) #3, !dbg !1743
  %cmp25.not.i = icmp eq i32 %inc.i77, %len_limit.0, !dbg !1765
  br i1 %cmp25.not.i, label %if.then40.i, label %while.body27.i, !dbg !1766

while.body27.i:                                   ; preds = %while.cond24.i
  %idxprom28.i = zext i32 %inc.i77 to i64, !dbg !1767
  %arrayidx29.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idxprom28.i, !dbg !1767
  %22 = load i8, ptr %arrayidx29.i, align 1, !dbg !1767, !tbaa !147
  %arrayidx32.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idxprom28.i, !dbg !1768
  %23 = load i8, ptr %arrayidx32.i, align 1, !dbg !1768, !tbaa !147
  %cmp34.not.i = icmp eq i8 %22, %23, !dbg !1769
  br i1 %cmp34.not.i, label %while.cond24.i, label %if.end44.i, !dbg !1770, !llvm.loop !1771

if.then40.i:                                      ; preds = %while.cond24.i
  %24 = load i32, ptr %add.ptr10.i, align 4, !dbg !1773, !tbaa !156
  store i32 %24, ptr %ptr1.0116.i, align 4, !dbg !1774, !tbaa !156
  %arrayidx42.i = getelementptr inbounds i32, ptr %add.ptr10.i, i64 1, !dbg !1775
  %25 = load i32, ptr %arrayidx42.i, align 4, !dbg !1775, !tbaa !156
  store i32 %25, ptr %ptr0.0120.i, align 4, !dbg !1776, !tbaa !156
  br label %bt_skip_func.exit, !dbg !1777

if.end44.i:                                       ; preds = %while.body27.i, %if.end.i
  %26 = phi i8 [ %21, %if.end.i ], [ %23, %while.body27.i ], !dbg !1778
  %27 = phi i8 [ %20, %if.end.i ], [ %22, %while.body27.i ], !dbg !1779
  %len.1.i = phi i32 [ %19, %if.end.i ], [ %inc.i77, %while.body27.i ], !dbg !1743
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !954, metadata !DIExpression()) #3, !dbg !1743
  %cmp51.i = icmp ult i8 %27, %26, !dbg !1780
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i, !dbg !1781

if.then53.i:                                      ; preds = %if.end44.i
  store i32 %cur_match.addr.0122.i, ptr %ptr1.0116.i, align 4, !dbg !1782, !tbaa !156
  %add.ptr54.i = getelementptr inbounds i32, ptr %add.ptr10.i, i64 1, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %add.ptr54.i, metadata !947, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 undef, metadata !941, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !949, metadata !DIExpression()) #3, !dbg !1737
  br label %cleanup58.i, !dbg !1784

if.else.i:                                        ; preds = %if.end44.i
  store i32 %cur_match.addr.0122.i, ptr %ptr0.0120.i, align 4, !dbg !1785, !tbaa !156
  call void @llvm.dbg.value(metadata ptr %add.ptr10.i, metadata !946, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 undef, metadata !941, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !948, metadata !DIExpression()) #3, !dbg !1737
  br label %cleanup58.i

cleanup58.i:                                      ; preds = %if.else.i, %if.then53.i
  %ptr1.1.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %ptr1.0116.i, %if.else.i ], !dbg !1737
  %len0.1.i = phi i32 [ %len0.0118.i, %if.then53.i ], [ %len.1.i, %if.else.i ], !dbg !1737
  %len1.1.i = phi i32 [ %len.1.i, %if.then53.i ], [ %len1.0119.i, %if.else.i ], !dbg !1737
  %ptr0.1.i = phi ptr [ %ptr0.0120.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ], !dbg !1737
  %cur_match.addr.1.in.i = phi ptr [ %add.ptr54.i, %if.then53.i ], [ %add.ptr10.i, %if.else.i ]
  %cur_match.addr.1.i = load i32, ptr %cur_match.addr.1.in.i, align 4, !dbg !1786, !tbaa !156
  call void @llvm.dbg.value(metadata i32 %cur_match.addr.1.i, metadata !941, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %dec124.i, metadata !942, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata ptr %ptr0.1.i, metadata !946, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %len1.1.i, metadata !949, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %len0.1.i, metadata !948, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata ptr %ptr1.1.i, metadata !947, metadata !DIExpression()) #3, !dbg !1737
  %sub.i78 = sub i32 %add, %cur_match.addr.1.i, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %sub.i78, metadata !950, metadata !DIExpression()) #3, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %dec124.i, metadata !942, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #3, !dbg !1737
  %cmp.i = icmp ne i32 %dec124.i, 0, !dbg !1744
  %cmp5.not.i = icmp ult i32 %sub.i78, %18
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false, !dbg !1745
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !1745, !llvm.loop !1787

bt_skip_func.exit:                                ; preds = %if.then.i, %if.then40.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !946, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata ptr undef, metadata !947, metadata !DIExpression()) #3, !dbg !1737
  call void @llvm.dbg.value(metadata ptr %mf, metadata !247, metadata !DIExpression()) #3, !dbg !1790
  %28 = load i32, ptr %cyclic_pos, align 8, !dbg !1792, !tbaa !246
  %inc.i79 = add i32 %28, 1, !dbg !1792
  %29 = load i32, ptr %cyclic_size, align 4, !dbg !1793, !tbaa !214
  %cmp.i80 = icmp eq i32 %inc.i79, %29, !dbg !1794
  %spec.store.select.i = select i1 %cmp.i80, i32 0, i32 %inc.i79, !dbg !1795
  store i32 %spec.store.select.i, ptr %cyclic_pos, align 8, !dbg !1790
  %30 = load i32, ptr %read_pos, align 8, !dbg !1796, !tbaa !110
  %inc2.i = add i32 %30, 1, !dbg !1796
  store i32 %inc2.i, ptr %read_pos, align 8, !dbg !1796, !tbaa !110
  %31 = load i32, ptr %offset, align 4, !dbg !1797, !tbaa !201
  %add.i82 = add i32 %31, %inc2.i, !dbg !1797
  %cmp4.i = icmp eq i32 %add.i82, -1, !dbg !1797
  br i1 %cmp4.i, label %if.then5.i, label %cleanup, !dbg !1798

if.then5.i:                                       ; preds = %bt_skip_func.exit
  call void @llvm.dbg.value(metadata ptr %mf, metadata !261, metadata !DIExpression()) #3, !dbg !1799
  %sub.i.i = xor i32 %29, -1, !dbg !1801
  call void @llvm.dbg.value(metadata i32 %sub.i.i, metadata !264, metadata !DIExpression()) #3, !dbg !1799
  %32 = load i32, ptr %hash_size_sum.i.i, align 4, !dbg !1802, !tbaa !273
  %33 = load i32, ptr %sons_count.i.i, align 8, !dbg !1803, !tbaa !275
  %add.i.i = add i32 %33, %32, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !265, metadata !DIExpression()) #3, !dbg !1799
  call void @llvm.dbg.value(metadata ptr %13, metadata !266, metadata !DIExpression()) #3, !dbg !1799
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()) #3, !dbg !1805
  %cmp21.not.i.i = icmp eq i32 %add.i.i, 0, !dbg !1806
  br i1 %cmp21.not.i.i, label %normalize.exit.i, label %for.body.preheader.i.i, !dbg !1807

for.body.preheader.i.i:                           ; preds = %if.then5.i
  %wide.trip.count.i.i = zext i32 %add.i.i to i64, !dbg !1806
  br label %for.body.i.i, !dbg !1807

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !1805
  %arrayidx.i.i = getelementptr inbounds i32, ptr %13, i64 %indvars.iv.i.i, !dbg !1808
  %34 = load i32, ptr %arrayidx.i.i, align 4, !dbg !1808, !tbaa !156
  %35 = tail call i32 @llvm.usub.sat.i32(i32 %34, i32 %sub.i.i) #3, !dbg !1809
  store i32 %35, ptr %arrayidx.i.i, align 4, !dbg !1810, !tbaa !156
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !267, metadata !DIExpression()) #3, !dbg !1805
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i, !dbg !1806
  br i1 %exitcond.not.i.i, label %normalize.exit.loopexit.i, label %for.body.i.i, !dbg !1807, !llvm.loop !1812

normalize.exit.loopexit.i:                        ; preds = %for.body.i.i
  %.pre.i = load i32, ptr %offset, align 4, !dbg !1814, !tbaa !201
  br label %normalize.exit.i, !dbg !1814

normalize.exit.i:                                 ; preds = %normalize.exit.loopexit.i, %if.then5.i
  %36 = phi i32 [ %.pre.i, %normalize.exit.loopexit.i ], [ %31, %if.then5.i ], !dbg !1814
  %sub8.i.i = sub i32 %36, %sub.i.i, !dbg !1814
  store i32 %sub8.i.i, ptr %offset, align 4, !dbg !1814, !tbaa !201
  br label %cleanup, !dbg !1815

cleanup:                                          ; preds = %normalize.exit.i, %bt_skip_func.exit, %if.then4
  %dec = add i32 %amount.addr.0, -1, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1695, metadata !DIExpression()), !dbg !1705
  %cmp39.not = icmp eq i32 %dec, 0, !dbg !1817
  br i1 %cmp39.not, label %do.end41, label %do.body, !dbg !1818, !llvm.loop !1819

do.end41:                                         ; preds = %cleanup
  ret void, !dbg !1821
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lz/lz_encoder_mf.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "5d460b327ab3f2eae21e0870eafddd6d")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!8 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!9 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!10 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 42, baseType: !5)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!23 = distinct !DISubprogram(name: "lzma_mf_find", scope: !24, file: !24, line: 22, type: !25, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!24 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lz/lz_encoder_mf.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5d460b327ab3f2eae21e0870eafddd6d")
!25 = !DISubroutineType(types: !26)
!26 = !{!12, !27, !61, !50}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mf", file: !29, line: 28, baseType: !30)
!29 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lz/lz_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "780f78e6e21a3ca52f57df68bfdc6f53")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_mf_s", file: !29, line: 29, size: 960, elements: !31)
!31 = !{!32, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !56, !60, !62, !63, !64, !65, !66, !67, !68, !69, !71, !72}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !30, file: !29, line: 35, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 24, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !15, line: 38, baseType: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !30, file: !29, line: 39, baseType: !12, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_before", scope: !30, file: !29, line: 45, baseType: !12, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_after", scope: !30, file: !29, line: 51, baseType: !12, size: 32, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !30, file: !29, line: 58, baseType: !12, size: 32, offset: 160)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !30, file: !29, line: 63, baseType: !12, size: 32, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !30, file: !29, line: 67, baseType: !12, size: 32, offset: 224)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !30, file: !29, line: 75, baseType: !12, size: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !30, file: !29, line: 80, baseType: !12, size: 32, offset: 288)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !30, file: !29, line: 84, baseType: !12, size: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !30, file: !29, line: 92, baseType: !47, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!12, !27, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match", file: !29, line: 25, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 22, size: 64, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !52, file: !29, line: 23, baseType: !12, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !52, file: !29, line: 24, baseType: !12, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !30, file: !29, line: 97, baseType: !57, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !27, !12}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !30, file: !29, line: 99, baseType: !61, size: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !30, file: !29, line: 100, baseType: !61, size: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_pos", scope: !30, file: !29, line: 101, baseType: !12, size: 32, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_size", scope: !30, file: !29, line: 102, baseType: !12, size: 32, offset: 672)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !30, file: !29, line: 103, baseType: !12, size: 32, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !30, file: !29, line: 106, baseType: !12, size: 32, offset: 736)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !30, file: !29, line: 109, baseType: !12, size: 32, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !30, file: !29, line: 114, baseType: !12, size: 32, offset: 800)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !30, file: !29, line: 119, baseType: !70, size: 32, offset: 832)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size_sum", scope: !30, file: !29, line: 122, baseType: !12, size: 32, offset: 864)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sons_count", scope: !30, file: !29, line: 125, baseType: !12, size: 32, offset: 896)
!73 = !{!74, !75, !76, !77, !79, !80, !85, !88}
!74 = !DILocalVariable(name: "mf", arg: 1, scope: !23, file: !24, line: 22, type: !27)
!75 = !DILocalVariable(name: "count_ptr", arg: 2, scope: !23, file: !24, line: 22, type: !61)
!76 = !DILocalVariable(name: "matches", arg: 3, scope: !23, file: !24, line: 22, type: !50)
!77 = !DILocalVariable(name: "count", scope: !23, file: !24, line: 27, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!79 = !DILocalVariable(name: "len_best", scope: !23, file: !24, line: 31, type: !12)
!80 = !DILocalVariable(name: "limit", scope: !81, file: !24, line: 56, type: !12)
!81 = distinct !DILexicalBlock(scope: !82, file: !24, line: 51, column: 33)
!82 = distinct !DILexicalBlock(scope: !83, file: !24, line: 51, column: 7)
!83 = distinct !DILexicalBlock(scope: !84, file: !24, line: 33, column: 17)
!84 = distinct !DILexicalBlock(scope: !23, file: !24, line: 33, column: 6)
!85 = !DILocalVariable(name: "p1", scope: !81, file: !24, line: 62, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!88 = !DILocalVariable(name: "p2", scope: !81, file: !24, line: 66, type: !86)
!89 = !DILocation(line: 0, scope: !23)
!90 = !DILocation(line: 27, column: 29, scope: !23)
!91 = !{!92, !93, i64 48}
!92 = !{!"lzma_mf_s", !93, i64 0, !96, i64 8, !96, i64 12, !96, i64 16, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !96, i64 36, !96, i64 40, !93, i64 48, !93, i64 56, !93, i64 64, !93, i64 72, !96, i64 80, !96, i64 84, !96, i64 88, !96, i64 92, !96, i64 96, !96, i64 100, !94, i64 104, !96, i64 108, !96, i64 112}
!93 = !{!"any pointer", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !{!"int", !94, i64 0}
!97 = !DILocation(line: 27, column: 25, scope: !23)
!98 = !DILocation(line: 33, column: 12, scope: !84)
!99 = !DILocation(line: 33, column: 6, scope: !23)
!100 = !DILocation(line: 47, column: 28, scope: !83)
!101 = !DILocation(line: 47, column: 14, scope: !83)
!102 = !DILocation(line: 47, column: 33, scope: !83)
!103 = !{!104, !96, i64 0}
!104 = !{!"", !96, i64 0, !96, i64 4}
!105 = !DILocation(line: 51, column: 23, scope: !82)
!106 = !{!92, !96, i64 96}
!107 = !DILocation(line: 51, column: 16, scope: !82)
!108 = !DILocation(line: 51, column: 7, scope: !83)
!109 = !DILocation(line: 56, column: 21, scope: !81)
!110 = !{!92, !96, i64 24}
!111 = !{!92, !96, i64 36}
!112 = !DILocalVariable(name: "mf", arg: 1, scope: !113, file: !29, line: 230, type: !116)
!113 = distinct !DISubprogram(name: "mf_avail", scope: !29, file: !29, line: 230, type: !114, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!114 = !DISubroutineType(types: !115)
!115 = !{!12, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!118 = !{!112}
!119 = !DILocation(line: 0, scope: !113, inlinedAt: !120)
!120 = distinct !DILocation(line: 56, column: 21, scope: !81)
!121 = !DILocation(line: 232, column: 23, scope: !113, inlinedAt: !120)
!122 = !DILocation(line: 56, column: 34, scope: !81)
!123 = !DILocation(line: 0, scope: !81)
!124 = !DILocation(line: 57, column: 20, scope: !125)
!125 = distinct !DILexicalBlock(scope: !81, file: !24, line: 57, column: 8)
!126 = !{!92, !96, i64 100}
!127 = !DILocation(line: 57, column: 8, scope: !81)
!128 = !DILocation(line: 62, column: 24, scope: !81)
!129 = !{!92, !93, i64 0}
!130 = !DILocalVariable(name: "mf", arg: 1, scope: !131, file: !29, line: 222, type: !116)
!131 = distinct !DISubprogram(name: "mf_ptr", scope: !29, file: !29, line: 222, type: !132, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!86, !116}
!134 = !{!130}
!135 = !DILocation(line: 0, scope: !131, inlinedAt: !136)
!136 = distinct !DILocation(line: 62, column: 24, scope: !81)
!137 = !DILocation(line: 224, column: 20, scope: !131, inlinedAt: !136)
!138 = !DILocation(line: 62, column: 35, scope: !81)
!139 = !DILocation(line: 66, column: 48, scope: !81)
!140 = !{!104, !96, i64 4}
!141 = !DILocation(line: 66, column: 27, scope: !81)
!142 = !DILocation(line: 66, column: 53, scope: !81)
!143 = !DILocation(line: 68, column: 20, scope: !81)
!144 = !DILocation(line: 69, column: 6, scope: !81)
!145 = !DILocation(line: 68, column: 4, scope: !81)
!146 = !DILocation(line: 69, column: 9, scope: !81)
!147 = !{!94, !94, i64 0}
!148 = !DILocation(line: 69, column: 25, scope: !81)
!149 = !DILocation(line: 69, column: 22, scope: !81)
!150 = !DILocation(line: 70, column: 5, scope: !81)
!151 = distinct !{!151, !145, !152, !153, !154}
!152 = !DILocation(line: 70, column: 7, scope: !81)
!153 = !{!"llvm.loop.mustprogress"}
!154 = !{!"llvm.loop.unroll.disable"}
!155 = !DILocation(line: 74, column: 13, scope: !23)
!156 = !{!96, !96, i64 0}
!157 = !DILocation(line: 78, column: 8, scope: !23)
!158 = !DILocation(line: 78, column: 2, scope: !23)
!159 = !{!92, !96, i64 28}
!160 = !DILocation(line: 80, column: 2, scope: !23)
!161 = distinct !DISubprogram(name: "lzma_mf_hc3_find", scope: !24, file: !24, line: 306, type: !48, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!163 = !DILocalVariable(name: "mf", arg: 1, scope: !161, file: !24, line: 306, type: !27)
!164 = !DILocalVariable(name: "matches", arg: 2, scope: !161, file: !24, line: 306, type: !50)
!165 = !DILocalVariable(name: "len_limit", scope: !161, file: !24, line: 308, type: !12)
!166 = !DILocalVariable(name: "cur", scope: !161, file: !24, line: 308, type: !86)
!167 = !DILocalVariable(name: "pos", scope: !161, file: !24, line: 308, type: !78)
!168 = !DILocalVariable(name: "matches_count", scope: !161, file: !24, line: 308, type: !12)
!169 = !DILocalVariable(name: "temp", scope: !161, file: !24, line: 310, type: !78)
!170 = !DILocalVariable(name: "hash_2_value", scope: !161, file: !24, line: 310, type: !78)
!171 = !DILocalVariable(name: "hash_value", scope: !161, file: !24, line: 310, type: !78)
!172 = !DILocalVariable(name: "delta2", scope: !161, file: !24, line: 312, type: !78)
!173 = !DILocalVariable(name: "cur_match", scope: !161, file: !24, line: 313, type: !78)
!174 = !DILocalVariable(name: "len_best", scope: !161, file: !24, line: 318, type: !12)
!175 = !DILocation(line: 0, scope: !161)
!176 = !DILocation(line: 308, column: 2, scope: !161)
!177 = !DILocation(line: 0, scope: !113, inlinedAt: !178)
!178 = distinct !DILocation(line: 308, column: 2, scope: !161)
!179 = !DILocation(line: 232, column: 23, scope: !113, inlinedAt: !178)
!180 = !DILocation(line: 308, column: 2, scope: !181)
!181 = distinct !DILexicalBlock(scope: !161, file: !24, line: 308, column: 2)
!182 = !DILocation(line: 308, column: 2, scope: !183)
!183 = distinct !DILexicalBlock(scope: !181, file: !24, line: 308, column: 2)
!184 = !DILocalVariable(name: "mf", arg: 1, scope: !185, file: !24, line: 176, type: !27)
!185 = distinct !DISubprogram(name: "move_pending", scope: !24, file: !24, line: 176, type: !186, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !27}
!188 = !{!184}
!189 = !DILocation(line: 0, scope: !185, inlinedAt: !190)
!190 = distinct !DILocation(line: 308, column: 2, scope: !191)
!191 = distinct !DILexicalBlock(scope: !183, file: !24, line: 308, column: 2)
!192 = !DILocation(line: 178, column: 8, scope: !185, inlinedAt: !190)
!193 = !DILocation(line: 178, column: 2, scope: !185, inlinedAt: !190)
!194 = !DILocation(line: 180, column: 8, scope: !185, inlinedAt: !190)
!195 = !DILocation(line: 180, column: 2, scope: !185, inlinedAt: !190)
!196 = !{!92, !96, i64 40}
!197 = !DILocation(line: 308, column: 2, scope: !191)
!198 = !DILocation(line: 0, scope: !131, inlinedAt: !199)
!199 = distinct !DILocation(line: 308, column: 2, scope: !161)
!200 = !DILocation(line: 224, column: 20, scope: !131, inlinedAt: !199)
!201 = !{!92, !96, i64 20}
!202 = !DILocation(line: 310, column: 2, scope: !161)
!203 = !{!92, !96, i64 88}
!204 = !DILocation(line: 312, column: 36, scope: !161)
!205 = !{!92, !93, i64 64}
!206 = !DILocation(line: 312, column: 32, scope: !161)
!207 = !DILocation(line: 312, column: 30, scope: !161)
!208 = !DILocation(line: 313, column: 54, scope: !161)
!209 = !DILocation(line: 313, column: 29, scope: !161)
!210 = !DILocation(line: 315, column: 25, scope: !161)
!211 = !DILocation(line: 316, column: 41, scope: !161)
!212 = !DILocation(line: 320, column: 19, scope: !213)
!213 = distinct !DILexicalBlock(scope: !161, file: !24, line: 320, column: 6)
!214 = !{!92, !96, i64 84}
!215 = !DILocation(line: 320, column: 13, scope: !213)
!216 = !DILocation(line: 320, column: 31, scope: !213)
!217 = !DILocation(line: 320, column: 40, scope: !213)
!218 = !DILocation(line: 320, column: 34, scope: !213)
!219 = !DILocation(line: 320, column: 53, scope: !213)
!220 = !DILocation(line: 320, column: 50, scope: !213)
!221 = !DILocation(line: 320, column: 6, scope: !161)
!222 = !DILocation(line: 321, column: 20, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !24, line: 321, column: 3)
!224 = distinct !DILexicalBlock(scope: !225, file: !24, line: 321, column: 3)
!225 = distinct !DILexicalBlock(scope: !213, file: !24, line: 320, column: 59)
!226 = !DILocation(line: 321, column: 3, scope: !224)
!227 = !DILocation(line: 322, column: 14, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !24, line: 322, column: 8)
!229 = !DILocation(line: 322, column: 25, scope: !228)
!230 = !DILocation(line: 322, column: 8, scope: !228)
!231 = !DILocation(line: 322, column: 38, scope: !228)
!232 = !DILocation(line: 322, column: 35, scope: !228)
!233 = !DILocation(line: 322, column: 8, scope: !223)
!234 = !DILocation(line: 321, column: 34, scope: !223)
!235 = distinct !{!235, !226, !236, !153, !154}
!236 = !DILocation(line: 323, column: 5, scope: !224)
!237 = !DILocation(line: 325, column: 18, scope: !225)
!238 = !DILocation(line: 326, column: 28, scope: !225)
!239 = !DILocation(line: 326, column: 14, scope: !225)
!240 = !DILocation(line: 326, column: 19, scope: !225)
!241 = !DILocation(line: 330, column: 4, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !24, line: 330, column: 4)
!243 = distinct !DILexicalBlock(scope: !244, file: !24, line: 329, column: 30)
!244 = distinct !DILexicalBlock(scope: !225, file: !24, line: 329, column: 7)
!245 = !{!92, !93, i64 72}
!246 = !{!92, !96, i64 80}
!247 = !DILocalVariable(name: "mf", arg: 1, scope: !248, file: !24, line: 148, type: !27)
!248 = distinct !DISubprogram(name: "move_pos", scope: !24, file: !24, line: 148, type: !186, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !249)
!249 = !{!247}
!250 = !DILocation(line: 0, scope: !248, inlinedAt: !251)
!251 = distinct !DILocation(line: 330, column: 4, scope: !242)
!252 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !251)
!253 = distinct !DILexicalBlock(scope: !248, file: !24, line: 150, column: 6)
!254 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !251)
!255 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !251)
!256 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !251)
!257 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !251)
!258 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !251)
!259 = distinct !DILexicalBlock(scope: !248, file: !24, line: 156, column: 6)
!260 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !251)
!261 = !DILocalVariable(name: "mf", arg: 1, scope: !262, file: !24, line: 109, type: !27)
!262 = distinct !DISubprogram(name: "normalize", scope: !24, file: !24, line: 109, type: !186, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !263)
!263 = !{!261, !264, !265, !266, !267}
!264 = !DILocalVariable(name: "subvalue", scope: !262, file: !24, line: 115, type: !78)
!265 = !DILocalVariable(name: "count", scope: !262, file: !24, line: 119, type: !78)
!266 = !DILocalVariable(name: "hash", scope: !262, file: !24, line: 120, type: !61)
!267 = !DILocalVariable(name: "i", scope: !268, file: !24, line: 122, type: !12)
!268 = distinct !DILexicalBlock(scope: !262, file: !24, line: 122, column: 2)
!269 = !DILocation(line: 0, scope: !262, inlinedAt: !270)
!270 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !251)
!271 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !270)
!272 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !270)
!273 = !{!92, !96, i64 108}
!274 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !270)
!275 = !{!92, !96, i64 112}
!276 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !270)
!277 = !DILocation(line: 0, scope: !268, inlinedAt: !270)
!278 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !270)
!279 = distinct !DILexicalBlock(scope: !268, file: !24, line: 122, column: 2)
!280 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !270)
!281 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !270)
!282 = distinct !DILexicalBlock(scope: !283, file: !24, line: 133, column: 7)
!283 = distinct !DILexicalBlock(scope: !279, file: !24, line: 122, column: 39)
!284 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !270)
!285 = !DILocation(line: 0, scope: !282, inlinedAt: !270)
!286 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !270)
!287 = distinct !{!287, !280, !288, !153, !154}
!288 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !270)
!289 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !270)
!290 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !251)
!291 = !DILocation(line: 318, column: 11, scope: !161)
!292 = !DILocation(line: 335, column: 2, scope: !293)
!293 = distinct !DILexicalBlock(scope: !161, file: !24, line: 335, column: 2)
!294 = !{!92, !96, i64 92}
!295 = !DILocalVariable(name: "len_limit", arg: 1, scope: !296, file: !24, line: 249, type: !78)
!296 = distinct !DISubprogram(name: "hc_find_func", scope: !24, file: !24, line: 248, type: !297, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !301)
!297 = !DISubroutineType(types: !298)
!298 = !{!50, !78, !78, !299, !12, !12, !300, !78, !78, !50, !12}
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!301 = !{!295, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !313, !314}
!302 = !DILocalVariable(name: "pos", arg: 2, scope: !296, file: !24, line: 250, type: !78)
!303 = !DILocalVariable(name: "cur", arg: 3, scope: !296, file: !24, line: 251, type: !299)
!304 = !DILocalVariable(name: "cur_match", arg: 4, scope: !296, file: !24, line: 252, type: !12)
!305 = !DILocalVariable(name: "depth", arg: 5, scope: !296, file: !24, line: 253, type: !12)
!306 = !DILocalVariable(name: "son", arg: 6, scope: !296, file: !24, line: 254, type: !300)
!307 = !DILocalVariable(name: "cyclic_pos", arg: 7, scope: !296, file: !24, line: 255, type: !78)
!308 = !DILocalVariable(name: "cyclic_size", arg: 8, scope: !296, file: !24, line: 256, type: !78)
!309 = !DILocalVariable(name: "matches", arg: 9, scope: !296, file: !24, line: 257, type: !50)
!310 = !DILocalVariable(name: "len_best", arg: 10, scope: !296, file: !24, line: 258, type: !12)
!311 = !DILocalVariable(name: "delta", scope: !312, file: !24, line: 263, type: !78)
!312 = distinct !DILexicalBlock(scope: !296, file: !24, line: 262, column: 15)
!313 = !DILocalVariable(name: "pb", scope: !312, file: !24, line: 267, type: !299)
!314 = !DILocalVariable(name: "len", scope: !315, file: !24, line: 272, type: !12)
!315 = distinct !DILexicalBlock(scope: !316, file: !24, line: 271, column: 57)
!316 = distinct !DILexicalBlock(scope: !312, file: !24, line: 271, column: 7)
!317 = !DILocation(line: 0, scope: !296, inlinedAt: !318)
!318 = distinct !DILocation(line: 335, column: 2, scope: !293)
!319 = !DILocation(line: 260, column: 2, scope: !296, inlinedAt: !318)
!320 = !DILocation(line: 260, column: 18, scope: !296, inlinedAt: !318)
!321 = !DILocation(line: 263, column: 30, scope: !312, inlinedAt: !318)
!322 = !DILocation(line: 0, scope: !312, inlinedAt: !318)
!323 = !DILocation(line: 264, column: 15, scope: !324, inlinedAt: !318)
!324 = distinct !DILexicalBlock(scope: !312, file: !24, line: 264, column: 7)
!325 = !DILocation(line: 264, column: 20, scope: !324, inlinedAt: !318)
!326 = !DILocation(line: 271, column: 37, scope: !316, inlinedAt: !318)
!327 = !DILocation(line: 264, column: 12, scope: !324, inlinedAt: !318)
!328 = !DILocation(line: 267, column: 33, scope: !312, inlinedAt: !318)
!329 = !DILocation(line: 268, column: 30, scope: !312, inlinedAt: !318)
!330 = !DILocation(line: 269, column: 14, scope: !312, inlinedAt: !318)
!331 = !DILocation(line: 269, column: 8, scope: !312, inlinedAt: !318)
!332 = !DILocation(line: 269, column: 5, scope: !312, inlinedAt: !318)
!333 = !DILocation(line: 268, column: 15, scope: !312, inlinedAt: !318)
!334 = !DILocation(line: 271, column: 7, scope: !316, inlinedAt: !318)
!335 = !DILocation(line: 271, column: 23, scope: !316, inlinedAt: !318)
!336 = !DILocation(line: 271, column: 20, scope: !316, inlinedAt: !318)
!337 = !DILocation(line: 271, column: 40, scope: !316, inlinedAt: !318)
!338 = !DILocation(line: 271, column: 49, scope: !316, inlinedAt: !318)
!339 = !DILocation(line: 271, column: 46, scope: !316, inlinedAt: !318)
!340 = !DILocation(line: 271, column: 7, scope: !312, inlinedAt: !318)
!341 = !DILocation(line: 0, scope: !315, inlinedAt: !318)
!342 = !DILocation(line: 273, column: 17, scope: !315, inlinedAt: !318)
!343 = !DILocation(line: 273, column: 4, scope: !315, inlinedAt: !318)
!344 = !DILocation(line: 273, column: 11, scope: !315, inlinedAt: !318)
!345 = !DILocation(line: 274, column: 9, scope: !346, inlinedAt: !318)
!346 = distinct !DILexicalBlock(scope: !315, file: !24, line: 274, column: 9)
!347 = !DILocation(line: 274, column: 20, scope: !346, inlinedAt: !318)
!348 = !DILocation(line: 274, column: 17, scope: !346, inlinedAt: !318)
!349 = !DILocation(line: 274, column: 9, scope: !315, inlinedAt: !318)
!350 = distinct !{!350, !343, !351, !153, !154}
!351 = !DILocation(line: 275, column: 6, scope: !315, inlinedAt: !318)
!352 = !DILocation(line: 277, column: 17, scope: !353, inlinedAt: !318)
!353 = distinct !DILexicalBlock(scope: !315, file: !24, line: 277, column: 8)
!354 = !DILocation(line: 277, column: 8, scope: !315, inlinedAt: !318)
!355 = !DILocation(line: 279, column: 18, scope: !356, inlinedAt: !318)
!356 = distinct !DILexicalBlock(scope: !353, file: !24, line: 277, column: 24)
!357 = !DILocation(line: 280, column: 27, scope: !356, inlinedAt: !318)
!358 = !DILocation(line: 280, column: 14, scope: !356, inlinedAt: !318)
!359 = !DILocation(line: 280, column: 19, scope: !356, inlinedAt: !318)
!360 = !DILocation(line: 281, column: 5, scope: !356, inlinedAt: !318)
!361 = !DILocation(line: 283, column: 9, scope: !356, inlinedAt: !318)
!362 = !DILocation(line: 0, scope: !248, inlinedAt: !363)
!363 = distinct !DILocation(line: 335, column: 2, scope: !293)
!364 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !363)
!365 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !363)
!366 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !363)
!367 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !363)
!368 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !363)
!369 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !363)
!370 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !363)
!371 = !DILocation(line: 0, scope: !262, inlinedAt: !372)
!372 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !363)
!373 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !372)
!374 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !372)
!375 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !372)
!376 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !372)
!377 = !DILocation(line: 0, scope: !268, inlinedAt: !372)
!378 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !372)
!379 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !372)
!380 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !372)
!381 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !372)
!382 = !DILocation(line: 0, scope: !282, inlinedAt: !372)
!383 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !372)
!384 = distinct !{!384, !379, !385, !153, !154}
!385 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !372)
!386 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !372)
!387 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !363)
!388 = !DILocation(line: 336, column: 1, scope: !161)
!389 = distinct !DISubprogram(name: "lzma_mf_hc3_skip", scope: !24, file: !24, line: 340, type: !58, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !390)
!390 = !{!391, !392, !393, !395, !396, !397, !398, !399}
!391 = !DILocalVariable(name: "mf", arg: 1, scope: !389, file: !24, line: 340, type: !27)
!392 = !DILocalVariable(name: "amount", arg: 2, scope: !389, file: !24, line: 340, type: !12)
!393 = !DILocalVariable(name: "cur", scope: !394, file: !24, line: 348, type: !86)
!394 = distinct !DILexicalBlock(scope: !389, file: !24, line: 342, column: 5)
!395 = !DILocalVariable(name: "pos", scope: !394, file: !24, line: 349, type: !78)
!396 = !DILocalVariable(name: "temp", scope: !394, file: !24, line: 351, type: !78)
!397 = !DILocalVariable(name: "hash_2_value", scope: !394, file: !24, line: 351, type: !78)
!398 = !DILocalVariable(name: "hash_value", scope: !394, file: !24, line: 351, type: !78)
!399 = !DILocalVariable(name: "cur_match", scope: !394, file: !24, line: 353, type: !78)
!400 = !DILocation(line: 0, scope: !389)
!401 = !DILocation(line: 342, column: 2, scope: !389)
!402 = !DILocation(line: 343, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !394, file: !24, line: 343, column: 7)
!404 = !DILocation(line: 0, scope: !113, inlinedAt: !405)
!405 = distinct !DILocation(line: 343, column: 7, scope: !403)
!406 = !DILocation(line: 232, column: 23, scope: !113, inlinedAt: !405)
!407 = !DILocation(line: 343, column: 20, scope: !403)
!408 = !DILocation(line: 343, column: 7, scope: !394)
!409 = !DILocation(line: 0, scope: !185, inlinedAt: !410)
!410 = distinct !DILocation(line: 344, column: 4, scope: !411)
!411 = distinct !DILexicalBlock(scope: !403, file: !24, line: 343, column: 25)
!412 = !DILocation(line: 178, column: 2, scope: !185, inlinedAt: !410)
!413 = !DILocation(line: 180, column: 2, scope: !185, inlinedAt: !410)
!414 = !DILocation(line: 345, column: 4, scope: !411)
!415 = !DILocation(line: 348, column: 24, scope: !394)
!416 = !DILocation(line: 0, scope: !131, inlinedAt: !417)
!417 = distinct !DILocation(line: 348, column: 24, scope: !394)
!418 = !DILocation(line: 224, column: 20, scope: !131, inlinedAt: !417)
!419 = !DILocation(line: 0, scope: !394)
!420 = !DILocation(line: 349, column: 43, scope: !394)
!421 = !DILocation(line: 349, column: 37, scope: !394)
!422 = !DILocation(line: 351, column: 3, scope: !394)
!423 = !DILocation(line: 354, column: 11, scope: !394)
!424 = !DILocation(line: 354, column: 32, scope: !394)
!425 = !DILocation(line: 354, column: 7, scope: !394)
!426 = !DILocation(line: 356, column: 3, scope: !394)
!427 = !DILocation(line: 356, column: 26, scope: !394)
!428 = !DILocation(line: 357, column: 42, scope: !394)
!429 = !DILocation(line: 359, column: 3, scope: !430)
!430 = distinct !DILexicalBlock(scope: !394, file: !24, line: 359, column: 3)
!431 = !DILocation(line: 0, scope: !248, inlinedAt: !432)
!432 = distinct !DILocation(line: 359, column: 3, scope: !430)
!433 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !432)
!434 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !432)
!435 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !432)
!436 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !432)
!437 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !432)
!438 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !432)
!439 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !432)
!440 = !DILocation(line: 0, scope: !262, inlinedAt: !441)
!441 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !432)
!442 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !441)
!443 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !441)
!444 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !441)
!445 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !441)
!446 = !DILocation(line: 0, scope: !268, inlinedAt: !441)
!447 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !441)
!448 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !441)
!449 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !441)
!450 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !441)
!451 = !DILocation(line: 0, scope: !282, inlinedAt: !441)
!452 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !441)
!453 = distinct !{!453, !448, !454, !153, !154}
!454 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !441)
!455 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !441)
!456 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !432)
!457 = !DILocation(line: 361, column: 11, scope: !389)
!458 = !DILocation(line: 361, column: 20, scope: !389)
!459 = !DILocation(line: 361, column: 2, scope: !394)
!460 = distinct !{!460, !401, !461, !153, !154}
!461 = !DILocation(line: 361, column: 24, scope: !389)
!462 = !DILocation(line: 362, column: 1, scope: !389)
!463 = distinct !DISubprogram(name: "lzma_mf_hc4_find", scope: !24, file: !24, line: 368, type: !48, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!465 = !DILocalVariable(name: "mf", arg: 1, scope: !463, file: !24, line: 368, type: !27)
!466 = !DILocalVariable(name: "matches", arg: 2, scope: !463, file: !24, line: 368, type: !50)
!467 = !DILocalVariable(name: "len_limit", scope: !463, file: !24, line: 370, type: !12)
!468 = !DILocalVariable(name: "cur", scope: !463, file: !24, line: 370, type: !86)
!469 = !DILocalVariable(name: "pos", scope: !463, file: !24, line: 370, type: !78)
!470 = !DILocalVariable(name: "matches_count", scope: !463, file: !24, line: 370, type: !12)
!471 = !DILocalVariable(name: "temp", scope: !463, file: !24, line: 372, type: !78)
!472 = !DILocalVariable(name: "hash_2_value", scope: !463, file: !24, line: 372, type: !78)
!473 = !DILocalVariable(name: "hash_3_value", scope: !463, file: !24, line: 372, type: !78)
!474 = !DILocalVariable(name: "hash_value", scope: !463, file: !24, line: 372, type: !78)
!475 = !DILocalVariable(name: "delta2", scope: !463, file: !24, line: 374, type: !12)
!476 = !DILocalVariable(name: "delta3", scope: !463, file: !24, line: 375, type: !78)
!477 = !DILocalVariable(name: "cur_match", scope: !463, file: !24, line: 377, type: !78)
!478 = !DILocalVariable(name: "len_best", scope: !463, file: !24, line: 383, type: !12)
!479 = !DILocation(line: 0, scope: !463)
!480 = !DILocation(line: 370, column: 2, scope: !463)
!481 = !DILocation(line: 0, scope: !113, inlinedAt: !482)
!482 = distinct !DILocation(line: 370, column: 2, scope: !463)
!483 = !DILocation(line: 232, column: 23, scope: !113, inlinedAt: !482)
!484 = !DILocation(line: 370, column: 2, scope: !485)
!485 = distinct !DILexicalBlock(scope: !463, file: !24, line: 370, column: 2)
!486 = !DILocation(line: 370, column: 2, scope: !487)
!487 = distinct !DILexicalBlock(scope: !485, file: !24, line: 370, column: 2)
!488 = !DILocation(line: 0, scope: !185, inlinedAt: !489)
!489 = distinct !DILocation(line: 370, column: 2, scope: !490)
!490 = distinct !DILexicalBlock(scope: !487, file: !24, line: 370, column: 2)
!491 = !DILocation(line: 178, column: 8, scope: !185, inlinedAt: !489)
!492 = !DILocation(line: 178, column: 2, scope: !185, inlinedAt: !489)
!493 = !DILocation(line: 180, column: 8, scope: !185, inlinedAt: !489)
!494 = !DILocation(line: 180, column: 2, scope: !185, inlinedAt: !489)
!495 = !DILocation(line: 370, column: 2, scope: !490)
!496 = !DILocation(line: 0, scope: !131, inlinedAt: !497)
!497 = distinct !DILocation(line: 370, column: 2, scope: !463)
!498 = !DILocation(line: 224, column: 20, scope: !131, inlinedAt: !497)
!499 = !DILocation(line: 372, column: 2, scope: !463)
!500 = !DILocation(line: 374, column: 30, scope: !463)
!501 = !DILocation(line: 374, column: 26, scope: !463)
!502 = !DILocation(line: 374, column: 24, scope: !463)
!503 = !DILocation(line: 376, column: 37, scope: !463)
!504 = !DILocation(line: 376, column: 12, scope: !463)
!505 = !DILocation(line: 376, column: 10, scope: !463)
!506 = !DILocation(line: 377, column: 54, scope: !463)
!507 = !DILocation(line: 377, column: 29, scope: !463)
!508 = !DILocation(line: 379, column: 26, scope: !463)
!509 = !DILocation(line: 380, column: 43, scope: !463)
!510 = !DILocation(line: 381, column: 41, scope: !463)
!511 = !DILocation(line: 385, column: 19, scope: !512)
!512 = distinct !DILexicalBlock(scope: !463, file: !24, line: 385, column: 6)
!513 = !DILocation(line: 385, column: 13, scope: !512)
!514 = !DILocation(line: 385, column: 31, scope: !512)
!515 = !DILocation(line: 385, column: 40, scope: !512)
!516 = !DILocation(line: 385, column: 34, scope: !512)
!517 = !DILocation(line: 385, column: 53, scope: !512)
!518 = !DILocation(line: 385, column: 50, scope: !512)
!519 = !DILocation(line: 385, column: 6, scope: !463)
!520 = !DILocation(line: 387, column: 18, scope: !521)
!521 = distinct !DILexicalBlock(scope: !512, file: !24, line: 385, column: 59)
!522 = !DILocation(line: 388, column: 28, scope: !521)
!523 = !DILocation(line: 388, column: 14, scope: !521)
!524 = !DILocation(line: 388, column: 19, scope: !521)
!525 = !DILocation(line: 390, column: 2, scope: !521)
!526 = !DILocation(line: 392, column: 13, scope: !527)
!527 = distinct !DILexicalBlock(scope: !463, file: !24, line: 392, column: 6)
!528 = !DILocation(line: 392, column: 23, scope: !527)
!529 = !DILocation(line: 393, column: 13, scope: !527)
!530 = !DILocation(line: 393, column: 7, scope: !527)
!531 = !DILocation(line: 393, column: 26, scope: !527)
!532 = !DILocation(line: 393, column: 23, scope: !527)
!533 = !DILocation(line: 392, column: 6, scope: !463)
!534 = !DILocation(line: 395, column: 42, scope: !535)
!535 = distinct !DILexicalBlock(scope: !527, file: !24, line: 393, column: 32)
!536 = !DILocation(line: 395, column: 24, scope: !535)
!537 = !DILocation(line: 395, column: 3, scope: !535)
!538 = !DILocation(line: 395, column: 28, scope: !535)
!539 = !DILocation(line: 395, column: 33, scope: !535)
!540 = !DILocation(line: 399, column: 6, scope: !463)
!541 = !DILocation(line: 400, column: 20, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !24, line: 400, column: 3)
!543 = distinct !DILexicalBlock(scope: !544, file: !24, line: 400, column: 3)
!544 = distinct !DILexicalBlock(scope: !545, file: !24, line: 399, column: 26)
!545 = distinct !DILexicalBlock(scope: !463, file: !24, line: 399, column: 6)
!546 = !DILocation(line: 400, column: 3, scope: !543)
!547 = !DILocation(line: 401, column: 14, scope: !548)
!548 = distinct !DILexicalBlock(scope: !542, file: !24, line: 401, column: 8)
!549 = !DILocation(line: 401, column: 25, scope: !548)
!550 = !DILocation(line: 401, column: 8, scope: !548)
!551 = !DILocation(line: 401, column: 38, scope: !548)
!552 = !DILocation(line: 401, column: 35, scope: !548)
!553 = !DILocation(line: 401, column: 8, scope: !542)
!554 = !DILocation(line: 400, column: 34, scope: !542)
!555 = distinct !{!555, !546, !556, !153, !154}
!556 = !DILocation(line: 402, column: 5, scope: !543)
!557 = !DILocation(line: 404, column: 25, scope: !544)
!558 = !DILocation(line: 404, column: 3, scope: !544)
!559 = !DILocation(line: 404, column: 34, scope: !544)
!560 = !DILocation(line: 407, column: 4, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !24, line: 407, column: 4)
!562 = distinct !DILexicalBlock(scope: !563, file: !24, line: 406, column: 30)
!563 = distinct !DILexicalBlock(scope: !544, file: !24, line: 406, column: 7)
!564 = !DILocation(line: 0, scope: !248, inlinedAt: !565)
!565 = distinct !DILocation(line: 407, column: 4, scope: !561)
!566 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !565)
!567 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !565)
!568 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !565)
!569 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !565)
!570 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !565)
!571 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !565)
!572 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !565)
!573 = !DILocation(line: 0, scope: !262, inlinedAt: !574)
!574 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !565)
!575 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !574)
!576 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !574)
!577 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !574)
!578 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !574)
!579 = !DILocation(line: 0, scope: !268, inlinedAt: !574)
!580 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !574)
!581 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !574)
!582 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !574)
!583 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !574)
!584 = !DILocation(line: 0, scope: !282, inlinedAt: !574)
!585 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !574)
!586 = distinct !{!586, !581, !587, !153, !154}
!587 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !574)
!588 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !574)
!589 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !565)
!590 = !DILocation(line: 394, column: 12, scope: !535)
!591 = !DILocation(line: 415, column: 2, scope: !592)
!592 = distinct !DILexicalBlock(scope: !463, file: !24, line: 415, column: 2)
!593 = !DILocation(line: 0, scope: !296, inlinedAt: !594)
!594 = distinct !DILocation(line: 415, column: 2, scope: !592)
!595 = !DILocation(line: 260, column: 2, scope: !296, inlinedAt: !594)
!596 = !DILocation(line: 260, column: 18, scope: !296, inlinedAt: !594)
!597 = !DILocation(line: 263, column: 30, scope: !312, inlinedAt: !594)
!598 = !DILocation(line: 0, scope: !312, inlinedAt: !594)
!599 = !DILocation(line: 264, column: 15, scope: !324, inlinedAt: !594)
!600 = !DILocation(line: 264, column: 20, scope: !324, inlinedAt: !594)
!601 = !DILocation(line: 412, column: 6, scope: !463)
!602 = !DILocation(line: 271, column: 37, scope: !316, inlinedAt: !594)
!603 = !DILocation(line: 264, column: 12, scope: !324, inlinedAt: !594)
!604 = !DILocation(line: 267, column: 33, scope: !312, inlinedAt: !594)
!605 = !DILocation(line: 268, column: 30, scope: !312, inlinedAt: !594)
!606 = !DILocation(line: 269, column: 14, scope: !312, inlinedAt: !594)
!607 = !DILocation(line: 269, column: 8, scope: !312, inlinedAt: !594)
!608 = !DILocation(line: 269, column: 5, scope: !312, inlinedAt: !594)
!609 = !DILocation(line: 268, column: 15, scope: !312, inlinedAt: !594)
!610 = !DILocation(line: 271, column: 7, scope: !316, inlinedAt: !594)
!611 = !DILocation(line: 271, column: 23, scope: !316, inlinedAt: !594)
!612 = !DILocation(line: 271, column: 20, scope: !316, inlinedAt: !594)
!613 = !DILocation(line: 271, column: 40, scope: !316, inlinedAt: !594)
!614 = !DILocation(line: 271, column: 49, scope: !316, inlinedAt: !594)
!615 = !DILocation(line: 271, column: 46, scope: !316, inlinedAt: !594)
!616 = !DILocation(line: 271, column: 7, scope: !312, inlinedAt: !594)
!617 = !DILocation(line: 0, scope: !315, inlinedAt: !594)
!618 = !DILocation(line: 273, column: 17, scope: !315, inlinedAt: !594)
!619 = !DILocation(line: 273, column: 4, scope: !315, inlinedAt: !594)
!620 = !DILocation(line: 273, column: 11, scope: !315, inlinedAt: !594)
!621 = !DILocation(line: 274, column: 9, scope: !346, inlinedAt: !594)
!622 = !DILocation(line: 274, column: 20, scope: !346, inlinedAt: !594)
!623 = !DILocation(line: 274, column: 17, scope: !346, inlinedAt: !594)
!624 = !DILocation(line: 274, column: 9, scope: !315, inlinedAt: !594)
!625 = distinct !{!625, !619, !626, !153, !154}
!626 = !DILocation(line: 275, column: 6, scope: !315, inlinedAt: !594)
!627 = !DILocation(line: 277, column: 17, scope: !353, inlinedAt: !594)
!628 = !DILocation(line: 277, column: 8, scope: !315, inlinedAt: !594)
!629 = !DILocation(line: 279, column: 18, scope: !356, inlinedAt: !594)
!630 = !DILocation(line: 280, column: 27, scope: !356, inlinedAt: !594)
!631 = !DILocation(line: 280, column: 14, scope: !356, inlinedAt: !594)
!632 = !DILocation(line: 280, column: 19, scope: !356, inlinedAt: !594)
!633 = !DILocation(line: 281, column: 5, scope: !356, inlinedAt: !594)
!634 = !DILocation(line: 283, column: 9, scope: !356, inlinedAt: !594)
!635 = !DILocation(line: 0, scope: !248, inlinedAt: !636)
!636 = distinct !DILocation(line: 415, column: 2, scope: !592)
!637 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !636)
!638 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !636)
!639 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !636)
!640 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !636)
!641 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !636)
!642 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !636)
!643 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !636)
!644 = !DILocation(line: 0, scope: !262, inlinedAt: !645)
!645 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !636)
!646 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !645)
!647 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !645)
!648 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !645)
!649 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !645)
!650 = !DILocation(line: 0, scope: !268, inlinedAt: !645)
!651 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !645)
!652 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !645)
!653 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !645)
!654 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !645)
!655 = !DILocation(line: 0, scope: !282, inlinedAt: !645)
!656 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !645)
!657 = distinct !{!657, !652, !658, !153, !154}
!658 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !645)
!659 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !645)
!660 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !636)
!661 = !DILocation(line: 416, column: 1, scope: !463)
!662 = distinct !DISubprogram(name: "lzma_mf_hc4_skip", scope: !24, file: !24, line: 420, type: !58, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !663)
!663 = !{!664, !665, !666, !668, !669, !670, !671, !672, !673}
!664 = !DILocalVariable(name: "mf", arg: 1, scope: !662, file: !24, line: 420, type: !27)
!665 = !DILocalVariable(name: "amount", arg: 2, scope: !662, file: !24, line: 420, type: !12)
!666 = !DILocalVariable(name: "cur", scope: !667, file: !24, line: 428, type: !86)
!667 = distinct !DILexicalBlock(scope: !662, file: !24, line: 422, column: 5)
!668 = !DILocalVariable(name: "pos", scope: !667, file: !24, line: 429, type: !78)
!669 = !DILocalVariable(name: "temp", scope: !667, file: !24, line: 431, type: !78)
!670 = !DILocalVariable(name: "hash_2_value", scope: !667, file: !24, line: 431, type: !78)
!671 = !DILocalVariable(name: "hash_3_value", scope: !667, file: !24, line: 431, type: !78)
!672 = !DILocalVariable(name: "hash_value", scope: !667, file: !24, line: 431, type: !78)
!673 = !DILocalVariable(name: "cur_match", scope: !667, file: !24, line: 433, type: !78)
!674 = !DILocation(line: 0, scope: !662)
!675 = !DILocation(line: 422, column: 2, scope: !662)
!676 = !DILocation(line: 423, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !667, file: !24, line: 423, column: 7)
!678 = !DILocation(line: 0, scope: !113, inlinedAt: !679)
!679 = distinct !DILocation(line: 423, column: 7, scope: !677)
!680 = !DILocation(line: 232, column: 23, scope: !113, inlinedAt: !679)
!681 = !DILocation(line: 423, column: 20, scope: !677)
!682 = !DILocation(line: 423, column: 7, scope: !667)
!683 = !DILocation(line: 0, scope: !185, inlinedAt: !684)
!684 = distinct !DILocation(line: 424, column: 4, scope: !685)
!685 = distinct !DILexicalBlock(scope: !677, file: !24, line: 423, column: 25)
!686 = !DILocation(line: 178, column: 2, scope: !185, inlinedAt: !684)
!687 = !DILocation(line: 180, column: 2, scope: !185, inlinedAt: !684)
!688 = !DILocation(line: 425, column: 4, scope: !685)
!689 = !DILocation(line: 428, column: 24, scope: !667)
!690 = !DILocation(line: 0, scope: !131, inlinedAt: !691)
!691 = distinct !DILocation(line: 428, column: 24, scope: !667)
!692 = !DILocation(line: 224, column: 20, scope: !131, inlinedAt: !691)
!693 = !DILocation(line: 0, scope: !667)
!694 = !DILocation(line: 429, column: 43, scope: !667)
!695 = !DILocation(line: 429, column: 37, scope: !667)
!696 = !DILocation(line: 431, column: 3, scope: !667)
!697 = !DILocation(line: 434, column: 11, scope: !667)
!698 = !DILocation(line: 434, column: 32, scope: !667)
!699 = !DILocation(line: 434, column: 7, scope: !667)
!700 = !DILocation(line: 436, column: 3, scope: !667)
!701 = !DILocation(line: 436, column: 26, scope: !667)
!702 = !DILocation(line: 437, column: 28, scope: !667)
!703 = !DILocation(line: 437, column: 3, scope: !667)
!704 = !DILocation(line: 437, column: 44, scope: !667)
!705 = !DILocation(line: 438, column: 42, scope: !667)
!706 = !DILocation(line: 440, column: 3, scope: !707)
!707 = distinct !DILexicalBlock(scope: !667, file: !24, line: 440, column: 3)
!708 = !DILocation(line: 0, scope: !248, inlinedAt: !709)
!709 = distinct !DILocation(line: 440, column: 3, scope: !707)
!710 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !709)
!711 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !709)
!712 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !709)
!713 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !709)
!714 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !709)
!715 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !709)
!716 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !709)
!717 = !DILocation(line: 0, scope: !262, inlinedAt: !718)
!718 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !709)
!719 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !718)
!720 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !718)
!721 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !718)
!722 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !718)
!723 = !DILocation(line: 0, scope: !268, inlinedAt: !718)
!724 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !718)
!725 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !718)
!726 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !718)
!727 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !718)
!728 = !DILocation(line: 0, scope: !282, inlinedAt: !718)
!729 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !718)
!730 = distinct !{!730, !725, !731, !153, !154}
!731 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !718)
!732 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !718)
!733 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !709)
!734 = !DILocation(line: 442, column: 11, scope: !662)
!735 = !DILocation(line: 442, column: 20, scope: !662)
!736 = !DILocation(line: 442, column: 2, scope: !667)
!737 = distinct !{!737, !675, !738, !153, !154}
!738 = !DILocation(line: 442, column: 24, scope: !662)
!739 = !DILocation(line: 443, column: 1, scope: !662)
!740 = distinct !DISubprogram(name: "lzma_mf_bt2_find", scope: !24, file: !24, line: 594, type: !48, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749}
!742 = !DILocalVariable(name: "mf", arg: 1, scope: !740, file: !24, line: 594, type: !27)
!743 = !DILocalVariable(name: "matches", arg: 2, scope: !740, file: !24, line: 594, type: !50)
!744 = !DILocalVariable(name: "len_limit", scope: !740, file: !24, line: 596, type: !12)
!745 = !DILocalVariable(name: "cur", scope: !740, file: !24, line: 596, type: !86)
!746 = !DILocalVariable(name: "pos", scope: !740, file: !24, line: 596, type: !78)
!747 = !DILocalVariable(name: "matches_count", scope: !740, file: !24, line: 596, type: !12)
!748 = !DILocalVariable(name: "hash_value", scope: !740, file: !24, line: 598, type: !78)
!749 = !DILocalVariable(name: "cur_match", scope: !740, file: !24, line: 600, type: !78)
!750 = !DILocation(line: 0, scope: !740)
!751 = !DILocation(line: 596, column: 2, scope: !740)
!752 = !DILocation(line: 0, scope: !113, inlinedAt: !753)
!753 = distinct !DILocation(line: 596, column: 2, scope: !740)
!754 = !DILocation(line: 232, column: 23, scope: !113, inlinedAt: !753)
!755 = !DILocation(line: 596, column: 2, scope: !756)
!756 = distinct !DILexicalBlock(scope: !740, file: !24, line: 596, column: 2)
!757 = !DILocation(line: 596, column: 2, scope: !758)
!758 = distinct !DILexicalBlock(scope: !756, file: !24, line: 596, column: 2)
!759 = !{!92, !94, i64 104}
!760 = !DILocation(line: 0, scope: !185, inlinedAt: !761)
!761 = distinct !DILocation(line: 596, column: 2, scope: !762)
!762 = distinct !DILexicalBlock(scope: !758, file: !24, line: 596, column: 2)
!763 = !DILocation(line: 178, column: 8, scope: !185, inlinedAt: !761)
!764 = !DILocation(line: 178, column: 2, scope: !185, inlinedAt: !761)
!765 = !DILocation(line: 180, column: 8, scope: !185, inlinedAt: !761)
!766 = !DILocation(line: 180, column: 2, scope: !185, inlinedAt: !761)
!767 = !DILocation(line: 596, column: 2, scope: !762)
!768 = !DILocation(line: 0, scope: !131, inlinedAt: !769)
!769 = distinct !DILocation(line: 596, column: 2, scope: !740)
!770 = !DILocation(line: 224, column: 20, scope: !131, inlinedAt: !769)
!771 = !DILocation(line: 598, column: 2, scope: !740)
!772 = !DILocation(line: 600, column: 33, scope: !740)
!773 = !DILocation(line: 600, column: 29, scope: !740)
!774 = !DILocation(line: 601, column: 23, scope: !740)
!775 = !DILocation(line: 603, column: 2, scope: !776)
!776 = distinct !DILexicalBlock(scope: !740, file: !24, line: 603, column: 2)
!777 = !DILocalVariable(name: "len_limit", arg: 1, scope: !778, file: !24, line: 454, type: !78)
!778 = distinct !DISubprogram(name: "bt_find_func", scope: !24, file: !24, line: 453, type: !297, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !779)
!779 = !{!777, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !795, !796, !797}
!780 = !DILocalVariable(name: "pos", arg: 2, scope: !778, file: !24, line: 455, type: !78)
!781 = !DILocalVariable(name: "cur", arg: 3, scope: !778, file: !24, line: 456, type: !299)
!782 = !DILocalVariable(name: "cur_match", arg: 4, scope: !778, file: !24, line: 457, type: !12)
!783 = !DILocalVariable(name: "depth", arg: 5, scope: !778, file: !24, line: 458, type: !12)
!784 = !DILocalVariable(name: "son", arg: 6, scope: !778, file: !24, line: 459, type: !300)
!785 = !DILocalVariable(name: "cyclic_pos", arg: 7, scope: !778, file: !24, line: 460, type: !78)
!786 = !DILocalVariable(name: "cyclic_size", arg: 8, scope: !778, file: !24, line: 461, type: !78)
!787 = !DILocalVariable(name: "matches", arg: 9, scope: !778, file: !24, line: 462, type: !50)
!788 = !DILocalVariable(name: "len_best", arg: 10, scope: !778, file: !24, line: 463, type: !12)
!789 = !DILocalVariable(name: "ptr0", scope: !778, file: !24, line: 465, type: !61)
!790 = !DILocalVariable(name: "ptr1", scope: !778, file: !24, line: 466, type: !61)
!791 = !DILocalVariable(name: "len0", scope: !778, file: !24, line: 468, type: !12)
!792 = !DILocalVariable(name: "len1", scope: !778, file: !24, line: 469, type: !12)
!793 = !DILocalVariable(name: "delta", scope: !794, file: !24, line: 472, type: !78)
!794 = distinct !DILexicalBlock(scope: !778, file: !24, line: 471, column: 15)
!795 = !DILocalVariable(name: "pair", scope: !794, file: !24, line: 479, type: !300)
!796 = !DILocalVariable(name: "pb", scope: !794, file: !24, line: 483, type: !299)
!797 = !DILocalVariable(name: "len", scope: !794, file: !24, line: 484, type: !12)
!798 = !DILocation(line: 0, scope: !778, inlinedAt: !799)
!799 = distinct !DILocation(line: 603, column: 2, scope: !776)
!800 = !DILocation(line: 465, column: 37, scope: !778, inlinedAt: !799)
!801 = !DILocation(line: 465, column: 23, scope: !778, inlinedAt: !799)
!802 = !DILocation(line: 465, column: 43, scope: !778, inlinedAt: !799)
!803 = !DILocation(line: 472, column: 30, scope: !794, inlinedAt: !799)
!804 = !DILocation(line: 0, scope: !794, inlinedAt: !799)
!805 = !DILocation(line: 473, column: 15, scope: !806, inlinedAt: !799)
!806 = distinct !DILexicalBlock(scope: !794, file: !24, line: 473, column: 7)
!807 = !DILocation(line: 473, column: 20, scope: !806, inlinedAt: !799)
!808 = !DILocation(line: 471, column: 2, scope: !778, inlinedAt: !799)
!809 = !DILocation(line: 465, column: 12, scope: !778, inlinedAt: !799)
!810 = !DILocation(line: 466, column: 12, scope: !778, inlinedAt: !799)
!811 = !DILocation(line: 474, column: 10, scope: !812, inlinedAt: !799)
!812 = distinct !DILexicalBlock(scope: !806, file: !24, line: 473, column: 45)
!813 = !DILocation(line: 475, column: 10, scope: !812, inlinedAt: !799)
!814 = !DILocation(line: 476, column: 4, scope: !812, inlinedAt: !799)
!815 = !DILocation(line: 473, column: 12, scope: !806, inlinedAt: !799)
!816 = !DILocation(line: 479, column: 45, scope: !794, inlinedAt: !799)
!817 = !DILocation(line: 480, column: 14, scope: !794, inlinedAt: !799)
!818 = !DILocation(line: 480, column: 8, scope: !794, inlinedAt: !799)
!819 = !DILocation(line: 480, column: 5, scope: !794, inlinedAt: !799)
!820 = !DILocation(line: 481, column: 5, scope: !794, inlinedAt: !799)
!821 = !DILocation(line: 479, column: 30, scope: !794, inlinedAt: !799)
!822 = !DILocation(line: 483, column: 33, scope: !794, inlinedAt: !799)
!823 = !DILocation(line: 484, column: 18, scope: !794, inlinedAt: !799)
!824 = !DILocation(line: 486, column: 7, scope: !825, inlinedAt: !799)
!825 = distinct !DILexicalBlock(scope: !794, file: !24, line: 486, column: 7)
!826 = !DILocation(line: 486, column: 18, scope: !825, inlinedAt: !799)
!827 = !DILocation(line: 486, column: 15, scope: !825, inlinedAt: !799)
!828 = !DILocation(line: 486, column: 7, scope: !794, inlinedAt: !799)
!829 = !DILocation(line: 487, column: 11, scope: !830, inlinedAt: !799)
!830 = distinct !DILexicalBlock(scope: !825, file: !24, line: 486, column: 28)
!831 = !DILocation(line: 487, column: 17, scope: !830, inlinedAt: !799)
!832 = !DILocation(line: 487, column: 4, scope: !830, inlinedAt: !799)
!833 = !DILocation(line: 488, column: 9, scope: !834, inlinedAt: !799)
!834 = distinct !DILexicalBlock(scope: !830, file: !24, line: 488, column: 9)
!835 = !DILocation(line: 488, column: 20, scope: !834, inlinedAt: !799)
!836 = !DILocation(line: 488, column: 17, scope: !834, inlinedAt: !799)
!837 = !DILocation(line: 488, column: 9, scope: !830, inlinedAt: !799)
!838 = distinct !{!838, !832, !839, !153, !154}
!839 = !DILocation(line: 489, column: 6, scope: !830, inlinedAt: !799)
!840 = !DILocation(line: 491, column: 17, scope: !841, inlinedAt: !799)
!841 = distinct !DILexicalBlock(scope: !830, file: !24, line: 491, column: 8)
!842 = !DILocation(line: 491, column: 8, scope: !830, inlinedAt: !799)
!843 = !DILocation(line: 493, column: 18, scope: !844, inlinedAt: !799)
!844 = distinct !DILexicalBlock(scope: !841, file: !24, line: 491, column: 24)
!845 = !DILocation(line: 494, column: 27, scope: !844, inlinedAt: !799)
!846 = !DILocation(line: 494, column: 14, scope: !844, inlinedAt: !799)
!847 = !DILocation(line: 494, column: 19, scope: !844, inlinedAt: !799)
!848 = !DILocation(line: 495, column: 5, scope: !844, inlinedAt: !799)
!849 = !DILocation(line: 497, column: 9, scope: !844, inlinedAt: !799)
!850 = !DILocation(line: 498, column: 14, scope: !851, inlinedAt: !799)
!851 = distinct !DILexicalBlock(scope: !852, file: !24, line: 497, column: 27)
!852 = distinct !DILexicalBlock(scope: !844, file: !24, line: 497, column: 9)
!853 = !DILocation(line: 498, column: 12, scope: !851, inlinedAt: !799)
!854 = !DILocation(line: 499, column: 14, scope: !851, inlinedAt: !799)
!855 = !DILocation(line: 499, column: 12, scope: !851, inlinedAt: !799)
!856 = !DILocation(line: 500, column: 6, scope: !851, inlinedAt: !799)
!857 = !DILocation(line: 505, column: 7, scope: !858, inlinedAt: !799)
!858 = distinct !DILexicalBlock(scope: !794, file: !24, line: 505, column: 7)
!859 = !DILocation(line: 505, column: 17, scope: !858, inlinedAt: !799)
!860 = !DILocation(line: 505, column: 15, scope: !858, inlinedAt: !799)
!861 = !DILocation(line: 505, column: 7, scope: !794, inlinedAt: !799)
!862 = !DILocation(line: 506, column: 10, scope: !863, inlinedAt: !799)
!863 = distinct !DILexicalBlock(scope: !858, file: !24, line: 505, column: 27)
!864 = !DILocation(line: 507, column: 16, scope: !863, inlinedAt: !799)
!865 = !DILocation(line: 510, column: 3, scope: !863, inlinedAt: !799)
!866 = !DILocation(line: 511, column: 10, scope: !867, inlinedAt: !799)
!867 = distinct !DILexicalBlock(scope: !858, file: !24, line: 510, column: 10)
!868 = !DILocation(line: 0, scope: !858, inlinedAt: !799)
!869 = distinct !{!869, !808, !870, !154}
!870 = !DILocation(line: 516, column: 2, scope: !778, inlinedAt: !799)
!871 = !DILocation(line: 0, scope: !248, inlinedAt: !872)
!872 = distinct !DILocation(line: 603, column: 2, scope: !776)
!873 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !872)
!874 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !872)
!875 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !872)
!876 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !872)
!877 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !872)
!878 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !872)
!879 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !872)
!880 = !DILocation(line: 0, scope: !262, inlinedAt: !881)
!881 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !872)
!882 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !881)
!883 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !881)
!884 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !881)
!885 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !881)
!886 = !DILocation(line: 0, scope: !268, inlinedAt: !881)
!887 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !881)
!888 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !881)
!889 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !881)
!890 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !881)
!891 = !DILocation(line: 0, scope: !282, inlinedAt: !881)
!892 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !881)
!893 = distinct !{!893, !888, !894, !153, !154}
!894 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !881)
!895 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !881)
!896 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !872)
!897 = !DILocation(line: 604, column: 1, scope: !740)
!898 = distinct !DISubprogram(name: "lzma_mf_bt2_skip", scope: !24, file: !24, line: 608, type: !58, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !899)
!899 = !{!900, !901, !902, !904, !905, !906, !907}
!900 = !DILocalVariable(name: "mf", arg: 1, scope: !898, file: !24, line: 608, type: !27)
!901 = !DILocalVariable(name: "amount", arg: 2, scope: !898, file: !24, line: 608, type: !12)
!902 = !DILocalVariable(name: "len_limit", scope: !903, file: !24, line: 611, type: !12)
!903 = distinct !DILexicalBlock(scope: !898, file: !24, line: 610, column: 5)
!904 = !DILocalVariable(name: "cur", scope: !903, file: !24, line: 611, type: !86)
!905 = !DILocalVariable(name: "pos", scope: !903, file: !24, line: 611, type: !78)
!906 = !DILocalVariable(name: "hash_value", scope: !903, file: !24, line: 613, type: !78)
!907 = !DILocalVariable(name: "cur_match", scope: !903, file: !24, line: 615, type: !78)
!908 = !DILocation(line: 0, scope: !898)
!909 = !DILocation(line: 610, column: 2, scope: !898)
!910 = !DILocation(line: 611, column: 3, scope: !903)
!911 = !DILocation(line: 0, scope: !113, inlinedAt: !912)
!912 = distinct !DILocation(line: 611, column: 3, scope: !903)
!913 = !DILocation(line: 232, column: 23, scope: !113, inlinedAt: !912)
!914 = !DILocation(line: 0, scope: !903)
!915 = !DILocation(line: 611, column: 3, scope: !916)
!916 = distinct !DILexicalBlock(scope: !903, file: !24, line: 611, column: 3)
!917 = !DILocation(line: 611, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !916, file: !24, line: 611, column: 3)
!919 = !DILocation(line: 0, scope: !185, inlinedAt: !920)
!920 = distinct !DILocation(line: 611, column: 3, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !24, line: 611, column: 3)
!922 = !DILocation(line: 178, column: 2, scope: !185, inlinedAt: !920)
!923 = !DILocation(line: 180, column: 2, scope: !185, inlinedAt: !920)
!924 = !DILocation(line: 611, column: 3, scope: !921)
!925 = !DILocation(line: 0, scope: !131, inlinedAt: !926)
!926 = distinct !DILocation(line: 611, column: 3, scope: !903)
!927 = !DILocation(line: 224, column: 20, scope: !131, inlinedAt: !926)
!928 = !DILocation(line: 613, column: 3, scope: !903)
!929 = !DILocation(line: 615, column: 34, scope: !903)
!930 = !DILocation(line: 615, column: 30, scope: !903)
!931 = !DILocation(line: 616, column: 24, scope: !903)
!932 = !DILocation(line: 618, column: 3, scope: !933)
!933 = distinct !DILexicalBlock(scope: !903, file: !24, line: 618, column: 3)
!934 = !DILocalVariable(name: "len_limit", arg: 1, scope: !935, file: !24, line: 522, type: !78)
!935 = distinct !DISubprogram(name: "bt_skip_func", scope: !24, file: !24, line: 521, type: !936, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !938)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !78, !78, !299, !12, !12, !300, !78, !78}
!938 = !{!934, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !952, !953, !954}
!939 = !DILocalVariable(name: "pos", arg: 2, scope: !935, file: !24, line: 523, type: !78)
!940 = !DILocalVariable(name: "cur", arg: 3, scope: !935, file: !24, line: 524, type: !299)
!941 = !DILocalVariable(name: "cur_match", arg: 4, scope: !935, file: !24, line: 525, type: !12)
!942 = !DILocalVariable(name: "depth", arg: 5, scope: !935, file: !24, line: 526, type: !12)
!943 = !DILocalVariable(name: "son", arg: 6, scope: !935, file: !24, line: 527, type: !300)
!944 = !DILocalVariable(name: "cyclic_pos", arg: 7, scope: !935, file: !24, line: 528, type: !78)
!945 = !DILocalVariable(name: "cyclic_size", arg: 8, scope: !935, file: !24, line: 529, type: !78)
!946 = !DILocalVariable(name: "ptr0", scope: !935, file: !24, line: 531, type: !61)
!947 = !DILocalVariable(name: "ptr1", scope: !935, file: !24, line: 532, type: !61)
!948 = !DILocalVariable(name: "len0", scope: !935, file: !24, line: 534, type: !12)
!949 = !DILocalVariable(name: "len1", scope: !935, file: !24, line: 535, type: !12)
!950 = !DILocalVariable(name: "delta", scope: !951, file: !24, line: 538, type: !78)
!951 = distinct !DILexicalBlock(scope: !935, file: !24, line: 537, column: 15)
!952 = !DILocalVariable(name: "pair", scope: !951, file: !24, line: 545, type: !61)
!953 = !DILocalVariable(name: "pb", scope: !951, file: !24, line: 548, type: !86)
!954 = !DILocalVariable(name: "len", scope: !951, file: !24, line: 549, type: !12)
!955 = !DILocation(line: 0, scope: !935, inlinedAt: !956)
!956 = distinct !DILocation(line: 618, column: 3, scope: !933)
!957 = !DILocation(line: 531, column: 37, scope: !935, inlinedAt: !956)
!958 = !DILocation(line: 531, column: 23, scope: !935, inlinedAt: !956)
!959 = !DILocation(line: 531, column: 43, scope: !935, inlinedAt: !956)
!960 = !DILocation(line: 538, column: 30, scope: !951, inlinedAt: !956)
!961 = !DILocation(line: 0, scope: !951, inlinedAt: !956)
!962 = !DILocation(line: 539, column: 15, scope: !963, inlinedAt: !956)
!963 = distinct !DILexicalBlock(scope: !951, file: !24, line: 539, column: 7)
!964 = !DILocation(line: 539, column: 20, scope: !963, inlinedAt: !956)
!965 = !DILocation(line: 532, column: 12, scope: !935, inlinedAt: !956)
!966 = !DILocation(line: 531, column: 12, scope: !935, inlinedAt: !956)
!967 = !DILocation(line: 540, column: 10, scope: !968, inlinedAt: !956)
!968 = distinct !DILexicalBlock(scope: !963, file: !24, line: 539, column: 45)
!969 = !DILocation(line: 541, column: 10, scope: !968, inlinedAt: !956)
!970 = !DILocation(line: 542, column: 4, scope: !968, inlinedAt: !956)
!971 = !DILocation(line: 539, column: 12, scope: !963, inlinedAt: !956)
!972 = !DILocation(line: 545, column: 39, scope: !951, inlinedAt: !956)
!973 = !DILocation(line: 546, column: 14, scope: !951, inlinedAt: !956)
!974 = !DILocation(line: 546, column: 8, scope: !951, inlinedAt: !956)
!975 = !DILocation(line: 546, column: 5, scope: !951, inlinedAt: !956)
!976 = !DILocation(line: 547, column: 5, scope: !951, inlinedAt: !956)
!977 = !DILocation(line: 545, column: 24, scope: !951, inlinedAt: !956)
!978 = !DILocation(line: 548, column: 27, scope: !951, inlinedAt: !956)
!979 = !DILocation(line: 549, column: 18, scope: !951, inlinedAt: !956)
!980 = !DILocation(line: 551, column: 7, scope: !981, inlinedAt: !956)
!981 = distinct !DILexicalBlock(scope: !951, file: !24, line: 551, column: 7)
!982 = !DILocation(line: 551, column: 18, scope: !981, inlinedAt: !956)
!983 = !DILocation(line: 551, column: 15, scope: !981, inlinedAt: !956)
!984 = !DILocation(line: 551, column: 7, scope: !951, inlinedAt: !956)
!985 = !DILocation(line: 552, column: 11, scope: !986, inlinedAt: !956)
!986 = distinct !DILexicalBlock(scope: !981, file: !24, line: 551, column: 28)
!987 = !DILocation(line: 552, column: 17, scope: !986, inlinedAt: !956)
!988 = !DILocation(line: 552, column: 4, scope: !986, inlinedAt: !956)
!989 = !DILocation(line: 553, column: 9, scope: !990, inlinedAt: !956)
!990 = distinct !DILexicalBlock(scope: !986, file: !24, line: 553, column: 9)
!991 = !DILocation(line: 553, column: 20, scope: !990, inlinedAt: !956)
!992 = !DILocation(line: 553, column: 17, scope: !990, inlinedAt: !956)
!993 = !DILocation(line: 553, column: 9, scope: !986, inlinedAt: !956)
!994 = distinct !{!994, !988, !995, !153, !154}
!995 = !DILocation(line: 554, column: 6, scope: !986, inlinedAt: !956)
!996 = !DILocation(line: 557, column: 13, scope: !997, inlinedAt: !956)
!997 = distinct !DILexicalBlock(scope: !998, file: !24, line: 556, column: 26)
!998 = distinct !DILexicalBlock(scope: !986, file: !24, line: 556, column: 8)
!999 = !DILocation(line: 557, column: 11, scope: !997, inlinedAt: !956)
!1000 = !DILocation(line: 558, column: 13, scope: !997, inlinedAt: !956)
!1001 = !DILocation(line: 558, column: 11, scope: !997, inlinedAt: !956)
!1002 = !DILocation(line: 559, column: 5, scope: !997, inlinedAt: !956)
!1003 = !DILocation(line: 563, column: 17, scope: !1004, inlinedAt: !956)
!1004 = distinct !DILexicalBlock(scope: !951, file: !24, line: 563, column: 7)
!1005 = !DILocation(line: 563, column: 7, scope: !1004, inlinedAt: !956)
!1006 = !DILocation(line: 563, column: 15, scope: !1004, inlinedAt: !956)
!1007 = !DILocation(line: 563, column: 7, scope: !951, inlinedAt: !956)
!1008 = !DILocation(line: 564, column: 10, scope: !1009, inlinedAt: !956)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !24, line: 563, column: 27)
!1010 = !DILocation(line: 565, column: 16, scope: !1009, inlinedAt: !956)
!1011 = !DILocation(line: 568, column: 3, scope: !1009, inlinedAt: !956)
!1012 = !DILocation(line: 569, column: 10, scope: !1013, inlinedAt: !956)
!1013 = distinct !DILexicalBlock(scope: !1004, file: !24, line: 568, column: 10)
!1014 = !DILocation(line: 0, scope: !1004, inlinedAt: !956)
!1015 = distinct !{!1015, !1016, !1017, !154}
!1016 = !DILocation(line: 537, column: 2, scope: !935, inlinedAt: !956)
!1017 = !DILocation(line: 574, column: 2, scope: !935, inlinedAt: !956)
!1018 = !DILocation(line: 0, scope: !248, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 618, column: 3, scope: !933)
!1020 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !1019)
!1021 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !1019)
!1022 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !1019)
!1023 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !1019)
!1024 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !1019)
!1025 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !1019)
!1026 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !1019)
!1027 = !DILocation(line: 0, scope: !262, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1019)
!1029 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !1028)
!1030 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !1028)
!1031 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !1028)
!1032 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !1028)
!1033 = !DILocation(line: 0, scope: !268, inlinedAt: !1028)
!1034 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !1028)
!1035 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !1028)
!1036 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !1028)
!1037 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !1028)
!1038 = !DILocation(line: 0, scope: !282, inlinedAt: !1028)
!1039 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !1028)
!1040 = distinct !{!1040, !1035, !1041, !153, !154}
!1041 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !1028)
!1042 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !1028)
!1043 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1019)
!1044 = !DILocation(line: 620, column: 11, scope: !898)
!1045 = !DILocation(line: 620, column: 20, scope: !898)
!1046 = !DILocation(line: 620, column: 2, scope: !903)
!1047 = distinct !{!1047, !909, !1048, !153, !154}
!1048 = !DILocation(line: 620, column: 24, scope: !898)
!1049 = !DILocation(line: 621, column: 1, scope: !898)
!1050 = distinct !DISubprogram(name: "lzma_mf_bt3_find", scope: !24, file: !24, line: 627, type: !48, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063}
!1052 = !DILocalVariable(name: "mf", arg: 1, scope: !1050, file: !24, line: 627, type: !27)
!1053 = !DILocalVariable(name: "matches", arg: 2, scope: !1050, file: !24, line: 627, type: !50)
!1054 = !DILocalVariable(name: "len_limit", scope: !1050, file: !24, line: 629, type: !12)
!1055 = !DILocalVariable(name: "cur", scope: !1050, file: !24, line: 629, type: !86)
!1056 = !DILocalVariable(name: "pos", scope: !1050, file: !24, line: 629, type: !78)
!1057 = !DILocalVariable(name: "matches_count", scope: !1050, file: !24, line: 629, type: !12)
!1058 = !DILocalVariable(name: "temp", scope: !1050, file: !24, line: 631, type: !78)
!1059 = !DILocalVariable(name: "hash_2_value", scope: !1050, file: !24, line: 631, type: !78)
!1060 = !DILocalVariable(name: "hash_value", scope: !1050, file: !24, line: 631, type: !78)
!1061 = !DILocalVariable(name: "delta2", scope: !1050, file: !24, line: 633, type: !78)
!1062 = !DILocalVariable(name: "cur_match", scope: !1050, file: !24, line: 634, type: !78)
!1063 = !DILocalVariable(name: "len_best", scope: !1050, file: !24, line: 639, type: !12)
!1064 = !DILocation(line: 0, scope: !1050)
!1065 = !DILocation(line: 629, column: 2, scope: !1050)
!1066 = !DILocation(line: 0, scope: !113, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 629, column: 2, scope: !1050)
!1068 = !DILocation(line: 232, column: 23, scope: !113, inlinedAt: !1067)
!1069 = !DILocation(line: 629, column: 2, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1050, file: !24, line: 629, column: 2)
!1071 = !DILocation(line: 629, column: 2, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1070, file: !24, line: 629, column: 2)
!1073 = !DILocation(line: 0, scope: !185, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 629, column: 2, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !24, line: 629, column: 2)
!1076 = !DILocation(line: 178, column: 8, scope: !185, inlinedAt: !1074)
!1077 = !DILocation(line: 178, column: 2, scope: !185, inlinedAt: !1074)
!1078 = !DILocation(line: 180, column: 8, scope: !185, inlinedAt: !1074)
!1079 = !DILocation(line: 180, column: 2, scope: !185, inlinedAt: !1074)
!1080 = !DILocation(line: 629, column: 2, scope: !1075)
!1081 = !DILocation(line: 0, scope: !131, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 629, column: 2, scope: !1050)
!1083 = !DILocation(line: 224, column: 20, scope: !131, inlinedAt: !1082)
!1084 = !DILocation(line: 631, column: 2, scope: !1050)
!1085 = !DILocation(line: 633, column: 36, scope: !1050)
!1086 = !DILocation(line: 633, column: 32, scope: !1050)
!1087 = !DILocation(line: 633, column: 30, scope: !1050)
!1088 = !DILocation(line: 634, column: 54, scope: !1050)
!1089 = !DILocation(line: 634, column: 29, scope: !1050)
!1090 = !DILocation(line: 636, column: 25, scope: !1050)
!1091 = !DILocation(line: 637, column: 41, scope: !1050)
!1092 = !DILocation(line: 641, column: 19, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1050, file: !24, line: 641, column: 6)
!1094 = !DILocation(line: 641, column: 13, scope: !1093)
!1095 = !DILocation(line: 641, column: 31, scope: !1093)
!1096 = !DILocation(line: 641, column: 40, scope: !1093)
!1097 = !DILocation(line: 641, column: 34, scope: !1093)
!1098 = !DILocation(line: 641, column: 53, scope: !1093)
!1099 = !DILocation(line: 641, column: 50, scope: !1093)
!1100 = !DILocation(line: 641, column: 6, scope: !1050)
!1101 = !DILocation(line: 642, column: 20, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !24, line: 642, column: 3)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !24, line: 642, column: 3)
!1104 = distinct !DILexicalBlock(scope: !1093, file: !24, line: 641, column: 59)
!1105 = !DILocation(line: 642, column: 3, scope: !1103)
!1106 = !DILocation(line: 643, column: 14, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !24, line: 643, column: 8)
!1108 = !DILocation(line: 643, column: 25, scope: !1107)
!1109 = !DILocation(line: 643, column: 8, scope: !1107)
!1110 = !DILocation(line: 643, column: 38, scope: !1107)
!1111 = !DILocation(line: 643, column: 35, scope: !1107)
!1112 = !DILocation(line: 643, column: 8, scope: !1102)
!1113 = !DILocation(line: 642, column: 34, scope: !1102)
!1114 = distinct !{!1114, !1105, !1115, !153, !154}
!1115 = !DILocation(line: 644, column: 5, scope: !1103)
!1116 = !DILocation(line: 646, column: 18, scope: !1104)
!1117 = !DILocation(line: 647, column: 28, scope: !1104)
!1118 = !DILocation(line: 647, column: 14, scope: !1104)
!1119 = !DILocation(line: 647, column: 19, scope: !1104)
!1120 = !DILocation(line: 651, column: 4, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !24, line: 651, column: 4)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !24, line: 650, column: 30)
!1123 = distinct !DILexicalBlock(scope: !1104, file: !24, line: 650, column: 7)
!1124 = !DILocation(line: 0, scope: !935, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 651, column: 4, scope: !1121)
!1126 = !DILocation(line: 531, column: 37, scope: !935, inlinedAt: !1125)
!1127 = !DILocation(line: 531, column: 23, scope: !935, inlinedAt: !1125)
!1128 = !DILocation(line: 531, column: 43, scope: !935, inlinedAt: !1125)
!1129 = !DILocation(line: 538, column: 30, scope: !951, inlinedAt: !1125)
!1130 = !DILocation(line: 0, scope: !951, inlinedAt: !1125)
!1131 = !DILocation(line: 539, column: 15, scope: !963, inlinedAt: !1125)
!1132 = !DILocation(line: 539, column: 20, scope: !963, inlinedAt: !1125)
!1133 = !DILocation(line: 532, column: 12, scope: !935, inlinedAt: !1125)
!1134 = !DILocation(line: 531, column: 12, scope: !935, inlinedAt: !1125)
!1135 = !DILocation(line: 540, column: 10, scope: !968, inlinedAt: !1125)
!1136 = !DILocation(line: 541, column: 10, scope: !968, inlinedAt: !1125)
!1137 = !DILocation(line: 542, column: 4, scope: !968, inlinedAt: !1125)
!1138 = !DILocation(line: 539, column: 12, scope: !963, inlinedAt: !1125)
!1139 = !DILocation(line: 545, column: 39, scope: !951, inlinedAt: !1125)
!1140 = !DILocation(line: 546, column: 14, scope: !951, inlinedAt: !1125)
!1141 = !DILocation(line: 546, column: 8, scope: !951, inlinedAt: !1125)
!1142 = !DILocation(line: 546, column: 5, scope: !951, inlinedAt: !1125)
!1143 = !DILocation(line: 547, column: 5, scope: !951, inlinedAt: !1125)
!1144 = !DILocation(line: 545, column: 24, scope: !951, inlinedAt: !1125)
!1145 = !DILocation(line: 548, column: 27, scope: !951, inlinedAt: !1125)
!1146 = !DILocation(line: 549, column: 18, scope: !951, inlinedAt: !1125)
!1147 = !DILocation(line: 551, column: 7, scope: !981, inlinedAt: !1125)
!1148 = !DILocation(line: 551, column: 18, scope: !981, inlinedAt: !1125)
!1149 = !DILocation(line: 551, column: 15, scope: !981, inlinedAt: !1125)
!1150 = !DILocation(line: 551, column: 7, scope: !951, inlinedAt: !1125)
!1151 = !DILocation(line: 552, column: 11, scope: !986, inlinedAt: !1125)
!1152 = !DILocation(line: 552, column: 17, scope: !986, inlinedAt: !1125)
!1153 = !DILocation(line: 552, column: 4, scope: !986, inlinedAt: !1125)
!1154 = !DILocation(line: 553, column: 9, scope: !990, inlinedAt: !1125)
!1155 = !DILocation(line: 553, column: 20, scope: !990, inlinedAt: !1125)
!1156 = !DILocation(line: 553, column: 17, scope: !990, inlinedAt: !1125)
!1157 = !DILocation(line: 553, column: 9, scope: !986, inlinedAt: !1125)
!1158 = distinct !{!1158, !1153, !1159, !153, !154}
!1159 = !DILocation(line: 554, column: 6, scope: !986, inlinedAt: !1125)
!1160 = !DILocation(line: 557, column: 13, scope: !997, inlinedAt: !1125)
!1161 = !DILocation(line: 557, column: 11, scope: !997, inlinedAt: !1125)
!1162 = !DILocation(line: 558, column: 13, scope: !997, inlinedAt: !1125)
!1163 = !DILocation(line: 558, column: 11, scope: !997, inlinedAt: !1125)
!1164 = !DILocation(line: 559, column: 5, scope: !997, inlinedAt: !1125)
!1165 = !DILocation(line: 563, column: 17, scope: !1004, inlinedAt: !1125)
!1166 = !DILocation(line: 563, column: 7, scope: !1004, inlinedAt: !1125)
!1167 = !DILocation(line: 563, column: 15, scope: !1004, inlinedAt: !1125)
!1168 = !DILocation(line: 563, column: 7, scope: !951, inlinedAt: !1125)
!1169 = !DILocation(line: 564, column: 10, scope: !1009, inlinedAt: !1125)
!1170 = !DILocation(line: 565, column: 16, scope: !1009, inlinedAt: !1125)
!1171 = !DILocation(line: 568, column: 3, scope: !1009, inlinedAt: !1125)
!1172 = !DILocation(line: 569, column: 10, scope: !1013, inlinedAt: !1125)
!1173 = !DILocation(line: 0, scope: !1004, inlinedAt: !1125)
!1174 = distinct !{!1174, !1175, !1176, !154}
!1175 = !DILocation(line: 537, column: 2, scope: !935, inlinedAt: !1125)
!1176 = !DILocation(line: 574, column: 2, scope: !935, inlinedAt: !1125)
!1177 = !DILocation(line: 0, scope: !248, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 651, column: 4, scope: !1121)
!1179 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !1178)
!1180 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !1178)
!1181 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !1178)
!1182 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !1178)
!1183 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !1178)
!1184 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !1178)
!1185 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !1178)
!1186 = !DILocation(line: 0, scope: !262, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1178)
!1188 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !1187)
!1189 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !1187)
!1190 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !1187)
!1191 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !1187)
!1192 = !DILocation(line: 0, scope: !268, inlinedAt: !1187)
!1193 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !1187)
!1194 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !1187)
!1195 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !1187)
!1196 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !1187)
!1197 = !DILocation(line: 0, scope: !282, inlinedAt: !1187)
!1198 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !1187)
!1199 = distinct !{!1199, !1194, !1200, !153, !154}
!1200 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !1187)
!1201 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !1187)
!1202 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1178)
!1203 = !DILocation(line: 639, column: 11, scope: !1050)
!1204 = !DILocation(line: 656, column: 2, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1050, file: !24, line: 656, column: 2)
!1206 = !DILocation(line: 0, scope: !778, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 656, column: 2, scope: !1205)
!1208 = !DILocation(line: 465, column: 37, scope: !778, inlinedAt: !1207)
!1209 = !DILocation(line: 465, column: 23, scope: !778, inlinedAt: !1207)
!1210 = !DILocation(line: 465, column: 43, scope: !778, inlinedAt: !1207)
!1211 = !DILocation(line: 472, column: 30, scope: !794, inlinedAt: !1207)
!1212 = !DILocation(line: 0, scope: !794, inlinedAt: !1207)
!1213 = !DILocation(line: 473, column: 15, scope: !806, inlinedAt: !1207)
!1214 = !DILocation(line: 473, column: 20, scope: !806, inlinedAt: !1207)
!1215 = !DILocation(line: 471, column: 2, scope: !778, inlinedAt: !1207)
!1216 = !DILocation(line: 465, column: 12, scope: !778, inlinedAt: !1207)
!1217 = !DILocation(line: 466, column: 12, scope: !778, inlinedAt: !1207)
!1218 = !DILocation(line: 474, column: 10, scope: !812, inlinedAt: !1207)
!1219 = !DILocation(line: 475, column: 10, scope: !812, inlinedAt: !1207)
!1220 = !DILocation(line: 476, column: 4, scope: !812, inlinedAt: !1207)
!1221 = !DILocation(line: 473, column: 12, scope: !806, inlinedAt: !1207)
!1222 = !DILocation(line: 479, column: 45, scope: !794, inlinedAt: !1207)
!1223 = !DILocation(line: 480, column: 14, scope: !794, inlinedAt: !1207)
!1224 = !DILocation(line: 480, column: 8, scope: !794, inlinedAt: !1207)
!1225 = !DILocation(line: 480, column: 5, scope: !794, inlinedAt: !1207)
!1226 = !DILocation(line: 481, column: 5, scope: !794, inlinedAt: !1207)
!1227 = !DILocation(line: 479, column: 30, scope: !794, inlinedAt: !1207)
!1228 = !DILocation(line: 483, column: 33, scope: !794, inlinedAt: !1207)
!1229 = !DILocation(line: 484, column: 18, scope: !794, inlinedAt: !1207)
!1230 = !DILocation(line: 486, column: 7, scope: !825, inlinedAt: !1207)
!1231 = !DILocation(line: 486, column: 18, scope: !825, inlinedAt: !1207)
!1232 = !DILocation(line: 486, column: 15, scope: !825, inlinedAt: !1207)
!1233 = !DILocation(line: 486, column: 7, scope: !794, inlinedAt: !1207)
!1234 = !DILocation(line: 487, column: 11, scope: !830, inlinedAt: !1207)
!1235 = !DILocation(line: 487, column: 17, scope: !830, inlinedAt: !1207)
!1236 = !DILocation(line: 487, column: 4, scope: !830, inlinedAt: !1207)
!1237 = !DILocation(line: 488, column: 9, scope: !834, inlinedAt: !1207)
!1238 = !DILocation(line: 488, column: 20, scope: !834, inlinedAt: !1207)
!1239 = !DILocation(line: 488, column: 17, scope: !834, inlinedAt: !1207)
!1240 = !DILocation(line: 488, column: 9, scope: !830, inlinedAt: !1207)
!1241 = distinct !{!1241, !1236, !1242, !153, !154}
!1242 = !DILocation(line: 489, column: 6, scope: !830, inlinedAt: !1207)
!1243 = !DILocation(line: 491, column: 17, scope: !841, inlinedAt: !1207)
!1244 = !DILocation(line: 491, column: 8, scope: !830, inlinedAt: !1207)
!1245 = !DILocation(line: 493, column: 18, scope: !844, inlinedAt: !1207)
!1246 = !DILocation(line: 494, column: 27, scope: !844, inlinedAt: !1207)
!1247 = !DILocation(line: 494, column: 14, scope: !844, inlinedAt: !1207)
!1248 = !DILocation(line: 494, column: 19, scope: !844, inlinedAt: !1207)
!1249 = !DILocation(line: 495, column: 5, scope: !844, inlinedAt: !1207)
!1250 = !DILocation(line: 497, column: 9, scope: !844, inlinedAt: !1207)
!1251 = !DILocation(line: 498, column: 14, scope: !851, inlinedAt: !1207)
!1252 = !DILocation(line: 498, column: 12, scope: !851, inlinedAt: !1207)
!1253 = !DILocation(line: 499, column: 14, scope: !851, inlinedAt: !1207)
!1254 = !DILocation(line: 499, column: 12, scope: !851, inlinedAt: !1207)
!1255 = !DILocation(line: 500, column: 6, scope: !851, inlinedAt: !1207)
!1256 = !DILocation(line: 505, column: 7, scope: !858, inlinedAt: !1207)
!1257 = !DILocation(line: 505, column: 17, scope: !858, inlinedAt: !1207)
!1258 = !DILocation(line: 505, column: 15, scope: !858, inlinedAt: !1207)
!1259 = !DILocation(line: 505, column: 7, scope: !794, inlinedAt: !1207)
!1260 = !DILocation(line: 506, column: 10, scope: !863, inlinedAt: !1207)
!1261 = !DILocation(line: 507, column: 16, scope: !863, inlinedAt: !1207)
!1262 = !DILocation(line: 510, column: 3, scope: !863, inlinedAt: !1207)
!1263 = !DILocation(line: 511, column: 10, scope: !867, inlinedAt: !1207)
!1264 = !DILocation(line: 0, scope: !858, inlinedAt: !1207)
!1265 = distinct !{!1265, !1215, !1266, !154}
!1266 = !DILocation(line: 516, column: 2, scope: !778, inlinedAt: !1207)
!1267 = !DILocation(line: 0, scope: !248, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 656, column: 2, scope: !1205)
!1269 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !1268)
!1270 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !1268)
!1271 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !1268)
!1272 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !1268)
!1273 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !1268)
!1274 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !1268)
!1275 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !1268)
!1276 = !DILocation(line: 0, scope: !262, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1268)
!1278 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !1277)
!1279 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !1277)
!1280 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !1277)
!1281 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !1277)
!1282 = !DILocation(line: 0, scope: !268, inlinedAt: !1277)
!1283 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !1277)
!1284 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !1277)
!1285 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !1277)
!1286 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !1277)
!1287 = !DILocation(line: 0, scope: !282, inlinedAt: !1277)
!1288 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !1277)
!1289 = distinct !{!1289, !1284, !1290, !153, !154}
!1290 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !1277)
!1291 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !1277)
!1292 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1268)
!1293 = !DILocation(line: 657, column: 1, scope: !1050)
!1294 = distinct !DISubprogram(name: "lzma_mf_bt3_skip", scope: !24, file: !24, line: 661, type: !58, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1295)
!1295 = !{!1296, !1297, !1298, !1300, !1301, !1302, !1303, !1304, !1305}
!1296 = !DILocalVariable(name: "mf", arg: 1, scope: !1294, file: !24, line: 661, type: !27)
!1297 = !DILocalVariable(name: "amount", arg: 2, scope: !1294, file: !24, line: 661, type: !12)
!1298 = !DILocalVariable(name: "len_limit", scope: !1299, file: !24, line: 664, type: !12)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !24, line: 663, column: 5)
!1300 = !DILocalVariable(name: "cur", scope: !1299, file: !24, line: 664, type: !86)
!1301 = !DILocalVariable(name: "pos", scope: !1299, file: !24, line: 664, type: !78)
!1302 = !DILocalVariable(name: "temp", scope: !1299, file: !24, line: 666, type: !78)
!1303 = !DILocalVariable(name: "hash_2_value", scope: !1299, file: !24, line: 666, type: !78)
!1304 = !DILocalVariable(name: "hash_value", scope: !1299, file: !24, line: 666, type: !78)
!1305 = !DILocalVariable(name: "cur_match", scope: !1299, file: !24, line: 668, type: !78)
!1306 = !DILocation(line: 0, scope: !1294)
!1307 = !DILocation(line: 663, column: 2, scope: !1294)
!1308 = !DILocation(line: 664, column: 3, scope: !1299)
!1309 = !DILocation(line: 0, scope: !113, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 664, column: 3, scope: !1299)
!1311 = !DILocation(line: 232, column: 23, scope: !113, inlinedAt: !1310)
!1312 = !DILocation(line: 0, scope: !1299)
!1313 = !DILocation(line: 664, column: 3, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1299, file: !24, line: 664, column: 3)
!1315 = !DILocation(line: 664, column: 3, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1314, file: !24, line: 664, column: 3)
!1317 = !DILocation(line: 0, scope: !185, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 664, column: 3, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !24, line: 664, column: 3)
!1320 = !DILocation(line: 178, column: 2, scope: !185, inlinedAt: !1318)
!1321 = !DILocation(line: 180, column: 2, scope: !185, inlinedAt: !1318)
!1322 = !DILocation(line: 664, column: 3, scope: !1319)
!1323 = !DILocation(line: 0, scope: !131, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 664, column: 3, scope: !1299)
!1325 = !DILocation(line: 224, column: 20, scope: !131, inlinedAt: !1324)
!1326 = !DILocation(line: 666, column: 3, scope: !1299)
!1327 = !DILocation(line: 669, column: 11, scope: !1299)
!1328 = !DILocation(line: 669, column: 32, scope: !1299)
!1329 = !DILocation(line: 669, column: 7, scope: !1299)
!1330 = !DILocation(line: 671, column: 3, scope: !1299)
!1331 = !DILocation(line: 671, column: 26, scope: !1299)
!1332 = !DILocation(line: 672, column: 42, scope: !1299)
!1333 = !DILocation(line: 674, column: 3, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1299, file: !24, line: 674, column: 3)
!1335 = !DILocation(line: 0, scope: !935, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 674, column: 3, scope: !1334)
!1337 = !DILocation(line: 531, column: 37, scope: !935, inlinedAt: !1336)
!1338 = !DILocation(line: 531, column: 23, scope: !935, inlinedAt: !1336)
!1339 = !DILocation(line: 531, column: 43, scope: !935, inlinedAt: !1336)
!1340 = !DILocation(line: 538, column: 30, scope: !951, inlinedAt: !1336)
!1341 = !DILocation(line: 0, scope: !951, inlinedAt: !1336)
!1342 = !DILocation(line: 539, column: 15, scope: !963, inlinedAt: !1336)
!1343 = !DILocation(line: 539, column: 20, scope: !963, inlinedAt: !1336)
!1344 = !DILocation(line: 532, column: 12, scope: !935, inlinedAt: !1336)
!1345 = !DILocation(line: 531, column: 12, scope: !935, inlinedAt: !1336)
!1346 = !DILocation(line: 540, column: 10, scope: !968, inlinedAt: !1336)
!1347 = !DILocation(line: 541, column: 10, scope: !968, inlinedAt: !1336)
!1348 = !DILocation(line: 542, column: 4, scope: !968, inlinedAt: !1336)
!1349 = !DILocation(line: 539, column: 12, scope: !963, inlinedAt: !1336)
!1350 = !DILocation(line: 545, column: 39, scope: !951, inlinedAt: !1336)
!1351 = !DILocation(line: 546, column: 14, scope: !951, inlinedAt: !1336)
!1352 = !DILocation(line: 546, column: 8, scope: !951, inlinedAt: !1336)
!1353 = !DILocation(line: 546, column: 5, scope: !951, inlinedAt: !1336)
!1354 = !DILocation(line: 547, column: 5, scope: !951, inlinedAt: !1336)
!1355 = !DILocation(line: 545, column: 24, scope: !951, inlinedAt: !1336)
!1356 = !DILocation(line: 548, column: 27, scope: !951, inlinedAt: !1336)
!1357 = !DILocation(line: 549, column: 18, scope: !951, inlinedAt: !1336)
!1358 = !DILocation(line: 551, column: 7, scope: !981, inlinedAt: !1336)
!1359 = !DILocation(line: 551, column: 18, scope: !981, inlinedAt: !1336)
!1360 = !DILocation(line: 551, column: 15, scope: !981, inlinedAt: !1336)
!1361 = !DILocation(line: 551, column: 7, scope: !951, inlinedAt: !1336)
!1362 = !DILocation(line: 552, column: 11, scope: !986, inlinedAt: !1336)
!1363 = !DILocation(line: 552, column: 17, scope: !986, inlinedAt: !1336)
!1364 = !DILocation(line: 552, column: 4, scope: !986, inlinedAt: !1336)
!1365 = !DILocation(line: 553, column: 9, scope: !990, inlinedAt: !1336)
!1366 = !DILocation(line: 553, column: 20, scope: !990, inlinedAt: !1336)
!1367 = !DILocation(line: 553, column: 17, scope: !990, inlinedAt: !1336)
!1368 = !DILocation(line: 553, column: 9, scope: !986, inlinedAt: !1336)
!1369 = distinct !{!1369, !1364, !1370, !153, !154}
!1370 = !DILocation(line: 554, column: 6, scope: !986, inlinedAt: !1336)
!1371 = !DILocation(line: 557, column: 13, scope: !997, inlinedAt: !1336)
!1372 = !DILocation(line: 557, column: 11, scope: !997, inlinedAt: !1336)
!1373 = !DILocation(line: 558, column: 13, scope: !997, inlinedAt: !1336)
!1374 = !DILocation(line: 558, column: 11, scope: !997, inlinedAt: !1336)
!1375 = !DILocation(line: 559, column: 5, scope: !997, inlinedAt: !1336)
!1376 = !DILocation(line: 563, column: 17, scope: !1004, inlinedAt: !1336)
!1377 = !DILocation(line: 563, column: 7, scope: !1004, inlinedAt: !1336)
!1378 = !DILocation(line: 563, column: 15, scope: !1004, inlinedAt: !1336)
!1379 = !DILocation(line: 563, column: 7, scope: !951, inlinedAt: !1336)
!1380 = !DILocation(line: 564, column: 10, scope: !1009, inlinedAt: !1336)
!1381 = !DILocation(line: 565, column: 16, scope: !1009, inlinedAt: !1336)
!1382 = !DILocation(line: 568, column: 3, scope: !1009, inlinedAt: !1336)
!1383 = !DILocation(line: 569, column: 10, scope: !1013, inlinedAt: !1336)
!1384 = !DILocation(line: 0, scope: !1004, inlinedAt: !1336)
!1385 = distinct !{!1385, !1386, !1387, !154}
!1386 = !DILocation(line: 537, column: 2, scope: !935, inlinedAt: !1336)
!1387 = !DILocation(line: 574, column: 2, scope: !935, inlinedAt: !1336)
!1388 = !DILocation(line: 0, scope: !248, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 674, column: 3, scope: !1334)
!1390 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !1389)
!1391 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !1389)
!1392 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !1389)
!1393 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !1389)
!1394 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !1389)
!1395 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !1389)
!1396 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !1389)
!1397 = !DILocation(line: 0, scope: !262, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1389)
!1399 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !1398)
!1400 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !1398)
!1401 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !1398)
!1402 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !1398)
!1403 = !DILocation(line: 0, scope: !268, inlinedAt: !1398)
!1404 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !1398)
!1405 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !1398)
!1406 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !1398)
!1407 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !1398)
!1408 = !DILocation(line: 0, scope: !282, inlinedAt: !1398)
!1409 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !1398)
!1410 = distinct !{!1410, !1405, !1411, !153, !154}
!1411 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !1398)
!1412 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !1398)
!1413 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1389)
!1414 = !DILocation(line: 676, column: 11, scope: !1294)
!1415 = !DILocation(line: 676, column: 20, scope: !1294)
!1416 = !DILocation(line: 676, column: 2, scope: !1299)
!1417 = distinct !{!1417, !1307, !1418, !153, !154}
!1418 = !DILocation(line: 676, column: 24, scope: !1294)
!1419 = !DILocation(line: 677, column: 1, scope: !1294)
!1420 = distinct !DISubprogram(name: "lzma_mf_bt4_find", scope: !24, file: !24, line: 683, type: !48, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435}
!1422 = !DILocalVariable(name: "mf", arg: 1, scope: !1420, file: !24, line: 683, type: !27)
!1423 = !DILocalVariable(name: "matches", arg: 2, scope: !1420, file: !24, line: 683, type: !50)
!1424 = !DILocalVariable(name: "len_limit", scope: !1420, file: !24, line: 685, type: !12)
!1425 = !DILocalVariable(name: "cur", scope: !1420, file: !24, line: 685, type: !86)
!1426 = !DILocalVariable(name: "pos", scope: !1420, file: !24, line: 685, type: !78)
!1427 = !DILocalVariable(name: "matches_count", scope: !1420, file: !24, line: 685, type: !12)
!1428 = !DILocalVariable(name: "temp", scope: !1420, file: !24, line: 687, type: !78)
!1429 = !DILocalVariable(name: "hash_2_value", scope: !1420, file: !24, line: 687, type: !78)
!1430 = !DILocalVariable(name: "hash_3_value", scope: !1420, file: !24, line: 687, type: !78)
!1431 = !DILocalVariable(name: "hash_value", scope: !1420, file: !24, line: 687, type: !78)
!1432 = !DILocalVariable(name: "delta2", scope: !1420, file: !24, line: 689, type: !12)
!1433 = !DILocalVariable(name: "delta3", scope: !1420, file: !24, line: 690, type: !78)
!1434 = !DILocalVariable(name: "cur_match", scope: !1420, file: !24, line: 692, type: !78)
!1435 = !DILocalVariable(name: "len_best", scope: !1420, file: !24, line: 698, type: !12)
!1436 = !DILocation(line: 0, scope: !1420)
!1437 = !DILocation(line: 685, column: 2, scope: !1420)
!1438 = !DILocation(line: 0, scope: !113, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 685, column: 2, scope: !1420)
!1440 = !DILocation(line: 232, column: 23, scope: !113, inlinedAt: !1439)
!1441 = !DILocation(line: 685, column: 2, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1420, file: !24, line: 685, column: 2)
!1443 = !DILocation(line: 685, column: 2, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1442, file: !24, line: 685, column: 2)
!1445 = !DILocation(line: 0, scope: !185, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 685, column: 2, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !24, line: 685, column: 2)
!1448 = !DILocation(line: 178, column: 8, scope: !185, inlinedAt: !1446)
!1449 = !DILocation(line: 178, column: 2, scope: !185, inlinedAt: !1446)
!1450 = !DILocation(line: 180, column: 8, scope: !185, inlinedAt: !1446)
!1451 = !DILocation(line: 180, column: 2, scope: !185, inlinedAt: !1446)
!1452 = !DILocation(line: 685, column: 2, scope: !1447)
!1453 = !DILocation(line: 0, scope: !131, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 685, column: 2, scope: !1420)
!1455 = !DILocation(line: 224, column: 20, scope: !131, inlinedAt: !1454)
!1456 = !DILocation(line: 687, column: 2, scope: !1420)
!1457 = !DILocation(line: 689, column: 30, scope: !1420)
!1458 = !DILocation(line: 689, column: 26, scope: !1420)
!1459 = !DILocation(line: 689, column: 24, scope: !1420)
!1460 = !DILocation(line: 691, column: 37, scope: !1420)
!1461 = !DILocation(line: 691, column: 12, scope: !1420)
!1462 = !DILocation(line: 691, column: 10, scope: !1420)
!1463 = !DILocation(line: 692, column: 54, scope: !1420)
!1464 = !DILocation(line: 692, column: 29, scope: !1420)
!1465 = !DILocation(line: 694, column: 25, scope: !1420)
!1466 = !DILocation(line: 695, column: 43, scope: !1420)
!1467 = !DILocation(line: 696, column: 41, scope: !1420)
!1468 = !DILocation(line: 700, column: 19, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1420, file: !24, line: 700, column: 6)
!1470 = !DILocation(line: 700, column: 13, scope: !1469)
!1471 = !DILocation(line: 700, column: 31, scope: !1469)
!1472 = !DILocation(line: 700, column: 40, scope: !1469)
!1473 = !DILocation(line: 700, column: 34, scope: !1469)
!1474 = !DILocation(line: 700, column: 53, scope: !1469)
!1475 = !DILocation(line: 700, column: 50, scope: !1469)
!1476 = !DILocation(line: 700, column: 6, scope: !1420)
!1477 = !DILocation(line: 702, column: 18, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1469, file: !24, line: 700, column: 59)
!1479 = !DILocation(line: 703, column: 28, scope: !1478)
!1480 = !DILocation(line: 703, column: 14, scope: !1478)
!1481 = !DILocation(line: 703, column: 19, scope: !1478)
!1482 = !DILocation(line: 705, column: 2, scope: !1478)
!1483 = !DILocation(line: 707, column: 13, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1420, file: !24, line: 707, column: 6)
!1485 = !DILocation(line: 707, column: 23, scope: !1484)
!1486 = !DILocation(line: 708, column: 13, scope: !1484)
!1487 = !DILocation(line: 708, column: 7, scope: !1484)
!1488 = !DILocation(line: 708, column: 26, scope: !1484)
!1489 = !DILocation(line: 708, column: 23, scope: !1484)
!1490 = !DILocation(line: 707, column: 6, scope: !1420)
!1491 = !DILocation(line: 710, column: 42, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1484, file: !24, line: 708, column: 32)
!1493 = !DILocation(line: 710, column: 24, scope: !1492)
!1494 = !DILocation(line: 710, column: 3, scope: !1492)
!1495 = !DILocation(line: 710, column: 28, scope: !1492)
!1496 = !DILocation(line: 710, column: 33, scope: !1492)
!1497 = !DILocation(line: 714, column: 6, scope: !1420)
!1498 = !DILocation(line: 715, column: 20, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !24, line: 715, column: 3)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !24, line: 715, column: 3)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !24, line: 714, column: 26)
!1502 = distinct !DILexicalBlock(scope: !1420, file: !24, line: 714, column: 6)
!1503 = !DILocation(line: 715, column: 3, scope: !1500)
!1504 = !DILocation(line: 716, column: 14, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1499, file: !24, line: 716, column: 8)
!1506 = !DILocation(line: 716, column: 25, scope: !1505)
!1507 = !DILocation(line: 716, column: 8, scope: !1505)
!1508 = !DILocation(line: 716, column: 38, scope: !1505)
!1509 = !DILocation(line: 716, column: 35, scope: !1505)
!1510 = !DILocation(line: 716, column: 8, scope: !1499)
!1511 = !DILocation(line: 715, column: 34, scope: !1499)
!1512 = distinct !{!1512, !1503, !1513, !153, !154}
!1513 = !DILocation(line: 717, column: 5, scope: !1500)
!1514 = !DILocation(line: 719, column: 25, scope: !1501)
!1515 = !DILocation(line: 719, column: 3, scope: !1501)
!1516 = !DILocation(line: 719, column: 34, scope: !1501)
!1517 = !DILocation(line: 722, column: 4, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !24, line: 722, column: 4)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !24, line: 721, column: 30)
!1520 = distinct !DILexicalBlock(scope: !1501, file: !24, line: 721, column: 7)
!1521 = !DILocation(line: 0, scope: !935, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 722, column: 4, scope: !1518)
!1523 = !DILocation(line: 531, column: 37, scope: !935, inlinedAt: !1522)
!1524 = !DILocation(line: 531, column: 23, scope: !935, inlinedAt: !1522)
!1525 = !DILocation(line: 531, column: 43, scope: !935, inlinedAt: !1522)
!1526 = !DILocation(line: 538, column: 30, scope: !951, inlinedAt: !1522)
!1527 = !DILocation(line: 0, scope: !951, inlinedAt: !1522)
!1528 = !DILocation(line: 539, column: 15, scope: !963, inlinedAt: !1522)
!1529 = !DILocation(line: 539, column: 20, scope: !963, inlinedAt: !1522)
!1530 = !DILocation(line: 532, column: 12, scope: !935, inlinedAt: !1522)
!1531 = !DILocation(line: 531, column: 12, scope: !935, inlinedAt: !1522)
!1532 = !DILocation(line: 540, column: 10, scope: !968, inlinedAt: !1522)
!1533 = !DILocation(line: 541, column: 10, scope: !968, inlinedAt: !1522)
!1534 = !DILocation(line: 542, column: 4, scope: !968, inlinedAt: !1522)
!1535 = !DILocation(line: 539, column: 12, scope: !963, inlinedAt: !1522)
!1536 = !DILocation(line: 545, column: 39, scope: !951, inlinedAt: !1522)
!1537 = !DILocation(line: 546, column: 14, scope: !951, inlinedAt: !1522)
!1538 = !DILocation(line: 546, column: 8, scope: !951, inlinedAt: !1522)
!1539 = !DILocation(line: 546, column: 5, scope: !951, inlinedAt: !1522)
!1540 = !DILocation(line: 547, column: 5, scope: !951, inlinedAt: !1522)
!1541 = !DILocation(line: 545, column: 24, scope: !951, inlinedAt: !1522)
!1542 = !DILocation(line: 548, column: 27, scope: !951, inlinedAt: !1522)
!1543 = !DILocation(line: 549, column: 18, scope: !951, inlinedAt: !1522)
!1544 = !DILocation(line: 551, column: 7, scope: !981, inlinedAt: !1522)
!1545 = !DILocation(line: 551, column: 18, scope: !981, inlinedAt: !1522)
!1546 = !DILocation(line: 551, column: 15, scope: !981, inlinedAt: !1522)
!1547 = !DILocation(line: 551, column: 7, scope: !951, inlinedAt: !1522)
!1548 = !DILocation(line: 552, column: 11, scope: !986, inlinedAt: !1522)
!1549 = !DILocation(line: 552, column: 17, scope: !986, inlinedAt: !1522)
!1550 = !DILocation(line: 552, column: 4, scope: !986, inlinedAt: !1522)
!1551 = !DILocation(line: 553, column: 9, scope: !990, inlinedAt: !1522)
!1552 = !DILocation(line: 553, column: 20, scope: !990, inlinedAt: !1522)
!1553 = !DILocation(line: 553, column: 17, scope: !990, inlinedAt: !1522)
!1554 = !DILocation(line: 553, column: 9, scope: !986, inlinedAt: !1522)
!1555 = distinct !{!1555, !1550, !1556, !153, !154}
!1556 = !DILocation(line: 554, column: 6, scope: !986, inlinedAt: !1522)
!1557 = !DILocation(line: 557, column: 13, scope: !997, inlinedAt: !1522)
!1558 = !DILocation(line: 557, column: 11, scope: !997, inlinedAt: !1522)
!1559 = !DILocation(line: 558, column: 13, scope: !997, inlinedAt: !1522)
!1560 = !DILocation(line: 558, column: 11, scope: !997, inlinedAt: !1522)
!1561 = !DILocation(line: 559, column: 5, scope: !997, inlinedAt: !1522)
!1562 = !DILocation(line: 563, column: 17, scope: !1004, inlinedAt: !1522)
!1563 = !DILocation(line: 563, column: 7, scope: !1004, inlinedAt: !1522)
!1564 = !DILocation(line: 563, column: 15, scope: !1004, inlinedAt: !1522)
!1565 = !DILocation(line: 563, column: 7, scope: !951, inlinedAt: !1522)
!1566 = !DILocation(line: 564, column: 10, scope: !1009, inlinedAt: !1522)
!1567 = !DILocation(line: 565, column: 16, scope: !1009, inlinedAt: !1522)
!1568 = !DILocation(line: 568, column: 3, scope: !1009, inlinedAt: !1522)
!1569 = !DILocation(line: 569, column: 10, scope: !1013, inlinedAt: !1522)
!1570 = !DILocation(line: 0, scope: !1004, inlinedAt: !1522)
!1571 = distinct !{!1571, !1572, !1573, !154}
!1572 = !DILocation(line: 537, column: 2, scope: !935, inlinedAt: !1522)
!1573 = !DILocation(line: 574, column: 2, scope: !935, inlinedAt: !1522)
!1574 = !DILocation(line: 0, scope: !248, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 722, column: 4, scope: !1518)
!1576 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !1575)
!1577 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !1575)
!1578 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !1575)
!1579 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !1575)
!1580 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !1575)
!1581 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !1575)
!1582 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !1575)
!1583 = !DILocation(line: 0, scope: !262, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1575)
!1585 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !1584)
!1586 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !1584)
!1587 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !1584)
!1588 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !1584)
!1589 = !DILocation(line: 0, scope: !268, inlinedAt: !1584)
!1590 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !1584)
!1591 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !1584)
!1592 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !1584)
!1593 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !1584)
!1594 = !DILocation(line: 0, scope: !282, inlinedAt: !1584)
!1595 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !1584)
!1596 = distinct !{!1596, !1591, !1597, !153, !154}
!1597 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !1584)
!1598 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !1584)
!1599 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1575)
!1600 = !DILocation(line: 709, column: 12, scope: !1492)
!1601 = !DILocation(line: 730, column: 2, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1420, file: !24, line: 730, column: 2)
!1603 = !DILocation(line: 0, scope: !778, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 730, column: 2, scope: !1602)
!1605 = !DILocation(line: 465, column: 37, scope: !778, inlinedAt: !1604)
!1606 = !DILocation(line: 465, column: 23, scope: !778, inlinedAt: !1604)
!1607 = !DILocation(line: 465, column: 43, scope: !778, inlinedAt: !1604)
!1608 = !DILocation(line: 472, column: 30, scope: !794, inlinedAt: !1604)
!1609 = !DILocation(line: 0, scope: !794, inlinedAt: !1604)
!1610 = !DILocation(line: 473, column: 15, scope: !806, inlinedAt: !1604)
!1611 = !DILocation(line: 473, column: 20, scope: !806, inlinedAt: !1604)
!1612 = !DILocation(line: 727, column: 6, scope: !1420)
!1613 = !DILocation(line: 471, column: 2, scope: !778, inlinedAt: !1604)
!1614 = !DILocation(line: 465, column: 12, scope: !778, inlinedAt: !1604)
!1615 = !DILocation(line: 466, column: 12, scope: !778, inlinedAt: !1604)
!1616 = !DILocation(line: 474, column: 10, scope: !812, inlinedAt: !1604)
!1617 = !DILocation(line: 475, column: 10, scope: !812, inlinedAt: !1604)
!1618 = !DILocation(line: 476, column: 4, scope: !812, inlinedAt: !1604)
!1619 = !DILocation(line: 473, column: 12, scope: !806, inlinedAt: !1604)
!1620 = !DILocation(line: 479, column: 45, scope: !794, inlinedAt: !1604)
!1621 = !DILocation(line: 480, column: 14, scope: !794, inlinedAt: !1604)
!1622 = !DILocation(line: 480, column: 8, scope: !794, inlinedAt: !1604)
!1623 = !DILocation(line: 480, column: 5, scope: !794, inlinedAt: !1604)
!1624 = !DILocation(line: 481, column: 5, scope: !794, inlinedAt: !1604)
!1625 = !DILocation(line: 479, column: 30, scope: !794, inlinedAt: !1604)
!1626 = !DILocation(line: 483, column: 33, scope: !794, inlinedAt: !1604)
!1627 = !DILocation(line: 484, column: 18, scope: !794, inlinedAt: !1604)
!1628 = !DILocation(line: 486, column: 7, scope: !825, inlinedAt: !1604)
!1629 = !DILocation(line: 486, column: 18, scope: !825, inlinedAt: !1604)
!1630 = !DILocation(line: 486, column: 15, scope: !825, inlinedAt: !1604)
!1631 = !DILocation(line: 486, column: 7, scope: !794, inlinedAt: !1604)
!1632 = !DILocation(line: 487, column: 11, scope: !830, inlinedAt: !1604)
!1633 = !DILocation(line: 487, column: 17, scope: !830, inlinedAt: !1604)
!1634 = !DILocation(line: 487, column: 4, scope: !830, inlinedAt: !1604)
!1635 = !DILocation(line: 488, column: 9, scope: !834, inlinedAt: !1604)
!1636 = !DILocation(line: 488, column: 20, scope: !834, inlinedAt: !1604)
!1637 = !DILocation(line: 488, column: 17, scope: !834, inlinedAt: !1604)
!1638 = !DILocation(line: 488, column: 9, scope: !830, inlinedAt: !1604)
!1639 = distinct !{!1639, !1634, !1640, !153, !154}
!1640 = !DILocation(line: 489, column: 6, scope: !830, inlinedAt: !1604)
!1641 = !DILocation(line: 491, column: 17, scope: !841, inlinedAt: !1604)
!1642 = !DILocation(line: 491, column: 8, scope: !830, inlinedAt: !1604)
!1643 = !DILocation(line: 493, column: 18, scope: !844, inlinedAt: !1604)
!1644 = !DILocation(line: 494, column: 27, scope: !844, inlinedAt: !1604)
!1645 = !DILocation(line: 494, column: 14, scope: !844, inlinedAt: !1604)
!1646 = !DILocation(line: 494, column: 19, scope: !844, inlinedAt: !1604)
!1647 = !DILocation(line: 495, column: 5, scope: !844, inlinedAt: !1604)
!1648 = !DILocation(line: 497, column: 9, scope: !844, inlinedAt: !1604)
!1649 = !DILocation(line: 498, column: 14, scope: !851, inlinedAt: !1604)
!1650 = !DILocation(line: 498, column: 12, scope: !851, inlinedAt: !1604)
!1651 = !DILocation(line: 499, column: 14, scope: !851, inlinedAt: !1604)
!1652 = !DILocation(line: 499, column: 12, scope: !851, inlinedAt: !1604)
!1653 = !DILocation(line: 500, column: 6, scope: !851, inlinedAt: !1604)
!1654 = !DILocation(line: 505, column: 7, scope: !858, inlinedAt: !1604)
!1655 = !DILocation(line: 505, column: 17, scope: !858, inlinedAt: !1604)
!1656 = !DILocation(line: 505, column: 15, scope: !858, inlinedAt: !1604)
!1657 = !DILocation(line: 505, column: 7, scope: !794, inlinedAt: !1604)
!1658 = !DILocation(line: 506, column: 10, scope: !863, inlinedAt: !1604)
!1659 = !DILocation(line: 507, column: 16, scope: !863, inlinedAt: !1604)
!1660 = !DILocation(line: 510, column: 3, scope: !863, inlinedAt: !1604)
!1661 = !DILocation(line: 511, column: 10, scope: !867, inlinedAt: !1604)
!1662 = !DILocation(line: 0, scope: !858, inlinedAt: !1604)
!1663 = distinct !{!1663, !1613, !1664, !154}
!1664 = !DILocation(line: 516, column: 2, scope: !778, inlinedAt: !1604)
!1665 = !DILocation(line: 0, scope: !248, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 730, column: 2, scope: !1602)
!1667 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !1666)
!1668 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !1666)
!1669 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !1666)
!1670 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !1666)
!1671 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !1666)
!1672 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !1666)
!1673 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !1666)
!1674 = !DILocation(line: 0, scope: !262, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1666)
!1676 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !1675)
!1677 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !1675)
!1678 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !1675)
!1679 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !1675)
!1680 = !DILocation(line: 0, scope: !268, inlinedAt: !1675)
!1681 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !1675)
!1682 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !1675)
!1683 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !1675)
!1684 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !1675)
!1685 = !DILocation(line: 0, scope: !282, inlinedAt: !1675)
!1686 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !1675)
!1687 = distinct !{!1687, !1682, !1688, !153, !154}
!1688 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !1675)
!1689 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !1675)
!1690 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1666)
!1691 = !DILocation(line: 731, column: 1, scope: !1420)
!1692 = distinct !DISubprogram(name: "lzma_mf_bt4_skip", scope: !24, file: !24, line: 735, type: !58, scopeLine: 736, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1693)
!1693 = !{!1694, !1695, !1696, !1698, !1699, !1700, !1701, !1702, !1703, !1704}
!1694 = !DILocalVariable(name: "mf", arg: 1, scope: !1692, file: !24, line: 735, type: !27)
!1695 = !DILocalVariable(name: "amount", arg: 2, scope: !1692, file: !24, line: 735, type: !12)
!1696 = !DILocalVariable(name: "len_limit", scope: !1697, file: !24, line: 738, type: !12)
!1697 = distinct !DILexicalBlock(scope: !1692, file: !24, line: 737, column: 5)
!1698 = !DILocalVariable(name: "cur", scope: !1697, file: !24, line: 738, type: !86)
!1699 = !DILocalVariable(name: "pos", scope: !1697, file: !24, line: 738, type: !78)
!1700 = !DILocalVariable(name: "temp", scope: !1697, file: !24, line: 740, type: !78)
!1701 = !DILocalVariable(name: "hash_2_value", scope: !1697, file: !24, line: 740, type: !78)
!1702 = !DILocalVariable(name: "hash_3_value", scope: !1697, file: !24, line: 740, type: !78)
!1703 = !DILocalVariable(name: "hash_value", scope: !1697, file: !24, line: 740, type: !78)
!1704 = !DILocalVariable(name: "cur_match", scope: !1697, file: !24, line: 742, type: !78)
!1705 = !DILocation(line: 0, scope: !1692)
!1706 = !DILocation(line: 737, column: 2, scope: !1692)
!1707 = !DILocation(line: 738, column: 3, scope: !1697)
!1708 = !DILocation(line: 0, scope: !113, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 738, column: 3, scope: !1697)
!1710 = !DILocation(line: 232, column: 23, scope: !113, inlinedAt: !1709)
!1711 = !DILocation(line: 0, scope: !1697)
!1712 = !DILocation(line: 738, column: 3, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1697, file: !24, line: 738, column: 3)
!1714 = !DILocation(line: 738, column: 3, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1713, file: !24, line: 738, column: 3)
!1716 = !DILocation(line: 0, scope: !185, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 738, column: 3, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !24, line: 738, column: 3)
!1719 = !DILocation(line: 178, column: 2, scope: !185, inlinedAt: !1717)
!1720 = !DILocation(line: 180, column: 2, scope: !185, inlinedAt: !1717)
!1721 = !DILocation(line: 738, column: 3, scope: !1718)
!1722 = !DILocation(line: 0, scope: !131, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 738, column: 3, scope: !1697)
!1724 = !DILocation(line: 224, column: 20, scope: !131, inlinedAt: !1723)
!1725 = !DILocation(line: 740, column: 3, scope: !1697)
!1726 = !DILocation(line: 743, column: 11, scope: !1697)
!1727 = !DILocation(line: 743, column: 32, scope: !1697)
!1728 = !DILocation(line: 743, column: 7, scope: !1697)
!1729 = !DILocation(line: 745, column: 3, scope: !1697)
!1730 = !DILocation(line: 745, column: 26, scope: !1697)
!1731 = !DILocation(line: 746, column: 28, scope: !1697)
!1732 = !DILocation(line: 746, column: 3, scope: !1697)
!1733 = !DILocation(line: 746, column: 44, scope: !1697)
!1734 = !DILocation(line: 747, column: 42, scope: !1697)
!1735 = !DILocation(line: 749, column: 3, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1697, file: !24, line: 749, column: 3)
!1737 = !DILocation(line: 0, scope: !935, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 749, column: 3, scope: !1736)
!1739 = !DILocation(line: 531, column: 37, scope: !935, inlinedAt: !1738)
!1740 = !DILocation(line: 531, column: 23, scope: !935, inlinedAt: !1738)
!1741 = !DILocation(line: 531, column: 43, scope: !935, inlinedAt: !1738)
!1742 = !DILocation(line: 538, column: 30, scope: !951, inlinedAt: !1738)
!1743 = !DILocation(line: 0, scope: !951, inlinedAt: !1738)
!1744 = !DILocation(line: 539, column: 15, scope: !963, inlinedAt: !1738)
!1745 = !DILocation(line: 539, column: 20, scope: !963, inlinedAt: !1738)
!1746 = !DILocation(line: 532, column: 12, scope: !935, inlinedAt: !1738)
!1747 = !DILocation(line: 531, column: 12, scope: !935, inlinedAt: !1738)
!1748 = !DILocation(line: 540, column: 10, scope: !968, inlinedAt: !1738)
!1749 = !DILocation(line: 541, column: 10, scope: !968, inlinedAt: !1738)
!1750 = !DILocation(line: 542, column: 4, scope: !968, inlinedAt: !1738)
!1751 = !DILocation(line: 539, column: 12, scope: !963, inlinedAt: !1738)
!1752 = !DILocation(line: 545, column: 39, scope: !951, inlinedAt: !1738)
!1753 = !DILocation(line: 546, column: 14, scope: !951, inlinedAt: !1738)
!1754 = !DILocation(line: 546, column: 8, scope: !951, inlinedAt: !1738)
!1755 = !DILocation(line: 546, column: 5, scope: !951, inlinedAt: !1738)
!1756 = !DILocation(line: 547, column: 5, scope: !951, inlinedAt: !1738)
!1757 = !DILocation(line: 545, column: 24, scope: !951, inlinedAt: !1738)
!1758 = !DILocation(line: 548, column: 27, scope: !951, inlinedAt: !1738)
!1759 = !DILocation(line: 549, column: 18, scope: !951, inlinedAt: !1738)
!1760 = !DILocation(line: 551, column: 7, scope: !981, inlinedAt: !1738)
!1761 = !DILocation(line: 551, column: 18, scope: !981, inlinedAt: !1738)
!1762 = !DILocation(line: 551, column: 15, scope: !981, inlinedAt: !1738)
!1763 = !DILocation(line: 551, column: 7, scope: !951, inlinedAt: !1738)
!1764 = !DILocation(line: 552, column: 11, scope: !986, inlinedAt: !1738)
!1765 = !DILocation(line: 552, column: 17, scope: !986, inlinedAt: !1738)
!1766 = !DILocation(line: 552, column: 4, scope: !986, inlinedAt: !1738)
!1767 = !DILocation(line: 553, column: 9, scope: !990, inlinedAt: !1738)
!1768 = !DILocation(line: 553, column: 20, scope: !990, inlinedAt: !1738)
!1769 = !DILocation(line: 553, column: 17, scope: !990, inlinedAt: !1738)
!1770 = !DILocation(line: 553, column: 9, scope: !986, inlinedAt: !1738)
!1771 = distinct !{!1771, !1766, !1772, !153, !154}
!1772 = !DILocation(line: 554, column: 6, scope: !986, inlinedAt: !1738)
!1773 = !DILocation(line: 557, column: 13, scope: !997, inlinedAt: !1738)
!1774 = !DILocation(line: 557, column: 11, scope: !997, inlinedAt: !1738)
!1775 = !DILocation(line: 558, column: 13, scope: !997, inlinedAt: !1738)
!1776 = !DILocation(line: 558, column: 11, scope: !997, inlinedAt: !1738)
!1777 = !DILocation(line: 559, column: 5, scope: !997, inlinedAt: !1738)
!1778 = !DILocation(line: 563, column: 17, scope: !1004, inlinedAt: !1738)
!1779 = !DILocation(line: 563, column: 7, scope: !1004, inlinedAt: !1738)
!1780 = !DILocation(line: 563, column: 15, scope: !1004, inlinedAt: !1738)
!1781 = !DILocation(line: 563, column: 7, scope: !951, inlinedAt: !1738)
!1782 = !DILocation(line: 564, column: 10, scope: !1009, inlinedAt: !1738)
!1783 = !DILocation(line: 565, column: 16, scope: !1009, inlinedAt: !1738)
!1784 = !DILocation(line: 568, column: 3, scope: !1009, inlinedAt: !1738)
!1785 = !DILocation(line: 569, column: 10, scope: !1013, inlinedAt: !1738)
!1786 = !DILocation(line: 0, scope: !1004, inlinedAt: !1738)
!1787 = distinct !{!1787, !1788, !1789, !154}
!1788 = !DILocation(line: 537, column: 2, scope: !935, inlinedAt: !1738)
!1789 = !DILocation(line: 574, column: 2, scope: !935, inlinedAt: !1738)
!1790 = !DILocation(line: 0, scope: !248, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 749, column: 3, scope: !1736)
!1792 = !DILocation(line: 150, column: 6, scope: !253, inlinedAt: !1791)
!1793 = !DILocation(line: 150, column: 30, scope: !253, inlinedAt: !1791)
!1794 = !DILocation(line: 150, column: 23, scope: !253, inlinedAt: !1791)
!1795 = !DILocation(line: 150, column: 6, scope: !248, inlinedAt: !1791)
!1796 = !DILocation(line: 153, column: 2, scope: !248, inlinedAt: !1791)
!1797 = !DILocation(line: 156, column: 6, scope: !259, inlinedAt: !1791)
!1798 = !DILocation(line: 156, column: 6, scope: !248, inlinedAt: !1791)
!1799 = !DILocation(line: 0, scope: !262, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1791)
!1801 = !DILocation(line: 116, column: 26, scope: !262, inlinedAt: !1800)
!1802 = !DILocation(line: 119, column: 29, scope: !262, inlinedAt: !1800)
!1803 = !DILocation(line: 119, column: 49, scope: !262, inlinedAt: !1800)
!1804 = !DILocation(line: 119, column: 43, scope: !262, inlinedAt: !1800)
!1805 = !DILocation(line: 0, scope: !268, inlinedAt: !1800)
!1806 = !DILocation(line: 122, column: 25, scope: !279, inlinedAt: !1800)
!1807 = !DILocation(line: 122, column: 2, scope: !268, inlinedAt: !1800)
!1808 = !DILocation(line: 133, column: 7, scope: !282, inlinedAt: !1800)
!1809 = !DILocation(line: 133, column: 7, scope: !283, inlinedAt: !1800)
!1810 = !DILocation(line: 0, scope: !282, inlinedAt: !1800)
!1811 = !DILocation(line: 122, column: 34, scope: !279, inlinedAt: !1800)
!1812 = distinct !{!1812, !1807, !1813, !153, !154}
!1813 = !DILocation(line: 137, column: 2, scope: !268, inlinedAt: !1800)
!1814 = !DILocation(line: 140, column: 13, scope: !262, inlinedAt: !1800)
!1815 = !DILocation(line: 157, column: 3, scope: !259, inlinedAt: !1791)
!1816 = !DILocation(line: 751, column: 11, scope: !1692)
!1817 = !DILocation(line: 751, column: 20, scope: !1692)
!1818 = !DILocation(line: 751, column: 2, scope: !1697)
!1819 = distinct !{!1819, !1706, !1820, !153, !154}
!1820 = !DILocation(line: 751, column: 24, scope: !1692)
!1821 = !DILocation(line: 752, column: 1, scope: !1692)
