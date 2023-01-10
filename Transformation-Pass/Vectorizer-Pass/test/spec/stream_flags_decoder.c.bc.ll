; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/stream_flags_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_flags_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@lzma_header_magic = external constant [6 x i8], align 1
@lzma_footer_magic = external constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_header_decode(ptr nocapture noundef writeonly %options, ptr noundef %in) local_unnamed_addr #0 !dbg !41 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !82, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata ptr %in, metadata !83, metadata !DIExpression()), !dbg !86
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %in, ptr noundef nonnull dereferenceable(6) @lzma_header_magic, i64 6), !dbg !87
  %cmp.not = icmp eq i32 %bcmp, 0, !dbg !89
  br i1 %cmp.not, label %if.end, label %return, !dbg !90

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 6, !dbg !91
  %call1 = tail call i32 @lzma_crc32(ptr noundef nonnull %add.ptr, i64 noundef 2, i32 noundef 0) #4, !dbg !92
  call void @llvm.dbg.value(metadata i32 %call1, metadata !84, metadata !DIExpression()), !dbg !86
  %add.ptr3 = getelementptr inbounds i8, ptr %in, i64 8, !dbg !93
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !95, metadata !DIExpression()), !dbg !102
  %0 = load i8, ptr %add.ptr3, align 1, !dbg !104, !tbaa !105
  %conv.i = zext i8 %0 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !101, metadata !DIExpression()), !dbg !102
  %arrayidx1.i = getelementptr inbounds i8, ptr %in, i64 9, !dbg !109
  %1 = load i8, ptr %arrayidx1.i, align 1, !dbg !109, !tbaa !105
  %conv2.i = zext i8 %1 to i32, !dbg !110
  %shl.i = shl nuw nsw i32 %conv2.i, 8, !dbg !111
  %or.i = or i32 %shl.i, %conv.i, !dbg !112
  call void @llvm.dbg.value(metadata i32 %or.i, metadata !101, metadata !DIExpression()), !dbg !102
  %arrayidx3.i = getelementptr inbounds i8, ptr %in, i64 10, !dbg !113
  %2 = load i8, ptr %arrayidx3.i, align 1, !dbg !113, !tbaa !105
  %conv4.i = zext i8 %2 to i32, !dbg !114
  %shl5.i = shl nuw nsw i32 %conv4.i, 16, !dbg !115
  %or6.i = or i32 %or.i, %shl5.i, !dbg !116
  call void @llvm.dbg.value(metadata i32 %or6.i, metadata !101, metadata !DIExpression()), !dbg !102
  %arrayidx7.i = getelementptr inbounds i8, ptr %in, i64 11, !dbg !117
  %3 = load i8, ptr %arrayidx7.i, align 1, !dbg !117, !tbaa !105
  %conv8.i = zext i8 %3 to i32, !dbg !118
  %shl9.i = shl nuw i32 %conv8.i, 24, !dbg !119
  %or10.i = or i32 %or6.i, %shl9.i, !dbg !120
  call void @llvm.dbg.value(metadata i32 %or10.i, metadata !101, metadata !DIExpression()), !dbg !102
  %cmp5.not = icmp eq i32 %call1, %or10.i, !dbg !121
  br i1 %cmp5.not, label %if.end7, label %return, !dbg !122

if.end7:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %options, metadata !123, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !129, metadata !DIExpression()), !dbg !130
  %4 = load i8, ptr %add.ptr, align 1, !dbg !133, !tbaa !105
  %cmp.not.i = icmp eq i8 %4, 0, !dbg !135
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %return, !dbg !136

lor.lhs.false.i:                                  ; preds = %if.end7
  %arrayidx2.i = getelementptr inbounds i8, ptr %in, i64 7, !dbg !137
  %5 = load i8, ptr %arrayidx2.i, align 1, !dbg !137, !tbaa !105
  %tobool.not.i = icmp ult i8 %5, 16, !dbg !138
  br i1 %tobool.not.i, label %if.end11, label %return, !dbg !139

