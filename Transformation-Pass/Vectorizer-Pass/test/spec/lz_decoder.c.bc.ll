; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/lz/lz_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lz/lz_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_lz_options = type { i64, ptr, i64 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_dict = type { ptr, i64, i64, i64, i64, i8 }
%struct.lzma_coder_s = type { %struct.lzma_dict, %struct.lzma_lz_decoder, %struct.lzma_next_coder_s, i8, i8, %struct.anon }
%struct.lzma_lz_decoder = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i64, i64, [4096 x i8] }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lz_decoder_init(ptr nocapture noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr nocapture noundef readonly %lz_init) local_unnamed_addr #0 !dbg !171 {
entry:
  %lz_options = alloca %struct.lzma_lz_options, align 8
  call void @llvm.dbg.value(metadata ptr %next, metadata !199, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !200, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata ptr %filters, metadata !201, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata ptr %lz_init, metadata !202, metadata !DIExpression()), !dbg !212
  %0 = load ptr, ptr %next, align 8, !dbg !213, !tbaa !215
  %cmp = icmp eq ptr %0, null, !dbg !221
  br i1 %cmp, label %if.then, label %if.end18, !dbg !222

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 4272, ptr noundef %allocator) #8, !dbg !223
  store ptr %call, ptr %next, align 8, !dbg !225, !tbaa !215
  %cmp3 = icmp eq ptr %call, null, !dbg !226
  br i1 %cmp3, label %return, label %if.end, !dbg !228

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !229
  store ptr @lz_decode, ptr %code, align 8, !dbg !230, !tbaa !231
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !232
  store ptr @lz_decoder_end, ptr %end, align 8, !dbg !233, !tbaa !234
  store ptr null, ptr %call, align 8, !dbg !235, !tbaa !236
  %size = getelementptr inbounds %struct.lzma_dict, ptr %call, i64 0, i32 4, !dbg !242
  store i64 0, ptr %size, align 8, !dbg !243, !tbaa !244
  %lz = getelementptr inbounds %struct.lzma_coder_s, ptr %call, i64 0, i32 1, !dbg !245
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %lz, i8 0, i64 40, i1 false), !dbg !246
  %1 = load ptr, ptr %next, align 8, !dbg !247, !tbaa !215
  %next13 = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 2, !dbg !248
  store ptr null, ptr %next13, align 8, !dbg !249, !tbaa.struct !250
  %.compoundliteral14.sroa.2.0.next13.sroa_idx = getelementptr inbounds i8, ptr %next13, i64 8, !dbg !249
  store i64 -1, ptr %.compoundliteral14.sroa.2.0.next13.sroa_idx, align 8, !dbg !249, !tbaa.struct !253
  %.compoundliteral14.sroa.3.0.next13.sroa_idx = getelementptr inbounds i8, ptr %next13, i64 16, !dbg !249
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral14.sroa.3.0.next13.sroa_idx, i8 0, i64 48, i1 false), !dbg !249
  %.pre = load ptr, ptr %next, align 8, !dbg !254, !tbaa !215
  br label %if.end18, !dbg !255

if.end18:                                         ; preds = %if.end, %entry
  %2 = phi ptr [ %.pre, %if.end ], [ %0, %entry ], !dbg !254
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lz_options) #8, !dbg !256
  call void @llvm.dbg.declare(metadata ptr %lz_options, metadata !203, metadata !DIExpression()), !dbg !257
  %lz20 = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 1, !dbg !254
  %options = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 0, i32 2, !dbg !254
  %3 = load ptr, ptr %options, align 8, !dbg !254, !tbaa !258
  %call21 = call i32 %lz_init(ptr noundef nonnull %lz20, ptr noundef %allocator, ptr noundef %3, ptr noundef nonnull %lz_options) #8, !dbg !254
  call void @llvm.dbg.value(metadata i32 %call21, metadata !204, metadata !DIExpression()), !dbg !260
  %cmp22.not = icmp eq i32 %call21, 0, !dbg !261
  br i1 %cmp22.not, label %do.end, label %cleanup90

do.end:                                           ; preds = %if.end18
  %4 = load i64, ptr %lz_options, align 8, !dbg !263, !tbaa !265
  %cmp25 = icmp ult i64 %4, 4096, !dbg !267
  br i1 %cmp25, label %if.end32, label %if.end28, !dbg !268

if.end28:                                         ; preds = %do.end
  %cmp30 = icmp ugt i64 %4, -16, !dbg !269
  br i1 %cmp30, label %cleanup90, label %if.end32, !dbg !271

if.end32:                                         ; preds = %do.end, %if.end28
  %5 = phi i64 [ %4, %if.end28 ], [ 4096, %do.end ]
  %add = add nuw i64 %5, 15, !dbg !272
  %and = and i64 %add, -16, !dbg !273
  store i64 %and, ptr %lz_options, align 8, !dbg !274, !tbaa !265
  %6 = load ptr, ptr %next, align 8, !dbg !275, !tbaa !215
  %size37 = getelementptr inbounds %struct.lzma_dict, ptr %6, i64 0, i32 4, !dbg !277
  %7 = load i64, ptr %size37, align 8, !dbg !277, !tbaa !244
  %cmp39.not = icmp eq i64 %7, %and, !dbg !278
  %.pre127 = load ptr, ptr %6, align 8, !dbg !212, !tbaa !236
  br i1 %cmp39.not, label %if.end59, label %if.then40, !dbg !279

if.then40:                                        ; preds = %if.end32
  call void @lzma_free(ptr noundef %.pre127, ptr noundef %allocator) #8, !dbg !280
  %8 = load i64, ptr %lz_options, align 8, !dbg !282, !tbaa !265
  %call45 = call ptr @lzma_alloc(i64 noundef %8, ptr noundef %allocator) #8, !dbg !283
  %9 = load ptr, ptr %next, align 8, !dbg !284, !tbaa !215
  store ptr %call45, ptr %9, align 8, !dbg !285, !tbaa !236
  %cmp52 = icmp eq ptr %call45, null, !dbg !286
  br i1 %cmp52, label %cleanup90, label %if.end54, !dbg !288

if.end54:                                         ; preds = %if.then40
  %10 = load i64, ptr %lz_options, align 8, !dbg !289, !tbaa !265
  %size58 = getelementptr inbounds %struct.lzma_dict, ptr %9, i64 0, i32 4, !dbg !290
  store i64 %10, ptr %size58, align 8, !dbg !291, !tbaa !244
  br label %if.end59, !dbg !292

if.end59:                                         ; preds = %if.end32, %if.end54
  %11 = phi i64 [ %10, %if.end54 ], [ %and, %if.end32 ], !dbg !293
  %12 = phi ptr [ %call45, %if.end54 ], [ %.pre127, %if.end32 ], !dbg !301
  %13 = phi ptr [ %9, %if.end54 ], [ %6, %if.end32 ], !dbg !302
  call void @llvm.dbg.value(metadata ptr %13, metadata !298, metadata !DIExpression()) #8, !dbg !303
  call void @llvm.dbg.value(metadata ptr %13, metadata !299, metadata !DIExpression()) #8, !dbg !303
  %pos.i = getelementptr inbounds %struct.lzma_dict, ptr %13, i64 0, i32 1, !dbg !304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pos.i, i8 0, i64 16, i1 false) #8, !dbg !305
  %sub.i = add i64 %11, -1, !dbg !306
  %arrayidx.i = getelementptr inbounds i8, ptr %12, i64 %sub.i, !dbg !307
  store i8 0, ptr %arrayidx.i, align 1, !dbg !308, !tbaa !309
  %need_reset.i = getelementptr inbounds %struct.lzma_dict, ptr %13, i64 0, i32 5, !dbg !310
  store i8 0, ptr %need_reset.i, align 8, !dbg !311, !tbaa !312
  %preset_dict = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 1, !dbg !313
  %14 = load ptr, ptr %preset_dict, align 8, !dbg !313, !tbaa !314
  %cmp61 = icmp ne ptr %14, null, !dbg !315
  %preset_dict_size = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 2
  %15 = load i64, ptr %preset_dict_size, align 8
  %cmp62 = icmp ne i64 %15, 0
  %or.cond = select i1 %cmp61, i1 %cmp62, i1 false, !dbg !316
  br i1 %or.cond, label %if.then63, label %if.end59.if.end78_crit_edge, !dbg !316

if.end59.if.end78_crit_edge:                      ; preds = %if.end59
  %.pre128 = load ptr, ptr %next, align 8, !dbg !317, !tbaa !215
  br label %if.end78, !dbg !316

