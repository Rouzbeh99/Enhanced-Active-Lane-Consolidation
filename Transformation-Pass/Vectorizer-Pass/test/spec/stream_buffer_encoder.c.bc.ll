; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/stream_buffer_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_stream_buffer_bound(i64 noundef %uncompressed_size) local_unnamed_addr #0 !dbg !38 {
entry:
  call void @llvm.dbg.value(metadata i64 %uncompressed_size, metadata !46, metadata !DIExpression()), !dbg !49
  %call = tail call i64 @lzma_block_buffer_bound(i64 noundef %uncompressed_size) #5, !dbg !50
  call void @llvm.dbg.value(metadata i64 %call, metadata !47, metadata !DIExpression()), !dbg !49
  %cmp = icmp eq i64 %call, 0, !dbg !51
  %cmp1 = icmp sgt i64 %call, 9223372036854775759
  %or.cond = or i1 %cmp, %cmp1, !dbg !53
  %add = add i64 %call, 48
  %spec.select = select i1 %or.cond, i64 0, i64 %add, !dbg !53
  ret i64 %spec.select, !dbg !54
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !55 i64 @lzma_block_buffer_bound(i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_buffer_encode(ptr noundef %filters, i32 noundef %check, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos_ptr, i64 noundef %out_size) local_unnamed_addr #0 !dbg !58 {
entry:
  %out_pos = alloca i64, align 8
  %stream_flags = alloca %struct.lzma_stream_flags, align 8
  %block = alloca %struct.lzma_block, align 8
  call void @llvm.dbg.value(metadata ptr %filters, metadata !97, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %check, metadata !98, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !99, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata ptr %in, metadata !100, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !101, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata ptr %out, metadata !102, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata ptr %out_pos_ptr, metadata !103, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !104, metadata !DIExpression()), !dbg !180
  %cmp = icmp eq ptr %filters, null, !dbg !181
  %cmp1 = icmp ugt i32 %check, 15
  %or.cond = or i1 %cmp, %cmp1, !dbg !183
  br i1 %or.cond, label %return, label %lor.lhs.false2, !dbg !183

lor.lhs.false2:                                   ; preds = %entry
  %cmp3 = icmp eq ptr %in, null, !dbg !184
  %cmp4 = icmp ne i64 %in_size, 0
  %or.cond62 = and i1 %cmp3, %cmp4, !dbg !185
  %cmp6 = icmp eq ptr %out, null
  %or.cond63 = or i1 %or.cond62, %cmp6, !dbg !185
  %cmp8 = icmp eq ptr %out_pos_ptr, null
  %or.cond64 = or i1 %or.cond63, %cmp8, !dbg !185
  br i1 %or.cond64, label %return, label %lor.lhs.false9, !dbg !185

lor.lhs.false9:                                   ; preds = %lor.lhs.false2
  %0 = load i64, ptr %out_pos_ptr, align 8, !dbg !186, !tbaa !187
  %cmp10 = icmp ugt i64 %0, %out_size, !dbg !191
  br i1 %cmp10, label %return, label %if.end, !dbg !192

if.end:                                           ; preds = %lor.lhs.false9
  %call = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %check) #5, !dbg !193
  %tobool.not = icmp eq i8 %call, 0, !dbg !193
  br i1 %tobool.not, label %return, label %if.end12, !dbg !195

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_pos) #5, !dbg !196
  %1 = load i64, ptr %out_pos_ptr, align 8, !dbg !197, !tbaa !187
  call void @llvm.dbg.value(metadata i64 %1, metadata !105, metadata !DIExpression()), !dbg !180
  %sub = sub i64 %out_size, %1, !dbg !198
  %cmp13 = icmp ult i64 %sub, 25, !dbg !200
  br i1 %cmp13, label %cleanup60, label %if.end15, !dbg !201

