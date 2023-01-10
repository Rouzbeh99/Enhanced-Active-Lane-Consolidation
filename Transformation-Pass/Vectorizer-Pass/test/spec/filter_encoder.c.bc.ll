; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/filter_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter_encoder = type { i64, ptr, ptr, ptr, ptr, i32, ptr }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

@encoders = internal constant [9 x %struct.lzma_filter_encoder] [%struct.lzma_filter_encoder { i64 4611686018427387905, ptr @lzma_lzma_encoder_init, ptr @lzma_lzma_encoder_memusage, ptr null, ptr null, i32 5, ptr @lzma_lzma_props_encode }, %struct.lzma_filter_encoder { i64 33, ptr @lzma_lzma2_encoder_init, ptr @lzma_lzma2_encoder_memusage, ptr null, ptr null, i32 1, ptr @lzma_lzma2_props_encode }, %struct.lzma_filter_encoder { i64 4, ptr @lzma_simple_x86_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 5, ptr @lzma_simple_powerpc_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 6, ptr @lzma_simple_ia64_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 7, ptr @lzma_simple_arm_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 8, ptr @lzma_simple_armthumb_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 9, ptr @lzma_simple_sparc_encoder_init, ptr null, ptr null, ptr @lzma_simple_props_size, i32 0, ptr @lzma_simple_props_encode }, %struct.lzma_filter_encoder { i64 3, ptr @lzma_delta_encoder_init, ptr @lzma_delta_coder_memusage, ptr null, ptr null, i32 1, ptr @lzma_delta_props_encode }], align 16, !dbg !0

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local zeroext i8 @lzma_filter_encoder_is_supported(i64 noundef %id) local_unnamed_addr #0 !dbg !203 {
entry:
  call void @llvm.dbg.value(metadata i64 %id, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i64 %id, metadata !210, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i64 0, metadata !216, metadata !DIExpression()), !dbg !220
  br label %for.body.i, !dbg !221

for.body.i:                                       ; preds = %for.body.i, %entry
  %i.07.i = phi i64 [ 0, %entry ], [ %inc.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %i.07.i, metadata !216, metadata !DIExpression()), !dbg !220
  %arrayidx.i = getelementptr inbounds [9 x %struct.lzma_filter_encoder], ptr @encoders, i64 0, i64 %i.07.i, !dbg !222
  %0 = load i64, ptr %arrayidx.i, align 8, !dbg !225, !tbaa !226
  %cmp2.i = icmp eq i64 %0, %id, !dbg !233
  %inc.i = add nuw nsw i64 %i.07.i, 1
  %exitcond.not.i = icmp eq i64 %inc.i, 9
  %or.cond = select i1 %cmp2.i, i1 true, i1 %exitcond.not.i, !dbg !234
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !216, metadata !DIExpression()), !dbg !220
  br i1 %or.cond, label %encoder_find.exit, label %for.body.i, !dbg !234, !llvm.loop !235

encoder_find.exit:                                ; preds = %for.body.i
  %conv1 = zext i1 %cmp2.i to i8, !dbg !239
  ret i8 %conv1, !dbg !240
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define internal ptr @encoder_find(i64 noundef %id) #0 !dbg !211 {
entry:
  call void @llvm.dbg.value(metadata i64 %id, metadata !210, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i64 0, metadata !216, metadata !DIExpression()), !dbg !242
  br label %for.body, !dbg !243

for.body:                                         ; preds = %entry, %for.inc
  %i.07 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.07, metadata !216, metadata !DIExpression()), !dbg !242
  %arrayidx = getelementptr inbounds [9 x %struct.lzma_filter_encoder], ptr @encoders, i64 0, i64 %i.07, !dbg !244
  %0 = load i64, ptr %arrayidx, align 8, !dbg !245, !tbaa !226
  %cmp2 = icmp eq i64 %0, %id, !dbg !246
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !247

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %i.07, !dbg !248
  br label %cleanup, !dbg !249

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i64 %i.07, 1, !dbg !250
  call void @llvm.dbg.value(metadata i64 %inc, metadata !216, metadata !DIExpression()), !dbg !242
  %exitcond.not = icmp eq i64 %inc, 9, !dbg !251
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !243, !llvm.loop !252

cleanup:                                          ; preds = %for.inc, %if.then
  %spec.select = phi ptr [ %add.ptr, %if.then ], [ null, %for.inc ]
  ret ptr %spec.select, !dbg !254
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filters_update(ptr nocapture noundef readonly %strm, ptr noundef %filters) local_unnamed_addr #2 !dbg !255 {
entry:
  %reversed_filters = alloca [5 x %struct.lzma_filter], align 16
  call void @llvm.dbg.value(metadata ptr %strm, metadata !284, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %filters, metadata !285, metadata !DIExpression()), !dbg !293
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !294
  %0 = load ptr, ptr %internal, align 8, !dbg !294, !tbaa !296
  %update = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7, !dbg !298
  %1 = load ptr, ptr %update, align 8, !dbg !298, !tbaa !299
  %cmp = icmp eq ptr %1, null, !dbg !303
  br i1 %cmp, label %return, label %if.end, !dbg !304

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %filters, metadata !305, metadata !DIExpression()) #6, !dbg !310
  %call.i = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @encoder_find, ptr noundef %filters) #6, !dbg !313
  %cmp1 = icmp eq i64 %call.i, -1, !dbg !314
  br i1 %cmp1, label %return, label %while.cond, !dbg !315

