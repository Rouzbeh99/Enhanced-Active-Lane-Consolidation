; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/block_buffer_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_buffer_decode(ptr noundef %block, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !44 {
entry:
  %block_decoder = alloca %struct.lzma_next_coder_s, align 8
  call void @llvm.dbg.value(metadata ptr %block, metadata !129, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !130, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata ptr %in, metadata !131, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !132, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !133, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata ptr %out, metadata !134, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !135, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !136, metadata !DIExpression()), !dbg !186
  %cmp = icmp eq ptr %in_pos, null, !dbg !187
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !189

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq ptr %in, null, !dbg !190
  %0 = load i64, ptr %in_pos, align 8, !dbg !191, !tbaa !192
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false3, !dbg !196

land.lhs.true:                                    ; preds = %lor.lhs.false
  %cmp2.not = icmp eq i64 %0, %in_size, !dbg !197
  br i1 %cmp2.not, label %lor.lhs.false3, label %return, !dbg !198

lor.lhs.false3:                                   ; preds = %lor.lhs.false, %land.lhs.true
  %1 = phi i64 [ %in_size, %land.lhs.true ], [ %0, %lor.lhs.false ], !dbg !199
  %cmp4 = icmp ugt i64 %1, %in_size, !dbg !200
  %cmp6 = icmp eq ptr %out_pos, null
  %or.cond = or i1 %cmp6, %cmp4, !dbg !201
  br i1 %or.cond, label %return, label %lor.lhs.false7, !dbg !201

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %cmp8 = icmp eq ptr %out, null, !dbg !202
  %2 = load i64, ptr %out_pos, align 8, !dbg !191, !tbaa !192
  br i1 %cmp8, label %land.lhs.true9, label %lor.lhs.false11, !dbg !203

land.lhs.true9:                                   ; preds = %lor.lhs.false7
  %cmp10.not = icmp eq i64 %2, %out_size, !dbg !204
  br i1 %cmp10.not, label %if.end, label %return, !dbg !205

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %cmp12 = icmp ugt i64 %2, %out_size, !dbg !206
  br i1 %cmp12, label %return, label %if.end, !dbg !207

if.end:                                           ; preds = %land.lhs.true9, %lor.lhs.false11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %block_decoder) #5, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %block_decoder, metadata !137, metadata !DIExpression()), !dbg !209
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %block_decoder, i8 0, i64 64, i1 false), !dbg !209
  %3 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %block_decoder, i64 0, i32 1, !dbg !209
  store i64 -1, ptr %3, align 8, !dbg !209
  %call = call i32 @lzma_block_decoder_init(ptr noundef nonnull %block_decoder, ptr noundef %allocator, ptr noundef %block) #5, !dbg !210
  call void @llvm.dbg.value(metadata i32 %call, metadata !180, metadata !DIExpression()), !dbg !186
  %cmp13 = icmp eq i32 %call, 0, !dbg !211
  br i1 %cmp13, label %if.then14, label %if.end26, !dbg !212

if.then14:                                        ; preds = %if.end
  %4 = load i64, ptr %in_pos, align 8, !dbg !213, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %4, metadata !181, metadata !DIExpression()), !dbg !214
  %5 = load i64, ptr %out_pos, align 8, !dbg !215, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %5, metadata !185, metadata !DIExpression()), !dbg !214
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %block_decoder, i64 0, i32 3, !dbg !216
  %6 = load ptr, ptr %code, align 8, !dbg !216, !tbaa !217
  %7 = load ptr, ptr %block_decoder, align 8, !dbg !220, !tbaa !221
  %call15 = call i32 %6(ptr noundef %7, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 3) #5, !dbg !222
  call void @llvm.dbg.value(metadata i32 %call15, metadata !180, metadata !DIExpression()), !dbg !186
  switch i32 %call15, label %if.end24 [
    i32 1, label %if.end26
    i32 0, label %if.then19
  ], !dbg !223

