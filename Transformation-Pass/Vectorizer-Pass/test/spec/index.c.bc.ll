; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/index.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_index_s = type { %struct.index_tree, i64, i64, i64, i64, i64, i32 }
%struct.index_tree = type { ptr, ptr, ptr, i32 }
%struct.index_stream = type { %struct.index_tree_node_s, i32, i64, %struct.index_tree, i64, i64, %struct.lzma_stream_flags, i64 }
%struct.index_tree_node_s = type { i64, i64, ptr, ptr, ptr }
%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.index_group = type { %struct.index_tree_node_s, i64, i64, i64, [0 x %struct.index_record] }
%struct.index_record = type { i64, i64 }
%struct.index_cat_info = type { i64, i64, i64, i32, ptr }
%struct.lzma_index_iter = type { %struct.anon, %struct.anon.0, [6 x %union.anon] }
%struct.anon = type { ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.0 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }

; Function Attrs: nounwind uwtable
define dso_local ptr @lzma_index_init(ptr noundef %allocator) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !171, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !175, metadata !DIExpression()) #13, !dbg !179
  %call.i = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %allocator) #13, !dbg !181
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !178, metadata !DIExpression()) #13, !dbg !179
  %cmp.not.i = icmp eq ptr %call.i, null, !dbg !182
  br i1 %cmp.not.i, label %cleanup5, label %if.end, !dbg !184

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !185, metadata !DIExpression()) #13, !dbg !191
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %call.i, i8 0, i64 28, i1 false) #13, !dbg !194
  %uncompressed_size.i = getelementptr inbounds %struct.lzma_index_s, ptr %call.i, i64 0, i32 1, !dbg !195
  %prealloc.i = getelementptr inbounds %struct.lzma_index_s, ptr %call.i, i64 0, i32 5, !dbg !196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %uncompressed_size.i, i8 0, i64 32, i1 false) #13, !dbg !197
  store i64 512, ptr %prealloc.i, align 8, !dbg !198, !tbaa !199
  %checks.i = getelementptr inbounds %struct.lzma_index_s, ptr %call.i, i64 0, i32 6, !dbg !207
  store i32 0, ptr %checks.i, align 8, !dbg !208, !tbaa !209
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !172, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 0, metadata !210, metadata !DIExpression()) #13, !dbg !220
  call void @llvm.dbg.value(metadata i64 0, metadata !215, metadata !DIExpression()) #13, !dbg !220
  call void @llvm.dbg.value(metadata i64 1, metadata !216, metadata !DIExpression()) #13, !dbg !220
  call void @llvm.dbg.value(metadata i64 0, metadata !217, metadata !DIExpression()) #13, !dbg !220
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !218, metadata !DIExpression()) #13, !dbg !220
  %call.i12 = tail call ptr @lzma_alloc(i64 noundef 168, ptr noundef %allocator) #13, !dbg !222
  call void @llvm.dbg.value(metadata ptr %call.i12, metadata !219, metadata !DIExpression()) #13, !dbg !220
  %cmp.i = icmp eq ptr %call.i12, null, !dbg !223
  br i1 %cmp.i, label %if.then3, label %if.end4, !dbg !225

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %call.i12, metadata !173, metadata !DIExpression()), !dbg !174
  tail call void @lzma_free(ptr noundef nonnull %call.i, ptr noundef %allocator) #13, !dbg !226
  br label %cleanup5, !dbg !229

if.end4:                                          ; preds = %if.end
  %number.i = getelementptr inbounds %struct.index_stream, ptr %call.i12, i64 0, i32 1, !dbg !230
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %call.i12, i8 0, i64 40, i1 false), !dbg !231
  store i32 1, ptr %number.i, align 8, !dbg !232, !tbaa !233
  %block_number_base7.i = getelementptr inbounds %struct.index_stream, ptr %call.i12, i64 0, i32 2, !dbg !237
  call void @llvm.dbg.value(metadata ptr %call.i12, metadata !185, metadata !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value)) #13, !dbg !238
  %record_count.i = getelementptr inbounds %struct.index_stream, ptr %call.i12, i64 0, i32 4, !dbg !240
  %stream_flags.i = getelementptr inbounds %struct.index_stream, ptr %call.i12, i64 0, i32 6, !dbg !241
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %record_count.i, i8 0, i64 16, i1 false) #13, !dbg !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %block_number_base7.i, i8 0, i64 36, i1 false), !dbg !243
  store i32 -1, ptr %stream_flags.i, align 8, !dbg !244, !tbaa !245
  %stream_padding.i = getelementptr inbounds %struct.index_stream, ptr %call.i12, i64 0, i32 7, !dbg !246
  store i64 0, ptr %stream_padding.i, align 8, !dbg !247, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %call.i12, metadata !173, metadata !DIExpression()), !dbg !174
  tail call fastcc void @index_tree_append(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i12), !dbg !249
  br label %cleanup5, !dbg !250

cleanup5:                                         ; preds = %entry, %if.then3, %if.end4
  %retval.1 = phi ptr [ null, %if.then3 ], [ %call.i, %if.end4 ], [ null, %entry ], !dbg !174
  ret ptr %retval.1, !dbg !251
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !252 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @index_tree_append(ptr nocapture noundef %tree, ptr noundef %node) unnamed_addr #4 !dbg !257 {
entry:
  call void @llvm.dbg.value(metadata ptr %tree, metadata !261, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr %node, metadata !262, metadata !DIExpression()), !dbg !267
  %rightmost = getelementptr inbounds %struct.index_tree, ptr %tree, i64 0, i32 2, !dbg !268
  %0 = load ptr, ptr %rightmost, align 8, !dbg !268, !tbaa !269
  %parent = getelementptr inbounds %struct.index_tree_node_s, ptr %node, i64 0, i32 2, !dbg !270
  store ptr %0, ptr %parent, align 8, !dbg !271, !tbaa !272
  %left = getelementptr inbounds %struct.index_tree_node_s, ptr %node, i64 0, i32 3, !dbg !273
  %count = getelementptr inbounds %struct.index_tree, ptr %tree, i64 0, i32 3, !dbg !274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %left, i8 0, i64 16, i1 false), !dbg !275
  %1 = load i32, ptr %count, align 8, !dbg !276, !tbaa !277
  %inc = add i32 %1, 1, !dbg !276
  store i32 %inc, ptr %count, align 8, !dbg !276, !tbaa !277
  %2 = load ptr, ptr %tree, align 8, !dbg !278, !tbaa !280
  %cmp = icmp eq ptr %2, null, !dbg !281
  br i1 %cmp, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %entry
  store ptr %node, ptr %tree, align 8, !dbg !283, !tbaa !280
  %leftmost = getelementptr inbounds %struct.index_tree, ptr %tree, i64 0, i32 1, !dbg !285
  store ptr %node, ptr %leftmost, align 8, !dbg !286, !tbaa !287
  store ptr %node, ptr %rightmost, align 8, !dbg !288, !tbaa !269
  br label %return, !dbg !289

if.end:                                           ; preds = %entry
  %right4 = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 4, !dbg !290
  store ptr %node, ptr %right4, align 8, !dbg !291, !tbaa !292
  store ptr %node, ptr %rightmost, align 8, !dbg !293, !tbaa !269
  call void @llvm.dbg.value(metadata i32 %inc, metadata !294, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 31, metadata !300, metadata !DIExpression()), !dbg !301
  %cmp.i = icmp ult i32 %inc, 65536, !dbg !303
  %shl.i = shl i32 %inc, 16
  %spec.select.i = select i1 %cmp.i, i32 %shl.i, i32 %inc, !dbg !305
  %spec.select34.i = select i1 %cmp.i, i32 15, i32 31, !dbg !305
  call void @llvm.dbg.value(metadata i32 %spec.select34.i, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !294, metadata !DIExpression()), !dbg !301
  %cmp2.i = icmp ult i32 %spec.select.i, 16777216, !dbg !306
  br i1 %cmp2.i, label %if.then3.i, label %if.end5.i, !dbg !308

if.then3.i:                                       ; preds = %if.end
  %shl4.i = shl nuw i32 %spec.select.i, 8, !dbg !309
  call void @llvm.dbg.value(metadata i32 %shl4.i, metadata !294, metadata !DIExpression()), !dbg !301
  %sub.i = add nsw i32 %spec.select34.i, -8, !dbg !311
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !300, metadata !DIExpression()), !dbg !301
  br label %if.end5.i, !dbg !312

if.end5.i:                                        ; preds = %if.then3.i, %if.end
  %n.addr.1.i = phi i32 [ %shl4.i, %if.then3.i ], [ %spec.select.i, %if.end ], !dbg !301
  %i.1.i = phi i32 [ %sub.i, %if.then3.i ], [ %spec.select34.i, %if.end ], !dbg !301
  call void @llvm.dbg.value(metadata i32 %i.1.i, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 %n.addr.1.i, metadata !294, metadata !DIExpression()), !dbg !301
  %cmp7.i = icmp ult i32 %n.addr.1.i, 268435456, !dbg !313
  br i1 %cmp7.i, label %if.then8.i, label %if.end11.i, !dbg !315

if.then8.i:                                       ; preds = %if.end5.i
  %shl9.i = shl nuw i32 %n.addr.1.i, 4, !dbg !316
  call void @llvm.dbg.value(metadata i32 %shl9.i, metadata !294, metadata !DIExpression()), !dbg !301
  %sub10.i = add nsw i32 %i.1.i, -4, !dbg !318
  call void @llvm.dbg.value(metadata i32 %sub10.i, metadata !300, metadata !DIExpression()), !dbg !301
  br label %if.end11.i, !dbg !319

if.end11.i:                                       ; preds = %if.then8.i, %if.end5.i
  %n.addr.2.i = phi i32 [ %shl9.i, %if.then8.i ], [ %n.addr.1.i, %if.end5.i ], !dbg !301
  %i.2.i = phi i32 [ %sub10.i, %if.then8.i ], [ %i.1.i, %if.end5.i ], !dbg !301
  call void @llvm.dbg.value(metadata i32 %i.2.i, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 %n.addr.2.i, metadata !294, metadata !DIExpression()), !dbg !301
  %cmp13.i = icmp ult i32 %n.addr.2.i, 1073741824, !dbg !320
  br i1 %cmp13.i, label %if.then14.i, label %bsr32.exit, !dbg !322

if.then14.i:                                      ; preds = %if.end11.i
  %shl15.i = shl nuw i32 %n.addr.2.i, 2, !dbg !323
  call void @llvm.dbg.value(metadata i32 %shl15.i, metadata !294, metadata !DIExpression()), !dbg !301
  %sub16.i = add nsw i32 %i.2.i, -2, !dbg !325
  call void @llvm.dbg.value(metadata i32 %sub16.i, metadata !300, metadata !DIExpression()), !dbg !301
  br label %bsr32.exit, !dbg !326

bsr32.exit:                                       ; preds = %if.end11.i, %if.then14.i
  %n.addr.3.i = phi i32 [ %shl15.i, %if.then14.i ], [ %n.addr.2.i, %if.end11.i ], !dbg !301
  %i.3.i = phi i32 [ %sub16.i, %if.then14.i ], [ %i.2.i, %if.end11.i ], !dbg !301
  call void @llvm.dbg.value(metadata i32 %i.3.i, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 %n.addr.3.i, metadata !294, metadata !DIExpression()), !dbg !301
  %n.addr.3.lobit.i = ashr i32 %n.addr.3.i, 31, !dbg !327
  %n.addr.3.lobit.not.i = xor i32 %n.addr.3.lobit.i, -1, !dbg !327
  %spec.select35.i = add nsw i32 %i.3.i, %n.addr.3.lobit.not.i, !dbg !327
  call void @llvm.dbg.value(metadata i32 %spec.select35.i, metadata !300, metadata !DIExpression()), !dbg !301
  %shl = shl nuw i32 1, %spec.select35.i, !dbg !328
  call void @llvm.dbg.value(metadata !DIArgList(i32 %inc, i32 %shl), metadata !263, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value)), !dbg !267
  %cmp8.not = icmp eq i32 %inc, %shl, !dbg !329
  br i1 %cmp8.not, label %return, label %if.then9, !dbg !330

if.then9:                                         ; preds = %bsr32.exit
  call void @llvm.dbg.value(metadata i32 %inc, metadata !331, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 0, metadata !334, metadata !DIExpression()), !dbg !335
  %and.i = and i32 %inc, 65535, !dbg !337
  %cmp.i71 = icmp eq i32 %and.i, 0, !dbg !339
  %shr.i = lshr i32 %inc, 16
  %spec.select.i72 = select i1 %cmp.i71, i32 %shr.i, i32 %inc, !dbg !340
  %spec.select34.i73 = select i1 %cmp.i71, i32 16, i32 0, !dbg !340
  call void @llvm.dbg.value(metadata i32 %spec.select34.i73, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %spec.select.i72, metadata !331, metadata !DIExpression()), !dbg !335
  %and1.i = and i32 %spec.select.i72, 255, !dbg !341
  %cmp2.i74 = icmp eq i32 %and1.i, 0, !dbg !343
  br i1 %cmp2.i74, label %if.then3.i75, label %if.end5.i79, !dbg !344

if.then3.i75:                                     ; preds = %if.then9
  %shr4.i = lshr i32 %spec.select.i72, 8, !dbg !345
  call void @llvm.dbg.value(metadata i32 %shr4.i, metadata !331, metadata !DIExpression()), !dbg !335
  %add.i = or i32 %spec.select34.i73, 8, !dbg !347
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !334, metadata !DIExpression()), !dbg !335
  br label %if.end5.i79, !dbg !348

if.end5.i79:                                      ; preds = %if.then3.i75, %if.then9
  %n.addr.1.i76 = phi i32 [ %shr4.i, %if.then3.i75 ], [ %spec.select.i72, %if.then9 ], !dbg !335
  %i.1.i77 = phi i32 [ %add.i, %if.then3.i75 ], [ %spec.select34.i73, %if.then9 ], !dbg !335
  call void @llvm.dbg.value(metadata i32 %i.1.i77, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %n.addr.1.i76, metadata !331, metadata !DIExpression()), !dbg !335
  %and6.i = and i32 %n.addr.1.i76, 15, !dbg !349
  %cmp7.i78 = icmp eq i32 %and6.i, 0, !dbg !351
  br i1 %cmp7.i78, label %if.then8.i80, label %if.end11.i84, !dbg !352

if.then8.i80:                                     ; preds = %if.end5.i79
  %shr9.i = lshr i32 %n.addr.1.i76, 4, !dbg !353
  call void @llvm.dbg.value(metadata i32 %shr9.i, metadata !331, metadata !DIExpression()), !dbg !335
  %add10.i = add nsw i32 %i.1.i77, 4, !dbg !355
  call void @llvm.dbg.value(metadata i32 %add10.i, metadata !334, metadata !DIExpression()), !dbg !335
  br label %if.end11.i84, !dbg !356

if.end11.i84:                                     ; preds = %if.then8.i80, %if.end5.i79
  %n.addr.2.i81 = phi i32 [ %shr9.i, %if.then8.i80 ], [ %n.addr.1.i76, %if.end5.i79 ], !dbg !335
  %i.2.i82 = phi i32 [ %add10.i, %if.then8.i80 ], [ %i.1.i77, %if.end5.i79 ], !dbg !335
  call void @llvm.dbg.value(metadata i32 %i.2.i82, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %n.addr.2.i81, metadata !331, metadata !DIExpression()), !dbg !335
  %and12.i = and i32 %n.addr.2.i81, 3, !dbg !357
  %cmp13.i83 = icmp eq i32 %and12.i, 0, !dbg !359
  br i1 %cmp13.i83, label %if.then14.i85, label %ctz32.exit, !dbg !360

if.then14.i85:                                    ; preds = %if.end11.i84
  %shr15.i = lshr i32 %n.addr.2.i81, 2, !dbg !361
  call void @llvm.dbg.value(metadata i32 %shr15.i, metadata !331, metadata !DIExpression()), !dbg !335
  %add16.i = add nsw i32 %i.2.i82, 2, !dbg !363
  call void @llvm.dbg.value(metadata i32 %add16.i, metadata !334, metadata !DIExpression()), !dbg !335
  br label %ctz32.exit, !dbg !364

ctz32.exit:                                       ; preds = %if.end11.i84, %if.then14.i85
  %n.addr.3.i86 = phi i32 [ %shr15.i, %if.then14.i85 ], [ %n.addr.2.i81, %if.end11.i84 ], !dbg !335
  %i.3.i87 = phi i32 [ %add16.i, %if.then14.i85 ], [ %i.2.i82, %if.end11.i84 ], !dbg !335
  call void @llvm.dbg.value(metadata i32 %i.3.i87, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %n.addr.3.i86, metadata !331, metadata !DIExpression()), !dbg !335
  %and18.i = and i32 %n.addr.3.i86, 1, !dbg !365
  %3 = xor i32 %and18.i, 1, !dbg !367
  call void @llvm.dbg.value(metadata i32 undef, metadata !334, metadata !DIExpression()), !dbg !335
  %spec.select35.i88 = add i32 %i.3.i87, 2, !dbg !367
  %add = add i32 %spec.select35.i88, %3, !dbg !368
  call void @llvm.dbg.value(metadata i32 %add, metadata !263, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr undef, metadata !262, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr %0, metadata !262, metadata !DIExpression()), !dbg !267
  %dec89 = add i32 %add, -1, !dbg !369
  call void @llvm.dbg.value(metadata i32 %dec89, metadata !263, metadata !DIExpression()), !dbg !267
  %cmp13.not90 = icmp eq i32 %dec89, 0, !dbg !370
  br i1 %cmp13.not90, label %do.end, label %do.body.do.body_crit_edge, !dbg !371, !llvm.loop !373

do.body.do.body_crit_edge:                        ; preds = %ctz32.exit, %do.body.do.body_crit_edge
  %dec91 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ %dec89, %ctz32.exit ]
  %4 = phi ptr [ %.pre, %do.body.do.body_crit_edge ], [ %0, %ctz32.exit ]
  call void @llvm.dbg.value(metadata ptr %4, metadata !262, metadata !DIExpression()), !dbg !267
  %parent12.phi.trans.insert = getelementptr inbounds %struct.index_tree_node_s, ptr %4, i64 0, i32 2
  %.pre = load ptr, ptr %parent12.phi.trans.insert, align 8, !dbg !378, !tbaa !272
  call void @llvm.dbg.value(metadata i32 %dec91, metadata !263, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr %.pre, metadata !262, metadata !DIExpression()), !dbg !267
  %dec = add i32 %dec91, -1, !dbg !369
  call void @llvm.dbg.value(metadata i32 %dec, metadata !263, metadata !DIExpression()), !dbg !267
  %cmp13.not = icmp eq i32 %dec, 0, !dbg !370
  br i1 %cmp13.not, label %do.end, label %do.body.do.body_crit_edge, !dbg !371, !llvm.loop !373

do.end:                                           ; preds = %do.body.do.body_crit_edge, %ctz32.exit
  %.lcssa = phi ptr [ %0, %ctz32.exit ], [ %.pre, %do.body.do.body_crit_edge ], !dbg !378
  %right14 = getelementptr inbounds %struct.index_tree_node_s, ptr %.lcssa, i64 0, i32 4, !dbg !379
  %5 = load ptr, ptr %right14, align 8, !dbg !379, !tbaa !292
  call void @llvm.dbg.value(metadata ptr %5, metadata !264, metadata !DIExpression()), !dbg !380
  %parent15 = getelementptr inbounds %struct.index_tree_node_s, ptr %.lcssa, i64 0, i32 2, !dbg !381
  %6 = load ptr, ptr %parent15, align 8, !dbg !381, !tbaa !272
  %cmp16 = icmp eq ptr %6, null, !dbg !383
  %right20 = getelementptr inbounds %struct.index_tree_node_s, ptr %6, i64 0, i32 4
  %spec.select = select i1 %cmp16, ptr %tree, ptr %right20, !dbg !384
  store ptr %5, ptr %spec.select, align 8, !dbg !385, !tbaa !386
  %parent23 = getelementptr inbounds %struct.index_tree_node_s, ptr %5, i64 0, i32 2, !dbg !387
  store ptr %6, ptr %parent23, align 8, !dbg !388, !tbaa !272
  %left24 = getelementptr inbounds %struct.index_tree_node_s, ptr %5, i64 0, i32 3, !dbg !389
  %7 = load ptr, ptr %left24, align 8, !dbg !389, !tbaa !390
  store ptr %7, ptr %right14, align 8, !dbg !391, !tbaa !292
  %cmp27.not = icmp eq ptr %7, null, !dbg !392
  br i1 %cmp27.not, label %if.end31, label %if.then28, !dbg !394

if.then28:                                        ; preds = %do.end
  %parent30 = getelementptr inbounds %struct.index_tree_node_s, ptr %7, i64 0, i32 2, !dbg !395
  store ptr %.lcssa, ptr %parent30, align 8, !dbg !396, !tbaa !272
  br label %if.end31, !dbg !397

if.end31:                                         ; preds = %if.then28, %do.end
  store ptr %.lcssa, ptr %left24, align 8, !dbg !398, !tbaa !390
  store ptr %5, ptr %parent15, align 8, !dbg !399, !tbaa !272
  br label %return, !dbg !400

return:                                           ; preds = %bsr32.exit, %if.end31, %if.then
  ret void, !dbg !401
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_index_end(ptr noundef %i, ptr noundef %allocator) local_unnamed_addr #0 !dbg !402 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !406, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !407, metadata !DIExpression()), !dbg !408
  %cmp.not = icmp eq ptr %i, null, !dbg !409
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !411

if.then:                                          ; preds = %entry
  %i.val = load ptr, ptr %i, align 8, !dbg !412, !tbaa !280
  call void @llvm.dbg.value(metadata ptr undef, metadata !414, metadata !DIExpression()) #13, !dbg !422
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !420, metadata !DIExpression()) #13, !dbg !422
  call void @llvm.dbg.value(metadata ptr @index_stream_end, metadata !421, metadata !DIExpression()) #13, !dbg !422
  %cmp.not.i = icmp eq ptr %i.val, null, !dbg !424
  br i1 %cmp.not.i, label %index_tree_end.exit, label %if.then.i, !dbg !426

if.then.i:                                        ; preds = %if.then
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %i.val, ptr noundef %allocator, ptr noundef nonnull @index_stream_end) #13, !dbg !427
  br label %index_tree_end.exit, !dbg !427

index_tree_end.exit:                              ; preds = %if.then, %if.then.i
  tail call void @lzma_free(ptr noundef nonnull %i, ptr noundef %allocator) #13, !dbg !428
  br label %if.end, !dbg !429

if.end:                                           ; preds = %index_tree_end.exit, %entry
  ret void, !dbg !430
}

; Function Attrs: nounwind uwtable
define internal void @index_stream_end(ptr nocapture noundef readonly %node, ptr noundef %allocator) #0 !dbg !431 {
entry:
  call void @llvm.dbg.value(metadata ptr %node, metadata !433, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !434, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata ptr %node, metadata !435, metadata !DIExpression()), !dbg !436
  %groups = getelementptr inbounds %struct.index_stream, ptr %node, i64 0, i32 3, !dbg !437
  %groups.val = load ptr, ptr %groups, align 8, !dbg !438, !tbaa !280
  call void @llvm.dbg.value(metadata ptr undef, metadata !414, metadata !DIExpression()) #13, !dbg !439
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !420, metadata !DIExpression()) #13, !dbg !439
  call void @llvm.dbg.value(metadata ptr null, metadata !421, metadata !DIExpression()) #13, !dbg !439
  %cmp.not.i = icmp eq ptr %groups.val, null, !dbg !441
  br i1 %cmp.not.i, label %index_tree_end.exit, label %if.then.i, !dbg !442

if.then.i:                                        ; preds = %entry
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %groups.val, ptr noundef %allocator, ptr noundef null) #13, !dbg !443
  br label %index_tree_end.exit, !dbg !443

index_tree_end.exit:                              ; preds = %entry, %if.then.i
  ret void, !dbg !444
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define dso_local void @lzma_index_prealloc(ptr nocapture noundef writeonly %i, i64 noundef %records) local_unnamed_addr #5 !dbg !445 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !449, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata i64 %records, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = tail call i64 @llvm.umin.i64(i64 %records, i64 1152921504606846971), !dbg !452
  call void @llvm.dbg.value(metadata i64 %0, metadata !450, metadata !DIExpression()), !dbg !451
  %prealloc = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 5, !dbg !453
  store i64 %0, ptr %prealloc, align 8, !dbg !454, !tbaa !199
  ret void, !dbg !455
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @lzma_index_memusage(i64 noundef %streams, i64 noundef %blocks) local_unnamed_addr #6 !dbg !456 {
entry:
  call void @llvm.dbg.value(metadata i64 %streams, metadata !460, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 %blocks, metadata !461, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 32, metadata !462, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 296, metadata !464, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 8288, metadata !465, metadata !DIExpression()), !dbg !473
  %sub = add i64 %blocks, 511, !dbg !474
  %div31 = lshr i64 %sub, 9, !dbg !475
  call void @llvm.dbg.value(metadata i64 %div31, metadata !466, metadata !DIExpression()), !dbg !473
  %mul = mul i64 %streams, 296, !dbg !476
  call void @llvm.dbg.value(metadata i64 %mul, metadata !468, metadata !DIExpression()), !dbg !473
  %mul1 = mul i64 %div31, 8288, !dbg !477
  call void @llvm.dbg.value(metadata i64 %mul1, metadata !470, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 112, metadata !471, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 -113, metadata !472, metadata !DIExpression()), !dbg !473
  %0 = add i64 %streams, -4294967296, !dbg !478
  %1 = icmp ult i64 %0, -4294967295, !dbg !478
  %2 = icmp ugt i64 %blocks, 1139567201464682496, !dbg !478
  %3 = or i1 %2, %1, !dbg !478
  %sub10 = sub i64 -113, %mul
  %cmp11 = icmp ult i64 %sub10, %mul1
  %or.cond = or i1 %3, %cmp11, !dbg !478
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !478

if.end:                                           ; preds = %entry
  %add12 = add i64 %mul, 112, !dbg !480
  %add13 = add i64 %add12, %mul1, !dbg !481
  br label %cleanup, !dbg !482

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %add13, %if.end ], [ -1, %entry ], !dbg !473
  ret i64 %retval.0, !dbg !483
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @lzma_index_memused(ptr nocapture noundef readonly %i) local_unnamed_addr #7 !dbg !484 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !490, metadata !DIExpression()), !dbg !491
  %count = getelementptr inbounds %struct.index_tree, ptr %i, i64 0, i32 3, !dbg !492
  %0 = load i32, ptr %count, align 8, !dbg !492, !tbaa !493
  %conv = zext i32 %0 to i64, !dbg !494
  %record_count = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 3, !dbg !495
  %1 = load i64, ptr %record_count, align 8, !dbg !495, !tbaa !496
  call void @llvm.dbg.value(metadata i64 %conv, metadata !460, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i64 %1, metadata !461, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i64 32, metadata !462, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i64 296, metadata !464, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i64 8288, metadata !465, metadata !DIExpression()), !dbg !497
  %sub.i = add i64 %1, 511, !dbg !499
  %div31.i = lshr i64 %sub.i, 9, !dbg !500
  call void @llvm.dbg.value(metadata i64 %div31.i, metadata !466, metadata !DIExpression()), !dbg !497
  %mul.i = mul nuw nsw i64 %conv, 296, !dbg !501
  call void @llvm.dbg.value(metadata i64 %mul.i, metadata !468, metadata !DIExpression()), !dbg !497
  %mul1.i = mul i64 %div31.i, 8288, !dbg !502
  call void @llvm.dbg.value(metadata i64 %mul1.i, metadata !470, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i64 112, metadata !471, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i64 -113, metadata !472, metadata !DIExpression()), !dbg !497
  %2 = icmp eq i32 %0, 0, !dbg !503
  %3 = icmp ugt i64 %1, 1139567201464682496, !dbg !503
  %4 = or i1 %2, %3, !dbg !503
  %sub10.i = sub nuw nsw i64 -113, %mul.i
  %cmp11.i = icmp ult i64 %sub10.i, %mul1.i
  %or.cond.i = or i1 %4, %cmp11.i, !dbg !503
  br i1 %or.cond.i, label %lzma_index_memusage.exit, label %if.end.i, !dbg !503

if.end.i:                                         ; preds = %entry
  %add12.i = add nuw nsw i64 %mul.i, 112, !dbg !504
  %add13.i = add i64 %add12.i, %mul1.i, !dbg !505
  br label %lzma_index_memusage.exit, !dbg !506

lzma_index_memusage.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi i64 [ %add13.i, %if.end.i ], [ -1, %entry ], !dbg !497
  ret i64 %retval.0.i, !dbg !507
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @lzma_index_block_count(ptr nocapture noundef readonly %i) local_unnamed_addr #7 !dbg !508 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !512, metadata !DIExpression()), !dbg !513
  %record_count = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 3, !dbg !514
  %0 = load i64, ptr %record_count, align 8, !dbg !514, !tbaa !496
  ret i64 %0, !dbg !515
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @lzma_index_stream_count(ptr nocapture noundef readonly %i) local_unnamed_addr #7 !dbg !516 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !518, metadata !DIExpression()), !dbg !519
  %count = getelementptr inbounds %struct.index_tree, ptr %i, i64 0, i32 3, !dbg !520
  %0 = load i32, ptr %count, align 8, !dbg !520, !tbaa !493
  %conv = zext i32 %0 to i64, !dbg !521
  ret i64 %conv, !dbg !522
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_index_size(ptr nocapture noundef readonly %i) local_unnamed_addr #0 !dbg !523 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !525, metadata !DIExpression()), !dbg !526
  %record_count = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 3, !dbg !527
  %0 = load i64, ptr %record_count, align 8, !dbg !527, !tbaa !496
  %index_list_size = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 4, !dbg !528
  %1 = load i64, ptr %index_list_size, align 8, !dbg !528, !tbaa !529
  call void @llvm.dbg.value(metadata i64 %0, metadata !530, metadata !DIExpression()) #13, !dbg !537
  call void @llvm.dbg.value(metadata i64 %1, metadata !536, metadata !DIExpression()) #13, !dbg !537
  call void @llvm.dbg.value(metadata i64 %0, metadata !539, metadata !DIExpression()) #13, !dbg !543
  call void @llvm.dbg.value(metadata i64 %1, metadata !542, metadata !DIExpression()) #13, !dbg !543
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef %0) #13, !dbg !545
  %add.i.i = add i32 %call.i.i, 1, !dbg !546
  %conv.i.i = zext i32 %add.i.i to i64, !dbg !547
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !553
  %add2.i.i = add i64 %1, 7, !dbg !555
  %add.i2.i = add i64 %add2.i.i, %conv.i.i, !dbg !556
  %and.i.i = and i64 %add.i2.i, -4, !dbg !557
  ret i64 %and.i.i, !dbg !558
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @lzma_index_total_size(ptr nocapture noundef readonly %i) local_unnamed_addr #7 !dbg !559 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !561, metadata !DIExpression()), !dbg !562
  %total_size = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 2, !dbg !563
  %0 = load i64, ptr %total_size, align 8, !dbg !563, !tbaa !564
  ret i64 %0, !dbg !565
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_index_stream_size(ptr nocapture noundef readonly %i) local_unnamed_addr #0 !dbg !566 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !568, metadata !DIExpression()), !dbg !569
  %total_size = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 2, !dbg !570
  %0 = load i64, ptr %total_size, align 8, !dbg !570, !tbaa !564
  %record_count = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 3, !dbg !571
  %1 = load i64, ptr %record_count, align 8, !dbg !571, !tbaa !496
  %index_list_size = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 4, !dbg !572
  %2 = load i64, ptr %index_list_size, align 8, !dbg !572, !tbaa !529
  call void @llvm.dbg.value(metadata i64 %1, metadata !530, metadata !DIExpression()) #13, !dbg !573
  call void @llvm.dbg.value(metadata i64 %2, metadata !536, metadata !DIExpression()) #13, !dbg !573
  call void @llvm.dbg.value(metadata i64 %1, metadata !539, metadata !DIExpression()) #13, !dbg !575
  call void @llvm.dbg.value(metadata i64 %2, metadata !542, metadata !DIExpression()) #13, !dbg !575
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef %1) #13, !dbg !577
  %add.i.i = add i32 %call.i.i, 1, !dbg !578
  %conv.i.i = zext i32 %add.i.i to i64, !dbg !579
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !580
  %add2.i.i = add i64 %2, 7, !dbg !582
  %add.i2.i = add i64 %add2.i.i, %conv.i.i, !dbg !583
  %and.i.i = and i64 %add.i2.i, -4, !dbg !584
  %add1 = add i64 %0, 24, !dbg !585
  %add2 = add i64 %add1, %and.i.i, !dbg !586
  ret i64 %add2, !dbg !587
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_index_file_size(ptr nocapture noundef readonly %i) local_unnamed_addr #0 !dbg !588 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !590, metadata !DIExpression()), !dbg !593
  %rightmost = getelementptr inbounds %struct.index_tree, ptr %i, i64 0, i32 2, !dbg !594
  %0 = load ptr, ptr %rightmost, align 8, !dbg !594, !tbaa !595
  call void @llvm.dbg.value(metadata ptr %0, metadata !591, metadata !DIExpression()), !dbg !593
  %rightmost1 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3, i32 2, !dbg !596
  %1 = load ptr, ptr %rightmost1, align 8, !dbg !596, !tbaa !597
  call void @llvm.dbg.value(metadata ptr %1, metadata !592, metadata !DIExpression()), !dbg !593
  %compressed_base = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 1, !dbg !598
  %2 = load i64, ptr %compressed_base, align 8, !dbg !598, !tbaa !599
  %cmp = icmp eq ptr %1, null, !dbg !600
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !601

cond.false:                                       ; preds = %entry
  %last = getelementptr inbounds %struct.index_group, ptr %1, i64 0, i32 3, !dbg !602
  %3 = load i64, ptr %last, align 8, !dbg !602, !tbaa !603
  %unpadded_sum = getelementptr inbounds %struct.index_group, ptr %1, i64 0, i32 4, i64 %3, i32 1, !dbg !604
  %4 = load i64, ptr %unpadded_sum, align 8, !dbg !604, !tbaa !605
  %phi.bo = add i64 %4, 3, !dbg !601
  %phi.bo8 = and i64 %phi.bo, -4, !dbg !601
  br label %cond.end, !dbg !601

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %phi.bo8, %cond.false ], [ 0, %entry ]
  %stream_padding = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 7, !dbg !607
  %5 = load i64, ptr %stream_padding, align 8, !dbg !607, !tbaa !248
  call void @llvm.dbg.value(metadata i64 %2, metadata !608, metadata !DIExpression()) #13, !dbg !618
  call void @llvm.dbg.value(metadata i64 undef, metadata !613, metadata !DIExpression()) #13, !dbg !618
  call void @llvm.dbg.value(metadata i64 undef, metadata !614, metadata !DIExpression()) #13, !dbg !618
  call void @llvm.dbg.value(metadata i64 undef, metadata !615, metadata !DIExpression()) #13, !dbg !618
  call void @llvm.dbg.value(metadata i64 %5, metadata !616, metadata !DIExpression()) #13, !dbg !618
  %add.i = add i64 %2, 24, !dbg !620
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !621
  %add1.i = add i64 %add.i, %cond, !dbg !623
  %add2.i = add i64 %add1.i, %5, !dbg !624
  call void @llvm.dbg.value(metadata i64 %add2.i, metadata !617, metadata !DIExpression()) #13, !dbg !618
  %cmp.i = icmp slt i64 %add2.i, 0, !dbg !625
  br i1 %cmp.i, label %index_file_size.exit, label %if.end.i, !dbg !627

if.end.i:                                         ; preds = %cond.end
  %index_list_size = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 5, !dbg !628
  %6 = load i64, ptr %index_list_size, align 8, !dbg !628, !tbaa !629
  call void @llvm.dbg.value(metadata i64 %6, metadata !615, metadata !DIExpression()) #13, !dbg !618
  %record_count = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 4, !dbg !630
  %7 = load i64, ptr %record_count, align 8, !dbg !630, !tbaa !631
  call void @llvm.dbg.value(metadata i64 %7, metadata !614, metadata !DIExpression()) #13, !dbg !618
  call void @llvm.dbg.value(metadata i64 undef, metadata !530, metadata !DIExpression()) #13, !dbg !632
  call void @llvm.dbg.value(metadata i64 undef, metadata !536, metadata !DIExpression()) #13, !dbg !632
  call void @llvm.dbg.value(metadata i64 undef, metadata !539, metadata !DIExpression()) #13, !dbg !634
  call void @llvm.dbg.value(metadata i64 undef, metadata !542, metadata !DIExpression()) #13, !dbg !634
  %call.i.i.i = tail call i32 @lzma_vli_size(i64 noundef %7) #13, !dbg !636
  %add.i.i.i = add i32 %call.i.i.i, 1, !dbg !637
  %conv.i.i.i = zext i32 %add.i.i.i to i64, !dbg !638
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !639
  %add2.i.i.i = add i64 %6, 7, !dbg !641
  %add.i2.i.i = add i64 %add2.i.i.i, %conv.i.i.i, !dbg !642
  %and.i.i.i = and i64 %add.i2.i.i, -4, !dbg !643
  %add4.i = add i64 %and.i.i.i, %add2.i, !dbg !644
  call void @llvm.dbg.value(metadata i64 %add4.i, metadata !617, metadata !DIExpression()) #13, !dbg !618
  %8 = tail call i64 @llvm.smax.i64(i64 %add4.i, i64 -1) #13, !dbg !618
  br label %index_file_size.exit, !dbg !618

index_file_size.exit:                             ; preds = %cond.end, %if.end.i
  %retval.0.i = phi i64 [ -1, %cond.end ], [ %8, %if.end.i ], !dbg !618
  ret i64 %retval.0.i, !dbg !645
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @lzma_index_uncompressed_size(ptr nocapture noundef readonly %i) local_unnamed_addr #7 !dbg !646 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !648, metadata !DIExpression()), !dbg !649
  %uncompressed_size = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 1, !dbg !650
  %0 = load i64, ptr %uncompressed_size, align 8, !dbg !650, !tbaa !651
  ret i64 %0, !dbg !652
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @lzma_index_checks(ptr nocapture noundef readonly %i) local_unnamed_addr #8 !dbg !653 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !657, metadata !DIExpression()), !dbg !660
  %checks1 = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 6, !dbg !661
  %0 = load i32, ptr %checks1, align 8, !dbg !661, !tbaa !209
  call void @llvm.dbg.value(metadata i32 %0, metadata !658, metadata !DIExpression()), !dbg !660
  %rightmost = getelementptr inbounds %struct.index_tree, ptr %i, i64 0, i32 2, !dbg !662
  %1 = load ptr, ptr %rightmost, align 8, !dbg !662, !tbaa !595
  call void @llvm.dbg.value(metadata ptr %1, metadata !659, metadata !DIExpression()), !dbg !660
  %stream_flags = getelementptr inbounds %struct.index_stream, ptr %1, i64 0, i32 6, !dbg !663
  %2 = load i32, ptr %stream_flags, align 8, !dbg !665, !tbaa !245
  %cmp.not = icmp eq i32 %2, -1, !dbg !666
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !667

