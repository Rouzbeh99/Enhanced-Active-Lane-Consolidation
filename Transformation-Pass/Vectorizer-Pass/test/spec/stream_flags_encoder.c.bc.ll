; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/stream_flags_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_flags_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@lzma_header_magic = external local_unnamed_addr constant [6 x i8], align 1
@lzma_footer_magic = external local_unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_header_encode(ptr nocapture noundef readonly %options, ptr noundef %out) local_unnamed_addr #0 !dbg !37 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !82, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata ptr %out, metadata !83, metadata !DIExpression()), !dbg !86
  %0 = load i32, ptr %options, align 8, !dbg !87, !tbaa !89
  %cmp.not = icmp eq i32 %0, 0, !dbg !95
  br i1 %cmp.not, label %if.end, label %return, !dbg !96

if.end:                                           ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %out, ptr noundef nonnull align 1 dereferenceable(6) @lzma_header_magic, i64 6, i1 false), !dbg !97
  call void @llvm.dbg.value(metadata ptr %options, metadata !98, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata ptr %out, metadata !104, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !105
  %check.i = getelementptr inbounds %struct.lzma_stream_flags, ptr %options, i64 0, i32 2, !dbg !108
  %1 = load i32, ptr %check.i, align 8, !dbg !108, !tbaa !110
  %cmp.i = icmp ugt i32 %1, 15, !dbg !111
  br i1 %cmp.i, label %return, label %if.end2, !dbg !112

if.end2:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 6, !dbg !113
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !104, metadata !DIExpression()), !dbg !105
  store i8 0, ptr %add.ptr, align 1, !dbg !114, !tbaa !115
  %2 = load i32, ptr %check.i, align 8, !dbg !116, !tbaa !110
  %conv.i = trunc i32 %2 to i8, !dbg !117
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i64 7, !dbg !118
  store i8 %conv.i, ptr %arrayidx2.i, align 1, !dbg !119, !tbaa !115
  %call4 = tail call i32 @lzma_crc32(ptr noundef nonnull %add.ptr, i64 noundef 2, i32 noundef 0) #4, !dbg !120
  call void @llvm.dbg.value(metadata i32 %call4, metadata !84, metadata !DIExpression()), !dbg !86
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i64 8, !dbg !121
  call void @llvm.dbg.value(metadata ptr %add.ptr6, metadata !122, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32 %call4, metadata !128, metadata !DIExpression()), !dbg !129
  %conv.i11 = trunc i32 %call4 to i8, !dbg !131
  store i8 %conv.i11, ptr %add.ptr6, align 1, !dbg !132, !tbaa !115
  %shr.i = lshr i32 %call4, 8, !dbg !133
  %conv1.i = trunc i32 %shr.i to i8, !dbg !134
  %arrayidx2.i12 = getelementptr inbounds i8, ptr %out, i64 9, !dbg !135
  store i8 %conv1.i, ptr %arrayidx2.i12, align 1, !dbg !136, !tbaa !115
  %shr3.i = lshr i32 %call4, 16, !dbg !137
  %conv4.i = trunc i32 %shr3.i to i8, !dbg !138
  %arrayidx5.i = getelementptr inbounds i8, ptr %out, i64 10, !dbg !139
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !dbg !140, !tbaa !115
  %shr6.i = lshr i32 %call4, 24, !dbg !141
  %conv7.i = trunc i32 %shr6.i to i8, !dbg !142
  %arrayidx8.i = getelementptr inbounds i8, ptr %out, i64 11, !dbg !143
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !144, !tbaa !115
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i32 [ 0, %if.end2 ], [ 8, %entry ], [ 11, %if.end ], !dbg !86
  ret i32 %retval.0, !dbg !145
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare !dbg !146 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_footer_encode(ptr nocapture noundef readonly %options, ptr noundef %out) local_unnamed_addr #0 !dbg !154 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !156, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata ptr %out, metadata !157, metadata !DIExpression()), !dbg !159
  %0 = load i32, ptr %options, align 8, !dbg !160, !tbaa !89
  %cmp.not = icmp eq i32 %0, 0, !dbg !162
  br i1 %cmp.not, label %if.end, label %return, !dbg !163

if.end:                                           ; preds = %entry
  %1 = getelementptr i8, ptr %options, i64 8, !dbg !164
  %options.val = load i64, ptr %1, align 8, !dbg !164, !tbaa !166
  call void @llvm.dbg.value(metadata ptr undef, metadata !167, metadata !DIExpression()), !dbg !173
  %2 = add i64 %options.val, -4, !dbg !175
  %3 = icmp ult i64 %2, 17179869181, !dbg !175
  %and.i = and i64 %options.val, 3
  %cmp4.i = icmp eq i64 %and.i, 0
  %or.cond = and i1 %3, %cmp4.i, !dbg !175
  br i1 %or.cond, label %if.end2, label %return, !dbg !175