while.cond:                                       ; preds = %if.end, %while.cond
  %count.0 = phi i64 [ %inc, %while.cond ], [ 1, %if.end ], !dbg !293
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !286, metadata !DIExpression()), !dbg !293
  %arrayidx = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %count.0, !dbg !316
  %2 = load i64, ptr %arrayidx, align 8, !dbg !317, !tbaa !318
  %cmp4.not = icmp eq i64 %2, -1, !dbg !320
  %inc = add i64 %count.0, 1, !dbg !321
  call void @llvm.dbg.value(metadata i64 %inc, metadata !286, metadata !DIExpression()), !dbg !293
  br i1 %cmp4.not, label %while.end, label %while.cond, !dbg !322, !llvm.loop !323

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %reversed_filters) #6, !dbg !325
  call void @llvm.dbg.declare(metadata ptr %reversed_filters, metadata !287, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i64 0, metadata !291, metadata !DIExpression()), !dbg !327
  %cmp531.not = icmp eq i64 %count.0, 0, !dbg !328
  br i1 %cmp531.not, label %for.cond.cleanup, label %for.body, !dbg !330

for.cond.cleanup:                                 ; preds = %for.body, %while.end
  %arrayidx10 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %reversed_filters, i64 0, i64 %count.0, !dbg !331
  store i64 -1, ptr %arrayidx10, align 16, !dbg !332, !tbaa !318
  %3 = load ptr, ptr %internal, align 8, !dbg !333, !tbaa !296
  %update14 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %3, i64 0, i32 7, !dbg !334
  %4 = load ptr, ptr %update14, align 8, !dbg !334, !tbaa !299
  %5 = load ptr, ptr %3, align 8, !dbg !335, !tbaa !336
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !337
  %6 = load ptr, ptr %allocator, align 8, !dbg !337, !tbaa !338
  %call17 = call i32 %4(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %filters, ptr noundef nonnull %reversed_filters) #6, !dbg !339
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %reversed_filters) #6, !dbg !340
  br label %return

for.body:                                         ; preds = %while.end, %for.body
  %i.032 = phi i64 [ %inc9, %for.body ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i64 %i.032, metadata !291, metadata !DIExpression()), !dbg !327
  %7 = xor i64 %i.032, -1, !dbg !341
  %sub6 = add i64 %count.0, %7, !dbg !341
  %arrayidx7 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %reversed_filters, i64 0, i64 %sub6, !dbg !342
  %arrayidx8 = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %i.032, !dbg !343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %arrayidx7, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx8, i64 16, i1 false), !dbg !343, !tbaa.struct !344
  %inc9 = add nuw i64 %i.032, 1, !dbg !347
  call void @llvm.dbg.value(metadata i64 %inc9, metadata !291, metadata !DIExpression()), !dbg !327
  %exitcond.not = icmp eq i64 %inc9, %count.0, !dbg !328
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !330, !llvm.loop !348

return:                                           ; preds = %if.end, %entry, %for.cond.cleanup
  %retval.0 = phi i32 [ %call17, %for.cond.cleanup ], [ 11, %entry ], [ 8, %if.end ], !dbg !293
  ret i32 %retval.0, !dbg !340
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_raw_encoder_memusage(ptr noundef %filters) local_unnamed_addr #2 !dbg !306 {
entry:
  call void @llvm.dbg.value(metadata ptr %filters, metadata !305, metadata !DIExpression()), !dbg !350
  %call = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @encoder_find, ptr noundef %filters) #6, !dbg !351
  ret i64 %call, !dbg !352
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options) local_unnamed_addr #2 !dbg !353 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !357, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !358, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata ptr %options, metadata !359, metadata !DIExpression()), !dbg !360
  %call = tail call i32 @lzma_raw_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options, ptr noundef nonnull @encoder_find, i1 noundef zeroext true) #6, !dbg !361
  ret i32 %call, !dbg !362
}

declare !dbg !363 i32 @lzma_raw_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_encoder(ptr noundef %strm, ptr noundef %options) local_unnamed_addr #2 !dbg !367 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !369, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata ptr %options, metadata !370, metadata !DIExpression()), !dbg !376
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #6, !dbg !377
  call void @llvm.dbg.value(metadata i32 %call, metadata !371, metadata !DIExpression()), !dbg !378
  %cmp.not = icmp eq i32 %call, 0, !dbg !379
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !381
  %0 = load ptr, ptr %internal, align 8, !dbg !381, !tbaa !296
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !381
  %1 = load ptr, ptr %allocator, align 8, !dbg !381, !tbaa !338
  %call3 = tail call i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %options, ptr noundef nonnull @encoder_find, i1 noundef zeroext true) #6, !dbg !381
  call void @llvm.dbg.value(metadata i32 %call3, metadata !375, metadata !DIExpression()), !dbg !382
  %cmp4.not = icmp eq i32 %call3, 0, !dbg !383
  br i1 %cmp4.not, label %do.end10, label %cleanup7, !dbg !381

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #6, !dbg !385
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !387, !tbaa !296
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, !dbg !388
  store i8 1, ptr %supported_actions, align 8, !dbg !389, !tbaa !390
  %arrayidx14 = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, i64 1, !dbg !391
  store i8 1, ptr %arrayidx14, align 1, !dbg !392, !tbaa !390
  %arrayidx17 = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, i64 3, !dbg !393
  store i8 1, ptr %arrayidx17, align 1, !dbg !394, !tbaa !390
  br label %return, !dbg !395

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !376
  ret i32 %retval.2, !dbg !396
}

