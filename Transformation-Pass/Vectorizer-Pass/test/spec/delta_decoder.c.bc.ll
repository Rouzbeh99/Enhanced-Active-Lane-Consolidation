; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/delta/delta_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/delta/delta_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i64, i8, [256 x i8] }
%struct.lzma_options_delta = type { i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_delta_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !45 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !140, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !141, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata ptr %filters, metadata !142, metadata !DIExpression()), !dbg !143
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !144
  store ptr @delta_decode, ptr %code, align 8, !dbg !145, !tbaa !146
  %call = tail call i32 @lzma_delta_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) #3, !dbg !152
  ret i32 %call, !dbg !153
}

; Function Attrs: nounwind uwtable
define internal i32 @delta_decode(ptr nocapture noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !154 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !156, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !157, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata ptr %in, metadata !158, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !159, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !160, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata ptr %out, metadata !161, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !162, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !163, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32 %action, metadata !164, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !165, metadata !DIExpression()), !dbg !181
  %0 = load i64, ptr %out_pos, align 8, !dbg !182, !tbaa !183
  call void @llvm.dbg.value(metadata i64 %0, metadata !177, metadata !DIExpression()), !dbg !181
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !184
  %1 = load ptr, ptr %code, align 8, !dbg !184, !tbaa !185
  %2 = load ptr, ptr %pcoder, align 8, !dbg !187, !tbaa !188
  %call = tail call i32 %1(ptr noundef %2, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #3, !dbg !189
  call void @llvm.dbg.value(metadata i32 %call, metadata !179, metadata !DIExpression()), !dbg !181
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %0, !dbg !190
  %3 = load i64, ptr %out_pos, align 8, !dbg !191, !tbaa !183
  %sub = sub i64 %3, %0, !dbg !192
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !193, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !198, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 %sub, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !200, metadata !DIExpression()), !dbg !204
  %distance1.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !206
  %4 = load i64, ptr %distance1.i, align 8, !dbg !206, !tbaa !207
  call void @llvm.dbg.value(metadata i64 %4, metadata !201, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 0, metadata !202, metadata !DIExpression()), !dbg !208
  %cmp21.not.i = icmp eq i64 %3, %0, !dbg !209
  br i1 %cmp21.not.i, label %decode_buffer.exit, label %for.body.lr.ph.i, !dbg !211

for.body.lr.ph.i:                                 ; preds = %entry
  %pos.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %.pre.i = load i8, ptr %pos.i, align 8, !dbg !212, !tbaa !214
  br label %for.body.i, !dbg !211

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %5 = phi i8 [ %.pre.i, %for.body.lr.ph.i ], [ %dec.i, %for.body.i ], !dbg !212
  %i.022.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %i.022.i, metadata !202, metadata !DIExpression()), !dbg !208
  %conv.i = zext i8 %5 to i64, !dbg !215
  %add.i = add i64 %4, %conv.i, !dbg !216
  %and.i = and i64 %add.i, 255, !dbg !217
  %arrayidx.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %and.i, !dbg !218
  %6 = load i8, ptr %arrayidx.i, align 1, !dbg !218, !tbaa !219
  %arrayidx3.i = getelementptr inbounds i8, ptr %add.ptr, i64 %i.022.i, !dbg !220
  %7 = load i8, ptr %arrayidx3.i, align 1, !dbg !221, !tbaa !219
  %add5.i = add i8 %7, %6, !dbg !221
  store i8 %add5.i, ptr %arrayidx3.i, align 1, !dbg !221, !tbaa !219
  %dec.i = add i8 %5, -1, !dbg !222
  %arrayidx12.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %conv.i, !dbg !223
  store i8 %add5.i, ptr %arrayidx12.i, align 1, !dbg !224, !tbaa !219
  %inc.i = add nuw i64 %i.022.i, 1, !dbg !225
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !202, metadata !DIExpression()), !dbg !208
  %exitcond.not.i = icmp eq i64 %inc.i, %sub, !dbg !209
  br i1 %exitcond.not.i, label %decode_buffer.exit.loopexit, label %for.body.i, !dbg !211, !llvm.loop !226

