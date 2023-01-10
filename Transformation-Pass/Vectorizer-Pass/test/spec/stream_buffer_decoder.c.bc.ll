; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/stream_buffer_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_buffer_decode(ptr noundef %memlimit, i32 noundef %flags, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !41 {
entry:
  %stream_decoder = alloca %struct.lzma_next_coder_s, align 8
  %memusage = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %memlimit, metadata !77, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %flags, metadata !78, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !79, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata ptr %in, metadata !80, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !81, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !82, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata ptr %out, metadata !83, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !84, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !85, metadata !DIExpression()), !dbg !149
  %cmp = icmp eq ptr %in_pos, null, !dbg !150
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !152

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq ptr %in, null, !dbg !153
  %0 = load i64, ptr %in_pos, align 8, !dbg !154, !tbaa !155
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false3, !dbg !159

land.lhs.true:                                    ; preds = %lor.lhs.false
  %cmp2.not = icmp eq i64 %0, %in_size, !dbg !160
  br i1 %cmp2.not, label %lor.lhs.false3, label %return, !dbg !161

lor.lhs.false3:                                   ; preds = %lor.lhs.false, %land.lhs.true
  %1 = phi i64 [ %in_size, %land.lhs.true ], [ %0, %lor.lhs.false ], !dbg !162
  %cmp4 = icmp ugt i64 %1, %in_size, !dbg !163
  %cmp6 = icmp eq ptr %out_pos, null
  %or.cond = or i1 %cmp6, %cmp4, !dbg !164
  br i1 %or.cond, label %return, label %lor.lhs.false7, !dbg !164

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %cmp8 = icmp eq ptr %out, null, !dbg !165
  %2 = load i64, ptr %out_pos, align 8, !dbg !154, !tbaa !155
  br i1 %cmp8, label %land.lhs.true9, label %lor.lhs.false11, !dbg !166

land.lhs.true9:                                   ; preds = %lor.lhs.false7
  %cmp10.not = icmp eq i64 %2, %out_size, !dbg !167
  br i1 %cmp10.not, label %lor.lhs.false11, label %return, !dbg !168

lor.lhs.false11:                                  ; preds = %lor.lhs.false7, %land.lhs.true9
  %3 = phi i64 [ %out_size, %land.lhs.true9 ], [ %2, %lor.lhs.false7 ], !dbg !169
  %cmp12 = icmp ule i64 %3, %out_size, !dbg !170
  %and = and i32 %flags, 4
  %tobool.not = icmp eq i32 %and, 0
  %or.cond61 = and i1 %tobool.not, %cmp12, !dbg !171
  br i1 %or.cond61, label %if.end14, label %return, !dbg !171

if.end14:                                         ; preds = %lor.lhs.false11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %stream_decoder) #5, !dbg !172
  call void @llvm.dbg.declare(metadata ptr %stream_decoder, metadata !86, metadata !DIExpression()), !dbg !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %stream_decoder, i8 0, i64 64, i1 false), !dbg !173
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %stream_decoder, i64 0, i32 1, !dbg !173
  store i64 -1, ptr %4, align 8, !dbg !173
  %5 = load i64, ptr %memlimit, align 8, !dbg !174, !tbaa !155
  %call = call i32 @lzma_stream_decoder_init(ptr noundef nonnull %stream_decoder, ptr noundef %allocator, i64 noundef %5, i32 noundef %flags) #5, !dbg !175
  call void @llvm.dbg.value(metadata i32 %call, metadata !137, metadata !DIExpression()), !dbg !149
  %cmp15 = icmp eq i32 %call, 0, !dbg !176
  br i1 %cmp15, label %if.then16, label %if.end34, !dbg !177