declare !dbg !397 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #5

declare !dbg !400 void @lzma_end(ptr noundef) local_unnamed_addr #5

declare !dbg !403 i64 @lzma_raw_coder_memusage(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_properties_size(ptr noundef %size, ptr nocapture noundef readonly %filter) local_unnamed_addr #2 !dbg !406 {
entry:
  call void @llvm.dbg.value(metadata ptr %size, metadata !410, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata ptr %filter, metadata !411, metadata !DIExpression()), !dbg !414
  %0 = load i64, ptr %filter, align 8, !dbg !415, !tbaa !318
  call void @llvm.dbg.value(metadata i64 %0, metadata !210, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 0, metadata !216, metadata !DIExpression()), !dbg !418
  br label %for.body.i, !dbg !419

for.body.i:                                       ; preds = %for.inc.i, %entry
  %i.07.i = phi i64 [ 0, %entry ], [ %inc.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %i.07.i, metadata !216, metadata !DIExpression()), !dbg !418
  %arrayidx.i = getelementptr inbounds [9 x %struct.lzma_filter_encoder], ptr @encoders, i64 0, i64 %i.07.i, !dbg !420
  %1 = load i64, ptr %arrayidx.i, align 8, !dbg !421, !tbaa !226
  %cmp2.i = icmp eq i64 %1, %0, !dbg !422
  br i1 %cmp2.i, label %if.end, label %for.inc.i, !dbg !423

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i64 %i.07.i, 1, !dbg !424
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !216, metadata !DIExpression()), !dbg !418
  %exitcond.not.i = icmp eq i64 %inc.i, 9, !dbg !425
  br i1 %exitcond.not.i, label %if.then, label %for.body.i, !dbg !419, !llvm.loop !426

if.then:                                          ; preds = %for.inc.i
  call void @llvm.dbg.value(metadata !DIArgList(ptr @encoders, i64 undef), metadata !412, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !414
  %cmp2 = icmp sgt i64 %0, -1, !dbg !428
  %cond = select i1 %cmp2, i32 8, i32 11, !dbg !431
  br label %cleanup, !dbg !432

if.end:                                           ; preds = %for.body.i
  call void @llvm.dbg.value(metadata !DIArgList(ptr @encoders, i64 %i.07.i), metadata !412, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !414
  %props_size_get = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %i.07.i, i32 4, !dbg !433
  %2 = load ptr, ptr %props_size_get, align 8, !dbg !433, !tbaa !435
  %cmp3 = icmp eq ptr %2, null, !dbg !436
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !437

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata !DIArgList(ptr @encoders, i64 %i.07.i), metadata !412, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !414
  %props_size_fixed = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %i.07.i, i32 5, !dbg !438
  %3 = load i32, ptr %props_size_fixed, align 8, !dbg !438, !tbaa !440
  store i32 %3, ptr %size, align 4, !dbg !441, !tbaa !442
  br label %cleanup, !dbg !443

if.end5:                                          ; preds = %if.end
  %options = getelementptr inbounds %struct.lzma_filter, ptr %filter, i64 0, i32 1, !dbg !444
  %4 = load ptr, ptr %options, align 8, !dbg !444, !tbaa !445
  %call7 = tail call i32 %2(ptr noundef %size, ptr noundef %4) #6, !dbg !446
  br label %cleanup, !dbg !447

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.then4 ], [ %call7, %if.end5 ], !dbg !414
  ret i32 %retval.0, !dbg !448
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_properties_encode(ptr nocapture noundef readonly %filter, ptr noundef %props) local_unnamed_addr #2 !dbg !449 {
entry:
  call void @llvm.dbg.value(metadata ptr %filter, metadata !453, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %props, metadata !454, metadata !DIExpression()), !dbg !456
  %0 = load i64, ptr %filter, align 8, !dbg !457, !tbaa !318
  call void @llvm.dbg.value(metadata i64 %0, metadata !210, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 0, metadata !216, metadata !DIExpression()), !dbg !460
  br label %for.body.i, !dbg !461

for.body.i:                                       ; preds = %for.inc.i, %entry
  %i.07.i = phi i64 [ 0, %entry ], [ %inc.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %i.07.i, metadata !216, metadata !DIExpression()), !dbg !460
  %arrayidx.i = getelementptr inbounds [9 x %struct.lzma_filter_encoder], ptr @encoders, i64 0, i64 %i.07.i, !dbg !462
  %1 = load i64, ptr %arrayidx.i, align 8, !dbg !463, !tbaa !226
  %cmp2.i = icmp eq i64 %1, %0, !dbg !464
  br i1 %cmp2.i, label %if.end, label %for.inc.i, !dbg !465

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i64 %i.07.i, 1, !dbg !466
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !216, metadata !DIExpression()), !dbg !460
  %exitcond.not.i = icmp eq i64 %inc.i, 9, !dbg !467
  br i1 %exitcond.not.i, label %cleanup, label %for.body.i, !dbg !461, !llvm.loop !468