if.then:                                          ; preds = %entry
  %check = getelementptr inbounds %struct.index_stream, ptr %1, i64 0, i32 6, i32 2, !dbg !668
  %3 = load i32, ptr %check, align 8, !dbg !668, !tbaa !669
  %shl = shl nuw i32 1, %3, !dbg !670
  %or = or i32 %shl, %0, !dbg !671
  call void @llvm.dbg.value(metadata i32 %or, metadata !658, metadata !DIExpression()), !dbg !660
  br label %if.end, !dbg !672

if.end:                                           ; preds = %if.then, %entry
  %checks.0 = phi i32 [ %or, %if.then ], [ %0, %entry ], !dbg !660
  call void @llvm.dbg.value(metadata i32 %checks.0, metadata !658, metadata !DIExpression()), !dbg !660
  ret i32 %checks.0, !dbg !673
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_padding_size(ptr nocapture noundef readonly %i) local_unnamed_addr #0 !dbg !674 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !676, metadata !DIExpression()), !dbg !677
  %record_count = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 3, !dbg !678
  %0 = load i64, ptr %record_count, align 8, !dbg !678, !tbaa !496
  %index_list_size = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 4, !dbg !679
  %1 = load i64, ptr %index_list_size, align 8, !dbg !679, !tbaa !529
  call void @llvm.dbg.value(metadata i64 %0, metadata !539, metadata !DIExpression()) #13, !dbg !680
  call void @llvm.dbg.value(metadata i64 %1, metadata !542, metadata !DIExpression()) #13, !dbg !680
  %call.i = tail call i32 @lzma_vli_size(i64 noundef %0) #13, !dbg !682
  %2 = trunc i64 %1 to i32, !dbg !683
  %3 = add i32 %call.i, %2, !dbg !683
  %4 = sub i32 3, %3, !dbg !683
  %conv = and i32 %4, 3, !dbg !683
  ret i32 %conv, !dbg !684
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_stream_flags(ptr noundef readonly %i, ptr noundef %stream_flags) local_unnamed_addr #0 !dbg !685 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !692, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata ptr %stream_flags, metadata !693, metadata !DIExpression()), !dbg !698
  %cmp = icmp eq ptr %i, null, !dbg !699
  %cmp1 = icmp eq ptr %stream_flags, null
  %or.cond = or i1 %cmp, %cmp1, !dbg !701
  br i1 %or.cond, label %return, label %do.body, !dbg !701

do.body:                                          ; preds = %entry
  %call = tail call i32 @lzma_stream_flags_compare(ptr noundef nonnull %stream_flags, ptr noundef nonnull %stream_flags) #13, !dbg !702
  call void @llvm.dbg.value(metadata i32 %call, metadata !694, metadata !DIExpression()), !dbg !703
  %cmp2.not = icmp eq i32 %call, 0, !dbg !704
  br i1 %cmp2.not, label %do.end, label %return

do.end:                                           ; preds = %do.body
  %rightmost = getelementptr inbounds %struct.index_tree, ptr %i, i64 0, i32 2, !dbg !706
  %0 = load ptr, ptr %rightmost, align 8, !dbg !706, !tbaa !595
  call void @llvm.dbg.value(metadata ptr %0, metadata !697, metadata !DIExpression()), !dbg !698
  %stream_flags5 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 6, !dbg !707
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags5, ptr noundef nonnull align 8 dereferenceable(56) %stream_flags, i64 56, i1 false), !dbg !708, !tbaa.struct !709
  br label %return

return:                                           ; preds = %do.body, %entry, %do.end
  %retval.1 = phi i32 [ %call, %do.body ], [ 0, %do.end ], [ 11, %entry ], !dbg !698
  ret i32 %retval.1, !dbg !712
}

declare !dbg !713 i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_stream_padding(ptr noundef readonly %i, i64 noundef %stream_padding) local_unnamed_addr #0 !dbg !716 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !720, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 %stream_padding, metadata !721, metadata !DIExpression()), !dbg !724
  %cmp = icmp ne ptr %i, null, !dbg !725
  %0 = and i64 %stream_padding, -9223372036854775805, !dbg !727
  %1 = icmp eq i64 %0, 0, !dbg !727
  %2 = and i1 %cmp, %1, !dbg !727
  br i1 %2, label %if.end, label %return, !dbg !727

if.end:                                           ; preds = %entry
  %rightmost = getelementptr inbounds %struct.index_tree, ptr %i, i64 0, i32 2, !dbg !728
  %3 = load ptr, ptr %rightmost, align 8, !dbg !728, !tbaa !595
  call void @llvm.dbg.value(metadata ptr %3, metadata !722, metadata !DIExpression()), !dbg !724
  %stream_padding4 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 7, !dbg !729
  %4 = load i64, ptr %stream_padding4, align 8, !dbg !729, !tbaa !248
  call void @llvm.dbg.value(metadata i64 %4, metadata !723, metadata !DIExpression()), !dbg !724
  store i64 0, ptr %stream_padding4, align 8, !dbg !730, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %i, metadata !590, metadata !DIExpression()) #13, !dbg !731
  call void @llvm.dbg.value(metadata ptr %3, metadata !591, metadata !DIExpression()) #13, !dbg !731
  %rightmost1.i = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2, !dbg !734
  %5 = load ptr, ptr %rightmost1.i, align 8, !dbg !734, !tbaa !597
  call void @llvm.dbg.value(metadata ptr %5, metadata !592, metadata !DIExpression()) #13, !dbg !731
  %compressed_base.i = getelementptr inbounds %struct.index_tree_node_s, ptr %3, i64 0, i32 1, !dbg !735
  %6 = load i64, ptr %compressed_base.i, align 8, !dbg !735, !tbaa !599
  %cmp.i = icmp eq ptr %5, null, !dbg !736
  br i1 %cmp.i, label %cond.end.i, label %cond.false.i, !dbg !737

cond.false.i:                                     ; preds = %if.end
  %last.i = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 3, !dbg !738
  %7 = load i64, ptr %last.i, align 8, !dbg !738, !tbaa !603
  %unpadded_sum.i = getelementptr inbounds %struct.index_group, ptr %5, i64 0, i32 4, i64 %7, i32 1, !dbg !739
  %8 = load i64, ptr %unpadded_sum.i, align 8, !dbg !739, !tbaa !605
  %phi.bo.i = add i64 %8, 3, !dbg !737
  %phi.bo8.i = and i64 %phi.bo.i, -4, !dbg !737
  br label %cond.end.i, !dbg !737

cond.end.i:                                       ; preds = %cond.false.i, %if.end
  %cond.i = phi i64 [ %phi.bo8.i, %cond.false.i ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !608, metadata !DIExpression()) #13, !dbg !740
  call void @llvm.dbg.value(metadata i64 undef, metadata !613, metadata !DIExpression()) #13, !dbg !740
  call void @llvm.dbg.value(metadata i64 undef, metadata !614, metadata !DIExpression()) #13, !dbg !740
  call void @llvm.dbg.value(metadata i64 undef, metadata !615, metadata !DIExpression()) #13, !dbg !740
  call void @llvm.dbg.value(metadata i64 0, metadata !616, metadata !DIExpression()) #13, !dbg !740
  %add.i.i = add i64 %6, 24, !dbg !742
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !743
  %add1.i.i = add i64 %add.i.i, %cond.i, !dbg !745
  call void @llvm.dbg.value(metadata i64 %add1.i.i, metadata !617, metadata !DIExpression()) #13, !dbg !740
  %cmp.i.i = icmp slt i64 %add1.i.i, 0, !dbg !746
  br i1 %cmp.i.i, label %lzma_index_file_size.exit, label %if.end.i.i, !dbg !747

if.end.i.i:                                       ; preds = %cond.end.i
  %index_list_size.i = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 5, !dbg !748
  %9 = load i64, ptr %index_list_size.i, align 8, !dbg !748, !tbaa !629
  call void @llvm.dbg.value(metadata i64 %9, metadata !615, metadata !DIExpression()) #13, !dbg !740
  %record_count.i = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 4, !dbg !749
  %10 = load i64, ptr %record_count.i, align 8, !dbg !749, !tbaa !631
  call void @llvm.dbg.value(metadata i64 %10, metadata !614, metadata !DIExpression()) #13, !dbg !740
  call void @llvm.dbg.value(metadata i64 undef, metadata !530, metadata !DIExpression()) #13, !dbg !750
  call void @llvm.dbg.value(metadata i64 undef, metadata !536, metadata !DIExpression()) #13, !dbg !750
  call void @llvm.dbg.value(metadata i64 undef, metadata !539, metadata !DIExpression()) #13, !dbg !752
  call void @llvm.dbg.value(metadata i64 undef, metadata !542, metadata !DIExpression()) #13, !dbg !752
  %call.i.i.i.i = tail call i32 @lzma_vli_size(i64 noundef %10) #13, !dbg !754
  %add.i.i.i.i = add i32 %call.i.i.i.i, 1, !dbg !755
  %conv.i.i.i.i = zext i32 %add.i.i.i.i to i64, !dbg !756
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !757
  %add2.i.i.i.i = add i64 %9, 7, !dbg !759
  %add.i2.i.i.i = add i64 %add2.i.i.i.i, %conv.i.i.i.i, !dbg !760
  %and.i.i.i.i = and i64 %add.i2.i.i.i, -4, !dbg !761
  %add4.i.i = add i64 %and.i.i.i.i, %add1.i.i, !dbg !762
  call void @llvm.dbg.value(metadata i64 %add4.i.i, metadata !617, metadata !DIExpression()) #13, !dbg !740
  %11 = tail call i64 @llvm.smax.i64(i64 %add4.i.i, i64 -1) #13, !dbg !740
  br label %lzma_index_file_size.exit, !dbg !740

lzma_index_file_size.exit:                        ; preds = %cond.end.i, %if.end.i.i
  %retval.0.i.i = phi i64 [ -1, %cond.end.i ], [ %11, %if.end.i.i ], !dbg !740
  %add = add i64 %retval.0.i.i, %stream_padding, !dbg !763
  %cmp6 = icmp slt i64 %add, 0, !dbg !764
  %.stream_padding = select i1 %cmp6, i64 %4, i64 %stream_padding, !dbg !724
  %. = select i1 %cmp6, i32 9, i32 0, !dbg !724
  store i64 %.stream_padding, ptr %stream_padding4, align 8, !dbg !724, !tbaa !248
  br label %return

return:                                           ; preds = %entry, %lzma_index_file_size.exit
  %retval.1 = phi i32 [ %., %lzma_index_file_size.exit ], [ 11, %entry ], !dbg !724
  ret i32 %retval.1, !dbg !765
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_append(ptr noundef %i, ptr noundef %allocator, i64 noundef %unpadded_size, i64 noundef %uncompressed_size) local_unnamed_addr #0 !dbg !766 {
entry:
  call void @llvm.dbg.value(metadata ptr %i, metadata !770, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !771, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata i64 %unpadded_size, metadata !772, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata i64 %uncompressed_size, metadata !773, metadata !DIExpression()), !dbg !780
  %cmp = icmp eq ptr %i, null, !dbg !781
  %0 = add i64 %unpadded_size, -9223372036854775805, !dbg !783
  %1 = icmp ult i64 %0, -9223372036854775800, !dbg !783
  %2 = or i1 %cmp, %1, !dbg !783
  %cmp5 = icmp slt i64 %uncompressed_size, 0
  %or.cond93 = or i1 %cmp5, %2, !dbg !783
  br i1 %or.cond93, label %return, label %if.end, !dbg !783

if.end:                                           ; preds = %entry
  %rightmost = getelementptr inbounds %struct.index_tree, ptr %i, i64 0, i32 2, !dbg !784
  %3 = load ptr, ptr %rightmost, align 8, !dbg !784, !tbaa !595
  call void @llvm.dbg.value(metadata ptr %3, metadata !774, metadata !DIExpression()), !dbg !780
  %groups = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, !dbg !785
  %rightmost6 = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 3, i32 2, !dbg !786
  %4 = load ptr, ptr %rightmost6, align 8, !dbg !786, !tbaa !597
  call void @llvm.dbg.value(metadata ptr %4, metadata !775, metadata !DIExpression()), !dbg !780
  %cmp7 = icmp eq ptr %4, null, !dbg !787
  br i1 %cmp7, label %cond.end14, label %cond.false10, !dbg !788

cond.false10:                                     ; preds = %if.end
  %last = getelementptr inbounds %struct.index_group, ptr %4, i64 0, i32 3, !dbg !789
  %5 = load i64, ptr %last, align 8, !dbg !789, !tbaa !603
  %unpadded_sum = getelementptr inbounds %struct.index_group, ptr %4, i64 0, i32 4, i64 %5, i32 1, !dbg !790
  %6 = load i64, ptr %unpadded_sum, align 8, !dbg !790, !tbaa !605
  call void @llvm.dbg.value(metadata i64 %6, metadata !548, metadata !DIExpression()), !dbg !791
  %add.i = add i64 %6, 3, !dbg !793
  %and.i = and i64 %add.i, -4, !dbg !794
  call void @llvm.dbg.value(metadata i64 %and.i, metadata !776, metadata !DIExpression()), !dbg !780
  %arrayidx13 = getelementptr inbounds %struct.index_group, ptr %4, i64 0, i32 4, i64 %5, !dbg !795
  %7 = load i64, ptr %arrayidx13, align 8, !dbg !796, !tbaa !797
  br label %cond.end14, !dbg !798

cond.end14:                                       ; preds = %if.end, %cond.false10
  %cond152 = phi i64 [ %and.i, %cond.false10 ], [ 0, %if.end ]
  %cond15 = phi i64 [ %7, %cond.false10 ], [ 0, %if.end ], !dbg !798
  call void @llvm.dbg.value(metadata i64 %cond15, metadata !777, metadata !DIExpression()), !dbg !780
  %call16 = tail call i32 @lzma_vli_size(i64 noundef %unpadded_size) #13, !dbg !799
  %call17 = tail call i32 @lzma_vli_size(i64 noundef %uncompressed_size) #13, !dbg !800
  %add = add i32 %call17, %call16, !dbg !801
  call void @llvm.dbg.value(metadata i32 %add, metadata !778, metadata !DIExpression()), !dbg !780
  %compressed_base18 = getelementptr inbounds %struct.index_tree_node_s, ptr %3, i64 0, i32 1, !dbg !802
  %8 = load i64, ptr %compressed_base18, align 8, !dbg !802, !tbaa !599
  %add19 = add i64 %cond152, %unpadded_size, !dbg !804
  %record_count = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 4, !dbg !805
  %index_list_size = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 5, !dbg !806
  %conv = zext i32 %add to i64, !dbg !807
  %stream_padding = getelementptr inbounds %struct.index_stream, ptr %3, i64 0, i32 7, !dbg !808
  %9 = load i64, ptr %stream_padding, align 8, !dbg !808, !tbaa !248
  call void @llvm.dbg.value(metadata i64 %8, metadata !608, metadata !DIExpression()) #13, !dbg !809
  call void @llvm.dbg.value(metadata i64 %add19, metadata !613, metadata !DIExpression()) #13, !dbg !809
  call void @llvm.dbg.value(metadata i64 undef, metadata !614, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #13, !dbg !809
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %conv), metadata !615, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)) #13, !dbg !809
  call void @llvm.dbg.value(metadata i64 %9, metadata !616, metadata !DIExpression()) #13, !dbg !809
  call void @llvm.dbg.value(metadata i64 %add19, metadata !548, metadata !DIExpression()) #13, !dbg !811
  %10 = add i64 %add19, 27, !dbg !813
  %add.i146 = and i64 %10, -4, !dbg !813
  %add1.i = add i64 %add.i146, %8, !dbg !814
  %add2.i = add i64 %add1.i, %9, !dbg !815
  call void @llvm.dbg.value(metadata i64 %add2.i, metadata !617, metadata !DIExpression()) #13, !dbg !809
  %cmp.i = icmp slt i64 %add2.i, 0, !dbg !816
  br i1 %cmp.i, label %return, label %index_file_size.exit, !dbg !817

index_file_size.exit:                             ; preds = %cond.end14
  %11 = load i64, ptr %index_list_size, align 8, !dbg !806, !tbaa !629
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i64 %conv), metadata !615, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)) #13, !dbg !809
  call void @llvm.dbg.value(metadata i64 undef, metadata !615, metadata !DIExpression()) #13, !dbg !809
  %12 = load i64, ptr %record_count, align 8, !dbg !805, !tbaa !631
  call void @llvm.dbg.value(metadata i64 %12, metadata !614, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #13, !dbg !809
  %add20 = add i64 %12, 1, !dbg !818
  call void @llvm.dbg.value(metadata i64 %add20, metadata !614, metadata !DIExpression()) #13, !dbg !809
  call void @llvm.dbg.value(metadata i64 undef, metadata !530, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #13, !dbg !819
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %conv), metadata !536, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)) #13, !dbg !819
  call void @llvm.dbg.value(metadata i64 undef, metadata !539, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #13, !dbg !821
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %conv), metadata !542, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)) #13, !dbg !821
  %call.i.i.i = tail call i32 @lzma_vli_size(i64 noundef %add20) #13, !dbg !823
  %add.i.i.i = add i32 %call.i.i.i, 1, !dbg !824
  %conv.i.i.i = zext i32 %add.i.i.i to i64, !dbg !825
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !826
  %add21 = add nuw nsw i64 %conv, 7, !dbg !828
  %add2.i.i.i = add i64 %add21, %11, !dbg !829
  %add.i2.i.i = add i64 %add2.i.i.i, %conv.i.i.i, !dbg !830
  %and.i.i.i = and i64 %add.i2.i.i, -4, !dbg !831
  %add4.i = add i64 %and.i.i.i, %add2.i, !dbg !832
  call void @llvm.dbg.value(metadata i64 %add4.i, metadata !617, metadata !DIExpression()) #13, !dbg !809
  %cmp23 = icmp slt i64 %add4.i, 0, !dbg !833
  br i1 %cmp23, label %return, label %if.end26, !dbg !834

if.end26:                                         ; preds = %index_file_size.exit
  %record_count27 = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 3, !dbg !835
  %13 = load i64, ptr %record_count27, align 8, !dbg !835, !tbaa !496
  %add28 = add i64 %13, 1, !dbg !837
  %index_list_size29 = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 4, !dbg !838
  %14 = load i64, ptr %index_list_size29, align 8, !dbg !838, !tbaa !529
  call void @llvm.dbg.value(metadata i64 %add28, metadata !530, metadata !DIExpression()) #13, !dbg !839
  call void @llvm.dbg.value(metadata i64 undef, metadata !536, metadata !DIExpression()) #13, !dbg !839
  call void @llvm.dbg.value(metadata i64 %add28, metadata !539, metadata !DIExpression()) #13, !dbg !841
  call void @llvm.dbg.value(metadata i64 undef, metadata !542, metadata !DIExpression()) #13, !dbg !841
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef %add28) #13, !dbg !843
  %add.i.i147 = add i32 %call.i.i, 1, !dbg !844
  %conv.i.i = zext i32 %add.i.i147 to i64, !dbg !845
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !846
  %add2.i.i = add i64 %add21, %14, !dbg !848
  %add.i2.i = add i64 %add2.i.i, %conv.i.i, !dbg !849
  %and.i.i148 = and i64 %add.i2.i, -4, !dbg !850
  %cmp33 = icmp ugt i64 %and.i.i148, 17179869184, !dbg !851
  br i1 %cmp33, label %return, label %if.end36, !dbg !852

if.end36:                                         ; preds = %if.end26
  br i1 %cmp7, label %if.else, label %land.lhs.true, !dbg !853

land.lhs.true:                                    ; preds = %if.end36
  %last39 = getelementptr inbounds %struct.index_group, ptr %4, i64 0, i32 3, !dbg !855
  %15 = load i64, ptr %last39, align 8, !dbg !855, !tbaa !603
  %add40 = add i64 %15, 1, !dbg !856
  %allocated = getelementptr inbounds %struct.index_group, ptr %4, i64 0, i32 2, !dbg !857
  %16 = load i64, ptr %allocated, align 8, !dbg !857, !tbaa !603
  %cmp41 = icmp ult i64 %add40, %16, !dbg !858
  br i1 %cmp41, label %if.then43, label %if.else, !dbg !859

if.then43:                                        ; preds = %land.lhs.true
  store i64 %add40, ptr %last39, align 8, !dbg !860, !tbaa !603
  br label %if.end63, !dbg !862

if.else:                                          ; preds = %land.lhs.true, %if.end36
  %prealloc = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 5, !dbg !863
  %17 = load i64, ptr %prealloc, align 8, !dbg !863, !tbaa !199
  %mul = shl i64 %17, 4, !dbg !865
  %add45 = add i64 %mul, 64, !dbg !866
  %call46 = tail call ptr @lzma_alloc(i64 noundef %add45, ptr noundef %allocator) #13, !dbg !867
  call void @llvm.dbg.value(metadata ptr %call46, metadata !775, metadata !DIExpression()), !dbg !780
  %cmp47 = icmp eq ptr %call46, null, !dbg !868
  br i1 %cmp47, label %return, label %if.end50, !dbg !870

if.end50:                                         ; preds = %if.else
  %last51 = getelementptr inbounds %struct.index_group, ptr %call46, i64 0, i32 3, !dbg !871
  store i64 0, ptr %last51, align 8, !dbg !872, !tbaa !603
  %18 = load i64, ptr %prealloc, align 8, !dbg !873, !tbaa !199
  %allocated53 = getelementptr inbounds %struct.index_group, ptr %call46, i64 0, i32 2, !dbg !874
  store i64 %18, ptr %allocated53, align 8, !dbg !875, !tbaa !603
  store i64 512, ptr %prealloc, align 8, !dbg !876, !tbaa !199
  store i64 %cond15, ptr %call46, align 8, !dbg !877, !tbaa !878
  %compressed_base58 = getelementptr inbounds %struct.index_tree_node_s, ptr %call46, i64 0, i32 1, !dbg !879
  store i64 %cond152, ptr %compressed_base58, align 8, !dbg !880, !tbaa !881
  %19 = load i64, ptr %record_count, align 8, !dbg !882, !tbaa !631
  %add60 = add i64 %19, 1, !dbg !883
  %number_base = getelementptr inbounds %struct.index_group, ptr %call46, i64 0, i32 1, !dbg !884
  store i64 %add60, ptr %number_base, align 8, !dbg !885, !tbaa !603
  tail call fastcc void @index_tree_append(ptr noundef nonnull %groups, ptr noundef nonnull %call46), !dbg !886
  %.pre = load i64, ptr %last51, align 8, !dbg !887, !tbaa !603
  br label %if.end63

if.end63:                                         ; preds = %if.end50, %if.then43
  %20 = phi i64 [ %add40, %if.then43 ], [ %.pre, %if.end50 ], !dbg !887
  %g.0 = phi ptr [ %4, %if.then43 ], [ %call46, %if.end50 ], !dbg !780
  call void @llvm.dbg.value(metadata ptr %g.0, metadata !775, metadata !DIExpression()), !dbg !780
  %add64 = add i64 %cond15, %uncompressed_size, !dbg !888
  %arrayidx67 = getelementptr inbounds %struct.index_group, ptr %g.0, i64 0, i32 4, i64 %20, !dbg !889
  store i64 %add64, ptr %arrayidx67, align 8, !dbg !890, !tbaa !797
  %unpadded_sum73 = getelementptr inbounds %struct.index_group, ptr %g.0, i64 0, i32 4, i64 %20, i32 1, !dbg !891
  store i64 %add19, ptr %unpadded_sum73, align 8, !dbg !892, !tbaa !605
  %21 = load i64, ptr %record_count, align 8, !dbg !893, !tbaa !631
  %inc75 = add i64 %21, 1, !dbg !893
  store i64 %inc75, ptr %record_count, align 8, !dbg !893, !tbaa !631
  %22 = load i64, ptr %index_list_size, align 8, !dbg !894, !tbaa !629
  %add78 = add i64 %22, %conv, !dbg !894
  store i64 %add78, ptr %index_list_size, align 8, !dbg !894, !tbaa !629
  call void @llvm.dbg.value(metadata i64 %unpadded_size, metadata !548, metadata !DIExpression()), !dbg !895
  %add.i149 = add nuw nsw i64 %unpadded_size, 3, !dbg !897
  %and.i150 = and i64 %add.i149, -4, !dbg !898
  %total_size = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 2, !dbg !899
  %23 = load i64, ptr %total_size, align 8, !dbg !900, !tbaa !564
  %add80 = add i64 %23, %and.i150, !dbg !900
  store i64 %add80, ptr %total_size, align 8, !dbg !900, !tbaa !564
  %uncompressed_size81 = getelementptr inbounds %struct.lzma_index_s, ptr %i, i64 0, i32 1, !dbg !901
  %24 = load i64, ptr %uncompressed_size81, align 8, !dbg !902, !tbaa !651
  %add82 = add i64 %24, %uncompressed_size, !dbg !902
  store i64 %add82, ptr %uncompressed_size81, align 8, !dbg !902, !tbaa !651
  %25 = load i64, ptr %record_count27, align 8, !dbg !903, !tbaa !496
  %inc84 = add i64 %25, 1, !dbg !903
  store i64 %inc84, ptr %record_count27, align 8, !dbg !903, !tbaa !496
  %26 = load i64, ptr %index_list_size29, align 8, !dbg !904, !tbaa !529
  %add87 = add i64 %26, %conv, !dbg !904
  store i64 %add87, ptr %index_list_size29, align 8, !dbg !904, !tbaa !529
  br label %return, !dbg !905

return:                                           ; preds = %cond.end14, %if.end63, %index_file_size.exit, %if.end26, %if.else, %entry
  %retval.1 = phi i32 [ 11, %entry ], [ 0, %if.end63 ], [ 9, %index_file_size.exit ], [ 9, %if.end26 ], [ 5, %if.else ], [ 9, %cond.end14 ], !dbg !780
  ret i32 %retval.1, !dbg !906
}

declare !dbg !907 i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #3

declare !dbg !910 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_cat(ptr noalias noundef %dest, ptr noalias noundef %src, ptr noundef %allocator) local_unnamed_addr #0 !dbg !913 {
entry:
  %info = alloca %struct.index_cat_info, align 8
  call void @llvm.dbg.value(metadata ptr %dest, metadata !918, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr %src, metadata !919, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !920, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr %dest, metadata !590, metadata !DIExpression()) #13, !dbg !942
  %rightmost.i = getelementptr inbounds %struct.index_tree, ptr %dest, i64 0, i32 2, !dbg !944
  %0 = load ptr, ptr %rightmost.i, align 8, !dbg !944, !tbaa !595
  call void @llvm.dbg.value(metadata ptr %0, metadata !591, metadata !DIExpression()) #13, !dbg !942
  %rightmost1.i = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3, i32 2, !dbg !945
  %1 = load ptr, ptr %rightmost1.i, align 8, !dbg !945, !tbaa !597
  call void @llvm.dbg.value(metadata ptr %1, metadata !592, metadata !DIExpression()) #13, !dbg !942
  %compressed_base.i = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 1, !dbg !946
  %2 = load i64, ptr %compressed_base.i, align 8, !dbg !946, !tbaa !599
  %cmp.i = icmp eq ptr %1, null, !dbg !947
  br i1 %cmp.i, label %cond.end.i, label %cond.false.i, !dbg !948

cond.false.i:                                     ; preds = %entry
  %last.i = getelementptr inbounds %struct.index_group, ptr %1, i64 0, i32 3, !dbg !949
  %3 = load i64, ptr %last.i, align 8, !dbg !949, !tbaa !603
  %unpadded_sum.i = getelementptr inbounds %struct.index_group, ptr %1, i64 0, i32 4, i64 %3, i32 1, !dbg !950
  %4 = load i64, ptr %unpadded_sum.i, align 8, !dbg !950, !tbaa !605
  %phi.bo.i = add i64 %4, 3, !dbg !948
  %phi.bo8.i = and i64 %phi.bo.i, -4, !dbg !948
  br label %cond.end.i, !dbg !948

cond.end.i:                                       ; preds = %cond.false.i, %entry
  %cond.i = phi i64 [ %phi.bo8.i, %cond.false.i ], [ 0, %entry ]
  %stream_padding.i = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 7, !dbg !951
  %5 = load i64, ptr %stream_padding.i, align 8, !dbg !951, !tbaa !248
  call void @llvm.dbg.value(metadata i64 %2, metadata !608, metadata !DIExpression()) #13, !dbg !952
  call void @llvm.dbg.value(metadata i64 undef, metadata !613, metadata !DIExpression()) #13, !dbg !952
  call void @llvm.dbg.value(metadata i64 undef, metadata !614, metadata !DIExpression()) #13, !dbg !952
  call void @llvm.dbg.value(metadata i64 undef, metadata !615, metadata !DIExpression()) #13, !dbg !952
  call void @llvm.dbg.value(metadata i64 %5, metadata !616, metadata !DIExpression()) #13, !dbg !952
  %add.i.i = add i64 %2, 24, !dbg !954
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !955
  %add1.i.i = add i64 %add.i.i, %cond.i, !dbg !957
  %add2.i.i = add i64 %add1.i.i, %5, !dbg !958
  call void @llvm.dbg.value(metadata i64 %add2.i.i, metadata !617, metadata !DIExpression()) #13, !dbg !952
  %cmp.i.i = icmp slt i64 %add2.i.i, 0, !dbg !959
  br i1 %cmp.i.i, label %lzma_index_file_size.exit, label %if.end.i.i, !dbg !960

if.end.i.i:                                       ; preds = %cond.end.i
  %index_list_size.i = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 5, !dbg !961
  %6 = load i64, ptr %index_list_size.i, align 8, !dbg !961, !tbaa !629
  call void @llvm.dbg.value(metadata i64 %6, metadata !615, metadata !DIExpression()) #13, !dbg !952
  %record_count.i = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 4, !dbg !962
  %7 = load i64, ptr %record_count.i, align 8, !dbg !962, !tbaa !631
  call void @llvm.dbg.value(metadata i64 %7, metadata !614, metadata !DIExpression()) #13, !dbg !952
  call void @llvm.dbg.value(metadata i64 undef, metadata !530, metadata !DIExpression()) #13, !dbg !963
  call void @llvm.dbg.value(metadata i64 undef, metadata !536, metadata !DIExpression()) #13, !dbg !963
  call void @llvm.dbg.value(metadata i64 undef, metadata !539, metadata !DIExpression()) #13, !dbg !965
  call void @llvm.dbg.value(metadata i64 undef, metadata !542, metadata !DIExpression()) #13, !dbg !965
  %call.i.i.i.i = tail call i32 @lzma_vli_size(i64 noundef %7) #13, !dbg !967
  %add.i.i.i.i = add i32 %call.i.i.i.i, 1, !dbg !968
  %conv.i.i.i.i = zext i32 %add.i.i.i.i to i64, !dbg !969
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !970
  %add2.i.i.i.i = add i64 %6, 7, !dbg !972
  %add.i2.i.i.i = add i64 %add2.i.i.i.i, %conv.i.i.i.i, !dbg !973
  %and.i.i.i.i = and i64 %add.i2.i.i.i, -4, !dbg !974
  %add4.i.i = add i64 %and.i.i.i.i, %add2.i.i, !dbg !975
  call void @llvm.dbg.value(metadata i64 %add4.i.i, metadata !617, metadata !DIExpression()) #13, !dbg !952
  %8 = tail call i64 @llvm.smax.i64(i64 %add4.i.i, i64 -1) #13, !dbg !952
  br label %lzma_index_file_size.exit, !dbg !952

lzma_index_file_size.exit:                        ; preds = %cond.end.i, %if.end.i.i
  %retval.0.i.i = phi i64 [ -1, %cond.end.i ], [ %8, %if.end.i.i ], !dbg !952
  call void @llvm.dbg.value(metadata i64 %retval.0.i.i, metadata !921, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr %src, metadata !590, metadata !DIExpression()) #13, !dbg !976
  %rightmost.i155 = getelementptr inbounds %struct.index_tree, ptr %src, i64 0, i32 2, !dbg !979
  %9 = load ptr, ptr %rightmost.i155, align 8, !dbg !979, !tbaa !595
  call void @llvm.dbg.value(metadata ptr %9, metadata !591, metadata !DIExpression()) #13, !dbg !976
  %rightmost1.i156 = getelementptr inbounds %struct.index_stream, ptr %9, i64 0, i32 3, i32 2, !dbg !980
  %10 = load ptr, ptr %rightmost1.i156, align 8, !dbg !980, !tbaa !597
  call void @llvm.dbg.value(metadata ptr %10, metadata !592, metadata !DIExpression()) #13, !dbg !976
  %compressed_base.i157 = getelementptr inbounds %struct.index_tree_node_s, ptr %9, i64 0, i32 1, !dbg !981
  %11 = load i64, ptr %compressed_base.i157, align 8, !dbg !981, !tbaa !599
  %cmp.i158 = icmp eq ptr %10, null, !dbg !982
  br i1 %cmp.i158, label %cond.end.i170, label %cond.false.i163, !dbg !983

cond.false.i163:                                  ; preds = %lzma_index_file_size.exit
  %last.i159 = getelementptr inbounds %struct.index_group, ptr %10, i64 0, i32 3, !dbg !984
  %12 = load i64, ptr %last.i159, align 8, !dbg !984, !tbaa !603
  %unpadded_sum.i160 = getelementptr inbounds %struct.index_group, ptr %10, i64 0, i32 4, i64 %12, i32 1, !dbg !985
  %13 = load i64, ptr %unpadded_sum.i160, align 8, !dbg !985, !tbaa !605
  %phi.bo.i161 = add i64 %13, 3, !dbg !983
  %phi.bo8.i162 = and i64 %phi.bo.i161, -4, !dbg !983
  br label %cond.end.i170, !dbg !983

cond.end.i170:                                    ; preds = %cond.false.i163, %lzma_index_file_size.exit
  %cond.i164 = phi i64 [ %phi.bo8.i162, %cond.false.i163 ], [ 0, %lzma_index_file_size.exit ]
  %stream_padding.i165 = getelementptr inbounds %struct.index_stream, ptr %9, i64 0, i32 7, !dbg !986
  %14 = load i64, ptr %stream_padding.i165, align 8, !dbg !986, !tbaa !248
  call void @llvm.dbg.value(metadata i64 %11, metadata !608, metadata !DIExpression()) #13, !dbg !987
  call void @llvm.dbg.value(metadata i64 undef, metadata !613, metadata !DIExpression()) #13, !dbg !987
  call void @llvm.dbg.value(metadata i64 undef, metadata !614, metadata !DIExpression()) #13, !dbg !987
  call void @llvm.dbg.value(metadata i64 undef, metadata !615, metadata !DIExpression()) #13, !dbg !987
  call void @llvm.dbg.value(metadata i64 %14, metadata !616, metadata !DIExpression()) #13, !dbg !987
  %add.i.i166 = add i64 %11, 24, !dbg !989
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !990
  %add1.i.i167 = add i64 %add.i.i166, %cond.i164, !dbg !992
  %add2.i.i168 = add i64 %add1.i.i167, %14, !dbg !993
  call void @llvm.dbg.value(metadata i64 %add2.i.i168, metadata !617, metadata !DIExpression()) #13, !dbg !987
  %cmp.i.i169 = icmp slt i64 %add2.i.i168, 0, !dbg !994
  br i1 %cmp.i.i169, label %lzma_index_file_size.exit182, label %if.end.i.i180, !dbg !995

if.end.i.i180:                                    ; preds = %cond.end.i170
  %index_list_size.i171 = getelementptr inbounds %struct.index_stream, ptr %9, i64 0, i32 5, !dbg !996
  %15 = load i64, ptr %index_list_size.i171, align 8, !dbg !996, !tbaa !629
  call void @llvm.dbg.value(metadata i64 %15, metadata !615, metadata !DIExpression()) #13, !dbg !987
  %record_count.i172 = getelementptr inbounds %struct.index_stream, ptr %9, i64 0, i32 4, !dbg !997
  %16 = load i64, ptr %record_count.i172, align 8, !dbg !997, !tbaa !631
  call void @llvm.dbg.value(metadata i64 %16, metadata !614, metadata !DIExpression()) #13, !dbg !987
  call void @llvm.dbg.value(metadata i64 undef, metadata !530, metadata !DIExpression()) #13, !dbg !998
  call void @llvm.dbg.value(metadata i64 undef, metadata !536, metadata !DIExpression()) #13, !dbg !998
  call void @llvm.dbg.value(metadata i64 undef, metadata !539, metadata !DIExpression()) #13, !dbg !1000
  call void @llvm.dbg.value(metadata i64 undef, metadata !542, metadata !DIExpression()) #13, !dbg !1000
  %call.i.i.i.i173 = tail call i32 @lzma_vli_size(i64 noundef %16) #13, !dbg !1002
  %add.i.i.i.i174 = add i32 %call.i.i.i.i173, 1, !dbg !1003
  %conv.i.i.i.i175 = zext i32 %add.i.i.i.i174 to i64, !dbg !1004
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !1005
  %add2.i.i.i.i176 = add i64 %15, 7, !dbg !1007
  %add.i2.i.i.i177 = add i64 %add2.i.i.i.i176, %conv.i.i.i.i175, !dbg !1008
  %and.i.i.i.i178 = and i64 %add.i2.i.i.i177, -4, !dbg !1009
  %add4.i.i179 = add i64 %and.i.i.i.i178, %add2.i.i168, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %add4.i.i179, metadata !617, metadata !DIExpression()) #13, !dbg !987
  %17 = tail call i64 @llvm.smax.i64(i64 %add4.i.i179, i64 -1) #13, !dbg !987
  br label %lzma_index_file_size.exit182, !dbg !987

lzma_index_file_size.exit182:                     ; preds = %cond.end.i170, %if.end.i.i180
  %retval.0.i.i181 = phi i64 [ -1, %cond.end.i170 ], [ %17, %if.end.i.i180 ], !dbg !987
  %add = add i64 %retval.0.i.i181, %retval.0.i.i, !dbg !1011
  %cmp = icmp slt i64 %add, 0, !dbg !1012
  br i1 %cmp, label %cleanup94, label %lor.lhs.false, !dbg !1013

lor.lhs.false:                                    ; preds = %lzma_index_file_size.exit182
  %uncompressed_size = getelementptr inbounds %struct.lzma_index_s, ptr %dest, i64 0, i32 1, !dbg !1014
  %18 = load i64, ptr %uncompressed_size, align 8, !dbg !1014, !tbaa !651
  %uncompressed_size2 = getelementptr inbounds %struct.lzma_index_s, ptr %src, i64 0, i32 1, !dbg !1015
  %19 = load i64, ptr %uncompressed_size2, align 8, !dbg !1015, !tbaa !651
  %add3 = add i64 %19, %18, !dbg !1016
  %cmp4 = icmp slt i64 %add3, 0, !dbg !1017
  br i1 %cmp4, label %cleanup94, label %if.end, !dbg !1018

