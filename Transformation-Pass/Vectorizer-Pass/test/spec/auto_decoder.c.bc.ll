; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/auto_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/auto_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_auto_decoder(ptr noundef %strm, i64 noundef %memlimit, i32 noundef %flags) local_unnamed_addr #0 !dbg !157 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !186, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i64 %memlimit, metadata !187, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i32 %flags, metadata !188, metadata !DIExpression()), !dbg !194
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #4, !dbg !195
  call void @llvm.dbg.value(metadata i32 %call, metadata !189, metadata !DIExpression()), !dbg !196
  %cmp.not = icmp eq i32 %call, 0, !dbg !197
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !199
  %0 = load ptr, ptr %internal, align 8, !dbg !199, !tbaa !200
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !199
  %1 = load ptr, ptr %allocator, align 8, !dbg !199, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %0, metadata !207, metadata !DIExpression()) #4, !dbg !216
  call void @llvm.dbg.value(metadata ptr %1, metadata !213, metadata !DIExpression()) #4, !dbg !216
  call void @llvm.dbg.value(metadata i64 %memlimit, metadata !214, metadata !DIExpression()) #4, !dbg !216
  call void @llvm.dbg.value(metadata i32 %flags, metadata !215, metadata !DIExpression()) #4, !dbg !216
  %init.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2, !dbg !218
  %2 = load i64, ptr %init.i, align 8, !dbg !218, !tbaa !221
  %cmp.not.i = icmp eq i64 %2, ptrtoint (ptr @auto_decoder_init to i64), !dbg !218
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !223

if.then.i:                                        ; preds = %do.end
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #4, !dbg !218
  br label %if.end.i, !dbg !218

if.end.i:                                         ; preds = %if.then.i, %do.end
  store i64 ptrtoint (ptr @auto_decoder_init to i64), ptr %init.i, align 8, !dbg !223, !tbaa !221
  %cmp2.i = icmp eq i64 %memlimit, 0, !dbg !224
  br i1 %cmp2.i, label %cleanup7, label %if.end4.i, !dbg !226

if.end4.i:                                        ; preds = %if.end.i
  %tobool.not.i = icmp ult i32 %flags, 16, !dbg !227
  br i1 %tobool.not.i, label %if.end6.i, label %cleanup7, !dbg !229

if.end6.i:                                        ; preds = %if.end4.i
  %3 = load ptr, ptr %0, align 8, !dbg !230, !tbaa !232
  %cmp7.i = icmp eq ptr %3, null, !dbg !233
  br i1 %cmp7.i, label %if.then8.i, label %do.end10, !dbg !234

if.then8.i:                                       ; preds = %if.end6.i
  %call.i = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %1) #4, !dbg !235
  store ptr %call.i, ptr %0, align 8, !dbg !237, !tbaa !232
  %cmp11.i = icmp eq ptr %call.i, null, !dbg !238
  br i1 %cmp11.i, label %cleanup7, label %if.end13.i, !dbg !240

if.end13.i:                                       ; preds = %if.then8.i
  %code.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3, !dbg !241
  store ptr @auto_decode, ptr %code.i, align 8, !dbg !242, !tbaa !243
  %end.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4, !dbg !244
  store ptr @auto_decoder_end, ptr %end.i, align 8, !dbg !245, !tbaa !246
  %get_check.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 5, !dbg !247
  store ptr @auto_decoder_get_check, ptr %get_check.i, align 8, !dbg !248, !tbaa !249
  %memconfig.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6, !dbg !250
  store ptr @auto_decoder_memconfig, ptr %memconfig.i, align 8, !dbg !251, !tbaa !252
  store ptr null, ptr %call.i, align 8, !dbg !253, !tbaa.struct !254
  %.compoundliteral.sroa.2.0.next15.sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i64 8, !dbg !253
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next15.sroa_idx.i, align 8, !dbg !253, !tbaa.struct !257
  %.compoundliteral.sroa.3.0.next15.sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i64 16, !dbg !253
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next15.sroa_idx.i, i8 0, i64 48, i1 false) #4, !dbg !253
  %.pre.i = load ptr, ptr %0, align 8, !dbg !258, !tbaa !232
  br label %do.end10, !dbg !259

cleanup7:                                         ; preds = %if.then8.i, %if.end4.i, %if.end.i
  %retval.0.i.ph = phi i32 [ 5, %if.then8.i ], [ 8, %if.end4.i ], [ 11, %if.end.i ]
  call void @llvm.dbg.value(metadata i32 0, metadata !193, metadata !DIExpression()), !dbg !260
  tail call void @lzma_end(ptr noundef nonnull %strm) #4, !dbg !261
  br label %return

do.end10:                                         ; preds = %if.end13.i, %if.end6.i
  %4 = phi ptr [ %.pre.i, %if.end13.i ], [ %3, %if.end6.i ], !dbg !258
  %memlimit24.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, !dbg !264
  store i64 %memlimit, ptr %memlimit24.i, align 8, !dbg !265, !tbaa !266
  %flags26.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 2, !dbg !269
  store i32 %flags, ptr %flags26.i, align 8, !dbg !270, !tbaa !271
  %sequence.i = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 3, !dbg !272
  store i32 0, ptr %sequence.i, align 4, !dbg !273, !tbaa !274
  call void @llvm.dbg.value(metadata i32 0, metadata !193, metadata !DIExpression()), !dbg !260
  %5 = load ptr, ptr %internal, align 8, !dbg !275, !tbaa !200
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %5, i64 0, i32 3, !dbg !276
  store i8 1, ptr %supported_actions, align 8, !dbg !277, !tbaa !278
  %arrayidx14 = getelementptr inbounds %struct.lzma_internal_s, ptr %5, i64 0, i32 3, i64 3, !dbg !280
  store i8 1, ptr %arrayidx14, align 1, !dbg !281, !tbaa !278
  br label %return, !dbg !282

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %retval.0.i.ph, %cleanup7 ], [ 0, %do.end10 ], !dbg !194
  ret i32 %retval.2, !dbg !283
}