if.end11:                                         ; preds = %lor.lhs.false.i
  store i32 0, ptr %options, align 8, !dbg !140, !tbaa !141
  %6 = load i8, ptr %arrayidx2.i, align 1, !dbg !145, !tbaa !105
  %7 = and i8 %6, 15, !dbg !146
  %and6.i = zext i8 %7 to i32, !dbg !146
  %check.i = getelementptr inbounds %struct.lzma_stream_flags, ptr %options, i64 0, i32 2, !dbg !147
  store i32 %and6.i, ptr %check.i, align 8, !dbg !148, !tbaa !149
  %backward_size = getelementptr inbounds %struct.lzma_stream_flags, ptr %options, i64 0, i32 1, !dbg !150
  store i64 -1, ptr %backward_size, align 8, !dbg !151, !tbaa !152
  br label %return, !dbg !153

return:                                           ; preds = %if.end7, %lor.lhs.false.i, %if.end11, %if.end, %entry
  %retval.1 = phi i32 [ 7, %entry ], [ 0, %if.end11 ], [ 9, %if.end ], [ 8, %lor.lhs.false.i ], [ 8, %if.end7 ], !dbg !86
  ret i32 %retval.1, !dbg !154
}

declare !dbg !155 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_footer_decode(ptr nocapture noundef writeonly %options, ptr noundef %in) local_unnamed_addr #0 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !163, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata ptr %in, metadata !164, metadata !DIExpression()), !dbg !166
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 8, !dbg !167
  %add.ptr1 = getelementptr inbounds i8, ptr %in, i64 10, !dbg !169
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %add.ptr1, ptr noundef nonnull dereferenceable(2) @lzma_footer_magic, i64 2), !dbg !170
  %cmp.not = icmp eq i32 %bcmp, 0, !dbg !171
  br i1 %cmp.not, label %if.end, label %return, !dbg !172

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr inbounds i8, ptr %in, i64 4, !dbg !173
  %call3 = tail call i32 @lzma_crc32(ptr noundef nonnull %add.ptr2, i64 noundef 6, i32 noundef 0) #4, !dbg !174
  call void @llvm.dbg.value(metadata i32 %call3, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata ptr %in, metadata !95, metadata !DIExpression()), !dbg !175
  %0 = load i8, ptr %in, align 1, !dbg !178, !tbaa !105
  %conv.i = zext i8 %0 to i32, !dbg !179
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !101, metadata !DIExpression()), !dbg !175
  %arrayidx1.i = getelementptr inbounds i8, ptr %in, i64 1, !dbg !180
  %1 = load i8, ptr %arrayidx1.i, align 1, !dbg !180, !tbaa !105
  %conv2.i = zext i8 %1 to i32, !dbg !181
  %shl.i = shl nuw nsw i32 %conv2.i, 8, !dbg !182
  %or.i = or i32 %shl.i, %conv.i, !dbg !183
  call void @llvm.dbg.value(metadata i32 %or.i, metadata !101, metadata !DIExpression()), !dbg !175
  %arrayidx3.i = getelementptr inbounds i8, ptr %in, i64 2, !dbg !184
  %2 = load i8, ptr %arrayidx3.i, align 1, !dbg !184, !tbaa !105
  %conv4.i = zext i8 %2 to i32, !dbg !185
  %shl5.i = shl nuw nsw i32 %conv4.i, 16, !dbg !186
  %or6.i = or i32 %or.i, %shl5.i, !dbg !187
  call void @llvm.dbg.value(metadata i32 %or6.i, metadata !101, metadata !DIExpression()), !dbg !175
  %arrayidx7.i = getelementptr inbounds i8, ptr %in, i64 3, !dbg !188
  %3 = load i8, ptr %arrayidx7.i, align 1, !dbg !188, !tbaa !105
  %conv8.i = zext i8 %3 to i32, !dbg !189
  %shl9.i = shl nuw i32 %conv8.i, 24, !dbg !190
  %or10.i = or i32 %or6.i, %shl9.i, !dbg !191
  call void @llvm.dbg.value(metadata i32 %or10.i, metadata !101, metadata !DIExpression()), !dbg !175
  %cmp5.not = icmp eq i32 %call3, %or10.i, !dbg !192
  br i1 %cmp5.not, label %if.end7, label %return, !dbg !193

if.end7:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %options, metadata !123, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !129, metadata !DIExpression()), !dbg !194
  %4 = load i8, ptr %add.ptr, align 1, !dbg !197, !tbaa !105
  %cmp.not.i = icmp eq i8 %4, 0, !dbg !198
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %return, !dbg !199