if.end:                                           ; preds = %lor.lhs.false
  %record_count = getelementptr inbounds %struct.lzma_index_s, ptr %dest, i64 0, i32 3, !dbg !1019
  %20 = load i64, ptr %record_count, align 8, !dbg !1019, !tbaa !496
  %index_list_size = getelementptr inbounds %struct.lzma_index_s, ptr %dest, i64 0, i32 4, !dbg !1020
  %21 = load i64, ptr %index_list_size, align 8, !dbg !1020, !tbaa !529
  call void @llvm.dbg.value(metadata i64 %20, metadata !539, metadata !DIExpression()) #13, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %21, metadata !542, metadata !DIExpression()) #13, !dbg !1021
  %call.i = tail call i32 @lzma_vli_size(i64 noundef %20) #13, !dbg !1023
  %add.i = add i32 %call.i, 1, !dbg !1024
  %conv.i = zext i32 %add.i to i64, !dbg !1025
  call void @llvm.dbg.value(metadata i64 undef, metadata !922, metadata !DIExpression()), !dbg !1026
  %record_count6 = getelementptr inbounds %struct.lzma_index_s, ptr %src, i64 0, i32 3, !dbg !1027
  %22 = load i64, ptr %record_count6, align 8, !dbg !1027, !tbaa !496
  %index_list_size7 = getelementptr inbounds %struct.lzma_index_s, ptr %src, i64 0, i32 4, !dbg !1028
  %23 = load i64, ptr %index_list_size7, align 8, !dbg !1028, !tbaa !529
  call void @llvm.dbg.value(metadata i64 %22, metadata !539, metadata !DIExpression()) #13, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %23, metadata !542, metadata !DIExpression()) #13, !dbg !1029
  %call.i183 = tail call i32 @lzma_vli_size(i64 noundef %22) #13, !dbg !1031
  %add.i184 = add i32 %call.i183, 1, !dbg !1032
  %conv.i185 = zext i32 %add.i184 to i64, !dbg !1033
  call void @llvm.dbg.value(metadata !DIArgList(i64 %23, i64 %conv.i185), metadata !924, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 4, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1026
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()), !dbg !1034
  %add1.i = add i64 %21, 11, !dbg !1037
  %add2.i = add i64 %add1.i, %conv.i, !dbg !1038
  %add9 = add i64 %add2.i, %23, !dbg !1039
  %add.i188 = add i64 %add9, %conv.i185, !dbg !1040
  %and.i = and i64 %add.i188, -4, !dbg !1041
  %cmp11 = icmp ugt i64 %and.i, 17179869184, !dbg !1042
  br i1 %cmp11, label %cleanup94, label %cleanup.cont

cleanup.cont:                                     ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %0, metadata !925, metadata !DIExpression()), !dbg !1043
  %groups = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3, !dbg !1044
  %24 = load ptr, ptr %rightmost1.i, align 8, !dbg !1045, !tbaa !597
  call void @llvm.dbg.value(metadata ptr %24, metadata !927, metadata !DIExpression()), !dbg !1043
  %cmp16.not = icmp eq ptr %24, null, !dbg !1046
  br i1 %cmp16.not, label %cleanup.cont71, label %land.lhs.true, !dbg !1047

land.lhs.true:                                    ; preds = %cleanup.cont
  %last = getelementptr inbounds %struct.index_group, ptr %24, i64 0, i32 3, !dbg !1048
  %25 = load i64, ptr %last, align 8, !dbg !1048, !tbaa !603
  %add17 = add i64 %25, 1, !dbg !1049
  %allocated = getelementptr inbounds %struct.index_group, ptr %24, i64 0, i32 2, !dbg !1050
  %26 = load i64, ptr %allocated, align 8, !dbg !1050, !tbaa !603
  %cmp18 = icmp ult i64 %add17, %26, !dbg !1051
  br i1 %cmp18, label %if.then19, label %cleanup.cont71, !dbg !1052

if.then19:                                        ; preds = %land.lhs.true
  %mul = shl i64 %add17, 4, !dbg !1053
  %add22 = add i64 %mul, 64, !dbg !1054
  %call23 = tail call ptr @lzma_alloc(i64 noundef %add22, ptr noundef %allocator) #13, !dbg !1055
  call void @llvm.dbg.value(metadata ptr %call23, metadata !928, metadata !DIExpression()), !dbg !1056
  %cmp24 = icmp eq ptr %call23, null, !dbg !1057
  br i1 %cmp24, label %cleanup94, label %if.end26, !dbg !1059

if.end26:                                         ; preds = %if.then19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %call23, ptr noundef nonnull align 8 dereferenceable(40) %24, i64 40, i1 false), !dbg !1060, !tbaa.struct !1061
  %27 = load i64, ptr %last, align 8, !dbg !1062, !tbaa !603
  %add29 = add i64 %27, 1, !dbg !1063
  %allocated30 = getelementptr inbounds %struct.index_group, ptr %call23, i64 0, i32 2, !dbg !1064
  store i64 %add29, ptr %allocated30, align 8, !dbg !1065, !tbaa !603
  %28 = load i64, ptr %last, align 8, !dbg !1066, !tbaa !603
  %last32 = getelementptr inbounds %struct.index_group, ptr %call23, i64 0, i32 3, !dbg !1067
  store i64 %28, ptr %last32, align 8, !dbg !1068, !tbaa !603
  %number_base = getelementptr inbounds %struct.index_group, ptr %24, i64 0, i32 1, !dbg !1069
  %29 = load i64, ptr %number_base, align 8, !dbg !1069, !tbaa !603
  %number_base33 = getelementptr inbounds %struct.index_group, ptr %call23, i64 0, i32 1, !dbg !1070
  store i64 %29, ptr %number_base33, align 8, !dbg !1071, !tbaa !603
  %records = getelementptr inbounds %struct.index_group, ptr %call23, i64 0, i32 4, !dbg !1072
  %records34 = getelementptr inbounds %struct.index_group, ptr %24, i64 0, i32 4, !dbg !1073
  %mul37 = shl i64 %add29, 4, !dbg !1074
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %records, ptr nonnull align 8 %records34, i64 %mul37, i1 false), !dbg !1075
  %parent = getelementptr inbounds %struct.index_tree_node_s, ptr %24, i64 0, i32 2, !dbg !1076
  %30 = load ptr, ptr %parent, align 8, !dbg !1076, !tbaa !272
  %cmp39.not = icmp eq ptr %30, null, !dbg !1078
  br i1 %cmp39.not, label %if.end44, label %if.then40, !dbg !1079

if.then40:                                        ; preds = %if.end26
  %right = getelementptr inbounds %struct.index_tree_node_s, ptr %30, i64 0, i32 4, !dbg !1080
  store ptr %call23, ptr %right, align 8, !dbg !1082, !tbaa !292
  br label %if.end44, !dbg !1083

if.end44:                                         ; preds = %if.then40, %if.end26
  %leftmost = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3, i32 1, !dbg !1084
  %31 = load ptr, ptr %leftmost, align 8, !dbg !1084, !tbaa !1086
  %cmp47 = icmp eq ptr %31, %24, !dbg !1087
  br i1 %cmp47, label %if.then48, label %if.end54, !dbg !1088

if.then48:                                        ; preds = %if.end44
  store ptr %call23, ptr %leftmost, align 8, !dbg !1089, !tbaa !1086
  store ptr %call23, ptr %groups, align 8, !dbg !1091, !tbaa !1092
  br label %if.end54, !dbg !1093

if.end54:                                         ; preds = %if.then48, %if.end44
  %32 = load ptr, ptr %rightmost1.i, align 8, !dbg !1094, !tbaa !597
  %cmp58 = icmp eq ptr %32, %24, !dbg !1096
  br i1 %cmp58, label %if.then59, label %cleanup64, !dbg !1097

if.then59:                                        ; preds = %if.end54
  store ptr %call23, ptr %rightmost1.i, align 8, !dbg !1098, !tbaa !597
  br label %cleanup64, !dbg !1099

cleanup64:                                        ; preds = %if.end54, %if.then59
  tail call void @lzma_free(ptr noundef nonnull %24, ptr noundef %allocator) #13, !dbg !1100
  %.pre = load i64, ptr %uncompressed_size, align 8, !dbg !1101, !tbaa !651
  %.pre193 = load i64, ptr %record_count, align 8, !dbg !1102, !tbaa !496
  br label %cleanup.cont71

cleanup.cont71:                                   ; preds = %cleanup64, %land.lhs.true, %cleanup.cont
  %33 = phi i64 [ %.pre193, %cleanup64 ], [ %20, %land.lhs.true ], [ %20, %cleanup.cont ], !dbg !1102
  %34 = phi i64 [ %.pre, %cleanup64 ], [ %18, %land.lhs.true ], [ %18, %cleanup.cont ], !dbg !1101
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #13, !dbg !1103
  call void @llvm.dbg.declare(metadata ptr %info, metadata !931, metadata !DIExpression()), !dbg !1104
  store i64 %34, ptr %info, align 8, !dbg !1105, !tbaa !1106
  %file_size = getelementptr inbounds %struct.index_cat_info, ptr %info, i64 0, i32 1, !dbg !1105
  store i64 %retval.0.i.i, ptr %file_size, align 8, !dbg !1105, !tbaa !1108
  %block_number_add = getelementptr inbounds %struct.index_cat_info, ptr %info, i64 0, i32 2, !dbg !1105
  store i64 %33, ptr %block_number_add, align 8, !dbg !1105, !tbaa !1109
  %stream_number_add = getelementptr inbounds %struct.index_cat_info, ptr %info, i64 0, i32 3, !dbg !1105
  %count = getelementptr inbounds %struct.index_tree, ptr %dest, i64 0, i32 3, !dbg !1110
  %35 = load i32, ptr %count, align 8, !dbg !1110, !tbaa !493
  store i32 %35, ptr %stream_number_add, align 8, !dbg !1105, !tbaa !1111
  %streams76 = getelementptr inbounds %struct.index_cat_info, ptr %info, i64 0, i32 4, !dbg !1105
  store ptr %dest, ptr %streams76, align 8, !dbg !1105, !tbaa !1112
  %36 = load ptr, ptr %src, align 8, !dbg !1113, !tbaa !1114
  call fastcc void @index_cat_helper(ptr noundef nonnull %info, ptr noundef %36), !dbg !1115
  %37 = load i64, ptr %uncompressed_size2, align 8, !dbg !1116, !tbaa !651
  %38 = load i64, ptr %uncompressed_size, align 8, !dbg !1117, !tbaa !651
  %add82 = add i64 %38, %37, !dbg !1117
  store i64 %add82, ptr %uncompressed_size, align 8, !dbg !1117, !tbaa !651
  %total_size = getelementptr inbounds %struct.lzma_index_s, ptr %src, i64 0, i32 2, !dbg !1118
  %39 = load i64, ptr %total_size, align 8, !dbg !1118, !tbaa !564
  %total_size83 = getelementptr inbounds %struct.lzma_index_s, ptr %dest, i64 0, i32 2, !dbg !1119
  %40 = load i64, ptr %total_size83, align 8, !dbg !1120, !tbaa !564
  %add84 = add i64 %40, %39, !dbg !1120
  store i64 %add84, ptr %total_size83, align 8, !dbg !1120, !tbaa !564
  %41 = load i64, ptr %record_count6, align 8, !dbg !1121, !tbaa !496
  %42 = load i64, ptr %record_count, align 8, !dbg !1122, !tbaa !496
  %add87 = add i64 %42, %41, !dbg !1122
  store i64 %add87, ptr %record_count, align 8, !dbg !1122, !tbaa !496
  %43 = load i64, ptr %index_list_size7, align 8, !dbg !1123, !tbaa !529
  %44 = load i64, ptr %index_list_size, align 8, !dbg !1124, !tbaa !529
  %add90 = add i64 %44, %43, !dbg !1124
  store i64 %add90, ptr %index_list_size, align 8, !dbg !1124, !tbaa !529
  call void @llvm.dbg.value(metadata ptr %dest, metadata !657, metadata !DIExpression()), !dbg !1125
  %checks1.i = getelementptr inbounds %struct.lzma_index_s, ptr %dest, i64 0, i32 6, !dbg !1127
  %45 = load i32, ptr %checks1.i, align 8, !dbg !1127, !tbaa !209
  call void @llvm.dbg.value(metadata i32 %45, metadata !658, metadata !DIExpression()), !dbg !1125
  %46 = load ptr, ptr %rightmost.i, align 8, !dbg !1128, !tbaa !595
  call void @llvm.dbg.value(metadata ptr %46, metadata !659, metadata !DIExpression()), !dbg !1125
  %stream_flags.i = getelementptr inbounds %struct.index_stream, ptr %46, i64 0, i32 6, !dbg !1129
  %47 = load i32, ptr %stream_flags.i, align 8, !dbg !1130, !tbaa !245
  %cmp.not.i = icmp eq i32 %47, -1, !dbg !1131
  br i1 %cmp.not.i, label %lzma_index_checks.exit, label %if.then.i, !dbg !1132

if.then.i:                                        ; preds = %cleanup.cont71
  %check.i = getelementptr inbounds %struct.index_stream, ptr %46, i64 0, i32 6, i32 2, !dbg !1133
  %48 = load i32, ptr %check.i, align 8, !dbg !1133, !tbaa !669
  %shl.i = shl nuw i32 1, %48, !dbg !1134
  %or.i = or i32 %shl.i, %45, !dbg !1135
  call void @llvm.dbg.value(metadata i32 %or.i, metadata !658, metadata !DIExpression()), !dbg !1125
  br label %lzma_index_checks.exit, !dbg !1136

lzma_index_checks.exit:                           ; preds = %cleanup.cont71, %if.then.i
  %checks.0.i = phi i32 [ %or.i, %if.then.i ], [ %45, %cleanup.cont71 ], !dbg !1125
  call void @llvm.dbg.value(metadata i32 %checks.0.i, metadata !658, metadata !DIExpression()), !dbg !1125
  %checks = getelementptr inbounds %struct.lzma_index_s, ptr %src, i64 0, i32 6, !dbg !1137
  %49 = load i32, ptr %checks, align 8, !dbg !1137, !tbaa !209
  %or = or i32 %49, %checks.0.i, !dbg !1138
  store i32 %or, ptr %checks1.i, align 8, !dbg !1139, !tbaa !209
  call void @lzma_free(ptr noundef nonnull %src, ptr noundef %allocator) #13, !dbg !1140
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #13, !dbg !1141
  br label %cleanup94

cleanup94:                                        ; preds = %if.then19, %lzma_index_file_size.exit182, %lor.lhs.false, %if.end, %lzma_index_checks.exit
  %retval.4 = phi i32 [ 0, %lzma_index_checks.exit ], [ 9, %if.end ], [ 9, %lor.lhs.false ], [ 9, %lzma_index_file_size.exit182 ], [ 5, %if.then19 ], !dbg !941
  ret i32 %retval.4, !dbg !1141
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @index_cat_helper(ptr noundef %info, ptr noundef %this) unnamed_addr #10 !dbg !1142 {
entry:
  %file_size = getelementptr inbounds %struct.index_cat_info, ptr %info, i64 0, i32 1
  %stream_number_add = getelementptr inbounds %struct.index_cat_info, ptr %info, i64 0, i32 3
  %block_number_add = getelementptr inbounds %struct.index_cat_info, ptr %info, i64 0, i32 2
  %streams = getelementptr inbounds %struct.index_cat_info, ptr %info, i64 0, i32 4
  br label %tailrecurse, !dbg !1151

tailrecurse:                                      ; preds = %if.end, %entry
  %this.tr = phi ptr [ %this, %entry ], [ %1, %if.end ]
  call void @llvm.dbg.value(metadata ptr %info, metadata !1147, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata ptr %this.tr, metadata !1148, metadata !DIExpression()), !dbg !1153
  %left1 = getelementptr inbounds %struct.index_tree_node_s, ptr %this.tr, i64 0, i32 3, !dbg !1154
  %0 = load ptr, ptr %left1, align 8, !dbg !1154, !tbaa !1155
  call void @llvm.dbg.value(metadata ptr %0, metadata !1149, metadata !DIExpression()), !dbg !1153
  %right3 = getelementptr inbounds %struct.index_tree_node_s, ptr %this.tr, i64 0, i32 4, !dbg !1156
  %1 = load ptr, ptr %right3, align 8, !dbg !1156, !tbaa !1157
  call void @llvm.dbg.value(metadata ptr %1, metadata !1150, metadata !DIExpression()), !dbg !1153
  %cmp.not = icmp eq ptr %0, null, !dbg !1158
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1160

if.then:                                          ; preds = %tailrecurse
  tail call fastcc void @index_cat_helper(ptr noundef %info, ptr noundef nonnull %0), !dbg !1161
  br label %if.end, !dbg !1161

if.end:                                           ; preds = %if.then, %tailrecurse
  %2 = load i64, ptr %info, align 8, !dbg !1162, !tbaa !1106
  %3 = load i64, ptr %this.tr, align 8, !dbg !1163, !tbaa !1164
  %add = add i64 %3, %2, !dbg !1163
  store i64 %add, ptr %this.tr, align 8, !dbg !1163, !tbaa !1164
  %4 = load i64, ptr %file_size, align 8, !dbg !1165, !tbaa !1108
  %compressed_base = getelementptr inbounds %struct.index_tree_node_s, ptr %this.tr, i64 0, i32 1, !dbg !1166
  %5 = load i64, ptr %compressed_base, align 8, !dbg !1167, !tbaa !599
  %add6 = add i64 %5, %4, !dbg !1167
  store i64 %add6, ptr %compressed_base, align 8, !dbg !1167, !tbaa !599
  %6 = load i32, ptr %stream_number_add, align 8, !dbg !1168, !tbaa !1111
  %number = getelementptr inbounds %struct.index_stream, ptr %this.tr, i64 0, i32 1, !dbg !1169
  %7 = load i32, ptr %number, align 8, !dbg !1170, !tbaa !233
  %add7 = add i32 %7, %6, !dbg !1170
  store i32 %add7, ptr %number, align 8, !dbg !1170, !tbaa !233
  %8 = load i64, ptr %block_number_add, align 8, !dbg !1171, !tbaa !1109
  %block_number_base = getelementptr inbounds %struct.index_stream, ptr %this.tr, i64 0, i32 2, !dbg !1172
  %9 = load i64, ptr %block_number_base, align 8, !dbg !1173, !tbaa !1174
  %add8 = add i64 %9, %8, !dbg !1173
  store i64 %add8, ptr %block_number_base, align 8, !dbg !1173, !tbaa !1174
  %10 = load ptr, ptr %streams, align 8, !dbg !1175, !tbaa !1112
  tail call fastcc void @index_tree_append(ptr noundef %10, ptr noundef nonnull %this.tr), !dbg !1176
  %cmp10.not = icmp eq ptr %1, null, !dbg !1177
  br i1 %cmp10.not, label %if.end12, label %tailrecurse, !dbg !1178

if.end12:                                         ; preds = %if.end
  ret void, !dbg !1179
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lzma_index_dup(ptr nocapture noundef readonly %src, ptr noundef %allocator) local_unnamed_addr #0 !dbg !1180 {
entry:
  call void @llvm.dbg.value(metadata ptr %src, metadata !1184, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !1185, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !175, metadata !DIExpression()) #13, !dbg !1191
  %call.i = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %allocator) #13, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !178, metadata !DIExpression()) #13, !dbg !1191
  %cmp.not.i = icmp eq ptr %call.i, null, !dbg !1194
  br i1 %cmp.not.i, label %cleanup14, label %if.end, !dbg !1195

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !185, metadata !DIExpression()) #13, !dbg !1196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %call.i, i8 0, i64 28, i1 false) #13, !dbg !1198
  %uncompressed_size.i = getelementptr inbounds %struct.lzma_index_s, ptr %call.i, i64 0, i32 1, !dbg !1199
  %prealloc.i = getelementptr inbounds %struct.lzma_index_s, ptr %call.i, i64 0, i32 5, !dbg !1200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %uncompressed_size.i, i8 0, i64 32, i1 false) #13, !dbg !1201
  store i64 512, ptr %prealloc.i, align 8, !dbg !1202, !tbaa !199
  %checks.i = getelementptr inbounds %struct.lzma_index_s, ptr %call.i, i64 0, i32 6, !dbg !1203
  store i32 0, ptr %checks.i, align 8, !dbg !1204, !tbaa !209
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1186, metadata !DIExpression()), !dbg !1190
  %uncompressed_size = getelementptr inbounds %struct.lzma_index_s, ptr %src, i64 0, i32 1, !dbg !1205
  %0 = load i64, ptr %uncompressed_size, align 8, !dbg !1205, !tbaa !651
  store i64 %0, ptr %uncompressed_size.i, align 8, !dbg !1206, !tbaa !651
  %total_size = getelementptr inbounds %struct.lzma_index_s, ptr %src, i64 0, i32 2, !dbg !1207
  %1 = load i64, ptr %total_size, align 8, !dbg !1207, !tbaa !564
  %total_size2 = getelementptr inbounds %struct.lzma_index_s, ptr %call.i, i64 0, i32 2, !dbg !1208
  store i64 %1, ptr %total_size2, align 8, !dbg !1209, !tbaa !564
  %record_count = getelementptr inbounds %struct.lzma_index_s, ptr %src, i64 0, i32 3, !dbg !1210
  %2 = load i64, ptr %record_count, align 8, !dbg !1210, !tbaa !496
  %record_count3 = getelementptr inbounds %struct.lzma_index_s, ptr %call.i, i64 0, i32 3, !dbg !1211
  store i64 %2, ptr %record_count3, align 8, !dbg !1212, !tbaa !496
  %index_list_size = getelementptr inbounds %struct.lzma_index_s, ptr %src, i64 0, i32 4, !dbg !1213
  %3 = load i64, ptr %index_list_size, align 8, !dbg !1213, !tbaa !529
  %index_list_size4 = getelementptr inbounds %struct.lzma_index_s, ptr %call.i, i64 0, i32 4, !dbg !1214
  store i64 %3, ptr %index_list_size4, align 8, !dbg !1215, !tbaa !529
  %leftmost = getelementptr inbounds %struct.index_tree, ptr %src, i64 0, i32 1, !dbg !1216
  %4 = load ptr, ptr %leftmost, align 8, !dbg !1216, !tbaa !1217
  call void @llvm.dbg.value(metadata ptr %4, metadata !1187, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %4, metadata !1218, metadata !DIExpression()) #13, !dbg !1228
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !1223, metadata !DIExpression()) #13, !dbg !1228
  %record_count.i77 = getelementptr inbounds %struct.index_stream, ptr %4, i64 0, i32 4, !dbg !1230
  %5 = load i64, ptr %record_count.i77, align 8, !dbg !1230, !tbaa !631
  %cmp.i78 = icmp ugt i64 %5, 1152921504606846971, !dbg !1232
  br i1 %cmp.i78, label %if.then.i33, label %if.end.i, !dbg !1233

if.end.i:                                         ; preds = %if.end, %do.cond
  %record_count.i80 = phi ptr [ %record_count.i, %do.cond ], [ %record_count.i77, %if.end ]
  %srcstream.079 = phi ptr [ %srcstream.1, %do.cond ], [ %4, %if.end ]
  call void @llvm.dbg.value(metadata ptr %srcstream.079, metadata !1187, metadata !DIExpression()), !dbg !1190
  %compressed_base.i = getelementptr inbounds %struct.index_tree_node_s, ptr %srcstream.079, i64 0, i32 1, !dbg !1234
  %6 = load i64, ptr %compressed_base.i, align 8, !dbg !1234, !tbaa !599
  %7 = load i64, ptr %srcstream.079, align 8, !dbg !1235, !tbaa !1164
  %number.i = getelementptr inbounds %struct.index_stream, ptr %srcstream.079, i64 0, i32 1, !dbg !1236
  %8 = load i32, ptr %number.i, align 8, !dbg !1236, !tbaa !233
  %block_number_base.i = getelementptr inbounds %struct.index_stream, ptr %srcstream.079, i64 0, i32 2, !dbg !1237
  %9 = load i64, ptr %block_number_base.i, align 8, !dbg !1237, !tbaa !1174
  call void @llvm.dbg.value(metadata i64 %6, metadata !210, metadata !DIExpression()) #13, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %7, metadata !215, metadata !DIExpression()) #13, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %8, metadata !216, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #13, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %9, metadata !217, metadata !DIExpression()) #13, !dbg !1238
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !218, metadata !DIExpression()) #13, !dbg !1238
  %call.i.i = tail call ptr @lzma_alloc(i64 noundef 168, ptr noundef %allocator) #13, !dbg !1240
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !219, metadata !DIExpression()) #13, !dbg !1238
  %cmp.i.i = icmp eq ptr %call.i.i, null, !dbg !1241
  br i1 %cmp.i.i, label %if.then.i33, label %lor.lhs.false.i, !dbg !1242

lor.lhs.false.i:                                  ; preds = %if.end.i
  store i64 %7, ptr %call.i.i, align 8, !dbg !1243, !tbaa !1164
  %compressed_base3.i.i = getelementptr inbounds %struct.index_tree_node_s, ptr %call.i.i, i64 0, i32 1, !dbg !1244
  store i64 %6, ptr %compressed_base3.i.i, align 8, !dbg !1245, !tbaa !599
  %parent.i.i = getelementptr inbounds %struct.index_tree_node_s, ptr %call.i.i, i64 0, i32 2, !dbg !1246
  %number.i.i = getelementptr inbounds %struct.index_stream, ptr %call.i.i, i64 0, i32 1, !dbg !1247
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %parent.i.i, i8 0, i64 24, i1 false) #13, !dbg !1248
  store i32 %8, ptr %number.i.i, align 8, !dbg !1249, !tbaa !233
  %block_number_base7.i.i = getelementptr inbounds %struct.index_stream, ptr %call.i.i, i64 0, i32 2, !dbg !1250
  store i64 %9, ptr %block_number_base7.i.i, align 8, !dbg !1251, !tbaa !1174
  %groups.i.i = getelementptr inbounds %struct.index_stream, ptr %call.i.i, i64 0, i32 3, !dbg !1252
  call void @llvm.dbg.value(metadata ptr %groups.i.i, metadata !185, metadata !DIExpression()) #13, !dbg !1253
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %groups.i.i, i8 0, i64 28, i1 false) #13, !dbg !1255
  %record_count.i.i = getelementptr inbounds %struct.index_stream, ptr %call.i.i, i64 0, i32 4, !dbg !1256
  %stream_flags.i.i = getelementptr inbounds %struct.index_stream, ptr %call.i.i, i64 0, i32 6, !dbg !1257
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %record_count.i.i, i8 0, i64 16, i1 false) #13, !dbg !1258
  store i32 -1, ptr %stream_flags.i.i, align 8, !dbg !1259, !tbaa !245
  %stream_padding.i.i = getelementptr inbounds %struct.index_stream, ptr %call.i.i, i64 0, i32 7, !dbg !1260
  store i64 0, ptr %stream_padding.i.i, align 8, !dbg !1261, !tbaa !248
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !1224, metadata !DIExpression()) #13, !dbg !1228
  %leftmost.i = getelementptr inbounds %struct.index_stream, ptr %srcstream.079, i64 0, i32 3, i32 1, !dbg !1262
  %10 = load ptr, ptr %leftmost.i, align 8, !dbg !1262, !tbaa !1086
  %cmp4.i = icmp eq ptr %10, null, !dbg !1264
  br i1 %cmp4.i, label %if.end8, label %if.end7.i, !dbg !1265

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %11 = load i64, ptr %record_count.i80, align 8, !dbg !1266, !tbaa !631
  store i64 %11, ptr %record_count.i.i, align 8, !dbg !1267, !tbaa !631
  %index_list_size.i = getelementptr inbounds %struct.index_stream, ptr %srcstream.079, i64 0, i32 5, !dbg !1268
  %12 = load i64, ptr %index_list_size.i, align 8, !dbg !1268, !tbaa !629
  %index_list_size10.i = getelementptr inbounds %struct.index_stream, ptr %call.i.i, i64 0, i32 5, !dbg !1269
  store i64 %12, ptr %index_list_size10.i, align 8, !dbg !1270, !tbaa !629
  %stream_flags11.i = getelementptr inbounds %struct.index_stream, ptr %srcstream.079, i64 0, i32 6, !dbg !1271
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags.i.i, ptr noundef nonnull align 8 dereferenceable(56) %stream_flags11.i, i64 56, i1 false) #13, !dbg !1271, !tbaa.struct !709
  %stream_padding.i = getelementptr inbounds %struct.index_stream, ptr %srcstream.079, i64 0, i32 7, !dbg !1272
  %13 = load i64, ptr %stream_padding.i, align 8, !dbg !1272, !tbaa !248
  store i64 %13, ptr %stream_padding.i.i, align 8, !dbg !1273, !tbaa !248
  %14 = load i64, ptr %record_count.i80, align 8, !dbg !1274, !tbaa !631
  %mul.i = shl i64 %14, 4, !dbg !1275
  %add.i = add i64 %mul.i, 64, !dbg !1276
  %call14.i = tail call ptr @lzma_alloc(i64 noundef %add.i, ptr noundef %allocator) #13, !dbg !1277
  call void @llvm.dbg.value(metadata ptr %call14.i, metadata !1225, metadata !DIExpression()) #13, !dbg !1228
  %cmp15.i = icmp eq ptr %call14.i, null, !dbg !1278
  br i1 %cmp15.i, label %if.then17.i, label %if.end18.i, !dbg !1280

if.then17.i:                                      ; preds = %if.end7.i
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !433, metadata !DIExpression()) #13, !dbg !1281
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !434, metadata !DIExpression()) #13, !dbg !1281
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !435, metadata !DIExpression()) #13, !dbg !1281
  %groups.val.i.i = load ptr, ptr %groups.i.i, align 8, !dbg !1284, !tbaa !280
  call void @llvm.dbg.value(metadata ptr undef, metadata !414, metadata !DIExpression()) #13, !dbg !1285
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !420, metadata !DIExpression()) #13, !dbg !1285
  call void @llvm.dbg.value(metadata ptr null, metadata !421, metadata !DIExpression()) #13, !dbg !1285
  %cmp.not.i.i.i = icmp eq ptr %groups.val.i.i, null, !dbg !1287
  br i1 %cmp.not.i.i.i, label %if.then.i33, label %if.then.i.i.i, !dbg !1288

if.then.i.i.i:                                    ; preds = %if.then17.i
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %groups.val.i.i, ptr noundef %allocator, ptr noundef null) #13, !dbg !1289
  br label %if.then.i33, !dbg !1289

if.end18.i:                                       ; preds = %if.end7.i
  %number_base.i = getelementptr inbounds %struct.index_group, ptr %call14.i, i64 0, i32 1, !dbg !1290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %call14.i, i8 0, i64 16, i1 false) #13, !dbg !1291
  store i64 1, ptr %number_base.i, align 8, !dbg !1292, !tbaa !603
  %15 = load i64, ptr %record_count.i80, align 8, !dbg !1293, !tbaa !631
  %allocated.i = getelementptr inbounds %struct.index_group, ptr %call14.i, i64 0, i32 2, !dbg !1294
  store i64 %15, ptr %allocated.i, align 8, !dbg !1295, !tbaa !603
  %16 = load i64, ptr %record_count.i80, align 8, !dbg !1296, !tbaa !631
  %sub.i = add i64 %16, -1, !dbg !1297
  %last.i = getelementptr inbounds %struct.index_group, ptr %call14.i, i64 0, i32 3, !dbg !1298
  store i64 %sub.i, ptr %last.i, align 8, !dbg !1299, !tbaa !603
  %17 = load ptr, ptr %leftmost.i, align 8, !dbg !1300, !tbaa !1086
  call void @llvm.dbg.value(metadata ptr %17, metadata !1226, metadata !DIExpression()) #13, !dbg !1228
  call void @llvm.dbg.value(metadata i64 0, metadata !1227, metadata !DIExpression()) #13, !dbg !1228
  %records.i = getelementptr inbounds %struct.index_group, ptr %call14.i, i64 0, i32 4
  br label %do.body.i, !dbg !1301

do.body.i.backedge:                               ; preds = %while.cond.i.i, %land.rhs.i.i
  %srcg.0.i.be = phi ptr [ %22, %land.rhs.i.i ], [ %node.addr.0.i.i, %while.cond.i.i ]
  br label %do.body.i, !dbg !1228

do.body.i:                                        ; preds = %do.body.i.backedge, %if.end18.i
  %srcg.0.i = phi ptr [ %17, %if.end18.i ], [ %srcg.0.i.be, %do.body.i.backedge ], !dbg !1228
  %i.0.i = phi i64 [ 0, %if.end18.i ], [ %add34.i, %do.body.i.backedge ], !dbg !1228
  call void @llvm.dbg.value(metadata i64 %i.0.i, metadata !1227, metadata !DIExpression()) #13, !dbg !1228
  call void @llvm.dbg.value(metadata ptr %srcg.0.i, metadata !1226, metadata !DIExpression()) #13, !dbg !1228
  %add.ptr.i = getelementptr inbounds %struct.index_record, ptr %records.i, i64 %i.0.i, !dbg !1302
  %records27.i = getelementptr inbounds %struct.index_group, ptr %srcg.0.i, i64 0, i32 4, !dbg !1304
  %last29.i = getelementptr inbounds %struct.index_group, ptr %srcg.0.i, i64 0, i32 3, !dbg !1305
  %18 = load i64, ptr %last29.i, align 8, !dbg !1305, !tbaa !603
  %add30.i = shl i64 %18, 4, !dbg !1306
  %mul31.i = add i64 %add30.i, 16, !dbg !1306
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %add.ptr.i, ptr nonnull align 8 %records27.i, i64 %mul31.i, i1 false) #13, !dbg !1307
  %19 = load i64, ptr %last29.i, align 8, !dbg !1308, !tbaa !603
  %add33.i = add i64 %i.0.i, 1, !dbg !1309
  %add34.i = add i64 %add33.i, %19, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %add34.i, metadata !1227, metadata !DIExpression()) #13, !dbg !1228
  call void @llvm.dbg.value(metadata ptr %srcg.0.i, metadata !1311, metadata !DIExpression()) #13, !dbg !1318
  %right.i.i = getelementptr inbounds %struct.index_tree_node_s, ptr %srcg.0.i, i64 0, i32 4, !dbg !1320
  %20 = load ptr, ptr %right.i.i, align 8, !dbg !1320, !tbaa !292
  %cmp.not.i.i = icmp eq ptr %20, null, !dbg !1322
  br i1 %cmp.not.i.i, label %while.cond4.i.i, label %while.cond.i.i, !dbg !1323

while.cond.i.i:                                   ; preds = %do.body.i, %while.cond.i.i
  %node.addr.0.i.i = phi ptr [ %21, %while.cond.i.i ], [ %20, %do.body.i ], !dbg !1324
  call void @llvm.dbg.value(metadata ptr %node.addr.0.i.i, metadata !1311, metadata !DIExpression()) #13, !dbg !1318
  %left.i.i = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.0.i.i, i64 0, i32 3, !dbg !1326
  %21 = load ptr, ptr %left.i.i, align 8, !dbg !1326, !tbaa !390
  %cmp2.not.i.i = icmp eq ptr %21, null, !dbg !1327
  br i1 %cmp2.not.i.i, label %do.body.i.backedge, label %while.cond.i.i, !dbg !1328, !llvm.loop !1329

while.cond4.i.i:                                  ; preds = %do.body.i, %land.rhs.i.i
  %node.addr.1.i.i = phi ptr [ %22, %land.rhs.i.i ], [ %srcg.0.i, %do.body.i ]
  call void @llvm.dbg.value(metadata ptr %node.addr.1.i.i, metadata !1311, metadata !DIExpression()) #13, !dbg !1318
  %parent.i78.i = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.1.i.i, i64 0, i32 2, !dbg !1331
  %22 = load ptr, ptr %parent.i78.i, align 8, !dbg !1331, !tbaa !272
  %cmp5.not.i.i = icmp eq ptr %22, null, !dbg !1332
  br i1 %cmp5.not.i.i, label %index_dup_stream.exit, label %land.rhs.i.i, !dbg !1333

land.rhs.i.i:                                     ; preds = %while.cond4.i.i
  %right7.i.i = getelementptr inbounds %struct.index_tree_node_s, ptr %22, i64 0, i32 4, !dbg !1334
  %23 = load ptr, ptr %right7.i.i, align 8, !dbg !1334, !tbaa !292
  %cmp8.i.i = icmp eq ptr %23, %node.addr.1.i.i, !dbg !1335
  br i1 %cmp8.i.i, label %while.cond4.i.i, label %do.body.i.backedge, !dbg !1336, !llvm.loop !1337

index_dup_stream.exit:                            ; preds = %while.cond4.i.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !1226, metadata !DIExpression()) #13, !dbg !1228
  tail call fastcc void @index_tree_append(ptr noundef nonnull %groups.i.i, ptr noundef nonnull %call14.i) #13, !dbg !1339
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !1188, metadata !DIExpression()), !dbg !1340
  br label %if.end8, !dbg !1341

if.then.i33:                                      ; preds = %do.cond, %if.end.i, %if.end, %if.then.i.i.i, %if.then17.i
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !406, metadata !DIExpression()) #13, !dbg !1342
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !407, metadata !DIExpression()) #13, !dbg !1342
  %i.val.i = load ptr, ptr %call.i, align 8, !dbg !1346, !tbaa !280
  call void @llvm.dbg.value(metadata ptr undef, metadata !414, metadata !DIExpression()) #13, !dbg !1347
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !420, metadata !DIExpression()) #13, !dbg !1347
  call void @llvm.dbg.value(metadata ptr @index_stream_end, metadata !421, metadata !DIExpression()) #13, !dbg !1347
  %cmp.not.i.i32 = icmp eq ptr %i.val.i, null, !dbg !1349
  br i1 %cmp.not.i.i32, label %cleanup.thread, label %if.then.i.i, !dbg !1350

if.then.i.i:                                      ; preds = %if.then.i33
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %i.val.i, ptr noundef %allocator, ptr noundef nonnull @index_stream_end) #13, !dbg !1351
  br label %cleanup.thread, !dbg !1351

cleanup.thread:                                   ; preds = %if.then.i.i, %if.then.i33
  tail call void @lzma_free(ptr noundef nonnull %call.i, ptr noundef %allocator) #13, !dbg !1352
  call void @llvm.dbg.value(metadata ptr %srcstream.1, metadata !1187, metadata !DIExpression()), !dbg !1190
  br label %cleanup14

if.end8:                                          ; preds = %index_dup_stream.exit, %lor.lhs.false.i
  tail call fastcc void @index_tree_append(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i.i), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %srcstream.079, metadata !1311, metadata !DIExpression()), !dbg !1354
  %right.i = getelementptr inbounds %struct.index_tree_node_s, ptr %srcstream.079, i64 0, i32 4, !dbg !1356
  %24 = load ptr, ptr %right.i, align 8, !dbg !1356, !tbaa !292
  %cmp.not.i35 = icmp eq ptr %24, null, !dbg !1357
  br i1 %cmp.not.i35, label %while.cond4.i, label %while.cond.i, !dbg !1358

while.cond.i:                                     ; preds = %if.end8, %while.cond.i
  %node.addr.0.i = phi ptr [ %25, %while.cond.i ], [ %24, %if.end8 ], !dbg !1359
  call void @llvm.dbg.value(metadata ptr %node.addr.0.i, metadata !1311, metadata !DIExpression()), !dbg !1354
  %left.i = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.0.i, i64 0, i32 3, !dbg !1360
  %25 = load ptr, ptr %left.i, align 8, !dbg !1360, !tbaa !390
  %cmp2.not.i = icmp eq ptr %25, null, !dbg !1361
  br i1 %cmp2.not.i, label %do.cond, label %while.cond.i, !dbg !1362, !llvm.loop !1363

