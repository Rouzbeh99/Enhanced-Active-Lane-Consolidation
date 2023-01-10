; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/filter_buffer_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_buffer_decode(ptr noundef %filters, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !41 {
entry:
  %next = alloca %struct.lzma_next_coder_s, align 8
  %tmp = alloca [1 x i8], align 1
  %tmp_pos = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %filters, metadata !84, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !85, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata ptr %in, metadata !86, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !87, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !88, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata ptr %out, metadata !89, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !90, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !91, metadata !DIExpression()), !dbg !153
  %cmp = icmp eq ptr %in, null, !dbg !154
  %cmp1 = icmp eq ptr %in_pos, null
  %or.cond = or i1 %cmp, %cmp1, !dbg !156
  br i1 %or.cond, label %return, label %lor.lhs.false2, !dbg !156

lor.lhs.false2:                                   ; preds = %entry
  %0 = load i64, ptr %in_pos, align 8, !dbg !157, !tbaa !158
  %cmp3 = icmp ugt i64 %0, %in_size, !dbg !162
  %cmp5 = icmp eq ptr %out, null
  %or.cond39 = or i1 %cmp5, %cmp3, !dbg !163
  %cmp7 = icmp eq ptr %out_pos, null
  %or.cond40 = or i1 %cmp7, %or.cond39, !dbg !163
  br i1 %or.cond40, label %return, label %lor.lhs.false8, !dbg !163

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %1 = load i64, ptr %out_pos, align 8, !dbg !164, !tbaa !158
  %cmp9 = icmp ugt i64 %1, %out_size, !dbg !165
  br i1 %cmp9, label %return, label %if.end, !dbg !166

if.end:                                           ; preds = %lor.lhs.false8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %next) #5, !dbg !167
  call void @llvm.dbg.declare(metadata ptr %next, metadata !92, metadata !DIExpression()), !dbg !168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %next, i8 0, i64 64, i1 false), !dbg !168
  %2 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 1, !dbg !168
  store i64 -1, ptr %2, align 8, !dbg !168
  %call = call i32 @lzma_raw_decoder_init(ptr noundef nonnull %next, ptr noundef %allocator, ptr noundef %filters) #5, !dbg !169
  call void @llvm.dbg.value(metadata i32 %call, metadata !134, metadata !DIExpression()), !dbg !170
  %cmp10.not = icmp eq i32 %call, 0, !dbg !171
  br i1 %cmp10.not, label %do.end, label %cleanup38

do.end:                                           ; preds = %if.end
  %3 = load i64, ptr %in_pos, align 8, !dbg !173, !tbaa !158
  call void @llvm.dbg.value(metadata i64 %3, metadata !137, metadata !DIExpression()), !dbg !153
  %4 = load i64, ptr %out_pos, align 8, !dbg !174, !tbaa !158
  call void @llvm.dbg.value(metadata i64 %4, metadata !139, metadata !DIExpression()), !dbg !153
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !175
  %5 = load ptr, ptr %code, align 8, !dbg !175, !tbaa !176
  %6 = load ptr, ptr %next, align 8, !dbg !179, !tbaa !180
  %call13 = call i32 %5(ptr noundef %6, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 3) #5, !dbg !181
  call void @llvm.dbg.value(metadata i32 %call13, metadata !140, metadata !DIExpression()), !dbg !153
  switch i32 %call13, label %if.end33 [
    i32 1, label %if.end34
    i32 0, label %if.then17
  ], !dbg !182

if.then17:                                        ; preds = %do.end
  %7 = load i64, ptr %in_pos, align 8, !dbg !183, !tbaa !158
  %cmp18.not = icmp eq i64 %7, %in_size, !dbg !184
  br i1 %cmp18.not, label %if.else20, label %if.end33, !dbg !185

if.else20:                                        ; preds = %if.then17
  %8 = load i64, ptr %out_pos, align 8, !dbg !186, !tbaa !158
  %cmp21.not = icmp eq i64 %8, %out_size, !dbg !187
  br i1 %cmp21.not, label %if.else23, label %if.end33, !dbg !188

if.else23:                                        ; preds = %if.else20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #5, !dbg !189
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !141, metadata !DIExpression()), !dbg !190
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_pos) #5, !dbg !191
  call void @llvm.dbg.value(metadata i64 0, metadata !152, metadata !DIExpression()), !dbg !192
  store i64 0, ptr %tmp_pos, align 8, !dbg !193, !tbaa !158
  %9 = load ptr, ptr %code, align 8, !dbg !194, !tbaa !176
  %10 = load ptr, ptr %next, align 8, !dbg !195, !tbaa !180
  call void @llvm.dbg.value(metadata ptr %tmp_pos, metadata !152, metadata !DIExpression(DW_OP_deref)), !dbg !192
  %call26 = call i32 %9(ptr noundef %10, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef nonnull %tmp, ptr noundef nonnull %tmp_pos, i64 noundef 1, i32 noundef 3) #5, !dbg !196
  %11 = load i64, ptr %tmp_pos, align 8, !dbg !197, !tbaa !158
  call void @llvm.dbg.value(metadata i64 %11, metadata !152, metadata !DIExpression()), !dbg !192
  %cmp27 = icmp eq i64 %11, 1, !dbg !199
  %. = select i1 %cmp27, i32 10, i32 9
  call void @llvm.dbg.value(metadata i32 %., metadata !140, metadata !DIExpression()), !dbg !153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_pos) #5, !dbg !200
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #5, !dbg !200
  br label %if.end33