if.end2:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 4, !dbg !176
  %div18 = lshr i64 %options.val, 2, !dbg !177
  %4 = trunc i64 %div18 to i32, !dbg !178
  %conv = add i32 %4, -1, !dbg !178
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !122, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i32 %conv, metadata !128, metadata !DIExpression()), !dbg !179
  %conv.i = trunc i32 %conv to i8, !dbg !181
  store i8 %conv.i, ptr %add.ptr, align 1, !dbg !182, !tbaa !115
  %shr.i = lshr i32 %conv, 8, !dbg !183
  %conv1.i = trunc i32 %shr.i to i8, !dbg !184
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i64 5, !dbg !185
  store i8 %conv1.i, ptr %arrayidx2.i, align 1, !dbg !186, !tbaa !115
  %shr3.i = lshr i32 %conv, 16, !dbg !187
  %conv4.i = trunc i32 %shr3.i to i8, !dbg !188
  %arrayidx5.i = getelementptr inbounds i8, ptr %out, i64 6, !dbg !189
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !dbg !190, !tbaa !115
  %shr6.i = lshr i32 %conv, 24, !dbg !191
  %conv7.i = trunc i32 %shr6.i to i8, !dbg !192
  %arrayidx8.i = getelementptr inbounds i8, ptr %out, i64 7, !dbg !193
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !194, !tbaa !115
  call void @llvm.dbg.value(metadata ptr %options, metadata !98, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata ptr %out, metadata !104, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !195
  %check.i = getelementptr inbounds %struct.lzma_stream_flags, ptr %options, i64 0, i32 2, !dbg !198
  %5 = load i32, ptr %check.i, align 8, !dbg !198, !tbaa !110
  %cmp.i = icmp ugt i32 %5, 15, !dbg !199
  br i1 %cmp.i, label %return, label %if.end6, !dbg !200

if.end6:                                          ; preds = %if.end2
  %add.ptr3 = getelementptr inbounds i8, ptr %out, i64 8, !dbg !201
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !104, metadata !DIExpression()), !dbg !195
  store i8 0, ptr %add.ptr3, align 1, !dbg !202, !tbaa !115
  %6 = load i32, ptr %check.i, align 8, !dbg !203, !tbaa !110
  %conv.i19 = trunc i32 %6 to i8, !dbg !204
  %arrayidx2.i20 = getelementptr inbounds i8, ptr %out, i64 9, !dbg !205
  store i8 %conv.i19, ptr %arrayidx2.i20, align 1, !dbg !206, !tbaa !115
  %call8 = tail call i32 @lzma_crc32(ptr noundef nonnull %add.ptr, i64 noundef 6, i32 noundef 0) #4, !dbg !207
  call void @llvm.dbg.value(metadata i32 %call8, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata ptr %out, metadata !122, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i32 %call8, metadata !128, metadata !DIExpression()), !dbg !208
  %conv.i21 = trunc i32 %call8 to i8, !dbg !210
  store i8 %conv.i21, ptr %out, align 1, !dbg !211, !tbaa !115
  %shr.i22 = lshr i32 %call8, 8, !dbg !212
  %conv1.i23 = trunc i32 %shr.i22 to i8, !dbg !213
  %arrayidx2.i24 = getelementptr inbounds i8, ptr %out, i64 1, !dbg !214
  store i8 %conv1.i23, ptr %arrayidx2.i24, align 1, !dbg !215, !tbaa !115
  %shr3.i25 = lshr i32 %call8, 16, !dbg !216
  %conv4.i26 = trunc i32 %shr3.i25 to i8, !dbg !217
  %arrayidx5.i27 = getelementptr inbounds i8, ptr %out, i64 2, !dbg !218
  store i8 %conv4.i26, ptr %arrayidx5.i27, align 1, !dbg !219, !tbaa !115
  %shr6.i28 = lshr i32 %call8, 24, !dbg !220
  %conv7.i29 = trunc i32 %shr6.i28 to i8, !dbg !221
  %arrayidx8.i30 = getelementptr inbounds i8, ptr %out, i64 3, !dbg !222
  store i8 %conv7.i29, ptr %arrayidx8.i30, align 1, !dbg !223, !tbaa !115
  %add.ptr10 = getelementptr inbounds i8, ptr %out, i64 10, !dbg !224
  %7 = load i16, ptr @lzma_footer_magic, align 1, !dbg !225
  store i16 %7, ptr %add.ptr10, align 1, !dbg !225
  br label %return