declare !dbg !284 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @auto_decoder_init(ptr noundef %next, ptr noundef %allocator, i64 noundef %memlimit, i32 noundef %flags) #0 !dbg !208 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !207, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !213, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i64 %memlimit, metadata !214, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 %flags, metadata !215, metadata !DIExpression()), !dbg !288
  %init = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 2, !dbg !289
  %0 = load i64, ptr %init, align 8, !dbg !289, !tbaa !221
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @auto_decoder_init to i64), !dbg !289
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !290

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4, !dbg !289
  br label %if.end, !dbg !289

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @auto_decoder_init to i64), ptr %init, align 8, !dbg !290, !tbaa !221
  %cmp2 = icmp eq i64 %memlimit, 0, !dbg !291
  br i1 %cmp2, label %return, label %if.end4, !dbg !292

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp ult i32 %flags, 16, !dbg !293
  br i1 %tobool.not, label %if.end6, label %return, !dbg !294

if.end6:                                          ; preds = %if.end4
  %1 = load ptr, ptr %next, align 8, !dbg !295, !tbaa !232
  %cmp7 = icmp eq ptr %1, null, !dbg !296
  br i1 %cmp7, label %if.then8, label %if.end22, !dbg !297

if.then8:                                         ; preds = %if.end6
  %call = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %allocator) #4, !dbg !298
  store ptr %call, ptr %next, align 8, !dbg !299, !tbaa !232
  %cmp11 = icmp eq ptr %call, null, !dbg !300
  br i1 %cmp11, label %return, label %if.end13, !dbg !301

if.end13:                                         ; preds = %if.then8
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !302
  store ptr @auto_decode, ptr %code, align 8, !dbg !303, !tbaa !243
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !304
  store ptr @auto_decoder_end, ptr %end, align 8, !dbg !305, !tbaa !246
  %get_check = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 5, !dbg !306
  store ptr @auto_decoder_get_check, ptr %get_check, align 8, !dbg !307, !tbaa !249
  %memconfig = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 6, !dbg !308
  store ptr @auto_decoder_memconfig, ptr %memconfig, align 8, !dbg !309, !tbaa !252
  store ptr null, ptr %call, align 8, !dbg !310, !tbaa.struct !254
  %.compoundliteral.sroa.2.0.next15.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8, !dbg !310
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next15.sroa_idx, align 8, !dbg !310, !tbaa.struct !257
  %.compoundliteral.sroa.3.0.next15.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16, !dbg !310
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next15.sroa_idx, i8 0, i64 48, i1 false), !dbg !310
  %.pre = load ptr, ptr %next, align 8, !dbg !311, !tbaa !232
  br label %if.end22, !dbg !312

if.end22:                                         ; preds = %if.end13, %if.end6
  %2 = phi ptr [ %.pre, %if.end13 ], [ %1, %if.end6 ], !dbg !311
  %memlimit24 = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 1, !dbg !313
  store i64 %memlimit, ptr %memlimit24, align 8, !dbg !314, !tbaa !266
  %flags26 = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 2, !dbg !315
  store i32 %flags, ptr %flags26, align 8, !dbg !316, !tbaa !271
  %sequence = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 3, !dbg !317
  store i32 0, ptr %sequence, align 4, !dbg !318, !tbaa !274
  br label %return, !dbg !319

return:                                           ; preds = %if.then8, %if.end4, %if.end, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ 11, %if.end ], [ 8, %if.end4 ], [ 5, %if.then8 ], !dbg !288
  ret i32 %retval.0, !dbg !320
}

declare !dbg !321 void @lzma_end(ptr noundef) local_unnamed_addr #1

declare !dbg !324 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !327 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @auto_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !330 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !332, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !333, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata ptr %in, metadata !334, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !335, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !336, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata ptr %out, metadata !337, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !338, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !339, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 %action, metadata !340, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !341, metadata !DIExpression()), !dbg !352
  %sequence = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !353
  %0 = load i32, ptr %sequence, align 4, !dbg !353, !tbaa !274
  switch i32 %0, label %cleanup56 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 2, label %sw.bb49
  ], !dbg !354

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %in_pos, align 8, !dbg !355, !tbaa !256
  %cmp.not = icmp ult i64 %1, %in_size, !dbg !357
  br i1 %cmp.not, label %if.end, label %cleanup56, !dbg !358

if.end:                                           ; preds = %sw.bb
  store i32 1, ptr %sequence, align 4, !dbg !359, !tbaa !274
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %1, !dbg !360
  %2 = load i8, ptr %arrayidx, align 1, !dbg !360, !tbaa !361
  %cmp2 = icmp eq i8 %2, -3, !dbg !362
  %memlimit = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !363
  %3 = load i64, ptr %memlimit, align 8, !dbg !363, !tbaa !266
  br i1 %cmp2, label %do.body, label %do.body9, !dbg !364