lor.lhs.false.i:                                  ; preds = %if.end7
  %arrayidx2.i = getelementptr inbounds i8, ptr %in, i64 9, !dbg !200
  %5 = load i8, ptr %arrayidx2.i, align 1, !dbg !200, !tbaa !105
  %tobool.not.i = icmp ult i8 %5, 16, !dbg !201
  br i1 %tobool.not.i, label %if.end11, label %return, !dbg !202

if.end11:                                         ; preds = %lor.lhs.false.i
  store i32 0, ptr %options, align 8, !dbg !203, !tbaa !141
  %6 = load i8, ptr %arrayidx2.i, align 1, !dbg !204, !tbaa !105
  %7 = and i8 %6, 15, !dbg !205
  %and6.i = zext i8 %7 to i32, !dbg !205
  %check.i = getelementptr inbounds %struct.lzma_stream_flags, ptr %options, i64 0, i32 2, !dbg !206
  store i32 %and6.i, ptr %check.i, align 8, !dbg !207, !tbaa !149
  call void @llvm.dbg.value(metadata ptr %add.ptr2, metadata !95, metadata !DIExpression()), !dbg !208
  %8 = load i8, ptr %add.ptr2, align 1, !dbg !210, !tbaa !105
  %conv.i23 = zext i8 %8 to i64, !dbg !211
  call void @llvm.dbg.value(metadata i8 %8, metadata !101, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !208
  %arrayidx1.i24 = getelementptr inbounds i8, ptr %in, i64 5, !dbg !212
  %9 = load i8, ptr %arrayidx1.i24, align 1, !dbg !212, !tbaa !105
  %conv2.i25 = zext i8 %9 to i64, !dbg !213
  call void @llvm.dbg.value(metadata !DIArgList(i8 %9, i8 %8), metadata !101, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !208
  %arrayidx3.i28 = getelementptr inbounds i8, ptr %in, i64 6, !dbg !214
  %10 = load i8, ptr %arrayidx3.i28, align 1, !dbg !214, !tbaa !105
  %conv4.i29 = zext i8 %10 to i64, !dbg !215
  call void @llvm.dbg.value(metadata !DIArgList(i8 %9, i8 %10, i8 %8), metadata !101, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_stack_value)), !dbg !208
  %arrayidx7.i32 = getelementptr inbounds i8, ptr %in, i64 7, !dbg !216
  %11 = load i8, ptr %arrayidx7.i32, align 1, !dbg !216, !tbaa !105
  %conv8.i33 = zext i8 %11 to i64, !dbg !217
  call void @llvm.dbg.value(metadata !DIArgList(i64 %conv2.i25, i64 %conv8.i33, i64 %conv4.i29, i64 %conv.i23), metadata !101, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_shl, DW_OP_or, DW_OP_stack_value)), !dbg !208
  %backward_size = getelementptr inbounds %struct.lzma_stream_flags, ptr %options, i64 0, i32 1, !dbg !218
  %12 = shl nuw nsw i64 %conv8.i33, 26, !dbg !219
  %13 = shl nuw nsw i64 %conv4.i29, 18, !dbg !219
  %14 = shl nuw nsw i64 %conv2.i25, 10, !dbg !219
  %15 = shl nuw nsw i64 %conv.i23, 2, !dbg !219
  %16 = or i64 %14, %15, !dbg !219
  %17 = or i64 %16, %13, !dbg !219
  %add = or i64 %17, %12, !dbg !219
  %mul = add nuw nsw i64 %add, 4, !dbg !219
  store i64 %mul, ptr %backward_size, align 8, !dbg !220, !tbaa !152
  br label %return, !dbg !221