return:                                           ; preds = %if.end2, %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 8, %entry ], [ 11, %if.end ], [ 11, %if.end2 ], !dbg !159
  ret i32 %retval.0, !dbg !226
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_flags_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "0bf07b93a64696a494670a0b5c1e9dfe")
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
!29 = !{!5}
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{i32 7, !"PIC Level", i32 2}
!34 = !{i32 7, !"PIE Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 2}
!36 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!37 = distinct !DISubprogram(name: "lzma_stream_header_encode", scope: !38, file: !38, line: 30, type: !39, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!38 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/stream_flags_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0bf07b93a64696a494670a0b5c1e9dfe")
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !42, !78}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !45, line: 105, baseType: !46)
!45 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/stream_flags.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 33, size: 448, elements: !47)
!47 = !{!48, !53, !59, !61, !63, !64, !65, !66, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !46, file: !45, line: 51, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !5)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!53 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !46, file: !45, line: 69, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !55, line: 63, baseType: !56)
!55 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 27, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 45, baseType: !58)
!58 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !46, file: !45, line: 79, baseType: !60, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !46, file: !45, line: 90, baseType: !62, size: 32, offset: 160)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !46, file: !45, line: 91, baseType: !62, size: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !46, file: !45, line: 92, baseType: !62, size: 32, offset: 224)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !46, file: !45, line: 93, baseType: !62, size: 32, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !46, file: !45, line: 94, baseType: !67, size: 8, offset: 288)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !68)
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !46, file: !45, line: 95, baseType: !67, size: 8, offset: 296)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !46, file: !45, line: 96, baseType: !67, size: 8, offset: 304)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !46, file: !45, line: 97, baseType: !67, size: 8, offset: 312)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !46, file: !45, line: 98, baseType: !67, size: 8, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !46, file: !45, line: 99, baseType: !67, size: 8, offset: 328)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !46, file: !45, line: 100, baseType: !67, size: 8, offset: 336)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !46, file: !45, line: 101, baseType: !67, size: 8, offset: 344)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !46, file: !45, line: 102, baseType: !49, size: 32, offset: 352)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !46, file: !45, line: 103, baseType: !49, size: 32, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !68)
!81 = !{!82, !83, !84}
!82 = !DILocalVariable(name: "options", arg: 1, scope: !37, file: !38, line: 30, type: !42)
!83 = !DILocalVariable(name: "out", arg: 2, scope: !37, file: !38, line: 30, type: !78)
!84 = !DILocalVariable(name: "crc", scope: !37, file: !38, line: 46, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!86 = !DILocation(line: 0, scope: !37)
!87 = !DILocation(line: 35, column: 15, scope: !88)
!88 = distinct !DILexicalBlock(scope: !37, file: !38, line: 35, column: 6)
!89 = !{!90, !91, i64 0}
!90 = !{!"", !91, i64 0, !94, i64 8, !92, i64 16, !92, i64 20, !92, i64 24, !92, i64 28, !92, i64 32, !92, i64 36, !92, i64 37, !92, i64 38, !92, i64 39, !92, i64 40, !92, i64 41, !92, i64 42, !92, i64 43, !91, i64 44, !91, i64 48}
!91 = !{!"int", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !{!"long", !92, i64 0}
!95 = !DILocation(line: 35, column: 23, scope: !88)
!96 = !DILocation(line: 35, column: 6, scope: !37)
!97 = !DILocation(line: 39, column: 2, scope: !37)
!98 = !DILocalVariable(name: "options", arg: 1, scope: !99, file: !38, line: 17, type: !42)
!99 = distinct !DISubprogram(name: "stream_flags_encode", scope: !38, file: !38, line: 17, type: !100, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !42, !78}
!102 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!103 = !{!98, !104}
!104 = !DILocalVariable(name: "out", arg: 2, scope: !99, file: !38, line: 17, type: !78)
!105 = !DILocation(line: 0, scope: !99, inlinedAt: !106)
!106 = distinct !DILocation(line: 42, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !37, file: !38, line: 42, column: 6)
!108 = !DILocation(line: 19, column: 30, scope: !109, inlinedAt: !106)
!109 = distinct !DILexicalBlock(scope: !99, file: !38, line: 19, column: 6)
!110 = !{!90, !92, i64 16}
!111 = !DILocation(line: 19, column: 37, scope: !109, inlinedAt: !106)
!112 = !DILocation(line: 19, column: 6, scope: !99, inlinedAt: !106)
!113 = !DILocation(line: 42, column: 39, scope: !107)
!114 = !DILocation(line: 22, column: 9, scope: !99, inlinedAt: !106)
!115 = !{!92, !92, i64 0}
!116 = !DILocation(line: 23, column: 20, scope: !99, inlinedAt: !106)
!117 = !DILocation(line: 23, column: 11, scope: !99, inlinedAt: !106)
!118 = !DILocation(line: 23, column: 2, scope: !99, inlinedAt: !106)
!119 = !DILocation(line: 23, column: 9, scope: !99, inlinedAt: !106)
!120 = !DILocation(line: 46, column: 23, scope: !37)
!121 = !DILocation(line: 50, column: 4, scope: !37)
!122 = !DILocalVariable(name: "buf", arg: 1, scope: !123, file: !124, line: 351, type: !78)
!123 = distinct !DISubprogram(name: "unaligned_write32le", scope: !124, file: !124, line: 351, type: !125, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !127)
!124 = !DIFile(filename: "apps/557.xz_r/src/common/tuklib_integer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!125 = !DISubroutineType(types: !126)
!126 = !{null, !78, !49}
!127 = !{!122, !128}
!128 = !DILocalVariable(name: "num", arg: 2, scope: !123, file: !124, line: 351, type: !49)
!129 = !DILocation(line: 0, scope: !123, inlinedAt: !130)
!130 = distinct !DILocation(line: 49, column: 2, scope: !37)
!131 = !DILocation(line: 353, column: 11, scope: !123, inlinedAt: !130)
!132 = !DILocation(line: 353, column: 9, scope: !123, inlinedAt: !130)
!133 = !DILocation(line: 354, column: 15, scope: !123, inlinedAt: !130)
!134 = !DILocation(line: 354, column: 11, scope: !123, inlinedAt: !130)
!135 = !DILocation(line: 354, column: 2, scope: !123, inlinedAt: !130)
!136 = !DILocation(line: 354, column: 9, scope: !123, inlinedAt: !130)
!137 = !DILocation(line: 355, column: 15, scope: !123, inlinedAt: !130)
!138 = !DILocation(line: 355, column: 11, scope: !123, inlinedAt: !130)
!139 = !DILocation(line: 355, column: 2, scope: !123, inlinedAt: !130)
!140 = !DILocation(line: 355, column: 9, scope: !123, inlinedAt: !130)
!141 = !DILocation(line: 356, column: 15, scope: !123, inlinedAt: !130)
!142 = !DILocation(line: 356, column: 11, scope: !123, inlinedAt: !130)
!143 = !DILocation(line: 356, column: 2, scope: !123, inlinedAt: !130)
!144 = !DILocation(line: 356, column: 9, scope: !123, inlinedAt: !130)
!145 = !DILocation(line: 53, column: 1, scope: !37)
!146 = !DISubprogram(name: "lzma_crc32", scope: !20, file: !20, line: 119, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !153)
!147 = !DISubroutineType(types: !148)
!148 = !{!49, !149, !151, !49}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !58)
!152 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!153 = !{}
!154 = distinct !DISubprogram(name: "lzma_stream_footer_encode", scope: !38, file: !38, line: 57, type: !39, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!155 = !{!156, !157, !158}
!156 = !DILocalVariable(name: "options", arg: 1, scope: !154, file: !38, line: 57, type: !42)
!157 = !DILocalVariable(name: "out", arg: 2, scope: !154, file: !38, line: 57, type: !78)
!158 = !DILocalVariable(name: "crc", scope: !154, file: !38, line: 76, type: !85)
!159 = !DILocation(line: 0, scope: !154)
!160 = !DILocation(line: 62, column: 15, scope: !161)
!161 = distinct !DILexicalBlock(scope: !154, file: !38, line: 62, column: 6)
!162 = !DILocation(line: 62, column: 23, scope: !161)
!163 = !DILocation(line: 62, column: 6, scope: !154)
!164 = !DILocation(line: 66, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !154, file: !38, line: 66, column: 6)
!166 = !{!90, !94, i64 8}
!167 = !DILocalVariable(name: "options", arg: 1, scope: !168, file: !169, line: 26, type: !42)
!168 = distinct !DISubprogram(name: "is_backward_size_valid", scope: !169, file: !169, line: 26, type: !170, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !172)
!169 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/stream_flags_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd1b47fc58dd9f8e4116d4803eca0476")
!170 = !DISubroutineType(types: !171)
!171 = !{!102, !42}
!172 = !{!167}
!173 = !DILocation(line: 0, scope: !168, inlinedAt: !174)
!174 = distinct !DILocation(line: 66, column: 7, scope: !165)
!175 = !DILocation(line: 29, column: 4, scope: !168, inlinedAt: !174)
!176 = !DILocation(line: 69, column: 26, scope: !154)
!177 = !DILocation(line: 69, column: 54, scope: !154)
!178 = !DILocation(line: 69, column: 31, scope: !154)
!179 = !DILocation(line: 0, scope: !123, inlinedAt: !180)
!180 = distinct !DILocation(line: 69, column: 2, scope: !154)
!181 = !DILocation(line: 353, column: 11, scope: !123, inlinedAt: !180)
!182 = !DILocation(line: 353, column: 9, scope: !123, inlinedAt: !180)
!183 = !DILocation(line: 354, column: 15, scope: !123, inlinedAt: !180)
!184 = !DILocation(line: 354, column: 11, scope: !123, inlinedAt: !180)
!185 = !DILocation(line: 354, column: 2, scope: !123, inlinedAt: !180)
!186 = !DILocation(line: 354, column: 9, scope: !123, inlinedAt: !180)
!187 = !DILocation(line: 355, column: 15, scope: !123, inlinedAt: !180)
!188 = !DILocation(line: 355, column: 11, scope: !123, inlinedAt: !180)
!189 = !DILocation(line: 355, column: 2, scope: !123, inlinedAt: !180)
!190 = !DILocation(line: 355, column: 9, scope: !123, inlinedAt: !180)
!191 = !DILocation(line: 356, column: 15, scope: !123, inlinedAt: !180)
!192 = !DILocation(line: 356, column: 11, scope: !123, inlinedAt: !180)
!193 = !DILocation(line: 356, column: 2, scope: !123, inlinedAt: !180)
!194 = !DILocation(line: 356, column: 9, scope: !123, inlinedAt: !180)
!195 = !DILocation(line: 0, scope: !99, inlinedAt: !196)
!196 = distinct !DILocation(line: 72, column: 6, scope: !197)
!197 = distinct !DILexicalBlock(scope: !154, file: !38, line: 72, column: 6)
!198 = !DILocation(line: 19, column: 30, scope: !109, inlinedAt: !196)
!199 = !DILocation(line: 19, column: 37, scope: !109, inlinedAt: !196)
!200 = !DILocation(line: 19, column: 6, scope: !99, inlinedAt: !196)
!201 = !DILocation(line: 72, column: 39, scope: !197)
!202 = !DILocation(line: 22, column: 9, scope: !99, inlinedAt: !196)
!203 = !DILocation(line: 23, column: 20, scope: !99, inlinedAt: !196)
!204 = !DILocation(line: 23, column: 11, scope: !99, inlinedAt: !196)
!205 = !DILocation(line: 23, column: 2, scope: !99, inlinedAt: !196)
!206 = !DILocation(line: 23, column: 9, scope: !99, inlinedAt: !196)
!207 = !DILocation(line: 76, column: 23, scope: !154)
!208 = !DILocation(line: 0, scope: !123, inlinedAt: !209)
!209 = distinct !DILocation(line: 79, column: 2, scope: !154)
!210 = !DILocation(line: 353, column: 11, scope: !123, inlinedAt: !209)
!211 = !DILocation(line: 353, column: 9, scope: !123, inlinedAt: !209)
!212 = !DILocation(line: 354, column: 15, scope: !123, inlinedAt: !209)
!213 = !DILocation(line: 354, column: 11, scope: !123, inlinedAt: !209)
!214 = !DILocation(line: 354, column: 2, scope: !123, inlinedAt: !209)
!215 = !DILocation(line: 354, column: 9, scope: !123, inlinedAt: !209)
!216 = !DILocation(line: 355, column: 15, scope: !123, inlinedAt: !209)
!217 = !DILocation(line: 355, column: 11, scope: !123, inlinedAt: !209)
!218 = !DILocation(line: 355, column: 2, scope: !123, inlinedAt: !209)
!219 = !DILocation(line: 355, column: 9, scope: !123, inlinedAt: !209)
!220 = !DILocation(line: 356, column: 15, scope: !123, inlinedAt: !209)
!221 = !DILocation(line: 356, column: 11, scope: !123, inlinedAt: !209)
!222 = !DILocation(line: 356, column: 2, scope: !123, inlinedAt: !209)
!223 = !DILocation(line: 356, column: 9, scope: !123, inlinedAt: !209)
!224 = !DILocation(line: 82, column: 21, scope: !154)
!225 = !DILocation(line: 82, column: 2, scope: !154)
!226 = !DILocation(line: 86, column: 1, scope: !154)