while.cond4.i:                                    ; preds = %if.end8, %land.rhs.i
  %node.addr.1.i = phi ptr [ %26, %land.rhs.i ], [ %srcstream.079, %if.end8 ]
  call void @llvm.dbg.value(metadata ptr %node.addr.1.i, metadata !1311, metadata !DIExpression()), !dbg !1354
  %parent.i = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.1.i, i64 0, i32 2, !dbg !1365
  %26 = load ptr, ptr %parent.i, align 8, !dbg !1365, !tbaa !272
  %cmp5.not.i = icmp eq ptr %26, null, !dbg !1366
  br i1 %cmp5.not.i, label %cleanup14, label %land.rhs.i, !dbg !1367

land.rhs.i:                                       ; preds = %while.cond4.i
  %right7.i = getelementptr inbounds %struct.index_tree_node_s, ptr %26, i64 0, i32 4, !dbg !1368
  %27 = load ptr, ptr %right7.i, align 8, !dbg !1368, !tbaa !292
  %cmp8.i = icmp eq ptr %27, %node.addr.1.i, !dbg !1369
  br i1 %cmp8.i, label %while.cond4.i, label %do.cond, !dbg !1370, !llvm.loop !1371

do.cond:                                          ; preds = %while.cond.i, %land.rhs.i
  %srcstream.1 = phi ptr [ %26, %land.rhs.i ], [ %node.addr.0.i, %while.cond.i ], !dbg !1190
  call void @llvm.dbg.value(metadata ptr %srcstream.1, metadata !1187, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %srcstream.1, metadata !1218, metadata !DIExpression()) #13, !dbg !1228
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !1223, metadata !DIExpression()) #13, !dbg !1228
  %record_count.i = getelementptr inbounds %struct.index_stream, ptr %srcstream.1, i64 0, i32 4, !dbg !1230
  %28 = load i64, ptr %record_count.i, align 8, !dbg !1230, !tbaa !631
  %cmp.i = icmp ugt i64 %28, 1152921504606846971, !dbg !1232
  br i1 %cmp.i, label %if.then.i33, label %if.end.i, !dbg !1233

cleanup14:                                        ; preds = %while.cond4.i, %entry, %cleanup.thread
  %retval.3 = phi ptr [ null, %cleanup.thread ], [ null, %entry ], [ %call.i, %while.cond4.i ], !dbg !1190
  ret ptr %retval.3, !dbg !1373
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define dso_local void @lzma_index_iter_init(ptr nocapture noundef writeonly %iter, ptr noundef %i) local_unnamed_addr #5 !dbg !1374 {
entry:
  call void @llvm.dbg.value(metadata ptr %iter, metadata !1431, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata ptr %i, metadata !1432, metadata !DIExpression()), !dbg !1433
  %internal = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, !dbg !1434
  store ptr %i, ptr %internal, align 8, !dbg !1435, !tbaa !711
  call void @llvm.dbg.value(metadata ptr %iter, metadata !1436, metadata !DIExpression()) #13, !dbg !1441
  %arrayidx.i = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 1, !dbg !1443
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i, i8 0, i64 32, i1 false) #13, !dbg !1444
  ret void, !dbg !1445
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @lzma_index_iter_rewind(ptr nocapture noundef writeonly %iter) local_unnamed_addr #11 !dbg !1437 {
entry:
  call void @llvm.dbg.value(metadata ptr %iter, metadata !1436, metadata !DIExpression()), !dbg !1446
  %arrayidx = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 1, !dbg !1447
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx, i8 0, i64 32, i1 false), !dbg !1448
  ret void, !dbg !1449
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @lzma_index_iter_next(ptr noundef %iter, i32 noundef %mode) local_unnamed_addr #0 !dbg !1450 {
entry:
  call void @llvm.dbg.value(metadata ptr %iter, metadata !1455, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1456, metadata !DIExpression()), !dbg !1462
  %cmp = icmp ugt i32 %mode, 3, !dbg !1463
  br i1 %cmp, label %return, label %if.end, !dbg !1465

if.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, !dbg !1466
  %0 = load ptr, ptr %internal, align 8, !dbg !1467, !tbaa !711
  call void @llvm.dbg.value(metadata ptr %0, metadata !1457, metadata !DIExpression()), !dbg !1462
  %arrayidx2 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 1, !dbg !1468
  %1 = load ptr, ptr %arrayidx2, align 8, !dbg !1469, !tbaa !711
  call void @llvm.dbg.value(metadata ptr %1, metadata !1458, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata ptr null, metadata !1459, metadata !DIExpression()), !dbg !1462
  %arrayidx4 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 3, !dbg !1470
  %2 = load i64, ptr %arrayidx4, align 8, !dbg !1471, !tbaa !711
  call void @llvm.dbg.value(metadata i64 %2, metadata !1460, metadata !DIExpression()), !dbg !1462
  %cmp5.not = icmp eq i32 %mode, 1, !dbg !1472
  br i1 %cmp5.not, label %if.end15, label %if.then6, !dbg !1474

if.then6:                                         ; preds = %if.end
  %arrayidx8 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 4, !dbg !1475
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !1477, !tbaa !711
  switch i64 %3, label %if.end15 [
    i64 0, label %sw.bb
    i64 1, label %sw.bb11
    i64 2, label %sw.bb14
  ], !dbg !1478

sw.bb:                                            ; preds = %if.then6
  %arrayidx10 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 2, !dbg !1479
  call void @llvm.dbg.value(metadata ptr %9, metadata !1459, metadata !DIExpression()), !dbg !1462
  br label %if.end15.sink.split, !dbg !1481

sw.bb11:                                          ; preds = %if.then6
  %arrayidx13 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 2, !dbg !1482
  %4 = load ptr, ptr %arrayidx13, align 8, !dbg !1483, !tbaa !711
  call void @llvm.dbg.value(metadata ptr %4, metadata !1311, metadata !DIExpression()), !dbg !1484
  %right.i = getelementptr inbounds %struct.index_tree_node_s, ptr %4, i64 0, i32 4, !dbg !1486
  %5 = load ptr, ptr %right.i, align 8, !dbg !1486, !tbaa !292
  %cmp.not.i = icmp eq ptr %5, null, !dbg !1487
  br i1 %cmp.not.i, label %while.cond4.i, label %while.cond.i, !dbg !1488

while.cond.i:                                     ; preds = %sw.bb11, %while.cond.i
  %node.addr.0.i = phi ptr [ %6, %while.cond.i ], [ %5, %sw.bb11 ], !dbg !1489
  call void @llvm.dbg.value(metadata ptr %node.addr.0.i, metadata !1311, metadata !DIExpression()), !dbg !1484
  %left.i = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.0.i, i64 0, i32 3, !dbg !1490
  %6 = load ptr, ptr %left.i, align 8, !dbg !1490, !tbaa !390
  %cmp2.not.i = icmp eq ptr %6, null, !dbg !1491
  br i1 %cmp2.not.i, label %if.end15, label %while.cond.i, !dbg !1492, !llvm.loop !1493

while.cond4.i:                                    ; preds = %sw.bb11, %land.rhs.i
  %node.addr.1.i = phi ptr [ %7, %land.rhs.i ], [ %4, %sw.bb11 ]
  call void @llvm.dbg.value(metadata ptr %node.addr.1.i, metadata !1311, metadata !DIExpression()), !dbg !1484
  %parent.i = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.1.i, i64 0, i32 2, !dbg !1495
  %7 = load ptr, ptr %parent.i, align 8, !dbg !1495, !tbaa !272
  %cmp5.not.i = icmp eq ptr %7, null, !dbg !1496
  br i1 %cmp5.not.i, label %if.end15, label %land.rhs.i, !dbg !1497

land.rhs.i:                                       ; preds = %while.cond4.i
  %right7.i = getelementptr inbounds %struct.index_tree_node_s, ptr %7, i64 0, i32 4, !dbg !1498
  %8 = load ptr, ptr %right7.i, align 8, !dbg !1498, !tbaa !292
  %cmp8.i = icmp eq ptr %8, %node.addr.1.i, !dbg !1499
  br i1 %cmp8.i, label %while.cond4.i, label %if.end15, !dbg !1500, !llvm.loop !1501

sw.bb14:                                          ; preds = %if.then6
  %leftmost = getelementptr inbounds %struct.index_stream, ptr %1, i64 0, i32 3, i32 1, !dbg !1503
  call void @llvm.dbg.value(metadata ptr undef, metadata !1459, metadata !DIExpression()), !dbg !1462
  br label %if.end15.sink.split, !dbg !1504

if.end15.sink.split:                              ; preds = %sw.bb14, %sw.bb
  %arrayidx10.sink = phi ptr [ %arrayidx10, %sw.bb ], [ %leftmost, %sw.bb14 ]
  %9 = load ptr, ptr %arrayidx10.sink, align 8, !dbg !1505, !tbaa !711
  br label %if.end15

if.end15:                                         ; preds = %while.cond.i, %land.rhs.i, %while.cond4.i, %if.end15.sink.split, %if.then6, %if.end
  %group.0 = phi ptr [ null, %if.then6 ], [ null, %if.end ], [ %9, %if.end15.sink.split ], [ null, %while.cond4.i ], [ %7, %land.rhs.i ], [ %node.addr.0.i, %while.cond.i ], !dbg !1462
  call void @llvm.dbg.value(metadata ptr %group.0, metadata !1459, metadata !DIExpression()), !dbg !1462
  %cmp47 = icmp ugt i32 %mode, 1
  %leftmost18 = getelementptr inbounds %struct.index_tree, ptr %0, i64 0, i32 1
  %cmp56 = icmp eq i32 %mode, 3
  br label %again, !dbg !1506

again:                                            ; preds = %again.backedge, %if.end15
  %stream.0 = phi ptr [ %1, %if.end15 ], [ %stream.4, %again.backedge ], !dbg !1462
  %group.1 = phi ptr [ %group.0, %if.end15 ], [ %group.3, %again.backedge ], !dbg !1462
  %record.0 = phi i64 [ %2, %if.end15 ], [ %record.1, %again.backedge ], !dbg !1462
  call void @llvm.dbg.value(metadata i64 %record.0, metadata !1460, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata ptr %group.1, metadata !1459, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata ptr %stream.0, metadata !1458, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.label(metadata !1461), !dbg !1507
  %cmp16 = icmp eq ptr %stream.0, null, !dbg !1508
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !1510

if.then17:                                        ; preds = %again
  %10 = load ptr, ptr %leftmost18, align 8, !dbg !1511, !tbaa !1217
  call void @llvm.dbg.value(metadata ptr %10, metadata !1458, metadata !DIExpression()), !dbg !1462
  %leftmost22185 = getelementptr inbounds %struct.index_stream, ptr %10, i64 0, i32 3, i32 1
  %11 = load ptr, ptr %leftmost22185, align 8, !dbg !1513, !tbaa !1086
  %cmp23186 = icmp eq ptr %11, null
  %or.cond = select i1 %cmp47, i1 %cmp23186, i1 false, !dbg !1514
  call void @llvm.dbg.value(metadata ptr %10, metadata !1458, metadata !DIExpression()), !dbg !1462
  br i1 %or.cond, label %while.body, label %if.end55, !dbg !1514

while.body:                                       ; preds = %if.then17, %index_tree_next.exit137
  %stream.1187 = phi ptr [ %retval.0.i136, %index_tree_next.exit137 ], [ %10, %if.then17 ]
  call void @llvm.dbg.value(metadata ptr %stream.1187, metadata !1458, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata ptr %stream.1187, metadata !1311, metadata !DIExpression()), !dbg !1515
  %right.i123 = getelementptr inbounds %struct.index_tree_node_s, ptr %stream.1187, i64 0, i32 4, !dbg !1520
  %12 = load ptr, ptr %right.i123, align 8, !dbg !1520, !tbaa !292
  %cmp.not.i124 = icmp eq ptr %12, null, !dbg !1521
  br i1 %cmp.not.i124, label %while.cond4.i132, label %while.cond.i128, !dbg !1522

while.cond.i128:                                  ; preds = %while.body, %while.cond.i128
  %node.addr.0.i125 = phi ptr [ %13, %while.cond.i128 ], [ %12, %while.body ], !dbg !1523
  call void @llvm.dbg.value(metadata ptr %node.addr.0.i125, metadata !1311, metadata !DIExpression()), !dbg !1515
  %left.i126 = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.0.i125, i64 0, i32 3, !dbg !1524
  %13 = load ptr, ptr %left.i126, align 8, !dbg !1524, !tbaa !390
  %cmp2.not.i127 = icmp eq ptr %13, null, !dbg !1525
  br i1 %cmp2.not.i127, label %index_tree_next.exit137, label %while.cond.i128, !dbg !1526, !llvm.loop !1527

while.cond4.i132:                                 ; preds = %while.body, %land.rhs.i135
  %node.addr.1.i129 = phi ptr [ %14, %land.rhs.i135 ], [ %stream.1187, %while.body ]
  call void @llvm.dbg.value(metadata ptr %node.addr.1.i129, metadata !1311, metadata !DIExpression()), !dbg !1515
  %parent.i130 = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.1.i129, i64 0, i32 2, !dbg !1529
  %14 = load ptr, ptr %parent.i130, align 8, !dbg !1529, !tbaa !272
  %cmp5.not.i131 = icmp eq ptr %14, null, !dbg !1530
  br i1 %cmp5.not.i131, label %return, label %land.rhs.i135, !dbg !1531

land.rhs.i135:                                    ; preds = %while.cond4.i132
  %right7.i133 = getelementptr inbounds %struct.index_tree_node_s, ptr %14, i64 0, i32 4, !dbg !1532
  %15 = load ptr, ptr %right7.i133, align 8, !dbg !1532, !tbaa !292
  %cmp8.i134 = icmp eq ptr %15, %node.addr.1.i129, !dbg !1533
  br i1 %cmp8.i134, label %while.cond4.i132, label %index_tree_next.exit137, !dbg !1534, !llvm.loop !1535

index_tree_next.exit137:                          ; preds = %while.cond.i128, %land.rhs.i135
  %retval.0.i136 = phi ptr [ %14, %land.rhs.i135 ], [ %node.addr.0.i125, %while.cond.i128 ], !dbg !1515
  call void @llvm.dbg.value(metadata ptr %retval.0.i136, metadata !1458, metadata !DIExpression()), !dbg !1462
  %leftmost22 = getelementptr inbounds %struct.index_stream, ptr %retval.0.i136, i64 0, i32 3, i32 1, !dbg !1537
  %16 = load ptr, ptr %leftmost22, align 8, !dbg !1537, !tbaa !1086
  %cmp23 = icmp eq ptr %16, null, !dbg !1538
  br i1 %cmp23, label %while.body, label %if.end55, !dbg !1539

if.else:                                          ; preds = %again
  %cmp31.not = icmp eq ptr %group.1, null, !dbg !1540
  br i1 %cmp31.not, label %if.end39, label %land.lhs.true, !dbg !1542

land.lhs.true:                                    ; preds = %if.else
  %last = getelementptr inbounds %struct.index_group, ptr %group.1, i64 0, i32 3, !dbg !1543
  %17 = load i64, ptr %last, align 8, !dbg !1543, !tbaa !603
  %cmp32 = icmp ult i64 %record.0, %17, !dbg !1544
  br i1 %cmp32, label %if.then33, label %if.then36, !dbg !1545

if.then33:                                        ; preds = %land.lhs.true
  %inc = add nuw i64 %record.0, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1460, metadata !DIExpression()), !dbg !1462
  br label %if.end55, !dbg !1548

if.then36:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i64 0, metadata !1460, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata ptr %group.1, metadata !1311, metadata !DIExpression()), !dbg !1549
  %right.i138 = getelementptr inbounds %struct.index_tree_node_s, ptr %group.1, i64 0, i32 4, !dbg !1553
  %18 = load ptr, ptr %right.i138, align 8, !dbg !1553, !tbaa !292
  %cmp.not.i139 = icmp eq ptr %18, null, !dbg !1554
  br i1 %cmp.not.i139, label %while.cond4.i147, label %while.cond.i143, !dbg !1555

while.cond.i143:                                  ; preds = %if.then36, %while.cond.i143
  %node.addr.0.i140 = phi ptr [ %19, %while.cond.i143 ], [ %18, %if.then36 ], !dbg !1556
  call void @llvm.dbg.value(metadata ptr %node.addr.0.i140, metadata !1311, metadata !DIExpression()), !dbg !1549
  %left.i141 = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.0.i140, i64 0, i32 3, !dbg !1557
  %19 = load ptr, ptr %left.i141, align 8, !dbg !1557, !tbaa !390
  %cmp2.not.i142 = icmp eq ptr %19, null, !dbg !1558
  br i1 %cmp2.not.i142, label %if.end55, label %while.cond.i143, !dbg !1559, !llvm.loop !1560

while.cond4.i147:                                 ; preds = %if.then36, %land.rhs.i150
  %node.addr.1.i144 = phi ptr [ %20, %land.rhs.i150 ], [ %group.1, %if.then36 ]
  call void @llvm.dbg.value(metadata ptr %node.addr.1.i144, metadata !1311, metadata !DIExpression()), !dbg !1549
  %parent.i145 = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.1.i144, i64 0, i32 2, !dbg !1562
  %20 = load ptr, ptr %parent.i145, align 8, !dbg !1562, !tbaa !272
  %cmp5.not.i146 = icmp eq ptr %20, null, !dbg !1563
  br i1 %cmp5.not.i146, label %if.end39, label %land.rhs.i150, !dbg !1564

land.rhs.i150:                                    ; preds = %while.cond4.i147
  %right7.i148 = getelementptr inbounds %struct.index_tree_node_s, ptr %20, i64 0, i32 4, !dbg !1565
  %21 = load ptr, ptr %right7.i148, align 8, !dbg !1565, !tbaa !292
  %cmp8.i149 = icmp eq ptr %21, %node.addr.1.i144, !dbg !1566
  br i1 %cmp8.i149, label %while.cond4.i147, label %if.end55, !dbg !1567, !llvm.loop !1568

if.end39:                                         ; preds = %while.cond4.i147, %if.else
  call void @llvm.dbg.value(metadata ptr null, metadata !1459, metadata !DIExpression()), !dbg !1462
  br i1 %cmp47, label %do.body.us, label %if.end39.split, !dbg !1570

do.body.us:                                       ; preds = %if.end39, %do.cond.us
  %stream.3.us = phi ptr [ %retval.0.i166.ph.us, %do.cond.us ], [ %stream.0, %if.end39 ], !dbg !1462
  call void @llvm.dbg.value(metadata ptr %stream.3.us, metadata !1458, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata ptr %stream.3.us, metadata !1311, metadata !DIExpression()), !dbg !1573
  %right.i153.us = getelementptr inbounds %struct.index_tree_node_s, ptr %stream.3.us, i64 0, i32 4, !dbg !1576
  %22 = load ptr, ptr %right.i153.us, align 8, !dbg !1576, !tbaa !292
  %cmp.not.i154.us = icmp eq ptr %22, null, !dbg !1577
  br i1 %cmp.not.i154.us, label %while.cond4.i162.us, label %while.cond.i158.us, !dbg !1578

while.cond.i158.us:                               ; preds = %do.body.us, %while.cond.i158.us
  %node.addr.0.i155.us = phi ptr [ %23, %while.cond.i158.us ], [ %22, %do.body.us ], !dbg !1579
  call void @llvm.dbg.value(metadata ptr %node.addr.0.i155.us, metadata !1311, metadata !DIExpression()), !dbg !1573
  %left.i156.us = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.0.i155.us, i64 0, i32 3, !dbg !1580
  %23 = load ptr, ptr %left.i156.us, align 8, !dbg !1580, !tbaa !390
  %cmp2.not.i157.us = icmp eq ptr %23, null, !dbg !1581
  br i1 %cmp2.not.i157.us, label %do.cond.us, label %while.cond.i158.us, !dbg !1582, !llvm.loop !1583

while.cond4.i162.us:                              ; preds = %do.body.us, %land.rhs.i165.us
  %node.addr.1.i159.us = phi ptr [ %24, %land.rhs.i165.us ], [ %stream.3.us, %do.body.us ]
  call void @llvm.dbg.value(metadata ptr %node.addr.1.i159.us, metadata !1311, metadata !DIExpression()), !dbg !1573
  %parent.i160.us = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.1.i159.us, i64 0, i32 2, !dbg !1585
  %24 = load ptr, ptr %parent.i160.us, align 8, !dbg !1585, !tbaa !272
  %cmp5.not.i161.us = icmp eq ptr %24, null, !dbg !1586
  br i1 %cmp5.not.i161.us, label %return, label %land.rhs.i165.us, !dbg !1587

land.rhs.i165.us:                                 ; preds = %while.cond4.i162.us
  %right7.i163.us = getelementptr inbounds %struct.index_tree_node_s, ptr %24, i64 0, i32 4, !dbg !1588
  %25 = load ptr, ptr %right7.i163.us, align 8, !dbg !1588, !tbaa !292
  %cmp8.i164.us = icmp eq ptr %25, %node.addr.1.i159.us, !dbg !1589
  br i1 %cmp8.i164.us, label %while.cond4.i162.us, label %do.cond.us, !dbg !1590, !llvm.loop !1591

do.cond.us:                                       ; preds = %while.cond.i158.us, %land.rhs.i165.us
  %retval.0.i166.ph.us = phi ptr [ %24, %land.rhs.i165.us ], [ %node.addr.0.i155.us, %while.cond.i158.us ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !1458, metadata !DIExpression()), !dbg !1462
  %leftmost49.us = getelementptr inbounds %struct.index_stream, ptr %retval.0.i166.ph.us, i64 0, i32 3, i32 1, !dbg !1593
  %26 = load ptr, ptr %leftmost49.us, align 8, !dbg !1593, !tbaa !1086
  %cmp50.us = icmp eq ptr %26, null, !dbg !1594
  br i1 %cmp50.us, label %do.body.us, label %do.end, !dbg !1595, !llvm.loop !1596

if.end39.split:                                   ; preds = %if.end39
  call void @llvm.dbg.value(metadata ptr %stream.0, metadata !1458, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata ptr %stream.0, metadata !1311, metadata !DIExpression()), !dbg !1573
  %right.i153 = getelementptr inbounds %struct.index_tree_node_s, ptr %stream.0, i64 0, i32 4, !dbg !1576
  %27 = load ptr, ptr %right.i153, align 8, !dbg !1576, !tbaa !292
  %cmp.not.i154 = icmp eq ptr %27, null, !dbg !1577
  br i1 %cmp.not.i154, label %while.cond4.i162, label %while.cond.i158, !dbg !1578

while.cond.i158:                                  ; preds = %if.end39.split, %while.cond.i158
  %node.addr.0.i155 = phi ptr [ %28, %while.cond.i158 ], [ %27, %if.end39.split ], !dbg !1579
  call void @llvm.dbg.value(metadata ptr %node.addr.0.i155, metadata !1311, metadata !DIExpression()), !dbg !1573
  %left.i156 = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.0.i155, i64 0, i32 3, !dbg !1580
  %28 = load ptr, ptr %left.i156, align 8, !dbg !1580, !tbaa !390
  %cmp2.not.i157 = icmp eq ptr %28, null, !dbg !1581
  br i1 %cmp2.not.i157, label %do.end, label %while.cond.i158, !dbg !1582, !llvm.loop !1583

while.cond4.i162:                                 ; preds = %if.end39.split, %land.rhs.i165
  %node.addr.1.i159 = phi ptr [ %29, %land.rhs.i165 ], [ %stream.0, %if.end39.split ]
  call void @llvm.dbg.value(metadata ptr %node.addr.1.i159, metadata !1311, metadata !DIExpression()), !dbg !1573
  %parent.i160 = getelementptr inbounds %struct.index_tree_node_s, ptr %node.addr.1.i159, i64 0, i32 2, !dbg !1585
  %29 = load ptr, ptr %parent.i160, align 8, !dbg !1585, !tbaa !272
  %cmp5.not.i161 = icmp eq ptr %29, null, !dbg !1586
  br i1 %cmp5.not.i161, label %return, label %land.rhs.i165, !dbg !1587

land.rhs.i165:                                    ; preds = %while.cond4.i162
  %right7.i163 = getelementptr inbounds %struct.index_tree_node_s, ptr %29, i64 0, i32 4, !dbg !1588
  %30 = load ptr, ptr %right7.i163, align 8, !dbg !1588, !tbaa !292
  %cmp8.i164 = icmp eq ptr %30, %node.addr.1.i159, !dbg !1589
  br i1 %cmp8.i164, label %while.cond4.i162, label %do.end, !dbg !1590, !llvm.loop !1591

do.end:                                           ; preds = %while.cond.i158, %land.rhs.i165, %do.cond.us
  %.us-phi = phi ptr [ %retval.0.i166.ph.us, %do.cond.us ], [ %29, %land.rhs.i165 ], [ %node.addr.0.i155, %while.cond.i158 ]
  %leftmost52 = getelementptr inbounds %struct.index_stream, ptr %.us-phi, i64 0, i32 3, i32 1, !dbg !1599
  %31 = load ptr, ptr %leftmost52, align 8, !dbg !1599, !tbaa !1086
  call void @llvm.dbg.value(metadata ptr %31, metadata !1459, metadata !DIExpression()), !dbg !1462
  br label %if.end55, !dbg !1600

if.end55:                                         ; preds = %while.cond.i143, %land.rhs.i150, %index_tree_next.exit137, %if.then17, %if.then33, %do.end
  %stream.4 = phi ptr [ %stream.0, %if.then33 ], [ %.us-phi, %do.end ], [ %10, %if.then17 ], [ %retval.0.i136, %index_tree_next.exit137 ], [ %stream.0, %land.rhs.i150 ], [ %stream.0, %while.cond.i143 ], !dbg !1462
  %group.3 = phi ptr [ %group.1, %if.then33 ], [ %31, %do.end ], [ %11, %if.then17 ], [ %16, %index_tree_next.exit137 ], [ %20, %land.rhs.i150 ], [ %node.addr.0.i140, %while.cond.i143 ], !dbg !1462
  %record.1 = phi i64 [ %inc, %if.then33 ], [ 0, %do.end ], [ 0, %if.then17 ], [ 0, %index_tree_next.exit137 ], [ 0, %land.rhs.i150 ], [ 0, %while.cond.i143 ], !dbg !1601
  call void @llvm.dbg.value(metadata i64 %record.1, metadata !1460, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata ptr %group.3, metadata !1459, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata ptr %stream.4, metadata !1458, metadata !DIExpression()), !dbg !1462
  br i1 %cmp56, label %if.then57, label %if.end76, !dbg !1602

if.then57:                                        ; preds = %if.end55
  %cmp58 = icmp eq i64 %record.1, 0, !dbg !1603
  br i1 %cmp58, label %if.then59, label %if.else65, !dbg !1607

if.then59:                                        ; preds = %if.then57
  %32 = load i64, ptr %group.3, align 8, !dbg !1608, !tbaa !878
  %records = getelementptr inbounds %struct.index_group, ptr %group.3, i64 0, i32 4, !dbg !1611
  %33 = load i64, ptr %records, align 8, !dbg !1612, !tbaa !797
  %cmp62 = icmp eq i64 %32, %33, !dbg !1613
  br i1 %cmp62, label %again.backedge, label %if.end76, !dbg !1614

again.backedge:                                   ; preds = %if.then59, %if.else65
  br label %again, !dbg !1462

if.else65:                                        ; preds = %if.then57
  %sub = add i64 %record.1, -1, !dbg !1615
  %arrayidx67 = getelementptr inbounds %struct.index_group, ptr %group.3, i64 0, i32 4, i64 %sub, !dbg !1617
  %34 = load i64, ptr %arrayidx67, align 8, !dbg !1618, !tbaa !797
  %arrayidx70 = getelementptr inbounds %struct.index_group, ptr %group.3, i64 0, i32 4, i64 %record.1, !dbg !1619
  %35 = load i64, ptr %arrayidx70, align 8, !dbg !1620, !tbaa !797
  %cmp72 = icmp eq i64 %34, %35, !dbg !1621
  br i1 %cmp72, label %again.backedge, label %if.end76, !dbg !1622

if.end76:                                         ; preds = %if.then59, %if.else65, %if.end55
  %record.1.lcssa = phi i64 [ 0, %if.then59 ], [ %record.1, %if.else65 ], [ %record.1, %if.end55 ], !dbg !1601
  store ptr %stream.4, ptr %arrayidx2, align 8, !dbg !1623, !tbaa !711
  %arrayidx80 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 2, !dbg !1624
  store ptr %group.3, ptr %arrayidx80, align 8, !dbg !1625, !tbaa !711
  store i64 %record.1.lcssa, ptr %arrayidx4, align 8, !dbg !1626, !tbaa !711
  tail call fastcc void @iter_set_info(ptr noundef %iter), !dbg !1627
  br label %return, !dbg !1628

return:                                           ; preds = %while.cond4.i162, %while.cond4.i162.us, %while.cond4.i132, %if.end76, %entry
  %retval.1 = phi i8 [ 1, %entry ], [ 0, %if.end76 ], [ 1, %while.cond4.i132 ], [ 1, %while.cond4.i162.us ], [ 1, %while.cond4.i162 ], !dbg !1462
  ret i8 %retval.1, !dbg !1629
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @iter_set_info(ptr noundef %iter) unnamed_addr #0 !dbg !1630 {
entry:
  call void @llvm.dbg.value(metadata ptr %iter, metadata !1632, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr undef, metadata !1633, metadata !DIExpression()), !dbg !1640
  %arrayidx2 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 1, !dbg !1641
  %0 = load ptr, ptr %arrayidx2, align 8, !dbg !1642, !tbaa !711
  call void @llvm.dbg.value(metadata ptr %0, metadata !1634, metadata !DIExpression()), !dbg !1640
  %arrayidx4 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 2, !dbg !1643
  %1 = load ptr, ptr %arrayidx4, align 8, !dbg !1644, !tbaa !711
  call void @llvm.dbg.value(metadata ptr %1, metadata !1635, metadata !DIExpression()), !dbg !1640
  %arrayidx6 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 3, !dbg !1645
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !1646, !tbaa !711
  call void @llvm.dbg.value(metadata i64 %2, metadata !1636, metadata !DIExpression()), !dbg !1640
  %cmp = icmp eq ptr %1, null, !dbg !1647
  br i1 %cmp, label %if.then, label %if.else, !dbg !1649

if.then:                                          ; preds = %entry
  %arrayidx8 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 4, !dbg !1650
  store i64 2, ptr %arrayidx8, align 8, !dbg !1652, !tbaa !711
  br label %if.end32, !dbg !1653

if.else:                                          ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, !dbg !1654
  %3 = load ptr, ptr %internal, align 8, !dbg !1655, !tbaa !711
  call void @llvm.dbg.value(metadata ptr %3, metadata !1633, metadata !DIExpression()), !dbg !1640
  %rightmost = getelementptr inbounds %struct.index_tree, ptr %3, i64 0, i32 2, !dbg !1656
  %4 = load ptr, ptr %rightmost, align 8, !dbg !1656, !tbaa !595
  %cmp9.not = icmp eq ptr %4, %0, !dbg !1658
  br i1 %cmp9.not, label %lor.lhs.false, label %if.then13, !dbg !1659

lor.lhs.false:                                    ; preds = %if.else
  %rightmost10 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3, i32 2, !dbg !1660
  %5 = load ptr, ptr %rightmost10, align 8, !dbg !1660, !tbaa !597
  %cmp12.not = icmp eq ptr %5, %1, !dbg !1661
  br i1 %cmp12.not, label %if.else16, label %if.then13, !dbg !1662

if.then13:                                        ; preds = %lor.lhs.false, %if.else
  %arrayidx15 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 4, !dbg !1663
  store i64 0, ptr %arrayidx15, align 8, !dbg !1665, !tbaa !711
  br label %if.end32, !dbg !1666

if.else16:                                        ; preds = %lor.lhs.false
  %leftmost = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3, i32 1, !dbg !1667
  %6 = load ptr, ptr %leftmost, align 8, !dbg !1667, !tbaa !1086
  %cmp19.not = icmp eq ptr %6, %1, !dbg !1669
  %arrayidx28 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 4, !dbg !1670
  br i1 %cmp19.not, label %if.else26, label %if.then20, !dbg !1671

if.then20:                                        ; preds = %if.else16
  store i64 1, ptr %arrayidx28, align 8, !dbg !1672, !tbaa !711
  %parent = getelementptr inbounds %struct.index_tree_node_s, ptr %1, i64 0, i32 2, !dbg !1674
  %7 = load ptr, ptr %parent, align 8, !dbg !1674, !tbaa !272
  store ptr %7, ptr %arrayidx4, align 8, !dbg !1675, !tbaa !711
  br label %if.end32, !dbg !1676

if.else26:                                        ; preds = %if.else16
  store i64 2, ptr %arrayidx28, align 8, !dbg !1677, !tbaa !711
  store ptr null, ptr %arrayidx4, align 8, !dbg !1679, !tbaa !711
  br label %if.end32

if.end32:                                         ; preds = %if.then13, %if.else26, %if.then20, %if.then
  %number = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 1, !dbg !1680
  %8 = load i32, ptr %number, align 8, !dbg !1680, !tbaa !233
  %conv = zext i32 %8 to i64, !dbg !1681
  %number34 = getelementptr inbounds %struct.anon, ptr %iter, i64 0, i32 4, !dbg !1682
  store i64 %conv, ptr %number34, align 8, !dbg !1683, !tbaa !1684
  %record_count = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 4, !dbg !1688
  %9 = load i64, ptr %record_count, align 8, !dbg !1688, !tbaa !631
  %block_count = getelementptr inbounds %struct.anon, ptr %iter, i64 0, i32 5, !dbg !1689
  store i64 %9, ptr %block_count, align 8, !dbg !1690, !tbaa !1691
  %compressed_base = getelementptr inbounds %struct.index_tree_node_s, ptr %0, i64 0, i32 1, !dbg !1692
  %10 = load i64, ptr %compressed_base, align 8, !dbg !1692, !tbaa !599
  %compressed_offset = getelementptr inbounds %struct.anon, ptr %iter, i64 0, i32 6, !dbg !1693
  store i64 %10, ptr %compressed_offset, align 8, !dbg !1694, !tbaa !1695
  %11 = load i64, ptr %0, align 8, !dbg !1696, !tbaa !1164
  %uncompressed_offset = getelementptr inbounds %struct.anon, ptr %iter, i64 0, i32 7, !dbg !1697
  store i64 %11, ptr %uncompressed_offset, align 8, !dbg !1698, !tbaa !1699
  %stream_flags = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 6, !dbg !1700
  %12 = load i32, ptr %stream_flags, align 8, !dbg !1701, !tbaa !245
  %cmp40 = icmp eq i32 %12, -1, !dbg !1702
  %spec.select = select i1 %cmp40, ptr null, ptr %stream_flags, !dbg !1703
  store ptr %spec.select, ptr %iter, align 8, !dbg !1704, !tbaa !1705
  %stream_padding = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 7, !dbg !1706
  %13 = load i64, ptr %stream_padding, align 8, !dbg !1706, !tbaa !248
  %padding = getelementptr inbounds %struct.anon, ptr %iter, i64 0, i32 10, !dbg !1707
  store i64 %13, ptr %padding, align 8, !dbg !1708, !tbaa !1709
  %rightmost46 = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 3, i32 2, !dbg !1710
  %14 = load ptr, ptr %rightmost46, align 8, !dbg !1710, !tbaa !597
  %cmp47 = icmp eq ptr %14, null, !dbg !1711
  br i1 %cmp47, label %if.then49, label %if.else52, !dbg !1712

if.then49:                                        ; preds = %if.end32
  call void @llvm.dbg.value(metadata i64 0, metadata !530, metadata !DIExpression()) #13, !dbg !1713
  call void @llvm.dbg.value(metadata i64 0, metadata !536, metadata !DIExpression()) #13, !dbg !1713
  call void @llvm.dbg.value(metadata i64 0, metadata !539, metadata !DIExpression()) #13, !dbg !1716
  call void @llvm.dbg.value(metadata i64 0, metadata !542, metadata !DIExpression()) #13, !dbg !1716
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef 0) #13, !dbg !1718
  %add.i.i = add i32 %call.i.i, 1, !dbg !1719
  %conv.i.i = zext i32 %add.i.i to i64, !dbg !1720
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !1721
  %add.i2.i = add nuw nsw i64 %conv.i.i, 7, !dbg !1723
  %and.i.i = and i64 %add.i2.i, 8589934588, !dbg !1724
  %add = add nuw nsw i64 %and.i.i, 24, !dbg !1725
  %compressed_size = getelementptr inbounds %struct.anon, ptr %iter, i64 0, i32 8, !dbg !1726
  store i64 %add, ptr %compressed_size, align 8, !dbg !1727, !tbaa !1728
  br label %if.end68, !dbg !1729

if.else52:                                        ; preds = %if.end32
  call void @llvm.dbg.value(metadata ptr %14, metadata !1637, metadata !DIExpression()), !dbg !1730
  %index_list_size = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 5, !dbg !1731
  %15 = load i64, ptr %index_list_size, align 8, !dbg !1731, !tbaa !629
  call void @llvm.dbg.value(metadata i64 %9, metadata !530, metadata !DIExpression()) #13, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %15, metadata !536, metadata !DIExpression()) #13, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %9, metadata !539, metadata !DIExpression()) #13, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %15, metadata !542, metadata !DIExpression()) #13, !dbg !1734
  %call.i.i213 = tail call i32 @lzma_vli_size(i64 noundef %9) #13, !dbg !1736
  %add.i.i214 = add i32 %call.i.i213, 1, !dbg !1737
  %conv.i.i215 = zext i32 %add.i.i214 to i64, !dbg !1738
  call void @llvm.dbg.value(metadata i64 undef, metadata !548, metadata !DIExpression()) #13, !dbg !1739
  %add.i2.i216 = add i64 %15, 31, !dbg !1741
  %16 = add i64 %add.i2.i216, %conv.i.i215, !dbg !1742
  %add57 = and i64 %16, -4, !dbg !1742
  %last = getelementptr inbounds %struct.index_group, ptr %14, i64 0, i32 3, !dbg !1743
  %17 = load i64, ptr %last, align 8, !dbg !1743, !tbaa !603
  %unpadded_sum = getelementptr inbounds %struct.index_group, ptr %14, i64 0, i32 4, i64 %17, i32 1, !dbg !1744
  %18 = load i64, ptr %unpadded_sum, align 8, !dbg !1744, !tbaa !605
  call void @llvm.dbg.value(metadata i64 %18, metadata !548, metadata !DIExpression()), !dbg !1745
  %add.i = add i64 %18, 3, !dbg !1747
  %and.i = and i64 %add.i, -4, !dbg !1748
  %add60 = add i64 %add57, %and.i, !dbg !1749
  %compressed_size62 = getelementptr inbounds %struct.anon, ptr %iter, i64 0, i32 8, !dbg !1750
  store i64 %add60, ptr %compressed_size62, align 8, !dbg !1751, !tbaa !1728
  %19 = load i64, ptr %last, align 8, !dbg !1752, !tbaa !603
  %arrayidx65 = getelementptr inbounds %struct.index_group, ptr %14, i64 0, i32 4, i64 %19, !dbg !1753
  %20 = load i64, ptr %arrayidx65, align 8, !dbg !1754, !tbaa !797
  br label %if.end68