if.then63:                                        ; preds = %if.end59
  %16 = load i64, ptr %lz_options, align 8, !dbg !318, !tbaa !265
  %17 = call i64 @llvm.umin.i64(i64 %15, i64 %16), !dbg !318
  call void @llvm.dbg.value(metadata i64 %17, metadata !207, metadata !DIExpression()), !dbg !319
  %sub = sub i64 %15, %17, !dbg !320
  call void @llvm.dbg.value(metadata i64 %sub, metadata !211, metadata !DIExpression()), !dbg !319
  %18 = load ptr, ptr %next, align 8, !dbg !321, !tbaa !215
  %19 = load ptr, ptr %18, align 8, !dbg !322, !tbaa !236
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %sub, !dbg !323
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr nonnull align 1 %add.ptr, i64 %17, i1 false), !dbg !324
  %20 = load ptr, ptr %next, align 8, !dbg !325, !tbaa !215
  %pos = getelementptr inbounds %struct.lzma_dict, ptr %20, i64 0, i32 1, !dbg !326
  store i64 %17, ptr %pos, align 8, !dbg !327, !tbaa !328
  %full = getelementptr inbounds %struct.lzma_dict, ptr %20, i64 0, i32 2, !dbg !329
  store i64 %17, ptr %full, align 8, !dbg !330, !tbaa !331
  br label %if.end78, !dbg !332

if.end78:                                         ; preds = %if.end59.if.end78_crit_edge, %if.then63
  %21 = phi ptr [ %.pre128, %if.end59.if.end78_crit_edge ], [ %20, %if.then63 ], !dbg !317
  %next_finished = getelementptr inbounds %struct.lzma_coder_s, ptr %21, i64 0, i32 3, !dbg !333
  store i8 0, ptr %next_finished, align 8, !dbg !334, !tbaa !335
  %this_finished = getelementptr inbounds %struct.lzma_coder_s, ptr %21, i64 0, i32 4, !dbg !336
  store i8 0, ptr %this_finished, align 1, !dbg !337, !tbaa !338
  %temp = getelementptr inbounds %struct.lzma_coder_s, ptr %21, i64 0, i32 5, !dbg !339
  %next87 = getelementptr inbounds %struct.lzma_coder_s, ptr %21, i64 0, i32 2, !dbg !340
  %add.ptr88 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 1, !dbg !341
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %temp, i8 0, i64 16, i1 false), !dbg !342
  %call89 = call i32 @lzma_next_filter_init(ptr noundef nonnull %next87, ptr noundef %allocator, ptr noundef nonnull %add.ptr88) #8, !dbg !343
  br label %cleanup90, !dbg !344

cleanup90:                                        ; preds = %if.then40, %if.end28, %if.end18, %if.end78
  %retval.1 = phi i32 [ %call89, %if.end78 ], [ %call21, %if.end18 ], [ 5, %if.end28 ], [ 5, %if.then40 ], !dbg !212
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lz_options) #8, !dbg !345
  br label %return

return:                                           ; preds = %if.then, %cleanup90
  %retval.2 = phi i32 [ %retval.1, %cleanup90 ], [ 5, %if.then ], !dbg !212
  ret i32 %retval.2, !dbg !345
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !346 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @lz_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !350 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !352, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !353, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata ptr %in, metadata !354, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !355, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !356, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata ptr %out, metadata !357, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !358, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !359, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 %action, metadata !360, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !361, metadata !DIExpression()), !dbg !367
  %next = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !368
  %code = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i32 3, !dbg !370
  %0 = load ptr, ptr %code, align 8, !dbg !370, !tbaa !371
  %cmp = icmp eq ptr %0, null, !dbg !372
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !373

while.cond.preheader:                             ; preds = %entry
  %1 = load i64, ptr %out_pos, align 8, !dbg !374, !tbaa !252
  %cmp1149 = icmp ult i64 %1, %out_size, !dbg !375
  br i1 %cmp1149, label %while.body.lr.ph, label %cleanup67, !dbg !376

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %next_finished = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3
  %temp = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5
  %size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, i32 1
  %buffer = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, i32 2
  %this_finished = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4
  %pos.i105 = getelementptr inbounds %struct.lzma_dict, ptr %pcoder, i64 0, i32 1
  %size.i106 = getelementptr inbounds %struct.lzma_dict, ptr %pcoder, i64 0, i32 4
  %limit.i107 = getelementptr inbounds %struct.lzma_dict, ptr %pcoder, i64 0, i32 3
  %lz.i108 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1
  %code.i109 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 1
  %need_reset.i110 = getelementptr inbounds %struct.lzma_dict, ptr %pcoder, i64 0, i32 5
  br label %while.body, !dbg !376

if.then:                                          ; preds = %entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377), !dbg !380
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !381, metadata !DIExpression()) #8, !dbg !397
  call void @llvm.dbg.value(metadata ptr %in, metadata !386, metadata !DIExpression()) #8, !dbg !397
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !387, metadata !DIExpression()) #8, !dbg !397
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !388, metadata !DIExpression()) #8, !dbg !397
  call void @llvm.dbg.value(metadata ptr %out, metadata !389, metadata !DIExpression()) #8, !dbg !397
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !390, metadata !DIExpression()) #8, !dbg !397
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !391, metadata !DIExpression()) #8, !dbg !397
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !392, metadata !DIExpression()) #8, !dbg !397
  %pos.i = getelementptr inbounds %struct.lzma_dict, ptr %pcoder, i64 0, i32 1
  %size.i = getelementptr inbounds %struct.lzma_dict, ptr %pcoder, i64 0, i32 4
  %limit.i = getelementptr inbounds %struct.lzma_dict, ptr %pcoder, i64 0, i32 3
  %lz.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1
  %code.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 1
  %need_reset.i = getelementptr inbounds %struct.lzma_dict, ptr %pcoder, i64 0, i32 5
  br label %while.cond.i, !dbg !399

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.then
  %2 = load i64, ptr %pos.i, align 8, !dbg !400, !tbaa !328, !noalias !402
  %3 = load i64, ptr %size.i, align 8, !dbg !406, !tbaa !244, !noalias !402
  %cmp.i = icmp eq i64 %2, %3, !dbg !407
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !408

if.then.i:                                        ; preds = %while.cond.i
  store i64 0, ptr %pos.i, align 8, !dbg !409, !tbaa !328, !noalias !402
  br label %if.end.i, !dbg !410

if.end.i:                                         ; preds = %if.then.i, %while.cond.i
  %4 = phi i64 [ 0, %if.then.i ], [ %2, %while.cond.i ], !dbg !411
  call void @llvm.dbg.value(metadata i64 %4, metadata !393, metadata !DIExpression()) #8, !dbg !412
  %5 = load i64, ptr %out_pos, align 8, !dbg !413, !tbaa !252, !alias.scope !377, !noalias !414
  %sub.i = sub i64 %out_size, %5, !dbg !413
  %sub12.i = sub i64 %3, %4, !dbg !413
  %6 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 %sub12.i) #8, !dbg !413
  %add.i = add i64 %6, %4, !dbg !415
  store i64 %add.i, ptr %limit.i, align 8, !dbg !416, !tbaa !417, !noalias !402
  %7 = load ptr, ptr %code.i, align 8, !dbg !418, !tbaa !419, !noalias !402
  %8 = load ptr, ptr %lz.i, align 8, !dbg !420, !tbaa !421, !noalias !402
  %call.i = tail call i32 %7(ptr noundef %8, ptr noundef nonnull %pcoder, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) #8, !dbg !422, !noalias !423
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !395, metadata !DIExpression()) #8, !dbg !412
  %9 = load i64, ptr %pos.i, align 8, !dbg !424, !tbaa !328, !noalias !402
  %sub26.i = sub i64 %9, %4, !dbg !425
  call void @llvm.dbg.value(metadata i64 %sub26.i, metadata !396, metadata !DIExpression()) #8, !dbg !412
  %add.ptr.i = getelementptr inbounds i8, ptr %out, i64 %5, !dbg !426
  %10 = load ptr, ptr %pcoder, align 8, !dbg !427, !tbaa !236, !noalias !402
  %add.ptr28.i = getelementptr inbounds i8, ptr %10, i64 %4, !dbg !428
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr align 1 %add.ptr28.i, i64 %sub26.i, i1 false) #8, !dbg !429, !noalias !377
  %add29.i = add i64 %sub26.i, %5, !dbg !430
  store i64 %add29.i, ptr %out_pos, align 8, !dbg !430, !tbaa !252, !alias.scope !377, !noalias !414
  %11 = load i8, ptr %need_reset.i, align 8, !dbg !431, !tbaa !312, !range !433, !noalias !402
  %tobool.not.i = icmp eq i8 %11, 0, !dbg !431
  br i1 %tobool.not.i, label %if.else.i, label %if.then31.i, !dbg !434