if.end15:                                         ; preds = %if.end12
  %sub16 = add i64 %out_size, -12, !dbg !202
  call void @llvm.dbg.value(metadata i64 %sub16, metadata !104, metadata !DIExpression()), !dbg !180
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %stream_flags) #5, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %stream_flags, metadata !106, metadata !DIExpression()), !dbg !204
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags, i8 0, i64 56, i1 false), !dbg !204
  %check17 = getelementptr inbounds %struct.lzma_stream_flags, ptr %stream_flags, i64 0, i32 2, !dbg !205
  store i32 %check, ptr %check17, align 8, !dbg !205, !tbaa !206
  call void @llvm.dbg.value(metadata i64 %1, metadata !105, metadata !DIExpression()), !dbg !180
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %1, !dbg !209
  %call18 = call i32 @lzma_stream_header_encode(ptr noundef nonnull %stream_flags, ptr noundef %add.ptr) #5, !dbg !211
  %cmp19.not = icmp eq i32 %call18, 0, !dbg !212
  br i1 %cmp19.not, label %if.end21, label %cleanup59, !dbg !213

if.end21:                                         ; preds = %if.end15
  call void @llvm.dbg.value(metadata i64 %1, metadata !105, metadata !DIExpression()), !dbg !180
  %add = add i64 %1, 12, !dbg !214
  call void @llvm.dbg.value(metadata i64 %add, metadata !105, metadata !DIExpression()), !dbg !180
  store i64 %add, ptr %out_pos, align 8, !dbg !214, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %block) #5, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %block, metadata !132, metadata !DIExpression()), !dbg !216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %block, i8 0, i64 208, i1 false), !dbg !216
  %check22 = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 2, !dbg !217
  store i32 %check, ptr %check22, align 8, !dbg !217, !tbaa !218
  %filters23 = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 5, !dbg !217
  store ptr %filters, ptr %filters23, align 8, !dbg !217, !tbaa !221
  %cmp24.not = icmp eq i64 %in_size, 0, !dbg !222
  br i1 %cmp24.not, label %if.end30, label %do.body, !dbg !223

do.body:                                          ; preds = %if.end21
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !105, metadata !DIExpression(DW_OP_deref)), !dbg !180
  %call26 = call i32 @lzma_block_buffer_encode(ptr noundef nonnull %block, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %sub16) #5, !dbg !224
  call void @llvm.dbg.value(metadata i32 %call26, metadata !169, metadata !DIExpression()), !dbg !225
  %cmp27.not = icmp eq i32 %call26, 0, !dbg !226
  br i1 %cmp27.not, label %if.end30.thread, label %cleanup58

if.end30:                                         ; preds = %if.end21
  %call31 = call ptr @lzma_index_init(ptr noundef %allocator) #5, !dbg !228
  call void @llvm.dbg.value(metadata ptr %call31, metadata !173, metadata !DIExpression()), !dbg !229
  %cmp32 = icmp eq ptr %call31, null, !dbg !230
  br i1 %cmp32, label %cleanup58, label %if.end44, !dbg !232

if.end30.thread:                                  ; preds = %do.body
  %call3196 = call ptr @lzma_index_init(ptr noundef %allocator) #5, !dbg !228
  call void @llvm.dbg.value(metadata ptr %call31, metadata !173, metadata !DIExpression()), !dbg !229
  %cmp3297 = icmp eq ptr %call3196, null, !dbg !230
  br i1 %cmp3297, label %cleanup58, label %if.end39, !dbg !232

if.end39:                                         ; preds = %if.end30.thread
  call void @llvm.dbg.value(metadata i32 0, metadata !179, metadata !DIExpression()), !dbg !229
  %call37 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %block) #5, !dbg !233
  %uncompressed_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 4, !dbg !235
  %2 = load i64, ptr %uncompressed_size, align 8, !dbg !235, !tbaa !236
  %call38 = call i32 @lzma_index_append(ptr noundef nonnull %call3196, ptr noundef %allocator, i64 noundef %call37, i64 noundef %2) #5, !dbg !237
  call void @llvm.dbg.value(metadata i32 %call38, metadata !179, metadata !DIExpression()), !dbg !229
  %cmp40 = icmp eq i32 %call38, 0, !dbg !238
  br i1 %cmp40, label %if.end44, label %if.end44.thread, !dbg !240

