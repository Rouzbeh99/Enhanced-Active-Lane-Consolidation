; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/vli_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/vli_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @lzma_vli_encode(i64 noundef %vli, ptr noundef %vli_pos, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !33 {
entry:
  %vli_pos_internal = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %vli, metadata !50, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata ptr %vli_pos, metadata !51, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata ptr %out, metadata !52, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !53, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !54, metadata !DIExpression()), !dbg !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vli_pos_internal) #3, !dbg !57
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()), !dbg !56
  store i64 0, ptr %vli_pos_internal, align 8, !dbg !58, !tbaa !59
  %cmp = icmp eq ptr %vli_pos, null, !dbg !63
  %0 = load i64, ptr %out_pos, align 8, !dbg !65, !tbaa !59
  %cmp1.not = icmp ult i64 %0, %out_size, !dbg !65
  %vli_pos_internal.vli_pos = select i1 %cmp, ptr %vli_pos_internal, ptr %vli_pos, !dbg !65
  %. = select i1 %cmp, i32 11, i32 10, !dbg !65
  br i1 %cmp1.not, label %if.end6, label %cleanup, !dbg !65

if.end6:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %vli_pos_internal.vli_pos, metadata !51, metadata !DIExpression()), !dbg !56
  %1 = load i64, ptr %vli_pos_internal.vli_pos, align 8, !dbg !66, !tbaa !59
  %cmp7 = icmp ugt i64 %1, 8, !dbg !68
  %cmp8 = icmp slt i64 %vli, 0
  %or.cond = or i1 %cmp8, %cmp7, !dbg !69
  br i1 %or.cond, label %cleanup, label %if.end10, !dbg !69

if.end10:                                         ; preds = %if.end6
  %mul = mul nuw nsw i64 %1, 7, !dbg !70
  %shr = lshr i64 %vli, %mul, !dbg !71
  call void @llvm.dbg.value(metadata i64 %shr, metadata !50, metadata !DIExpression()), !dbg !56
  br label %while.cond, !dbg !72

while.cond:                                       ; preds = %while.body, %if.end10
  %2 = phi i64 [ %1, %if.end10 ], [ %inc, %while.body ]
  %3 = phi i64 [ %0, %if.end10 ], [ %inc15, %while.body ]
  %vli.addr.0 = phi i64 [ %shr, %if.end10 ], [ %shr14, %while.body ], !dbg !56
  call void @llvm.dbg.value(metadata i64 %vli.addr.0, metadata !50, metadata !DIExpression()), !dbg !56
  %cmp11 = icmp ugt i64 %vli.addr.0, 127, !dbg !73
  br i1 %cmp11, label %while.body, label %while.end, !dbg !72

while.body:                                       ; preds = %while.cond
  %inc = add i64 %2, 1, !dbg !74
  store i64 %inc, ptr %vli_pos_internal.vli_pos, align 8, !dbg !74, !tbaa !59
  %conv = trunc i64 %vli.addr.0 to i8, !dbg !76
  %or = or i8 %conv, -128, !dbg !77
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %3, !dbg !78
  store i8 %or, ptr %arrayidx, align 1, !dbg !79, !tbaa !80
  %shr14 = lshr i64 %vli.addr.0, 7, !dbg !81
  call void @llvm.dbg.value(metadata i64 %shr14, metadata !50, metadata !DIExpression()), !dbg !56
  %inc15 = add i64 %3, 1, !dbg !82
  store i64 %inc15, ptr %out_pos, align 8, !dbg !82, !tbaa !59
  %cmp16 = icmp eq i64 %inc15, %out_size, !dbg !84
  br i1 %cmp16, label %if.then18, label %while.cond, !dbg !85, !llvm.loop !86

if.then18:                                        ; preds = %while.body
  %cmp19 = icmp eq ptr %vli_pos_internal.vli_pos, %vli_pos_internal, !dbg !90
  %cond = select i1 %cmp19, i32 11, i32 0, !dbg !91
  br label %cleanup, !dbg !92

while.end:                                        ; preds = %while.cond
  %conv22 = trunc i64 %vli.addr.0 to i8, !dbg !93
  %arrayidx23 = getelementptr inbounds i8, ptr %out, i64 %3, !dbg !94
  store i8 %conv22, ptr %arrayidx23, align 1, !dbg !95, !tbaa !80
  %inc24 = add i64 %3, 1, !dbg !96
  store i64 %inc24, ptr %out_pos, align 8, !dbg !96, !tbaa !59
  %inc25 = add i64 %2, 1, !dbg !97
  store i64 %inc25, ptr %vli_pos_internal.vli_pos, align 8, !dbg !97, !tbaa !59
  %cmp26 = icmp ne ptr %vli_pos_internal.vli_pos, %vli_pos_internal, !dbg !98
  %cond28 = zext i1 %cmp26 to i32, !dbg !99
  br label %cleanup, !dbg !100

