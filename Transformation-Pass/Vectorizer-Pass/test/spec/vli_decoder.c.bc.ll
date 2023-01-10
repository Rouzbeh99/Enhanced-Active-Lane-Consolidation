; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/vli_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/vli_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @lzma_vli_decode(ptr noalias nocapture noundef %vli, ptr noundef %vli_pos, ptr noalias nocapture noundef readonly %in, ptr noalias nocapture noundef %in_pos, i64 noundef %in_size) local_unnamed_addr #0 !dbg !35 {
entry:
  %vli_pos_internal = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %vli, metadata !53, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %vli_pos, metadata !54, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %in, metadata !55, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !56, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !57, metadata !DIExpression()), !dbg !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vli_pos_internal) #3, !dbg !62
  call void @llvm.dbg.value(metadata i64 0, metadata !58, metadata !DIExpression()), !dbg !61
  %cmp = icmp eq ptr %vli_pos, null, !dbg !63
  br i1 %cmp, label %if.then, label %if.else, !dbg !65

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %vli_pos_internal, metadata !54, metadata !DIExpression()), !dbg !61
  store i64 0, ptr %vli, align 8, !dbg !66, !tbaa !68
  %0 = load i64, ptr %in_pos, align 8, !dbg !72, !tbaa !68
  %cmp1.not = icmp ult i64 %0, %in_size, !dbg !74
  br i1 %cmp1.not, label %if.end13, label %cleanup41, !dbg !75

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %vli_pos, align 8, !dbg !76, !tbaa !68
  %cmp3 = icmp eq i64 %1, 0, !dbg !79
  br i1 %cmp3, label %if.end5.thread, label %if.end5, !dbg !80

if.end5.thread:                                   ; preds = %if.else
  store i64 0, ptr %vli, align 8, !dbg !81, !tbaa !68
  br label %lor.lhs.false, !dbg !82

if.end5:                                          ; preds = %if.else
  %cmp6 = icmp ugt i64 %1, 8, !dbg !84
  br i1 %cmp6, label %cleanup41, label %if.end5.lor.lhs.false_crit_edge, !dbg !82

if.end5.lor.lhs.false_crit_edge:                  ; preds = %if.end5
  %.pre = load i64, ptr %vli, align 8, !dbg !85, !tbaa !68
  br label %lor.lhs.false, !dbg !82

lor.lhs.false:                                    ; preds = %if.end5.lor.lhs.false_crit_edge, %if.end5.thread
  %2 = phi i64 [ %.pre, %if.end5.lor.lhs.false_crit_edge ], [ 0, %if.end5.thread ], !dbg !85
  %mul = mul nuw nsw i64 %1, 7, !dbg !86
  %shr = lshr i64 %2, %mul, !dbg !87
  %cmp7.not = icmp eq i64 %shr, 0, !dbg !88
  br i1 %cmp7.not, label %if.end9, label %cleanup41, !dbg !89

if.end9:                                          ; preds = %lor.lhs.false
  %3 = load i64, ptr %in_pos, align 8, !dbg !90, !tbaa !68
  %cmp10.not = icmp ult i64 %3, %in_size, !dbg !92
  br i1 %cmp10.not, label %if.end13, label %cleanup41, !dbg !93

if.end13:                                         ; preds = %if.end9, %if.then
  %vli.promoted = phi i64 [ 0, %if.then ], [ %2, %if.end9 ]
  %vli_pos.addr.0.promoted = phi i64 [ 0, %if.then ], [ %1, %if.end9 ]
  %in_pos.promoted = phi i64 [ %0, %if.then ], [ %3, %if.end9 ]
  %vli_pos.addr.0 = phi ptr [ %vli_pos_internal, %if.then ], [ %vli_pos, %if.end9 ]
  call void @llvm.dbg.value(metadata ptr %vli_pos.addr.0, metadata !54, metadata !DIExpression()), !dbg !61
  %4 = add i64 %in_pos.promoted, 9, !dbg !94
  %5 = sub i64 %4, %vli_pos.addr.0.promoted, !dbg !94
  %6 = add nuw i64 %in_pos.promoted, 1, !dbg !94
  %umax = call i64 @llvm.umax.i64(i64 %in_size, i64 %6), !dbg !94
  br label %do.body, !dbg !94