if.then31.i:                                      ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !298, metadata !DIExpression()) #8, !dbg !435
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !299, metadata !DIExpression()) #8, !dbg !435
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pos.i, i8 0, i64 16, i1 false) #8, !dbg !438, !noalias !402
  %12 = load i64, ptr %size.i, align 8, !dbg !439, !tbaa !244, !noalias !402
  %sub.i.i = add i64 %12, -1, !dbg !440
  %arrayidx.i.i = getelementptr inbounds i8, ptr %10, i64 %sub.i.i, !dbg !441
  store i8 0, ptr %arrayidx.i.i, align 1, !dbg !442, !tbaa !309, !noalias !423
  store i8 0, ptr %need_reset.i, align 8, !dbg !443, !tbaa !312, !noalias !402
  %cmp32.not.i = icmp ne i32 %call.i, 0, !dbg !444
  %cmp33.i = icmp eq i64 %add29.i, %out_size
  %or.cond86.i = select i1 %cmp32.not.i, i1 true, i1 %cmp33.i, !dbg !446
  br i1 %or.cond86.i, label %cleanup67, label %while.cond.i.backedge, !dbg !446

if.else.i:                                        ; preds = %if.end.i
  %cmp36.not.i = icmp ne i32 %call.i, 0, !dbg !447
  %cmp38.i = icmp eq i64 %add29.i, %out_size
  %or.cond.i = select i1 %cmp36.not.i, i1 true, i1 %cmp38.i, !dbg !450
  br i1 %or.cond.i, label %cleanup67, label %lor.lhs.false39.i, !dbg !450

lor.lhs.false39.i:                                ; preds = %if.else.i
  %13 = load i64, ptr %size.i, align 8, !dbg !451, !tbaa !244, !noalias !402
  %cmp44.i = icmp ult i64 %9, %13, !dbg !452
  br i1 %cmp44.i, label %cleanup67, label %while.cond.i.backedge, !dbg !453

while.cond.i.backedge:                            ; preds = %lor.lhs.false39.i, %if.then31.i
  br label %while.cond.i, !dbg !400, !llvm.loop !454

while.body:                                       ; preds = %while.body.lr.ph, %cleanup64
  %14 = phi i64 [ %1, %while.body.lr.ph ], [ %add29.i121, %cleanup64 ]
  %15 = load i8, ptr %next_finished, align 8, !dbg !457, !tbaa !335, !range !433
  %tobool.not = icmp eq i8 %15, 0, !dbg !457
  br i1 %tobool.not, label %land.lhs.true, label %if.end27, !dbg !458

land.lhs.true:                                    ; preds = %while.body
  %16 = load i64, ptr %temp, align 8, !dbg !459, !tbaa !460
  %17 = load i64, ptr %size, align 8, !dbg !461, !tbaa !462
  %cmp3 = icmp eq i64 %16, %17, !dbg !463
  br i1 %cmp3, label %if.then4, label %if.end27, !dbg !464

if.then4:                                         ; preds = %land.lhs.true
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %temp, i8 0, i64 16, i1 false), !dbg !465
  %18 = load ptr, ptr %code, align 8, !dbg !466, !tbaa !371
  %19 = load ptr, ptr %next, align 8, !dbg !467, !tbaa !468
  %call16 = tail call i32 %18(ptr noundef %19, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer, ptr noundef nonnull %size, i64 noundef 4096, i32 noundef %action) #8, !dbg !469
  call void @llvm.dbg.value(metadata i32 %call16, metadata !362, metadata !DIExpression()), !dbg !470
  switch i32 %call16, label %cleanup67 [
    i32 1, label %if.then18
    i32 0, label %lor.lhs.false
  ], !dbg !471

if.then18:                                        ; preds = %if.then4
  store i8 1, ptr %next_finished, align 8, !dbg !472, !tbaa !335
  br label %if.end27, !dbg !474

lor.lhs.false:                                    ; preds = %if.then4
  %20 = load i64, ptr %size, align 8, !dbg !475, !tbaa !462
  %cmp23 = icmp eq i64 %20, 0, !dbg !477
  br i1 %cmp23, label %cleanup67, label %if.end27, !dbg !478

if.end27:                                         ; preds = %lor.lhs.false, %if.then18, %land.lhs.true, %while.body
  %21 = load i8, ptr %this_finished, align 1, !dbg !479, !tbaa !338, !range !433
  %tobool28.not = icmp eq i8 %21, 0, !dbg !479
  %22 = load i64, ptr %size, align 8, !dbg !481, !tbaa !462
  br i1 %tobool28.not, label %if.end39, label %if.then29, !dbg !482

if.then29:                                        ; preds = %if.end27
  %cmp32.not = icmp eq i64 %22, 0, !dbg !483
  br i1 %cmp32.not, label %if.end34, label %cleanup67, !dbg !486

if.end34:                                         ; preds = %if.then29
  %23 = load i8, ptr %next_finished, align 8, !dbg !487, !tbaa !335, !range !433
  %24 = zext i8 %23 to i32, !dbg !489
  br label %cleanup67, !dbg !489

if.end39:                                         ; preds = %if.end27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490), !dbg !493
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !381, metadata !DIExpression()) #8, !dbg !494
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !386, metadata !DIExpression()) #8, !dbg !494
  call void @llvm.dbg.value(metadata ptr %temp, metadata !387, metadata !DIExpression()) #8, !dbg !494
  call void @llvm.dbg.value(metadata i64 %22, metadata !388, metadata !DIExpression()) #8, !dbg !494
  call void @llvm.dbg.value(metadata ptr %out, metadata !389, metadata !DIExpression()) #8, !dbg !494
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !390, metadata !DIExpression()) #8, !dbg !494
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !391, metadata !DIExpression()) #8, !dbg !494
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !392, metadata !DIExpression()) #8, !dbg !494
  br label %while.cond.i112, !dbg !496

while.cond.i112:                                  ; preds = %while.cond.i112.backedge, %if.end39
  %25 = phi i64 [ %14, %if.end39 ], [ %add29.i121, %while.cond.i112.backedge ]
  %26 = load i64, ptr %pos.i105, align 8, !dbg !497, !tbaa !328, !noalias !498
  %27 = load i64, ptr %size.i106, align 8, !dbg !502, !tbaa !244, !noalias !498
  %cmp.i111 = icmp eq i64 %26, %27, !dbg !503
  br i1 %cmp.i111, label %if.then.i113, label %if.end.i123, !dbg !504

if.then.i113:                                     ; preds = %while.cond.i112
  store i64 0, ptr %pos.i105, align 8, !dbg !505, !tbaa !328, !noalias !498
  br label %if.end.i123, !dbg !506

if.end.i123:                                      ; preds = %if.then.i113, %while.cond.i112
  %28 = phi i64 [ 0, %if.then.i113 ], [ %26, %while.cond.i112 ], !dbg !507
  call void @llvm.dbg.value(metadata i64 %28, metadata !393, metadata !DIExpression()) #8, !dbg !508
  %sub.i114 = sub i64 %out_size, %25, !dbg !509
  %sub12.i115 = sub i64 %27, %28, !dbg !509
  %29 = tail call i64 @llvm.umin.i64(i64 %sub.i114, i64 %sub12.i115) #8, !dbg !509
  %add.i116 = add i64 %29, %28, !dbg !510
  store i64 %add.i116, ptr %limit.i107, align 8, !dbg !511, !tbaa !417, !noalias !498
  %30 = load ptr, ptr %code.i109, align 8, !dbg !512, !tbaa !419, !noalias !498
  %31 = load ptr, ptr %lz.i108, align 8, !dbg !513, !tbaa !421, !noalias !498
  %call.i117 = tail call i32 %30(ptr noundef %31, ptr noundef nonnull %pcoder, ptr noundef nonnull %buffer, ptr noundef nonnull %temp, i64 noundef %22) #8, !dbg !514, !noalias !515
  call void @llvm.dbg.value(metadata i32 %call.i117, metadata !395, metadata !DIExpression()) #8, !dbg !508
  %32 = load i64, ptr %pos.i105, align 8, !dbg !516, !tbaa !328, !noalias !498
  %sub26.i118 = sub i64 %32, %28, !dbg !517
  call void @llvm.dbg.value(metadata i64 %sub26.i118, metadata !396, metadata !DIExpression()) #8, !dbg !508
  %add.ptr.i119 = getelementptr inbounds i8, ptr %out, i64 %25, !dbg !518
  %33 = load ptr, ptr %pcoder, align 8, !dbg !519, !tbaa !236, !noalias !498
  %add.ptr28.i120 = getelementptr inbounds i8, ptr %33, i64 %28, !dbg !520
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i119, ptr align 1 %add.ptr28.i120, i64 %sub26.i118, i1 false) #8, !dbg !521, !noalias !490
  %add29.i121 = add i64 %sub26.i118, %25, !dbg !522
  store i64 %add29.i121, ptr %out_pos, align 8, !dbg !522, !tbaa !252, !alias.scope !490, !noalias !523
  %34 = load i8, ptr %need_reset.i110, align 8, !dbg !524, !tbaa !312, !range !433, !noalias !498
  %tobool.not.i122 = icmp eq i8 %34, 0, !dbg !524
  br i1 %tobool.not.i122, label %if.else.i133, label %if.then31.i129, !dbg !525