cleanup:                                          ; preds = %entry, %if.end6, %while.end, %if.then18
  %retval.0 = phi i32 [ %cond, %if.then18 ], [ %cond28, %while.end ], [ 11, %if.end6 ], [ %., %entry ], !dbg !56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vli_pos_internal) #3, !dbg !101
  ret i32 %retval.0, !dbg !101
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/vli_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "4de7f9e5052ab9957fee955a20da3326")
!2 = !{!3}
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
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 24, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !24, line: 38, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 2}
!32 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!33 = distinct !DISubprogram(name: "lzma_vli_encode", scope: !34, file: !34, line: 17, type: !35, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!34 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/vli_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4de7f9e5052ab9957fee955a20da3326")
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !38, !43, !46, !48, !44}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !39, line: 63, baseType: !40)
!39 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 27, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 45, baseType: !42)
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 46, baseType: !42)
!45 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!46 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!49 = !{!50, !51, !52, !53, !54, !55}
!50 = !DILocalVariable(name: "vli", arg: 1, scope: !33, file: !34, line: 17, type: !38)
!51 = !DILocalVariable(name: "vli_pos", arg: 2, scope: !33, file: !34, line: 17, type: !43)
!52 = !DILocalVariable(name: "out", arg: 3, scope: !33, file: !34, line: 18, type: !46)
!53 = !DILocalVariable(name: "out_pos", arg: 4, scope: !33, file: !34, line: 18, type: !48)
!54 = !DILocalVariable(name: "out_size", arg: 5, scope: !33, file: !34, line: 19, type: !44)
!55 = !DILocalVariable(name: "vli_pos_internal", scope: !33, file: !34, line: 22, type: !44)
!56 = !DILocation(line: 0, scope: !33)
!57 = !DILocation(line: 22, column: 2, scope: !33)
!58 = !DILocation(line: 22, column: 9, scope: !33)
!59 = !{!60, !60, i64 0}
!60 = !{!"long", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !DILocation(line: 23, column: 14, scope: !64)
!64 = distinct !DILexicalBlock(scope: !33, file: !34, line: 23, column: 6)
!65 = !DILocation(line: 0, scope: !64)
!66 = !DILocation(line: 38, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !33, file: !34, line: 38, column: 6)
!68 = !DILocation(line: 38, column: 15, scope: !67)
!69 = !DILocation(line: 38, column: 37, scope: !67)
!70 = !DILocation(line: 43, column: 19, scope: !33)
!71 = !DILocation(line: 43, column: 6, scope: !33)
!72 = !DILocation(line: 46, column: 2, scope: !33)
!73 = !DILocation(line: 46, column: 13, scope: !33)
!74 = !DILocation(line: 50, column: 3, scope: !75)
!75 = distinct !DILexicalBlock(scope: !33, file: !34, line: 46, column: 22)
!76 = !DILocation(line: 54, column: 19, scope: !75)
!77 = !DILocation(line: 54, column: 34, scope: !75)
!78 = !DILocation(line: 54, column: 3, scope: !75)
!79 = !DILocation(line: 54, column: 17, scope: !75)
!80 = !{!61, !61, i64 0}
!81 = !DILocation(line: 55, column: 7, scope: !75)
!82 = !DILocation(line: 57, column: 7, scope: !83)
!83 = distinct !DILexicalBlock(scope: !75, file: !34, line: 57, column: 7)
!84 = !DILocation(line: 57, column: 18, scope: !83)
!85 = !DILocation(line: 57, column: 7, scope: !75)
!86 = distinct !{!86, !72, !87, !88, !89}
!87 = !DILocation(line: 60, column: 2, scope: !33)
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !DILocation(line: 58, column: 19, scope: !83)
!91 = !DILocation(line: 58, column: 11, scope: !83)
!92 = !DILocation(line: 58, column: 4, scope: !83)
!93 = !DILocation(line: 63, column: 18, scope: !33)
!94 = !DILocation(line: 63, column: 2, scope: !33)
!95 = !DILocation(line: 63, column: 16, scope: !33)
!96 = !DILocation(line: 64, column: 2, scope: !33)
!97 = !DILocation(line: 65, column: 2, scope: !33)
!98 = !DILocation(line: 67, column: 17, scope: !33)
!99 = !DILocation(line: 67, column: 9, scope: !33)
!100 = !DILocation(line: 67, column: 2, scope: !33)
!101 = !DILocation(line: 69, column: 1, scope: !33)