do.body:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !365
  %4 = load i32, ptr %flags, align 8, !dbg !365, !tbaa !271
  %call = tail call i32 @lzma_stream_decoder_init(ptr noundef nonnull %pcoder, ptr noundef %allocator, i64 noundef %3, i32 noundef %4) #4, !dbg !365
  call void @llvm.dbg.value(metadata i32 %call, metadata !342, metadata !DIExpression()), !dbg !366
  %cmp5.not = icmp eq i32 %call, 0, !dbg !367
  br i1 %cmp5.not, label %sw.bb32, label %cleanup56

do.body9:                                         ; preds = %if.end
  %call13 = tail call i32 @lzma_alone_decoder_init(ptr noundef nonnull %pcoder, ptr noundef %allocator, i64 noundef %3, i1 noundef zeroext true) #4, !dbg !369
  call void @llvm.dbg.value(metadata i32 %call13, metadata !347, metadata !DIExpression()), !dbg !370
  %cmp14.not = icmp eq i32 %call13, 0, !dbg !371
  br i1 %cmp14.not, label %do.end22, label %cleanup56

do.end22:                                         ; preds = %do.body9
  %flags23 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !373
  %5 = load i32, ptr %flags23, align 8, !dbg !373, !tbaa !271
  %and = and i32 %5, 1, !dbg !375
  %tobool.not = icmp eq i32 %and, 0, !dbg !375
  br i1 %tobool.not, label %if.end25, label %cleanup56, !dbg !376

if.end25:                                         ; preds = %do.end22
  %and27 = and i32 %5, 4, !dbg !377
  %tobool28.not = icmp eq i32 %and27, 0, !dbg !377
  br i1 %tobool28.not, label %sw.bb32, label %cleanup56, !dbg !379

sw.bb32:                                          ; preds = %do.body, %if.end25, %entry
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !380
  %6 = load ptr, ptr %code, align 8, !dbg !380, !tbaa !381
  %7 = load ptr, ptr %pcoder, align 8, !dbg !382, !tbaa !383
  %call36 = tail call i32 %6(ptr noundef %7, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #4, !dbg !384
  call void @llvm.dbg.value(metadata i32 %call36, metadata !350, metadata !DIExpression()), !dbg !385
  %cmp37.not = icmp eq i32 %call36, 1, !dbg !386
  br i1 %cmp37.not, label %lor.lhs.false, label %cleanup56, !dbg !388

lor.lhs.false:                                    ; preds = %sw.bb32
  %flags39 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !389
  %8 = load i32, ptr %flags39, align 8, !dbg !389, !tbaa !271
  %and40 = and i32 %8, 8, !dbg !390
  %cmp41 = icmp eq i32 %and40, 0, !dbg !391
  br i1 %cmp41, label %cleanup56, label %cleanup46, !dbg !392

cleanup46:                                        ; preds = %lor.lhs.false
  store i32 2, ptr %sequence, align 4, !dbg !393, !tbaa !274
  br label %sw.bb49

sw.bb49:                                          ; preds = %cleanup46, %entry
  %9 = load i64, ptr %in_pos, align 8, !dbg !394, !tbaa !256
  %cmp50 = icmp ult i64 %9, %in_size, !dbg !396
  br i1 %cmp50, label %cleanup56, label %if.end53, !dbg !397

if.end53:                                         ; preds = %sw.bb49
  %cmp54 = icmp eq i32 %action, 3, !dbg !398
  %cond = zext i1 %cmp54 to i32, !dbg !399
  br label %cleanup56, !dbg !400

cleanup56:                                        ; preds = %sw.bb32, %lor.lhs.false, %entry, %sw.bb49, %if.end25, %do.end22, %sw.bb, %do.body, %do.body9, %if.end53
  %retval.4 = phi i32 [ %cond, %if.end53 ], [ %call, %do.body ], [ %call13, %do.body9 ], [ 0, %sw.bb ], [ 2, %do.end22 ], [ 4, %if.end25 ], [ 9, %sw.bb49 ], [ 11, %entry ], [ 1, %lor.lhs.false ], [ %call36, %sw.bb32 ], !dbg !401
  ret i32 %retval.4, !dbg !402
}

; Function Attrs: nounwind uwtable
define internal void @auto_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !403 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !405, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !406, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !407, metadata !DIExpression()), !dbg !408
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #4, !dbg !409
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #4, !dbg !410
  ret void, !dbg !411
}

; Function Attrs: nounwind uwtable
define internal i32 @auto_decoder_get_check(ptr nocapture noundef readonly %pcoder) #0 !dbg !412 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !414, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !415, metadata !DIExpression()), !dbg !418
  %get_check = getelementptr inbounds %struct.lzma_next_coder_s, ptr %pcoder, i64 0, i32 5, !dbg !419
  %0 = load ptr, ptr %get_check, align 8, !dbg !419, !tbaa !420
  %cmp = icmp eq ptr %0, null, !dbg !421
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !422

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %pcoder, align 8, !dbg !423, !tbaa !383
  %call = tail call i32 %0(ptr noundef %1) #4, !dbg !424
  br label %cond.end, !dbg !422

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ 0, %entry ], !dbg !422
  ret i32 %cond, !dbg !425
}