do.body:                                          ; preds = %do.cond, %if.end13
  %add77 = phi i64 [ %vli.promoted, %if.end13 ], [ %add, %do.cond ], !dbg !95
  %inc1673 = phi i64 [ %vli_pos.addr.0.promoted, %if.end13 ], [ %inc16, %do.cond ], !dbg !95
  %7 = phi i64 [ %in_pos.promoted, %if.end13 ], [ %inc, %do.cond ], !dbg !96
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %7, !dbg !95
  %8 = load i8, ptr %arrayidx, align 1, !dbg !95, !tbaa !97
  call void @llvm.dbg.value(metadata i8 %8, metadata !59, metadata !DIExpression()), !dbg !98
  %inc = add nuw i64 %7, 1, !dbg !99
  %conv = zext i8 %8 to i32, !dbg !100
  %and = and i32 %conv, 127, !dbg !101
  %9 = zext i32 %and to i64
  %mul15 = mul i64 %inc1673, 7, !dbg !102
  %shl = shl i64 %9, %mul15, !dbg !103
  %add = add i64 %shl, %add77, !dbg !104
  %inc16 = add i64 %inc1673, 1, !dbg !105
  %and18 = and i32 %conv, 128, !dbg !106
  %cmp19 = icmp eq i32 %and18, 0, !dbg !108
  br i1 %cmp19, label %if.then21, label %cleanup, !dbg !109

if.then21:                                        ; preds = %do.body
  store i64 %inc, ptr %in_pos, align 8, !dbg !98, !tbaa !68
  store i64 %inc16, ptr %vli_pos.addr.0, align 8, !dbg !98, !tbaa !68
  store i64 %add, ptr %vli, align 8, !dbg !104, !tbaa !68
  %cmp23 = icmp eq i8 %8, 0, !dbg !110
  %cmp25 = icmp ugt i64 %inc16, 1
  %or.cond = select i1 %cmp23, i1 %cmp25, i1 false, !dbg !113
  br i1 %or.cond, label %cleanup41, label %if.end28, !dbg !113

if.end28:                                         ; preds = %if.then21
  %cmp29 = icmp ne ptr %vli_pos.addr.0, %vli_pos_internal, !dbg !114
  %cond = zext i1 %cmp29 to i32, !dbg !115
  br label %cleanup41, !dbg !116

cleanup:                                          ; preds = %do.body
  %cmp32 = icmp eq i64 %inc16, 9, !dbg !117
  br i1 %cmp32, label %cleanup41.loopexit, label %do.cond

do.cond:                                          ; preds = %cleanup
  %cmp36 = icmp ult i64 %inc, %in_size, !dbg !119
  br i1 %cmp36, label %do.body, label %do.end, !dbg !120, !llvm.loop !121

do.end:                                           ; preds = %do.cond
  store i64 %umax, ptr %in_pos, align 8, !dbg !98, !tbaa !68
  store i64 %inc16, ptr %vli_pos.addr.0, align 8, !dbg !98, !tbaa !68
  store i64 %add, ptr %vli, align 8, !dbg !104, !tbaa !68
  %cmp38 = icmp eq ptr %vli_pos.addr.0, %vli_pos_internal, !dbg !125
  %cond40 = select i1 %cmp38, i32 9, i32 0, !dbg !126
  br label %cleanup41, !dbg !127

cleanup41.loopexit:                               ; preds = %cleanup
  store i64 %5, ptr %in_pos, align 8, !dbg !98, !tbaa !68
  store i64 9, ptr %vli_pos.addr.0, align 8, !dbg !98, !tbaa !68
  store i64 %add, ptr %vli, align 8, !dbg !104, !tbaa !68
  br label %cleanup41, !dbg !128