decode_buffer.exit.loopexit:                      ; preds = %for.body.i
  store i8 %dec.i, ptr %pos.i, align 8, !dbg !222, !tbaa !214
  br label %decode_buffer.exit, !dbg !230

decode_buffer.exit:                               ; preds = %decode_buffer.exit.loopexit, %entry
  ret i32 %call, !dbg !230
}

declare !dbg !231 i32 @lzma_delta_coder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_delta_props_decode(ptr nocapture noundef writeonly %options, ptr noundef %allocator, ptr nocapture noundef readonly %props, i64 noundef %props_size) local_unnamed_addr #0 !dbg !233 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !238, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !239, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata ptr %props, metadata !240, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata i64 %props_size, metadata !241, metadata !DIExpression()), !dbg !258
  %cmp.not = icmp eq i64 %props_size, 1, !dbg !259
  br i1 %cmp.not, label %if.end, label %return, !dbg !261

if.end:                                           ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 40, ptr noundef %allocator) #3, !dbg !262
  call void @llvm.dbg.value(metadata ptr %call, metadata !242, metadata !DIExpression()), !dbg !258
  %cmp1 = icmp eq ptr %call, null, !dbg !263
  br i1 %cmp1, label %return, label %if.end3, !dbg !265

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %call, align 8, !dbg !266, !tbaa !267
  %0 = load i8, ptr %props, align 1, !dbg !270, !tbaa !219
  %conv = zext i8 %0 to i32, !dbg !270
  %add = add nuw nsw i32 %conv, 1, !dbg !271
  %dist = getelementptr inbounds %struct.lzma_options_delta, ptr %call, i64 0, i32 1, !dbg !272
  store i32 %add, ptr %dist, align 4, !dbg !273, !tbaa !274
  store ptr %call, ptr %options, align 8, !dbg !275, !tbaa !276
  br label %return, !dbg !277

return:                                           ; preds = %if.end3, %if.end, %entry
  %retval.1 = phi i32 [ 8, %entry ], [ 0, %if.end3 ], [ 5, %if.end ], !dbg !258
  ret i32 %retval.1, !dbg !278
}

