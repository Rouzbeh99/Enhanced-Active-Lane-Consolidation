; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/simple/simple_coder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/simple/simple_coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i8, i8, ptr, ptr, i32, i64, i64, i64, i64, [0 x i8] }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_coder_init(ptr nocapture noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef %filter, i64 noundef %simple_size, i64 noundef %unfiltered_max, i32 noundef %alignment, i1 noundef zeroext %is_encoder) local_unnamed_addr #0 !dbg !147 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !165, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !166, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata ptr %filters, metadata !167, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata ptr %filter, metadata !168, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 %simple_size, metadata !169, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 %unfiltered_max, metadata !170, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i32 %alignment, metadata !171, metadata !DIExpression()), !dbg !183
  %frombool = zext i1 %is_encoder to i8
  call void @llvm.dbg.value(metadata i8 %frombool, metadata !172, metadata !DIExpression()), !dbg !183
  %0 = load ptr, ptr %next, align 8, !dbg !184, !tbaa !186
  %cmp = icmp eq ptr %0, null, !dbg !192
  br i1 %cmp, label %if.then, label %if.end27, !dbg !193

if.then:                                          ; preds = %entry
  %mul = shl i64 %unfiltered_max, 1, !dbg !194
  %add = add i64 %mul, 128, !dbg !196
  %call = tail call ptr @lzma_alloc(i64 noundef %add, ptr noundef %allocator) #6, !dbg !197
  store ptr %call, ptr %next, align 8, !dbg !198, !tbaa !186
  %cmp3 = icmp eq ptr %call, null, !dbg !199
  br i1 %cmp3, label %return, label %if.end, !dbg !201

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !202
  store ptr @simple_code, ptr %code, align 8, !dbg !203, !tbaa !204
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !205
  store ptr @simple_coder_end, ptr %end, align 8, !dbg !206, !tbaa !207
  %update = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 7, !dbg !208
  store ptr @simple_coder_update, ptr %update, align 8, !dbg !209, !tbaa !210
  store ptr null, ptr %call, align 8, !dbg !211, !tbaa.struct !212
  %.compoundliteral.sroa.2.0.next6.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8, !dbg !211
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next6.sroa_idx, align 8, !dbg !211, !tbaa.struct !215
  %.compoundliteral.sroa.3.0.next6.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16, !dbg !211
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next6.sroa_idx, i8 0, i64 48, i1 false), !dbg !211
  %1 = load ptr, ptr %next, align 8, !dbg !216, !tbaa !186
  %filter12 = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 3, !dbg !217
  store ptr %filter, ptr %filter12, align 8, !dbg !218, !tbaa !213
  %2 = load ptr, ptr %next, align 8, !dbg !219, !tbaa !186
  %allocated = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 6, !dbg !220
  store i64 %mul, ptr %allocated, align 8, !dbg !221, !tbaa !214
  %cmp15.not = icmp eq i64 %simple_size, 0, !dbg !222
  br i1 %cmp15.not, label %if.else, label %if.then16, !dbg !224

if.then16:                                        ; preds = %if.end
  %call17 = tail call ptr @lzma_alloc(i64 noundef %simple_size, ptr noundef %allocator) #6, !dbg !225
  %3 = load ptr, ptr %next, align 8, !dbg !227, !tbaa !186
  %simple = getelementptr inbounds %struct.lzma_coder_s, ptr %3, i64 0, i32 4, !dbg !228
  store ptr %call17, ptr %simple, align 8, !dbg !229, !tbaa !213
  %4 = load ptr, ptr %next, align 8, !dbg !230, !tbaa !186
  %simple20 = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 4, !dbg !232
  %5 = load ptr, ptr %simple20, align 8, !dbg !232, !tbaa !213
  %cmp21 = icmp eq ptr %5, null, !dbg !233
  br i1 %cmp21, label %return, label %if.end27, !dbg !234

if.else:                                          ; preds = %if.end
  %simple25 = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 4, !dbg !235
  store ptr null, ptr %simple25, align 8, !dbg !237, !tbaa !213
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then16, %entry
  %options = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 0, i32 2, !dbg !238
  %6 = load ptr, ptr %options, align 8, !dbg !238, !tbaa !239
  %cmp28.not = icmp eq ptr %6, null, !dbg !241
  br i1 %cmp28.not, label %if.else38, label %if.then29, !dbg !242

if.then29:                                        ; preds = %if.end27
  call void @llvm.dbg.value(metadata ptr %6, metadata !173, metadata !DIExpression()), !dbg !243
  %7 = load i32, ptr %6, align 4, !dbg !244, !tbaa !245
  %8 = load ptr, ptr %next, align 8, !dbg !248, !tbaa !186
  %now_pos = getelementptr inbounds %struct.lzma_coder_s, ptr %8, i64 0, i32 5, !dbg !249
  store i32 %7, ptr %now_pos, align 8, !dbg !250, !tbaa !251
  %sub = add i32 %alignment, -1, !dbg !252
  %and = and i32 %7, %sub, !dbg !254
  %tobool.not = icmp eq i32 %and, 0, !dbg !254
  br i1 %tobool.not, label %if.end41, label %return

if.else38:                                        ; preds = %if.end27
  %9 = load ptr, ptr %next, align 8, !dbg !255, !tbaa !186
  %now_pos40 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 5, !dbg !257
  store i32 0, ptr %now_pos40, align 8, !dbg !258, !tbaa !251
  br label %if.end41

if.end41:                                         ; preds = %if.then29, %if.else38
  %10 = phi ptr [ %8, %if.then29 ], [ %9, %if.else38 ], !dbg !259
  %is_encoder44 = getelementptr inbounds %struct.lzma_coder_s, ptr %10, i64 0, i32 2, !dbg !260
  store i8 %frombool, ptr %is_encoder44, align 1, !dbg !261, !tbaa !262
  %end_was_reached = getelementptr inbounds %struct.lzma_coder_s, ptr %10, i64 0, i32 1, !dbg !264
  store i8 0, ptr %end_was_reached, align 8, !dbg !265, !tbaa !262
  %pos = getelementptr inbounds %struct.lzma_coder_s, ptr %10, i64 0, i32 7, !dbg !266
  %add.ptr = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 1, !dbg !267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %pos, i8 0, i64 24, i1 false), !dbg !268
  %call52 = tail call i32 @lzma_next_filter_init(ptr noundef nonnull %10, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #6, !dbg !269
  br label %return, !dbg !270

return:                                           ; preds = %if.then29, %if.then16, %if.then, %if.end41
  %retval.1 = phi i32 [ 8, %if.then29 ], [ %call52, %if.end41 ], [ 5, %if.then ], [ 5, %if.then16 ], !dbg !183
  ret i32 %retval.1, !dbg !271
}

declare !dbg !272 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @simple_code(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !276 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !278, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !279, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %in, metadata !280, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !281, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !282, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %out, metadata !283, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !284, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !285, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 %action, metadata !286, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !287, metadata !DIExpression()), !dbg !304
  %cmp = icmp eq i32 %action, 1, !dbg !305
  br i1 %cmp, label %cleanup106, label %if.end, !dbg !307