cleanup41:                                        ; preds = %cleanup41.loopexit, %if.then21, %if.end28, %if.end9, %if.end5, %lor.lhs.false, %if.then, %do.end
  %retval.2 = phi i32 [ %cond40, %do.end ], [ 9, %if.then ], [ 11, %lor.lhs.false ], [ 11, %if.end5 ], [ 10, %if.end9 ], [ 9, %if.then21 ], [ %cond, %if.end28 ], [ 9, %cleanup41.loopexit ], !dbg !61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vli_pos_internal) #3, !dbg !128
  ret i32 %retval.2, !dbg !128
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #2

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/vli_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "91d125b315a326080f5a7fe001c7add2")
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
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !22, line: 63, baseType: !23)
!22 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !24, line: 27, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !26, line: 45, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 7, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!35 = distinct !DISubprogram(name: "lzma_vli_decode", scope: !36, file: !36, line: 17, type: !37, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!36 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/vli_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "91d125b315a326080f5a7fe001c7add2")
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !40, !42, !45, !51, !43}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 46, baseType: !27)
!44 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !24, line: 24, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !26, line: 38, baseType: !50)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!52 = !{!53, !54, !55, !56, !57, !58, !59}
!53 = !DILocalVariable(name: "vli", arg: 1, scope: !35, file: !36, line: 17, type: !40)
!54 = !DILocalVariable(name: "vli_pos", arg: 2, scope: !35, file: !36, line: 17, type: !42)
!55 = !DILocalVariable(name: "in", arg: 3, scope: !35, file: !36, line: 18, type: !45)
!56 = !DILocalVariable(name: "in_pos", arg: 4, scope: !35, file: !36, line: 18, type: !51)
!57 = !DILocalVariable(name: "in_size", arg: 5, scope: !35, file: !36, line: 19, type: !43)
!58 = !DILocalVariable(name: "vli_pos_internal", scope: !35, file: !36, line: 22, type: !43)
!59 = !DILocalVariable(name: "byte", scope: !60, file: !36, line: 51, type: !47)
!60 = distinct !DILexicalBlock(scope: !35, file: !36, line: 48, column: 5)
!61 = !DILocation(line: 0, scope: !35)
!62 = !DILocation(line: 22, column: 2, scope: !35)
!63 = !DILocation(line: 23, column: 14, scope: !64)
!64 = distinct !DILexicalBlock(scope: !35, file: !36, line: 23, column: 6)
!65 = !DILocation(line: 23, column: 6, scope: !35)
!66 = !DILocation(line: 25, column: 8, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !36, line: 23, column: 23)
!68 = !{!69, !69, i64 0}
!69 = !{!"long", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !DILocation(line: 31, column: 7, scope: !73)
!73 = distinct !DILexicalBlock(scope: !67, file: !36, line: 31, column: 7)
!74 = !DILocation(line: 31, column: 15, scope: !73)
!75 = !DILocation(line: 31, column: 7, scope: !67)
!76 = !DILocation(line: 36, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !36, line: 36, column: 7)
!78 = distinct !DILexicalBlock(scope: !64, file: !36, line: 34, column: 9)
!79 = !DILocation(line: 36, column: 16, scope: !77)
!80 = !DILocation(line: 36, column: 7, scope: !78)
!81 = !DILocation(line: 37, column: 9, scope: !77)
!82 = !DILocation(line: 41, column: 5, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !36, line: 40, column: 7)
!84 = !DILocation(line: 40, column: 16, scope: !83)
!85 = !DILocation(line: 41, column: 9, scope: !83)
!86 = !DILocation(line: 41, column: 27, scope: !83)
!87 = !DILocation(line: 41, column: 14, scope: !83)
!88 = !DILocation(line: 41, column: 33, scope: !83)
!89 = !DILocation(line: 40, column: 7, scope: !78)
!90 = !DILocation(line: 44, column: 7, scope: !91)
!91 = distinct !DILexicalBlock(scope: !78, file: !36, line: 44, column: 7)
!92 = !DILocation(line: 44, column: 15, scope: !91)
!93 = !DILocation(line: 44, column: 7, scope: !78)
!94 = !DILocation(line: 48, column: 2, scope: !35)
!95 = !DILocation(line: 51, column: 24, scope: !60)
!96 = !DILocation(line: 51, column: 27, scope: !60)
!97 = !{!70, !70, i64 0}
!98 = !DILocation(line: 0, scope: !60)
!99 = !DILocation(line: 52, column: 3, scope: !60)
!100 = !DILocation(line: 55, column: 22, scope: !60)
!101 = !DILocation(line: 55, column: 27, scope: !60)
!102 = !DILocation(line: 55, column: 48, scope: !60)
!103 = !DILocation(line: 55, column: 35, scope: !60)
!104 = !DILocation(line: 55, column: 8, scope: !60)
!105 = !DILocation(line: 56, column: 3, scope: !60)
!106 = !DILocation(line: 59, column: 13, scope: !107)
!107 = distinct !DILexicalBlock(scope: !60, file: !36, line: 59, column: 7)
!108 = !DILocation(line: 59, column: 21, scope: !107)
!109 = !DILocation(line: 59, column: 7, scope: !60)
!110 = !DILocation(line: 63, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !36, line: 63, column: 8)
!112 = distinct !DILexicalBlock(scope: !107, file: !36, line: 59, column: 27)
!113 = !DILocation(line: 63, column: 21, scope: !111)
!114 = !DILocation(line: 66, column: 19, scope: !112)
!115 = !DILocation(line: 66, column: 11, scope: !112)
!116 = !DILocation(line: 66, column: 4, scope: !112)
!117 = !DILocation(line: 80, column: 16, scope: !118)
!118 = distinct !DILexicalBlock(scope: !60, file: !36, line: 80, column: 7)
!119 = !DILocation(line: 83, column: 19, scope: !35)
!120 = !DILocation(line: 83, column: 2, scope: !60)
!121 = distinct !{!121, !94, !122, !123, !124}
!122 = !DILocation(line: 83, column: 28, scope: !35)
!123 = !{!"llvm.loop.mustprogress"}
!124 = !{!"llvm.loop.unroll.disable"}
!125 = !DILocation(line: 85, column: 17, scope: !35)
!126 = !DILocation(line: 85, column: 9, scope: !35)
!127 = !DILocation(line: 85, column: 2, scope: !35)
!128 = !DILocation(line: 86, column: 1, scope: !35)