return:                                           ; preds = %if.end7, %lor.lhs.false.i, %if.end11, %if.end, %entry
  %retval.1 = phi i32 [ 7, %entry ], [ 0, %if.end11 ], [ 9, %if.end ], [ 8, %lor.lhs.false.i ], [ 8, %if.end7 ], !dbg !166
  ret i32 %retval.1, !dbg !222
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_flags_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "a6d63bd83f97b1aa444916dbbbfa60b1")
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
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 26, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !33, line: 42, baseType: !5)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!34 = !{i32 7, !"Dwarf Version", i32 5}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 4}
!37 = !{i32 7, !"PIC Level", i32 2}
!38 = !{i32 7, !"PIE Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 2}
!40 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!41 = distinct !DISubprogram(name: "lzma_stream_header_decode", scope: !42, file: !42, line: 31, type: !43, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!42 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/stream_flags_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a6d63bd83f97b1aa444916dbbbfa60b1")
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !46, !77}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !48, line: 105, baseType: !49)
!48 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/stream_flags.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 33, size: 448, elements: !50)
!50 = !{!51, !52, !58, !60, !62, !63, !64, !65, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !49, file: !48, line: 51, baseType: !30, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !49, file: !48, line: 69, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !54, line: 63, baseType: !55)
!54 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !31, line: 27, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !33, line: 45, baseType: !57)
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !49, file: !48, line: 79, baseType: !59, size: 32, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !49, file: !48, line: 90, baseType: !61, size: 32, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !49, file: !48, line: 91, baseType: !61, size: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !49, file: !48, line: 92, baseType: !61, size: 32, offset: 224)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !49, file: !48, line: 93, baseType: !61, size: 32, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !49, file: !48, line: 94, baseType: !66, size: 8, offset: 288)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !67)
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !49, file: !48, line: 95, baseType: !66, size: 8, offset: 296)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !49, file: !48, line: 96, baseType: !66, size: 8, offset: 304)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !49, file: !48, line: 97, baseType: !66, size: 8, offset: 312)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !49, file: !48, line: 98, baseType: !66, size: 8, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !49, file: !48, line: 99, baseType: !66, size: 8, offset: 328)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !49, file: !48, line: 100, baseType: !66, size: 8, offset: 336)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !49, file: !48, line: 101, baseType: !66, size: 8, offset: 344)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !49, file: !48, line: 102, baseType: !30, size: 32, offset: 352)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !49, file: !48, line: 103, baseType: !30, size: 32, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !31, line: 24, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !33, line: 38, baseType: !67)
!81 = !{!82, !83, !84}
!82 = !DILocalVariable(name: "options", arg: 1, scope: !41, file: !42, line: 31, type: !46)
!83 = !DILocalVariable(name: "in", arg: 2, scope: !41, file: !42, line: 31, type: !77)
!84 = !DILocalVariable(name: "crc", scope: !41, file: !42, line: 39, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!86 = !DILocation(line: 0, scope: !41)
!87 = !DILocation(line: 34, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !41, file: !42, line: 34, column: 6)
!89 = !DILocation(line: 34, column: 63, scope: !88)
!90 = !DILocation(line: 34, column: 6, scope: !41)
!91 = !DILocation(line: 39, column: 37, scope: !41)
!92 = !DILocation(line: 39, column: 23, scope: !41)
!93 = !DILocation(line: 42, column: 4, scope: !94)
!94 = distinct !DILexicalBlock(scope: !41, file: !42, line: 41, column: 6)
!95 = !DILocalVariable(name: "buf", arg: 1, scope: !96, file: !97, line: 311, type: !77)
!96 = distinct !DISubprogram(name: "unaligned_read32le", scope: !97, file: !97, line: 311, type: !98, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !100)
!97 = !DIFile(filename: "apps/557.xz_r/src/common/tuklib_integer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!98 = !DISubroutineType(types: !99)
!99 = !{!30, !77}
!100 = !{!95, !101}
!101 = !DILocalVariable(name: "num", scope: !96, file: !97, line: 313, type: !30)
!102 = !DILocation(line: 0, scope: !96, inlinedAt: !103)
!103 = distinct !DILocation(line: 41, column: 13, scope: !94)
!104 = !DILocation(line: 313, column: 27, scope: !96, inlinedAt: !103)
!105 = !{!106, !106, i64 0}
!106 = !{!"omnipotent char", !107, i64 0}
!107 = !{!"Simple C/C++ TBAA"}
!108 = !DILocation(line: 313, column: 17, scope: !96, inlinedAt: !103)
!109 = !DILocation(line: 314, column: 19, scope: !96, inlinedAt: !103)
!110 = !DILocation(line: 314, column: 9, scope: !96, inlinedAt: !103)
!111 = !DILocation(line: 314, column: 26, scope: !96, inlinedAt: !103)
!112 = !DILocation(line: 314, column: 6, scope: !96, inlinedAt: !103)
!113 = !DILocation(line: 315, column: 19, scope: !96, inlinedAt: !103)
!114 = !DILocation(line: 315, column: 9, scope: !96, inlinedAt: !103)
!115 = !DILocation(line: 315, column: 26, scope: !96, inlinedAt: !103)
!116 = !DILocation(line: 315, column: 6, scope: !96, inlinedAt: !103)
!117 = !DILocation(line: 316, column: 19, scope: !96, inlinedAt: !103)
!118 = !DILocation(line: 316, column: 9, scope: !96, inlinedAt: !103)
!119 = !DILocation(line: 316, column: 26, scope: !96, inlinedAt: !103)
!120 = !DILocation(line: 316, column: 6, scope: !96, inlinedAt: !103)
!121 = !DILocation(line: 41, column: 10, scope: !94)
!122 = !DILocation(line: 41, column: 6, scope: !41)
!123 = !DILocalVariable(name: "options", arg: 1, scope: !124, file: !42, line: 17, type: !46)
!124 = distinct !DISubprogram(name: "stream_flags_decode", scope: !42, file: !42, line: 17, type: !125, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !128)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !46, !77}
!127 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!128 = !{!123, !129}
!129 = !DILocalVariable(name: "in", arg: 2, scope: !124, file: !42, line: 17, type: !77)
!130 = !DILocation(line: 0, scope: !124, inlinedAt: !131)
!131 = distinct !DILocation(line: 46, column: 6, scope: !132)
!132 = distinct !DILexicalBlock(scope: !41, file: !42, line: 46, column: 6)
!133 = !DILocation(line: 20, column: 6, scope: !134, inlinedAt: !131)
!134 = distinct !DILexicalBlock(scope: !124, file: !42, line: 20, column: 6)
!135 = !DILocation(line: 20, column: 12, scope: !134, inlinedAt: !131)
!136 = !DILocation(line: 20, column: 20, scope: !134, inlinedAt: !131)
!137 = !DILocation(line: 20, column: 24, scope: !134, inlinedAt: !131)
!138 = !DILocation(line: 20, column: 30, scope: !134, inlinedAt: !131)
!139 = !DILocation(line: 20, column: 6, scope: !124, inlinedAt: !131)
!140 = !DILocation(line: 23, column: 19, scope: !124, inlinedAt: !131)
!141 = !{!142, !143, i64 0}
!142 = !{!"", !143, i64 0, !144, i64 8, !106, i64 16, !106, i64 20, !106, i64 24, !106, i64 28, !106, i64 32, !106, i64 36, !106, i64 37, !106, i64 38, !106, i64 39, !106, i64 40, !106, i64 41, !106, i64 42, !106, i64 43, !143, i64 44, !143, i64 48}
!143 = !{!"int", !106, i64 0}
!144 = !{!"long", !106, i64 0}
!145 = !DILocation(line: 24, column: 19, scope: !124, inlinedAt: !131)
!146 = !DILocation(line: 24, column: 25, scope: !124, inlinedAt: !131)
!147 = !DILocation(line: 24, column: 11, scope: !124, inlinedAt: !131)
!148 = !DILocation(line: 24, column: 17, scope: !124, inlinedAt: !131)
!149 = !{!142, !106, i64 16}
!150 = !DILocation(line: 53, column: 11, scope: !41)
!151 = !DILocation(line: 53, column: 25, scope: !41)
!152 = !{!142, !144, i64 8}
!153 = !DILocation(line: 55, column: 2, scope: !41)
!154 = !DILocation(line: 56, column: 1, scope: !41)
!155 = !DISubprogram(name: "lzma_crc32", scope: !20, file: !20, line: 119, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !160)
!156 = !DISubroutineType(types: !157)
!157 = !{!30, !77, !158, !30}
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !159, line: 46, baseType: !57)
!159 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!160 = !{}
!161 = distinct !DISubprogram(name: "lzma_stream_footer_decode", scope: !42, file: !42, line: 60, type: !43, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!162 = !{!163, !164, !165}
!163 = !DILocalVariable(name: "options", arg: 1, scope: !161, file: !42, line: 60, type: !46)
!164 = !DILocalVariable(name: "in", arg: 2, scope: !161, file: !42, line: 60, type: !77)
!165 = !DILocalVariable(name: "crc", scope: !161, file: !42, line: 68, type: !85)
!166 = !DILocation(line: 0, scope: !161)
!167 = !DILocation(line: 63, column: 16, scope: !168)
!168 = distinct !DILexicalBlock(scope: !161, file: !42, line: 63, column: 6)
!169 = !DILocation(line: 63, column: 39, scope: !168)
!170 = !DILocation(line: 63, column: 6, scope: !168)
!171 = !DILocation(line: 64, column: 50, scope: !168)
!172 = !DILocation(line: 63, column: 6, scope: !161)
!173 = !DILocation(line: 68, column: 37, scope: !161)
!174 = !DILocation(line: 68, column: 23, scope: !161)
!175 = !DILocation(line: 0, scope: !96, inlinedAt: !176)
!176 = distinct !DILocation(line: 70, column: 13, scope: !177)
!177 = distinct !DILexicalBlock(scope: !161, file: !42, line: 70, column: 6)
!178 = !DILocation(line: 313, column: 27, scope: !96, inlinedAt: !176)
!179 = !DILocation(line: 313, column: 17, scope: !96, inlinedAt: !176)
!180 = !DILocation(line: 314, column: 19, scope: !96, inlinedAt: !176)
!181 = !DILocation(line: 314, column: 9, scope: !96, inlinedAt: !176)
!182 = !DILocation(line: 314, column: 26, scope: !96, inlinedAt: !176)
!183 = !DILocation(line: 314, column: 6, scope: !96, inlinedAt: !176)
!184 = !DILocation(line: 315, column: 19, scope: !96, inlinedAt: !176)
!185 = !DILocation(line: 315, column: 9, scope: !96, inlinedAt: !176)
!186 = !DILocation(line: 315, column: 26, scope: !96, inlinedAt: !176)
!187 = !DILocation(line: 315, column: 6, scope: !96, inlinedAt: !176)
!188 = !DILocation(line: 316, column: 19, scope: !96, inlinedAt: !176)
!189 = !DILocation(line: 316, column: 9, scope: !96, inlinedAt: !176)
!190 = !DILocation(line: 316, column: 26, scope: !96, inlinedAt: !176)
!191 = !DILocation(line: 316, column: 6, scope: !96, inlinedAt: !176)
!192 = !DILocation(line: 70, column: 10, scope: !177)
!193 = !DILocation(line: 70, column: 6, scope: !161)
!194 = !DILocation(line: 0, scope: !124, inlinedAt: !195)
!195 = distinct !DILocation(line: 74, column: 6, scope: !196)
!196 = distinct !DILexicalBlock(scope: !161, file: !42, line: 74, column: 6)
!197 = !DILocation(line: 20, column: 6, scope: !134, inlinedAt: !195)
!198 = !DILocation(line: 20, column: 12, scope: !134, inlinedAt: !195)
!199 = !DILocation(line: 20, column: 20, scope: !134, inlinedAt: !195)
!200 = !DILocation(line: 20, column: 24, scope: !134, inlinedAt: !195)
!201 = !DILocation(line: 20, column: 30, scope: !134, inlinedAt: !195)
!202 = !DILocation(line: 20, column: 6, scope: !124, inlinedAt: !195)
!203 = !DILocation(line: 23, column: 19, scope: !124, inlinedAt: !195)
!204 = !DILocation(line: 24, column: 19, scope: !124, inlinedAt: !195)
!205 = !DILocation(line: 24, column: 25, scope: !124, inlinedAt: !195)
!206 = !DILocation(line: 24, column: 11, scope: !124, inlinedAt: !195)
!207 = !DILocation(line: 24, column: 17, scope: !124, inlinedAt: !195)
!208 = !DILocation(line: 0, scope: !96, inlinedAt: !209)
!209 = distinct !DILocation(line: 78, column: 27, scope: !161)
!210 = !DILocation(line: 313, column: 27, scope: !96, inlinedAt: !209)
!211 = !DILocation(line: 313, column: 17, scope: !96, inlinedAt: !209)
!212 = !DILocation(line: 314, column: 19, scope: !96, inlinedAt: !209)
!213 = !DILocation(line: 314, column: 9, scope: !96, inlinedAt: !209)
!214 = !DILocation(line: 315, column: 19, scope: !96, inlinedAt: !209)
!215 = !DILocation(line: 315, column: 9, scope: !96, inlinedAt: !209)
!216 = !DILocation(line: 316, column: 19, scope: !96, inlinedAt: !209)
!217 = !DILocation(line: 316, column: 9, scope: !96, inlinedAt: !209)
!218 = !DILocation(line: 78, column: 11, scope: !161)
!219 = !DILocation(line: 79, column: 56, scope: !161)
!220 = !DILocation(line: 79, column: 25, scope: !161)
!221 = !DILocation(line: 81, column: 2, scope: !161)
!222 = !DILocation(line: 82, column: 1, scope: !161)