if.end68:                                         ; preds = %if.else52, %if.then49
  %.sink = phi i64 [ 0, %if.then49 ], [ %20, %if.else52 ], !dbg !1755
  %21 = getelementptr inbounds %struct.anon, ptr %iter, i64 0, i32 9, !dbg !1756
  store i64 %.sink, ptr %21, align 8, !dbg !1757
  br i1 %cmp, label %if.end137, label %if.then71, !dbg !1758

if.then71:                                        ; preds = %if.end68
  %number_base = getelementptr inbounds %struct.index_group, ptr %1, i64 0, i32 1, !dbg !1759
  %22 = load i64, ptr %number_base, align 8, !dbg !1759, !tbaa !603
  %add72 = add i64 %22, %2, !dbg !1762
  %block = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 1, !dbg !1763
  %number_in_stream = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 1, i32 3, !dbg !1764
  store i64 %add72, ptr %number_in_stream, align 8, !dbg !1765, !tbaa !1766
  %block_number_base = getelementptr inbounds %struct.index_stream, ptr %0, i64 0, i32 2, !dbg !1767
  %23 = load i64, ptr %block_number_base, align 8, !dbg !1767, !tbaa !1174
  %add75 = add i64 %23, %add72, !dbg !1768
  store i64 %add75, ptr %block, align 8, !dbg !1769, !tbaa !1770
  %cmp77 = icmp eq i64 %2, 0, !dbg !1771
  br i1 %cmp77, label %cond.end87.thread, label %cond.false95, !dbg !1772

cond.end87.thread:                                ; preds = %if.then71
  %compressed_base81 = getelementptr inbounds %struct.index_tree_node_s, ptr %1, i64 0, i32 1, !dbg !1773
  %24 = load i64, ptr %compressed_base81, align 8, !dbg !1773, !tbaa !881
  %compressed_stream_offset223 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 1, i32 4, !dbg !1774
  store i64 %24, ptr %compressed_stream_offset223, align 8, !dbg !1775, !tbaa !1776
  br label %cond.end100, !dbg !1777

cond.false95:                                     ; preds = %if.then71
  %sub = add i64 %2, -1, !dbg !1778
  %unpadded_sum85 = getelementptr inbounds %struct.index_group, ptr %1, i64 0, i32 4, i64 %sub, i32 1, !dbg !1779
  %25 = load i64, ptr %unpadded_sum85, align 8, !dbg !1779, !tbaa !605
  call void @llvm.dbg.value(metadata i64 %25, metadata !548, metadata !DIExpression()), !dbg !1780
  %add.i218 = add i64 %25, 3, !dbg !1782
  %and.i219 = and i64 %add.i218, -4, !dbg !1783
  %compressed_stream_offset = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 1, i32 4, !dbg !1774
  store i64 %and.i219, ptr %compressed_stream_offset, align 8, !dbg !1775, !tbaa !1776
  %arrayidx98 = getelementptr inbounds %struct.index_group, ptr %1, i64 0, i32 4, i64 %sub, !dbg !1784
  br label %cond.end100, !dbg !1777

cond.end100:                                      ; preds = %cond.end87.thread, %cond.false95
  %compressed_stream_offset225 = phi ptr [ %compressed_stream_offset, %cond.false95 ], [ %compressed_stream_offset223, %cond.end87.thread ]
  %cond88224 = phi i64 [ %and.i219, %cond.false95 ], [ %24, %cond.end87.thread ]
  %cond101.in = phi ptr [ %arrayidx98, %cond.false95 ], [ %1, %cond.end87.thread ]
  %cond101 = load i64, ptr %cond101.in, align 8, !dbg !1777, !tbaa !603
  %uncompressed_stream_offset = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 1, i32 5, !dbg !1785
  store i64 %cond101, ptr %uncompressed_stream_offset, align 8, !dbg !1786, !tbaa !1787
  %arrayidx104 = getelementptr inbounds %struct.index_group, ptr %1, i64 0, i32 4, i64 %2, !dbg !1788
  %26 = load i64, ptr %arrayidx104, align 8, !dbg !1789, !tbaa !797
  %sub108 = sub i64 %26, %cond101, !dbg !1790
  %uncompressed_size110 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 1, i32 6, !dbg !1791
  store i64 %sub108, ptr %uncompressed_size110, align 8, !dbg !1792, !tbaa !1793
  %unpadded_sum113 = getelementptr inbounds %struct.index_group, ptr %1, i64 0, i32 4, i64 %2, i32 1, !dbg !1794
  %27 = load i64, ptr %unpadded_sum113, align 8, !dbg !1794, !tbaa !605
  %sub116 = sub i64 %27, %cond88224, !dbg !1795
  %unpadded_size = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 1, i32 7, !dbg !1796
  store i64 %sub116, ptr %unpadded_size, align 8, !dbg !1797, !tbaa !1798
  call void @llvm.dbg.value(metadata i64 %sub116, metadata !548, metadata !DIExpression()), !dbg !1799
  %add.i220 = add i64 %sub116, 3, !dbg !1801
  %and.i221 = and i64 %add.i220, -4, !dbg !1802
  %total_size = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 1, i32 8, !dbg !1803
  store i64 %and.i221, ptr %total_size, align 8, !dbg !1804, !tbaa !1805
  %add124 = add i64 %cond88224, 12, !dbg !1806
  store i64 %add124, ptr %compressed_stream_offset225, align 8, !dbg !1806, !tbaa !1776
  %28 = load i64, ptr %compressed_offset, align 8, !dbg !1807, !tbaa !1695
  %add129 = add i64 %28, %add124, !dbg !1808
  %compressed_file_offset = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 1, i32 1, !dbg !1809
  store i64 %add129, ptr %compressed_file_offset, align 8, !dbg !1810, !tbaa !1811
  %29 = load i64, ptr %uncompressed_offset, align 8, !dbg !1812, !tbaa !1699
  %add135 = add i64 %29, %cond101, !dbg !1813
  %uncompressed_file_offset = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 1, i32 2, !dbg !1814
  store i64 %add135, ptr %uncompressed_file_offset, align 8, !dbg !1815, !tbaa !1816
  br label %if.end137, !dbg !1817

if.end137:                                        ; preds = %cond.end100, %if.end68
  ret void, !dbg !1818
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @lzma_index_iter_locate(ptr noundef %iter, i64 noundef %target) local_unnamed_addr #0 !dbg !1819 {
entry:
  call void @llvm.dbg.value(metadata ptr %iter, metadata !1823, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %target, metadata !1824, metadata !DIExpression()), !dbg !1832
  %internal = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, !dbg !1833
  %0 = load ptr, ptr %internal, align 8, !dbg !1834, !tbaa !711
  call void @llvm.dbg.value(metadata ptr %0, metadata !1825, metadata !DIExpression()), !dbg !1832
  %uncompressed_size = getelementptr inbounds %struct.lzma_index_s, ptr %0, i64 0, i32 1, !dbg !1835
  %1 = load i64, ptr %uncompressed_size, align 8, !dbg !1835, !tbaa !651
  %cmp.not = icmp ugt i64 %1, %target, !dbg !1837
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !1838

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %0, metadata !1839, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %target, metadata !1846, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata ptr null, metadata !1847, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata ptr undef, metadata !1848, metadata !DIExpression()), !dbg !1849
  %node.06.i = load ptr, ptr %0, align 8, !dbg !1849, !tbaa !386
  call void @llvm.dbg.value(metadata ptr %node.06.i, metadata !1848, metadata !DIExpression()), !dbg !1849
  %cmp.not7.i = icmp eq ptr %node.06.i, null, !dbg !1851
  br i1 %cmp.not7.i, label %index_tree_locate.exit, label %while.body.i, !dbg !1852

while.body.i:                                     ; preds = %if.end, %if.end.i
  %node.09.i = phi ptr [ %node.0.i, %if.end.i ], [ %node.06.i, %if.end ]
  %result.08.i = phi ptr [ %result.1.i, %if.end.i ], [ null, %if.end ]
  call void @llvm.dbg.value(metadata ptr %result.08.i, metadata !1847, metadata !DIExpression()), !dbg !1849
  %2 = load i64, ptr %node.09.i, align 8, !dbg !1853, !tbaa !878
  %cmp1.i = icmp ugt i64 %2, %target, !dbg !1856
  br i1 %cmp1.i, label %if.then.i, label %if.else.i, !dbg !1857

if.then.i:                                        ; preds = %while.body.i
  %left.i = getelementptr inbounds %struct.index_tree_node_s, ptr %node.09.i, i64 0, i32 3, !dbg !1858
  call void @llvm.dbg.value(metadata ptr undef, metadata !1848, metadata !DIExpression()), !dbg !1849
  br label %if.end.i, !dbg !1860

if.else.i:                                        ; preds = %while.body.i
  call void @llvm.dbg.value(metadata ptr %node.09.i, metadata !1847, metadata !DIExpression()), !dbg !1849
  %right.i = getelementptr inbounds %struct.index_tree_node_s, ptr %node.09.i, i64 0, i32 4, !dbg !1861
  call void @llvm.dbg.value(metadata ptr undef, metadata !1848, metadata !DIExpression()), !dbg !1849
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %result.1.i = phi ptr [ %result.08.i, %if.then.i ], [ %node.09.i, %if.else.i ], !dbg !1849
  %node.1.in.i = phi ptr [ %left.i, %if.then.i ], [ %right.i, %if.else.i ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !1848, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata ptr %result.1.i, metadata !1847, metadata !DIExpression()), !dbg !1849
  %node.0.i = load ptr, ptr %node.1.in.i, align 8, !dbg !1849, !tbaa !386
  call void @llvm.dbg.value(metadata ptr %node.0.i, metadata !1848, metadata !DIExpression()), !dbg !1849
  %cmp.not.i = icmp eq ptr %node.0.i, null, !dbg !1851
  br i1 %cmp.not.i, label %index_tree_locate.exit, label %while.body.i, !dbg !1852, !llvm.loop !1863

index_tree_locate.exit:                           ; preds = %if.end.i, %if.end
  %result.0.lcssa.i = phi ptr [ null, %if.end ], [ %result.1.i, %if.end.i ], !dbg !1865
  call void @llvm.dbg.value(metadata ptr %result.0.lcssa.i, metadata !1826, metadata !DIExpression()), !dbg !1832
  %3 = load i64, ptr %result.0.lcssa.i, align 8, !dbg !1866, !tbaa !1164
  %sub = sub i64 %target, %3, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1824, metadata !DIExpression()), !dbg !1832
  %groups = getelementptr inbounds %struct.index_stream, ptr %result.0.lcssa.i, i64 0, i32 3, !dbg !1868
  call void @llvm.dbg.value(metadata ptr %groups, metadata !1839, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1846, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata ptr null, metadata !1847, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata ptr undef, metadata !1848, metadata !DIExpression()), !dbg !1869
  %node.06.i36 = load ptr, ptr %groups, align 8, !dbg !1869, !tbaa !386
  call void @llvm.dbg.value(metadata ptr %node.06.i36, metadata !1848, metadata !DIExpression()), !dbg !1869
  %cmp.not7.i37 = icmp eq ptr %node.06.i36, null, !dbg !1871
  br i1 %cmp.not7.i37, label %index_tree_locate.exit52, label %while.body.i41, !dbg !1872

while.body.i41:                                   ; preds = %index_tree_locate.exit, %if.end.i50
  %node.09.i38 = phi ptr [ %node.0.i48, %if.end.i50 ], [ %node.06.i36, %index_tree_locate.exit ]
  %result.08.i39 = phi ptr [ %result.1.i46, %if.end.i50 ], [ null, %index_tree_locate.exit ]
  call void @llvm.dbg.value(metadata ptr %result.08.i39, metadata !1847, metadata !DIExpression()), !dbg !1869
  %4 = load i64, ptr %node.09.i38, align 8, !dbg !1873, !tbaa !878
  %cmp1.i40 = icmp ugt i64 %4, %sub, !dbg !1874
  br i1 %cmp1.i40, label %if.then.i43, label %if.else.i45, !dbg !1875

if.then.i43:                                      ; preds = %while.body.i41
  %left.i42 = getelementptr inbounds %struct.index_tree_node_s, ptr %node.09.i38, i64 0, i32 3, !dbg !1876
  call void @llvm.dbg.value(metadata ptr undef, metadata !1848, metadata !DIExpression()), !dbg !1869
  br label %if.end.i50, !dbg !1877

if.else.i45:                                      ; preds = %while.body.i41
  call void @llvm.dbg.value(metadata ptr %node.09.i38, metadata !1847, metadata !DIExpression()), !dbg !1869
  %right.i44 = getelementptr inbounds %struct.index_tree_node_s, ptr %node.09.i38, i64 0, i32 4, !dbg !1878
  call void @llvm.dbg.value(metadata ptr undef, metadata !1848, metadata !DIExpression()), !dbg !1869
  br label %if.end.i50

if.end.i50:                                       ; preds = %if.else.i45, %if.then.i43
  %result.1.i46 = phi ptr [ %result.08.i39, %if.then.i43 ], [ %node.09.i38, %if.else.i45 ], !dbg !1869
  %node.1.in.i47 = phi ptr [ %left.i42, %if.then.i43 ], [ %right.i44, %if.else.i45 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !1848, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata ptr %result.1.i46, metadata !1847, metadata !DIExpression()), !dbg !1869
  %node.0.i48 = load ptr, ptr %node.1.in.i47, align 8, !dbg !1869, !tbaa !386
  call void @llvm.dbg.value(metadata ptr %node.0.i48, metadata !1848, metadata !DIExpression()), !dbg !1869
  %cmp.not.i49 = icmp eq ptr %node.0.i48, null, !dbg !1871
  br i1 %cmp.not.i49, label %index_tree_locate.exit52, label %while.body.i41, !dbg !1872, !llvm.loop !1879

index_tree_locate.exit52:                         ; preds = %if.end.i50, %index_tree_locate.exit
  %result.0.lcssa.i51 = phi ptr [ null, %index_tree_locate.exit ], [ %result.1.i46, %if.end.i50 ], !dbg !1881
  call void @llvm.dbg.value(metadata ptr %result.0.lcssa.i51, metadata !1827, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 0, metadata !1828, metadata !DIExpression()), !dbg !1832
  %last = getelementptr inbounds %struct.index_group, ptr %result.0.lcssa.i51, i64 0, i32 3, !dbg !1882
  %5 = load i64, ptr %last, align 8, !dbg !1882, !tbaa !603
  call void @llvm.dbg.value(metadata i64 %5, metadata !1829, metadata !DIExpression()), !dbg !1832
  %cmp253.not = icmp eq i64 %5, 0, !dbg !1883
  br i1 %cmp253.not, label %while.end, label %while.body, !dbg !1884

while.body:                                       ; preds = %index_tree_locate.exit52, %while.body
  %right.055 = phi i64 [ %spec.select35, %while.body ], [ %5, %index_tree_locate.exit52 ]
  %left.054 = phi i64 [ %spec.select, %while.body ], [ 0, %index_tree_locate.exit52 ]
  call void @llvm.dbg.value(metadata i64 %right.055, metadata !1829, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %left.054, metadata !1828, metadata !DIExpression()), !dbg !1832
  %sub3 = sub i64 %right.055, %left.054, !dbg !1885
  %div34 = lshr i64 %sub3, 1, !dbg !1886
  %add = add i64 %div34, %left.054, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %add, metadata !1830, metadata !DIExpression()), !dbg !1888
  %arrayidx4 = getelementptr inbounds %struct.index_group, ptr %result.0.lcssa.i51, i64 0, i32 4, i64 %add, !dbg !1889
  %6 = load i64, ptr %arrayidx4, align 8, !dbg !1891, !tbaa !797
  %cmp5.not = icmp ugt i64 %6, %sub, !dbg !1892
  %add7 = add i64 %add, 1
  %spec.select = select i1 %cmp5.not, i64 %left.054, i64 %add7, !dbg !1893
  %spec.select35 = select i1 %cmp5.not, i64 %add, i64 %right.055, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %spec.select35, metadata !1829, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1828, metadata !DIExpression()), !dbg !1832
  %cmp2 = icmp ugt i64 %spec.select35, %spec.select, !dbg !1883
  br i1 %cmp2, label %while.body, label %while.end, !dbg !1884, !llvm.loop !1894

while.end:                                        ; preds = %while.body, %index_tree_locate.exit52
  %left.0.lcssa = phi i64 [ 0, %index_tree_locate.exit52 ], [ %spec.select, %while.body ], !dbg !1832
  %arrayidx10 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 1, !dbg !1896
  store ptr %result.0.lcssa.i, ptr %arrayidx10, align 8, !dbg !1897, !tbaa !711
  %arrayidx12 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 2, !dbg !1898
  store ptr %result.0.lcssa.i51, ptr %arrayidx12, align 8, !dbg !1899, !tbaa !711
  %arrayidx14 = getelementptr inbounds %struct.lzma_index_iter, ptr %iter, i64 0, i32 2, i64 3, !dbg !1900
  store i64 %left.0.lcssa, ptr %arrayidx14, align 8, !dbg !1901, !tbaa !711
  tail call fastcc void @iter_set_info(ptr noundef %iter), !dbg !1902
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i8 [ 0, %while.end ], [ 1, %entry ], !dbg !1832
  ret i8 %retval.0, !dbg !1903
}

; Function Attrs: nounwind uwtable
define internal fastcc void @index_tree_node_end(ptr noundef %node, ptr noundef %allocator, ptr noundef %free_func) unnamed_addr #0 !dbg !1904 {
entry:
  call void @llvm.dbg.value(metadata ptr %node, metadata !1908, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !1909, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata ptr %free_func, metadata !1910, metadata !DIExpression()), !dbg !1911
  %left = getelementptr inbounds %struct.index_tree_node_s, ptr %node, i64 0, i32 3, !dbg !1912
  %0 = load ptr, ptr %left, align 8, !dbg !1912, !tbaa !390
  %cmp.not = icmp eq ptr %0, null, !dbg !1914
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1915

if.then:                                          ; preds = %entry
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %0, ptr noundef %allocator, ptr noundef %free_func), !dbg !1916
  br label %if.end, !dbg !1916

if.end:                                           ; preds = %if.then, %entry
  %right = getelementptr inbounds %struct.index_tree_node_s, ptr %node, i64 0, i32 4, !dbg !1917
  %1 = load ptr, ptr %right, align 8, !dbg !1917, !tbaa !292
  %cmp2.not = icmp eq ptr %1, null, !dbg !1919
  br i1 %cmp2.not, label %if.end5, label %if.then3, !dbg !1920

if.then3:                                         ; preds = %if.end
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %1, ptr noundef %allocator, ptr noundef %free_func), !dbg !1921
  br label %if.end5, !dbg !1921

if.end5:                                          ; preds = %if.then3, %if.end
  %cmp6.not = icmp eq ptr %free_func, null, !dbg !1922
  br i1 %cmp6.not, label %if.end8, label %if.then7, !dbg !1924

if.then7:                                         ; preds = %if.end5
  tail call void %free_func(ptr noundef nonnull %node, ptr noundef %allocator) #13, !dbg !1925, !callees !1926
  br label %if.end8, !dbg !1925