if.end44.thread:                                  ; preds = %if.end39
  call void @llvm.dbg.value(metadata i32 %call42, metadata !179, metadata !DIExpression()), !dbg !229
  call void @lzma_index_end(ptr noundef nonnull %call3196, ptr noundef %allocator) #5, !dbg !241
  br label %cleanup58

if.end44:                                         ; preds = %if.end39, %if.end30
  %call3199103113 = phi ptr [ %call3196, %if.end39 ], [ %call31, %if.end30 ]
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !105, metadata !DIExpression(DW_OP_deref)), !dbg !180
  %call42 = call i32 @lzma_index_buffer_encode(ptr noundef nonnull %call3199103113, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %sub16) #5, !dbg !242
  call void @llvm.dbg.value(metadata i32 %call42, metadata !179, metadata !DIExpression()), !dbg !229
  %call43 = call i64 @lzma_index_size(ptr noundef nonnull %call3199103113) #5, !dbg !244
  %backward_size = getelementptr inbounds %struct.lzma_stream_flags, ptr %stream_flags, i64 0, i32 1, !dbg !245
  store i64 %call43, ptr %backward_size, align 8, !dbg !246, !tbaa !247
  call void @lzma_index_end(ptr noundef nonnull %call3199103113, ptr noundef %allocator) #5, !dbg !241
  %cmp45.not = icmp eq i32 %call42, 0, !dbg !248
  br i1 %cmp45.not, label %cleanup.cont51, label %cleanup58

cleanup.cont51:                                   ; preds = %if.end44
  %3 = load i64, ptr %out_pos, align 8, !dbg !250, !tbaa !187
  call void @llvm.dbg.value(metadata i64 %3, metadata !105, metadata !DIExpression()), !dbg !180
  %add.ptr52 = getelementptr inbounds i8, ptr %out, i64 %3, !dbg !252
  %call53 = call i32 @lzma_stream_footer_encode(ptr noundef nonnull %stream_flags, ptr noundef %add.ptr52) #5, !dbg !253
  %cmp54.not = icmp eq i32 %call53, 0, !dbg !254
  br i1 %cmp54.not, label %if.end56, label %cleanup58, !dbg !255

if.end56:                                         ; preds = %cleanup.cont51
  %4 = load i64, ptr %out_pos, align 8, !dbg !256, !tbaa !187
  call void @llvm.dbg.value(metadata i64 %4, metadata !105, metadata !DIExpression()), !dbg !180
  %add57 = add i64 %4, 12, !dbg !256
  call void @llvm.dbg.value(metadata i64 %add57, metadata !105, metadata !DIExpression()), !dbg !180
  store i64 %add57, ptr %out_pos, align 8, !dbg !256, !tbaa !187
  store i64 %add57, ptr %out_pos_ptr, align 8, !dbg !257, !tbaa !187
  br label %cleanup58, !dbg !258

cleanup58:                                        ; preds = %if.end44.thread, %if.end30.thread, %if.end30, %if.end44, %cleanup.cont51, %do.body, %if.end56
  %retval.4 = phi i32 [ 0, %if.end56 ], [ %call26, %do.body ], [ 11, %cleanup.cont51 ], [ 5, %if.end30.thread ], [ 5, %if.end30 ], [ %call42, %if.end44 ], [ %call38, %if.end44.thread ], !dbg !180
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %block) #5, !dbg !259
  br label %cleanup59

cleanup59:                                        ; preds = %if.end15, %cleanup58
  %retval.5 = phi i32 [ %retval.4, %cleanup58 ], [ 11, %if.end15 ], !dbg !180
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %stream_flags) #5, !dbg !259
  br label %cleanup60

cleanup60:                                        ; preds = %if.end12, %cleanup59
  %retval.6 = phi i32 [ %retval.5, %cleanup59 ], [ 10, %if.end12 ], !dbg !180
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_pos) #5, !dbg !259
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false9, %lor.lhs.false2, %cleanup60
  %retval.7 = phi i32 [ %retval.6, %cleanup60 ], [ 11, %lor.lhs.false2 ], [ 11, %lor.lhs.false9 ], [ 11, %entry ], [ 3, %if.end ], !dbg !180
  ret i32 %retval.7, !dbg !259
}