if.then16:                                        ; preds = %if.end14
  %6 = load i64, ptr %in_pos, align 8, !dbg !178, !tbaa !155
  call void @llvm.dbg.value(metadata i64 %6, metadata !138, metadata !DIExpression()), !dbg !179
  %7 = load i64, ptr %out_pos, align 8, !dbg !180, !tbaa !155
  call void @llvm.dbg.value(metadata i64 %7, metadata !142, metadata !DIExpression()), !dbg !179
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %stream_decoder, i64 0, i32 3, !dbg !181
  %8 = load ptr, ptr %code, align 8, !dbg !181, !tbaa !182
  %9 = load ptr, ptr %stream_decoder, align 8, !dbg !185, !tbaa !186
  %call17 = call i32 %8(ptr noundef %9, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 3) #5, !dbg !187
  call void @llvm.dbg.value(metadata i32 %call17, metadata !137, metadata !DIExpression()), !dbg !149
  %cmp18 = icmp eq i32 %call17, 1, !dbg !188
  br i1 %cmp18, label %if.end34, label %if.else, !dbg !189

if.else:                                          ; preds = %if.then16
  store i64 %6, ptr %in_pos, align 8, !dbg !190, !tbaa !155
  store i64 %7, ptr %out_pos, align 8, !dbg !191, !tbaa !155
  switch i32 %call17, label %if.end34 [
    i32 0, label %if.then21
    i32 6, label %if.then28
  ], !dbg !192

if.then21:                                        ; preds = %if.else
  %10 = load i64, ptr %in_pos, align 8, !dbg !193, !tbaa !155
  %cmp22 = icmp eq i64 %10, %in_size, !dbg !196
  %. = select i1 %cmp22, i32 9, i32 10
  br label %if.end34

if.then28:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memusage) #5, !dbg !197
  %memconfig = getelementptr inbounds %struct.lzma_next_coder_s, ptr %stream_decoder, i64 0, i32 6, !dbg !198
  %11 = load ptr, ptr %memconfig, align 8, !dbg !198, !tbaa !199
  %12 = load ptr, ptr %stream_decoder, align 8, !dbg !200, !tbaa !186
  call void @llvm.dbg.value(metadata ptr %memusage, metadata !143, metadata !DIExpression(DW_OP_deref)), !dbg !201
  %call30 = call i32 %11(ptr noundef %12, ptr noundef nonnull %memlimit, ptr noundef nonnull %memusage, i64 noundef 0) #5, !dbg !202
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memusage) #5, !dbg !203
  br label %if.end34, !dbg !204