if.then31.i129:                                   ; preds = %if.end.i123
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !298, metadata !DIExpression()) #8, !dbg !526
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !299, metadata !DIExpression()) #8, !dbg !526
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pos.i105, i8 0, i64 16, i1 false) #8, !dbg !528, !noalias !498
  %35 = load i64, ptr %size.i106, align 8, !dbg !529, !tbaa !244, !noalias !498
  %sub.i.i124 = add i64 %35, -1, !dbg !530
  %arrayidx.i.i125 = getelementptr inbounds i8, ptr %33, i64 %sub.i.i124, !dbg !531
  store i8 0, ptr %arrayidx.i.i125, align 1, !dbg !532, !tbaa !309, !noalias !515
  store i8 0, ptr %need_reset.i110, align 8, !dbg !533, !tbaa !312, !noalias !498
  %cmp32.not.i126 = icmp ne i32 %call.i117, 0, !dbg !534
  %cmp33.i127 = icmp eq i64 %add29.i121, %out_size
  %or.cond86.i128 = select i1 %cmp32.not.i126, i1 true, i1 %cmp33.i127, !dbg !535
  br i1 %or.cond86.i128, label %decode_buffer.exit138, label %while.cond.i112.backedge, !dbg !535

if.else.i133:                                     ; preds = %if.end.i123
  %cmp36.not.i130 = icmp ne i32 %call.i117, 0, !dbg !536
  %cmp38.i131 = icmp eq i64 %add29.i121, %out_size
  %or.cond.i132 = select i1 %cmp36.not.i130, i1 true, i1 %cmp38.i131, !dbg !537
  br i1 %or.cond.i132, label %decode_buffer.exit138, label %lor.lhs.false39.i135, !dbg !537

lor.lhs.false39.i135:                             ; preds = %if.else.i133
  %36 = load i64, ptr %size.i106, align 8, !dbg !538, !tbaa !244, !noalias !498
  %cmp44.i134 = icmp ult i64 %32, %36, !dbg !539
  br i1 %cmp44.i134, label %if.else55, label %while.cond.i112.backedge, !dbg !540

while.cond.i112.backedge:                         ; preds = %lor.lhs.false39.i135, %if.then31.i129
  br label %while.cond.i112, !dbg !497, !llvm.loop !541

decode_buffer.exit138:                            ; preds = %if.then31.i129, %if.else.i133
  call void @llvm.dbg.value(metadata i32 %call.i117, metadata !366, metadata !DIExpression()), !dbg !481
  switch i32 %call.i117, label %cleanup67 [
    i32 1, label %if.then50
    i32 0, label %if.else55
  ], !dbg !543

if.then50:                                        ; preds = %decode_buffer.exit138
  store i8 1, ptr %this_finished, align 1, !dbg !544, !tbaa !338
  br label %cleanup64, !dbg !546

if.else55:                                        ; preds = %lor.lhs.false39.i135, %decode_buffer.exit138
  %37 = load i8, ptr %next_finished, align 8, !dbg !547, !tbaa !335, !range !433
  %tobool57.not = icmp ne i8 %37, 0, !dbg !547
  %cmp59 = icmp ult i64 %add29.i121, %out_size
  %or.cond = select i1 %tobool57.not, i1 %cmp59, i1 false, !dbg !550
  br i1 %or.cond, label %cleanup67, label %cleanup64, !dbg !550

cleanup64:                                        ; preds = %if.then50, %if.else55
  %cmp1 = icmp ult i64 %add29.i121, %out_size, !dbg !375
  br i1 %cmp1, label %while.body, label %cleanup67, !dbg !376, !llvm.loop !551

cleanup67:                                        ; preds = %cleanup64, %if.then4, %lor.lhs.false, %decode_buffer.exit138, %if.else55, %lor.lhs.false39.i, %if.else.i, %if.then31.i, %while.cond.preheader, %if.end34, %if.then29
  %retval.4 = phi i32 [ 9, %if.then29 ], [ %24, %if.end34 ], [ 0, %while.cond.preheader ], [ %call.i, %if.else.i ], [ 0, %lor.lhs.false39.i ], [ %call.i, %if.then31.i ], [ 0, %cleanup64 ], [ %call16, %if.then4 ], [ 0, %lor.lhs.false ], [ %call.i117, %decode_buffer.exit138 ], [ 9, %if.else55 ]
  ret i32 %retval.4, !dbg !554
}

; Function Attrs: nounwind uwtable
define internal void @lz_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !555 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !557, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !558, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !559, metadata !DIExpression()), !dbg !560
  %next = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !561
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #8, !dbg !562
  %0 = load ptr, ptr %pcoder, align 8, !dbg !563, !tbaa !236
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #8, !dbg !564
  %lz = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !565
  %end = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 4, !dbg !567
  %1 = load ptr, ptr %end, align 8, !dbg !567, !tbaa !568
  %cmp.not = icmp eq ptr %1, null, !dbg !569
  %2 = load ptr, ptr %lz, align 8, !dbg !570, !tbaa !421
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !571

if.then:                                          ; preds = %entry
  tail call void %1(ptr noundef %2, ptr noundef %allocator) #8, !dbg !572
  br label %if.end, !dbg !572

if.else:                                          ; preds = %entry
  tail call void @lzma_free(ptr noundef %2, ptr noundef %allocator) #8, !dbg !573
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @lzma_free(ptr noundef nonnull %pcoder, ptr noundef %allocator) #8, !dbg !574
  ret void, !dbg !575
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare !dbg !576 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !579 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @lzma_lz_decoder_memusage(i64 noundef %dictionary_size) local_unnamed_addr #6 !dbg !580 {
entry:
  call void @llvm.dbg.value(metadata i64 %dictionary_size, metadata !584, metadata !DIExpression()), !dbg !585
  %add = add i64 %dictionary_size, 4272, !dbg !586
  ret i64 %add, !dbg !587
}

; Function Attrs: nounwind uwtable
define dso_local void @lzma_lz_decoder_uncompressed(ptr nocapture noundef readonly %pcoder, i64 noundef %uncompressed_size) local_unnamed_addr #0 !dbg !588 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !590, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i64 %uncompressed_size, metadata !591, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !592, metadata !DIExpression()), !dbg !593
  %lz = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !594
  %set_uncompressed = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i32 3, !dbg !595
  %0 = load ptr, ptr %set_uncompressed, align 8, !dbg !595, !tbaa !596
  %1 = load ptr, ptr %lz, align 8, !dbg !597, !tbaa !421
  tail call void %0(ptr noundef %1, i64 noundef %uncompressed_size) #8, !dbg !598
  ret void, !dbg !599
}