if.end:                                           ; preds = %entry
  %pos = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7, !dbg !308
  %0 = load i64, ptr %pos, align 8, !dbg !308, !tbaa !214
  %filtered = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 8, !dbg !310
  %1 = load i64, ptr %filtered, align 8, !dbg !310, !tbaa !214
  %cmp1 = icmp ult i64 %0, %1, !dbg !311
  br i1 %cmp1, label %if.then2, label %if.end12, !dbg !312

if.then2:                                         ; preds = %if.end
  %buffer = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, !dbg !313
  %call = tail call i64 @lzma_bufcpy(ptr noundef nonnull %buffer, ptr noundef nonnull %pos, i64 noundef %1, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #6, !dbg !315
  %2 = load i64, ptr %pos, align 8, !dbg !316, !tbaa !214
  %3 = load i64, ptr %filtered, align 8, !dbg !318, !tbaa !214
  %cmp7 = icmp ult i64 %2, %3, !dbg !319
  br i1 %cmp7, label %cleanup106, label %if.end9, !dbg !320

if.end9:                                          ; preds = %if.then2
  %end_was_reached = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !321
  %4 = load i8, ptr %end_was_reached, align 8, !dbg !321, !tbaa !262, !range !323
  %tobool.not = icmp eq i8 %4, 0, !dbg !321
  br i1 %tobool.not, label %if.end12, label %cleanup106, !dbg !324

if.end12:                                         ; preds = %if.end9, %if.end
  %5 = phi i64 [ %0, %if.end ], [ %2, %if.end9 ], !dbg !325
  store i64 0, ptr %filtered, align 8, !dbg !326, !tbaa !214
  %6 = load i64, ptr %out_pos, align 8, !dbg !327, !tbaa !214
  %sub = sub i64 %out_size, %6, !dbg !328
  call void @llvm.dbg.value(metadata i64 %sub, metadata !288, metadata !DIExpression()), !dbg !304
  %size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, !dbg !329
  %7 = load i64, ptr %size, align 8, !dbg !329, !tbaa !214
  %sub15 = sub i64 %7, %5, !dbg !330
  call void @llvm.dbg.value(metadata i64 %sub15, metadata !290, metadata !DIExpression()), !dbg !304
  %cmp16 = icmp ugt i64 %sub, %sub15, !dbg !331
  %cmp17 = icmp eq i64 %7, %5
  %or.cond = or i1 %cmp17, %cmp16, !dbg !332
  br i1 %or.cond, label %if.then18, label %if.else50, !dbg !332

if.then18:                                        ; preds = %if.end12
  call void @llvm.dbg.value(metadata i64 %6, metadata !291, metadata !DIExpression()), !dbg !333
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %6, !dbg !334
  %buffer19 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, !dbg !335
  %add.ptr22 = getelementptr inbounds i8, ptr %buffer19, i64 %5, !dbg !336
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr nonnull align 1 %add.ptr22, i64 %sub15, i1 false), !dbg !337
  %add = add i64 %sub15, %6, !dbg !338
  store i64 %add, ptr %out_pos, align 8, !dbg !338, !tbaa !214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339), !dbg !342
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !343, metadata !DIExpression()) #6, !dbg !358
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !346, metadata !DIExpression()) #6, !dbg !358
  call void @llvm.dbg.value(metadata ptr %in, metadata !347, metadata !DIExpression()) #6, !dbg !358
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !348, metadata !DIExpression()) #6, !dbg !358
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !349, metadata !DIExpression()) #6, !dbg !358
  call void @llvm.dbg.value(metadata ptr %out, metadata !350, metadata !DIExpression()) #6, !dbg !358
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !351, metadata !DIExpression()) #6, !dbg !358
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !352, metadata !DIExpression()) #6, !dbg !358
  call void @llvm.dbg.value(metadata i32 %action, metadata !353, metadata !DIExpression()) #6, !dbg !358
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !354, metadata !DIExpression()) #6, !dbg !358
  %code.i = getelementptr inbounds %struct.lzma_next_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !360
  %8 = load ptr, ptr %code.i, align 8, !dbg !360, !tbaa !204, !noalias !361
  %cmp.i = icmp eq ptr %8, null, !dbg !365
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !366

if.then.i:                                        ; preds = %if.then18
  %call.i = tail call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #6, !dbg !367
  %is_encoder.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !369
  %9 = load i8, ptr %is_encoder.i, align 1, !dbg !369, !tbaa !262, !range !323, !noalias !361
  %tobool.i = icmp ne i8 %9, 0, !dbg !369
  %cmp1.i = icmp eq i32 %action, 3
  %or.cond.i = and i1 %cmp1.i, %tobool.i, !dbg !371
  br i1 %or.cond.i, label %land.lhs.true2.i, label %cleanup.cont, !dbg !371

land.lhs.true2.i:                                 ; preds = %if.then.i
  %10 = load i64, ptr %in_pos, align 8, !dbg !372, !tbaa !214, !alias.scope !339, !noalias !373
  %cmp3.i = icmp eq i64 %10, %in_size, !dbg !374
  br i1 %cmp3.i, label %cleanup.cont.sink.split, label %cleanup.cont, !dbg !375

if.else.i:                                        ; preds = %if.then18
  %11 = load ptr, ptr %pcoder, align 8, !dbg !376, !tbaa !186, !noalias !361
  %call9.i = tail call i32 %8(ptr noundef %11, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #6, !dbg !377
  call void @llvm.dbg.value(metadata i32 %call9.i, metadata !355, metadata !DIExpression()) #6, !dbg !378
  switch i32 %call9.i, label %cleanup106 [
    i32 1, label %cleanup.cont.sink.split
    i32 0, label %cleanup.cont
  ], !dbg !379

cleanup.cont.sink.split:                          ; preds = %if.else.i, %land.lhs.true2.i
  %end_was_reached12.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !380
  store i8 1, ptr %end_was_reached12.i, align 8, !dbg !380, !tbaa !262, !noalias !361
  br label %cleanup.cont, !dbg !381

cleanup.cont:                                     ; preds = %cleanup.cont.sink.split, %if.else.i, %if.then.i, %land.lhs.true2.i
  call void @llvm.dbg.value(metadata i32 undef, metadata !294, metadata !DIExpression()), !dbg !382
  %12 = load i64, ptr %out_pos, align 8, !dbg !381, !tbaa !214
  %sub28 = sub i64 %12, %6, !dbg !383
  call void @llvm.dbg.value(metadata i64 %sub28, metadata !297, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !384, metadata !DIExpression()) #6, !dbg !393
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !389, metadata !DIExpression()) #6, !dbg !393
  call void @llvm.dbg.value(metadata i64 %sub28, metadata !390, metadata !DIExpression()) #6, !dbg !393
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !391, metadata !DIExpression()) #6, !dbg !393
  %filter.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !395
  %13 = load ptr, ptr %filter.i, align 8, !dbg !395, !tbaa !213
  %simple.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !396
  %14 = load ptr, ptr %simple.i, align 8, !dbg !396, !tbaa !213
  %now_pos.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, !dbg !397
  %15 = load i32, ptr %now_pos.i, align 8, !dbg !397, !tbaa !251
  %is_encoder.i190 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !398
  %16 = load i8, ptr %is_encoder.i190, align 1, !dbg !398, !tbaa !262, !range !323
  %tobool.i191 = icmp ne i8 %16, 0, !dbg !398
  %call.i192 = tail call i64 %13(ptr noundef %14, i32 noundef %15, i1 noundef zeroext %tobool.i191, ptr noundef %add.ptr, i64 noundef %sub28) #6, !dbg !399
  call void @llvm.dbg.value(metadata i64 %call.i192, metadata !392, metadata !DIExpression()) #6, !dbg !393
  %17 = load i32, ptr %now_pos.i, align 8, !dbg !400, !tbaa !251
  %18 = trunc i64 %call.i192 to i32, !dbg !400
  %conv2.i = add i32 %17, %18, !dbg !400
  store i32 %conv2.i, ptr %now_pos.i, align 8, !dbg !400, !tbaa !251
  call void @llvm.dbg.value(metadata i64 %call.i192, metadata !298, metadata !DIExpression()), !dbg !333
  %sub32 = sub i64 %sub28, %call.i192, !dbg !401
  call void @llvm.dbg.value(metadata i64 %sub32, metadata !299, metadata !DIExpression()), !dbg !333
  store i64 0, ptr %pos, align 8, !dbg !402, !tbaa !214
  store i64 %sub32, ptr %size, align 8, !dbg !403, !tbaa !214
  %end_was_reached35 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !404
  %19 = load i8, ptr %end_was_reached35, align 8, !dbg !404, !tbaa !262, !range !323
  %tobool36.not = icmp eq i8 %19, 0, !dbg !404
  br i1 %tobool36.not, label %if.else, label %if.end65.thread, !dbg !406

