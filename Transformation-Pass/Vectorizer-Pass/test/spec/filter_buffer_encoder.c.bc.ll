; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/filter_buffer_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_buffer_encode(ptr noundef %filters, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !41 {
entry:
  %next = alloca %struct.lzma_next_coder_s, align 8
  %in_pos = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %filters, metadata !84, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !85, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata ptr %in, metadata !86, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !87, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata ptr %out, metadata !88, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !89, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !90, metadata !DIExpression()), !dbg !140
  %cmp = icmp eq ptr %in, null, !dbg !141
  %cmp1 = icmp ne i64 %in_size, 0
  %or.cond = and i1 %cmp, %cmp1, !dbg !143
  %cmp2 = icmp eq ptr %out, null
  %or.cond21 = or i1 %or.cond, %cmp2, !dbg !143
  %cmp4 = icmp eq ptr %out_pos, null
  %or.cond22 = or i1 %or.cond21, %cmp4, !dbg !143
  br i1 %or.cond22, label %return, label %lor.lhs.false5, !dbg !143

lor.lhs.false5:                                   ; preds = %entry
  %0 = load i64, ptr %out_pos, align 8, !dbg !144, !tbaa !145
  %cmp6 = icmp ugt i64 %0, %out_size, !dbg !149
  br i1 %cmp6, label %return, label %if.end, !dbg !150

if.end:                                           ; preds = %lor.lhs.false5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %next) #5, !dbg !151
  call void @llvm.dbg.declare(metadata ptr %next, metadata !91, metadata !DIExpression()), !dbg !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %next, i8 0, i64 64, i1 false), !dbg !152
  %1 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 1, !dbg !152
  store i64 -1, ptr %1, align 8, !dbg !152
  %call = call i32 @lzma_raw_encoder_init(ptr noundef nonnull %next, ptr noundef %allocator, ptr noundef %filters) #5, !dbg !153
  call void @llvm.dbg.value(metadata i32 %call, metadata !133, metadata !DIExpression()), !dbg !154
  %cmp7.not = icmp eq i32 %call, 0, !dbg !155
  br i1 %cmp7.not, label %do.end, label %cleanup20

do.end:                                           ; preds = %if.end
  %2 = load i64, ptr %out_pos, align 8, !dbg !157, !tbaa !145
  call void @llvm.dbg.value(metadata i64 %2, metadata !136, metadata !DIExpression()), !dbg !140
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_pos) #5, !dbg !158
  call void @llvm.dbg.value(metadata i64 0, metadata !138, metadata !DIExpression()), !dbg !140
  store i64 0, ptr %in_pos, align 8, !dbg !159, !tbaa !145
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !160
  %3 = load ptr, ptr %code, align 8, !dbg !160, !tbaa !161
  %4 = load ptr, ptr %next, align 8, !dbg !164, !tbaa !165
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !138, metadata !DIExpression(DW_OP_deref)), !dbg !140
  %call10 = call i32 %3(ptr noundef %4, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 3) #5, !dbg !166
  call void @llvm.dbg.value(metadata i32 %call10, metadata !139, metadata !DIExpression()), !dbg !140
  call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5, !dbg !167
  %cmp11 = icmp eq i32 %call10, 1, !dbg !168
  br i1 %cmp11, label %if.end16, label %if.else, !dbg !170

if.else:                                          ; preds = %do.end
  %cmp13 = icmp eq i32 %call10, 0, !dbg !171
  %spec.store.select = select i1 %cmp13, i32 10, i32 %call10, !dbg !174
  call void @llvm.dbg.value(metadata i32 %spec.store.select, metadata !139, metadata !DIExpression()), !dbg !140
  store i64 %2, ptr %out_pos, align 8, !dbg !175, !tbaa !145
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.else
  %ret.0 = phi i32 [ %spec.store.select, %if.else ], [ 0, %do.end ], !dbg !176
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_pos) #5, !dbg !177
  br label %cleanup20

cleanup20:                                        ; preds = %if.end, %if.end16
  %retval.1 = phi i32 [ %ret.0, %if.end16 ], [ %call, %if.end ], !dbg !140
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %next) #5, !dbg !177
  br label %return