declare !dbg !600 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lz/lz_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "ed19f3c26d5c9c90f2e6eec526321cb7")
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
!32 = !{!33, !34, !51, !92}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !36, line: 23, size: 34176, elements: !37)
!36 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lz/lz_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ed19f3c26d5c9c90f2e6eec526321cb7")
!37 = !{!38, !59, !111, !153, !154, !155}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !35, file: !36, line: 25, baseType: !39, size: 384)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_dict", file: !40, line: 44, baseType: !41)
!40 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lz/lz_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27344aa2da5754ad4a118fbd9137003b")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 20, size: 384, elements: !42)
!42 = !{!43, !50, !54, !55, !56, !57}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !41, file: !40, line: 24, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !46, line: 24, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !48, line: 38, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !41, file: !40, line: 28, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 46, baseType: !53)
!52 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !41, file: !40, line: 33, baseType: !51, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !41, file: !40, line: 36, baseType: !51, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !41, file: !40, line: 39, baseType: !51, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "need_reset", scope: !41, file: !40, line: 42, baseType: !58, size: 8, offset: 320)
!58 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "lz", scope: !35, file: !36, line: 28, baseType: !60, size: 320, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_decoder", file: !40, line: 72, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 54, size: 320, elements: !62)
!62 = !{!63, !67, !80, !86, !94}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !61, file: !40, line: 56, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !66, line: 78, baseType: null)
!66 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!67 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !61, file: !40, line: 59, baseType: !68, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !72, !73, !75, !78, !51}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!72 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !64)
!73 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !61, file: !40, line: 63, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !64, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "set_uncompressed", scope: !61, file: !40, line: 66, baseType: !87, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !64, !90}
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !91, line: 63, baseType: !92)
!91 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !46, line: 27, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !48, line: 45, baseType: !53)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !61, file: !40, line: 70, baseType: !95, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !64, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !101)
!101 = !{!102, !106, !110}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !100, file: !4, line: 376, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!33, !33, !51, !51}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !100, file: !4, line: 390, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !33, !33}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !100, file: !4, line: 401, baseType: !33, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !35, file: !36, line: 33, baseType: !112, size: 512, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !66, line: 80, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !66, line: 124, size: 512, elements: !114)
!114 = !{!115, !116, !117, !120, !127, !129, !136, !141}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !113, file: !66, line: 126, baseType: !64, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !113, file: !66, line: 130, baseType: !90, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !113, file: !66, line: 136, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !119, line: 90, baseType: !53)
!119 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!120 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !113, file: !66, line: 139, baseType: !121, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !66, line: 94, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!71, !64, !98, !75, !78, !51, !125, !78, !51, !126}
!125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !113, file: !66, line: 144, baseType: !128, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !66, line: 102, baseType: !95)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !113, file: !66, line: 148, baseType: !130, size: 64, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !113, file: !66, line: 152, baseType: !137, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!71, !64, !140, !140, !92}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !113, file: !66, line: 157, baseType: !142, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!71, !64, !98, !145, !145}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !148, line: 65, baseType: !149)
!148 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 43, size: 128, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !149, file: !148, line: 54, baseType: !90, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !149, file: !148, line: 63, baseType: !33, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next_finished", scope: !35, file: !36, line: 36, baseType: !58, size: 8, offset: 1216)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "this_finished", scope: !35, file: !36, line: 40, baseType: !58, size: 8, offset: 1224)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !35, file: !36, line: 50, baseType: !156, size: 32896, offset: 1280)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !36, line: 46, size: 32896, elements: !157)
!157 = !{!158, !159, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !156, file: !36, line: 47, baseType: !51, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !156, file: !36, line: 48, baseType: !51, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !156, file: !36, line: 49, baseType: !161, size: 32768, offset: 128)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32768, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 4096)
!164 = !{i32 7, !"Dwarf Version", i32 5}
!165 = !{i32 2, !"Debug Info Version", i32 3}
!166 = !{i32 1, !"wchar_size", i32 4}
!167 = !{i32 7, !"PIC Level", i32 2}
!168 = !{i32 7, !"PIE Level", i32 2}
!169 = !{i32 7, !"uwtable", i32 2}
!170 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!171 = distinct !DISubprogram(name: "lzma_lz_decoder_init", scope: !36, file: !36, line: 207, type: !172, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !198)
!172 = !DISubroutineType(types: !173)
!173 = !{!71, !174, !98, !175, !187}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !66, line: 82, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !66, line: 109, size: 192, elements: !179)
!179 = !{!180, !181, !186}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !178, file: !66, line: 112, baseType: !90, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !178, file: !66, line: 116, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !66, line: 86, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!71, !174, !98, !175}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !178, file: !66, line: 119, baseType: !33, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!71, !190, !98, !84, !191}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_options", file: !40, line: 51, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 47, size: 192, elements: !194)
!194 = !{!195, !196, !197}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !193, file: !40, line: 48, baseType: !51, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !193, file: !40, line: 49, baseType: !76, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !193, file: !40, line: 50, baseType: !51, size: 64, offset: 128)
!198 = !{!199, !200, !201, !202, !203, !204, !207, !211}
!199 = !DILocalVariable(name: "next", arg: 1, scope: !171, file: !36, line: 207, type: !174)
!200 = !DILocalVariable(name: "allocator", arg: 2, scope: !171, file: !36, line: 207, type: !98)
!201 = !DILocalVariable(name: "filters", arg: 3, scope: !171, file: !36, line: 208, type: !175)
!202 = !DILocalVariable(name: "lz_init", arg: 4, scope: !171, file: !36, line: 209, type: !187)
!203 = !DILocalVariable(name: "lz_options", scope: !171, file: !36, line: 230, type: !192)
!204 = !DILocalVariable(name: "ret_", scope: !205, file: !36, line: 231, type: !206)
!205 = distinct !DILexicalBlock(scope: !171, file: !36, line: 231, column: 2)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!207 = !DILocalVariable(name: "copy_size", scope: !208, file: !36, line: 272, type: !210)
!208 = distinct !DILexicalBlock(scope: !209, file: !36, line: 269, column: 40)
!209 = distinct !DILexicalBlock(scope: !171, file: !36, line: 268, column: 6)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!211 = !DILocalVariable(name: "offset", scope: !208, file: !36, line: 274, type: !210)
!212 = !DILocation(line: 0, scope: !171)
!213 = !DILocation(line: 214, column: 12, scope: !214)
!214 = distinct !DILexicalBlock(scope: !171, file: !36, line: 214, column: 6)
!215 = !{!216, !217, i64 0}
!216 = !{!"lzma_next_coder_s", !217, i64 0, !220, i64 8, !220, i64 16, !217, i64 24, !217, i64 32, !217, i64 40, !217, i64 48, !217, i64 56}
!217 = !{!"any pointer", !218, i64 0}
!218 = !{!"omnipotent char", !219, i64 0}
!219 = !{!"Simple C/C++ TBAA"}
!220 = !{!"long", !218, i64 0}
!221 = !DILocation(line: 214, column: 18, scope: !214)
!222 = !DILocation(line: 214, column: 6, scope: !171)
!223 = !DILocation(line: 215, column: 17, scope: !224)
!224 = distinct !DILexicalBlock(scope: !214, file: !36, line: 214, column: 27)
!225 = !DILocation(line: 215, column: 15, scope: !224)
!226 = !DILocation(line: 216, column: 19, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !36, line: 216, column: 7)
!228 = !DILocation(line: 216, column: 7, scope: !224)
!229 = !DILocation(line: 219, column: 9, scope: !224)
!230 = !DILocation(line: 219, column: 14, scope: !224)
!231 = !{!216, !217, i64 24}
!232 = !DILocation(line: 220, column: 9, scope: !224)
!233 = !DILocation(line: 220, column: 13, scope: !224)
!234 = !{!216, !217, i64 32}
!235 = !DILocation(line: 222, column: 49, scope: !224)
!236 = !{!237, !217, i64 0}
!237 = !{!"lzma_coder_s", !238, i64 0, !240, i64 48, !216, i64 88, !239, i64 152, !239, i64 153, !241, i64 160}
!238 = !{!"", !217, i64 0, !220, i64 8, !220, i64 16, !220, i64 24, !220, i64 32, !239, i64 40}
!239 = !{!"_Bool", !218, i64 0}
!240 = !{!"", !217, i64 0, !217, i64 8, !217, i64 16, !217, i64 24, !217, i64 32}
!241 = !{!"", !220, i64 0, !220, i64 8, !218, i64 16}
!242 = !DILocation(line: 223, column: 45, scope: !224)
!243 = !DILocation(line: 223, column: 50, scope: !224)
!244 = !{!237, !220, i64 32}
!245 = !DILocation(line: 224, column: 40, scope: !224)
!246 = !DILocation(line: 224, column: 45, scope: !224)
!247 = !DILocation(line: 225, column: 32, scope: !224)
!248 = !DILocation(line: 225, column: 40, scope: !224)
!249 = !DILocation(line: 225, column: 47, scope: !224)
!250 = !{i64 0, i64 8, !251, i64 8, i64 8, !252, i64 16, i64 8, !252, i64 24, i64 8, !251, i64 32, i64 8, !251, i64 40, i64 8, !251, i64 48, i64 8, !251, i64 56, i64 8, !251}
!251 = !{!217, !217, i64 0}
!252 = !{!220, !220, i64 0}
!253 = !{i64 0, i64 8, !252, i64 8, i64 8, !252, i64 16, i64 8, !251, i64 24, i64 8, !251, i64 32, i64 8, !251, i64 40, i64 8, !251, i64 48, i64 8, !251}
!254 = !DILocation(line: 231, column: 2, scope: !205)
!255 = !DILocation(line: 226, column: 2, scope: !224)
!256 = !DILocation(line: 230, column: 2, scope: !171)
!257 = !DILocation(line: 230, column: 18, scope: !171)
!258 = !{!259, !217, i64 16}
!259 = !{!"lzma_filter_info_s", !220, i64 0, !217, i64 8, !217, i64 16}
!260 = !DILocation(line: 0, scope: !205)
!261 = !DILocation(line: 231, column: 2, scope: !262)
!262 = distinct !DILexicalBlock(scope: !205, file: !36, line: 231, column: 2)
!263 = !DILocation(line: 239, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !171, file: !36, line: 239, column: 6)
!265 = !{!266, !220, i64 0}
!266 = !{!"", !220, i64 0, !217, i64 8, !220, i64 16}
!267 = !DILocation(line: 239, column: 27, scope: !264)
!268 = !DILocation(line: 239, column: 6, scope: !171)
!269 = !DILocation(line: 249, column: 27, scope: !270)
!270 = distinct !DILexicalBlock(scope: !171, file: !36, line: 249, column: 6)
!271 = !DILocation(line: 249, column: 6, scope: !171)
!272 = !DILocation(line: 252, column: 47, scope: !171)
!273 = !DILocation(line: 252, column: 53, scope: !171)
!274 = !DILocation(line: 252, column: 23, scope: !171)
!275 = !DILocation(line: 255, column: 35, scope: !276)
!276 = distinct !DILexicalBlock(scope: !171, file: !36, line: 255, column: 6)
!277 = !DILocation(line: 255, column: 48, scope: !276)
!278 = !DILocation(line: 255, column: 53, scope: !276)
!279 = !DILocation(line: 255, column: 6, scope: !171)
!280 = !DILocation(line: 256, column: 3, scope: !281)
!281 = distinct !DILexicalBlock(scope: !276, file: !36, line: 255, column: 78)
!282 = !DILocation(line: 258, column: 29, scope: !281)
!283 = !DILocation(line: 258, column: 7, scope: !281)
!284 = !DILocation(line: 257, column: 32, scope: !281)
!285 = !DILocation(line: 258, column: 5, scope: !281)
!286 = !DILocation(line: 259, column: 53, scope: !287)
!287 = distinct !DILexicalBlock(scope: !281, file: !36, line: 259, column: 7)
!288 = !DILocation(line: 259, column: 7, scope: !281)
!289 = !DILocation(line: 262, column: 63, scope: !281)
!290 = !DILocation(line: 262, column: 45, scope: !281)
!291 = !DILocation(line: 262, column: 50, scope: !281)
!292 = !DILocation(line: 263, column: 2, scope: !281)
!293 = !DILocation(line: 60, column: 30, scope: !294, inlinedAt: !300)
!294 = distinct !DISubprogram(name: "lz_decoder_reset", scope: !36, file: !36, line: 55, type: !295, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !297)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !64}
!297 = !{!298, !299}
!298 = !DILocalVariable(name: "pcoder", arg: 1, scope: !294, file: !36, line: 55, type: !64)
!299 = !DILocalVariable(name: "coder", scope: !294, file: !36, line: 57, type: !34)
!300 = distinct !DILocation(line: 265, column: 2, scope: !171)
!301 = !DILocation(line: 60, column: 14, scope: !294, inlinedAt: !300)
!302 = !DILocation(line: 265, column: 25, scope: !171)
!303 = !DILocation(line: 0, scope: !294, inlinedAt: !300)
!304 = !DILocation(line: 58, column: 14, scope: !294, inlinedAt: !300)
!305 = !DILocation(line: 59, column: 19, scope: !294, inlinedAt: !300)
!306 = !DILocation(line: 60, column: 35, scope: !294, inlinedAt: !300)
!307 = !DILocation(line: 60, column: 2, scope: !294, inlinedAt: !300)
!308 = !DILocation(line: 60, column: 40, scope: !294, inlinedAt: !300)
!309 = !{!218, !218, i64 0}
!310 = !DILocation(line: 61, column: 14, scope: !294, inlinedAt: !300)
!311 = !DILocation(line: 61, column: 25, scope: !294, inlinedAt: !300)
!312 = !{!237, !239, i64 40}
!313 = !DILocation(line: 268, column: 17, scope: !209)
!314 = !{!266, !217, i64 8}
!315 = !DILocation(line: 268, column: 29, scope: !209)
!316 = !DILocation(line: 269, column: 4, scope: !209)
!317 = !DILocation(line: 282, column: 31, scope: !171)
!318 = !DILocation(line: 272, column: 28, scope: !208)
!319 = !DILocation(line: 0, scope: !208)
!320 = !DILocation(line: 274, column: 53, scope: !208)
!321 = !DILocation(line: 275, column: 39, scope: !208)
!322 = !DILocation(line: 275, column: 52, scope: !208)
!323 = !DILocation(line: 275, column: 80, scope: !208)
!324 = !DILocation(line: 275, column: 3, scope: !208)
!325 = !DILocation(line: 277, column: 32, scope: !208)
!326 = !DILocation(line: 277, column: 45, scope: !208)
!327 = !DILocation(line: 277, column: 49, scope: !208)
!328 = !{!237, !220, i64 8}
!329 = !DILocation(line: 278, column: 45, scope: !208)
!330 = !DILocation(line: 278, column: 50, scope: !208)
!331 = !{!237, !220, i64 16}
!332 = !DILocation(line: 279, column: 2, scope: !208)
!333 = !DILocation(line: 282, column: 39, scope: !171)
!334 = !DILocation(line: 282, column: 53, scope: !171)
!335 = !{!237, !239, i64 152}
!336 = !DILocation(line: 283, column: 39, scope: !171)
!337 = !DILocation(line: 283, column: 53, scope: !171)
!338 = !{!237, !239, i64 153}
!339 = !DILocation(line: 284, column: 39, scope: !171)
!340 = !DILocation(line: 288, column: 69, scope: !171)
!341 = !DILocation(line: 289, column: 12, scope: !171)
!342 = !DILocation(line: 284, column: 48, scope: !171)
!343 = !DILocation(line: 288, column: 9, scope: !171)
!344 = !DILocation(line: 288, column: 2, scope: !171)
!345 = !DILocation(line: 290, column: 1, scope: !171)
!346 = !DISubprogram(name: "lzma_alloc", scope: !66, file: !66, line: 211, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{!33, !51, !98}
!349 = !{}
!350 = distinct !DISubprogram(name: "lz_decode", scope: !36, file: !36, line: 130, type: !123, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !366}
!352 = !DILocalVariable(name: "pcoder", arg: 1, scope: !350, file: !36, line: 130, type: !64)
!353 = !DILocalVariable(name: "allocator", arg: 2, scope: !350, file: !36, line: 131, type: !98)
!354 = !DILocalVariable(name: "in", arg: 3, scope: !350, file: !36, line: 132, type: !75)
!355 = !DILocalVariable(name: "in_pos", arg: 4, scope: !350, file: !36, line: 132, type: !78)
!356 = !DILocalVariable(name: "in_size", arg: 5, scope: !350, file: !36, line: 133, type: !51)
!357 = !DILocalVariable(name: "out", arg: 6, scope: !350, file: !36, line: 133, type: !125)
!358 = !DILocalVariable(name: "out_pos", arg: 7, scope: !350, file: !36, line: 134, type: !78)
!359 = !DILocalVariable(name: "out_size", arg: 8, scope: !350, file: !36, line: 134, type: !51)
!360 = !DILocalVariable(name: "action", arg: 9, scope: !350, file: !36, line: 135, type: !126)
!361 = !DILocalVariable(name: "coder", scope: !350, file: !36, line: 137, type: !34)
!362 = !DILocalVariable(name: "ret", scope: !363, file: !36, line: 151, type: !206)
!363 = distinct !DILexicalBlock(scope: !364, file: !36, line: 147, column: 45)
!364 = distinct !DILexicalBlock(scope: !365, file: !36, line: 146, column: 7)
!365 = distinct !DILexicalBlock(scope: !350, file: !36, line: 144, column: 30)
!366 = !DILocalVariable(name: "ret", scope: !365, file: !36, line: 173, type: !206)
!367 = !DILocation(line: 0, scope: !350)
!368 = !DILocation(line: 138, column: 13, scope: !369)
!369 = distinct !DILexicalBlock(scope: !350, file: !36, line: 138, column: 6)
!370 = !DILocation(line: 138, column: 18, scope: !369)
!371 = !{!237, !217, i64 112}
!372 = !DILocation(line: 138, column: 23, scope: !369)
!373 = !DILocation(line: 138, column: 6, scope: !350)
!374 = !DILocation(line: 144, column: 9, scope: !350)
!375 = !DILocation(line: 144, column: 18, scope: !350)
!376 = !DILocation(line: 144, column: 2, scope: !350)
!377 = !{!378}
!378 = distinct !{!378, !379, !"decode_buffer: %out_pos"}
!379 = distinct !{!379, !"decode_buffer"}
!380 = !DILocation(line: 139, column: 10, scope: !369)
!381 = !DILocalVariable(name: "pcoder", arg: 1, scope: !382, file: !36, line: 67, type: !64)
!382 = distinct !DISubprogram(name: "decode_buffer", scope: !36, file: !36, line: 67, type: !383, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!71, !64, !75, !78, !51, !125, !78, !51}
!385 = !{!381, !386, !387, !388, !389, !390, !391, !392, !393, !395, !396}
!386 = !DILocalVariable(name: "in", arg: 2, scope: !382, file: !36, line: 68, type: !75)
!387 = !DILocalVariable(name: "in_pos", arg: 3, scope: !382, file: !36, line: 68, type: !78)
!388 = !DILocalVariable(name: "in_size", arg: 4, scope: !382, file: !36, line: 69, type: !51)
!389 = !DILocalVariable(name: "out", arg: 5, scope: !382, file: !36, line: 69, type: !125)
!390 = !DILocalVariable(name: "out_pos", arg: 6, scope: !382, file: !36, line: 70, type: !78)
!391 = !DILocalVariable(name: "out_size", arg: 7, scope: !382, file: !36, line: 70, type: !51)
!392 = !DILocalVariable(name: "coder", scope: !382, file: !36, line: 72, type: !34)
!393 = !DILocalVariable(name: "dict_start", scope: !394, file: !36, line: 80, type: !210)
!394 = distinct !DILexicalBlock(scope: !382, file: !36, line: 73, column: 15)
!395 = !DILocalVariable(name: "ret", scope: !394, file: !36, line: 91, type: !206)
!396 = !DILocalVariable(name: "copy_size", scope: !394, file: !36, line: 97, type: !210)
!397 = !DILocation(line: 0, scope: !382, inlinedAt: !398)
!398 = distinct !DILocation(line: 139, column: 10, scope: !369)
!399 = !DILocation(line: 73, column: 2, scope: !382, inlinedAt: !398)
!400 = !DILocation(line: 75, column: 19, scope: !401, inlinedAt: !398)
!401 = distinct !DILexicalBlock(scope: !394, file: !36, line: 75, column: 7)
!402 = !{!403, !404, !405, !378}
!403 = distinct !{!403, !379, !"decode_buffer: %in"}
!404 = distinct !{!404, !379, !"decode_buffer: %in_pos"}
!405 = distinct !{!405, !379, !"decode_buffer: %out"}
!406 = !DILocation(line: 75, column: 38, scope: !401, inlinedAt: !398)
!407 = !DILocation(line: 75, column: 23, scope: !401, inlinedAt: !398)
!408 = !DILocation(line: 75, column: 7, scope: !394, inlinedAt: !398)
!409 = !DILocation(line: 76, column: 20, scope: !401, inlinedAt: !398)
!410 = !DILocation(line: 76, column: 4, scope: !401, inlinedAt: !398)
!411 = !DILocation(line: 80, column: 41, scope: !394, inlinedAt: !398)
!412 = !DILocation(line: 0, scope: !394, inlinedAt: !398)
!413 = !DILocation(line: 87, column: 7, scope: !394, inlinedAt: !398)
!414 = !{!403, !404, !405}
!415 = !DILocation(line: 87, column: 5, scope: !394, inlinedAt: !398)
!416 = !DILocation(line: 86, column: 21, scope: !394, inlinedAt: !398)
!417 = !{!237, !220, i64 24}
!418 = !DILocation(line: 91, column: 34, scope: !394, inlinedAt: !398)
!419 = !{!237, !217, i64 56}
!420 = !DILocation(line: 92, column: 15, scope: !394, inlinedAt: !398)
!421 = !{!237, !217, i64 48}
!422 = !DILocation(line: 91, column: 24, scope: !394, inlinedAt: !398)
!423 = !{!405, !378}
!424 = !DILocation(line: 97, column: 40, scope: !394, inlinedAt: !398)
!425 = !DILocation(line: 97, column: 44, scope: !394, inlinedAt: !398)
!426 = !DILocation(line: 99, column: 14, scope: !394, inlinedAt: !398)
!427 = !DILocation(line: 99, column: 38, scope: !394, inlinedAt: !398)
!428 = !DILocation(line: 99, column: 42, scope: !394, inlinedAt: !398)
!429 = !DILocation(line: 99, column: 3, scope: !394, inlinedAt: !398)
!430 = !DILocation(line: 101, column: 12, scope: !394, inlinedAt: !398)
!431 = !DILocation(line: 104, column: 19, scope: !432, inlinedAt: !398)
!432 = distinct !DILexicalBlock(scope: !394, file: !36, line: 104, column: 7)
!433 = !{i8 0, i8 2}
!434 = !DILocation(line: 104, column: 7, scope: !394, inlinedAt: !398)
!435 = !DILocation(line: 0, scope: !294, inlinedAt: !436)
!436 = distinct !DILocation(line: 105, column: 4, scope: !437, inlinedAt: !398)
!437 = distinct !DILexicalBlock(scope: !432, file: !36, line: 104, column: 31)
!438 = !DILocation(line: 59, column: 19, scope: !294, inlinedAt: !436)
!439 = !DILocation(line: 60, column: 30, scope: !294, inlinedAt: !436)
!440 = !DILocation(line: 60, column: 35, scope: !294, inlinedAt: !436)
!441 = !DILocation(line: 60, column: 2, scope: !294, inlinedAt: !436)
!442 = !DILocation(line: 60, column: 40, scope: !294, inlinedAt: !436)
!443 = !DILocation(line: 61, column: 25, scope: !294, inlinedAt: !436)
!444 = !DILocation(line: 109, column: 12, scope: !445, inlinedAt: !398)
!445 = distinct !DILexicalBlock(scope: !437, file: !36, line: 109, column: 8)
!446 = !DILocation(line: 109, column: 23, scope: !445, inlinedAt: !398)
!447 = !DILocation(line: 121, column: 12, scope: !448, inlinedAt: !398)
!448 = distinct !DILexicalBlock(scope: !449, file: !36, line: 121, column: 8)
!449 = distinct !DILexicalBlock(scope: !432, file: !36, line: 111, column: 10)
!450 = !DILocation(line: 121, column: 23, scope: !448, inlinedAt: !398)
!451 = !DILocation(line: 122, column: 39, scope: !448, inlinedAt: !398)
!452 = !DILocation(line: 122, column: 25, scope: !448, inlinedAt: !398)
!453 = !DILocation(line: 121, column: 8, scope: !449, inlinedAt: !398)
!454 = distinct !{!454, !399, !455, !456}
!455 = !DILocation(line: 125, column: 2, scope: !382, inlinedAt: !398)
!456 = !{!"llvm.loop.unroll.disable"}
!457 = !DILocation(line: 146, column: 15, scope: !364)
!458 = !DILocation(line: 147, column: 5, scope: !364)
!459 = !DILocation(line: 147, column: 20, scope: !364)
!460 = !{!237, !220, i64 160}
!461 = !DILocation(line: 147, column: 39, scope: !364)
!462 = !{!237, !220, i64 168}
!463 = !DILocation(line: 147, column: 24, scope: !364)
!464 = !DILocation(line: 146, column: 7, scope: !365)
!465 = !DILocation(line: 149, column: 21, scope: !363)
!466 = !DILocation(line: 151, column: 37, scope: !363)
!467 = !DILocation(line: 152, column: 18, scope: !363)
!468 = !{!237, !217, i64 88}
!469 = !DILocation(line: 151, column: 25, scope: !363)
!470 = !DILocation(line: 0, scope: !363)
!471 = !DILocation(line: 157, column: 8, scope: !363)
!472 = !DILocation(line: 158, column: 26, scope: !473)
!473 = distinct !DILexicalBlock(scope: !363, file: !36, line: 157, column: 8)
!474 = !DILocation(line: 158, column: 5, scope: !473)
!475 = !DILocation(line: 159, column: 43, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !36, line: 159, column: 13)
!477 = !DILocation(line: 159, column: 48, scope: !476)
!478 = !DILocation(line: 159, column: 13, scope: !473)
!479 = !DILocation(line: 163, column: 14, scope: !480)
!480 = distinct !DILexicalBlock(scope: !365, file: !36, line: 163, column: 7)
!481 = !DILocation(line: 0, scope: !365)
!482 = !DILocation(line: 163, column: 7, scope: !365)
!483 = !DILocation(line: 164, column: 25, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !36, line: 164, column: 8)
!485 = distinct !DILexicalBlock(scope: !480, file: !36, line: 163, column: 29)
!486 = !DILocation(line: 164, column: 8, scope: !485)
!487 = !DILocation(line: 167, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !36, line: 167, column: 8)
!489 = !DILocation(line: 0, scope: !485)
!490 = !{!491}
!491 = distinct !{!491, !492, !"decode_buffer: %out_pos"}
!492 = distinct !{!492, !"decode_buffer"}
!493 = !DILocation(line: 173, column: 24, scope: !365)
!494 = !DILocation(line: 0, scope: !382, inlinedAt: !495)
!495 = distinct !DILocation(line: 173, column: 24, scope: !365)
!496 = !DILocation(line: 73, column: 2, scope: !382, inlinedAt: !495)
!497 = !DILocation(line: 75, column: 19, scope: !401, inlinedAt: !495)
!498 = !{!499, !500, !501, !491}
!499 = distinct !{!499, !492, !"decode_buffer: %in"}
!500 = distinct !{!500, !492, !"decode_buffer: %in_pos"}
!501 = distinct !{!501, !492, !"decode_buffer: %out"}
!502 = !DILocation(line: 75, column: 38, scope: !401, inlinedAt: !495)
!503 = !DILocation(line: 75, column: 23, scope: !401, inlinedAt: !495)
!504 = !DILocation(line: 75, column: 7, scope: !394, inlinedAt: !495)
!505 = !DILocation(line: 76, column: 20, scope: !401, inlinedAt: !495)
!506 = !DILocation(line: 76, column: 4, scope: !401, inlinedAt: !495)
!507 = !DILocation(line: 80, column: 41, scope: !394, inlinedAt: !495)
!508 = !DILocation(line: 0, scope: !394, inlinedAt: !495)
!509 = !DILocation(line: 87, column: 7, scope: !394, inlinedAt: !495)
!510 = !DILocation(line: 87, column: 5, scope: !394, inlinedAt: !495)
!511 = !DILocation(line: 86, column: 21, scope: !394, inlinedAt: !495)
!512 = !DILocation(line: 91, column: 34, scope: !394, inlinedAt: !495)
!513 = !DILocation(line: 92, column: 15, scope: !394, inlinedAt: !495)
!514 = !DILocation(line: 91, column: 24, scope: !394, inlinedAt: !495)
!515 = !{!501, !491}
!516 = !DILocation(line: 97, column: 40, scope: !394, inlinedAt: !495)
!517 = !DILocation(line: 97, column: 44, scope: !394, inlinedAt: !495)
!518 = !DILocation(line: 99, column: 14, scope: !394, inlinedAt: !495)
!519 = !DILocation(line: 99, column: 38, scope: !394, inlinedAt: !495)
!520 = !DILocation(line: 99, column: 42, scope: !394, inlinedAt: !495)
!521 = !DILocation(line: 99, column: 3, scope: !394, inlinedAt: !495)
!522 = !DILocation(line: 101, column: 12, scope: !394, inlinedAt: !495)
!523 = !{!499, !500, !501}
!524 = !DILocation(line: 104, column: 19, scope: !432, inlinedAt: !495)
!525 = !DILocation(line: 104, column: 7, scope: !394, inlinedAt: !495)
!526 = !DILocation(line: 0, scope: !294, inlinedAt: !527)
!527 = distinct !DILocation(line: 105, column: 4, scope: !437, inlinedAt: !495)
!528 = !DILocation(line: 59, column: 19, scope: !294, inlinedAt: !527)
!529 = !DILocation(line: 60, column: 30, scope: !294, inlinedAt: !527)
!530 = !DILocation(line: 60, column: 35, scope: !294, inlinedAt: !527)
!531 = !DILocation(line: 60, column: 2, scope: !294, inlinedAt: !527)
!532 = !DILocation(line: 60, column: 40, scope: !294, inlinedAt: !527)
!533 = !DILocation(line: 61, column: 25, scope: !294, inlinedAt: !527)
!534 = !DILocation(line: 109, column: 12, scope: !445, inlinedAt: !495)
!535 = !DILocation(line: 109, column: 23, scope: !445, inlinedAt: !495)
!536 = !DILocation(line: 121, column: 12, scope: !448, inlinedAt: !495)
!537 = !DILocation(line: 121, column: 23, scope: !448, inlinedAt: !495)
!538 = !DILocation(line: 122, column: 39, scope: !448, inlinedAt: !495)
!539 = !DILocation(line: 122, column: 25, scope: !448, inlinedAt: !495)
!540 = !DILocation(line: 121, column: 8, scope: !449, inlinedAt: !495)
!541 = distinct !{!541, !496, !542, !456}
!542 = !DILocation(line: 125, column: 2, scope: !382, inlinedAt: !495)
!543 = !DILocation(line: 177, column: 7, scope: !365)
!544 = !DILocation(line: 178, column: 25, scope: !545)
!545 = distinct !DILexicalBlock(scope: !365, file: !36, line: 177, column: 7)
!546 = !DILocation(line: 178, column: 4, scope: !545)
!547 = !DILocation(line: 181, column: 19, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !36, line: 181, column: 12)
!549 = distinct !DILexicalBlock(scope: !545, file: !36, line: 179, column: 12)
!550 = !DILocation(line: 181, column: 33, scope: !548)
!551 = distinct !{!551, !376, !552, !553, !456}
!552 = !DILocation(line: 183, column: 2, scope: !350)
!553 = !{!"llvm.loop.mustprogress"}
!554 = !DILocation(line: 186, column: 1, scope: !350)
!555 = distinct !DISubprogram(name: "lz_decoder_end", scope: !36, file: !36, line: 190, type: !96, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !556)
!556 = !{!557, !558, !559}
!557 = !DILocalVariable(name: "pcoder", arg: 1, scope: !555, file: !36, line: 190, type: !64)
!558 = !DILocalVariable(name: "allocator", arg: 2, scope: !555, file: !36, line: 190, type: !98)
!559 = !DILocalVariable(name: "coder", scope: !555, file: !36, line: 192, type: !34)
!560 = !DILocation(line: 0, scope: !555)
!561 = !DILocation(line: 193, column: 24, scope: !555)
!562 = !DILocation(line: 193, column: 2, scope: !555)
!563 = !DILocation(line: 194, column: 24, scope: !555)
!564 = !DILocation(line: 194, column: 2, scope: !555)
!565 = !DILocation(line: 196, column: 13, scope: !566)
!566 = distinct !DILexicalBlock(scope: !555, file: !36, line: 196, column: 6)
!567 = !DILocation(line: 196, column: 16, scope: !566)
!568 = !{!237, !217, i64 80}
!569 = !DILocation(line: 196, column: 20, scope: !566)
!570 = !DILocation(line: 0, scope: !566)
!571 = !DILocation(line: 196, column: 6, scope: !555)
!572 = !DILocation(line: 197, column: 3, scope: !566)
!573 = !DILocation(line: 199, column: 3, scope: !566)
!574 = !DILocation(line: 201, column: 2, scope: !555)
!575 = !DILocation(line: 203, column: 1, scope: !555)
!576 = !DISubprogram(name: "lzma_free", scope: !66, file: !66, line: 215, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !349)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !33, !98}
!579 = !DISubprogram(name: "lzma_next_filter_init", scope: !66, file: !66, line: 226, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !349)
!580 = distinct !DISubprogram(name: "lzma_lz_decoder_memusage", scope: !36, file: !36, line: 294, type: !581, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!92, !51}
!583 = !{!584}
!584 = !DILocalVariable(name: "dictionary_size", arg: 1, scope: !580, file: !36, line: 294, type: !51)
!585 = !DILocation(line: 0, scope: !580)
!586 = !DILocation(line: 296, column: 37, scope: !580)
!587 = !DILocation(line: 296, column: 2, scope: !580)
!588 = distinct !DISubprogram(name: "lzma_lz_decoder_uncompressed", scope: !36, file: !36, line: 301, type: !88, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !589)
!589 = !{!590, !591, !592}
!590 = !DILocalVariable(name: "pcoder", arg: 1, scope: !588, file: !36, line: 301, type: !64)
!591 = !DILocalVariable(name: "uncompressed_size", arg: 2, scope: !588, file: !36, line: 301, type: !90)
!592 = !DILocalVariable(name: "coder", scope: !588, file: !36, line: 303, type: !34)
!593 = !DILocation(line: 0, scope: !588)
!594 = !DILocation(line: 304, column: 9, scope: !588)
!595 = !DILocation(line: 304, column: 12, scope: !588)
!596 = !{!237, !217, i64 72}
!597 = !DILocation(line: 304, column: 39, scope: !588)
!598 = !DILocation(line: 304, column: 2, scope: !588)
!599 = !DILocation(line: 305, column: 1, scope: !588)
!600 = !DISubprogram(name: "lzma_next_end", scope: !66, file: !66, line: 237, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !349)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !174, !98}