if.end65.thread:                                  ; preds = %cleanup.cont
  store i64 0, ptr %size, align 8, !dbg !407, !tbaa !214
  br label %if.end96, !dbg !409

if.else:                                          ; preds = %cleanup.cont
  %cmp39.not = icmp eq i64 %sub28, %call.i192, !dbg !410
  br i1 %cmp39.not, label %if.end65, label %if.then40, !dbg !412

if.then40:                                        ; preds = %if.else
  %20 = load i64, ptr %out_pos, align 8, !dbg !413, !tbaa !214
  %sub41 = sub i64 %20, %sub32, !dbg !413
  store i64 %sub41, ptr %out_pos, align 8, !dbg !413, !tbaa !214
  %add.ptr44 = getelementptr inbounds i8, ptr %out, i64 %sub41, !dbg !415
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %buffer19, ptr align 1 %add.ptr44, i64 %sub32, i1 false), !dbg !416
  br label %if.end65, !dbg !417

if.else50:                                        ; preds = %if.end12
  %cmp52.not = icmp eq i64 %5, 0, !dbg !418
  br i1 %cmp52.not, label %if.end65, label %if.then53, !dbg !420

if.then53:                                        ; preds = %if.else50
  %buffer54 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, !dbg !421
  %add.ptr59 = getelementptr inbounds i8, ptr %buffer54, i64 %5, !dbg !423
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %buffer54, ptr nonnull align 1 %add.ptr59, i64 %sub15, i1 false), !dbg !424
  store i64 %sub15, ptr %size, align 8, !dbg !425, !tbaa !214
  store i64 0, ptr %pos, align 8, !dbg !426, !tbaa !214
  br label %if.end65, !dbg !427

if.end65:                                         ; preds = %if.else, %if.then40, %if.else50, %if.then53
  %21 = phi i64 [ %sub15, %if.then53 ], [ %7, %if.else50 ], [ %sub32, %if.then40 ], [ %sub32, %if.else ], !dbg !428
  %cmp67.not = icmp eq i64 %21, 0, !dbg !429
  br i1 %cmp67.not, label %if.end96, label %if.then68, !dbg !409

if.then68:                                        ; preds = %if.end65
  %buffer70 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, !dbg !430
  %allocated = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6, !dbg !431
  %22 = load i64, ptr %allocated, align 8, !dbg !431, !tbaa !214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432), !dbg !435
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !343, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !346, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata ptr %in, metadata !347, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !348, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !349, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata ptr %buffer70, metadata !350, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata ptr %size, metadata !351, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata i64 %22, metadata !352, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata i32 %action, metadata !353, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !354, metadata !DIExpression()) #6, !dbg !436
  %code.i193 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !438
  %23 = load ptr, ptr %code.i193, align 8, !dbg !438, !tbaa !204, !noalias !439
  %cmp.i194 = icmp eq ptr %23, null, !dbg !443
  br i1 %cmp.i194, label %if.then.i200, label %if.else.i206, !dbg !444

if.then.i200:                                     ; preds = %if.then68
  %call.i195 = tail call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer70, ptr noundef nonnull %size, i64 noundef %22) #6, !dbg !445
  %is_encoder.i196 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !446
  %24 = load i8, ptr %is_encoder.i196, align 1, !dbg !446, !tbaa !262, !range !323, !noalias !439
  %tobool.i197 = icmp ne i8 %24, 0, !dbg !446
  %cmp1.i198 = icmp eq i32 %action, 3
  %or.cond.i199 = and i1 %cmp1.i198, %tobool.i197, !dbg !447
  br i1 %or.cond.i199, label %land.lhs.true2.i202, label %cleanup.cont79, !dbg !447

land.lhs.true2.i202:                              ; preds = %if.then.i200
  %25 = load i64, ptr %in_pos, align 8, !dbg !448, !tbaa !214, !alias.scope !432, !noalias !449
  %cmp3.i201 = icmp eq i64 %25, %in_size, !dbg !450
  br i1 %cmp3.i201, label %cleanup.cont79.sink.split, label %cleanup.cont79, !dbg !451

if.else.i206:                                     ; preds = %if.then68
  %26 = load ptr, ptr %pcoder, align 8, !dbg !452, !tbaa !186, !noalias !439
  %call9.i205 = tail call i32 %23(ptr noundef %26, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer70, ptr noundef nonnull %size, i64 noundef %22, i32 noundef %action) #6, !dbg !453
  call void @llvm.dbg.value(metadata i32 %call9.i205, metadata !355, metadata !DIExpression()) #6, !dbg !454
  switch i32 %call9.i205, label %cleanup106 [
    i32 1, label %cleanup.cont79.sink.split
    i32 0, label %cleanup.cont79
  ], !dbg !455

cleanup.cont79.sink.split:                        ; preds = %if.else.i206, %land.lhs.true2.i202
  %end_was_reached12.i207 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !456
  store i8 1, ptr %end_was_reached12.i207, align 8, !dbg !456, !tbaa !262, !noalias !439
  br label %cleanup.cont79, !dbg !457