declare !dbg !260 zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare !dbg !263 i32 @lzma_stream_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !268 i32 @lzma_block_buffer_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !272 ptr @lzma_index_init(ptr noundef) local_unnamed_addr #3

declare !dbg !275 i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !278 i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #3

declare !dbg !283 i32 @lzma_index_buffer_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !288 i64 @lzma_index_size(ptr noundef) local_unnamed_addr #3

declare !dbg !291 void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !294 i32 @lzma_stream_footer_encode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_buffer_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "c86907379f940eabe0025fd9fc4e4d6b")
!2 = !{!3, !19, !26}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 27, baseType: !5, size: 32, elements: !21)
!20 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!23 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!24 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!25 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !27)
!27 = !{!28}
!28 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!29 = !{!30, !5}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 7, !"PIC Level", i32 2}
!35 = !{i32 7, !"PIE Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 2}
!37 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!38 = distinct !DISubprogram(name: "lzma_stream_buffer_bound", scope: !39, file: !39, line: 26, type: !40, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !45)
!39 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/stream_buffer_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c86907379f940eabe0025fd9fc4e4d6b")
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !42}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !{!46, !47}
!46 = !DILocalVariable(name: "uncompressed_size", arg: 1, scope: !38, file: !39, line: 26, type: !42)
!47 = !DILocalVariable(name: "block_bound", scope: !38, file: !39, line: 29, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!49 = !DILocation(line: 0, scope: !38)
!50 = !DILocation(line: 29, column: 29, scope: !38)
!51 = !DILocation(line: 30, column: 18, scope: !52)
!52 = distinct !DILexicalBlock(scope: !38, file: !39, line: 30, column: 6)
!53 = !DILocation(line: 30, column: 6, scope: !38)
!54 = !DILocation(line: 40, column: 1, scope: !38)
!55 = !DISubprogram(name: "lzma_block_buffer_bound", scope: !56, file: !56, line: 451, type: !40, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!56 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/block.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!57 = !{}
!58 = distinct !DISubprogram(name: "lzma_stream_buffer_encode", scope: !39, file: !39, line: 44, type: !59, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !62, !75, !76, !89, !42, !94, !95, !42}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !64, line: 65, baseType: !65)
!64 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 43, size: 128, elements: !66)
!66 = !{!67, !74}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !65, file: !64, line: 54, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !69, line: 63, baseType: !70)
!69 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !71, line: 27, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !73, line: 45, baseType: !44)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!74 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !65, file: !64, line: 63, baseType: !30, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !79)
!79 = !{!80, !84, !88}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !78, file: !4, line: 376, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!30, !30, !42, !42}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !78, file: !4, line: 390, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !30, !30}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !78, file: !4, line: 401, baseType: !30, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !71, line: 24, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !73, line: 38, baseType: !93)
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !132, !169, !173, !179}
!97 = !DILocalVariable(name: "filters", arg: 1, scope: !58, file: !39, line: 44, type: !62)
!98 = !DILocalVariable(name: "check", arg: 2, scope: !58, file: !39, line: 44, type: !75)
!99 = !DILocalVariable(name: "allocator", arg: 3, scope: !58, file: !39, line: 45, type: !76)
!100 = !DILocalVariable(name: "in", arg: 4, scope: !58, file: !39, line: 45, type: !89)
!101 = !DILocalVariable(name: "in_size", arg: 5, scope: !58, file: !39, line: 45, type: !42)
!102 = !DILocalVariable(name: "out", arg: 6, scope: !58, file: !39, line: 46, type: !94)
!103 = !DILocalVariable(name: "out_pos_ptr", arg: 7, scope: !58, file: !39, line: 46, type: !95)
!104 = !DILocalVariable(name: "out_size", arg: 8, scope: !58, file: !39, line: 46, type: !42)
!105 = !DILocalVariable(name: "out_pos", scope: !58, file: !39, line: 64, type: !42)
!106 = !DILocalVariable(name: "stream_flags", scope: !58, file: !39, line: 76, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !108, line: 105, baseType: !109)
!108 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/stream_flags.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 33, size: 448, elements: !110)
!110 = !{!111, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !109, file: !108, line: 51, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !71, line: 26, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !73, line: 42, baseType: !5)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !109, file: !108, line: 69, baseType: !68, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !109, file: !108, line: 79, baseType: !75, size: 32, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !109, file: !108, line: 90, baseType: !117, size: 32, offset: 160)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !109, file: !108, line: 91, baseType: !117, size: 32, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !109, file: !108, line: 92, baseType: !117, size: 32, offset: 224)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !109, file: !108, line: 93, baseType: !117, size: 32, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !109, file: !108, line: 94, baseType: !122, size: 8, offset: 288)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !93)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !109, file: !108, line: 95, baseType: !122, size: 8, offset: 296)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !109, file: !108, line: 96, baseType: !122, size: 8, offset: 304)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !109, file: !108, line: 97, baseType: !122, size: 8, offset: 312)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !109, file: !108, line: 98, baseType: !122, size: 8, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !109, file: !108, line: 99, baseType: !122, size: 8, offset: 328)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !109, file: !108, line: 100, baseType: !122, size: 8, offset: 336)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !109, file: !108, line: 101, baseType: !122, size: 8, offset: 344)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !109, file: !108, line: 102, baseType: !112, size: 32, offset: 352)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !109, file: !108, line: 103, baseType: !112, size: 32, offset: 384)
!132 = !DILocalVariable(name: "block", scope: !58, file: !39, line: 88, type: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !56, line: 245, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 30, size: 1664, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !134, file: !56, line: 47, baseType: !112, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !134, file: !56, line: 67, baseType: !112, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !134, file: !56, line: 88, baseType: !75, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !134, file: !56, line: 143, baseType: !68, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !134, file: !56, line: 167, baseType: !68, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !134, file: !56, line: 195, baseType: !62, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !134, file: !56, line: 212, baseType: !143, size: 512, offset: 320)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !134, file: !56, line: 221, baseType: !30, size: 64, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !134, file: !56, line: 222, baseType: !30, size: 64, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !134, file: !56, line: 223, baseType: !30, size: 64, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !134, file: !56, line: 224, baseType: !112, size: 32, offset: 1024)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !134, file: !56, line: 225, baseType: !112, size: 32, offset: 1056)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !134, file: !56, line: 226, baseType: !68, size: 64, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !134, file: !56, line: 227, baseType: !68, size: 64, offset: 1152)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !134, file: !56, line: 228, baseType: !68, size: 64, offset: 1216)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !134, file: !56, line: 229, baseType: !68, size: 64, offset: 1280)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !134, file: !56, line: 230, baseType: !68, size: 64, offset: 1344)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !134, file: !56, line: 231, baseType: !68, size: 64, offset: 1408)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !134, file: !56, line: 232, baseType: !117, size: 32, offset: 1472)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !134, file: !56, line: 233, baseType: !117, size: 32, offset: 1504)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !134, file: !56, line: 234, baseType: !117, size: 32, offset: 1536)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !134, file: !56, line: 235, baseType: !117, size: 32, offset: 1568)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !134, file: !56, line: 236, baseType: !122, size: 8, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !134, file: !56, line: 237, baseType: !122, size: 8, offset: 1608)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !134, file: !56, line: 238, baseType: !122, size: 8, offset: 1616)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !134, file: !56, line: 239, baseType: !122, size: 8, offset: 1624)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !134, file: !56, line: 240, baseType: !122, size: 8, offset: 1632)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !134, file: !56, line: 241, baseType: !122, size: 8, offset: 1640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !134, file: !56, line: 242, baseType: !122, size: 8, offset: 1648)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !134, file: !56, line: 243, baseType: !122, size: 8, offset: 1656)
!169 = !DILocalVariable(name: "ret_", scope: !170, file: !39, line: 95, type: !172)
!170 = distinct !DILexicalBlock(scope: !171, file: !39, line: 95, column: 3)
!171 = distinct !DILexicalBlock(scope: !58, file: !39, line: 94, column: 6)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!173 = !DILocalVariable(name: "i", scope: !174, file: !39, line: 103, type: !175)
!174 = distinct !DILexicalBlock(scope: !58, file: !39, line: 99, column: 2)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index", file: !177, line: 37, baseType: !178)
!177 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/index.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "923fbd07d3b348bf7a676d089b5c066f")
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_s", file: !177, line: 37, flags: DIFlagFwdDecl)
!179 = !DILocalVariable(name: "ret", scope: !174, file: !39, line: 107, type: !61)
!180 = !DILocation(line: 0, scope: !58)
!181 = !DILocation(line: 49, column: 14, scope: !182)
!182 = distinct !DILexicalBlock(scope: !58, file: !39, line: 49, column: 6)
!183 = !DILocation(line: 49, column: 22, scope: !182)
!184 = !DILocation(line: 50, column: 11, scope: !182)
!185 = !DILocation(line: 50, column: 19, scope: !182)
!186 = !DILocation(line: 51, column: 30, scope: !182)
!187 = !{!188, !188, i64 0}
!188 = !{!"long", !189, i64 0}
!189 = !{!"omnipotent char", !190, i64 0}
!190 = !{!"Simple C/C++ TBAA"}
!191 = !DILocation(line: 51, column: 43, scope: !182)
!192 = !DILocation(line: 49, column: 6, scope: !58)
!193 = !DILocation(line: 54, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !58, file: !39, line: 54, column: 6)
!195 = !DILocation(line: 54, column: 6, scope: !58)
!196 = !DILocation(line: 64, column: 2, scope: !58)
!197 = !DILocation(line: 64, column: 19, scope: !58)
!198 = !DILocation(line: 68, column: 15, scope: !199)
!199 = distinct !DILexicalBlock(scope: !58, file: !39, line: 68, column: 6)
!200 = !DILocation(line: 68, column: 25, scope: !199)
!201 = !DILocation(line: 68, column: 6, scope: !58)
!202 = !DILocation(line: 73, column: 11, scope: !58)
!203 = !DILocation(line: 76, column: 2, scope: !58)
!204 = !DILocation(line: 76, column: 20, scope: !58)
!205 = !DILocation(line: 76, column: 35, scope: !58)
!206 = !{!207, !189, i64 16}
!207 = !{!"", !208, i64 0, !188, i64 8, !189, i64 16, !189, i64 20, !189, i64 24, !189, i64 28, !189, i64 32, !189, i64 36, !189, i64 37, !189, i64 38, !189, i64 39, !189, i64 40, !189, i64 41, !189, i64 42, !189, i64 43, !208, i64 44, !208, i64 48}
!208 = !{!"int", !189, i64 0}
!209 = !DILocation(line: 81, column: 51, scope: !210)
!210 = distinct !DILexicalBlock(scope: !58, file: !39, line: 81, column: 6)
!211 = !DILocation(line: 81, column: 6, scope: !210)
!212 = !DILocation(line: 82, column: 4, scope: !210)
!213 = !DILocation(line: 81, column: 6, scope: !58)
!214 = !DILocation(line: 85, column: 10, scope: !58)
!215 = !DILocation(line: 88, column: 2, scope: !58)
!216 = !DILocation(line: 88, column: 13, scope: !58)
!217 = !DILocation(line: 88, column: 21, scope: !58)
!218 = !{!219, !189, i64 8}
!219 = !{!"", !208, i64 0, !208, i64 4, !189, i64 8, !188, i64 16, !188, i64 24, !220, i64 32, !189, i64 40, !220, i64 104, !220, i64 112, !220, i64 120, !208, i64 128, !208, i64 132, !188, i64 136, !188, i64 144, !188, i64 152, !188, i64 160, !188, i64 168, !188, i64 176, !189, i64 184, !189, i64 188, !189, i64 192, !189, i64 196, !189, i64 200, !189, i64 201, !189, i64 202, !189, i64 203, !189, i64 204, !189, i64 205, !189, i64 206, !189, i64 207}
!220 = !{!"any pointer", !189, i64 0}
!221 = !{!219, !220, i64 32}
!222 = !DILocation(line: 94, column: 14, scope: !171)
!223 = !DILocation(line: 94, column: 6, scope: !58)
!224 = !DILocation(line: 95, column: 3, scope: !170)
!225 = !DILocation(line: 0, scope: !170)
!226 = !DILocation(line: 95, column: 3, scope: !227)
!227 = distinct !DILexicalBlock(scope: !170, file: !39, line: 95, column: 3)
!228 = !DILocation(line: 103, column: 19, scope: !174)
!229 = !DILocation(line: 0, scope: !174)
!230 = !DILocation(line: 104, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !174, file: !39, line: 104, column: 7)
!232 = !DILocation(line: 104, column: 7, scope: !174)
!233 = !DILocation(line: 111, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !174, file: !39, line: 109, column: 7)
!235 = !DILocation(line: 112, column: 12, scope: !234)
!236 = !{!219, !188, i64 24}
!237 = !DILocation(line: 110, column: 10, scope: !234)
!238 = !DILocation(line: 116, column: 11, scope: !239)
!239 = distinct !DILexicalBlock(scope: !174, file: !39, line: 116, column: 7)
!240 = !DILocation(line: 116, column: 7, scope: !174)
!241 = !DILocation(line: 123, column: 3, scope: !174)
!242 = !DILocation(line: 117, column: 10, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !39, line: 116, column: 23)
!244 = !DILocation(line: 120, column: 33, scope: !243)
!245 = !DILocation(line: 120, column: 17, scope: !243)
!246 = !DILocation(line: 120, column: 31, scope: !243)
!247 = !{!207, !188, i64 8}
!248 = !DILocation(line: 125, column: 11, scope: !249)
!249 = distinct !DILexicalBlock(scope: !174, file: !39, line: 125, column: 7)
!250 = !DILocation(line: 130, column: 53, scope: !251)
!251 = distinct !DILexicalBlock(scope: !58, file: !39, line: 130, column: 6)
!252 = !DILocation(line: 130, column: 51, scope: !251)
!253 = !DILocation(line: 130, column: 6, scope: !251)
!254 = !DILocation(line: 131, column: 4, scope: !251)
!255 = !DILocation(line: 130, column: 6, scope: !58)
!256 = !DILocation(line: 134, column: 10, scope: !58)
!257 = !DILocation(line: 138, column: 15, scope: !58)
!258 = !DILocation(line: 139, column: 2, scope: !58)
!259 = !DILocation(line: 140, column: 1, scope: !58)
!260 = !DISubprogram(name: "lzma_check_is_supported", scope: !20, file: !20, line: 81, type: !261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!261 = !DISubroutineType(types: !262)
!262 = !{!122, !75}
!263 = !DISubprogram(name: "lzma_stream_header_encode", scope: !108, file: !108, line: 122, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!264 = !DISubroutineType(types: !265)
!265 = !{!61, !266, !94}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!268 = !DISubprogram(name: "lzma_block_buffer_encode", scope: !56, file: !56, line: 492, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!269 = !DISubroutineType(types: !270)
!270 = !{!61, !271, !76, !89, !42, !94, !95, !42}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!272 = !DISubprogram(name: "lzma_index_init", scope: !177, file: !177, line: 306, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!273 = !DISubroutineType(types: !274)
!274 = !{!175, !76}
!275 = !DISubprogram(name: "lzma_index_append", scope: !177, file: !177, line: 343, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!276 = !DISubroutineType(types: !277)
!277 = !{!61, !175, !76, !68, !68}
!278 = !DISubprogram(name: "lzma_block_unpadded_size", scope: !56, file: !56, line: 391, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!279 = !DISubroutineType(types: !280)
!280 = !{!68, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!283 = !DISubprogram(name: "lzma_index_buffer_encode", scope: !177, file: !177, line: 648, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!284 = !DISubroutineType(types: !285)
!285 = !{!61, !286, !94, !95, !42}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!288 = !DISubprogram(name: "lzma_index_size", scope: !177, file: !177, line: 424, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!289 = !DISubroutineType(types: !290)
!290 = !{!68, !286}
!291 = !DISubprogram(name: "lzma_index_end", scope: !177, file: !177, line: 315, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !175, !76}
!294 = !DISubprogram(name: "lzma_stream_footer_encode", scope: !108, file: !108, line: 139, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