declare !dbg !279 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !36, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/delta/delta_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "2e365ead6dc84d04de0a81ecc9b65746")
!2 = !{!3, !19, !25, !32}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 35, baseType: !5, size: 32, elements: !34)
!33 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/delta.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "397cde14a8f4a544385c9c6ecc7e0cc9")
!34 = !{!35}
!35 = !DIEnumerator(name: "LZMA_DELTA_TYPE_BYTE", value: 0)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 7, !"PIC Level", i32 2}
!42 = !{i32 7, !"PIE Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 2}
!44 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!45 = distinct !DISubprogram(name: "lzma_delta_decoder_init", scope: !46, file: !46, line: 52, type: !47, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!46 = !DIFile(filename: "apps/557.xz_r/src/liblzma/delta/delta_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2e365ead6dc84d04de0a81ecc9b65746")
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !50, !74, !129}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !52, line: 80, baseType: !53)
!52 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !52, line: 124, size: 512, elements: !54)
!54 = !{!55, !58, !66, !69, !100, !105, !112, !117}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !53, file: !52, line: 126, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !52, line: 78, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !53, file: !52, line: 130, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !60, line: 63, baseType: !61)
!60 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !62, line: 27, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !64, line: 45, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !53, file: !52, line: 136, baseType: !67, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !68, line: 90, baseType: !65)
!68 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !53, file: !52, line: 139, baseType: !70, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !52, line: 94, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!49, !56, !74, !89, !95, !82, !97, !95, !82, !99}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !77)
!77 = !{!78, !84, !88}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !76, file: !4, line: 376, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!37, !37, !82, !82}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 46, baseType: !65)
!83 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!84 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !76, file: !4, line: 390, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !37, !37}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !76, file: !4, line: 401, baseType: !37, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !62, line: 24, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !64, line: 38, baseType: !94)
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !53, file: !52, line: 144, baseType: !101, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !52, line: 102, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !56, !74}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !53, file: !52, line: 148, baseType: !106, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !53, file: !52, line: 152, baseType: !113, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!49, !56, !116, !116, !61}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !53, file: !52, line: 157, baseType: !118, size: 64, offset: 448)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!49, !56, !74, !121, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !124, line: 65, baseType: !125)
!124 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 43, size: 128, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !125, file: !124, line: 54, baseType: !59, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !125, file: !124, line: 63, baseType: !37, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !52, line: 82, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !52, line: 109, size: 192, elements: !133)
!133 = !{!134, !135, !138}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !132, file: !52, line: 112, baseType: !59, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !132, file: !52, line: 116, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !52, line: 86, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !132, file: !52, line: 119, baseType: !37, size: 64, offset: 128)
!139 = !{!140, !141, !142}
!140 = !DILocalVariable(name: "next", arg: 1, scope: !45, file: !46, line: 52, type: !50)
!141 = !DILocalVariable(name: "allocator", arg: 2, scope: !45, file: !46, line: 52, type: !74)
!142 = !DILocalVariable(name: "filters", arg: 3, scope: !45, file: !46, line: 53, type: !129)
!143 = !DILocation(line: 0, scope: !45)
!144 = !DILocation(line: 55, column: 8, scope: !45)
!145 = !DILocation(line: 55, column: 13, scope: !45)
!146 = !{!147, !148, i64 24}
!147 = !{!"lzma_next_coder_s", !148, i64 0, !151, i64 8, !151, i64 16, !148, i64 24, !148, i64 32, !148, i64 40, !148, i64 48, !148, i64 56}
!148 = !{!"any pointer", !149, i64 0}
!149 = !{!"omnipotent char", !150, i64 0}
!150 = !{!"Simple C/C++ TBAA"}
!151 = !{!"long", !149, i64 0}
!152 = !DILocation(line: 56, column: 9, scope: !45)
!153 = !DILocation(line: 56, column: 2, scope: !45)
!154 = distinct !DISubprogram(name: "delta_decode", scope: !46, file: !46, line: 31, type: !72, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !177, !179}
!156 = !DILocalVariable(name: "pcoder", arg: 1, scope: !154, file: !46, line: 31, type: !56)
!157 = !DILocalVariable(name: "allocator", arg: 2, scope: !154, file: !46, line: 31, type: !74)
!158 = !DILocalVariable(name: "in", arg: 3, scope: !154, file: !46, line: 32, type: !89)
!159 = !DILocalVariable(name: "in_pos", arg: 4, scope: !154, file: !46, line: 32, type: !95)
!160 = !DILocalVariable(name: "in_size", arg: 5, scope: !154, file: !46, line: 33, type: !82)
!161 = !DILocalVariable(name: "out", arg: 6, scope: !154, file: !46, line: 33, type: !97)
!162 = !DILocalVariable(name: "out_pos", arg: 7, scope: !154, file: !46, line: 34, type: !95)
!163 = !DILocalVariable(name: "out_size", arg: 8, scope: !154, file: !46, line: 34, type: !82)
!164 = !DILocalVariable(name: "action", arg: 9, scope: !154, file: !46, line: 34, type: !99)
!165 = !DILocalVariable(name: "coder", scope: !154, file: !46, line: 36, type: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !168, line: 18, size: 2688, elements: !169)
!168 = !DIFile(filename: "apps/557.xz_r/src/liblzma/delta/delta_private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "41e9aeb6bf08fbe16153633c0856b3a7")
!169 = !{!170, !171, !172, !173}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !168, line: 20, baseType: !51, size: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !167, file: !168, line: 23, baseType: !82, size: 64, offset: 512)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !167, file: !168, line: 26, baseType: !92, size: 8, offset: 576)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !167, file: !168, line: 29, baseType: !174, size: 2048, offset: 584)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2048, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 256)
!177 = !DILocalVariable(name: "out_start", scope: !154, file: !46, line: 39, type: !178)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!179 = !DILocalVariable(name: "ret", scope: !154, file: !46, line: 41, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!181 = !DILocation(line: 0, scope: !154)
!182 = !DILocation(line: 39, column: 27, scope: !154)
!183 = !{!151, !151, i64 0}
!184 = !DILocation(line: 41, column: 35, scope: !154)
!185 = !{!186, !148, i64 24}
!186 = !{!"lzma_coder_s", !147, i64 0, !151, i64 64, !149, i64 72, !149, i64 73}
!187 = !DILocation(line: 41, column: 52, scope: !154)
!188 = !{!186, !148, i64 0}
!189 = !DILocation(line: 41, column: 23, scope: !154)
!190 = !DILocation(line: 45, column: 27, scope: !154)
!191 = !DILocation(line: 45, column: 40, scope: !154)
!192 = !DILocation(line: 45, column: 49, scope: !154)
!193 = !DILocalVariable(name: "pcoder", arg: 1, scope: !194, file: !46, line: 18, type: !56)
!194 = distinct !DISubprogram(name: "decode_buffer", scope: !46, file: !46, line: 18, type: !195, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !56, !98, !82}
!197 = !{!193, !198, !199, !200, !201, !202}
!198 = !DILocalVariable(name: "buffer", arg: 2, scope: !194, file: !46, line: 18, type: !98)
!199 = !DILocalVariable(name: "size", arg: 3, scope: !194, file: !46, line: 18, type: !82)
!200 = !DILocalVariable(name: "coder", scope: !194, file: !46, line: 20, type: !166)
!201 = !DILocalVariable(name: "distance", scope: !194, file: !46, line: 21, type: !178)
!202 = !DILocalVariable(name: "i", scope: !203, file: !46, line: 23, type: !82)
!203 = distinct !DILexicalBlock(scope: !194, file: !46, line: 23, column: 2)
!204 = !DILocation(line: 0, scope: !194, inlinedAt: !205)
!205 = distinct !DILocation(line: 45, column: 2, scope: !154)
!206 = !DILocation(line: 21, column: 33, scope: !194, inlinedAt: !205)
!207 = !{!186, !151, i64 64}
!208 = !DILocation(line: 0, scope: !203, inlinedAt: !205)
!209 = !DILocation(line: 23, column: 23, scope: !210, inlinedAt: !205)
!210 = distinct !DILexicalBlock(scope: !203, file: !46, line: 23, column: 2)
!211 = !DILocation(line: 23, column: 2, scope: !203, inlinedAt: !205)
!212 = !DILocation(line: 24, column: 50, scope: !213, inlinedAt: !205)
!213 = distinct !DILexicalBlock(scope: !210, file: !46, line: 23, column: 36)
!214 = !{!186, !149, i64 72}
!215 = !DILocation(line: 24, column: 43, scope: !213, inlinedAt: !205)
!216 = !DILocation(line: 24, column: 41, scope: !213, inlinedAt: !205)
!217 = !DILocation(line: 24, column: 55, scope: !213, inlinedAt: !205)
!218 = !DILocation(line: 24, column: 16, scope: !213, inlinedAt: !205)
!219 = !{!149, !149, i64 0}
!220 = !DILocation(line: 24, column: 3, scope: !213, inlinedAt: !205)
!221 = !DILocation(line: 24, column: 13, scope: !213, inlinedAt: !205)
!222 = !DILocation(line: 25, column: 28, scope: !213, inlinedAt: !205)
!223 = !DILocation(line: 25, column: 3, scope: !213, inlinedAt: !205)
!224 = !DILocation(line: 25, column: 39, scope: !213, inlinedAt: !205)
!225 = !DILocation(line: 23, column: 31, scope: !210, inlinedAt: !205)
!226 = distinct !{!226, !211, !227, !228, !229}
!227 = !DILocation(line: 26, column: 2, scope: !203, inlinedAt: !205)
!228 = !{!"llvm.loop.mustprogress"}
!229 = !{!"llvm.loop.unroll.disable"}
!230 = !DILocation(line: 47, column: 2, scope: !154)
!231 = !DISubprogram(name: "lzma_delta_coder_init", scope: !168, file: !168, line: 33, type: !47, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !232)
!232 = !{}
!233 = distinct !DISubprogram(name: "lzma_delta_props_decode", scope: !46, file: !46, line: 61, type: !234, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !237)
!234 = !DISubroutineType(types: !235)
!235 = !{!49, !236, !74, !90, !82}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!237 = !{!238, !239, !240, !241, !242}
!238 = !DILocalVariable(name: "options", arg: 1, scope: !233, file: !46, line: 61, type: !236)
!239 = !DILocalVariable(name: "allocator", arg: 2, scope: !233, file: !46, line: 61, type: !74)
!240 = !DILocalVariable(name: "props", arg: 3, scope: !233, file: !46, line: 62, type: !90)
!241 = !DILocalVariable(name: "props_size", arg: 4, scope: !233, file: !46, line: 62, type: !82)
!242 = !DILocalVariable(name: "opt", scope: !233, file: !46, line: 67, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_delta", file: !33, line: 77, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 45, size: 320, elements: !246)
!246 = !{!247, !249, !252, !253, !254, !255, !256, !257}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !245, file: !33, line: 47, baseType: !248, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_delta_type", file: !33, line: 37, baseType: !32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !245, file: !33, line: 59, baseType: !250, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !62, line: 26, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !64, line: 42, baseType: !5)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !245, file: !33, line: 70, baseType: !250, size: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !245, file: !33, line: 71, baseType: !250, size: 32, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !245, file: !33, line: 72, baseType: !250, size: 32, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !245, file: !33, line: 73, baseType: !250, size: 32, offset: 160)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !245, file: !33, line: 74, baseType: !37, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !245, file: !33, line: 75, baseType: !37, size: 64, offset: 256)
!258 = !DILocation(line: 0, scope: !233)
!259 = !DILocation(line: 64, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !233, file: !46, line: 64, column: 6)
!261 = !DILocation(line: 64, column: 6, scope: !233)
!262 = !DILocation(line: 68, column: 6, scope: !233)
!263 = !DILocation(line: 69, column: 10, scope: !264)
!264 = distinct !DILexicalBlock(scope: !233, file: !46, line: 69, column: 6)
!265 = !DILocation(line: 69, column: 6, scope: !233)
!266 = !DILocation(line: 72, column: 12, scope: !233)
!267 = !{!268, !149, i64 0}
!268 = !{!"", !149, i64 0, !269, i64 4, !269, i64 8, !269, i64 12, !269, i64 16, !269, i64 20, !148, i64 24, !148, i64 32}
!269 = !{!"int", !149, i64 0}
!270 = !DILocation(line: 73, column: 14, scope: !233)
!271 = !DILocation(line: 73, column: 23, scope: !233)
!272 = !DILocation(line: 73, column: 7, scope: !233)
!273 = !DILocation(line: 73, column: 12, scope: !233)
!274 = !{!268, !269, i64 4}
!275 = !DILocation(line: 75, column: 11, scope: !233)
!276 = !{!148, !148, i64 0}
!277 = !DILocation(line: 77, column: 2, scope: !233)
!278 = !DILocation(line: 78, column: 1, scope: !233)
!279 = !DISubprogram(name: "lzma_alloc", scope: !52, file: !52, line: 211, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !232)
!280 = !DISubroutineType(types: !281)
!281 = !{!37, !82, !74}