cleanup.cont79:                                   ; preds = %cleanup.cont79.sink.split, %if.else.i206, %if.then.i200, %land.lhs.true2.i202
  call void @llvm.dbg.value(metadata i32 %call9.i205, metadata !300, metadata !DIExpression()), !dbg !458
  %27 = load i64, ptr %size, align 8, !dbg !457, !tbaa !214
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !384, metadata !DIExpression()) #6, !dbg !459
  call void @llvm.dbg.value(metadata ptr %buffer70, metadata !389, metadata !DIExpression()) #6, !dbg !459
  call void @llvm.dbg.value(metadata i64 %27, metadata !390, metadata !DIExpression()) #6, !dbg !459
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !391, metadata !DIExpression()) #6, !dbg !459
  %filter.i212 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !461
  %28 = load ptr, ptr %filter.i212, align 8, !dbg !461, !tbaa !213
  %simple.i213 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !462
  %29 = load ptr, ptr %simple.i213, align 8, !dbg !462, !tbaa !213
  %now_pos.i214 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, !dbg !463
  %30 = load i32, ptr %now_pos.i214, align 8, !dbg !463, !tbaa !251
  %is_encoder.i215 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !464
  %31 = load i8, ptr %is_encoder.i215, align 1, !dbg !464, !tbaa !262, !range !323
  %tobool.i216 = icmp ne i8 %31, 0, !dbg !464
  %call.i217 = tail call i64 %28(ptr noundef %29, i32 noundef %30, i1 noundef zeroext %tobool.i216, ptr noundef nonnull %buffer70, i64 noundef %27) #6, !dbg !465
  call void @llvm.dbg.value(metadata i64 %call.i217, metadata !392, metadata !DIExpression()) #6, !dbg !459
  %32 = load i32, ptr %now_pos.i214, align 8, !dbg !466, !tbaa !251
  %33 = trunc i64 %call.i217 to i32, !dbg !466
  %conv2.i218 = add i32 %32, %33, !dbg !466
  store i32 %conv2.i218, ptr %now_pos.i214, align 8, !dbg !466, !tbaa !251
  store i64 %call.i217, ptr %filtered, align 8, !dbg !467, !tbaa !214
  %end_was_reached85 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !468
  %34 = load i8, ptr %end_was_reached85, align 8, !dbg !468, !tbaa !262, !range !323
  %tobool86.not = icmp eq i8 %34, 0, !dbg !468
  br i1 %tobool86.not, label %if.end90, label %if.then87, !dbg !470

if.then87:                                        ; preds = %cleanup.cont79
  %35 = load i64, ptr %size, align 8, !dbg !471, !tbaa !214
  store i64 %35, ptr %filtered, align 8, !dbg !472, !tbaa !214
  br label %if.end90, !dbg !473

if.end90:                                         ; preds = %if.then87, %cleanup.cont79
  %36 = phi i64 [ %35, %if.then87 ], [ %call.i217, %cleanup.cont79 ], !dbg !474
  %call95 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %buffer70, ptr noundef nonnull %pos, i64 noundef %36, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #6, !dbg !475
  br label %if.end96, !dbg !476

if.end96:                                         ; preds = %if.end65.thread, %if.end90, %if.end65
  %end_was_reached97 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !477
  %37 = load i8, ptr %end_was_reached97, align 8, !dbg !477, !tbaa !262, !range !323
  %tobool98.not = icmp eq i8 %37, 0, !dbg !477
  br i1 %tobool98.not, label %if.end103, label %land.lhs.true, !dbg !479

land.lhs.true:                                    ; preds = %if.end96
  %38 = load i64, ptr %pos, align 8, !dbg !480, !tbaa !214
  %39 = load i64, ptr %size, align 8, !dbg !481, !tbaa !214
  %cmp101 = icmp eq i64 %38, %39, !dbg !482
  br i1 %cmp101, label %cleanup106, label %if.end103, !dbg !483

if.end103:                                        ; preds = %land.lhs.true, %if.end96
  br label %cleanup106, !dbg !484

cleanup106:                                       ; preds = %if.else.i206, %if.else.i, %if.end103, %land.lhs.true, %if.end9, %if.then2, %entry
  %retval.4 = phi i32 [ 8, %entry ], [ 0, %if.then2 ], [ 1, %if.end9 ], [ 0, %if.end103 ], [ 1, %land.lhs.true ], [ %call9.i, %if.else.i ], [ %call9.i205, %if.else.i206 ], !dbg !304
  ret i32 %retval.4, !dbg !485
}

; Function Attrs: nounwind uwtable
define internal void @simple_coder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !486 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !488, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !489, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !490, metadata !DIExpression()), !dbg !491
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #6, !dbg !492
  %simple = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !493
  %0 = load ptr, ptr %simple, align 8, !dbg !493, !tbaa !213
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #6, !dbg !494
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #6, !dbg !495
  ret void, !dbg !496
}