if.end:                                           ; preds = %for.body.i
  call void @llvm.dbg.value(metadata !DIArgList(ptr @encoders, i64 %i.07.i), metadata !455, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !456
  %props_encode = getelementptr inbounds %struct.lzma_filter_encoder, ptr @encoders, i64 %i.07.i, i32 6, !dbg !470
  %2 = load ptr, ptr %props_encode, align 8, !dbg !470, !tbaa !472
  %cmp1 = icmp eq ptr %2, null, !dbg !473
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !474

if.end3:                                          ; preds = %if.end
  %options = getelementptr inbounds %struct.lzma_filter, ptr %filter, i64 0, i32 1, !dbg !475
  %3 = load ptr, ptr %options, align 8, !dbg !475, !tbaa !445
  %call5 = tail call i32 %2(ptr noundef %3, ptr noundef %props) #6, !dbg !476
  br label %cleanup, !dbg !477

cleanup:                                          ; preds = %for.inc.i, %if.end, %if.end3
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ 0, %if.end ], [ 11, %for.inc.i ], !dbg !456
  ret i32 %retval.0, !dbg !478
}

declare i32 @lzma_lzma_encoder_init(ptr noundef, ptr noundef, ptr noundef) #5

declare i64 @lzma_lzma_encoder_memusage(ptr noundef) #5

declare i32 @lzma_lzma_props_encode(ptr noundef, ptr noundef) #5

declare i32 @lzma_lzma2_encoder_init(ptr noundef, ptr noundef, ptr noundef) #5

declare i64 @lzma_lzma2_encoder_memusage(ptr noundef) #5

declare i32 @lzma_lzma2_props_encode(ptr noundef, ptr noundef) #5