if.end33:                                         ; preds = %if.else20, %if.then17, %do.end, %if.else23
  %ret.1 = phi i32 [ %., %if.else23 ], [ %call13, %do.end ], [ 10, %if.then17 ], [ 9, %if.else20 ], !dbg !153
  call void @llvm.dbg.value(metadata i32 %ret.1, metadata !140, metadata !DIExpression()), !dbg !153
  store i64 %3, ptr %in_pos, align 8, !dbg !201, !tbaa !158
  store i64 %4, ptr %out_pos, align 8, !dbg !202, !tbaa !158
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end33
  %ret.2 = phi i32 [ %ret.1, %if.end33 ], [ 0, %do.end ], !dbg !203
  call void @llvm.dbg.value(metadata i32 %ret.2, metadata !140, metadata !DIExpression()), !dbg !153
  call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5, !dbg !204
  br label %cleanup38

cleanup38:                                        ; preds = %if.end, %if.end34
  %retval.1 = phi i32 [ %ret.2, %if.end34 ], [ %call, %if.end ], !dbg !153
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %next) #5, !dbg !205
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false2, %lor.lhs.false8, %cleanup38
  %retval.2 = phi i32 [ %retval.1, %cleanup38 ], [ 11, %lor.lhs.false8 ], [ 11, %lor.lhs.false2 ], [ 11, %entry ], !dbg !153
  ret i32 %retval.2, !dbg !205
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !206 i32 @lzma_raw_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !212 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #4

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
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_buffer_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "5878101ad3b22a907e2dd3f2b5d5de2e")
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
!41 = distinct !DISubprogram(name: "lzma_raw_buffer_decode", scope: !42, file: !42, line: 17, type: !43, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !83)
!42 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_buffer_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5878101ad3b22a907e2dd3f2b5d5de2e")
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !46, !61, !76, !81, !69, !82, !81, !69}
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
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !134, !137, !139, !140, !141, !152}
!84 = !DILocalVariable(name: "filters", arg: 1, scope: !41, file: !42, line: 17, type: !46)
!85 = !DILocalVariable(name: "allocator", arg: 2, scope: !41, file: !42, line: 17, type: !61)
!86 = !DILocalVariable(name: "in", arg: 3, scope: !41, file: !42, line: 18, type: !76)
!87 = !DILocalVariable(name: "in_pos", arg: 4, scope: !41, file: !42, line: 18, type: !81)
!88 = !DILocalVariable(name: "in_size", arg: 5, scope: !41, file: !42, line: 18, type: !69)
!89 = !DILocalVariable(name: "out", arg: 6, scope: !41, file: !42, line: 19, type: !82)
!90 = !DILocalVariable(name: "out_pos", arg: 7, scope: !41, file: !42, line: 19, type: !81)
!91 = !DILocalVariable(name: "out_size", arg: 8, scope: !41, file: !42, line: 19, type: !69)
!92 = !DILocalVariable(name: "next", scope: !41, file: !42, line: 27, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !94, line: 80, baseType: !95)
!94 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !94, line: 124, size: 512, elements: !96)
!96 = !{!97, !100, !101, !104, !113, !118, !125, !130}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !95, file: !94, line: 126, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !94, line: 78, baseType: null)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !95, file: !94, line: 130, baseType: !53, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !95, file: !94, line: 136, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !103, line: 90, baseType: !59)
!103 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !95, file: !94, line: 139, baseType: !105, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !94, line: 94, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!45, !98, !61, !109, !110, !69, !111, !110, !69, !112}
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !95, file: !94, line: 144, baseType: !114, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !94, line: 102, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !98, !61}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !95, file: !94, line: 148, baseType: !119, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !123}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !95, file: !94, line: 152, baseType: !126, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!45, !98, !129, !129, !55}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !95, file: !94, line: 157, baseType: !131, size: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!45, !98, !61, !46, !46}
!134 = !DILocalVariable(name: "ret_", scope: !135, file: !42, line: 28, type: !136)
!135 = distinct !DILexicalBlock(scope: !41, file: !42, line: 28, column: 2)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!137 = !DILocalVariable(name: "in_start", scope: !41, file: !42, line: 32, type: !138)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!139 = !DILocalVariable(name: "out_start", scope: !41, file: !42, line: 33, type: !138)
!140 = !DILocalVariable(name: "ret", scope: !41, file: !42, line: 36, type: !45)
!141 = !DILocalVariable(name: "tmp", scope: !142, file: !42, line: 66, type: !149)
!142 = distinct !DILexicalBlock(scope: !143, file: !42, line: 58, column: 11)
!143 = distinct !DILexicalBlock(scope: !144, file: !42, line: 53, column: 15)
!144 = distinct !DILexicalBlock(scope: !145, file: !42, line: 47, column: 8)
!145 = distinct !DILexicalBlock(scope: !146, file: !42, line: 42, column: 23)
!146 = distinct !DILexicalBlock(scope: !147, file: !42, line: 42, column: 7)
!147 = distinct !DILexicalBlock(scope: !148, file: !42, line: 41, column: 9)
!148 = distinct !DILexicalBlock(scope: !41, file: !42, line: 39, column: 6)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 8, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 1)
!152 = !DILocalVariable(name: "tmp_pos", scope: !142, file: !42, line: 67, type: !69)
!153 = !DILocation(line: 0, scope: !41)
!154 = !DILocation(line: 22, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !41, file: !42, line: 22, column: 6)
!156 = !DILocation(line: 22, column: 17, scope: !155)
!157 = !DILocation(line: 22, column: 38, scope: !155)
!158 = !{!159, !159, i64 0}
!159 = !{!"long", !160, i64 0}
!160 = !{!"omnipotent char", !161, i64 0}
!161 = !{!"Simple C/C++ TBAA"}
!162 = !DILocation(line: 22, column: 46, scope: !155)
!163 = !DILocation(line: 22, column: 56, scope: !155)
!164 = !DILocation(line: 23, column: 26, scope: !155)
!165 = !DILocation(line: 23, column: 35, scope: !155)
!166 = !DILocation(line: 22, column: 6, scope: !41)
!167 = !DILocation(line: 27, column: 2, scope: !41)
!168 = !DILocation(line: 27, column: 18, scope: !41)
!169 = !DILocation(line: 28, column: 2, scope: !135)
!170 = !DILocation(line: 0, scope: !135)
!171 = !DILocation(line: 28, column: 2, scope: !172)
!172 = distinct !DILexicalBlock(scope: !135, file: !42, line: 28, column: 2)
!173 = !DILocation(line: 32, column: 26, scope: !41)
!174 = !DILocation(line: 33, column: 27, scope: !41)
!175 = !DILocation(line: 36, column: 22, scope: !41)
!176 = !{!177, !178, i64 24}
!177 = !{!"lzma_next_coder_s", !178, i64 0, !159, i64 8, !159, i64 16, !178, i64 24, !178, i64 32, !178, i64 40, !178, i64 48, !178, i64 56}
!178 = !{!"any pointer", !160, i64 0}
!179 = !DILocation(line: 36, column: 32, scope: !41)
!180 = !{!177, !178, i64 0}
!181 = !DILocation(line: 36, column: 17, scope: !41)
!182 = !DILocation(line: 39, column: 6, scope: !41)
!183 = !DILocation(line: 47, column: 8, scope: !144)
!184 = !DILocation(line: 47, column: 16, scope: !144)
!185 = !DILocation(line: 47, column: 8, scope: !145)
!186 = !DILocation(line: 53, column: 15, scope: !143)
!187 = !DILocation(line: 53, column: 24, scope: !143)
!188 = !DILocation(line: 53, column: 15, scope: !144)
!189 = !DILocation(line: 66, column: 5, scope: !142)
!190 = !DILocation(line: 66, column: 13, scope: !142)
!191 = !DILocation(line: 67, column: 5, scope: !142)
!192 = !DILocation(line: 0, scope: !142)
!193 = !DILocation(line: 67, column: 12, scope: !142)
!194 = !DILocation(line: 68, column: 16, scope: !142)
!195 = !DILocation(line: 68, column: 26, scope: !142)
!196 = !DILocation(line: 68, column: 11, scope: !142)
!197 = !DILocation(line: 72, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !142, file: !42, line: 72, column: 9)
!199 = !DILocation(line: 72, column: 17, scope: !198)
!200 = !DILocation(line: 76, column: 4, scope: !143)
!201 = !DILocation(line: 80, column: 11, scope: !147)
!202 = !DILocation(line: 81, column: 12, scope: !147)
!203 = !DILocation(line: 0, scope: !148)
!204 = !DILocation(line: 84, column: 2, scope: !41)
!205 = !DILocation(line: 87, column: 1, scope: !41)
!206 = !DISubprogram(name: "lzma_raw_decoder_init", scope: !207, file: !207, line: 19, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !211)
!207 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "eb6564ac887b86e116dfd99078c48b83")
!208 = !DISubroutineType(types: !209)
!209 = !{!45, !210, !61, !46}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!211 = !{}
!212 = !DISubprogram(name: "lzma_next_end", scope: !94, file: !94, line: 237, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !211)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !210, !61}