; Function Attrs: nounwind uwtable
define internal i32 @simple_coder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr nocapture noundef readnone %filters_null, ptr noundef %reversed_filters) #0 !dbg !497 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !499, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !500, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata ptr %filters_null, metadata !501, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata ptr %reversed_filters, metadata !502, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !503, metadata !DIExpression()), !dbg !504
  %add.ptr = getelementptr inbounds %struct.lzma_filter, ptr %reversed_filters, i64 1, !dbg !505
  %call = tail call i32 @lzma_next_filter_update(ptr noundef %pcoder, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #6, !dbg !506
  ret i32 %call, !dbg !507
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !508 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !509 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

declare !dbg !512 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !515 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !518 i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/simple/simple_coder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "3e67190b93c2e77773d54577efadbe6e")
!2 = !{!3, !19, !25}
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
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !36, line: 21, size: 1024, elements: !37)
!36 = !DIFile(filename: "apps/557.xz_r/src/liblzma/simple/simple_private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2921a659cca72849047c4661dc5d5b7e")
!37 = !{!38, !118, !120, !121, !130, !131, !132, !133, !134, !135, !136}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !35, file: !36, line: 23, baseType: !39, size: 512)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !40, line: 80, baseType: !41)
!40 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !40, line: 124, size: 512, elements: !42)
!42 = !{!43, !46, !54, !57, !89, !94, !101, !106}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !41, file: !40, line: 126, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !40, line: 78, baseType: null)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !41, file: !40, line: 130, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !48, line: 63, baseType: !49)
!48 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 27, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 45, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !41, file: !40, line: 136, baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !56, line: 90, baseType: !53)
!56 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!57 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !41, file: !40, line: 139, baseType: !58, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !40, line: 94, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !44, !63, !78, !84, !71, !86, !84, !71, !88}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !66)
!66 = !{!67, !73, !77}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !65, file: !4, line: 376, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!33, !33, !71, !71}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !53)
!72 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !65, file: !4, line: 390, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !33, !33}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !65, file: !4, line: 401, baseType: !33, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !83)
!83 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !41, file: !40, line: 144, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !40, line: 102, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !44, !63}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !41, file: !40, line: 148, baseType: !95, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !41, file: !40, line: 152, baseType: !102, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!62, !44, !105, !105, !49}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !41, file: !40, line: 157, baseType: !107, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!62, !44, !63, !110, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !113, line: 65, baseType: !114)
!113 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 43, size: 128, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !114, file: !113, line: 54, baseType: !47, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !114, file: !113, line: 63, baseType: !33, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "end_was_reached", scope: !35, file: !36, line: 26, baseType: !119, size: 8, offset: 512)
!119 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "is_encoder", scope: !35, file: !36, line: 32, baseType: !119, size: 8, offset: 520)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !35, file: !36, line: 36, baseType: !122, size: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!71, !125, !128, !119, !87, !71}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_simple", file: !36, line: 19, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_simple_s", file: !36, line: 19, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !5)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "simple", scope: !35, file: !36, line: 41, baseType: !125, size: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "now_pos", scope: !35, file: !36, line: 46, baseType: !128, size: 32, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !35, file: !36, line: 49, baseType: !71, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !35, file: !36, line: 53, baseType: !71, size: 64, offset: 832)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !35, file: !36, line: 57, baseType: !71, size: 64, offset: 896)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !35, file: !36, line: 61, baseType: !71, size: 64, offset: 960)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !35, file: !36, line: 64, baseType: !137, offset: 1024)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: -1)
!140 = !{i32 7, !"Dwarf Version", i32 5}
!141 = !{i32 2, !"Debug Info Version", i32 3}
!142 = !{i32 1, !"wchar_size", i32 4}
!143 = !{i32 7, !"PIC Level", i32 2}
!144 = !{i32 7, !"PIE Level", i32 2}
!145 = !{i32 7, !"uwtable", i32 2}
!146 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!147 = distinct !DISubprogram(name: "lzma_simple_coder_init", scope: !148, file: !148, line: 227, type: !149, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !164)
!148 = !DIFile(filename: "apps/557.xz_r/src/liblzma/simple/simple_coder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e67190b93c2e77773d54577efadbe6e")
!149 = !DISubroutineType(types: !150)
!150 = !{!62, !151, !63, !152, !122, !71, !71, !128, !119}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !40, line: 82, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !40, line: 109, size: 192, elements: !156)
!156 = !{!157, !158, !163}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !155, file: !40, line: 112, baseType: !47, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !155, file: !40, line: 116, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !40, line: 86, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!62, !151, !63, !152}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !155, file: !40, line: 119, baseType: !33, size: 64, offset: 128)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173}
!165 = !DILocalVariable(name: "next", arg: 1, scope: !147, file: !148, line: 227, type: !151)
!166 = !DILocalVariable(name: "allocator", arg: 2, scope: !147, file: !148, line: 227, type: !63)
!167 = !DILocalVariable(name: "filters", arg: 3, scope: !147, file: !148, line: 228, type: !152)
!168 = !DILocalVariable(name: "filter", arg: 4, scope: !147, file: !148, line: 229, type: !122)
!169 = !DILocalVariable(name: "simple_size", arg: 5, scope: !147, file: !148, line: 231, type: !71)
!170 = !DILocalVariable(name: "unfiltered_max", arg: 6, scope: !147, file: !148, line: 231, type: !71)
!171 = !DILocalVariable(name: "alignment", arg: 7, scope: !147, file: !148, line: 232, type: !128)
!172 = !DILocalVariable(name: "is_encoder", arg: 8, scope: !147, file: !148, line: 232, type: !119)
!173 = !DILocalVariable(name: "simple", scope: !174, file: !148, line: 265, type: !176)
!174 = distinct !DILexicalBlock(scope: !175, file: !148, line: 264, column: 34)
!175 = distinct !DILexicalBlock(scope: !147, file: !148, line: 264, column: 6)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_bcj", file: !179, line: 90, baseType: !180)
!179 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/bcj.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a1035092336f34cf9afafbb05b1edd83")
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 73, size: 32, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "start_offset", scope: !180, file: !179, line: 88, baseType: !128, size: 32)
!183 = !DILocation(line: 0, scope: !147)
!184 = !DILocation(line: 235, column: 12, scope: !185)
!185 = distinct !DILexicalBlock(scope: !147, file: !148, line: 235, column: 6)
!186 = !{!187, !188, i64 0}
!187 = !{!"lzma_next_coder_s", !188, i64 0, !191, i64 8, !191, i64 16, !188, i64 24, !188, i64 32, !188, i64 40, !188, i64 48, !188, i64 56}
!188 = !{!"any pointer", !189, i64 0}
!189 = !{!"omnipotent char", !190, i64 0}
!190 = !{!"Simple C/C++ TBAA"}
!191 = !{!"long", !189, i64 0}
!192 = !DILocation(line: 235, column: 18, scope: !185)
!193 = !DILocation(line: 235, column: 6, scope: !147)
!194 = !DILocation(line: 241, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !185, file: !148, line: 235, column: 27)
!196 = !DILocation(line: 241, column: 5, scope: !195)
!197 = !DILocation(line: 240, column: 17, scope: !195)
!198 = !DILocation(line: 240, column: 15, scope: !195)
!199 = !DILocation(line: 242, column: 19, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !148, line: 242, column: 7)
!201 = !DILocation(line: 242, column: 7, scope: !195)
!202 = !DILocation(line: 245, column: 9, scope: !195)
!203 = !DILocation(line: 245, column: 14, scope: !195)
!204 = !{!187, !188, i64 24}
!205 = !DILocation(line: 246, column: 9, scope: !195)
!206 = !DILocation(line: 246, column: 13, scope: !195)
!207 = !{!187, !188, i64 32}
!208 = !DILocation(line: 247, column: 9, scope: !195)
!209 = !DILocation(line: 247, column: 16, scope: !195)
!210 = !{!187, !188, i64 56}
!211 = !DILocation(line: 249, column: 47, scope: !195)
!212 = !{i64 0, i64 8, !213, i64 8, i64 8, !214, i64 16, i64 8, !214, i64 24, i64 8, !213, i64 32, i64 8, !213, i64 40, i64 8, !213, i64 48, i64 8, !213, i64 56, i64 8, !213}
!213 = !{!188, !188, i64 0}
!214 = !{!191, !191, i64 0}
!215 = !{i64 0, i64 8, !214, i64 8, i64 8, !214, i64 16, i64 8, !213, i64 24, i64 8, !213, i64 32, i64 8, !213, i64 40, i64 8, !213, i64 48, i64 8, !213}
!216 = !DILocation(line: 250, column: 32, scope: !195)
!217 = !DILocation(line: 250, column: 40, scope: !195)
!218 = !DILocation(line: 250, column: 47, scope: !195)
!219 = !DILocation(line: 251, column: 32, scope: !195)
!220 = !DILocation(line: 251, column: 40, scope: !195)
!221 = !DILocation(line: 251, column: 50, scope: !195)
!222 = !DILocation(line: 254, column: 19, scope: !223)
!223 = distinct !DILexicalBlock(scope: !195, file: !148, line: 254, column: 7)
!224 = !DILocation(line: 254, column: 7, scope: !195)
!225 = !DILocation(line: 255, column: 50, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !148, line: 254, column: 24)
!227 = !DILocation(line: 255, column: 33, scope: !226)
!228 = !DILocation(line: 255, column: 41, scope: !226)
!229 = !DILocation(line: 255, column: 48, scope: !226)
!230 = !DILocation(line: 257, column: 37, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !148, line: 257, column: 8)
!232 = !DILocation(line: 257, column: 45, scope: !231)
!233 = !DILocation(line: 257, column: 52, scope: !231)
!234 = !DILocation(line: 257, column: 8, scope: !226)
!235 = !DILocation(line: 260, column: 41, scope: !236)
!236 = distinct !DILexicalBlock(scope: !223, file: !148, line: 259, column: 10)
!237 = !DILocation(line: 260, column: 48, scope: !236)
!238 = !DILocation(line: 264, column: 17, scope: !175)
!239 = !{!240, !188, i64 16}
!240 = !{!"lzma_filter_info_s", !191, i64 0, !188, i64 8, !188, i64 16}
!241 = !DILocation(line: 264, column: 25, scope: !175)
!242 = !DILocation(line: 264, column: 6, scope: !147)
!243 = !DILocation(line: 0, scope: !174)
!244 = !DILocation(line: 266, column: 58, scope: !174)
!245 = !{!246, !247, i64 0}
!246 = !{!"", !247, i64 0}
!247 = !{!"int", !189, i64 0}
!248 = !DILocation(line: 266, column: 32, scope: !174)
!249 = !DILocation(line: 266, column: 40, scope: !174)
!250 = !DILocation(line: 266, column: 48, scope: !174)
!251 = !{!247, !247, i64 0}
!252 = !DILocation(line: 267, column: 65, scope: !253)
!253 = distinct !DILexicalBlock(scope: !174, file: !148, line: 267, column: 7)
!254 = !DILocation(line: 267, column: 52, scope: !253)
!255 = !DILocation(line: 270, column: 32, scope: !256)
!256 = distinct !DILexicalBlock(scope: !175, file: !148, line: 269, column: 9)
!257 = !DILocation(line: 270, column: 40, scope: !256)
!258 = !DILocation(line: 270, column: 48, scope: !256)
!259 = !DILocation(line: 274, column: 31, scope: !147)
!260 = !DILocation(line: 274, column: 39, scope: !147)
!261 = !DILocation(line: 274, column: 50, scope: !147)
!262 = !{!263, !263, i64 0}
!263 = !{!"_Bool", !189, i64 0}
!264 = !DILocation(line: 275, column: 39, scope: !147)
!265 = !DILocation(line: 275, column: 55, scope: !147)
!266 = !DILocation(line: 276, column: 39, scope: !147)
!267 = !DILocation(line: 281, column: 67, scope: !147)
!268 = !DILocation(line: 276, column: 43, scope: !147)
!269 = !DILocation(line: 280, column: 9, scope: !147)
!270 = !DILocation(line: 280, column: 2, scope: !147)
!271 = !DILocation(line: 282, column: 1, scope: !147)
!272 = !DISubprogram(name: "lzma_alloc", scope: !40, file: !40, line: 211, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{!33, !71, !63}
!275 = !{}
!276 = distinct !DISubprogram(name: "simple_code", scope: !148, file: !148, line: 71, type: !60, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !290, !291, !294, !297, !298, !299, !300}
!278 = !DILocalVariable(name: "pcoder", arg: 1, scope: !276, file: !148, line: 71, type: !44)
!279 = !DILocalVariable(name: "allocator", arg: 2, scope: !276, file: !148, line: 71, type: !63)
!280 = !DILocalVariable(name: "in", arg: 3, scope: !276, file: !148, line: 72, type: !78)
!281 = !DILocalVariable(name: "in_pos", arg: 4, scope: !276, file: !148, line: 72, type: !84)
!282 = !DILocalVariable(name: "in_size", arg: 5, scope: !276, file: !148, line: 73, type: !71)
!283 = !DILocalVariable(name: "out", arg: 6, scope: !276, file: !148, line: 73, type: !86)
!284 = !DILocalVariable(name: "out_pos", arg: 7, scope: !276, file: !148, line: 74, type: !84)
!285 = !DILocalVariable(name: "out_size", arg: 8, scope: !276, file: !148, line: 74, type: !71)
!286 = !DILocalVariable(name: "action", arg: 9, scope: !276, file: !148, line: 74, type: !88)
!287 = !DILocalVariable(name: "coder", scope: !276, file: !148, line: 76, type: !34)
!288 = !DILocalVariable(name: "out_avail", scope: !276, file: !148, line: 111, type: !289)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!290 = !DILocalVariable(name: "buf_avail", scope: !276, file: !148, line: 112, type: !289)
!291 = !DILocalVariable(name: "out_start", scope: !292, file: !148, line: 116, type: !289)
!292 = distinct !DILexicalBlock(scope: !293, file: !148, line: 113, column: 47)
!293 = distinct !DILexicalBlock(scope: !276, file: !148, line: 113, column: 6)
!294 = !DILocalVariable(name: "ret", scope: !295, file: !148, line: 127, type: !296)
!295 = distinct !DILexicalBlock(scope: !292, file: !148, line: 126, column: 3)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!297 = !DILocalVariable(name: "size", scope: !292, file: !148, line: 136, type: !289)
!298 = !DILocalVariable(name: "filtered", scope: !292, file: !148, line: 137, type: !289)
!299 = !DILocalVariable(name: "unfiltered", scope: !292, file: !148, line: 140, type: !289)
!300 = !DILocalVariable(name: "ret", scope: !301, file: !148, line: 173, type: !296)
!301 = distinct !DILexicalBlock(scope: !302, file: !148, line: 172, column: 3)
!302 = distinct !DILexicalBlock(scope: !303, file: !148, line: 171, column: 23)
!303 = distinct !DILexicalBlock(scope: !276, file: !148, line: 171, column: 6)
!304 = !DILocation(line: 0, scope: !276)
!305 = !DILocation(line: 82, column: 13, scope: !306)
!306 = distinct !DILexicalBlock(scope: !276, file: !148, line: 82, column: 6)
!307 = !DILocation(line: 82, column: 6, scope: !276)
!308 = !DILocation(line: 86, column: 13, scope: !309)
!309 = distinct !DILexicalBlock(scope: !276, file: !148, line: 86, column: 6)
!310 = !DILocation(line: 86, column: 26, scope: !309)
!311 = !DILocation(line: 86, column: 17, scope: !309)
!312 = !DILocation(line: 86, column: 6, scope: !276)
!313 = !DILocation(line: 87, column: 22, scope: !314)
!314 = distinct !DILexicalBlock(scope: !309, file: !148, line: 86, column: 36)
!315 = !DILocation(line: 87, column: 3, scope: !314)
!316 = !DILocation(line: 92, column: 14, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !148, line: 92, column: 7)
!318 = !DILocation(line: 92, column: 27, scope: !317)
!319 = !DILocation(line: 92, column: 18, scope: !317)
!320 = !DILocation(line: 92, column: 7, scope: !314)
!321 = !DILocation(line: 95, column: 14, scope: !322)
!322 = distinct !DILexicalBlock(scope: !314, file: !148, line: 95, column: 7)
!323 = !{i8 0, i8 2}
!324 = !DILocation(line: 95, column: 7, scope: !314)
!325 = !DILocation(line: 112, column: 48, scope: !276)
!326 = !DILocation(line: 102, column: 18, scope: !276)
!327 = !DILocation(line: 111, column: 38, scope: !276)
!328 = !DILocation(line: 111, column: 36, scope: !276)
!329 = !DILocation(line: 112, column: 34, scope: !276)
!330 = !DILocation(line: 112, column: 39, scope: !276)
!331 = !DILocation(line: 113, column: 16, scope: !293)
!332 = !DILocation(line: 113, column: 28, scope: !293)
!333 = !DILocation(line: 0, scope: !292)
!334 = !DILocation(line: 122, column: 14, scope: !292)
!335 = !DILocation(line: 122, column: 33, scope: !292)
!336 = !DILocation(line: 122, column: 40, scope: !292)
!337 = !DILocation(line: 122, column: 3, scope: !292)
!338 = !DILocation(line: 123, column: 12, scope: !292)
!339 = !{!340}
!340 = distinct !{!340, !341, !"copy_or_code: %in_pos"}
!341 = distinct !{!341, !"copy_or_code"}
!342 = !DILocation(line: 127, column: 25, scope: !295)
!343 = !DILocalVariable(name: "pcoder", arg: 1, scope: !344, file: !148, line: 21, type: !44)
!344 = distinct !DISubprogram(name: "copy_or_code", scope: !148, file: !148, line: 21, type: !60, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !345)
!345 = !{!343, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!346 = !DILocalVariable(name: "allocator", arg: 2, scope: !344, file: !148, line: 21, type: !63)
!347 = !DILocalVariable(name: "in", arg: 3, scope: !344, file: !148, line: 22, type: !78)
!348 = !DILocalVariable(name: "in_pos", arg: 4, scope: !344, file: !148, line: 22, type: !84)
!349 = !DILocalVariable(name: "in_size", arg: 5, scope: !344, file: !148, line: 23, type: !71)
!350 = !DILocalVariable(name: "out", arg: 6, scope: !344, file: !148, line: 23, type: !86)
!351 = !DILocalVariable(name: "out_pos", arg: 7, scope: !344, file: !148, line: 24, type: !84)
!352 = !DILocalVariable(name: "out_size", arg: 8, scope: !344, file: !148, line: 24, type: !71)
!353 = !DILocalVariable(name: "action", arg: 9, scope: !344, file: !148, line: 24, type: !88)
!354 = !DILocalVariable(name: "coder", scope: !344, file: !148, line: 26, type: !34)
!355 = !DILocalVariable(name: "ret", scope: !356, file: !148, line: 39, type: !296)
!356 = distinct !DILexicalBlock(scope: !357, file: !148, line: 37, column: 9)
!357 = distinct !DILexicalBlock(scope: !344, file: !148, line: 29, column: 6)
!358 = !DILocation(line: 0, scope: !344, inlinedAt: !359)
!359 = distinct !DILocation(line: 127, column: 25, scope: !295)
!360 = !DILocation(line: 29, column: 18, scope: !357, inlinedAt: !359)
!361 = !{!362, !340, !363, !364}
!362 = distinct !{!362, !341, !"copy_or_code: %in"}
!363 = distinct !{!363, !341, !"copy_or_code: %out"}
!364 = distinct !{!364, !341, !"copy_or_code: %out_pos"}
!365 = !DILocation(line: 29, column: 23, scope: !357, inlinedAt: !359)
!366 = !DILocation(line: 29, column: 6, scope: !344, inlinedAt: !359)
!367 = !DILocation(line: 30, column: 3, scope: !368, inlinedAt: !359)
!368 = distinct !DILexicalBlock(scope: !357, file: !148, line: 29, column: 32)
!369 = !DILocation(line: 33, column: 14, scope: !370, inlinedAt: !359)
!370 = distinct !DILexicalBlock(scope: !368, file: !148, line: 33, column: 7)
!371 = !DILocation(line: 33, column: 25, scope: !370, inlinedAt: !359)
!372 = !DILocation(line: 34, column: 8, scope: !370, inlinedAt: !359)
!373 = !{!362, !363, !364}
!374 = !DILocation(line: 34, column: 16, scope: !370, inlinedAt: !359)
!375 = !DILocation(line: 33, column: 7, scope: !368, inlinedAt: !359)
!376 = !DILocation(line: 40, column: 17, scope: !356, inlinedAt: !359)
!377 = !DILocation(line: 39, column: 24, scope: !356, inlinedAt: !359)
!378 = !DILocation(line: 0, scope: !356, inlinedAt: !359)
!379 = !DILocation(line: 44, column: 7, scope: !356, inlinedAt: !359)
!380 = !DILocation(line: 0, scope: !357, inlinedAt: !359)
!381 = !DILocation(line: 136, column: 23, scope: !292)
!382 = !DILocation(line: 0, scope: !295)
!383 = !DILocation(line: 136, column: 32, scope: !292)
!384 = !DILocalVariable(name: "pcoder", arg: 1, scope: !385, file: !148, line: 59, type: !44)
!385 = distinct !DISubprogram(name: "call_filter", scope: !148, file: !148, line: 59, type: !386, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{!71, !44, !87, !71}
!388 = !{!384, !389, !390, !391, !392}
!389 = !DILocalVariable(name: "buffer", arg: 2, scope: !385, file: !148, line: 59, type: !87)
!390 = !DILocalVariable(name: "size", arg: 3, scope: !385, file: !148, line: 59, type: !71)
!391 = !DILocalVariable(name: "coder", scope: !385, file: !148, line: 61, type: !34)
!392 = !DILocalVariable(name: "filtered", scope: !385, file: !148, line: 62, type: !289)
!393 = !DILocation(line: 0, scope: !385, inlinedAt: !394)
!394 = distinct !DILocation(line: 137, column: 27, scope: !292)
!395 = !DILocation(line: 62, column: 33, scope: !385, inlinedAt: !394)
!396 = !DILocation(line: 62, column: 47, scope: !385, inlinedAt: !394)
!397 = !DILocation(line: 63, column: 11, scope: !385, inlinedAt: !394)
!398 = !DILocation(line: 63, column: 27, scope: !385, inlinedAt: !394)
!399 = !DILocation(line: 62, column: 26, scope: !385, inlinedAt: !394)
!400 = !DILocation(line: 65, column: 17, scope: !385, inlinedAt: !394)
!401 = !DILocation(line: 140, column: 34, scope: !292)
!402 = !DILocation(line: 145, column: 14, scope: !292)
!403 = !DILocation(line: 146, column: 15, scope: !292)
!404 = !DILocation(line: 148, column: 14, scope: !405)
!405 = distinct !DILexicalBlock(scope: !292, file: !148, line: 148, column: 7)
!406 = !DILocation(line: 148, column: 7, scope: !292)
!407 = !DILocation(line: 151, column: 16, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !148, line: 148, column: 31)
!409 = !DILocation(line: 171, column: 6, scope: !276)
!410 = !DILocation(line: 153, column: 25, scope: !411)
!411 = distinct !DILexicalBlock(scope: !405, file: !148, line: 153, column: 14)
!412 = !DILocation(line: 153, column: 14, scope: !405)
!413 = !DILocation(line: 156, column: 13, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !148, line: 153, column: 30)
!415 = !DILocation(line: 157, column: 30, scope: !414)
!416 = !DILocation(line: 157, column: 4, scope: !414)
!417 = !DILocation(line: 158, column: 3, scope: !414)
!418 = !DILocation(line: 159, column: 24, scope: !419)
!419 = distinct !DILexicalBlock(scope: !293, file: !148, line: 159, column: 13)
!420 = !DILocation(line: 159, column: 13, scope: !293)
!421 = !DILocation(line: 160, column: 18, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !148, line: 159, column: 29)
!423 = !DILocation(line: 160, column: 40, scope: !422)
!424 = !DILocation(line: 160, column: 3, scope: !422)
!425 = !DILocation(line: 161, column: 15, scope: !422)
!426 = !DILocation(line: 162, column: 14, scope: !422)
!427 = !DILocation(line: 163, column: 2, scope: !422)
!428 = !DILocation(line: 171, column: 13, scope: !303)
!429 = !DILocation(line: 171, column: 18, scope: !303)
!430 = !DILocation(line: 175, column: 13, scope: !301)
!431 = !DILocation(line: 176, column: 13, scope: !301)
!432 = !{!433}
!433 = distinct !{!433, !434, !"copy_or_code: %in_pos"}
!434 = distinct !{!434, !"copy_or_code"}
!435 = !DILocation(line: 173, column: 25, scope: !301)
!436 = !DILocation(line: 0, scope: !344, inlinedAt: !437)
!437 = distinct !DILocation(line: 173, column: 25, scope: !301)
!438 = !DILocation(line: 29, column: 18, scope: !357, inlinedAt: !437)
!439 = !{!440, !433, !441, !442}
!440 = distinct !{!440, !434, !"copy_or_code: %in"}
!441 = distinct !{!441, !434, !"copy_or_code: %out"}
!442 = distinct !{!442, !434, !"copy_or_code: %out_pos"}
!443 = !DILocation(line: 29, column: 23, scope: !357, inlinedAt: !437)
!444 = !DILocation(line: 29, column: 6, scope: !344, inlinedAt: !437)
!445 = !DILocation(line: 30, column: 3, scope: !368, inlinedAt: !437)
!446 = !DILocation(line: 33, column: 14, scope: !370, inlinedAt: !437)
!447 = !DILocation(line: 33, column: 25, scope: !370, inlinedAt: !437)
!448 = !DILocation(line: 34, column: 8, scope: !370, inlinedAt: !437)
!449 = !{!440, !441, !442}
!450 = !DILocation(line: 34, column: 16, scope: !370, inlinedAt: !437)
!451 = !DILocation(line: 33, column: 7, scope: !368, inlinedAt: !437)
!452 = !DILocation(line: 40, column: 17, scope: !356, inlinedAt: !437)
!453 = !DILocation(line: 39, column: 24, scope: !356, inlinedAt: !437)
!454 = !DILocation(line: 0, scope: !356, inlinedAt: !437)
!455 = !DILocation(line: 44, column: 7, scope: !356, inlinedAt: !437)
!456 = !DILocation(line: 0, scope: !357, inlinedAt: !437)
!457 = !DILocation(line: 183, column: 34, scope: !302)
!458 = !DILocation(line: 0, scope: !301)
!459 = !DILocation(line: 0, scope: !385, inlinedAt: !460)
!460 = distinct !DILocation(line: 182, column: 21, scope: !302)
!461 = !DILocation(line: 62, column: 33, scope: !385, inlinedAt: !460)
!462 = !DILocation(line: 62, column: 47, scope: !385, inlinedAt: !460)
!463 = !DILocation(line: 63, column: 11, scope: !385, inlinedAt: !460)
!464 = !DILocation(line: 63, column: 27, scope: !385, inlinedAt: !460)
!465 = !DILocation(line: 62, column: 26, scope: !385, inlinedAt: !460)
!466 = !DILocation(line: 65, column: 17, scope: !385, inlinedAt: !460)
!467 = !DILocation(line: 182, column: 19, scope: !302)
!468 = !DILocation(line: 187, column: 14, scope: !469)
!469 = distinct !DILexicalBlock(scope: !302, file: !148, line: 187, column: 7)
!470 = !DILocation(line: 187, column: 7, scope: !302)
!471 = !DILocation(line: 188, column: 29, scope: !469)
!472 = !DILocation(line: 188, column: 20, scope: !469)
!473 = !DILocation(line: 188, column: 4, scope: !469)
!474 = !DILocation(line: 191, column: 50, scope: !302)
!475 = !DILocation(line: 191, column: 3, scope: !302)
!476 = !DILocation(line: 193, column: 2, scope: !302)
!477 = !DILocation(line: 196, column: 13, scope: !478)
!478 = distinct !DILexicalBlock(scope: !276, file: !148, line: 196, column: 6)
!479 = !DILocation(line: 196, column: 29, scope: !478)
!480 = !DILocation(line: 196, column: 39, scope: !478)
!481 = !DILocation(line: 196, column: 53, scope: !478)
!482 = !DILocation(line: 196, column: 43, scope: !478)
!483 = !DILocation(line: 196, column: 6, scope: !276)
!484 = !DILocation(line: 199, column: 2, scope: !276)
!485 = !DILocation(line: 200, column: 1, scope: !276)
!486 = distinct !DISubprogram(name: "simple_coder_end", scope: !148, file: !148, line: 204, type: !92, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !487)
!487 = !{!488, !489, !490}
!488 = !DILocalVariable(name: "pcoder", arg: 1, scope: !486, file: !148, line: 204, type: !44)
!489 = !DILocalVariable(name: "allocator", arg: 2, scope: !486, file: !148, line: 204, type: !63)
!490 = !DILocalVariable(name: "coder", scope: !486, file: !148, line: 206, type: !34)
!491 = !DILocation(line: 0, scope: !486)
!492 = !DILocation(line: 207, column: 2, scope: !486)
!493 = !DILocation(line: 208, column: 19, scope: !486)
!494 = !DILocation(line: 208, column: 2, scope: !486)
!495 = !DILocation(line: 209, column: 2, scope: !486)
!496 = !DILocation(line: 211, column: 1, scope: !486)
!497 = distinct !DISubprogram(name: "simple_coder_update", scope: !148, file: !148, line: 215, type: !108, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!498 = !{!499, !500, !501, !502, !503}
!499 = !DILocalVariable(name: "pcoder", arg: 1, scope: !497, file: !148, line: 215, type: !44)
!500 = !DILocalVariable(name: "allocator", arg: 2, scope: !497, file: !148, line: 215, type: !63)
!501 = !DILocalVariable(name: "filters_null", arg: 3, scope: !497, file: !148, line: 216, type: !110)
!502 = !DILocalVariable(name: "reversed_filters", arg: 4, scope: !497, file: !148, line: 217, type: !110)
!503 = !DILocalVariable(name: "coder", scope: !497, file: !148, line: 219, type: !34)
!504 = !DILocation(line: 0, scope: !497)
!505 = !DILocation(line: 222, column: 46, scope: !497)
!506 = !DILocation(line: 221, column: 9, scope: !497)
!507 = !DILocation(line: 221, column: 2, scope: !497)
!508 = !DISubprogram(name: "lzma_next_filter_init", scope: !40, file: !40, line: 226, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !275)
!509 = !DISubprogram(name: "lzma_bufcpy", scope: !40, file: !40, line: 242, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !275)
!510 = !DISubroutineType(types: !511)
!511 = !{!71, !78, !84, !71, !86, !84, !71}
!512 = !DISubprogram(name: "lzma_next_end", scope: !40, file: !40, line: 237, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !275)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !151, !63}
!515 = !DISubprogram(name: "lzma_free", scope: !40, file: !40, line: 215, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !275)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !33, !63}
!518 = !DISubprogram(name: "lzma_next_filter_update", scope: !40, file: !40, line: 231, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !275)
!519 = !DISubroutineType(types: !520)
!520 = !{!62, !151, !63, !110}