declare i32 @lzma_simple_x86_encoder_init(ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @lzma_simple_props_size(ptr noundef, ptr noundef) #5

declare i32 @lzma_simple_props_encode(ptr noundef, ptr noundef) #5

declare i32 @lzma_simple_powerpc_encoder_init(ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @lzma_simple_ia64_encoder_init(ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @lzma_simple_arm_encoder_init(ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @lzma_simple_armthumb_encoder_init(ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @lzma_simple_sparc_encoder_init(ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @lzma_delta_encoder_init(ptr noundef, ptr noundef, ptr noundef) #5

declare i64 @lzma_delta_coder_memusage(ptr noundef) #5

declare i32 @lzma_delta_props_encode(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "encoders", scope: !2, file: !169, line: 56, type: !170, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !136, globals: !168, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "fc5fadddba740b28186eb750b5e2aebe")
!4 = !{!5, !21, !27, !34, !133}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 57, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "LZMA_OK", value: 0)
!10 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!11 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!12 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!13 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!14 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!15 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!16 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!17 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!18 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!19 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!20 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 250, baseType: !7, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!24 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!25 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!26 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 27, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!31 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!32 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!33 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !36, file: !35, line: 187, baseType: !7, size: 32, elements: !126)
!35 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !35, line: 179, size: 704, elements: !37)
!37 = !{!38, !118, !119, !120, !125}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !36, file: !35, line: 181, baseType: !39, size: 512)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !35, line: 80, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !35, line: 124, size: 512, elements: !41)
!41 = !{!42, !45, !53, !56, !89, !94, !101, !106}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !40, file: !35, line: 126, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !35, line: 78, baseType: null)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !40, file: !35, line: 130, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !47, line: 63, baseType: !48)
!47 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !49, line: 27, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !51, line: 45, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !40, file: !35, line: 136, baseType: !54, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !55, line: 90, baseType: !52)
!55 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!56 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !40, file: !35, line: 139, baseType: !57, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !35, line: 94, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !43, !62, !78, !84, !71, !86, !84, !71, !88}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !6, line: 237, baseType: !5)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !6, line: 403, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 341, size: 192, elements: !65)
!65 = !{!66, !73, !77}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !64, file: !6, line: 376, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !70, !71, !71}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !52)
!72 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !64, file: !6, line: 390, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !70, !70}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !64, file: !6, line: 401, baseType: !70, size: 64, offset: 128)
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
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !6, line: 322, baseType: !21)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !40, file: !35, line: 144, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !35, line: 102, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !43, !62}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !40, file: !35, line: 148, baseType: !95, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !28, line: 55, baseType: !27)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !40, file: !35, line: 152, baseType: !102, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!61, !43, !105, !105, !48}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !40, file: !35, line: 157, baseType: !107, size: 64, offset: 448)
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
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !36, file: !35, line: 194, baseType: !34, size: 32, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !36, file: !35, line: 199, baseType: !71, size: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !36, file: !35, line: 202, baseType: !121, size: 32, offset: 640)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 32, elements: !123)
!122 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!123 = !{!124}
!124 = !DISubrange(count: 4)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !36, file: !35, line: 206, baseType: !122, size: 8, offset: 672)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!128 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!129 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!130 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!131 = !DIEnumerator(name: "ISEQ_END", value: 4)
!132 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 44, baseType: !7, size: 32, elements: !134)
!134 = !{!135}
!135 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!136 = !{!70, !137}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_find", file: !138, line: 35, baseType: !139)
!138 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2b3d0d0ae4b0d967ddcb9fa677c708ca")
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !46}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_coder", file: !138, line: 32, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 20, size: 192, elements: !146)
!146 = !{!147, !148, !162}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !145, file: !138, line: 22, baseType: !46, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !145, file: !138, line: 26, baseType: !149, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !35, line: 86, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!61, !153, !62, !154}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !35, line: 82, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !35, line: 109, size: 192, elements: !158)
!158 = !{!159, !160, !161}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !157, file: !35, line: 112, baseType: !46, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !157, file: !35, line: 116, baseType: !149, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !157, file: !35, line: 119, baseType: !70, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !145, file: !138, line: 30, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!48, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!168 = !{!0}
!169 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fc5fadddba740b28186eb750b5e2aebe")
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 4032, elements: !194)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_encoder", file: !169, line: 53, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 21, size: 448, elements: !174)
!174 = !{!175, !176, !177, !178, !182, !189, !190}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !173, file: !169, line: 23, baseType: !46, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !173, file: !169, line: 27, baseType: !149, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !173, file: !169, line: 31, baseType: !163, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !173, file: !169, line: 37, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!46, !166}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "props_size_get", scope: !173, file: !169, line: 42, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!61, !186, !166}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !49, line: 26, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !51, line: 42, baseType: !7)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "props_size_fixed", scope: !173, file: !169, line: 43, baseType: !187, size: 32, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "props_encode", scope: !173, file: !169, line: 51, baseType: !191, size: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!61, !166, !87}
!194 = !{!195}
!195 = !DISubrange(count: 9)
!196 = !{i32 7, !"Dwarf Version", i32 5}
!197 = !{i32 2, !"Debug Info Version", i32 3}
!198 = !{i32 1, !"wchar_size", i32 4}
!199 = !{i32 7, !"PIC Level", i32 2}
!200 = !{i32 7, !"PIE Level", i32 2}
!201 = !{i32 7, !"uwtable", i32 2}
!202 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!203 = distinct !DISubprogram(name: "lzma_filter_encoder_is_supported", scope: !169, file: !169, line: 165, type: !204, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !207)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !46}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !6, line: 29, baseType: !83)
!207 = !{!208}
!208 = !DILocalVariable(name: "id", arg: 1, scope: !203, file: !169, line: 165, type: !46)
!209 = !DILocation(line: 0, scope: !203)
!210 = !DILocalVariable(name: "id", arg: 1, scope: !211, file: !169, line: 154, type: !46)
!211 = distinct !DISubprogram(name: "encoder_find", scope: !169, file: !169, line: 154, type: !212, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !215)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !46}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!215 = !{!210, !216}
!216 = !DILocalVariable(name: "i", scope: !217, file: !169, line: 156, type: !71)
!217 = distinct !DILexicalBlock(scope: !211, file: !169, line: 156, column: 2)
!218 = !DILocation(line: 0, scope: !211, inlinedAt: !219)
!219 = distinct !DILocation(line: 167, column: 9, scope: !203)
!220 = !DILocation(line: 0, scope: !217, inlinedAt: !219)
!221 = !DILocation(line: 156, column: 2, scope: !217, inlinedAt: !219)
!222 = !DILocation(line: 157, column: 7, scope: !223, inlinedAt: !219)
!223 = distinct !DILexicalBlock(scope: !224, file: !169, line: 157, column: 7)
!224 = distinct !DILexicalBlock(scope: !217, file: !169, line: 156, column: 2)
!225 = !DILocation(line: 157, column: 19, scope: !223, inlinedAt: !219)
!226 = !{!227, !228, i64 0}
!227 = !{!"", !228, i64 0, !231, i64 8, !231, i64 16, !231, i64 24, !231, i64 32, !232, i64 40, !231, i64 48}
!228 = !{!"long", !229, i64 0}
!229 = !{!"omnipotent char", !230, i64 0}
!230 = !{!"Simple C/C++ TBAA"}
!231 = !{!"any pointer", !229, i64 0}
!232 = !{!"int", !229, i64 0}
!233 = !DILocation(line: 157, column: 22, scope: !223, inlinedAt: !219)
!234 = !DILocation(line: 157, column: 7, scope: !224, inlinedAt: !219)
!235 = distinct !{!235, !221, !236, !237, !238}
!236 = !DILocation(line: 158, column: 22, scope: !217, inlinedAt: !219)
!237 = !{!"llvm.loop.mustprogress"}
!238 = !{!"llvm.loop.unroll.disable"}
!239 = !DILocation(line: 167, column: 9, scope: !203)
!240 = !DILocation(line: 167, column: 2, scope: !203)
!241 = !DILocation(line: 0, scope: !211)
!242 = !DILocation(line: 0, scope: !217)
!243 = !DILocation(line: 156, column: 2, scope: !217)
!244 = !DILocation(line: 157, column: 7, scope: !223)
!245 = !DILocation(line: 157, column: 19, scope: !223)
!246 = !DILocation(line: 157, column: 22, scope: !223)
!247 = !DILocation(line: 157, column: 7, scope: !224)
!248 = !DILocation(line: 158, column: 20, scope: !223)
!249 = !DILocation(line: 158, column: 4, scope: !223)
!250 = !DILocation(line: 156, column: 47, scope: !224)
!251 = !DILocation(line: 156, column: 23, scope: !224)
!252 = distinct !{!252, !243, !253, !237, !238}
!253 = !DILocation(line: 158, column: 22, scope: !217)
!254 = !DILocation(line: 161, column: 1, scope: !211)
!255 = distinct !DISubprogram(name: "lzma_filters_update", scope: !169, file: !169, line: 172, type: !256, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !283)
!256 = !DISubroutineType(types: !257)
!257 = !{!61, !258, !110}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !6, line: 490, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 453, size: 1088, elements: !261)
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !272, !273, !274, !275, !276, !277, !278, !279, !280, !282}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !260, file: !6, line: 454, baseType: !79, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !260, file: !6, line: 455, baseType: !71, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !260, file: !6, line: 456, baseType: !48, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !260, file: !6, line: 458, baseType: !87, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !260, file: !6, line: 459, baseType: !71, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !260, file: !6, line: 460, baseType: !48, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !260, file: !6, line: 468, baseType: !62, size: 64, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !260, file: !6, line: 471, baseType: !270, size: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !6, line: 411, baseType: !36)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !260, file: !6, line: 479, baseType: !70, size: 64, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !260, file: !6, line: 480, baseType: !70, size: 64, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !260, file: !6, line: 481, baseType: !70, size: 64, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !260, file: !6, line: 482, baseType: !70, size: 64, offset: 704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !260, file: !6, line: 483, baseType: !48, size: 64, offset: 768)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !260, file: !6, line: 484, baseType: !48, size: 64, offset: 832)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !260, file: !6, line: 485, baseType: !71, size: 64, offset: 896)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !260, file: !6, line: 486, baseType: !71, size: 64, offset: 960)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !260, file: !6, line: 487, baseType: !281, size: 32, offset: 1024)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !6, line: 46, baseType: !133)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !260, file: !6, line: 488, baseType: !281, size: 32, offset: 1056)
!283 = !{!284, !285, !286, !287, !291}
!284 = !DILocalVariable(name: "strm", arg: 1, scope: !255, file: !169, line: 172, type: !258)
!285 = !DILocalVariable(name: "filters", arg: 2, scope: !255, file: !169, line: 172, type: !110)
!286 = !DILocalVariable(name: "count", scope: !255, file: !169, line: 183, type: !71)
!287 = !DILocalVariable(name: "reversed_filters", scope: !255, file: !169, line: 187, type: !288)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 640, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 5)
!291 = !DILocalVariable(name: "i", scope: !292, file: !169, line: 188, type: !71)
!292 = distinct !DILexicalBlock(scope: !255, file: !169, line: 188, column: 2)
!293 = !DILocation(line: 0, scope: !255)
!294 = !DILocation(line: 174, column: 12, scope: !295)
!295 = distinct !DILexicalBlock(scope: !255, file: !169, line: 174, column: 6)
!296 = !{!297, !231, i64 56}
!297 = !{!"", !231, i64 0, !228, i64 8, !228, i64 16, !231, i64 24, !228, i64 32, !228, i64 40, !231, i64 48, !231, i64 56, !231, i64 64, !231, i64 72, !231, i64 80, !231, i64 88, !228, i64 96, !228, i64 104, !228, i64 112, !228, i64 120, !229, i64 128, !229, i64 132}
!298 = !DILocation(line: 174, column: 27, scope: !295)
!299 = !{!300, !231, i64 56}
!300 = !{!"lzma_internal_s", !301, i64 0, !229, i64 64, !228, i64 72, !229, i64 80, !302, i64 84}
!301 = !{!"lzma_next_coder_s", !231, i64 0, !228, i64 8, !228, i64 16, !231, i64 24, !231, i64 32, !231, i64 40, !231, i64 48, !231, i64 56}
!302 = !{!"_Bool", !229, i64 0}
!303 = !DILocation(line: 174, column: 34, scope: !295)
!304 = !DILocation(line: 174, column: 6, scope: !255)
!305 = !DILocalVariable(name: "filters", arg: 1, scope: !306, file: !169, line: 222, type: !110)
!306 = distinct !DISubprogram(name: "lzma_raw_encoder_memusage", scope: !169, file: !169, line: 222, type: !307, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!48, !110}
!309 = !{!305}
!310 = !DILocation(line: 0, scope: !306, inlinedAt: !311)
!311 = distinct !DILocation(line: 178, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !255, file: !169, line: 178, column: 6)
!313 = !DILocation(line: 224, column: 9, scope: !306, inlinedAt: !311)
!314 = !DILocation(line: 178, column: 41, scope: !312)
!315 = !DILocation(line: 178, column: 6, scope: !255)
!316 = !DILocation(line: 184, column: 9, scope: !255)
!317 = !DILocation(line: 184, column: 24, scope: !255)
!318 = !{!319, !228, i64 0}
!319 = !{!"", !228, i64 0, !231, i64 8}
!320 = !DILocation(line: 184, column: 27, scope: !255)
!321 = !DILocation(line: 185, column: 3, scope: !255)
!322 = !DILocation(line: 184, column: 2, scope: !255)
!323 = distinct !{!323, !322, !324, !237, !238}
!324 = !DILocation(line: 185, column: 5, scope: !255)
!325 = !DILocation(line: 187, column: 2, scope: !255)
!326 = !DILocation(line: 187, column: 14, scope: !255)
!327 = !DILocation(line: 0, scope: !292)
!328 = !DILocation(line: 188, column: 23, scope: !329)
!329 = distinct !DILexicalBlock(scope: !292, file: !169, line: 188, column: 2)
!330 = !DILocation(line: 188, column: 2, scope: !292)
!331 = !DILocation(line: 191, column: 2, scope: !255)
!332 = !DILocation(line: 191, column: 29, scope: !255)
!333 = !DILocation(line: 193, column: 15, scope: !255)
!334 = !DILocation(line: 193, column: 30, scope: !255)
!335 = !DILocation(line: 193, column: 58, scope: !255)
!336 = !{!300, !231, i64 0}
!337 = !DILocation(line: 194, column: 10, scope: !255)
!338 = !{!297, !231, i64 48}
!339 = !DILocation(line: 193, column: 9, scope: !255)
!340 = !DILocation(line: 195, column: 1, scope: !255)
!341 = !DILocation(line: 189, column: 30, scope: !329)
!342 = !DILocation(line: 189, column: 3, scope: !329)
!343 = !DILocation(line: 189, column: 37, scope: !329)
!344 = !{i64 0, i64 8, !345, i64 8, i64 8, !346}
!345 = !{!228, !228, i64 0}
!346 = !{!231, !231, i64 0}
!347 = !DILocation(line: 188, column: 32, scope: !329)
!348 = distinct !{!348, !330, !349, !237, !238}
!349 = !DILocation(line: 189, column: 46, scope: !292)
!350 = !DILocation(line: 0, scope: !306)
!351 = !DILocation(line: 224, column: 9, scope: !306)
!352 = !DILocation(line: 224, column: 2, scope: !306)
!353 = distinct !DISubprogram(name: "lzma_raw_encoder_init", scope: !169, file: !169, line: 199, type: !354, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!61, !153, !62, !110}
!356 = !{!357, !358, !359}
!357 = !DILocalVariable(name: "next", arg: 1, scope: !353, file: !169, line: 199, type: !153)
!358 = !DILocalVariable(name: "allocator", arg: 2, scope: !353, file: !169, line: 199, type: !62)
!359 = !DILocalVariable(name: "options", arg: 3, scope: !353, file: !169, line: 200, type: !110)
!360 = !DILocation(line: 0, scope: !353)
!361 = !DILocation(line: 202, column: 9, scope: !353)
!362 = !DILocation(line: 202, column: 2, scope: !353)
!363 = !DISubprogram(name: "lzma_raw_coder_init", scope: !138, file: !138, line: 38, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{!61, !153, !62, !110, !137, !122}
!366 = !{}
!367 = distinct !DISubprogram(name: "lzma_raw_encoder", scope: !169, file: !169, line: 208, type: !256, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!368 = !{!369, !370, !371, !375}
!369 = !DILocalVariable(name: "strm", arg: 1, scope: !367, file: !169, line: 208, type: !258)
!370 = !DILocalVariable(name: "options", arg: 2, scope: !367, file: !169, line: 208, type: !110)
!371 = !DILocalVariable(name: "ret_", scope: !372, file: !169, line: 210, type: !374)
!372 = distinct !DILexicalBlock(scope: !373, file: !169, line: 210, column: 2)
!373 = distinct !DILexicalBlock(scope: !367, file: !169, line: 210, column: 2)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!375 = !DILocalVariable(name: "ret_", scope: !373, file: !169, line: 210, type: !374)
!376 = !DILocation(line: 0, scope: !367)
!377 = !DILocation(line: 210, column: 2, scope: !372)
!378 = !DILocation(line: 0, scope: !372)
!379 = !DILocation(line: 210, column: 2, scope: !380)
!380 = distinct !DILexicalBlock(scope: !372, file: !169, line: 210, column: 2)
!381 = !DILocation(line: 210, column: 2, scope: !373)
!382 = !DILocation(line: 0, scope: !373)
!383 = !DILocation(line: 210, column: 2, scope: !384)
!384 = distinct !DILexicalBlock(scope: !373, file: !169, line: 210, column: 2)
!385 = !DILocation(line: 210, column: 2, scope: !386)
!386 = distinct !DILexicalBlock(scope: !384, file: !169, line: 210, column: 2)
!387 = !DILocation(line: 213, column: 8, scope: !367)
!388 = !DILocation(line: 213, column: 18, scope: !367)
!389 = !DILocation(line: 213, column: 46, scope: !367)
!390 = !{!302, !302, i64 0}
!391 = !DILocation(line: 214, column: 2, scope: !367)
!392 = !DILocation(line: 214, column: 53, scope: !367)
!393 = !DILocation(line: 215, column: 2, scope: !367)
!394 = !DILocation(line: 215, column: 49, scope: !367)
!395 = !DILocation(line: 217, column: 2, scope: !367)
!396 = !DILocation(line: 218, column: 1, scope: !367)
!397 = !DISubprogram(name: "lzma_strm_init", scope: !35, file: !35, line: 220, type: !398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !366)
!398 = !DISubroutineType(types: !399)
!399 = !{!61, !258}
!400 = !DISubprogram(name: "lzma_end", scope: !6, file: !6, line: 546, type: !401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !366)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !258}
!403 = !DISubprogram(name: "lzma_raw_coder_memusage", scope: !138, file: !138, line: 44, type: !404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !366)
!404 = !DISubroutineType(types: !405)
!405 = !{!48, !137, !110}
!406 = distinct !DISubprogram(name: "lzma_properties_size", scope: !169, file: !169, line: 255, type: !407, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !409)
!407 = !DISubroutineType(types: !408)
!408 = !{!61, !186, !110}
!409 = !{!410, !411, !412}
!410 = !DILocalVariable(name: "size", arg: 1, scope: !406, file: !169, line: 255, type: !186)
!411 = !DILocalVariable(name: "filter", arg: 2, scope: !406, file: !169, line: 255, type: !110)
!412 = !DILocalVariable(name: "fe", scope: !406, file: !169, line: 257, type: !413)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!414 = !DILocation(line: 0, scope: !406)
!415 = !DILocation(line: 257, column: 61, scope: !406)
!416 = !DILocation(line: 0, scope: !211, inlinedAt: !417)
!417 = distinct !DILocation(line: 257, column: 40, scope: !406)
!418 = !DILocation(line: 0, scope: !217, inlinedAt: !417)
!419 = !DILocation(line: 156, column: 2, scope: !217, inlinedAt: !417)
!420 = !DILocation(line: 157, column: 7, scope: !223, inlinedAt: !417)
!421 = !DILocation(line: 157, column: 19, scope: !223, inlinedAt: !417)
!422 = !DILocation(line: 157, column: 22, scope: !223, inlinedAt: !417)
!423 = !DILocation(line: 157, column: 7, scope: !224, inlinedAt: !417)
!424 = !DILocation(line: 156, column: 47, scope: !224, inlinedAt: !417)
!425 = !DILocation(line: 156, column: 23, scope: !224, inlinedAt: !417)
!426 = distinct !{!426, !419, !427, !237, !238}
!427 = !DILocation(line: 158, column: 22, scope: !217, inlinedAt: !417)
!428 = !DILocation(line: 263, column: 21, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !169, line: 258, column: 18)
!430 = distinct !DILexicalBlock(scope: !406, file: !169, line: 258, column: 6)
!431 = !DILocation(line: 263, column: 10, scope: !429)
!432 = !DILocation(line: 263, column: 3, scope: !429)
!433 = !DILocation(line: 267, column: 10, scope: !434)
!434 = distinct !DILexicalBlock(scope: !406, file: !169, line: 267, column: 6)
!435 = !{!227, !231, i64 32}
!436 = !DILocation(line: 267, column: 25, scope: !434)
!437 = !DILocation(line: 267, column: 6, scope: !406)
!438 = !DILocation(line: 269, column: 15, scope: !439)
!439 = distinct !DILexicalBlock(scope: !434, file: !169, line: 267, column: 34)
!440 = !{!227, !232, i64 40}
!441 = !DILocation(line: 269, column: 9, scope: !439)
!442 = !{!232, !232, i64 0}
!443 = !DILocation(line: 270, column: 3, scope: !439)
!444 = !DILocation(line: 273, column: 42, scope: !406)
!445 = !{!319, !231, i64 8}
!446 = !DILocation(line: 273, column: 9, scope: !406)
!447 = !DILocation(line: 273, column: 2, scope: !406)
!448 = !DILocation(line: 274, column: 1, scope: !406)
!449 = distinct !DISubprogram(name: "lzma_properties_encode", scope: !169, file: !169, line: 278, type: !450, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{!61, !110, !87}
!452 = !{!453, !454, !455}
!453 = !DILocalVariable(name: "filter", arg: 1, scope: !449, file: !169, line: 278, type: !110)
!454 = !DILocalVariable(name: "props", arg: 2, scope: !449, file: !169, line: 278, type: !87)
!455 = !DILocalVariable(name: "fe", scope: !449, file: !169, line: 280, type: !413)
!456 = !DILocation(line: 0, scope: !449)
!457 = !DILocation(line: 280, column: 61, scope: !449)
!458 = !DILocation(line: 0, scope: !211, inlinedAt: !459)
!459 = distinct !DILocation(line: 280, column: 40, scope: !449)
!460 = !DILocation(line: 0, scope: !217, inlinedAt: !459)
!461 = !DILocation(line: 156, column: 2, scope: !217, inlinedAt: !459)
!462 = !DILocation(line: 157, column: 7, scope: !223, inlinedAt: !459)
!463 = !DILocation(line: 157, column: 19, scope: !223, inlinedAt: !459)
!464 = !DILocation(line: 157, column: 22, scope: !223, inlinedAt: !459)
!465 = !DILocation(line: 157, column: 7, scope: !224, inlinedAt: !459)
!466 = !DILocation(line: 156, column: 47, scope: !224, inlinedAt: !459)
!467 = !DILocation(line: 156, column: 23, scope: !224, inlinedAt: !459)
!468 = distinct !{!468, !461, !469, !237, !238}
!469 = !DILocation(line: 158, column: 22, scope: !217, inlinedAt: !459)
!470 = !DILocation(line: 284, column: 10, scope: !471)
!471 = distinct !DILexicalBlock(scope: !449, file: !169, line: 284, column: 6)
!472 = !{!227, !231, i64 48}
!473 = !DILocation(line: 284, column: 23, scope: !471)
!474 = !DILocation(line: 284, column: 6, scope: !449)
!475 = !DILocation(line: 287, column: 34, scope: !449)
!476 = !DILocation(line: 287, column: 9, scope: !449)
!477 = !DILocation(line: 287, column: 2, scope: !449)
!478 = !DILocation(line: 288, column: 1, scope: !449)