; Function Attrs: nounwind uwtable
define internal i32 @auto_decoder_memconfig(ptr nocapture noundef %pcoder, ptr noundef %memusage, ptr noundef %old_memlimit, i64 noundef %new_memlimit) #0 !dbg !426 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !428, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata ptr %memusage, metadata !429, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata ptr %old_memlimit, metadata !430, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i64 %new_memlimit, metadata !431, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !433, metadata !DIExpression()), !dbg !434
  %memconfig = getelementptr inbounds %struct.lzma_next_coder_s, ptr %pcoder, i64 0, i32 6, !dbg !435
  %0 = load ptr, ptr %memconfig, align 8, !dbg !435, !tbaa !437
  %cmp.not = icmp eq ptr %0, null, !dbg !438
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !439

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pcoder, align 8, !dbg !440, !tbaa !383
  %call = tail call i32 %0(ptr noundef %1, ptr noundef %memusage, ptr noundef %old_memlimit, i64 noundef %new_memlimit) #4, !dbg !442
  call void @llvm.dbg.value(metadata i32 %call, metadata !432, metadata !DIExpression()), !dbg !434
  br label %if.end, !dbg !443

if.else:                                          ; preds = %entry
  store i64 32768, ptr %memusage, align 8, !dbg !444, !tbaa !256
  %memlimit = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !446
  %2 = load i64, ptr %memlimit, align 8, !dbg !446, !tbaa !266
  store i64 %2, ptr %old_memlimit, align 8, !dbg !447, !tbaa !256
  call void @llvm.dbg.value(metadata i32 0, metadata !432, metadata !DIExpression()), !dbg !434
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %if.else ], !dbg !448
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !432, metadata !DIExpression()), !dbg !434
  %cmp5 = icmp eq i32 %ret.0, 0, !dbg !449
  %cmp6 = icmp ne i64 %new_memlimit, 0
  %or.cond = and i1 %cmp6, %cmp5, !dbg !451
  br i1 %or.cond, label %if.then7, label %if.end9, !dbg !451

if.then7:                                         ; preds = %if.end
  %memlimit8 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !452
  store i64 %new_memlimit, ptr %memlimit8, align 8, !dbg !453, !tbaa !266
  br label %if.end9, !dbg !454