return:                                           ; preds = %lor.lhs.false5, %entry, %cleanup20
  %retval.2 = phi i32 [ %retval.1, %cleanup20 ], [ 11, %entry ], [ 11, %lor.lhs.false5 ], !dbg !140
  ret i32 %retval.2, !dbg !177
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !178 i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !184 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_buffer_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "0998afbb91f47ff68f6e2b95ba048706")
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
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !{i32 7, !"Dwarf Version", i32 5}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 4}
!37 = !{i32 7, !"PIC Level", i32 2}
!38 = !{i32 7, !"PIE Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 2}
!40 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!41 = distinct !DISubprogram(name: "lzma_raw_buffer_encode", scope: !42, file: !42, line: 17, type: !43, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !83)
!42 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_buffer_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0998afbb91f47ff68f6e2b95ba048706")
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !46, !61, !76, !69, !81, !82, !69}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !49, line: 65, baseType: !50)
!49 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 43, size: 128, elements: !51)
!51 = !{!52, !60}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !50, file: !49, line: 54, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !54, line: 63, baseType: !55)
!54 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !56, line: 27, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !58, line: 45, baseType: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !50, file: !49, line: 63, baseType: !33, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !64)
!64 = !{!65, !71, !75}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !63, file: !4, line: 376, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!33, !33, !69, !69}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !59)
!70 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !63, file: !4, line: 390, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !33, !33}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !63, file: !4, line: 401, baseType: !33, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !56, line: 24, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !58, line: 38, baseType: !80)
!80 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !133, !136, !138, !139}
!84 = !DILocalVariable(name: "filters", arg: 1, scope: !41, file: !42, line: 17, type: !46)
!85 = !DILocalVariable(name: "allocator", arg: 2, scope: !41, file: !42, line: 17, type: !61)
!86 = !DILocalVariable(name: "in", arg: 3, scope: !41, file: !42, line: 18, type: !76)
!87 = !DILocalVariable(name: "in_size", arg: 4, scope: !41, file: !42, line: 18, type: !69)
!88 = !DILocalVariable(name: "out", arg: 5, scope: !41, file: !42, line: 18, type: !81)
!89 = !DILocalVariable(name: "out_pos", arg: 6, scope: !41, file: !42, line: 19, type: !82)
!90 = !DILocalVariable(name: "out_size", arg: 7, scope: !41, file: !42, line: 19, type: !69)
!91 = !DILocalVariable(name: "next", scope: !41, file: !42, line: 27, type: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !93, line: 80, baseType: !94)
!93 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !93, line: 124, size: 512, elements: !95)
!95 = !{!96, !99, !100, !103, !112, !117, !124, !129}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !94, file: !93, line: 126, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !93, line: 78, baseType: null)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !94, file: !93, line: 130, baseType: !53, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !94, file: !93, line: 136, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !102, line: 90, baseType: !59)
!102 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!103 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !94, file: !93, line: 139, baseType: !104, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !93, line: 94, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!45, !97, !61, !108, !109, !69, !110, !109, !69, !111}
!108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !94, file: !93, line: 144, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !93, line: 102, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !97, !61}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !94, file: !93, line: 148, baseType: !118, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !94, file: !93, line: 152, baseType: !125, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!45, !97, !128, !128, !55}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !94, file: !93, line: 157, baseType: !130, size: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!45, !97, !61, !46, !46}
!133 = !DILocalVariable(name: "ret_", scope: !134, file: !42, line: 28, type: !135)
!134 = distinct !DILexicalBlock(scope: !41, file: !42, line: 28, column: 2)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!136 = !DILocalVariable(name: "out_start", scope: !41, file: !42, line: 32, type: !137)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!138 = !DILocalVariable(name: "in_pos", scope: !41, file: !42, line: 35, type: !69)
!139 = !DILocalVariable(name: "ret", scope: !41, file: !42, line: 36, type: !45)
!140 = !DILocation(line: 0, scope: !41)
!141 = !DILocation(line: 22, column: 10, scope: !142)
!142 = distinct !DILexicalBlock(scope: !41, file: !42, line: 22, column: 6)
!143 = !DILocation(line: 22, column: 18, scope: !142)
!144 = !DILocation(line: 23, column: 26, scope: !142)
!145 = !{!146, !146, i64 0}
!146 = !{!"long", !147, i64 0}
!147 = !{!"omnipotent char", !148, i64 0}
!148 = !{!"Simple C/C++ TBAA"}
!149 = !DILocation(line: 23, column: 35, scope: !142)
!150 = !DILocation(line: 22, column: 6, scope: !41)
!151 = !DILocation(line: 27, column: 2, scope: !41)
!152 = !DILocation(line: 27, column: 18, scope: !41)
!153 = !DILocation(line: 28, column: 2, scope: !134)
!154 = !DILocation(line: 0, scope: !134)
!155 = !DILocation(line: 28, column: 2, scope: !156)
!156 = distinct !DILexicalBlock(scope: !134, file: !42, line: 28, column: 2)
!157 = !DILocation(line: 32, column: 27, scope: !41)
!158 = !DILocation(line: 35, column: 2, scope: !41)
!159 = !DILocation(line: 35, column: 9, scope: !41)
!160 = !DILocation(line: 36, column: 22, scope: !41)
!161 = !{!162, !163, i64 24}
!162 = !{!"lzma_next_coder_s", !163, i64 0, !146, i64 8, !146, i64 16, !163, i64 24, !163, i64 32, !163, i64 40, !163, i64 48, !163, i64 56}
!163 = !{!"any pointer", !147, i64 0}
!164 = !DILocation(line: 36, column: 32, scope: !41)
!165 = !{!162, !163, i64 0}
!166 = !DILocation(line: 36, column: 17, scope: !41)
!167 = !DILocation(line: 38, column: 2, scope: !41)
!168 = !DILocation(line: 40, column: 10, scope: !169)
!169 = distinct !DILexicalBlock(scope: !41, file: !42, line: 40, column: 6)
!170 = !DILocation(line: 40, column: 6, scope: !41)
!171 = !DILocation(line: 43, column: 11, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !42, line: 43, column: 7)
!173 = distinct !DILexicalBlock(scope: !169, file: !42, line: 42, column: 9)
!174 = !DILocation(line: 43, column: 7, scope: !173)
!175 = !DILocation(line: 50, column: 12, scope: !173)
!176 = !DILocation(line: 0, scope: !169)
!177 = !DILocation(line: 54, column: 1, scope: !41)
!178 = !DISubprogram(name: "lzma_raw_encoder_init", scope: !179, file: !179, line: 23, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !183)
!179 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ddc4c6a58369644501ee0eefd7b6bf8f")
!180 = !DISubroutineType(types: !181)
!181 = !{!45, !182, !61, !46}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!183 = !{}
!184 = !DISubprogram(name: "lzma_next_end", scope: !93, file: !93, line: 237, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !183)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !182, !61}