if.end34:                                         ; preds = %if.then28, %if.then16, %if.then21, %if.else, %if.end14
  %ret.1 = phi i32 [ %call, %if.end14 ], [ 6, %if.then28 ], [ 0, %if.then16 ], [ %., %if.then21 ], [ %call17, %if.else ], !dbg !149
  call void @llvm.dbg.value(metadata i32 %ret.1, metadata !137, metadata !DIExpression()), !dbg !149
  call void @lzma_next_end(ptr noundef nonnull %stream_decoder, ptr noundef %allocator) #5, !dbg !205
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %stream_decoder) #5, !dbg !206
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %lor.lhs.false3, %land.lhs.true9, %lor.lhs.false11, %if.end34
  %retval.0 = phi i32 [ %ret.1, %if.end34 ], [ 11, %lor.lhs.false11 ], [ 11, %land.lhs.true9 ], [ 11, %lor.lhs.false3 ], [ 11, %land.lhs.true ], [ 11, %entry ], !dbg !149
  ret i32 %retval.0, !dbg !206
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !207 i32 @lzma_stream_decoder_init(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !213 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #4

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
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_buffer_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "0690b7f38e6e5e8b11f02aee3af00bbd")
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
!41 = distinct !DISubprogram(name: "lzma_stream_buffer_decode", scope: !42, file: !42, line: 17, type: !43, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!42 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/stream_buffer_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0690b7f38e6e5e8b11f02aee3af00bbd")
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !46, !52, !54, !69, !74, !62, !75, !74, !62}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !48, line: 27, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !50, line: 45, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !48, line: 26, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !50, line: 42, baseType: !5)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !57)
!57 = !{!58, !64, !68}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !56, file: !4, line: 376, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!33, !33, !62, !62}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 46, baseType: !51)
!63 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!64 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !56, file: !4, line: 390, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !33, !33}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !56, file: !4, line: 401, baseType: !33, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !48, line: 24, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !50, line: 38, baseType: !73)
!73 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !137, !138, !142, !143}
!77 = !DILocalVariable(name: "memlimit", arg: 1, scope: !41, file: !42, line: 17, type: !46)
!78 = !DILocalVariable(name: "flags", arg: 2, scope: !41, file: !42, line: 17, type: !52)
!79 = !DILocalVariable(name: "allocator", arg: 3, scope: !41, file: !42, line: 18, type: !54)
!80 = !DILocalVariable(name: "in", arg: 4, scope: !41, file: !42, line: 19, type: !69)
!81 = !DILocalVariable(name: "in_pos", arg: 5, scope: !41, file: !42, line: 19, type: !74)
!82 = !DILocalVariable(name: "in_size", arg: 6, scope: !41, file: !42, line: 19, type: !62)
!83 = !DILocalVariable(name: "out", arg: 7, scope: !41, file: !42, line: 20, type: !75)
!84 = !DILocalVariable(name: "out_pos", arg: 8, scope: !41, file: !42, line: 20, type: !74)
!85 = !DILocalVariable(name: "out_size", arg: 9, scope: !41, file: !42, line: 20, type: !62)
!86 = !DILocalVariable(name: "stream_decoder", scope: !41, file: !42, line: 36, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !88, line: 80, baseType: !89)
!88 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !88, line: 124, size: 512, elements: !90)
!90 = !{!91, !94, !97, !100, !109, !114, !121, !125}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !89, file: !88, line: 126, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !88, line: 78, baseType: null)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !89, file: !88, line: 130, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !96, line: 63, baseType: !47)
!96 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !89, file: !88, line: 136, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !99, line: 90, baseType: !51)
!99 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !89, file: !88, line: 139, baseType: !101, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !88, line: 94, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!45, !92, !54, !105, !106, !62, !107, !106, !62, !108}
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !89, file: !88, line: 144, baseType: !110, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !88, line: 102, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !92, !54}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !89, file: !88, line: 148, baseType: !115, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !89, file: !88, line: 152, baseType: !122, size: 64, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!45, !92, !46, !46, !47}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !89, file: !88, line: 157, baseType: !126, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!45, !92, !54, !129, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !132, line: 65, baseType: !133)
!132 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !132, line: 43, size: 128, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !133, file: !132, line: 54, baseType: !95, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !133, file: !132, line: 63, baseType: !33, size: 64, offset: 64)
!137 = !DILocalVariable(name: "ret", scope: !41, file: !42, line: 37, type: !45)
!138 = !DILocalVariable(name: "in_start", scope: !139, file: !42, line: 43, type: !141)
!139 = distinct !DILexicalBlock(scope: !140, file: !42, line: 40, column: 22)
!140 = distinct !DILexicalBlock(scope: !41, file: !42, line: 40, column: 6)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!142 = !DILocalVariable(name: "out_start", scope: !139, file: !42, line: 44, type: !141)
!143 = !DILocalVariable(name: "memusage", scope: !144, file: !42, line: 77, type: !47)
!144 = distinct !DILexicalBlock(scope: !145, file: !42, line: 74, column: 43)
!145 = distinct !DILexicalBlock(scope: !146, file: !42, line: 74, column: 15)
!146 = distinct !DILexicalBlock(scope: !147, file: !42, line: 58, column: 8)
!147 = distinct !DILexicalBlock(scope: !148, file: !42, line: 53, column: 10)
!148 = distinct !DILexicalBlock(scope: !139, file: !42, line: 51, column: 7)
!149 = !DILocation(line: 0, scope: !41)
!150 = !DILocation(line: 23, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !41, file: !42, line: 23, column: 6)
!152 = !DILocation(line: 23, column: 21, scope: !151)
!153 = !DILocation(line: 23, column: 28, scope: !151)
!154 = !DILocation(line: 0, scope: !151)
!155 = !{!156, !156, i64 0}
!156 = !{!"long", !157, i64 0}
!157 = !{!"omnipotent char", !158, i64 0}
!158 = !{!"Simple C/C++ TBAA"}
!159 = !DILocation(line: 23, column: 36, scope: !151)
!160 = !DILocation(line: 23, column: 47, scope: !151)
!161 = !DILocation(line: 24, column: 4, scope: !151)
!162 = !DILocation(line: 24, column: 7, scope: !151)
!163 = !DILocation(line: 24, column: 15, scope: !151)
!164 = !DILocation(line: 24, column: 25, scope: !151)
!165 = !DILocation(line: 25, column: 12, scope: !151)
!166 = !DILocation(line: 25, column: 20, scope: !151)
!167 = !DILocation(line: 25, column: 32, scope: !151)
!168 = !DILocation(line: 26, column: 4, scope: !151)
!169 = !DILocation(line: 26, column: 7, scope: !151)
!170 = !DILocation(line: 26, column: 16, scope: !151)
!171 = !DILocation(line: 23, column: 6, scope: !41)
!172 = !DILocation(line: 36, column: 2, scope: !41)
!173 = !DILocation(line: 36, column: 18, scope: !41)
!174 = !DILocation(line: 38, column: 32, scope: !41)
!175 = !DILocation(line: 37, column: 17, scope: !41)
!176 = !DILocation(line: 40, column: 10, scope: !140)
!177 = !DILocation(line: 40, column: 6, scope: !41)
!178 = !DILocation(line: 43, column: 27, scope: !139)
!179 = !DILocation(line: 0, scope: !139)
!180 = !DILocation(line: 44, column: 28, scope: !139)
!181 = !DILocation(line: 47, column: 24, scope: !139)
!182 = !{!183, !184, i64 24}
!183 = !{!"lzma_next_coder_s", !184, i64 0, !156, i64 8, !156, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56}
!184 = !{!"any pointer", !157, i64 0}
!185 = !DILocation(line: 47, column: 44, scope: !139)
!186 = !{!183, !184, i64 0}
!187 = !DILocation(line: 47, column: 9, scope: !139)
!188 = !DILocation(line: 51, column: 11, scope: !148)
!189 = !DILocation(line: 51, column: 7, scope: !139)
!190 = !DILocation(line: 55, column: 12, scope: !147)
!191 = !DILocation(line: 56, column: 13, scope: !147)
!192 = !DILocation(line: 58, column: 8, scope: !147)
!193 = !DILocation(line: 69, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !42, line: 69, column: 9)
!195 = distinct !DILexicalBlock(scope: !146, file: !42, line: 58, column: 24)
!196 = !DILocation(line: 69, column: 17, scope: !194)
!197 = !DILocation(line: 77, column: 5, scope: !144)
!198 = !DILocation(line: 78, column: 26, scope: !144)
!199 = !{!183, !184, i64 48}
!200 = !DILocation(line: 79, column: 22, scope: !144)
!201 = !DILocation(line: 0, scope: !144)
!202 = !DILocation(line: 78, column: 11, scope: !144)
!203 = !DILocation(line: 81, column: 4, scope: !145)
!204 = !DILocation(line: 81, column: 4, scope: !144)
!205 = !DILocation(line: 88, column: 2, scope: !41)
!206 = !DILocation(line: 91, column: 1, scope: !41)
!207 = !DISubprogram(name: "lzma_stream_decoder_init", scope: !208, file: !208, line: 18, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!208 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/stream_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "82f2a7f1e50521ce1ad27540f4230cca")
!209 = !DISubroutineType(types: !210)
!210 = !{!45, !211, !54, !47, !52}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!212 = !{}
!213 = !DISubprogram(name: "lzma_next_end", scope: !88, file: !88, line: 237, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !211, !54}