if.end9:                                          ; preds = %if.then7, %if.end
  ret i32 %ret.0, !dbg !455
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !456 i32 @lzma_stream_decoder_init(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !458 i32 @lzma_alone_decoder_init(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare !dbg !462 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !148, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/auto_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "068df4f0ac82120f07aa061486068a40")
!2 = !{!3, !19, !25, !32, !131, !134}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !136, file: !135, line: 24, baseType: !5, size: 32, elements: !144)
!135 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/auto_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "068df4f0ac82120f07aa061486068a40")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !135, line: 17, size: 640, elements: !137)
!137 = !{!138, !139, !140, !143}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !135, line: 19, baseType: !37, size: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "memlimit", scope: !136, file: !135, line: 21, baseType: !46, size: 64, offset: 512)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !135, line: 22, baseType: !141, size: 32, offset: 576)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !5)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !136, file: !135, line: 28, baseType: !134, size: 32, offset: 608)
!144 = !{!145, !146, !147}
!145 = !DIEnumerator(name: "SEQ_INIT", value: 0)
!146 = !DIEnumerator(name: "SEQ_CODE", value: 1)
!147 = !DIEnumerator(name: "SEQ_FINISH", value: 2)
!148 = !{!52, !68, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!150 = !{i32 7, !"Dwarf Version", i32 5}
!151 = !{i32 2, !"Debug Info Version", i32 3}
!152 = !{i32 1, !"wchar_size", i32 4}
!153 = !{i32 7, !"PIC Level", i32 2}
!154 = !{i32 7, !"PIE Level", i32 2}
!155 = !{i32 7, !"uwtable", i32 2}
!156 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!157 = distinct !DISubprogram(name: "lzma_auto_decoder", scope: !135, file: !135, line: 182, type: !158, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !185)
!158 = !DISubroutineType(types: !159)
!159 = !{!59, !160, !46, !141}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !174, !175, !176, !177, !178, !179, !180, !181, !182, !184}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !162, file: !4, line: 454, baseType: !77, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !162, file: !4, line: 455, baseType: !69, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !162, file: !4, line: 456, baseType: !46, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !162, file: !4, line: 458, baseType: !85, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !162, file: !4, line: 459, baseType: !69, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !162, file: !4, line: 460, baseType: !46, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !162, file: !4, line: 468, baseType: !60, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !162, file: !4, line: 471, baseType: !172, size: 64, offset: 448)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !34)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !162, file: !4, line: 479, baseType: !68, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !162, file: !4, line: 480, baseType: !68, size: 64, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !162, file: !4, line: 481, baseType: !68, size: 64, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !162, file: !4, line: 482, baseType: !68, size: 64, offset: 704)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !162, file: !4, line: 483, baseType: !46, size: 64, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !162, file: !4, line: 484, baseType: !46, size: 64, offset: 832)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !162, file: !4, line: 485, baseType: !69, size: 64, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !162, file: !4, line: 486, baseType: !69, size: 64, offset: 960)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !162, file: !4, line: 487, baseType: !183, size: 32, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !131)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !162, file: !4, line: 488, baseType: !183, size: 32, offset: 1056)
!185 = !{!186, !187, !188, !189, !193}
!186 = !DILocalVariable(name: "strm", arg: 1, scope: !157, file: !135, line: 182, type: !160)
!187 = !DILocalVariable(name: "memlimit", arg: 2, scope: !157, file: !135, line: 182, type: !46)
!188 = !DILocalVariable(name: "flags", arg: 3, scope: !157, file: !135, line: 182, type: !141)
!189 = !DILocalVariable(name: "ret_", scope: !190, file: !135, line: 184, type: !192)
!190 = distinct !DILexicalBlock(scope: !191, file: !135, line: 184, column: 2)
!191 = distinct !DILexicalBlock(scope: !157, file: !135, line: 184, column: 2)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!193 = !DILocalVariable(name: "ret_", scope: !191, file: !135, line: 184, type: !192)
!194 = !DILocation(line: 0, scope: !157)
!195 = !DILocation(line: 184, column: 2, scope: !190)
!196 = !DILocation(line: 0, scope: !190)
!197 = !DILocation(line: 184, column: 2, scope: !198)
!198 = distinct !DILexicalBlock(scope: !190, file: !135, line: 184, column: 2)
!199 = !DILocation(line: 184, column: 2, scope: !191)
!200 = !{!201, !202, i64 56}
!201 = !{!"", !202, i64 0, !205, i64 8, !205, i64 16, !202, i64 24, !205, i64 32, !205, i64 40, !202, i64 48, !202, i64 56, !202, i64 64, !202, i64 72, !202, i64 80, !202, i64 88, !205, i64 96, !205, i64 104, !205, i64 112, !205, i64 120, !203, i64 128, !203, i64 132}
!202 = !{!"any pointer", !203, i64 0}
!203 = !{!"omnipotent char", !204, i64 0}
!204 = !{!"Simple C/C++ TBAA"}
!205 = !{!"long", !203, i64 0}
!206 = !{!201, !202, i64 48}
!207 = !DILocalVariable(name: "next", arg: 1, scope: !208, file: !135, line: 150, type: !211)
!208 = distinct !DISubprogram(name: "auto_decoder_init", scope: !135, file: !135, line: 150, type: !209, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !212)
!209 = !DISubroutineType(types: !210)
!210 = !{!59, !211, !60, !46, !141}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!212 = !{!207, !213, !214, !215}
!213 = !DILocalVariable(name: "allocator", arg: 2, scope: !208, file: !135, line: 150, type: !60)
!214 = !DILocalVariable(name: "memlimit", arg: 3, scope: !208, file: !135, line: 151, type: !46)
!215 = !DILocalVariable(name: "flags", arg: 4, scope: !208, file: !135, line: 151, type: !141)
!216 = !DILocation(line: 0, scope: !208, inlinedAt: !217)
!217 = distinct !DILocation(line: 184, column: 2, scope: !191)
!218 = !DILocation(line: 153, column: 2, scope: !219, inlinedAt: !217)
!219 = distinct !DILexicalBlock(scope: !220, file: !135, line: 153, column: 2)
!220 = distinct !DILexicalBlock(scope: !208, file: !135, line: 153, column: 2)
!221 = !{!222, !205, i64 16}
!222 = !{!"lzma_next_coder_s", !202, i64 0, !205, i64 8, !205, i64 16, !202, i64 24, !202, i64 32, !202, i64 40, !202, i64 48, !202, i64 56}
!223 = !DILocation(line: 153, column: 2, scope: !220, inlinedAt: !217)
!224 = !DILocation(line: 155, column: 15, scope: !225, inlinedAt: !217)
!225 = distinct !DILexicalBlock(scope: !208, file: !135, line: 155, column: 6)
!226 = !DILocation(line: 155, column: 6, scope: !208, inlinedAt: !217)
!227 = !DILocation(line: 158, column: 12, scope: !228, inlinedAt: !217)
!228 = distinct !DILexicalBlock(scope: !208, file: !135, line: 158, column: 6)
!229 = !DILocation(line: 158, column: 6, scope: !208, inlinedAt: !217)
!230 = !DILocation(line: 161, column: 12, scope: !231, inlinedAt: !217)
!231 = distinct !DILexicalBlock(scope: !208, file: !135, line: 161, column: 6)
!232 = !{!222, !202, i64 0}
!233 = !DILocation(line: 161, column: 18, scope: !231, inlinedAt: !217)
!234 = !DILocation(line: 161, column: 6, scope: !208, inlinedAt: !217)
!235 = !DILocation(line: 162, column: 17, scope: !236, inlinedAt: !217)
!236 = distinct !DILexicalBlock(scope: !231, file: !135, line: 161, column: 27)
!237 = !DILocation(line: 162, column: 15, scope: !236, inlinedAt: !217)
!238 = !DILocation(line: 163, column: 19, scope: !239, inlinedAt: !217)
!239 = distinct !DILexicalBlock(scope: !236, file: !135, line: 163, column: 7)
!240 = !DILocation(line: 163, column: 7, scope: !236, inlinedAt: !217)
!241 = !DILocation(line: 166, column: 9, scope: !236, inlinedAt: !217)
!242 = !DILocation(line: 166, column: 14, scope: !236, inlinedAt: !217)
!243 = !{!222, !202, i64 24}
!244 = !DILocation(line: 167, column: 9, scope: !236, inlinedAt: !217)
!245 = !DILocation(line: 167, column: 13, scope: !236, inlinedAt: !217)
!246 = !{!222, !202, i64 32}
!247 = !DILocation(line: 168, column: 9, scope: !236, inlinedAt: !217)
!248 = !DILocation(line: 168, column: 19, scope: !236, inlinedAt: !217)
!249 = !{!222, !202, i64 40}
!250 = !DILocation(line: 169, column: 9, scope: !236, inlinedAt: !217)
!251 = !DILocation(line: 169, column: 19, scope: !236, inlinedAt: !217)
!252 = !{!222, !202, i64 48}
!253 = !DILocation(line: 170, column: 47, scope: !236, inlinedAt: !217)
!254 = !{i64 0, i64 8, !255, i64 8, i64 8, !256, i64 16, i64 8, !256, i64 24, i64 8, !255, i64 32, i64 8, !255, i64 40, i64 8, !255, i64 48, i64 8, !255, i64 56, i64 8, !255}
!255 = !{!202, !202, i64 0}
!256 = !{!205, !205, i64 0}
!257 = !{i64 0, i64 8, !256, i64 8, i64 8, !256, i64 16, i64 8, !255, i64 24, i64 8, !255, i64 32, i64 8, !255, i64 40, i64 8, !255, i64 48, i64 8, !255}
!258 = !DILocation(line: 173, column: 31, scope: !208, inlinedAt: !217)
!259 = !DILocation(line: 171, column: 2, scope: !236, inlinedAt: !217)
!260 = !DILocation(line: 0, scope: !191)
!261 = !DILocation(line: 184, column: 2, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !135, line: 184, column: 2)
!263 = distinct !DILexicalBlock(scope: !191, file: !135, line: 184, column: 2)
!264 = !DILocation(line: 173, column: 39, scope: !208, inlinedAt: !217)
!265 = !DILocation(line: 173, column: 48, scope: !208, inlinedAt: !217)
!266 = !{!267, !205, i64 64}
!267 = !{!"lzma_coder_s", !222, i64 0, !205, i64 64, !268, i64 72, !203, i64 76}
!268 = !{!"int", !203, i64 0}
!269 = !DILocation(line: 174, column: 39, scope: !208, inlinedAt: !217)
!270 = !DILocation(line: 174, column: 45, scope: !208, inlinedAt: !217)
!271 = !{!267, !268, i64 72}
!272 = !DILocation(line: 175, column: 39, scope: !208, inlinedAt: !217)
!273 = !DILocation(line: 175, column: 48, scope: !208, inlinedAt: !217)
!274 = !{!267, !203, i64 76}
!275 = !DILocation(line: 186, column: 8, scope: !157)
!276 = !DILocation(line: 186, column: 18, scope: !157)
!277 = !DILocation(line: 186, column: 46, scope: !157)
!278 = !{!279, !279, i64 0}
!279 = !{!"_Bool", !203, i64 0}
!280 = !DILocation(line: 187, column: 2, scope: !157)
!281 = !DILocation(line: 187, column: 49, scope: !157)
!282 = !DILocation(line: 189, column: 2, scope: !157)
!283 = !DILocation(line: 190, column: 1, scope: !157)
!284 = !DISubprogram(name: "lzma_strm_init", scope: !33, file: !33, line: 220, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!59, !160}
!287 = !{}
!288 = !DILocation(line: 0, scope: !208)
!289 = !DILocation(line: 153, column: 2, scope: !219)
!290 = !DILocation(line: 153, column: 2, scope: !220)
!291 = !DILocation(line: 155, column: 15, scope: !225)
!292 = !DILocation(line: 155, column: 6, scope: !208)
!293 = !DILocation(line: 158, column: 12, scope: !228)
!294 = !DILocation(line: 158, column: 6, scope: !208)
!295 = !DILocation(line: 161, column: 12, scope: !231)
!296 = !DILocation(line: 161, column: 18, scope: !231)
!297 = !DILocation(line: 161, column: 6, scope: !208)
!298 = !DILocation(line: 162, column: 17, scope: !236)
!299 = !DILocation(line: 162, column: 15, scope: !236)
!300 = !DILocation(line: 163, column: 19, scope: !239)
!301 = !DILocation(line: 163, column: 7, scope: !236)
!302 = !DILocation(line: 166, column: 9, scope: !236)
!303 = !DILocation(line: 166, column: 14, scope: !236)
!304 = !DILocation(line: 167, column: 9, scope: !236)
!305 = !DILocation(line: 167, column: 13, scope: !236)
!306 = !DILocation(line: 168, column: 9, scope: !236)
!307 = !DILocation(line: 168, column: 19, scope: !236)
!308 = !DILocation(line: 169, column: 9, scope: !236)
!309 = !DILocation(line: 169, column: 19, scope: !236)
!310 = !DILocation(line: 170, column: 47, scope: !236)
!311 = !DILocation(line: 173, column: 31, scope: !208)
!312 = !DILocation(line: 171, column: 2, scope: !236)
!313 = !DILocation(line: 173, column: 39, scope: !208)
!314 = !DILocation(line: 173, column: 48, scope: !208)
!315 = !DILocation(line: 174, column: 39, scope: !208)
!316 = !DILocation(line: 174, column: 45, scope: !208)
!317 = !DILocation(line: 175, column: 39, scope: !208)
!318 = !DILocation(line: 175, column: 48, scope: !208)
!319 = !DILocation(line: 177, column: 2, scope: !208)
!320 = !DILocation(line: 178, column: 1, scope: !208)
!321 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !160}
!324 = !DISubprogram(name: "lzma_next_end", scope: !33, file: !33, line: 237, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !211, !60}
!327 = !DISubprogram(name: "lzma_alloc", scope: !33, file: !33, line: 211, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!328 = !DISubroutineType(types: !329)
!329 = !{!68, !69, !60}
!330 = distinct !DISubprogram(name: "auto_decode", scope: !135, file: !135, line: 33, type: !57, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !347, !350}
!332 = !DILocalVariable(name: "pcoder", arg: 1, scope: !330, file: !135, line: 33, type: !41)
!333 = !DILocalVariable(name: "allocator", arg: 2, scope: !330, file: !135, line: 33, type: !60)
!334 = !DILocalVariable(name: "in", arg: 3, scope: !330, file: !135, line: 34, type: !76)
!335 = !DILocalVariable(name: "in_pos", arg: 4, scope: !330, file: !135, line: 34, type: !82)
!336 = !DILocalVariable(name: "in_size", arg: 5, scope: !330, file: !135, line: 35, type: !69)
!337 = !DILocalVariable(name: "out", arg: 6, scope: !330, file: !135, line: 35, type: !84)
!338 = !DILocalVariable(name: "out_pos", arg: 7, scope: !330, file: !135, line: 36, type: !82)
!339 = !DILocalVariable(name: "out_size", arg: 8, scope: !330, file: !135, line: 36, type: !69)
!340 = !DILocalVariable(name: "action", arg: 9, scope: !330, file: !135, line: 36, type: !86)
!341 = !DILocalVariable(name: "coder", scope: !330, file: !135, line: 38, type: !149)
!342 = !DILocalVariable(name: "ret_", scope: !343, file: !135, line: 53, type: !192)
!343 = distinct !DILexicalBlock(scope: !344, file: !135, line: 53, column: 4)
!344 = distinct !DILexicalBlock(scope: !345, file: !135, line: 52, column: 28)
!345 = distinct !DILexicalBlock(scope: !346, file: !135, line: 52, column: 7)
!346 = distinct !DILexicalBlock(scope: !330, file: !135, line: 39, column: 27)
!347 = !DILocalVariable(name: "ret_", scope: !348, file: !135, line: 57, type: !192)
!348 = distinct !DILexicalBlock(scope: !349, file: !135, line: 57, column: 4)
!349 = distinct !DILexicalBlock(scope: !345, file: !135, line: 56, column: 10)
!350 = !DILocalVariable(name: "ret", scope: !351, file: !135, line: 74, type: !192)
!351 = distinct !DILexicalBlock(scope: !346, file: !135, line: 73, column: 17)
!352 = !DILocation(line: 0, scope: !330)
!353 = !DILocation(line: 39, column: 17, scope: !330)
!354 = !DILocation(line: 39, column: 2, scope: !330)
!355 = !DILocation(line: 41, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !346, file: !135, line: 41, column: 7)
!357 = !DILocation(line: 41, column: 15, scope: !356)
!358 = !DILocation(line: 41, column: 7, scope: !346)
!359 = !DILocation(line: 46, column: 19, scope: !346)
!360 = !DILocation(line: 52, column: 7, scope: !345)
!361 = !{!203, !203, i64 0}
!362 = !DILocation(line: 52, column: 19, scope: !345)
!363 = !DILocation(line: 0, scope: !345)
!364 = !DILocation(line: 52, column: 7, scope: !346)
!365 = !DILocation(line: 53, column: 4, scope: !343)
!366 = !DILocation(line: 0, scope: !343)
!367 = !DILocation(line: 53, column: 4, scope: !368)
!368 = distinct !DILexicalBlock(scope: !343, file: !135, line: 53, column: 4)
!369 = !DILocation(line: 57, column: 4, scope: !348)
!370 = !DILocation(line: 0, scope: !348)
!371 = !DILocation(line: 57, column: 4, scope: !372)
!372 = distinct !DILexicalBlock(scope: !348, file: !135, line: 57, column: 4)
!373 = !DILocation(line: 64, column: 15, scope: !374)
!374 = distinct !DILexicalBlock(scope: !349, file: !135, line: 64, column: 8)
!375 = !DILocation(line: 64, column: 21, scope: !374)
!376 = !DILocation(line: 64, column: 8, scope: !349)
!377 = !DILocation(line: 67, column: 21, scope: !378)
!378 = distinct !DILexicalBlock(scope: !349, file: !135, line: 67, column: 8)
!379 = !DILocation(line: 67, column: 8, scope: !349)
!380 = !DILocation(line: 74, column: 36, scope: !351)
!381 = !{!267, !202, i64 24}
!382 = !DILocation(line: 75, column: 17, scope: !351)
!383 = !{!267, !202, i64 0}
!384 = !DILocation(line: 74, column: 24, scope: !351)
!385 = !DILocation(line: 0, scope: !351)
!386 = !DILocation(line: 78, column: 11, scope: !387)
!387 = distinct !DILexicalBlock(scope: !351, file: !135, line: 78, column: 7)
!388 = !DILocation(line: 79, column: 5, scope: !387)
!389 = !DILocation(line: 79, column: 16, scope: !387)
!390 = !DILocation(line: 79, column: 22, scope: !387)
!391 = !DILocation(line: 79, column: 43, scope: !387)
!392 = !DILocation(line: 78, column: 7, scope: !351)
!393 = !DILocation(line: 82, column: 19, scope: !351)
!394 = !DILocation(line: 91, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !346, file: !135, line: 91, column: 7)
!396 = !DILocation(line: 91, column: 15, scope: !395)
!397 = !DILocation(line: 91, column: 7, scope: !346)
!398 = !DILocation(line: 94, column: 17, scope: !346)
!399 = !DILocation(line: 94, column: 10, scope: !346)
!400 = !DILocation(line: 94, column: 3, scope: !346)
!401 = !DILocation(line: 0, scope: !346)
!402 = !DILocation(line: 100, column: 1, scope: !330)
!403 = distinct !DISubprogram(name: "auto_decoder_end", scope: !135, file: !135, line: 104, type: !90, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !404)
!404 = !{!405, !406, !407}
!405 = !DILocalVariable(name: "pcoder", arg: 1, scope: !403, file: !135, line: 104, type: !41)
!406 = !DILocalVariable(name: "allocator", arg: 2, scope: !403, file: !135, line: 104, type: !60)
!407 = !DILocalVariable(name: "coder", scope: !403, file: !135, line: 106, type: !149)
!408 = !DILocation(line: 0, scope: !403)
!409 = !DILocation(line: 107, column: 2, scope: !403)
!410 = !DILocation(line: 108, column: 2, scope: !403)
!411 = !DILocation(line: 110, column: 1, scope: !403)
!412 = distinct !DISubprogram(name: "auto_decoder_get_check", scope: !135, file: !135, line: 114, type: !94, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !413)
!413 = !{!414, !415}
!414 = !DILocalVariable(name: "pcoder", arg: 1, scope: !412, file: !135, line: 114, type: !97)
!415 = !DILocalVariable(name: "coder", scope: !412, file: !135, line: 116, type: !416)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!418 = !DILocation(line: 0, scope: !412)
!419 = !DILocation(line: 118, column: 21, scope: !412)
!420 = !{!267, !202, i64 40}
!421 = !DILocation(line: 118, column: 31, scope: !412)
!422 = !DILocation(line: 118, column: 9, scope: !412)
!423 = !DILocation(line: 119, column: 40, scope: !412)
!424 = !DILocation(line: 119, column: 6, scope: !412)
!425 = !DILocation(line: 118, column: 2, scope: !412)
!426 = distinct !DISubprogram(name: "auto_decoder_memconfig", scope: !135, file: !135, line: 124, type: !101, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !427)
!427 = !{!428, !429, !430, !431, !432, !433}
!428 = !DILocalVariable(name: "pcoder", arg: 1, scope: !426, file: !135, line: 124, type: !41)
!429 = !DILocalVariable(name: "memusage", arg: 2, scope: !426, file: !135, line: 124, type: !103)
!430 = !DILocalVariable(name: "old_memlimit", arg: 3, scope: !426, file: !135, line: 125, type: !103)
!431 = !DILocalVariable(name: "new_memlimit", arg: 4, scope: !426, file: !135, line: 125, type: !46)
!432 = !DILocalVariable(name: "ret", scope: !426, file: !135, line: 127, type: !59)
!433 = !DILocalVariable(name: "coder", scope: !426, file: !135, line: 128, type: !149)
!434 = !DILocation(line: 0, scope: !426)
!435 = !DILocation(line: 130, column: 18, scope: !436)
!436 = distinct !DILexicalBlock(scope: !426, file: !135, line: 130, column: 6)
!437 = !{!267, !202, i64 48}
!438 = !DILocation(line: 130, column: 28, scope: !436)
!439 = !DILocation(line: 130, column: 6, scope: !426)
!440 = !DILocation(line: 131, column: 43, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !135, line: 130, column: 37)
!442 = !DILocation(line: 131, column: 9, scope: !441)
!443 = !DILocation(line: 134, column: 2, scope: !441)
!444 = !DILocation(line: 137, column: 13, scope: !445)
!445 = distinct !DILexicalBlock(scope: !436, file: !135, line: 134, column: 9)
!446 = !DILocation(line: 138, column: 26, scope: !445)
!447 = !DILocation(line: 138, column: 17, scope: !445)
!448 = !DILocation(line: 0, scope: !436)
!449 = !DILocation(line: 142, column: 10, scope: !450)
!450 = distinct !DILexicalBlock(scope: !426, file: !135, line: 142, column: 6)
!451 = !DILocation(line: 142, column: 21, scope: !450)
!452 = !DILocation(line: 143, column: 10, scope: !450)
!453 = !DILocation(line: 143, column: 19, scope: !450)
!454 = !DILocation(line: 143, column: 3, scope: !450)
!455 = !DILocation(line: 145, column: 2, scope: !426)
!456 = !DISubprogram(name: "lzma_stream_decoder_init", scope: !457, file: !457, line: 18, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!457 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/stream_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "82f2a7f1e50521ce1ad27540f4230cca")
!458 = !DISubprogram(name: "lzma_alone_decoder_init", scope: !459, file: !459, line: 19, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!459 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/alone_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "203183a4127ab5050dfd29f01fbfc121")
!460 = !DISubroutineType(types: !461)
!461 = !{!59, !211, !60, !46, !120}
!462 = !DISubprogram(name: "lzma_free", scope: !33, file: !33, line: 215, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !287)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !68, !60}