if.end8:                                          ; preds = %if.then7, %if.end5
  tail call void @lzma_free(ptr noundef nonnull %node, ptr noundef %allocator) #13, !dbg !1927
  ret void, !dbg !1928
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !49, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/index.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "a67edd3e4f07ad87d5aa64b659eab087")
!2 = !{!3, !11, !15, !29, !37, !42}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 27, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!8 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!9 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!10 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 44, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!13 = !{!14}
!14 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 57, baseType: !5, size: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!17 = !DIEnumerator(name: "LZMA_OK", value: 0)
!18 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!19 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!20 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!21 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!22 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!23 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!24 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!25 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!26 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!27 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!28 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 956, baseType: !5, size: 32, elements: !31)
!30 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/index.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a67edd3e4f07ad87d5aa64b659eab087")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "ITER_INDEX", value: 0)
!33 = !DIEnumerator(name: "ITER_STREAM", value: 1)
!34 = !DIEnumerator(name: "ITER_GROUP", value: 2)
!35 = !DIEnumerator(name: "ITER_RECORD", value: 3)
!36 = !DIEnumerator(name: "ITER_METHOD", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 966, baseType: !5, size: 32, elements: !38)
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "ITER_METHOD_NORMAL", value: 0)
!40 = !DIEnumerator(name: "ITER_METHOD_NEXT", value: 1)
!41 = !DIEnumerator(name: "ITER_METHOD_LEFTMOST", value: 2)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 226, baseType: !5, size: 32, elements: !44)
!43 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/index.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "923fbd07d3b348bf7a676d089b5c066f")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "LZMA_INDEX_ITER_ANY", value: 0)
!46 = !DIEnumerator(name: "LZMA_INDEX_ITER_STREAM", value: 1)
!47 = !DIEnumerator(name: "LZMA_INDEX_ITER_BLOCK", value: 2)
!48 = !DIEnumerator(name: "LZMA_INDEX_ITER_NONEMPTY_BLOCK", value: 3)
!49 = !{!50, !51, !54, !116, !134, !135, !5}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 46, baseType: !53)
!52 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "index_stream", file: !30, line: 142, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 107, size: 1344, elements: !58)
!58 = !{!59, !75, !78, !79, !87, !88, !89, !115}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !57, file: !30, line: 109, baseType: !60, size: 320)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "index_tree_node", file: !30, line: 29, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "index_tree_node_s", file: !30, line: 30, size: 320, elements: !62)
!62 = !{!63, !70, !71, !73, !74}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_base", scope: !61, file: !30, line: 34, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !65, line: 63, baseType: !66)
!65 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !67, line: 27, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !69, line: 45, baseType: !53)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!70 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_base", scope: !61, file: !30, line: 37, baseType: !64, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !61, file: !30, line: 39, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !61, file: !30, line: 40, baseType: !72, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !61, file: !30, line: 41, baseType: !72, size: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !57, file: !30, line: 112, baseType: !76, size: 32, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !67, line: 26, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !69, line: 42, baseType: !5)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "block_number_base", scope: !57, file: !30, line: 115, baseType: !64, size: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !57, file: !30, line: 122, baseType: !80, size: 256, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "index_tree", file: !30, line: 62, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 46, size: 256, elements: !82)
!82 = !{!83, !84, !85, !86}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !81, file: !30, line: 48, baseType: !72, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "leftmost", scope: !81, file: !30, line: 53, baseType: !72, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "rightmost", scope: !81, file: !30, line: 57, baseType: !72, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !81, file: !30, line: 60, baseType: !76, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "record_count", scope: !57, file: !30, line: 125, baseType: !64, size: 64, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "index_list_size", scope: !57, file: !30, line: 130, baseType: !64, size: 64, offset: 768)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "stream_flags", scope: !57, file: !30, line: 136, baseType: !90, size: 448, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !91, line: 105, baseType: !92)
!91 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/stream_flags.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 33, size: 448, elements: !93)
!93 = !{!94, !95, !96, !98, !100, !101, !102, !103, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !92, file: !91, line: 51, baseType: !76, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !92, file: !91, line: 69, baseType: !64, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !92, file: !91, line: 79, baseType: !97, size: 32, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !4, line: 55, baseType: !3)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !92, file: !91, line: 90, baseType: !99, size: 32, offset: 160)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !12, line: 46, baseType: !11)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !92, file: !91, line: 91, baseType: !99, size: 32, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !92, file: !91, line: 92, baseType: !99, size: 32, offset: 224)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !92, file: !91, line: 93, baseType: !99, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !92, file: !91, line: 94, baseType: !104, size: 8, offset: 288)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !12, line: 29, baseType: !105)
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !92, file: !91, line: 95, baseType: !104, size: 8, offset: 296)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !92, file: !91, line: 96, baseType: !104, size: 8, offset: 304)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !92, file: !91, line: 97, baseType: !104, size: 8, offset: 312)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !92, file: !91, line: 98, baseType: !104, size: 8, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !92, file: !91, line: 99, baseType: !104, size: 8, offset: 328)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !92, file: !91, line: 100, baseType: !104, size: 8, offset: 336)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !92, file: !91, line: 101, baseType: !104, size: 8, offset: 344)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !92, file: !91, line: 102, baseType: !76, size: 32, offset: 352)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !92, file: !91, line: 103, baseType: !76, size: 32, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "stream_padding", scope: !57, file: !30, line: 140, baseType: !64, size: 64, offset: 1280)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "index_group", file: !30, line: 104, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 71, size: 512, elements: !120)
!120 = !{!121, !122, !123, !124, !125}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !30, line: 73, baseType: !60, size: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "number_base", scope: !119, file: !30, line: 76, baseType: !64, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !119, file: !30, line: 79, baseType: !51, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !119, file: !30, line: 82, baseType: !51, size: 64, offset: 448)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "records", scope: !119, file: !30, line: 102, baseType: !126, offset: 512)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, elements: !132)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "index_record", file: !30, line: 68, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 65, size: 128, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_sum", scope: !128, file: !30, line: 66, baseType: !64, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "unpadded_sum", scope: !128, file: !30, line: 67, baseType: !64, size: 64, offset: 64)
!132 = !{!133}
!133 = !DISubrange(count: -1)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!136 = !{i32 7, !"Dwarf Version", i32 5}
!137 = !{i32 2, !"Debug Info Version", i32 3}
!138 = !{i32 1, !"wchar_size", i32 4}
!139 = !{i32 7, !"PIC Level", i32 2}
!140 = !{i32 7, !"PIE Level", i32 2}
!141 = !{i32 7, !"uwtable", i32 2}
!142 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!143 = distinct !DISubprogram(name: "lzma_index_init", scope: !30, file: !30, line: 398, type: !144, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !157}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index", file: !43, line: 37, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_s", file: !30, line: 145, size: 640, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !148, file: !30, line: 149, baseType: !80, size: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !148, file: !30, line: 152, baseType: !64, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !148, file: !30, line: 155, baseType: !64, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "record_count", scope: !148, file: !30, line: 158, baseType: !64, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "index_list_size", scope: !148, file: !30, line: 166, baseType: !64, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !148, file: !30, line: 171, baseType: !51, size: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "checks", scope: !148, file: !30, line: 177, baseType: !76, size: 32, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !12, line: 403, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 341, size: 192, elements: !160)
!160 = !{!161, !165, !169}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !159, file: !12, line: 376, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!50, !50, !51, !51}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !159, file: !12, line: 390, baseType: !166, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !50, !50}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !159, file: !12, line: 401, baseType: !50, size: 64, offset: 128)
!170 = !{!171, !172, !173}
!171 = !DILocalVariable(name: "allocator", arg: 1, scope: !143, file: !30, line: 398, type: !157)
!172 = !DILocalVariable(name: "i", scope: !143, file: !30, line: 400, type: !146)
!173 = !DILocalVariable(name: "s", scope: !143, file: !30, line: 404, type: !134)
!174 = !DILocation(line: 0, scope: !143)
!175 = !DILocalVariable(name: "allocator", arg: 1, scope: !176, file: !30, line: 380, type: !157)
!176 = distinct !DISubprogram(name: "index_init_plain", scope: !30, file: !30, line: 380, type: !144, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !177)
!177 = !{!175, !178}
!178 = !DILocalVariable(name: "i", scope: !176, file: !30, line: 382, type: !146)
!179 = !DILocation(line: 0, scope: !176, inlinedAt: !180)
!180 = distinct !DILocation(line: 400, column: 18, scope: !143)
!181 = !DILocation(line: 382, column: 18, scope: !176, inlinedAt: !180)
!182 = !DILocation(line: 383, column: 8, scope: !183, inlinedAt: !180)
!183 = distinct !DILexicalBlock(scope: !176, file: !30, line: 383, column: 6)
!184 = !DILocation(line: 383, column: 6, scope: !176, inlinedAt: !180)
!185 = !DILocalVariable(name: "tree", arg: 1, scope: !186, file: !30, line: 182, type: !189)
!186 = distinct !DISubprogram(name: "index_tree_init", scope: !30, file: !30, line: 182, type: !187, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!190 = !{!185}
!191 = !DILocation(line: 0, scope: !186, inlinedAt: !192)
!192 = distinct !DILocation(line: 384, column: 3, scope: !193, inlinedAt: !180)
!193 = distinct !DILexicalBlock(scope: !183, file: !30, line: 383, column: 17)
!194 = !DILocation(line: 185, column: 17, scope: !186, inlinedAt: !192)
!195 = !DILocation(line: 385, column: 6, scope: !193, inlinedAt: !180)
!196 = !DILocation(line: 389, column: 6, scope: !193, inlinedAt: !180)
!197 = !DILocation(line: 385, column: 24, scope: !193, inlinedAt: !180)
!198 = !DILocation(line: 389, column: 15, scope: !193, inlinedAt: !180)
!199 = !{!200, !206, i64 64}
!200 = !{!"lzma_index_s", !201, i64 0, !206, i64 32, !206, i64 40, !206, i64 48, !206, i64 56, !206, i64 64, !205, i64 72}
!201 = !{!"", !202, i64 0, !202, i64 8, !202, i64 16, !205, i64 24}
!202 = !{!"any pointer", !203, i64 0}
!203 = !{!"omnipotent char", !204, i64 0}
!204 = !{!"Simple C/C++ TBAA"}
!205 = !{!"int", !203, i64 0}
!206 = !{!"long", !203, i64 0}
!207 = !DILocation(line: 390, column: 6, scope: !193, inlinedAt: !180)
!208 = !DILocation(line: 390, column: 13, scope: !193, inlinedAt: !180)
!209 = !{!200, !205, i64 72}
!210 = !DILocalVariable(name: "compressed_base", arg: 1, scope: !211, file: !30, line: 341, type: !64)
!211 = distinct !DISubprogram(name: "index_stream_init", scope: !30, file: !30, line: 341, type: !212, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{!134, !64, !64, !64, !64, !157}
!214 = !{!210, !215, !216, !217, !218, !219}
!215 = !DILocalVariable(name: "uncompressed_base", arg: 2, scope: !211, file: !30, line: 341, type: !64)
!216 = !DILocalVariable(name: "stream_number", arg: 3, scope: !211, file: !30, line: 342, type: !64)
!217 = !DILocalVariable(name: "block_number_base", arg: 4, scope: !211, file: !30, line: 342, type: !64)
!218 = !DILocalVariable(name: "allocator", arg: 5, scope: !211, file: !30, line: 343, type: !157)
!219 = !DILocalVariable(name: "s", scope: !211, file: !30, line: 345, type: !134)
!220 = !DILocation(line: 0, scope: !211, inlinedAt: !221)
!221 = distinct !DILocation(line: 404, column: 20, scope: !143)
!222 = !DILocation(line: 345, column: 20, scope: !211, inlinedAt: !221)
!223 = !DILocation(line: 346, column: 8, scope: !224, inlinedAt: !221)
!224 = distinct !DILexicalBlock(scope: !211, file: !30, line: 346, column: 6)
!225 = !DILocation(line: 346, column: 6, scope: !211, inlinedAt: !221)
!226 = !DILocation(line: 406, column: 3, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !30, line: 405, column: 17)
!228 = distinct !DILexicalBlock(scope: !143, file: !30, line: 405, column: 6)
!229 = !DILocation(line: 407, column: 3, scope: !227)
!230 = !DILocation(line: 355, column: 5, scope: !211, inlinedAt: !221)
!231 = !DILocation(line: 350, column: 26, scope: !211, inlinedAt: !221)
!232 = !DILocation(line: 355, column: 12, scope: !211, inlinedAt: !221)
!233 = !{!234, !205, i64 40}
!234 = !{!"", !235, i64 0, !205, i64 40, !206, i64 48, !201, i64 56, !206, i64 88, !206, i64 96, !236, i64 104, !206, i64 160}
!235 = !{!"index_tree_node_s", !206, i64 0, !206, i64 8, !202, i64 16, !202, i64 24, !202, i64 32}
!236 = !{!"", !205, i64 0, !206, i64 8, !203, i64 16, !203, i64 20, !203, i64 24, !203, i64 28, !203, i64 32, !203, i64 36, !203, i64 37, !203, i64 38, !203, i64 39, !203, i64 40, !203, i64 41, !203, i64 42, !203, i64 43, !205, i64 44, !205, i64 48}
!237 = !DILocation(line: 356, column: 5, scope: !211, inlinedAt: !221)
!238 = !DILocation(line: 0, scope: !186, inlinedAt: !239)
!239 = distinct !DILocation(line: 358, column: 2, scope: !211, inlinedAt: !221)
!240 = !DILocation(line: 360, column: 5, scope: !211, inlinedAt: !221)
!241 = !DILocation(line: 362, column: 5, scope: !211, inlinedAt: !221)
!242 = !DILocation(line: 360, column: 18, scope: !211, inlinedAt: !221)
!243 = !DILocation(line: 185, column: 17, scope: !186, inlinedAt: !239)
!244 = !DILocation(line: 362, column: 26, scope: !211, inlinedAt: !221)
!245 = !{!234, !205, i64 104}
!246 = !DILocation(line: 363, column: 5, scope: !211, inlinedAt: !221)
!247 = !DILocation(line: 363, column: 20, scope: !211, inlinedAt: !221)
!248 = !{!234, !206, i64 160}
!249 = !DILocation(line: 410, column: 2, scope: !143)
!250 = !DILocation(line: 412, column: 2, scope: !143)
!251 = !DILocation(line: 413, column: 1, scope: !143)
!252 = !DISubprogram(name: "lzma_free", scope: !253, file: !253, line: 215, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !256)
!253 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!254 = !DISubroutineType(types: !255)
!255 = !{null, !50, !157}
!256 = !{}
!257 = distinct !DISubprogram(name: "index_tree_append", scope: !30, file: !30, line: 231, type: !258, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !189, !72}
!260 = !{!261, !262, !263, !264}
!261 = !DILocalVariable(name: "tree", arg: 1, scope: !257, file: !30, line: 231, type: !189)
!262 = !DILocalVariable(name: "node", arg: 2, scope: !257, file: !30, line: 231, type: !72)
!263 = !DILocalVariable(name: "up", scope: !257, file: !30, line: 261, type: !76)
!264 = !DILocalVariable(name: "pivot", scope: !265, file: !30, line: 270, type: !72)
!265 = distinct !DILexicalBlock(scope: !266, file: !30, line: 262, column: 15)
!266 = distinct !DILexicalBlock(scope: !257, file: !30, line: 262, column: 6)
!267 = !DILocation(line: 0, scope: !257)
!268 = !DILocation(line: 233, column: 23, scope: !257)
!269 = !{!201, !202, i64 16}
!270 = !DILocation(line: 233, column: 8, scope: !257)
!271 = !DILocation(line: 233, column: 15, scope: !257)
!272 = !{!235, !202, i64 16}
!273 = !DILocation(line: 234, column: 8, scope: !257)
!274 = !DILocation(line: 237, column: 10, scope: !257)
!275 = !DILocation(line: 235, column: 14, scope: !257)
!276 = !DILocation(line: 237, column: 2, scope: !257)
!277 = !{!201, !205, i64 24}
!278 = !DILocation(line: 240, column: 12, scope: !279)
!279 = distinct !DILexicalBlock(scope: !257, file: !30, line: 240, column: 6)
!280 = !{!201, !202, i64 0}
!281 = !DILocation(line: 240, column: 17, scope: !279)
!282 = !DILocation(line: 240, column: 6, scope: !257)
!283 = !DILocation(line: 241, column: 14, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !30, line: 240, column: 26)
!285 = !DILocation(line: 242, column: 9, scope: !284)
!286 = !DILocation(line: 242, column: 18, scope: !284)
!287 = !{!201, !202, i64 8}
!288 = !DILocation(line: 243, column: 19, scope: !284)
!289 = !DILocation(line: 244, column: 3, scope: !284)
!290 = !DILocation(line: 253, column: 19, scope: !257)
!291 = !DILocation(line: 253, column: 25, scope: !257)
!292 = !{!235, !202, i64 32}
!293 = !DILocation(line: 254, column: 18, scope: !257)
!294 = !DILocalVariable(name: "n", arg: 1, scope: !295, file: !296, line: 364, type: !76)
!295 = distinct !DISubprogram(name: "bsr32", scope: !296, file: !296, line: 364, type: !297, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !299)
!296 = !DIFile(filename: "apps/557.xz_r/src/common/tuklib_integer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!297 = !DISubroutineType(types: !298)
!298 = !{!76, !76}
!299 = !{!294, !300}
!300 = !DILocalVariable(name: "i", scope: !295, file: !296, line: 391, type: !76)
!301 = !DILocation(line: 0, scope: !295, inlinedAt: !302)
!302 = distinct !DILocation(line: 261, column: 46, scope: !257)
!303 = !DILocation(line: 393, column: 33, scope: !304, inlinedAt: !302)
!304 = distinct !DILexicalBlock(scope: !295, file: !296, line: 393, column: 6)
!305 = !DILocation(line: 393, column: 6, scope: !295, inlinedAt: !302)
!306 = !DILocation(line: 398, column: 33, scope: !307, inlinedAt: !302)
!307 = distinct !DILexicalBlock(scope: !295, file: !296, line: 398, column: 6)
!308 = !DILocation(line: 398, column: 6, scope: !295, inlinedAt: !302)
!309 = !DILocation(line: 399, column: 5, scope: !310, inlinedAt: !302)
!310 = distinct !DILexicalBlock(scope: !307, file: !296, line: 398, column: 39)
!311 = !DILocation(line: 400, column: 5, scope: !310, inlinedAt: !302)
!312 = !DILocation(line: 401, column: 2, scope: !310, inlinedAt: !302)
!313 = !DILocation(line: 403, column: 33, scope: !314, inlinedAt: !302)
!314 = distinct !DILexicalBlock(scope: !295, file: !296, line: 403, column: 6)
!315 = !DILocation(line: 403, column: 6, scope: !295, inlinedAt: !302)
!316 = !DILocation(line: 404, column: 5, scope: !317, inlinedAt: !302)
!317 = distinct !DILexicalBlock(scope: !314, file: !296, line: 403, column: 39)
!318 = !DILocation(line: 405, column: 5, scope: !317, inlinedAt: !302)
!319 = !DILocation(line: 406, column: 2, scope: !317, inlinedAt: !302)
!320 = !DILocation(line: 408, column: 33, scope: !321, inlinedAt: !302)
!321 = distinct !DILexicalBlock(scope: !295, file: !296, line: 408, column: 6)
!322 = !DILocation(line: 408, column: 6, scope: !295, inlinedAt: !302)
!323 = !DILocation(line: 409, column: 5, scope: !324, inlinedAt: !302)
!324 = distinct !DILexicalBlock(scope: !321, file: !296, line: 408, column: 39)
!325 = !DILocation(line: 410, column: 5, scope: !324, inlinedAt: !302)
!326 = !DILocation(line: 411, column: 2, scope: !324, inlinedAt: !302)
!327 = !DILocation(line: 413, column: 6, scope: !295, inlinedAt: !302)
!328 = !DILocation(line: 261, column: 43, scope: !257)
!329 = !DILocation(line: 262, column: 9, scope: !266)
!330 = !DILocation(line: 262, column: 6, scope: !257)
!331 = !DILocalVariable(name: "n", arg: 1, scope: !332, file: !296, line: 475, type: !76)
!332 = distinct !DISubprogram(name: "ctz32", scope: !296, file: !296, line: 475, type: !297, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !333)
!333 = !{!331, !334}
!334 = !DILocalVariable(name: "i", scope: !332, file: !296, line: 495, type: !76)
!335 = !DILocation(line: 0, scope: !332, inlinedAt: !336)
!336 = distinct !DILocation(line: 264, column: 8, scope: !265)
!337 = !DILocation(line: 497, column: 9, scope: !338, inlinedAt: !336)
!338 = distinct !DILexicalBlock(scope: !332, file: !296, line: 497, column: 6)
!339 = !DILocation(line: 497, column: 33, scope: !338, inlinedAt: !336)
!340 = !DILocation(line: 497, column: 6, scope: !332, inlinedAt: !336)
!341 = !DILocation(line: 502, column: 9, scope: !342, inlinedAt: !336)
!342 = distinct !DILexicalBlock(scope: !332, file: !296, line: 502, column: 6)
!343 = !DILocation(line: 502, column: 33, scope: !342, inlinedAt: !336)
!344 = !DILocation(line: 502, column: 6, scope: !332, inlinedAt: !336)
!345 = !DILocation(line: 503, column: 5, scope: !346, inlinedAt: !336)
!346 = distinct !DILexicalBlock(scope: !342, file: !296, line: 502, column: 39)
!347 = !DILocation(line: 504, column: 5, scope: !346, inlinedAt: !336)
!348 = !DILocation(line: 505, column: 2, scope: !346, inlinedAt: !336)
!349 = !DILocation(line: 507, column: 9, scope: !350, inlinedAt: !336)
!350 = distinct !DILexicalBlock(scope: !332, file: !296, line: 507, column: 6)
!351 = !DILocation(line: 507, column: 33, scope: !350, inlinedAt: !336)
!352 = !DILocation(line: 507, column: 6, scope: !332, inlinedAt: !336)
!353 = !DILocation(line: 508, column: 5, scope: !354, inlinedAt: !336)
!354 = distinct !DILexicalBlock(scope: !350, file: !296, line: 507, column: 39)
!355 = !DILocation(line: 509, column: 5, scope: !354, inlinedAt: !336)
!356 = !DILocation(line: 510, column: 2, scope: !354, inlinedAt: !336)
!357 = !DILocation(line: 512, column: 9, scope: !358, inlinedAt: !336)
!358 = distinct !DILexicalBlock(scope: !332, file: !296, line: 512, column: 6)
!359 = !DILocation(line: 512, column: 33, scope: !358, inlinedAt: !336)
!360 = !DILocation(line: 512, column: 6, scope: !332, inlinedAt: !336)
!361 = !DILocation(line: 513, column: 5, scope: !362, inlinedAt: !336)
!362 = distinct !DILexicalBlock(scope: !358, file: !296, line: 512, column: 39)
!363 = !DILocation(line: 514, column: 5, scope: !362, inlinedAt: !336)
!364 = !DILocation(line: 515, column: 2, scope: !362, inlinedAt: !336)
!365 = !DILocation(line: 517, column: 9, scope: !366, inlinedAt: !336)
!366 = distinct !DILexicalBlock(scope: !332, file: !296, line: 517, column: 6)
!367 = !DILocation(line: 517, column: 6, scope: !332, inlinedAt: !336)
!368 = !DILocation(line: 264, column: 27, scope: !265)
!369 = !DILocation(line: 267, column: 12, scope: !265)
!370 = !DILocation(line: 267, column: 17, scope: !265)
!371 = !DILocation(line: 267, column: 3, scope: !372)
!372 = distinct !DILexicalBlock(scope: !265, file: !30, line: 265, column: 6)
!373 = distinct !{!373, !374, !375, !376, !377}
!374 = !DILocation(line: 265, column: 3, scope: !265)
!375 = !DILocation(line: 267, column: 20, scope: !265)
!376 = !{!"llvm.loop.mustprogress"}
!377 = !{!"llvm.loop.unroll.disable"}
!378 = !DILocation(line: 266, column: 17, scope: !372)
!379 = !DILocation(line: 270, column: 34, scope: !265)
!380 = !DILocation(line: 0, scope: !265)
!381 = !DILocation(line: 272, column: 13, scope: !382)
!382 = distinct !DILexicalBlock(scope: !265, file: !30, line: 272, column: 7)
!383 = !DILocation(line: 272, column: 20, scope: !382)
!384 = !DILocation(line: 272, column: 7, scope: !265)
!385 = !DILocation(line: 0, scope: !382)
!386 = !{!202, !202, i64 0}
!387 = !DILocation(line: 279, column: 10, scope: !265)
!388 = !DILocation(line: 279, column: 17, scope: !265)
!389 = !DILocation(line: 281, column: 24, scope: !265)
!390 = !{!235, !202, i64 24}
!391 = !DILocation(line: 281, column: 15, scope: !265)
!392 = !DILocation(line: 282, column: 19, scope: !393)
!393 = distinct !DILexicalBlock(scope: !265, file: !30, line: 282, column: 7)
!394 = !DILocation(line: 282, column: 7, scope: !265)
!395 = !DILocation(line: 283, column: 17, scope: !393)
!396 = !DILocation(line: 283, column: 24, scope: !393)
!397 = !DILocation(line: 283, column: 4, scope: !393)
!398 = !DILocation(line: 285, column: 15, scope: !265)
!399 = !DILocation(line: 286, column: 16, scope: !265)
!400 = !DILocation(line: 287, column: 2, scope: !265)
!401 = !DILocation(line: 290, column: 1, scope: !257)
!402 = distinct !DISubprogram(name: "lzma_index_end", scope: !30, file: !30, line: 417, type: !403, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !146, !157}
!405 = !{!406, !407}
!406 = !DILocalVariable(name: "i", arg: 1, scope: !402, file: !30, line: 417, type: !146)
!407 = !DILocalVariable(name: "allocator", arg: 2, scope: !402, file: !30, line: 417, type: !157)
!408 = !DILocation(line: 0, scope: !402)
!409 = !DILocation(line: 421, column: 8, scope: !410)
!410 = distinct !DILexicalBlock(scope: !402, file: !30, line: 421, column: 6)
!411 = !DILocation(line: 421, column: 6, scope: !402)
!412 = !DILocation(line: 422, column: 3, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !30, line: 421, column: 17)
!414 = !DILocalVariable(name: "tree", arg: 1, scope: !415, file: !30, line: 218, type: !189)
!415 = distinct !DISubprogram(name: "index_tree_end", scope: !30, file: !30, line: 218, type: !416, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !419)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !189, !157, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!419 = !{!414, !420, !421}
!420 = !DILocalVariable(name: "allocator", arg: 2, scope: !415, file: !30, line: 218, type: !157)
!421 = !DILocalVariable(name: "free_func", arg: 3, scope: !415, file: !30, line: 219, type: !418)
!422 = !DILocation(line: 0, scope: !415, inlinedAt: !423)
!423 = distinct !DILocation(line: 422, column: 3, scope: !413)
!424 = !DILocation(line: 221, column: 17, scope: !425, inlinedAt: !423)
!425 = distinct !DILexicalBlock(scope: !415, file: !30, line: 221, column: 6)
!426 = !DILocation(line: 221, column: 6, scope: !415, inlinedAt: !423)
!427 = !DILocation(line: 222, column: 3, scope: !425, inlinedAt: !423)
!428 = !DILocation(line: 423, column: 3, scope: !413)
!429 = !DILocation(line: 424, column: 2, scope: !413)
!430 = !DILocation(line: 426, column: 2, scope: !402)
!431 = distinct !DISubprogram(name: "index_stream_end", scope: !30, file: !30, line: 371, type: !254, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !432)
!432 = !{!433, !434, !435}
!433 = !DILocalVariable(name: "node", arg: 1, scope: !431, file: !30, line: 371, type: !50)
!434 = !DILocalVariable(name: "allocator", arg: 2, scope: !431, file: !30, line: 371, type: !157)
!435 = !DILocalVariable(name: "s", scope: !431, file: !30, line: 373, type: !134)
!436 = !DILocation(line: 0, scope: !431)
!437 = !DILocation(line: 374, column: 21, scope: !431)
!438 = !DILocation(line: 374, column: 2, scope: !431)
!439 = !DILocation(line: 0, scope: !415, inlinedAt: !440)
!440 = distinct !DILocation(line: 374, column: 2, scope: !431)
!441 = !DILocation(line: 221, column: 17, scope: !425, inlinedAt: !440)
!442 = !DILocation(line: 221, column: 6, scope: !415, inlinedAt: !440)
!443 = !DILocation(line: 222, column: 3, scope: !425, inlinedAt: !440)
!444 = !DILocation(line: 376, column: 1, scope: !431)
!445 = distinct !DISubprogram(name: "lzma_index_prealloc", scope: !30, file: !30, line: 431, type: !446, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !448)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !146, !64}
!448 = !{!449, !450}
!449 = !DILocalVariable(name: "i", arg: 1, scope: !445, file: !30, line: 431, type: !146)
!450 = !DILocalVariable(name: "records", arg: 2, scope: !445, file: !30, line: 431, type: !64)
!451 = !DILocation(line: 0, scope: !445)
!452 = !DILocation(line: 433, column: 6, scope: !445)
!453 = !DILocation(line: 436, column: 5, scope: !445)
!454 = !DILocation(line: 436, column: 14, scope: !445)
!455 = !DILocation(line: 437, column: 2, scope: !445)
!456 = distinct !DISubprogram(name: "lzma_index_memusage", scope: !30, file: !30, line: 442, type: !457, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{!66, !64, !64}
!459 = !{!460, !461, !462, !464, !465, !466, !468, !470, !471, !472}
!460 = !DILocalVariable(name: "streams", arg: 1, scope: !456, file: !30, line: 442, type: !64)
!461 = !DILocalVariable(name: "blocks", arg: 2, scope: !456, file: !30, line: 442, type: !64)
!462 = !DILocalVariable(name: "alloc_overhead", scope: !456, file: !30, line: 451, type: !463)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!464 = !DILocalVariable(name: "stream_base", scope: !456, file: !30, line: 456, type: !463)
!465 = !DILocalVariable(name: "group_base", scope: !456, file: !30, line: 460, type: !463)
!466 = !DILocalVariable(name: "groups", scope: !456, file: !30, line: 466, type: !467)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!468 = !DILocalVariable(name: "streams_mem", scope: !456, file: !30, line: 470, type: !469)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!470 = !DILocalVariable(name: "groups_mem", scope: !456, file: !30, line: 471, type: !469)
!471 = !DILocalVariable(name: "index_base", scope: !456, file: !30, line: 474, type: !469)
!472 = !DILocalVariable(name: "limit", scope: !456, file: !30, line: 479, type: !469)
!473 = !DILocation(line: 0, scope: !456)
!474 = !DILocation(line: 467, column: 33, scope: !456)
!475 = !DILocation(line: 467, column: 38, scope: !456)
!476 = !DILocation(line: 470, column: 39, scope: !456)
!477 = !DILocation(line: 471, column: 37, scope: !456)
!478 = !DILocation(line: 480, column: 19, scope: !479)
!479 = distinct !DILexicalBlock(scope: !456, file: !30, line: 480, column: 6)
!480 = !DILocation(line: 486, column: 20, scope: !456)
!481 = !DILocation(line: 486, column: 34, scope: !456)
!482 = !DILocation(line: 486, column: 2, scope: !456)
!483 = !DILocation(line: 487, column: 1, scope: !456)
!484 = distinct !DISubprogram(name: "lzma_index_memused", scope: !30, file: !30, line: 491, type: !485, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !489)
!485 = !DISubroutineType(types: !486)
!486 = !{!66, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!489 = !{!490}
!490 = !DILocalVariable(name: "i", arg: 1, scope: !484, file: !30, line: 491, type: !487)
!491 = !DILocation(line: 0, scope: !484)
!492 = !DILocation(line: 493, column: 40, scope: !484)
!493 = !{!200, !205, i64 24}
!494 = !DILocation(line: 493, column: 29, scope: !484)
!495 = !DILocation(line: 493, column: 50, scope: !484)
!496 = !{!200, !206, i64 48}
!497 = !DILocation(line: 0, scope: !456, inlinedAt: !498)
!498 = distinct !DILocation(line: 493, column: 9, scope: !484)
!499 = !DILocation(line: 467, column: 33, scope: !456, inlinedAt: !498)
!500 = !DILocation(line: 467, column: 38, scope: !456, inlinedAt: !498)
!501 = !DILocation(line: 470, column: 39, scope: !456, inlinedAt: !498)
!502 = !DILocation(line: 471, column: 37, scope: !456, inlinedAt: !498)
!503 = !DILocation(line: 480, column: 19, scope: !479, inlinedAt: !498)
!504 = !DILocation(line: 486, column: 20, scope: !456, inlinedAt: !498)
!505 = !DILocation(line: 486, column: 34, scope: !456, inlinedAt: !498)
!506 = !DILocation(line: 486, column: 2, scope: !456, inlinedAt: !498)
!507 = !DILocation(line: 493, column: 2, scope: !484)
!508 = distinct !DISubprogram(name: "lzma_index_block_count", scope: !30, file: !30, line: 498, type: !509, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!64, !487}
!511 = !{!512}
!512 = !DILocalVariable(name: "i", arg: 1, scope: !508, file: !30, line: 498, type: !487)
!513 = !DILocation(line: 0, scope: !508)
!514 = !DILocation(line: 500, column: 12, scope: !508)
!515 = !DILocation(line: 500, column: 2, scope: !508)
!516 = distinct !DISubprogram(name: "lzma_index_stream_count", scope: !30, file: !30, line: 505, type: !509, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !517)
!517 = !{!518}
!518 = !DILocalVariable(name: "i", arg: 1, scope: !516, file: !30, line: 505, type: !487)
!519 = !DILocation(line: 0, scope: !516)
!520 = !DILocation(line: 507, column: 20, scope: !516)
!521 = !DILocation(line: 507, column: 9, scope: !516)
!522 = !DILocation(line: 507, column: 2, scope: !516)
!523 = distinct !DISubprogram(name: "lzma_index_size", scope: !30, file: !30, line: 512, type: !509, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !524)
!524 = !{!525}
!525 = !DILocalVariable(name: "i", arg: 1, scope: !523, file: !30, line: 512, type: !487)
!526 = !DILocation(line: 0, scope: !523)
!527 = !DILocation(line: 514, column: 23, scope: !523)
!528 = !DILocation(line: 514, column: 40, scope: !523)
!529 = !{!200, !206, i64 56}
!530 = !DILocalVariable(name: "count", arg: 1, scope: !531, file: !532, line: 57, type: !64)
!531 = distinct !DISubprogram(name: "index_size", scope: !532, file: !532, line: 57, type: !533, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !535)
!532 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/index.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "8c1da33cfb6445c1ed40367774c91b69")
!533 = !DISubroutineType(types: !534)
!534 = !{!64, !64, !64}
!535 = !{!530, !536}
!536 = !DILocalVariable(name: "index_list_size", arg: 2, scope: !531, file: !532, line: 57, type: !64)
!537 = !DILocation(line: 0, scope: !531, inlinedAt: !538)
!538 = distinct !DILocation(line: 514, column: 9, scope: !523)
!539 = !DILocalVariable(name: "count", arg: 1, scope: !540, file: !532, line: 48, type: !64)
!540 = distinct !DISubprogram(name: "index_size_unpadded", scope: !532, file: !532, line: 48, type: !533, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !541)
!541 = !{!539, !542}
!542 = !DILocalVariable(name: "index_list_size", arg: 2, scope: !540, file: !532, line: 48, type: !64)
!543 = !DILocation(line: 0, scope: !540, inlinedAt: !544)
!544 = distinct !DILocation(line: 59, column: 19, scope: !531, inlinedAt: !538)
!545 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !544)
!546 = !DILocation(line: 51, column: 11, scope: !540, inlinedAt: !544)
!547 = !DILocation(line: 51, column: 9, scope: !540, inlinedAt: !544)
!548 = !DILocalVariable(name: "vli", arg: 1, scope: !549, file: !532, line: 39, type: !64)
!549 = distinct !DISubprogram(name: "vli_ceil4", scope: !532, file: !532, line: 39, type: !550, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!64, !64}
!552 = !{!548}
!553 = !DILocation(line: 0, scope: !549, inlinedAt: !554)
!554 = distinct !DILocation(line: 59, column: 9, scope: !531, inlinedAt: !538)
!555 = !DILocation(line: 51, column: 52, scope: !540, inlinedAt: !544)
!556 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !554)
!557 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !554)
!558 = !DILocation(line: 514, column: 2, scope: !523)
!559 = distinct !DISubprogram(name: "lzma_index_total_size", scope: !30, file: !30, line: 519, type: !509, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !560)
!560 = !{!561}
!561 = !DILocalVariable(name: "i", arg: 1, scope: !559, file: !30, line: 519, type: !487)
!562 = !DILocation(line: 0, scope: !559)
!563 = !DILocation(line: 521, column: 12, scope: !559)
!564 = !{!200, !206, i64 40}
!565 = !DILocation(line: 521, column: 2, scope: !559)
!566 = distinct !DISubprogram(name: "lzma_index_stream_size", scope: !30, file: !30, line: 526, type: !509, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !567)
!567 = !{!568}
!568 = !DILocalVariable(name: "i", arg: 1, scope: !566, file: !30, line: 526, type: !487)
!569 = !DILocation(line: 0, scope: !566)
!570 = !DILocation(line: 529, column: 38, scope: !566)
!571 = !DILocation(line: 530, column: 20, scope: !566)
!572 = !DILocation(line: 530, column: 37, scope: !566)
!573 = !DILocation(line: 0, scope: !531, inlinedAt: !574)
!574 = distinct !DILocation(line: 530, column: 6, scope: !566)
!575 = !DILocation(line: 0, scope: !540, inlinedAt: !576)
!576 = distinct !DILocation(line: 59, column: 19, scope: !531, inlinedAt: !574)
!577 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !576)
!578 = !DILocation(line: 51, column: 11, scope: !540, inlinedAt: !576)
!579 = !DILocation(line: 51, column: 9, scope: !540, inlinedAt: !576)
!580 = !DILocation(line: 0, scope: !549, inlinedAt: !581)
!581 = distinct !DILocation(line: 59, column: 9, scope: !531, inlinedAt: !574)
!582 = !DILocation(line: 51, column: 52, scope: !540, inlinedAt: !576)
!583 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !581)
!584 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !581)
!585 = !DILocation(line: 530, column: 4, scope: !566)
!586 = !DILocation(line: 531, column: 4, scope: !566)
!587 = !DILocation(line: 529, column: 2, scope: !566)
!588 = distinct !DISubprogram(name: "lzma_index_file_size", scope: !30, file: !30, line: 560, type: !509, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !589)
!589 = !{!590, !591, !592}
!590 = !DILocalVariable(name: "i", arg: 1, scope: !588, file: !30, line: 560, type: !487)
!591 = !DILocalVariable(name: "s", scope: !588, file: !30, line: 562, type: !54)
!592 = !DILocalVariable(name: "g", scope: !588, file: !30, line: 563, type: !116)
!593 = !DILocation(line: 0, scope: !588)
!594 = !DILocation(line: 562, column: 60, scope: !588)
!595 = !{!200, !202, i64 16}
!596 = !DILocation(line: 563, column: 57, scope: !588)
!597 = !{!234, !202, i64 72}
!598 = !DILocation(line: 564, column: 33, scope: !588)
!599 = !{!234, !206, i64 8}
!600 = !DILocation(line: 565, column: 6, scope: !588)
!601 = !DILocation(line: 565, column: 4, scope: !588)
!602 = !DILocation(line: 565, column: 34, scope: !588)
!603 = !{!206, !206, i64 0}
!604 = !DILocation(line: 565, column: 40, scope: !588)
!605 = !{!606, !206, i64 8}
!606 = !{!"", !206, i64 0, !206, i64 8}
!607 = !DILocation(line: 567, column: 7, scope: !588)
!608 = !DILocalVariable(name: "compressed_base", arg: 1, scope: !609, file: !30, line: 536, type: !64)
!609 = distinct !DISubprogram(name: "index_file_size", scope: !30, file: !30, line: 536, type: !610, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!64, !64, !64, !64, !64, !64}
!612 = !{!608, !613, !614, !615, !616, !617}
!613 = !DILocalVariable(name: "unpadded_sum", arg: 2, scope: !609, file: !30, line: 536, type: !64)
!614 = !DILocalVariable(name: "record_count", arg: 3, scope: !609, file: !30, line: 537, type: !64)
!615 = !DILocalVariable(name: "index_list_size", arg: 4, scope: !609, file: !30, line: 537, type: !64)
!616 = !DILocalVariable(name: "stream_padding", arg: 5, scope: !609, file: !30, line: 538, type: !64)
!617 = !DILocalVariable(name: "file_size", scope: !609, file: !30, line: 545, type: !64)
!618 = !DILocation(line: 0, scope: !609, inlinedAt: !619)
!619 = distinct !DILocation(line: 564, column: 9, scope: !588)
!620 = !DILocation(line: 545, column: 39, scope: !609, inlinedAt: !619)
!621 = !DILocation(line: 0, scope: !549, inlinedAt: !622)
!622 = distinct !DILocation(line: 546, column: 23, scope: !609, inlinedAt: !619)
!623 = !DILocation(line: 546, column: 4, scope: !609, inlinedAt: !619)
!624 = !DILocation(line: 546, column: 21, scope: !609, inlinedAt: !619)
!625 = !DILocation(line: 547, column: 16, scope: !626, inlinedAt: !619)
!626 = distinct !DILexicalBlock(scope: !609, file: !30, line: 547, column: 6)
!627 = !DILocation(line: 547, column: 6, scope: !609, inlinedAt: !619)
!628 = !DILocation(line: 566, column: 24, scope: !588)
!629 = !{!234, !206, i64 96}
!630 = !DILocation(line: 566, column: 7, scope: !588)
!631 = !{!234, !206, i64 88}
!632 = !DILocation(line: 0, scope: !531, inlinedAt: !633)
!633 = distinct !DILocation(line: 551, column: 15, scope: !609, inlinedAt: !619)
!634 = !DILocation(line: 0, scope: !540, inlinedAt: !635)
!635 = distinct !DILocation(line: 59, column: 19, scope: !531, inlinedAt: !633)
!636 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !635)
!637 = !DILocation(line: 51, column: 11, scope: !540, inlinedAt: !635)
!638 = !DILocation(line: 51, column: 9, scope: !540, inlinedAt: !635)
!639 = !DILocation(line: 0, scope: !549, inlinedAt: !640)
!640 = distinct !DILocation(line: 59, column: 9, scope: !531, inlinedAt: !633)
!641 = !DILocation(line: 51, column: 52, scope: !540, inlinedAt: !635)
!642 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !640)
!643 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !640)
!644 = !DILocation(line: 551, column: 12, scope: !609, inlinedAt: !619)
!645 = !DILocation(line: 564, column: 2, scope: !588)
!646 = distinct !DISubprogram(name: "lzma_index_uncompressed_size", scope: !30, file: !30, line: 572, type: !509, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !647)
!647 = !{!648}
!648 = !DILocalVariable(name: "i", arg: 1, scope: !646, file: !30, line: 572, type: !487)
!649 = !DILocation(line: 0, scope: !646)
!650 = !DILocation(line: 574, column: 12, scope: !646)
!651 = !{!200, !206, i64 32}
!652 = !DILocation(line: 574, column: 2, scope: !646)
!653 = distinct !DISubprogram(name: "lzma_index_checks", scope: !30, file: !30, line: 579, type: !654, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{!76, !487}
!656 = !{!657, !658, !659}
!657 = !DILocalVariable(name: "i", arg: 1, scope: !653, file: !30, line: 579, type: !487)
!658 = !DILocalVariable(name: "checks", scope: !653, file: !30, line: 581, type: !76)
!659 = !DILocalVariable(name: "s", scope: !653, file: !30, line: 584, type: !54)
!660 = !DILocation(line: 0, scope: !653)
!661 = !DILocation(line: 581, column: 23, scope: !653)
!662 = !DILocation(line: 584, column: 60, scope: !653)
!663 = !DILocation(line: 585, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !653, file: !30, line: 585, column: 6)
!665 = !DILocation(line: 585, column: 22, scope: !664)
!666 = !DILocation(line: 585, column: 30, scope: !664)
!667 = !DILocation(line: 585, column: 6, scope: !653)
!668 = !DILocation(line: 586, column: 44, scope: !664)
!669 = !{!234, !203, i64 120}
!670 = !DILocation(line: 586, column: 25, scope: !664)
!671 = !DILocation(line: 586, column: 10, scope: !664)
!672 = !DILocation(line: 586, column: 3, scope: !664)
!673 = !DILocation(line: 588, column: 2, scope: !653)
!674 = distinct !DISubprogram(name: "lzma_index_padding_size", scope: !30, file: !30, line: 593, type: !654, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !675)
!675 = !{!676}
!676 = !DILocalVariable(name: "i", arg: 1, scope: !674, file: !30, line: 593, type: !487)
!677 = !DILocation(line: 0, scope: !674)
!678 = !DILocation(line: 596, column: 7, scope: !674)
!679 = !DILocation(line: 596, column: 24, scope: !674)
!680 = !DILocation(line: 0, scope: !540, inlinedAt: !681)
!681 = distinct !DILocation(line: 595, column: 26, scope: !674)
!682 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !681)
!683 = !DILocation(line: 595, column: 9, scope: !674)
!684 = !DILocation(line: 595, column: 2, scope: !674)
!685 = distinct !DISubprogram(name: "lzma_index_stream_flags", scope: !30, file: !30, line: 601, type: !686, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !691)
!686 = !DISubroutineType(types: !687)
!687 = !{!688, !146, !689}
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !12, line: 237, baseType: !15)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!691 = !{!692, !693, !694, !697}
!692 = !DILocalVariable(name: "i", arg: 1, scope: !685, file: !30, line: 601, type: !146)
!693 = !DILocalVariable(name: "stream_flags", arg: 2, scope: !685, file: !30, line: 601, type: !689)
!694 = !DILocalVariable(name: "ret_", scope: !695, file: !30, line: 607, type: !696)
!695 = distinct !DILexicalBlock(scope: !685, file: !30, line: 607, column: 2)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!697 = !DILocalVariable(name: "s", scope: !685, file: !30, line: 610, type: !134)
!698 = !DILocation(line: 0, scope: !685)
!699 = !DILocation(line: 603, column: 8, scope: !700)
!700 = distinct !DILexicalBlock(scope: !685, file: !30, line: 603, column: 6)
!701 = !DILocation(line: 603, column: 16, scope: !700)
!702 = !DILocation(line: 607, column: 2, scope: !695)
!703 = !DILocation(line: 0, scope: !695)
!704 = !DILocation(line: 607, column: 2, scope: !705)
!705 = distinct !DILexicalBlock(scope: !695, file: !30, line: 607, column: 2)
!706 = !DILocation(line: 610, column: 48, scope: !685)
!707 = !DILocation(line: 611, column: 5, scope: !685)
!708 = !DILocation(line: 611, column: 20, scope: !685)
!709 = !{i64 0, i64 4, !710, i64 8, i64 8, !603, i64 16, i64 4, !711, i64 20, i64 4, !711, i64 24, i64 4, !711, i64 28, i64 4, !711, i64 32, i64 4, !711, i64 36, i64 1, !711, i64 37, i64 1, !711, i64 38, i64 1, !711, i64 39, i64 1, !711, i64 40, i64 1, !711, i64 41, i64 1, !711, i64 42, i64 1, !711, i64 43, i64 1, !711, i64 44, i64 4, !710, i64 48, i64 4, !710}
!710 = !{!205, !205, i64 0}
!711 = !{!203, !203, i64 0}
!712 = !DILocation(line: 614, column: 1, scope: !685)
!713 = !DISubprogram(name: "lzma_stream_flags_compare", scope: !91, file: !91, line: 221, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !256)
!714 = !DISubroutineType(types: !715)
!715 = !{!688, !689, !689}
!716 = distinct !DISubprogram(name: "lzma_index_stream_padding", scope: !30, file: !30, line: 618, type: !717, scopeLine: 619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{!688, !146, !64}
!719 = !{!720, !721, !722, !723}
!720 = !DILocalVariable(name: "i", arg: 1, scope: !716, file: !30, line: 618, type: !146)
!721 = !DILocalVariable(name: "stream_padding", arg: 2, scope: !716, file: !30, line: 618, type: !64)
!722 = !DILocalVariable(name: "s", scope: !716, file: !30, line: 624, type: !134)
!723 = !DILocalVariable(name: "old_stream_padding", scope: !716, file: !30, line: 627, type: !467)
!724 = !DILocation(line: 0, scope: !716)
!725 = !DILocation(line: 620, column: 8, scope: !726)
!726 = distinct !DILexicalBlock(scope: !716, file: !30, line: 620, column: 6)
!727 = !DILocation(line: 620, column: 16, scope: !726)
!728 = !DILocation(line: 624, column: 48, scope: !716)
!729 = !DILocation(line: 627, column: 41, scope: !716)
!730 = !DILocation(line: 628, column: 20, scope: !716)
!731 = !DILocation(line: 0, scope: !588, inlinedAt: !732)
!732 = distinct !DILocation(line: 629, column: 6, scope: !733)
!733 = distinct !DILexicalBlock(scope: !716, file: !30, line: 629, column: 6)
!734 = !DILocation(line: 563, column: 57, scope: !588, inlinedAt: !732)
!735 = !DILocation(line: 564, column: 33, scope: !588, inlinedAt: !732)
!736 = !DILocation(line: 565, column: 6, scope: !588, inlinedAt: !732)
!737 = !DILocation(line: 565, column: 4, scope: !588, inlinedAt: !732)
!738 = !DILocation(line: 565, column: 34, scope: !588, inlinedAt: !732)
!739 = !DILocation(line: 565, column: 40, scope: !588, inlinedAt: !732)
!740 = !DILocation(line: 0, scope: !609, inlinedAt: !741)
!741 = distinct !DILocation(line: 564, column: 9, scope: !588, inlinedAt: !732)
!742 = !DILocation(line: 545, column: 39, scope: !609, inlinedAt: !741)
!743 = !DILocation(line: 0, scope: !549, inlinedAt: !744)
!744 = distinct !DILocation(line: 546, column: 23, scope: !609, inlinedAt: !741)
!745 = !DILocation(line: 546, column: 4, scope: !609, inlinedAt: !741)
!746 = !DILocation(line: 547, column: 16, scope: !626, inlinedAt: !741)
!747 = !DILocation(line: 547, column: 6, scope: !609, inlinedAt: !741)
!748 = !DILocation(line: 566, column: 24, scope: !588, inlinedAt: !732)
!749 = !DILocation(line: 566, column: 7, scope: !588, inlinedAt: !732)
!750 = !DILocation(line: 0, scope: !531, inlinedAt: !751)
!751 = distinct !DILocation(line: 551, column: 15, scope: !609, inlinedAt: !741)
!752 = !DILocation(line: 0, scope: !540, inlinedAt: !753)
!753 = distinct !DILocation(line: 59, column: 19, scope: !531, inlinedAt: !751)
!754 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !753)
!755 = !DILocation(line: 51, column: 11, scope: !540, inlinedAt: !753)
!756 = !DILocation(line: 51, column: 9, scope: !540, inlinedAt: !753)
!757 = !DILocation(line: 0, scope: !549, inlinedAt: !758)
!758 = distinct !DILocation(line: 59, column: 9, scope: !531, inlinedAt: !751)
!759 = !DILocation(line: 51, column: 52, scope: !540, inlinedAt: !753)
!760 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !758)
!761 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !758)
!762 = !DILocation(line: 551, column: 12, scope: !609, inlinedAt: !741)
!763 = !DILocation(line: 629, column: 30, scope: !733)
!764 = !DILocation(line: 629, column: 47, scope: !733)
!765 = !DILocation(line: 636, column: 1, scope: !716)
!766 = distinct !DISubprogram(name: "lzma_index_append", scope: !30, file: !30, line: 640, type: !767, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{!688, !146, !157, !64, !64}
!769 = !{!770, !771, !772, !773, !774, !775, !776, !777, !778}
!770 = !DILocalVariable(name: "i", arg: 1, scope: !766, file: !30, line: 640, type: !146)
!771 = !DILocalVariable(name: "allocator", arg: 2, scope: !766, file: !30, line: 640, type: !157)
!772 = !DILocalVariable(name: "unpadded_size", arg: 3, scope: !766, file: !30, line: 641, type: !64)
!773 = !DILocalVariable(name: "uncompressed_size", arg: 4, scope: !766, file: !30, line: 641, type: !64)
!774 = !DILocalVariable(name: "s", scope: !766, file: !30, line: 649, type: !134)
!775 = !DILocalVariable(name: "g", scope: !766, file: !30, line: 650, type: !135)
!776 = !DILocalVariable(name: "compressed_base", scope: !766, file: !30, line: 652, type: !467)
!777 = !DILocalVariable(name: "uncompressed_base", scope: !766, file: !30, line: 654, type: !467)
!778 = !DILocalVariable(name: "index_list_size_add", scope: !766, file: !30, line: 656, type: !779)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!780 = !DILocation(line: 0, scope: !766)
!781 = !DILocation(line: 644, column: 8, scope: !782)
!782 = distinct !DILexicalBlock(scope: !766, file: !30, line: 644, column: 6)
!783 = !DILocation(line: 644, column: 16, scope: !782)
!784 = !DILocation(line: 649, column: 48, scope: !766)
!785 = !DILocation(line: 650, column: 38, scope: !766)
!786 = !DILocation(line: 650, column: 45, scope: !766)
!787 = !DILocation(line: 652, column: 37, scope: !766)
!788 = !DILocation(line: 652, column: 35, scope: !766)
!789 = !DILocation(line: 653, column: 30, scope: !766)
!790 = !DILocation(line: 653, column: 36, scope: !766)
!791 = !DILocation(line: 0, scope: !549, inlinedAt: !792)
!792 = distinct !DILocation(line: 653, column: 6, scope: !766)
!793 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !792)
!794 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !792)
!795 = !DILocation(line: 655, column: 6, scope: !766)
!796 = !DILocation(line: 655, column: 26, scope: !766)
!797 = !{!606, !206, i64 0}
!798 = !DILocation(line: 654, column: 37, scope: !766)
!799 = !DILocation(line: 656, column: 39, scope: !766)
!800 = !DILocation(line: 657, column: 6, scope: !766)
!801 = !DILocation(line: 657, column: 4, scope: !766)
!802 = !DILocation(line: 660, column: 30, scope: !803)
!803 = distinct !DILexicalBlock(scope: !766, file: !30, line: 660, column: 6)
!804 = !DILocation(line: 661, column: 20, scope: !803)
!805 = !DILocation(line: 661, column: 40, scope: !803)
!806 = !DILocation(line: 662, column: 7, scope: !803)
!807 = !DILocation(line: 662, column: 25, scope: !803)
!808 = !DILocation(line: 663, column: 7, scope: !803)
!809 = !DILocation(line: 0, scope: !609, inlinedAt: !810)
!810 = distinct !DILocation(line: 660, column: 6, scope: !803)
!811 = !DILocation(line: 0, scope: !549, inlinedAt: !812)
!812 = distinct !DILocation(line: 546, column: 23, scope: !609, inlinedAt: !810)
!813 = !DILocation(line: 545, column: 39, scope: !609, inlinedAt: !810)
!814 = !DILocation(line: 546, column: 4, scope: !609, inlinedAt: !810)
!815 = !DILocation(line: 546, column: 21, scope: !609, inlinedAt: !810)
!816 = !DILocation(line: 547, column: 16, scope: !626, inlinedAt: !810)
!817 = !DILocation(line: 547, column: 6, scope: !609, inlinedAt: !810)
!818 = !DILocation(line: 661, column: 53, scope: !803)
!819 = !DILocation(line: 0, scope: !531, inlinedAt: !820)
!820 = distinct !DILocation(line: 551, column: 15, scope: !609, inlinedAt: !810)
!821 = !DILocation(line: 0, scope: !540, inlinedAt: !822)
!822 = distinct !DILocation(line: 59, column: 19, scope: !531, inlinedAt: !820)
!823 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !822)
!824 = !DILocation(line: 51, column: 11, scope: !540, inlinedAt: !822)
!825 = !DILocation(line: 51, column: 9, scope: !540, inlinedAt: !822)
!826 = !DILocation(line: 0, scope: !549, inlinedAt: !827)
!827 = distinct !DILocation(line: 59, column: 9, scope: !531, inlinedAt: !820)
!828 = !DILocation(line: 662, column: 23, scope: !803)
!829 = !DILocation(line: 51, column: 52, scope: !540, inlinedAt: !822)
!830 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !827)
!831 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !827)
!832 = !DILocation(line: 551, column: 12, scope: !609, inlinedAt: !810)
!833 = !DILocation(line: 663, column: 23, scope: !803)
!834 = !DILocation(line: 660, column: 6, scope: !766)
!835 = !DILocation(line: 668, column: 20, scope: !836)
!836 = distinct !DILexicalBlock(scope: !766, file: !30, line: 668, column: 6)
!837 = !DILocation(line: 668, column: 33, scope: !836)
!838 = !DILocation(line: 669, column: 7, scope: !836)
!839 = !DILocation(line: 0, scope: !531, inlinedAt: !840)
!840 = distinct !DILocation(line: 668, column: 6, scope: !836)
!841 = !DILocation(line: 0, scope: !540, inlinedAt: !842)
!842 = distinct !DILocation(line: 59, column: 19, scope: !531, inlinedAt: !840)
!843 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !842)
!844 = !DILocation(line: 51, column: 11, scope: !540, inlinedAt: !842)
!845 = !DILocation(line: 51, column: 9, scope: !540, inlinedAt: !842)
!846 = !DILocation(line: 0, scope: !549, inlinedAt: !847)
!847 = distinct !DILocation(line: 59, column: 9, scope: !531, inlinedAt: !840)
!848 = !DILocation(line: 51, column: 52, scope: !540, inlinedAt: !842)
!849 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !847)
!850 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !847)
!851 = !DILocation(line: 670, column: 4, scope: !836)
!852 = !DILocation(line: 668, column: 6, scope: !766)
!853 = !DILocation(line: 673, column: 16, scope: !854)
!854 = distinct !DILexicalBlock(scope: !766, file: !30, line: 673, column: 6)
!855 = !DILocation(line: 673, column: 22, scope: !854)
!856 = !DILocation(line: 673, column: 27, scope: !854)
!857 = !DILocation(line: 673, column: 36, scope: !854)
!858 = !DILocation(line: 673, column: 31, scope: !854)
!859 = !DILocation(line: 673, column: 6, scope: !766)
!860 = !DILocation(line: 675, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !854, file: !30, line: 673, column: 47)
!862 = !DILocation(line: 676, column: 2, scope: !861)
!863 = !DILocation(line: 679, column: 10, scope: !864)
!864 = distinct !DILexicalBlock(scope: !854, file: !30, line: 676, column: 9)
!865 = !DILocation(line: 679, column: 19, scope: !864)
!866 = !DILocation(line: 679, column: 5, scope: !864)
!867 = !DILocation(line: 678, column: 7, scope: !864)
!868 = !DILocation(line: 681, column: 9, scope: !869)
!869 = distinct !DILexicalBlock(scope: !864, file: !30, line: 681, column: 7)
!870 = !DILocation(line: 681, column: 7, scope: !864)
!871 = !DILocation(line: 684, column: 6, scope: !864)
!872 = !DILocation(line: 684, column: 11, scope: !864)
!873 = !DILocation(line: 685, column: 21, scope: !864)
!874 = !DILocation(line: 685, column: 6, scope: !864)
!875 = !DILocation(line: 685, column: 16, scope: !864)
!876 = !DILocation(line: 689, column: 15, scope: !864)
!877 = !DILocation(line: 692, column: 29, scope: !864)
!878 = !{!235, !206, i64 0}
!879 = !DILocation(line: 693, column: 11, scope: !864)
!880 = !DILocation(line: 693, column: 27, scope: !864)
!881 = !{!235, !206, i64 8}
!882 = !DILocation(line: 694, column: 23, scope: !864)
!883 = !DILocation(line: 694, column: 36, scope: !864)
!884 = !DILocation(line: 694, column: 6, scope: !864)
!885 = !DILocation(line: 694, column: 18, scope: !864)
!886 = !DILocation(line: 697, column: 3, scope: !864)
!887 = !DILocation(line: 701, column: 16, scope: !766)
!888 = !DILocation(line: 702, column: 24, scope: !766)
!889 = !DILocation(line: 701, column: 2, scope: !766)
!890 = !DILocation(line: 702, column: 4, scope: !766)
!891 = !DILocation(line: 703, column: 22, scope: !766)
!892 = !DILocation(line: 704, column: 4, scope: !766)
!893 = !DILocation(line: 707, column: 2, scope: !766)
!894 = !DILocation(line: 708, column: 21, scope: !766)
!895 = !DILocation(line: 0, scope: !549, inlinedAt: !896)
!896 = distinct !DILocation(line: 710, column: 19, scope: !766)
!897 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !896)
!898 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !896)
!899 = !DILocation(line: 710, column: 5, scope: !766)
!900 = !DILocation(line: 710, column: 16, scope: !766)
!901 = !DILocation(line: 711, column: 5, scope: !766)
!902 = !DILocation(line: 711, column: 23, scope: !766)
!903 = !DILocation(line: 712, column: 2, scope: !766)
!904 = !DILocation(line: 713, column: 21, scope: !766)
!905 = !DILocation(line: 715, column: 2, scope: !766)
!906 = !DILocation(line: 716, column: 1, scope: !766)
!907 = !DISubprogram(name: "lzma_vli_size", scope: !65, file: !65, line: 165, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !256)
!908 = !DISubroutineType(types: !909)
!909 = !{!76, !64}
!910 = !DISubprogram(name: "lzma_alloc", scope: !253, file: !253, line: 211, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !256)
!911 = !DISubroutineType(types: !912)
!912 = !{!50, !51, !157}
!913 = distinct !DISubprogram(name: "lzma_index_cat", scope: !30, file: !30, line: 767, type: !914, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !917)
!914 = !DISubroutineType(types: !915)
!915 = !{!688, !916, !916, !157}
!916 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!917 = !{!918, !919, !920, !921, !922, !924, !925, !927, !928, !931}
!918 = !DILocalVariable(name: "dest", arg: 1, scope: !913, file: !30, line: 767, type: !916)
!919 = !DILocalVariable(name: "src", arg: 2, scope: !913, file: !30, line: 767, type: !916)
!920 = !DILocalVariable(name: "allocator", arg: 3, scope: !913, file: !30, line: 768, type: !157)
!921 = !DILocalVariable(name: "dest_file_size", scope: !913, file: !30, line: 770, type: !467)
!922 = !DILocalVariable(name: "dest_size", scope: !923, file: !30, line: 785, type: !467)
!923 = distinct !DILexicalBlock(scope: !913, file: !30, line: 784, column: 2)
!924 = !DILocalVariable(name: "src_size", scope: !923, file: !30, line: 787, type: !467)
!925 = !DILocalVariable(name: "s", scope: !926, file: !30, line: 796, type: !134)
!926 = distinct !DILexicalBlock(scope: !913, file: !30, line: 795, column: 2)
!927 = !DILocalVariable(name: "g", scope: !926, file: !30, line: 797, type: !135)
!928 = !DILocalVariable(name: "newg", scope: !929, file: !30, line: 802, type: !135)
!929 = distinct !DILexicalBlock(scope: !930, file: !30, line: 798, column: 48)
!930 = distinct !DILexicalBlock(scope: !926, file: !30, line: 798, column: 7)
!931 = !DILocalVariable(name: "info", scope: !913, file: !30, line: 837, type: !932)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "index_cat_info", file: !30, line: 738, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 720, size: 320, elements: !935)
!935 = !{!936, !937, !938, !939, !940}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !934, file: !30, line: 722, baseType: !64, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "file_size", scope: !934, file: !30, line: 725, baseType: !64, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "block_number_add", scope: !934, file: !30, line: 728, baseType: !64, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "stream_number_add", scope: !934, file: !30, line: 733, baseType: !76, size: 32, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !934, file: !30, line: 736, baseType: !189, size: 64, offset: 256)
!941 = !DILocation(line: 0, scope: !913)
!942 = !DILocation(line: 0, scope: !588, inlinedAt: !943)
!943 = distinct !DILocation(line: 770, column: 34, scope: !913)
!944 = !DILocation(line: 562, column: 60, scope: !588, inlinedAt: !943)
!945 = !DILocation(line: 563, column: 57, scope: !588, inlinedAt: !943)
!946 = !DILocation(line: 564, column: 33, scope: !588, inlinedAt: !943)
!947 = !DILocation(line: 565, column: 6, scope: !588, inlinedAt: !943)
!948 = !DILocation(line: 565, column: 4, scope: !588, inlinedAt: !943)
!949 = !DILocation(line: 565, column: 34, scope: !588, inlinedAt: !943)
!950 = !DILocation(line: 565, column: 40, scope: !588, inlinedAt: !943)
!951 = !DILocation(line: 567, column: 7, scope: !588, inlinedAt: !943)
!952 = !DILocation(line: 0, scope: !609, inlinedAt: !953)
!953 = distinct !DILocation(line: 564, column: 9, scope: !588, inlinedAt: !943)
!954 = !DILocation(line: 545, column: 39, scope: !609, inlinedAt: !953)
!955 = !DILocation(line: 0, scope: !549, inlinedAt: !956)
!956 = distinct !DILocation(line: 546, column: 23, scope: !609, inlinedAt: !953)
!957 = !DILocation(line: 546, column: 4, scope: !609, inlinedAt: !953)
!958 = !DILocation(line: 546, column: 21, scope: !609, inlinedAt: !953)
!959 = !DILocation(line: 547, column: 16, scope: !626, inlinedAt: !953)
!960 = !DILocation(line: 547, column: 6, scope: !609, inlinedAt: !953)
!961 = !DILocation(line: 566, column: 24, scope: !588, inlinedAt: !943)
!962 = !DILocation(line: 566, column: 7, scope: !588, inlinedAt: !943)
!963 = !DILocation(line: 0, scope: !531, inlinedAt: !964)
!964 = distinct !DILocation(line: 551, column: 15, scope: !609, inlinedAt: !953)
!965 = !DILocation(line: 0, scope: !540, inlinedAt: !966)
!966 = distinct !DILocation(line: 59, column: 19, scope: !531, inlinedAt: !964)
!967 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !966)
!968 = !DILocation(line: 51, column: 11, scope: !540, inlinedAt: !966)
!969 = !DILocation(line: 51, column: 9, scope: !540, inlinedAt: !966)
!970 = !DILocation(line: 0, scope: !549, inlinedAt: !971)
!971 = distinct !DILocation(line: 59, column: 9, scope: !531, inlinedAt: !964)
!972 = !DILocation(line: 51, column: 52, scope: !540, inlinedAt: !966)
!973 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !971)
!974 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !971)
!975 = !DILocation(line: 551, column: 12, scope: !609, inlinedAt: !953)
!976 = !DILocation(line: 0, scope: !588, inlinedAt: !977)
!977 = distinct !DILocation(line: 773, column: 23, scope: !978)
!978 = distinct !DILexicalBlock(scope: !913, file: !30, line: 773, column: 6)
!979 = !DILocation(line: 562, column: 60, scope: !588, inlinedAt: !977)
!980 = !DILocation(line: 563, column: 57, scope: !588, inlinedAt: !977)
!981 = !DILocation(line: 564, column: 33, scope: !588, inlinedAt: !977)
!982 = !DILocation(line: 565, column: 6, scope: !588, inlinedAt: !977)
!983 = !DILocation(line: 565, column: 4, scope: !588, inlinedAt: !977)
!984 = !DILocation(line: 565, column: 34, scope: !588, inlinedAt: !977)
!985 = !DILocation(line: 565, column: 40, scope: !588, inlinedAt: !977)
!986 = !DILocation(line: 567, column: 7, scope: !588, inlinedAt: !977)
!987 = !DILocation(line: 0, scope: !609, inlinedAt: !988)
!988 = distinct !DILocation(line: 564, column: 9, scope: !588, inlinedAt: !977)
!989 = !DILocation(line: 545, column: 39, scope: !609, inlinedAt: !988)
!990 = !DILocation(line: 0, scope: !549, inlinedAt: !991)
!991 = distinct !DILocation(line: 546, column: 23, scope: !609, inlinedAt: !988)
!992 = !DILocation(line: 546, column: 4, scope: !609, inlinedAt: !988)
!993 = !DILocation(line: 546, column: 21, scope: !609, inlinedAt: !988)
!994 = !DILocation(line: 547, column: 16, scope: !626, inlinedAt: !988)
!995 = !DILocation(line: 547, column: 6, scope: !609, inlinedAt: !988)
!996 = !DILocation(line: 566, column: 24, scope: !588, inlinedAt: !977)
!997 = !DILocation(line: 566, column: 7, scope: !588, inlinedAt: !977)
!998 = !DILocation(line: 0, scope: !531, inlinedAt: !999)
!999 = distinct !DILocation(line: 551, column: 15, scope: !609, inlinedAt: !988)
!1000 = !DILocation(line: 0, scope: !540, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 59, column: 19, scope: !531, inlinedAt: !999)
!1002 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !1001)
!1003 = !DILocation(line: 51, column: 11, scope: !540, inlinedAt: !1001)
!1004 = !DILocation(line: 51, column: 9, scope: !540, inlinedAt: !1001)
!1005 = !DILocation(line: 0, scope: !549, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 59, column: 9, scope: !531, inlinedAt: !999)
!1007 = !DILocation(line: 51, column: 52, scope: !540, inlinedAt: !1001)
!1008 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !1006)
!1009 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !1006)
!1010 = !DILocation(line: 551, column: 12, scope: !609, inlinedAt: !988)
!1011 = !DILocation(line: 773, column: 21, scope: !978)
!1012 = !DILocation(line: 773, column: 49, scope: !978)
!1013 = !DILocation(line: 774, column: 4, scope: !978)
!1014 = !DILocation(line: 774, column: 13, scope: !978)
!1015 = !DILocation(line: 774, column: 38, scope: !978)
!1016 = !DILocation(line: 774, column: 31, scope: !978)
!1017 = !DILocation(line: 775, column: 5, scope: !978)
!1018 = !DILocation(line: 773, column: 6, scope: !913)
!1019 = !DILocation(line: 786, column: 11, scope: !923)
!1020 = !DILocation(line: 786, column: 31, scope: !923)
!1021 = !DILocation(line: 0, scope: !540, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 785, column: 30, scope: !923)
!1023 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !1022)
!1024 = !DILocation(line: 51, column: 11, scope: !540, inlinedAt: !1022)
!1025 = !DILocation(line: 51, column: 9, scope: !540, inlinedAt: !1022)
!1026 = !DILocation(line: 0, scope: !923)
!1027 = !DILocation(line: 788, column: 10, scope: !923)
!1028 = !DILocation(line: 788, column: 29, scope: !923)
!1029 = !DILocation(line: 0, scope: !540, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 787, column: 29, scope: !923)
!1031 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !1030)
!1032 = !DILocation(line: 51, column: 11, scope: !540, inlinedAt: !1030)
!1033 = !DILocation(line: 51, column: 9, scope: !540, inlinedAt: !1030)
!1034 = !DILocation(line: 0, scope: !549, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 789, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !923, file: !30, line: 789, column: 7)
!1037 = !DILocation(line: 51, column: 34, scope: !540, inlinedAt: !1022)
!1038 = !DILocation(line: 51, column: 52, scope: !540, inlinedAt: !1022)
!1039 = !DILocation(line: 789, column: 27, scope: !1036)
!1040 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !1035)
!1041 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !1035)
!1042 = !DILocation(line: 789, column: 39, scope: !1036)
!1043 = !DILocation(line: 0, scope: !926)
!1044 = !DILocation(line: 797, column: 39, scope: !926)
!1045 = !DILocation(line: 797, column: 46, scope: !926)
!1046 = !DILocation(line: 798, column: 9, scope: !930)
!1047 = !DILocation(line: 798, column: 17, scope: !930)
!1048 = !DILocation(line: 798, column: 23, scope: !930)
!1049 = !DILocation(line: 798, column: 28, scope: !930)
!1050 = !DILocation(line: 798, column: 37, scope: !930)
!1051 = !DILocation(line: 798, column: 32, scope: !930)
!1052 = !DILocation(line: 798, column: 7, scope: !926)
!1053 = !DILocation(line: 804, column: 6, scope: !929)
!1054 = !DILocation(line: 803, column: 6, scope: !929)
!1055 = !DILocation(line: 802, column: 24, scope: !929)
!1056 = !DILocation(line: 0, scope: !929)
!1057 = !DILocation(line: 806, column: 13, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !929, file: !30, line: 806, column: 8)
!1059 = !DILocation(line: 806, column: 8, scope: !929)
!1060 = !DILocation(line: 809, column: 20, scope: !929)
!1061 = !{i64 0, i64 8, !603, i64 8, i64 8, !603, i64 16, i64 8, !386, i64 24, i64 8, !386, i64 32, i64 8, !386}
!1062 = !DILocation(line: 810, column: 25, scope: !929)
!1063 = !DILocation(line: 810, column: 30, scope: !929)
!1064 = !DILocation(line: 810, column: 10, scope: !929)
!1065 = !DILocation(line: 810, column: 20, scope: !929)
!1066 = !DILocation(line: 811, column: 20, scope: !929)
!1067 = !DILocation(line: 811, column: 10, scope: !929)
!1068 = !DILocation(line: 811, column: 15, scope: !929)
!1069 = !DILocation(line: 812, column: 27, scope: !929)
!1070 = !DILocation(line: 812, column: 10, scope: !929)
!1071 = !DILocation(line: 812, column: 22, scope: !929)
!1072 = !DILocation(line: 814, column: 17, scope: !929)
!1073 = !DILocation(line: 814, column: 29, scope: !929)
!1074 = !DILocation(line: 815, column: 6, scope: !929)
!1075 = !DILocation(line: 814, column: 4, scope: !929)
!1076 = !DILocation(line: 817, column: 16, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !929, file: !30, line: 817, column: 8)
!1078 = !DILocation(line: 817, column: 23, scope: !1077)
!1079 = !DILocation(line: 817, column: 8, scope: !929)
!1080 = !DILocation(line: 819, column: 21, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !30, line: 817, column: 32)
!1082 = !DILocation(line: 819, column: 27, scope: !1081)
!1083 = !DILocation(line: 820, column: 4, scope: !1081)
!1084 = !DILocation(line: 822, column: 18, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !929, file: !30, line: 822, column: 8)
!1086 = !{!234, !202, i64 64}
!1087 = !DILocation(line: 822, column: 27, scope: !1085)
!1088 = !DILocation(line: 822, column: 8, scope: !929)
!1089 = !DILocation(line: 824, column: 24, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !30, line: 822, column: 40)
!1091 = !DILocation(line: 825, column: 20, scope: !1090)
!1092 = !{!234, !202, i64 56}
!1093 = !DILocation(line: 826, column: 4, scope: !1090)
!1094 = !DILocation(line: 828, column: 18, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !929, file: !30, line: 828, column: 8)
!1096 = !DILocation(line: 828, column: 28, scope: !1095)
!1097 = !DILocation(line: 828, column: 8, scope: !929)
!1098 = !DILocation(line: 829, column: 25, scope: !1095)
!1099 = !DILocation(line: 829, column: 5, scope: !1095)
!1100 = !DILocation(line: 831, column: 4, scope: !929)
!1101 = !DILocation(line: 838, column: 30, scope: !913)
!1102 = !DILocation(line: 841, column: 29, scope: !913)
!1103 = !DILocation(line: 837, column: 2, scope: !913)
!1104 = !DILocation(line: 837, column: 23, scope: !913)
!1105 = !DILocation(line: 837, column: 30, scope: !913)
!1106 = !{!1107, !206, i64 0}
!1107 = !{!"", !206, i64 0, !206, i64 8, !206, i64 16, !205, i64 24, !202, i64 32}
!1108 = !{!1107, !206, i64 8}
!1109 = !{!1107, !206, i64 16}
!1110 = !DILocation(line: 840, column: 38, scope: !913)
!1111 = !{!1107, !205, i64 24}
!1112 = !{!1107, !202, i64 32}
!1113 = !DILocation(line: 844, column: 56, scope: !913)
!1114 = !{!200, !202, i64 0}
!1115 = !DILocation(line: 844, column: 2, scope: !913)
!1116 = !DILocation(line: 847, column: 34, scope: !913)
!1117 = !DILocation(line: 847, column: 26, scope: !913)
!1118 = !DILocation(line: 848, column: 27, scope: !913)
!1119 = !DILocation(line: 848, column: 8, scope: !913)
!1120 = !DILocation(line: 848, column: 19, scope: !913)
!1121 = !DILocation(line: 849, column: 29, scope: !913)
!1122 = !DILocation(line: 849, column: 21, scope: !913)
!1123 = !DILocation(line: 850, column: 32, scope: !913)
!1124 = !DILocation(line: 850, column: 24, scope: !913)
!1125 = !DILocation(line: 0, scope: !653, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 851, column: 17, scope: !913)
!1127 = !DILocation(line: 581, column: 23, scope: !653, inlinedAt: !1126)
!1128 = !DILocation(line: 584, column: 60, scope: !653, inlinedAt: !1126)
!1129 = !DILocation(line: 585, column: 9, scope: !664, inlinedAt: !1126)
!1130 = !DILocation(line: 585, column: 22, scope: !664, inlinedAt: !1126)
!1131 = !DILocation(line: 585, column: 30, scope: !664, inlinedAt: !1126)
!1132 = !DILocation(line: 585, column: 6, scope: !653, inlinedAt: !1126)
!1133 = !DILocation(line: 586, column: 44, scope: !664, inlinedAt: !1126)
!1134 = !DILocation(line: 586, column: 25, scope: !664, inlinedAt: !1126)
!1135 = !DILocation(line: 586, column: 10, scope: !664, inlinedAt: !1126)
!1136 = !DILocation(line: 586, column: 3, scope: !664, inlinedAt: !1126)
!1137 = !DILocation(line: 851, column: 48, scope: !913)
!1138 = !DILocation(line: 851, column: 41, scope: !913)
!1139 = !DILocation(line: 851, column: 15, scope: !913)
!1140 = !DILocation(line: 854, column: 2, scope: !913)
!1141 = !DILocation(line: 857, column: 1, scope: !913)
!1142 = distinct !DISubprogram(name: "index_cat_helper", scope: !30, file: !30, line: 745, type: !1143, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1146)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !1145, !134}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!1146 = !{!1147, !1148, !1149, !1150}
!1147 = !DILocalVariable(name: "info", arg: 1, scope: !1142, file: !30, line: 745, type: !1145)
!1148 = !DILocalVariable(name: "this", arg: 2, scope: !1142, file: !30, line: 745, type: !134)
!1149 = !DILocalVariable(name: "left", scope: !1142, file: !30, line: 747, type: !134)
!1150 = !DILocalVariable(name: "right", scope: !1142, file: !30, line: 748, type: !134)
!1151 = !DILocation(line: 760, column: 3, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1142, file: !30, line: 759, column: 6)
!1153 = !DILocation(line: 0, scope: !1142)
!1154 = !DILocation(line: 747, column: 51, scope: !1142)
!1155 = !{!234, !202, i64 24}
!1156 = !DILocation(line: 748, column: 52, scope: !1142)
!1157 = !{!234, !202, i64 32}
!1158 = !DILocation(line: 750, column: 11, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1142, file: !30, line: 750, column: 6)
!1160 = !DILocation(line: 750, column: 6, scope: !1142)
!1161 = !DILocation(line: 751, column: 3, scope: !1159)
!1162 = !DILocation(line: 753, column: 40, scope: !1142)
!1163 = !DILocation(line: 753, column: 31, scope: !1142)
!1164 = !{!234, !206, i64 0}
!1165 = !DILocation(line: 754, column: 38, scope: !1142)
!1166 = !DILocation(line: 754, column: 13, scope: !1142)
!1167 = !DILocation(line: 754, column: 29, scope: !1142)
!1168 = !DILocation(line: 755, column: 24, scope: !1142)
!1169 = !DILocation(line: 755, column: 8, scope: !1142)
!1170 = !DILocation(line: 755, column: 15, scope: !1142)
!1171 = !DILocation(line: 756, column: 35, scope: !1142)
!1172 = !DILocation(line: 756, column: 8, scope: !1142)
!1173 = !DILocation(line: 756, column: 26, scope: !1142)
!1174 = !{!234, !206, i64 48}
!1175 = !DILocation(line: 757, column: 26, scope: !1142)
!1176 = !DILocation(line: 757, column: 2, scope: !1142)
!1177 = !DILocation(line: 759, column: 12, scope: !1152)
!1178 = !DILocation(line: 759, column: 6, scope: !1142)
!1179 = !DILocation(line: 763, column: 1, scope: !1142)
!1180 = distinct !DISubprogram(name: "lzma_index_dup", scope: !30, file: !30, line: 922, type: !1181, scopeLine: 923, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1183)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!146, !487, !157}
!1183 = !{!1184, !1185, !1186, !1187, !1188}
!1184 = !DILocalVariable(name: "src", arg: 1, scope: !1180, file: !30, line: 922, type: !487)
!1185 = !DILocalVariable(name: "allocator", arg: 2, scope: !1180, file: !30, line: 922, type: !157)
!1186 = !DILocalVariable(name: "dest", scope: !1180, file: !30, line: 925, type: !146)
!1187 = !DILocalVariable(name: "srcstream", scope: !1180, file: !30, line: 936, type: !54)
!1188 = !DILocalVariable(name: "deststream", scope: !1189, file: !30, line: 939, type: !134)
!1189 = distinct !DILexicalBlock(scope: !1180, file: !30, line: 938, column: 5)
!1190 = !DILocation(line: 0, scope: !1180)
!1191 = !DILocation(line: 0, scope: !176, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 925, column: 21, scope: !1180)
!1193 = !DILocation(line: 382, column: 18, scope: !176, inlinedAt: !1192)
!1194 = !DILocation(line: 383, column: 8, scope: !183, inlinedAt: !1192)
!1195 = !DILocation(line: 383, column: 6, scope: !176, inlinedAt: !1192)
!1196 = !DILocation(line: 0, scope: !186, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 384, column: 3, scope: !193, inlinedAt: !1192)
!1198 = !DILocation(line: 185, column: 17, scope: !186, inlinedAt: !1197)
!1199 = !DILocation(line: 385, column: 6, scope: !193, inlinedAt: !1192)
!1200 = !DILocation(line: 389, column: 6, scope: !193, inlinedAt: !1192)
!1201 = !DILocation(line: 385, column: 24, scope: !193, inlinedAt: !1192)
!1202 = !DILocation(line: 389, column: 15, scope: !193, inlinedAt: !1192)
!1203 = !DILocation(line: 390, column: 6, scope: !193, inlinedAt: !1192)
!1204 = !DILocation(line: 390, column: 13, scope: !193, inlinedAt: !1192)
!1205 = !DILocation(line: 930, column: 33, scope: !1180)
!1206 = !DILocation(line: 930, column: 26, scope: !1180)
!1207 = !DILocation(line: 931, column: 26, scope: !1180)
!1208 = !DILocation(line: 931, column: 8, scope: !1180)
!1209 = !DILocation(line: 931, column: 19, scope: !1180)
!1210 = !DILocation(line: 932, column: 28, scope: !1180)
!1211 = !DILocation(line: 932, column: 8, scope: !1180)
!1212 = !DILocation(line: 932, column: 21, scope: !1180)
!1213 = !DILocation(line: 933, column: 31, scope: !1180)
!1214 = !DILocation(line: 933, column: 8, scope: !1180)
!1215 = !DILocation(line: 933, column: 24, scope: !1180)
!1216 = !DILocation(line: 937, column: 42, scope: !1180)
!1217 = !{!200, !202, i64 8}
!1218 = !DILocalVariable(name: "src", arg: 1, scope: !1219, file: !30, line: 862, type: !54)
!1219 = distinct !DISubprogram(name: "index_dup_stream", scope: !30, file: !30, line: 862, type: !1220, scopeLine: 863, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!134, !54, !157}
!1222 = !{!1218, !1223, !1224, !1225, !1226, !1227}
!1223 = !DILocalVariable(name: "allocator", arg: 2, scope: !1219, file: !30, line: 862, type: !157)
!1224 = !DILocalVariable(name: "dest", scope: !1219, file: !30, line: 869, type: !134)
!1225 = !DILocalVariable(name: "destg", scope: !1219, file: !30, line: 887, type: !135)
!1226 = !DILocalVariable(name: "srcg", scope: !1219, file: !30, line: 903, type: !116)
!1227 = !DILocalVariable(name: "i", scope: !1219, file: !30, line: 904, type: !51)
!1228 = !DILocation(line: 0, scope: !1219, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 939, column: 30, scope: !1189)
!1230 = !DILocation(line: 865, column: 11, scope: !1231, inlinedAt: !1229)
!1231 = distinct !DILexicalBlock(scope: !1219, file: !30, line: 865, column: 6)
!1232 = !DILocation(line: 865, column: 24, scope: !1231, inlinedAt: !1229)
!1233 = !DILocation(line: 865, column: 6, scope: !1219, inlinedAt: !1229)
!1234 = !DILocation(line: 869, column: 51, scope: !1219, inlinedAt: !1229)
!1235 = !DILocation(line: 870, column: 14, scope: !1219, inlinedAt: !1229)
!1236 = !DILocation(line: 870, column: 38, scope: !1219, inlinedAt: !1229)
!1237 = !DILocation(line: 871, column: 9, scope: !1219, inlinedAt: !1229)
!1238 = !DILocation(line: 0, scope: !211, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 869, column: 23, scope: !1219, inlinedAt: !1229)
!1240 = !DILocation(line: 345, column: 20, scope: !211, inlinedAt: !1239)
!1241 = !DILocation(line: 346, column: 8, scope: !224, inlinedAt: !1239)
!1242 = !DILocation(line: 346, column: 6, scope: !211, inlinedAt: !1239)
!1243 = !DILocation(line: 349, column: 28, scope: !211, inlinedAt: !1239)
!1244 = !DILocation(line: 350, column: 10, scope: !211, inlinedAt: !1239)
!1245 = !DILocation(line: 350, column: 26, scope: !211, inlinedAt: !1239)
!1246 = !DILocation(line: 351, column: 10, scope: !211, inlinedAt: !1239)
!1247 = !DILocation(line: 355, column: 5, scope: !211, inlinedAt: !1239)
!1248 = !DILocation(line: 352, column: 15, scope: !211, inlinedAt: !1239)
!1249 = !DILocation(line: 355, column: 12, scope: !211, inlinedAt: !1239)
!1250 = !DILocation(line: 356, column: 5, scope: !211, inlinedAt: !1239)
!1251 = !DILocation(line: 356, column: 23, scope: !211, inlinedAt: !1239)
!1252 = !DILocation(line: 358, column: 22, scope: !211, inlinedAt: !1239)
!1253 = !DILocation(line: 0, scope: !186, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 358, column: 2, scope: !211, inlinedAt: !1239)
!1255 = !DILocation(line: 185, column: 17, scope: !186, inlinedAt: !1254)
!1256 = !DILocation(line: 360, column: 5, scope: !211, inlinedAt: !1239)
!1257 = !DILocation(line: 362, column: 5, scope: !211, inlinedAt: !1239)
!1258 = !DILocation(line: 360, column: 18, scope: !211, inlinedAt: !1239)
!1259 = !DILocation(line: 362, column: 26, scope: !211, inlinedAt: !1239)
!1260 = !DILocation(line: 363, column: 5, scope: !211, inlinedAt: !1239)
!1261 = !DILocation(line: 363, column: 20, scope: !211, inlinedAt: !1239)
!1262 = !DILocation(line: 875, column: 34, scope: !1263, inlinedAt: !1229)
!1263 = distinct !DILexicalBlock(scope: !1219, file: !30, line: 875, column: 6)
!1264 = !DILocation(line: 875, column: 43, scope: !1263, inlinedAt: !1229)
!1265 = !DILocation(line: 875, column: 6, scope: !1219, inlinedAt: !1229)
!1266 = !DILocation(line: 879, column: 28, scope: !1219, inlinedAt: !1229)
!1267 = !DILocation(line: 879, column: 21, scope: !1219, inlinedAt: !1229)
!1268 = !DILocation(line: 880, column: 31, scope: !1219, inlinedAt: !1229)
!1269 = !DILocation(line: 880, column: 8, scope: !1219, inlinedAt: !1229)
!1270 = !DILocation(line: 880, column: 24, scope: !1219, inlinedAt: !1229)
!1271 = !DILocation(line: 881, column: 28, scope: !1219, inlinedAt: !1229)
!1272 = !DILocation(line: 882, column: 30, scope: !1219, inlinedAt: !1229)
!1273 = !DILocation(line: 882, column: 23, scope: !1219, inlinedAt: !1229)
!1274 = !DILocation(line: 888, column: 11, scope: !1219, inlinedAt: !1229)
!1275 = !DILocation(line: 888, column: 24, scope: !1219, inlinedAt: !1229)
!1276 = !DILocation(line: 888, column: 4, scope: !1219, inlinedAt: !1229)
!1277 = !DILocation(line: 887, column: 23, scope: !1219, inlinedAt: !1229)
!1278 = !DILocation(line: 890, column: 12, scope: !1279, inlinedAt: !1229)
!1279 = distinct !DILexicalBlock(scope: !1219, file: !30, line: 890, column: 6)
!1280 = !DILocation(line: 890, column: 6, scope: !1219, inlinedAt: !1229)
!1281 = !DILocation(line: 0, scope: !431, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 891, column: 3, scope: !1283, inlinedAt: !1229)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !30, line: 890, column: 21)
!1284 = !DILocation(line: 374, column: 2, scope: !431, inlinedAt: !1282)
!1285 = !DILocation(line: 0, scope: !415, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 374, column: 2, scope: !431, inlinedAt: !1282)
!1287 = !DILocation(line: 221, column: 17, scope: !425, inlinedAt: !1286)
!1288 = !DILocation(line: 221, column: 6, scope: !415, inlinedAt: !1286)
!1289 = !DILocation(line: 222, column: 3, scope: !425, inlinedAt: !1286)
!1290 = !DILocation(line: 898, column: 9, scope: !1219, inlinedAt: !1229)
!1291 = !DILocation(line: 897, column: 30, scope: !1219, inlinedAt: !1229)
!1292 = !DILocation(line: 898, column: 21, scope: !1219, inlinedAt: !1229)
!1293 = !DILocation(line: 899, column: 26, scope: !1219, inlinedAt: !1229)
!1294 = !DILocation(line: 899, column: 9, scope: !1219, inlinedAt: !1229)
!1295 = !DILocation(line: 899, column: 19, scope: !1219, inlinedAt: !1229)
!1296 = !DILocation(line: 900, column: 21, scope: !1219, inlinedAt: !1229)
!1297 = !DILocation(line: 900, column: 34, scope: !1219, inlinedAt: !1229)
!1298 = !DILocation(line: 900, column: 9, scope: !1219, inlinedAt: !1229)
!1299 = !DILocation(line: 900, column: 14, scope: !1219, inlinedAt: !1229)
!1300 = !DILocation(line: 903, column: 62, scope: !1219, inlinedAt: !1229)
!1301 = !DILocation(line: 905, column: 2, scope: !1219, inlinedAt: !1229)
!1302 = !DILocation(line: 906, column: 25, scope: !1303, inlinedAt: !1229)
!1303 = distinct !DILexicalBlock(scope: !1219, file: !30, line: 905, column: 5)
!1304 = !DILocation(line: 906, column: 36, scope: !1303, inlinedAt: !1229)
!1305 = !DILocation(line: 907, column: 12, scope: !1303, inlinedAt: !1229)
!1306 = !DILocation(line: 907, column: 22, scope: !1303, inlinedAt: !1229)
!1307 = !DILocation(line: 906, column: 3, scope: !1303, inlinedAt: !1229)
!1308 = !DILocation(line: 908, column: 14, scope: !1303, inlinedAt: !1229)
!1309 = !DILocation(line: 908, column: 19, scope: !1303, inlinedAt: !1229)
!1310 = !DILocation(line: 908, column: 5, scope: !1303, inlinedAt: !1229)
!1311 = !DILocalVariable(name: "node", arg: 1, scope: !1312, file: !30, line: 295, type: !1315)
!1312 = distinct !DISubprogram(name: "index_tree_next", scope: !30, file: !30, line: 295, type: !1313, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1317)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!50, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!1317 = !{!1311}
!1318 = !DILocation(line: 0, scope: !1312, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 909, column: 10, scope: !1303, inlinedAt: !1229)
!1320 = !DILocation(line: 297, column: 12, scope: !1321, inlinedAt: !1319)
!1321 = distinct !DILexicalBlock(scope: !1312, file: !30, line: 297, column: 6)
!1322 = !DILocation(line: 297, column: 18, scope: !1321, inlinedAt: !1319)
!1323 = !DILocation(line: 297, column: 6, scope: !1312, inlinedAt: !1319)
!1324 = !DILocation(line: 0, scope: !1325, inlinedAt: !1319)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !30, line: 297, column: 27)
!1326 = !DILocation(line: 299, column: 16, scope: !1325, inlinedAt: !1319)
!1327 = !DILocation(line: 299, column: 21, scope: !1325, inlinedAt: !1319)
!1328 = !DILocation(line: 299, column: 3, scope: !1325, inlinedAt: !1319)
!1329 = distinct !{!1329, !1328, !1330, !376, !377}
!1330 = !DILocation(line: 300, column: 17, scope: !1325, inlinedAt: !1319)
!1331 = !DILocation(line: 305, column: 15, scope: !1312, inlinedAt: !1319)
!1332 = !DILocation(line: 305, column: 22, scope: !1312, inlinedAt: !1319)
!1333 = !DILocation(line: 305, column: 30, scope: !1312, inlinedAt: !1319)
!1334 = !DILocation(line: 305, column: 47, scope: !1312, inlinedAt: !1319)
!1335 = !DILocation(line: 305, column: 53, scope: !1312, inlinedAt: !1319)
!1336 = !DILocation(line: 305, column: 2, scope: !1312, inlinedAt: !1319)
!1337 = distinct !{!1337, !1336, !1338, !376, !377}
!1338 = !DILocation(line: 306, column: 16, scope: !1312, inlinedAt: !1319)
!1339 = !DILocation(line: 915, column: 2, scope: !1219, inlinedAt: !1229)
!1340 = !DILocation(line: 0, scope: !1189)
!1341 = !DILocation(line: 941, column: 7, scope: !1189)
!1342 = !DILocation(line: 0, scope: !402, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 942, column: 4, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !30, line: 941, column: 27)
!1345 = distinct !DILexicalBlock(scope: !1189, file: !30, line: 941, column: 7)
!1346 = !DILocation(line: 422, column: 3, scope: !413, inlinedAt: !1343)
!1347 = !DILocation(line: 0, scope: !415, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 422, column: 3, scope: !413, inlinedAt: !1343)
!1349 = !DILocation(line: 221, column: 17, scope: !425, inlinedAt: !1348)
!1350 = !DILocation(line: 221, column: 6, scope: !415, inlinedAt: !1348)
!1351 = !DILocation(line: 222, column: 3, scope: !425, inlinedAt: !1348)
!1352 = !DILocation(line: 423, column: 3, scope: !413, inlinedAt: !1343)
!1353 = !DILocation(line: 946, column: 3, scope: !1189)
!1354 = !DILocation(line: 0, scope: !1312, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 948, column: 15, scope: !1189)
!1356 = !DILocation(line: 297, column: 12, scope: !1321, inlinedAt: !1355)
!1357 = !DILocation(line: 297, column: 18, scope: !1321, inlinedAt: !1355)
!1358 = !DILocation(line: 297, column: 6, scope: !1312, inlinedAt: !1355)
!1359 = !DILocation(line: 0, scope: !1325, inlinedAt: !1355)
!1360 = !DILocation(line: 299, column: 16, scope: !1325, inlinedAt: !1355)
!1361 = !DILocation(line: 299, column: 21, scope: !1325, inlinedAt: !1355)
!1362 = !DILocation(line: 299, column: 3, scope: !1325, inlinedAt: !1355)
!1363 = distinct !{!1363, !1362, !1364, !376, !377}
!1364 = !DILocation(line: 300, column: 17, scope: !1325, inlinedAt: !1355)
!1365 = !DILocation(line: 305, column: 15, scope: !1312, inlinedAt: !1355)
!1366 = !DILocation(line: 305, column: 22, scope: !1312, inlinedAt: !1355)
!1367 = !DILocation(line: 305, column: 30, scope: !1312, inlinedAt: !1355)
!1368 = !DILocation(line: 305, column: 47, scope: !1312, inlinedAt: !1355)
!1369 = !DILocation(line: 305, column: 53, scope: !1312, inlinedAt: !1355)
!1370 = !DILocation(line: 305, column: 2, scope: !1312, inlinedAt: !1355)
!1371 = distinct !{!1371, !1370, !1372, !376, !377}
!1372 = !DILocation(line: 306, column: 16, scope: !1312, inlinedAt: !1355)
!1373 = !DILocation(line: 952, column: 1, scope: !1180)
!1374 = distinct !DISubprogram(name: "lzma_index_iter_init", scope: !30, file: !30, line: 1077, type: !1375, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1430)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !1377, !487}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_iter", file: !43, line: 220, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 43, size: 2432, elements: !1380)
!1380 = !{!1381, !1401, !1421}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !1379, file: !43, line: 114, baseType: !1382, size: 960)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1379, file: !43, line: 44, size: 960, elements: !1383)
!1383 = !{!1384, !1385, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !43, line: 51, baseType: !689, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !1382, file: !43, line: 53, baseType: !1386, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !1382, file: !43, line: 54, baseType: !1386, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !1382, file: !43, line: 55, baseType: !1386, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1382, file: !43, line: 62, baseType: !64, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !1382, file: !43, line: 70, baseType: !64, size: 64, offset: 320)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_offset", scope: !1382, file: !43, line: 78, baseType: !64, size: 64, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_offset", scope: !1382, file: !43, line: 86, baseType: !64, size: 64, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !1382, file: !43, line: 94, baseType: !64, size: 64, offset: 512)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !1382, file: !43, line: 99, baseType: !64, size: 64, offset: 576)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1382, file: !43, line: 108, baseType: !64, size: 64, offset: 640)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli1", scope: !1382, file: !43, line: 110, baseType: !64, size: 64, offset: 704)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli2", scope: !1382, file: !43, line: 111, baseType: !64, size: 64, offset: 768)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli3", scope: !1382, file: !43, line: 112, baseType: !64, size: 64, offset: 832)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli4", scope: !1382, file: !43, line: 113, baseType: !64, size: 64, offset: 896)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1379, file: !43, line: 208, baseType: !1402, size: 1088, offset: 960)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1379, file: !43, line: 116, size: 1088, elements: !1403)
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "number_in_file", scope: !1402, file: !43, line: 122, baseType: !64, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_file_offset", scope: !1402, file: !43, line: 132, baseType: !64, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_file_offset", scope: !1402, file: !43, line: 147, baseType: !64, size: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "number_in_stream", scope: !1402, file: !43, line: 154, baseType: !64, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_stream_offset", scope: !1402, file: !43, line: 162, baseType: !64, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_stream_offset", scope: !1402, file: !43, line: 170, baseType: !64, size: 64, offset: 320)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !1402, file: !43, line: 179, baseType: !64, size: 64, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "unpadded_size", scope: !1402, file: !43, line: 188, baseType: !64, size: 64, offset: 448)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !1402, file: !43, line: 197, baseType: !64, size: 64, offset: 512)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli1", scope: !1402, file: !43, line: 199, baseType: !64, size: 64, offset: 576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli2", scope: !1402, file: !43, line: 200, baseType: !64, size: 64, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli3", scope: !1402, file: !43, line: 201, baseType: !64, size: 64, offset: 704)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli4", scope: !1402, file: !43, line: 202, baseType: !64, size: 64, offset: 768)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !1402, file: !43, line: 204, baseType: !1386, size: 64, offset: 832)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !1402, file: !43, line: 205, baseType: !1386, size: 64, offset: 896)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !1402, file: !43, line: 206, baseType: !1386, size: 64, offset: 960)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !1402, file: !43, line: 207, baseType: !1386, size: 64, offset: 1024)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !1379, file: !43, line: 219, baseType: !1422, size: 384, offset: 2048)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1423, size: 384, elements: !1428)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1379, file: !43, line: 215, size: 64, elements: !1424)
!1424 = !{!1425, !1426, !1427}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1423, file: !43, line: 216, baseType: !1386, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1423, file: !43, line: 217, baseType: !51, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1423, file: !43, line: 218, baseType: !64, size: 64)
!1428 = !{!1429}
!1429 = !DISubrange(count: 6)
!1430 = !{!1431, !1432}
!1431 = !DILocalVariable(name: "iter", arg: 1, scope: !1374, file: !30, line: 1077, type: !1377)
!1432 = !DILocalVariable(name: "i", arg: 2, scope: !1374, file: !30, line: 1077, type: !487)
!1433 = !DILocation(line: 0, scope: !1374)
!1434 = !DILocation(line: 1079, column: 8, scope: !1374)
!1435 = !DILocation(line: 1079, column: 31, scope: !1374)
!1436 = !DILocalVariable(name: "iter", arg: 1, scope: !1437, file: !30, line: 1086, type: !1377)
!1437 = distinct !DISubprogram(name: "lzma_index_iter_rewind", scope: !30, file: !30, line: 1086, type: !1438, scopeLine: 1087, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1440)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !1377}
!1440 = !{!1436}
!1441 = !DILocation(line: 0, scope: !1437, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 1080, column: 2, scope: !1374)
!1443 = !DILocation(line: 1088, column: 2, scope: !1437, inlinedAt: !1442)
!1444 = !DILocation(line: 1089, column: 31, scope: !1437, inlinedAt: !1442)
!1445 = !DILocation(line: 1081, column: 2, scope: !1374)
!1446 = !DILocation(line: 0, scope: !1437)
!1447 = !DILocation(line: 1088, column: 2, scope: !1437)
!1448 = !DILocation(line: 1089, column: 31, scope: !1437)
!1449 = !DILocation(line: 1092, column: 2, scope: !1437)
!1450 = distinct !DISubprogram(name: "lzma_index_iter_next", scope: !30, file: !30, line: 1097, type: !1451, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1454)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!104, !1377, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_iter_mode", file: !43, line: 268, baseType: !42)
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461}
!1455 = !DILocalVariable(name: "iter", arg: 1, scope: !1450, file: !30, line: 1097, type: !1377)
!1456 = !DILocalVariable(name: "mode", arg: 2, scope: !1450, file: !30, line: 1097, type: !1453)
!1457 = !DILocalVariable(name: "i", scope: !1450, file: !30, line: 1103, type: !487)
!1458 = !DILocalVariable(name: "stream", scope: !1450, file: !30, line: 1104, type: !54)
!1459 = !DILocalVariable(name: "group", scope: !1450, file: !30, line: 1105, type: !116)
!1460 = !DILocalVariable(name: "record", scope: !1450, file: !30, line: 1106, type: !51)
!1461 = !DILabel(scope: !1450, name: "again", file: !30, line: 1130)
!1462 = !DILocation(line: 0, scope: !1450)
!1463 = !DILocation(line: 1100, column: 27, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1450, file: !30, line: 1100, column: 6)
!1465 = !DILocation(line: 1100, column: 6, scope: !1450)
!1466 = !DILocation(line: 1103, column: 30, scope: !1450)
!1467 = !DILocation(line: 1103, column: 51, scope: !1450)
!1468 = !DILocation(line: 1104, column: 31, scope: !1450)
!1469 = !DILocation(line: 1104, column: 59, scope: !1450)
!1470 = !DILocation(line: 1106, column: 18, scope: !1450)
!1471 = !DILocation(line: 1106, column: 46, scope: !1450)
!1472 = !DILocation(line: 1111, column: 11, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1450, file: !30, line: 1111, column: 6)
!1474 = !DILocation(line: 1111, column: 6, scope: !1450)
!1475 = !DILocation(line: 1114, column: 11, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1473, file: !30, line: 1111, column: 38)
!1477 = !DILocation(line: 1114, column: 39, scope: !1476)
!1478 = !DILocation(line: 1114, column: 3, scope: !1476)
!1479 = !DILocation(line: 1116, column: 12, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !30, line: 1114, column: 42)
!1481 = !DILocation(line: 1117, column: 4, scope: !1480)
!1482 = !DILocation(line: 1120, column: 28, scope: !1480)
!1483 = !DILocation(line: 1120, column: 55, scope: !1480)
!1484 = !DILocation(line: 0, scope: !1312, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 1120, column: 12, scope: !1480)
!1486 = !DILocation(line: 297, column: 12, scope: !1321, inlinedAt: !1485)
!1487 = !DILocation(line: 297, column: 18, scope: !1321, inlinedAt: !1485)
!1488 = !DILocation(line: 297, column: 6, scope: !1312, inlinedAt: !1485)
!1489 = !DILocation(line: 0, scope: !1325, inlinedAt: !1485)
!1490 = !DILocation(line: 299, column: 16, scope: !1325, inlinedAt: !1485)
!1491 = !DILocation(line: 299, column: 21, scope: !1325, inlinedAt: !1485)
!1492 = !DILocation(line: 299, column: 3, scope: !1325, inlinedAt: !1485)
!1493 = distinct !{!1493, !1492, !1494, !376, !377}
!1494 = !DILocation(line: 300, column: 17, scope: !1325, inlinedAt: !1485)
!1495 = !DILocation(line: 305, column: 15, scope: !1312, inlinedAt: !1485)
!1496 = !DILocation(line: 305, column: 22, scope: !1312, inlinedAt: !1485)
!1497 = !DILocation(line: 305, column: 30, scope: !1312, inlinedAt: !1485)
!1498 = !DILocation(line: 305, column: 47, scope: !1312, inlinedAt: !1485)
!1499 = !DILocation(line: 305, column: 53, scope: !1312, inlinedAt: !1485)
!1500 = !DILocation(line: 305, column: 2, scope: !1312, inlinedAt: !1485)
!1501 = distinct !{!1501, !1500, !1502, !376, !377}
!1502 = !DILocation(line: 306, column: 16, scope: !1312, inlinedAt: !1485)
!1503 = !DILocation(line: 1125, column: 21, scope: !1480)
!1504 = !DILocation(line: 1126, column: 4, scope: !1480)
!1505 = !DILocation(line: 0, scope: !1480)
!1506 = !DILocation(line: 1111, column: 14, scope: !1473)
!1507 = !DILocation(line: 1130, column: 1, scope: !1450)
!1508 = !DILocation(line: 1131, column: 13, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1450, file: !30, line: 1131, column: 6)
!1510 = !DILocation(line: 1131, column: 6, scope: !1450)
!1511 = !DILocation(line: 1134, column: 46, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1509, file: !30, line: 1131, column: 22)
!1513 = !DILocation(line: 0, scope: !1512)
!1514 = !DILocation(line: 1135, column: 7, scope: !1512)
!1515 = !DILocation(line: 0, scope: !1312, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 1140, column: 14, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !30, line: 1139, column: 44)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !30, line: 1135, column: 38)
!1519 = distinct !DILexicalBlock(scope: !1512, file: !30, line: 1135, column: 7)
!1520 = !DILocation(line: 297, column: 12, scope: !1321, inlinedAt: !1516)
!1521 = !DILocation(line: 297, column: 18, scope: !1321, inlinedAt: !1516)
!1522 = !DILocation(line: 297, column: 6, scope: !1312, inlinedAt: !1516)
!1523 = !DILocation(line: 0, scope: !1325, inlinedAt: !1516)
!1524 = !DILocation(line: 299, column: 16, scope: !1325, inlinedAt: !1516)
!1525 = !DILocation(line: 299, column: 21, scope: !1325, inlinedAt: !1516)
!1526 = !DILocation(line: 299, column: 3, scope: !1325, inlinedAt: !1516)
!1527 = distinct !{!1527, !1526, !1528, !376, !377}
!1528 = !DILocation(line: 300, column: 17, scope: !1325, inlinedAt: !1516)
!1529 = !DILocation(line: 305, column: 15, scope: !1312, inlinedAt: !1516)
!1530 = !DILocation(line: 305, column: 22, scope: !1312, inlinedAt: !1516)
!1531 = !DILocation(line: 305, column: 30, scope: !1312, inlinedAt: !1516)
!1532 = !DILocation(line: 305, column: 47, scope: !1312, inlinedAt: !1516)
!1533 = !DILocation(line: 305, column: 53, scope: !1312, inlinedAt: !1516)
!1534 = !DILocation(line: 305, column: 2, scope: !1312, inlinedAt: !1516)
!1535 = distinct !{!1535, !1534, !1536, !376, !377}
!1536 = !DILocation(line: 306, column: 16, scope: !1312, inlinedAt: !1516)
!1537 = !DILocation(line: 1139, column: 26, scope: !1518)
!1538 = !DILocation(line: 1139, column: 35, scope: !1518)
!1539 = !DILocation(line: 1139, column: 4, scope: !1518)
!1540 = !DILocation(line: 1150, column: 19, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1509, file: !30, line: 1150, column: 13)
!1542 = !DILocation(line: 1150, column: 27, scope: !1541)
!1543 = !DILocation(line: 1150, column: 46, scope: !1541)
!1544 = !DILocation(line: 1150, column: 37, scope: !1541)
!1545 = !DILocation(line: 1150, column: 13, scope: !1509)
!1546 = !DILocation(line: 1152, column: 3, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1541, file: !30, line: 1150, column: 52)
!1548 = !DILocation(line: 1154, column: 2, scope: !1547)
!1549 = !DILocation(line: 0, scope: !1312, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 1162, column: 12, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !30, line: 1161, column: 7)
!1552 = distinct !DILexicalBlock(scope: !1541, file: !30, line: 1154, column: 9)
!1553 = !DILocation(line: 297, column: 12, scope: !1321, inlinedAt: !1550)
!1554 = !DILocation(line: 297, column: 18, scope: !1321, inlinedAt: !1550)
!1555 = !DILocation(line: 297, column: 6, scope: !1312, inlinedAt: !1550)
!1556 = !DILocation(line: 0, scope: !1325, inlinedAt: !1550)
!1557 = !DILocation(line: 299, column: 16, scope: !1325, inlinedAt: !1550)
!1558 = !DILocation(line: 299, column: 21, scope: !1325, inlinedAt: !1550)
!1559 = !DILocation(line: 299, column: 3, scope: !1325, inlinedAt: !1550)
!1560 = distinct !{!1560, !1559, !1561, !376, !377}
!1561 = !DILocation(line: 300, column: 17, scope: !1325, inlinedAt: !1550)
!1562 = !DILocation(line: 305, column: 15, scope: !1312, inlinedAt: !1550)
!1563 = !DILocation(line: 305, column: 22, scope: !1312, inlinedAt: !1550)
!1564 = !DILocation(line: 305, column: 30, scope: !1312, inlinedAt: !1550)
!1565 = !DILocation(line: 305, column: 47, scope: !1312, inlinedAt: !1550)
!1566 = !DILocation(line: 305, column: 53, scope: !1312, inlinedAt: !1550)
!1567 = !DILocation(line: 305, column: 2, scope: !1312, inlinedAt: !1550)
!1568 = distinct !{!1568, !1567, !1569, !376, !377}
!1569 = !DILocation(line: 306, column: 16, scope: !1312, inlinedAt: !1550)
!1570 = !DILocation(line: 1173, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !30, line: 1164, column: 22)
!1572 = distinct !DILexicalBlock(scope: !1552, file: !30, line: 1164, column: 7)
!1573 = !DILocation(line: 0, scope: !1312, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 1169, column: 14, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !30, line: 1168, column: 7)
!1576 = !DILocation(line: 297, column: 12, scope: !1321, inlinedAt: !1574)
!1577 = !DILocation(line: 297, column: 18, scope: !1321, inlinedAt: !1574)
!1578 = !DILocation(line: 297, column: 6, scope: !1312, inlinedAt: !1574)
!1579 = !DILocation(line: 0, scope: !1325, inlinedAt: !1574)
!1580 = !DILocation(line: 299, column: 16, scope: !1325, inlinedAt: !1574)
!1581 = !DILocation(line: 299, column: 21, scope: !1325, inlinedAt: !1574)
!1582 = !DILocation(line: 299, column: 3, scope: !1325, inlinedAt: !1574)
!1583 = distinct !{!1583, !1582, !1584, !376, !377}
!1584 = !DILocation(line: 300, column: 17, scope: !1325, inlinedAt: !1574)
!1585 = !DILocation(line: 305, column: 15, scope: !1312, inlinedAt: !1574)
!1586 = !DILocation(line: 305, column: 22, scope: !1312, inlinedAt: !1574)
!1587 = !DILocation(line: 305, column: 30, scope: !1312, inlinedAt: !1574)
!1588 = !DILocation(line: 305, column: 47, scope: !1312, inlinedAt: !1574)
!1589 = !DILocation(line: 305, column: 53, scope: !1312, inlinedAt: !1574)
!1590 = !DILocation(line: 305, column: 2, scope: !1312, inlinedAt: !1574)
!1591 = distinct !{!1591, !1590, !1592, !376, !377}
!1592 = !DILocation(line: 306, column: 16, scope: !1312, inlinedAt: !1574)
!1593 = !DILocation(line: 1173, column: 24, scope: !1571)
!1594 = !DILocation(line: 1173, column: 33, scope: !1571)
!1595 = !DILocation(line: 1172, column: 4, scope: !1575)
!1596 = distinct !{!1596, !1597, !1598, !376, !377}
!1597 = !DILocation(line: 1168, column: 4, scope: !1571)
!1598 = !DILocation(line: 1173, column: 40, scope: !1571)
!1599 = !DILocation(line: 1176, column: 21, scope: !1571)
!1600 = !DILocation(line: 1177, column: 3, scope: !1571)
!1601 = !DILocation(line: 0, scope: !1509)
!1602 = !DILocation(line: 1180, column: 6, scope: !1450)
!1603 = !DILocation(line: 1183, column: 14, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !30, line: 1183, column: 7)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !30, line: 1180, column: 46)
!1606 = distinct !DILexicalBlock(scope: !1450, file: !30, line: 1180, column: 6)
!1607 = !DILocation(line: 1183, column: 7, scope: !1605)
!1608 = !DILocation(line: 1184, column: 20, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !30, line: 1184, column: 8)
!1610 = distinct !DILexicalBlock(scope: !1604, file: !30, line: 1183, column: 20)
!1611 = !DILocation(line: 1185, column: 16, scope: !1609)
!1612 = !DILocation(line: 1185, column: 27, scope: !1609)
!1613 = !DILocation(line: 1185, column: 6, scope: !1609)
!1614 = !DILocation(line: 1184, column: 8, scope: !1610)
!1615 = !DILocation(line: 1187, column: 36, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1604, file: !30, line: 1187, column: 14)
!1617 = !DILocation(line: 1187, column: 14, scope: !1616)
!1618 = !DILocation(line: 1187, column: 41, scope: !1616)
!1619 = !DILocation(line: 1188, column: 8, scope: !1616)
!1620 = !DILocation(line: 1188, column: 31, scope: !1616)
!1621 = !DILocation(line: 1188, column: 5, scope: !1616)
!1622 = !DILocation(line: 1187, column: 14, scope: !1604)
!1623 = !DILocation(line: 1193, column: 32, scope: !1450)
!1624 = !DILocation(line: 1194, column: 2, scope: !1450)
!1625 = !DILocation(line: 1194, column: 31, scope: !1450)
!1626 = !DILocation(line: 1195, column: 32, scope: !1450)
!1627 = !DILocation(line: 1197, column: 2, scope: !1450)
!1628 = !DILocation(line: 1199, column: 2, scope: !1450)
!1629 = !DILocation(line: 1200, column: 1, scope: !1450)
!1630 = distinct !DISubprogram(name: "iter_set_info", scope: !30, file: !30, line: 974, type: !1438, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637}
!1632 = !DILocalVariable(name: "iter", arg: 1, scope: !1630, file: !30, line: 974, type: !1377)
!1633 = !DILocalVariable(name: "i", scope: !1630, file: !30, line: 976, type: !487)
!1634 = !DILocalVariable(name: "stream", scope: !1630, file: !30, line: 977, type: !54)
!1635 = !DILocalVariable(name: "group", scope: !1630, file: !30, line: 978, type: !116)
!1636 = !DILocalVariable(name: "record", scope: !1630, file: !30, line: 979, type: !463)
!1637 = !DILocalVariable(name: "g", scope: !1638, file: !30, line: 1028, type: !116)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !30, line: 1027, column: 9)
!1639 = distinct !DILexicalBlock(scope: !1630, file: !30, line: 1022, column: 6)
!1640 = !DILocation(line: 0, scope: !1630)
!1641 = !DILocation(line: 977, column: 31, scope: !1630)
!1642 = !DILocation(line: 977, column: 59, scope: !1630)
!1643 = !DILocation(line: 978, column: 29, scope: !1630)
!1644 = !DILocation(line: 978, column: 56, scope: !1630)
!1645 = !DILocation(line: 979, column: 24, scope: !1630)
!1646 = !DILocation(line: 979, column: 52, scope: !1630)
!1647 = !DILocation(line: 984, column: 12, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1630, file: !30, line: 984, column: 6)
!1649 = !DILocation(line: 984, column: 6, scope: !1630)
!1650 = !DILocation(line: 987, column: 3, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !30, line: 984, column: 21)
!1652 = !DILocation(line: 987, column: 33, scope: !1651)
!1653 = !DILocation(line: 989, column: 2, scope: !1651)
!1654 = !DILocation(line: 976, column: 30, scope: !1630)
!1655 = !DILocation(line: 976, column: 51, scope: !1630)
!1656 = !DILocation(line: 989, column: 24, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1648, file: !30, line: 989, column: 13)
!1658 = !DILocation(line: 989, column: 34, scope: !1657)
!1659 = !DILocation(line: 990, column: 4, scope: !1657)
!1660 = !DILocation(line: 990, column: 22, scope: !1657)
!1661 = !DILocation(line: 990, column: 32, scope: !1657)
!1662 = !DILocation(line: 989, column: 13, scope: !1648)
!1663 = !DILocation(line: 992, column: 3, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1657, file: !30, line: 990, column: 49)
!1665 = !DILocation(line: 992, column: 33, scope: !1664)
!1666 = !DILocation(line: 994, column: 2, scope: !1664)
!1667 = !DILocation(line: 994, column: 28, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1657, file: !30, line: 994, column: 13)
!1669 = !DILocation(line: 994, column: 37, scope: !1668)
!1670 = !DILocation(line: 0, scope: !1668)
!1671 = !DILocation(line: 994, column: 13, scope: !1657)
!1672 = !DILocation(line: 1000, column: 33, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !30, line: 994, column: 54)
!1674 = !DILocation(line: 1001, column: 46, scope: !1673)
!1675 = !DILocation(line: 1001, column: 32, scope: !1673)
!1676 = !DILocation(line: 1003, column: 2, scope: !1673)
!1677 = !DILocation(line: 1007, column: 33, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1668, file: !30, line: 1003, column: 9)
!1679 = !DILocation(line: 1008, column: 32, scope: !1678)
!1680 = !DILocation(line: 1011, column: 32, scope: !1630)
!1681 = !DILocation(line: 1011, column: 24, scope: !1630)
!1682 = !DILocation(line: 1011, column: 15, scope: !1630)
!1683 = !DILocation(line: 1011, column: 22, scope: !1630)
!1684 = !{!1685, !206, i64 32}
!1685 = !{!"", !1686, i64 0, !1687, i64 120, !203, i64 256}
!1686 = !{!"", !202, i64 0, !202, i64 8, !202, i64 16, !202, i64 24, !206, i64 32, !206, i64 40, !206, i64 48, !206, i64 56, !206, i64 64, !206, i64 72, !206, i64 80, !206, i64 88, !206, i64 96, !206, i64 104, !206, i64 112}
!1687 = !{!"", !206, i64 0, !206, i64 8, !206, i64 16, !206, i64 24, !206, i64 32, !206, i64 40, !206, i64 48, !206, i64 56, !206, i64 64, !206, i64 72, !206, i64 80, !206, i64 88, !206, i64 96, !202, i64 104, !202, i64 112, !202, i64 120, !202, i64 128}
!1688 = !DILocation(line: 1012, column: 37, scope: !1630)
!1689 = !DILocation(line: 1012, column: 15, scope: !1630)
!1690 = !DILocation(line: 1012, column: 27, scope: !1630)
!1691 = !{!1685, !206, i64 40}
!1692 = !DILocation(line: 1013, column: 48, scope: !1630)
!1693 = !DILocation(line: 1013, column: 15, scope: !1630)
!1694 = !DILocation(line: 1013, column: 33, scope: !1630)
!1695 = !{!1685, !206, i64 48}
!1696 = !DILocation(line: 1014, column: 50, scope: !1630)
!1697 = !DILocation(line: 1014, column: 15, scope: !1630)
!1698 = !DILocation(line: 1014, column: 35, scope: !1630)
!1699 = !{!1685, !206, i64 56}
!1700 = !DILocation(line: 1018, column: 31, scope: !1630)
!1701 = !DILocation(line: 1018, column: 44, scope: !1630)
!1702 = !DILocation(line: 1018, column: 52, scope: !1630)
!1703 = !DILocation(line: 1018, column: 23, scope: !1630)
!1704 = !DILocation(line: 1018, column: 21, scope: !1630)
!1705 = !{!1685, !202, i64 0}
!1706 = !DILocation(line: 1020, column: 33, scope: !1630)
!1707 = !DILocation(line: 1020, column: 15, scope: !1630)
!1708 = !DILocation(line: 1020, column: 23, scope: !1630)
!1709 = !{!1685, !206, i64 80}
!1710 = !DILocation(line: 1022, column: 21, scope: !1639)
!1711 = !DILocation(line: 1022, column: 31, scope: !1639)
!1712 = !DILocation(line: 1022, column: 6, scope: !1630)
!1713 = !DILocation(line: 0, scope: !531, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 1024, column: 34, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1639, file: !30, line: 1022, column: 40)
!1716 = !DILocation(line: 0, scope: !540, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 59, column: 19, scope: !531, inlinedAt: !1714)
!1718 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !1717)
!1719 = !DILocation(line: 51, column: 11, scope: !540, inlinedAt: !1717)
!1720 = !DILocation(line: 51, column: 9, scope: !540, inlinedAt: !1717)
!1721 = !DILocation(line: 0, scope: !549, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 59, column: 9, scope: !531, inlinedAt: !1714)
!1723 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !1722)
!1724 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !1722)
!1725 = !DILocation(line: 1025, column: 5, scope: !1715)
!1726 = !DILocation(line: 1024, column: 16, scope: !1715)
!1727 = !DILocation(line: 1024, column: 32, scope: !1715)
!1728 = !{!1685, !206, i64 64}
!1729 = !DILocation(line: 1027, column: 2, scope: !1715)
!1730 = !DILocation(line: 0, scope: !1638)
!1731 = !DILocation(line: 1034, column: 14, scope: !1638)
!1732 = !DILocation(line: 0, scope: !531, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 1033, column: 7, scope: !1638)
!1734 = !DILocation(line: 0, scope: !540, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 59, column: 19, scope: !531, inlinedAt: !1733)
!1736 = !DILocation(line: 51, column: 13, scope: !540, inlinedAt: !1735)
!1737 = !DILocation(line: 51, column: 11, scope: !540, inlinedAt: !1735)
!1738 = !DILocation(line: 51, column: 9, scope: !540, inlinedAt: !1735)
!1739 = !DILocation(line: 0, scope: !549, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 59, column: 9, scope: !531, inlinedAt: !1733)
!1741 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !1740)
!1742 = !DILocation(line: 1033, column: 5, scope: !1638)
!1743 = !DILocation(line: 1035, column: 31, scope: !1638)
!1744 = !DILocation(line: 1035, column: 37, scope: !1638)
!1745 = !DILocation(line: 0, scope: !549, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 1035, column: 7, scope: !1638)
!1747 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !1746)
!1748 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !1746)
!1749 = !DILocation(line: 1035, column: 5, scope: !1638)
!1750 = !DILocation(line: 1032, column: 16, scope: !1638)
!1751 = !DILocation(line: 1032, column: 32, scope: !1638)
!1752 = !DILocation(line: 1037, column: 21, scope: !1638)
!1753 = !DILocation(line: 1037, column: 7, scope: !1638)
!1754 = !DILocation(line: 1037, column: 27, scope: !1638)
!1755 = !DILocation(line: 0, scope: !1639)
!1756 = !DILocation(line: 1026, column: 16, scope: !1715)
!1757 = !DILocation(line: 1026, column: 34, scope: !1715)
!1758 = !DILocation(line: 1040, column: 6, scope: !1630)
!1759 = !DILocation(line: 1041, column: 41, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !30, line: 1040, column: 21)
!1761 = distinct !DILexicalBlock(scope: !1630, file: !30, line: 1040, column: 6)
!1762 = !DILocation(line: 1041, column: 53, scope: !1760)
!1763 = !DILocation(line: 1041, column: 9, scope: !1760)
!1764 = !DILocation(line: 1041, column: 15, scope: !1760)
!1765 = !DILocation(line: 1041, column: 32, scope: !1760)
!1766 = !{!1685, !206, i64 144}
!1767 = !DILocation(line: 1043, column: 15, scope: !1760)
!1768 = !DILocation(line: 1043, column: 5, scope: !1760)
!1769 = !DILocation(line: 1042, column: 30, scope: !1760)
!1770 = !{!1685, !206, i64 120}
!1771 = !DILocation(line: 1046, column: 14, scope: !1760)
!1772 = !DILocation(line: 1046, column: 7, scope: !1760)
!1773 = !DILocation(line: 1046, column: 33, scope: !1760)
!1774 = !DILocation(line: 1045, column: 15, scope: !1760)
!1775 = !DILocation(line: 1046, column: 5, scope: !1760)
!1776 = !{!1685, !206, i64 152}
!1777 = !DILocation(line: 1050, column: 7, scope: !1760)
!1778 = !DILocation(line: 1048, column: 13, scope: !1760)
!1779 = !DILocation(line: 1048, column: 18, scope: !1760)
!1780 = !DILocation(line: 0, scope: !549, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 1047, column: 7, scope: !1760)
!1782 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !1781)
!1783 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !1781)
!1784 = !DILocation(line: 1051, column: 7, scope: !1760)
!1785 = !DILocation(line: 1049, column: 15, scope: !1760)
!1786 = !DILocation(line: 1050, column: 5, scope: !1760)
!1787 = !{!1685, !206, i64 160}
!1788 = !DILocation(line: 1054, column: 7, scope: !1760)
!1789 = !DILocation(line: 1054, column: 30, scope: !1760)
!1790 = !DILocation(line: 1055, column: 5, scope: !1760)
!1791 = !DILocation(line: 1053, column: 15, scope: !1760)
!1792 = !DILocation(line: 1054, column: 5, scope: !1760)
!1793 = !{!1685, !206, i64 168}
!1794 = !DILocation(line: 1057, column: 30, scope: !1760)
!1795 = !DILocation(line: 1058, column: 5, scope: !1760)
!1796 = !DILocation(line: 1056, column: 15, scope: !1760)
!1797 = !DILocation(line: 1057, column: 5, scope: !1760)
!1798 = !{!1685, !206, i64 176}
!1799 = !DILocation(line: 0, scope: !549, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 1059, column: 28, scope: !1760)
!1801 = !DILocation(line: 42, column: 14, scope: !549, inlinedAt: !1800)
!1802 = !DILocation(line: 42, column: 19, scope: !549, inlinedAt: !1800)
!1803 = !DILocation(line: 1059, column: 15, scope: !1760)
!1804 = !DILocation(line: 1059, column: 26, scope: !1760)
!1805 = !{!1685, !206, i64 184}
!1806 = !DILocation(line: 1062, column: 5, scope: !1760)
!1807 = !DILocation(line: 1066, column: 20, scope: !1760)
!1808 = !DILocation(line: 1066, column: 5, scope: !1760)
!1809 = !DILocation(line: 1064, column: 15, scope: !1760)
!1810 = !DILocation(line: 1065, column: 5, scope: !1760)
!1811 = !{!1685, !206, i64 128}
!1812 = !DILocation(line: 1069, column: 20, scope: !1760)
!1813 = !DILocation(line: 1069, column: 5, scope: !1760)
!1814 = !DILocation(line: 1067, column: 15, scope: !1760)
!1815 = !DILocation(line: 1068, column: 5, scope: !1760)
!1816 = !{!1685, !206, i64 136}
!1817 = !DILocation(line: 1070, column: 2, scope: !1760)
!1818 = !DILocation(line: 1073, column: 1, scope: !1630)
!1819 = distinct !DISubprogram(name: "lzma_index_iter_locate", scope: !30, file: !30, line: 1204, type: !1820, scopeLine: 1205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!104, !1377, !64}
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830}
!1823 = !DILocalVariable(name: "iter", arg: 1, scope: !1819, file: !30, line: 1204, type: !1377)
!1824 = !DILocalVariable(name: "target", arg: 2, scope: !1819, file: !30, line: 1204, type: !64)
!1825 = !DILocalVariable(name: "i", scope: !1819, file: !30, line: 1206, type: !487)
!1826 = !DILocalVariable(name: "stream", scope: !1819, file: !30, line: 1213, type: !54)
!1827 = !DILocalVariable(name: "group", scope: !1819, file: !30, line: 1218, type: !116)
!1828 = !DILocalVariable(name: "left", scope: !1819, file: !30, line: 1226, type: !51)
!1829 = !DILocalVariable(name: "right", scope: !1819, file: !30, line: 1227, type: !51)
!1830 = !DILocalVariable(name: "pos", scope: !1831, file: !30, line: 1230, type: !463)
!1831 = distinct !DILexicalBlock(scope: !1819, file: !30, line: 1229, column: 23)
!1832 = !DILocation(line: 0, scope: !1819)
!1833 = !DILocation(line: 1206, column: 30, scope: !1819)
!1834 = !DILocation(line: 1206, column: 51, scope: !1819)
!1835 = !DILocation(line: 1209, column: 9, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1819, file: !30, line: 1209, column: 6)
!1837 = !DILocation(line: 1209, column: 27, scope: !1836)
!1838 = !DILocation(line: 1209, column: 6, scope: !1819)
!1839 = !DILocalVariable(name: "tree", arg: 1, scope: !1840, file: !30, line: 316, type: !1843)
!1840 = distinct !DISubprogram(name: "index_tree_locate", scope: !30, file: !30, line: 316, type: !1841, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1845)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!50, !1843, !64}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!1845 = !{!1839, !1846, !1847, !1848}
!1846 = !DILocalVariable(name: "target", arg: 2, scope: !1840, file: !30, line: 316, type: !64)
!1847 = !DILocalVariable(name: "result", scope: !1840, file: !30, line: 318, type: !1315)
!1848 = !DILocalVariable(name: "node", scope: !1840, file: !30, line: 319, type: !1315)
!1849 = !DILocation(line: 0, scope: !1840, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 1213, column: 31, scope: !1819)
!1851 = !DILocation(line: 326, column: 14, scope: !1840, inlinedAt: !1850)
!1852 = !DILocation(line: 326, column: 2, scope: !1840, inlinedAt: !1850)
!1853 = !DILocation(line: 327, column: 13, scope: !1854, inlinedAt: !1850)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !30, line: 327, column: 7)
!1855 = distinct !DILexicalBlock(scope: !1840, file: !30, line: 326, column: 23)
!1856 = !DILocation(line: 327, column: 31, scope: !1854, inlinedAt: !1850)
!1857 = !DILocation(line: 327, column: 7, scope: !1855, inlinedAt: !1850)
!1858 = !DILocation(line: 328, column: 17, scope: !1859, inlinedAt: !1850)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !30, line: 327, column: 41)
!1860 = !DILocation(line: 329, column: 3, scope: !1859, inlinedAt: !1850)
!1861 = !DILocation(line: 331, column: 17, scope: !1862, inlinedAt: !1850)
!1862 = distinct !DILexicalBlock(scope: !1854, file: !30, line: 329, column: 10)
!1863 = distinct !{!1863, !1852, !1864, !376, !377}
!1864 = !DILocation(line: 333, column: 2, scope: !1840, inlinedAt: !1850)
!1865 = !DILocation(line: 318, column: 25, scope: !1840, inlinedAt: !1850)
!1866 = !DILocation(line: 1215, column: 25, scope: !1819)
!1867 = !DILocation(line: 1215, column: 9, scope: !1819)
!1868 = !DILocation(line: 1218, column: 56, scope: !1819)
!1869 = !DILocation(line: 0, scope: !1840, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 1218, column: 29, scope: !1819)
!1871 = !DILocation(line: 326, column: 14, scope: !1840, inlinedAt: !1870)
!1872 = !DILocation(line: 326, column: 2, scope: !1840, inlinedAt: !1870)
!1873 = !DILocation(line: 327, column: 13, scope: !1854, inlinedAt: !1870)
!1874 = !DILocation(line: 327, column: 31, scope: !1854, inlinedAt: !1870)
!1875 = !DILocation(line: 327, column: 7, scope: !1855, inlinedAt: !1870)
!1876 = !DILocation(line: 328, column: 17, scope: !1859, inlinedAt: !1870)
!1877 = !DILocation(line: 329, column: 3, scope: !1859, inlinedAt: !1870)
!1878 = !DILocation(line: 331, column: 17, scope: !1862, inlinedAt: !1870)
!1879 = distinct !{!1879, !1872, !1880, !376, !377}
!1880 = !DILocation(line: 333, column: 2, scope: !1840, inlinedAt: !1870)
!1881 = !DILocation(line: 318, column: 25, scope: !1840, inlinedAt: !1870)
!1882 = !DILocation(line: 1227, column: 24, scope: !1819)
!1883 = !DILocation(line: 1229, column: 14, scope: !1819)
!1884 = !DILocation(line: 1229, column: 2, scope: !1819)
!1885 = !DILocation(line: 1230, column: 36, scope: !1831)
!1886 = !DILocation(line: 1230, column: 44, scope: !1831)
!1887 = !DILocation(line: 1230, column: 27, scope: !1831)
!1888 = !DILocation(line: 0, scope: !1831)
!1889 = !DILocation(line: 1231, column: 7, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1831, file: !30, line: 1231, column: 7)
!1891 = !DILocation(line: 1231, column: 27, scope: !1890)
!1892 = !DILocation(line: 1231, column: 44, scope: !1890)
!1893 = !DILocation(line: 1231, column: 7, scope: !1831)
!1894 = distinct !{!1894, !1884, !1895, !376, !377}
!1895 = !DILocation(line: 1235, column: 2, scope: !1819)
!1896 = !DILocation(line: 1237, column: 2, scope: !1819)
!1897 = !DILocation(line: 1237, column: 32, scope: !1819)
!1898 = !DILocation(line: 1238, column: 2, scope: !1819)
!1899 = !DILocation(line: 1238, column: 31, scope: !1819)
!1900 = !DILocation(line: 1239, column: 2, scope: !1819)
!1901 = !DILocation(line: 1239, column: 32, scope: !1819)
!1902 = !DILocation(line: 1241, column: 2, scope: !1819)
!1903 = !DILocation(line: 1244, column: 1, scope: !1819)
!1904 = distinct !DISubprogram(name: "index_tree_node_end", scope: !30, file: !30, line: 194, type: !1905, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !72, !157, !418}
!1907 = !{!1908, !1909, !1910}
!1908 = !DILocalVariable(name: "node", arg: 1, scope: !1904, file: !30, line: 194, type: !72)
!1909 = !DILocalVariable(name: "allocator", arg: 2, scope: !1904, file: !30, line: 194, type: !157)
!1910 = !DILocalVariable(name: "free_func", arg: 3, scope: !1904, file: !30, line: 195, type: !418)
!1911 = !DILocation(line: 0, scope: !1904)
!1912 = !DILocation(line: 199, column: 12, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1904, file: !30, line: 199, column: 6)
!1914 = !DILocation(line: 199, column: 17, scope: !1913)
!1915 = !DILocation(line: 199, column: 6, scope: !1904)
!1916 = !DILocation(line: 200, column: 3, scope: !1913)
!1917 = !DILocation(line: 202, column: 12, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1904, file: !30, line: 202, column: 6)
!1919 = !DILocation(line: 202, column: 18, scope: !1918)
!1920 = !DILocation(line: 202, column: 6, scope: !1904)
!1921 = !DILocation(line: 203, column: 3, scope: !1918)
!1922 = !DILocation(line: 205, column: 16, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1904, file: !30, line: 205, column: 6)
!1924 = !DILocation(line: 205, column: 6, scope: !1904)
!1925 = !DILocation(line: 206, column: 3, scope: !1923)
!1926 = !{ptr @index_stream_end}
!1927 = !DILocation(line: 208, column: 2, scope: !1904)
!1928 = !DILocation(line: 209, column: 2, scope: !1904)