if.then19:                                        ; preds = %if.then14
  %8 = load i64, ptr %in_pos, align 8, !dbg !224, !tbaa !192
  %cmp20 = icmp eq i64 %8, %in_size, !dbg !230
  %. = select i1 %cmp20, i32 9, i32 10
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then14
  %ret.0 = phi i32 [ %call15, %if.then14 ], [ %., %if.then19 ], !dbg !214
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !180, metadata !DIExpression()), !dbg !186
  store i64 %4, ptr %in_pos, align 8, !dbg !231, !tbaa !192
  store i64 %5, ptr %out_pos, align 8, !dbg !232, !tbaa !192
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.then14, %if.end
  %ret.2 = phi i32 [ %call, %if.end ], [ %ret.0, %if.end24 ], [ 0, %if.then14 ], !dbg !186
  call void @llvm.dbg.value(metadata i32 %ret.2, metadata !180, metadata !DIExpression()), !dbg !186
  call void @lzma_next_end(ptr noundef nonnull %block_decoder, ptr noundef %allocator) #5, !dbg !233
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %block_decoder) #5, !dbg !234
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %lor.lhs.false3, %land.lhs.true9, %lor.lhs.false11, %if.end26
  %retval.0 = phi i32 [ %ret.2, %if.end26 ], [ 11, %lor.lhs.false11 ], [ 11, %land.lhs.true9 ], [ 11, %lor.lhs.false3 ], [ 11, %land.lhs.true ], [ 11, %entry ], !dbg !186
  ret i32 %retval.0, !dbg !234
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !235 i32 @lzma_block_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !241 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_buffer_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "ecaea2d3c10afacf016d39de887b7677")
!2 = !{!3, !19, !26, !29}
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
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!32 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!33 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!34 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 7, !"PIC Level", i32 2}
!41 = !{i32 7, !"PIE Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 2}
!43 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!44 = distinct !DISubprogram(name: "lzma_block_buffer_decode", scope: !45, file: !45, line: 17, type: !46, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !128)
!45 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/block_buffer_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ecaea2d3c10afacf016d39de887b7677")
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !109, !124, !126, !117, !127, !126, !117}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !51, line: 245, baseType: !52)
!51 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/block.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 30, size: 1664, elements: !53)
!53 = !{!54, !59, !60, !62, !68, !69, !77, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !106, !107, !108}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !52, file: !51, line: 47, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !56, line: 26, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !58, line: 42, baseType: !5)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!59 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !52, file: !51, line: 67, baseType: !55, size: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !52, file: !51, line: 88, baseType: !61, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !52, file: !51, line: 143, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !64, line: 63, baseType: !65)
!64 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !56, line: 27, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !58, line: 45, baseType: !67)
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !52, file: !51, line: 167, baseType: !63, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !52, file: !51, line: 195, baseType: !70, size: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !72, line: 65, baseType: !73)
!72 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 43, size: 128, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !73, file: !72, line: 54, baseType: !63, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !73, file: !72, line: 63, baseType: !36, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !52, file: !51, line: 212, baseType: !78, size: 512, offset: 320)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 512, elements: !82)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !56, line: 24, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !58, line: 38, baseType: !81)
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !{!83}
!83 = !DISubrange(count: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !52, file: !51, line: 221, baseType: !36, size: 64, offset: 832)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !52, file: !51, line: 222, baseType: !36, size: 64, offset: 896)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !52, file: !51, line: 223, baseType: !36, size: 64, offset: 960)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !52, file: !51, line: 224, baseType: !55, size: 32, offset: 1024)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !52, file: !51, line: 225, baseType: !55, size: 32, offset: 1056)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !52, file: !51, line: 226, baseType: !63, size: 64, offset: 1088)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !52, file: !51, line: 227, baseType: !63, size: 64, offset: 1152)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !52, file: !51, line: 228, baseType: !63, size: 64, offset: 1216)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !52, file: !51, line: 229, baseType: !63, size: 64, offset: 1280)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !52, file: !51, line: 230, baseType: !63, size: 64, offset: 1344)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !52, file: !51, line: 231, baseType: !63, size: 64, offset: 1408)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !52, file: !51, line: 232, baseType: !96, size: 32, offset: 1472)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !52, file: !51, line: 233, baseType: !96, size: 32, offset: 1504)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !52, file: !51, line: 234, baseType: !96, size: 32, offset: 1536)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !52, file: !51, line: 235, baseType: !96, size: 32, offset: 1568)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !52, file: !51, line: 236, baseType: !101, size: 8, offset: 1600)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !81)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !52, file: !51, line: 237, baseType: !101, size: 8, offset: 1608)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !52, file: !51, line: 238, baseType: !101, size: 8, offset: 1616)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !52, file: !51, line: 239, baseType: !101, size: 8, offset: 1624)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !52, file: !51, line: 240, baseType: !101, size: 8, offset: 1632)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !52, file: !51, line: 241, baseType: !101, size: 8, offset: 1640)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !52, file: !51, line: 242, baseType: !101, size: 8, offset: 1648)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !52, file: !51, line: 243, baseType: !101, size: 8, offset: 1656)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !112)
!112 = !{!113, !119, !123}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !111, file: !4, line: 376, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!36, !36, !117, !117}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 46, baseType: !67)
!118 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!119 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !111, file: !4, line: 390, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !36, !36}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !111, file: !4, line: 401, baseType: !36, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !180, !181, !185}
!129 = !DILocalVariable(name: "block", arg: 1, scope: !44, file: !45, line: 17, type: !49)
!130 = !DILocalVariable(name: "allocator", arg: 2, scope: !44, file: !45, line: 17, type: !109)
!131 = !DILocalVariable(name: "in", arg: 3, scope: !44, file: !45, line: 18, type: !124)
!132 = !DILocalVariable(name: "in_pos", arg: 4, scope: !44, file: !45, line: 18, type: !126)
!133 = !DILocalVariable(name: "in_size", arg: 5, scope: !44, file: !45, line: 18, type: !117)
!134 = !DILocalVariable(name: "out", arg: 6, scope: !44, file: !45, line: 19, type: !127)
!135 = !DILocalVariable(name: "out_pos", arg: 7, scope: !44, file: !45, line: 19, type: !126)
!136 = !DILocalVariable(name: "out_size", arg: 8, scope: !44, file: !45, line: 19, type: !117)
!137 = !DILocalVariable(name: "block_decoder", scope: !44, file: !45, line: 28, type: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !139, line: 80, baseType: !140)
!139 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !139, line: 124, size: 512, elements: !141)
!141 = !{!142, !145, !146, !149, !158, !163, !169, !174}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !140, file: !139, line: 126, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !139, line: 78, baseType: null)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !140, file: !139, line: 130, baseType: !63, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !140, file: !139, line: 136, baseType: !147, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !148, line: 90, baseType: !67)
!148 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!149 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !140, file: !139, line: 139, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !139, line: 94, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!48, !143, !109, !154, !155, !117, !156, !155, !117, !157}
!154 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!155 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !29)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !140, file: !139, line: 144, baseType: !159, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !139, line: 102, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !143, !109}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !140, file: !139, line: 148, baseType: !164, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!61, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !140, file: !139, line: 152, baseType: !170, size: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!48, !143, !173, !173, !65}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !140, file: !139, line: 157, baseType: !175, size: 64, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!48, !143, !109, !178, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!180 = !DILocalVariable(name: "ret", scope: !44, file: !45, line: 29, type: !48)
!181 = !DILocalVariable(name: "in_start", scope: !182, file: !45, line: 35, type: !184)
!182 = distinct !DILexicalBlock(scope: !183, file: !45, line: 32, column: 22)
!183 = distinct !DILexicalBlock(scope: !44, file: !45, line: 32, column: 6)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!185 = !DILocalVariable(name: "out_start", scope: !182, file: !45, line: 36, type: !184)
!186 = !DILocation(line: 0, scope: !44)
!187 = !DILocation(line: 21, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !44, file: !45, line: 21, column: 6)
!189 = !DILocation(line: 21, column: 21, scope: !188)
!190 = !DILocation(line: 21, column: 28, scope: !188)
!191 = !DILocation(line: 0, scope: !188)
!192 = !{!193, !193, i64 0}
!193 = !{!"long", !194, i64 0}
!194 = !{!"omnipotent char", !195, i64 0}
!195 = !{!"Simple C/C++ TBAA"}
!196 = !DILocation(line: 21, column: 36, scope: !188)
!197 = !DILocation(line: 21, column: 47, scope: !188)
!198 = !DILocation(line: 22, column: 4, scope: !188)
!199 = !DILocation(line: 22, column: 7, scope: !188)
!200 = !DILocation(line: 22, column: 15, scope: !188)
!201 = !DILocation(line: 22, column: 25, scope: !188)
!202 = !DILocation(line: 23, column: 12, scope: !188)
!203 = !DILocation(line: 23, column: 20, scope: !188)
!204 = !DILocation(line: 23, column: 32, scope: !188)
!205 = !DILocation(line: 24, column: 4, scope: !188)
!206 = !DILocation(line: 24, column: 16, scope: !188)
!207 = !DILocation(line: 21, column: 6, scope: !44)
!208 = !DILocation(line: 28, column: 2, scope: !44)
!209 = !DILocation(line: 28, column: 18, scope: !44)
!210 = !DILocation(line: 29, column: 17, scope: !44)
!211 = !DILocation(line: 32, column: 10, scope: !183)
!212 = !DILocation(line: 32, column: 6, scope: !44)
!213 = !DILocation(line: 35, column: 27, scope: !182)
!214 = !DILocation(line: 0, scope: !182)
!215 = !DILocation(line: 36, column: 28, scope: !182)
!216 = !DILocation(line: 39, column: 23, scope: !182)
!217 = !{!218, !219, i64 24}
!218 = !{!"lzma_next_coder_s", !219, i64 0, !193, i64 8, !193, i64 16, !219, i64 24, !219, i64 32, !219, i64 40, !219, i64 48, !219, i64 56}
!219 = !{!"any pointer", !194, i64 0}
!220 = !DILocation(line: 39, column: 42, scope: !182)
!221 = !{!218, !219, i64 0}
!222 = !DILocation(line: 39, column: 9, scope: !182)
!223 = !DILocation(line: 43, column: 7, scope: !182)
!224 = !DILocation(line: 62, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !45, line: 62, column: 9)
!226 = distinct !DILexicalBlock(scope: !227, file: !45, line: 46, column: 24)
!227 = distinct !DILexicalBlock(scope: !228, file: !45, line: 46, column: 8)
!228 = distinct !DILexicalBlock(scope: !229, file: !45, line: 45, column: 10)
!229 = distinct !DILexicalBlock(scope: !182, file: !45, line: 43, column: 7)
!230 = !DILocation(line: 62, column: 17, scope: !225)
!231 = !DILocation(line: 69, column: 12, scope: !228)
!232 = !DILocation(line: 70, column: 13, scope: !228)
!233 = !DILocation(line: 77, column: 2, scope: !44)
!234 = !DILocation(line: 80, column: 1, scope: !44)
!235 = !DISubprogram(name: "lzma_block_decoder_init", scope: !236, file: !236, line: 19, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !240)
!236 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/block_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d741972e9232abef21e8d748627f2569")
!237 = !DISubroutineType(types: !238)
!238 = !{!48, !239, !109, !49}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!240 = !{}
!241 = !DISubprogram(name: "lzma_next_end", scope: !139, file: !139, line: 237, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !240)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !239, !109}
