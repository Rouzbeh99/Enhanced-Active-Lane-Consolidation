; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/check/crc64_fast.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/check/crc64_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_crc64_table = external local_unnamed_addr constant [4 x [256 x i64]], align 16

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i64 @lzma_crc64(ptr noundef %buf, i64 noundef %size, i64 noundef %crc) local_unnamed_addr #0 !dbg !22 {
entry:
  call void @llvm.dbg.value(metadata ptr %buf, metadata !34, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %size, metadata !35, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %crc, metadata !36, metadata !DIExpression()), !dbg !43
  %neg = xor i64 %crc, -1, !dbg !44
  call void @llvm.dbg.value(metadata i64 %neg, metadata !36, metadata !DIExpression()), !dbg !43
  %cmp = icmp ugt i64 %size, 4, !dbg !45
  br i1 %cmp, label %while.cond.preheader, label %if.end, !dbg !46

while.cond.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %buf, metadata !34, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %size, metadata !35, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %neg, metadata !36, metadata !DIExpression()), !dbg !43
  %0 = ptrtoint ptr %buf to i64, !dbg !47
  %and66 = and i64 %0, 3, !dbg !48
  %tobool.not67 = icmp eq i64 %and66, 0, !dbg !49
  br i1 %tobool.not67, label %while.end, label %while.body, !dbg !49

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %buf.addr.070 = phi ptr [ %incdec.ptr, %while.body ], [ %buf, %while.cond.preheader ]
  %size.addr.069 = phi i64 [ %dec, %while.body ], [ %size, %while.cond.preheader ]
  %crc.addr.068 = phi i64 [ %xor2, %while.body ], [ %neg, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %buf.addr.070, metadata !34, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %size.addr.069, metadata !35, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %crc.addr.068, metadata !36, metadata !DIExpression()), !dbg !43
  %incdec.ptr = getelementptr inbounds i8, ptr %buf.addr.070, i64 1, !dbg !50
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !34, metadata !DIExpression()), !dbg !43
  %1 = load i8, ptr %buf.addr.070, align 1, !dbg !52, !tbaa !53
  %conv = zext i8 %1 to i64, !dbg !52
  %and1 = and i64 %crc.addr.068, 255, !dbg !56
  %xor = xor i64 %and1, %conv, !dbg !57
  %arrayidx = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor, !dbg !58
  %2 = load i64, ptr %arrayidx, align 8, !dbg !58, !tbaa !59
  %shr = lshr i64 %crc.addr.068, 8, !dbg !61
  %xor2 = xor i64 %2, %shr, !dbg !62
  call void @llvm.dbg.value(metadata i64 %xor2, metadata !36, metadata !DIExpression()), !dbg !43
  %dec = add i64 %size.addr.069, -1, !dbg !63
  call void @llvm.dbg.value(metadata i64 %dec, metadata !35, metadata !DIExpression()), !dbg !43
  %3 = ptrtoint ptr %incdec.ptr to i64, !dbg !47
  %and = and i64 %3, 3, !dbg !48
  %tobool.not = icmp eq i64 %and, 0, !dbg !49
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !49, !llvm.loop !64

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %crc.addr.0.lcssa = phi i64 [ %neg, %while.cond.preheader ], [ %xor2, %while.body ], !dbg !43
  %size.addr.0.lcssa = phi i64 [ %size, %while.cond.preheader ], [ %dec, %while.body ]
  %buf.addr.0.lcssa = phi ptr [ %buf, %while.cond.preheader ], [ %incdec.ptr, %while.body ]
  %and3 = and i64 %size.addr.0.lcssa, -4, !dbg !68
  %add.ptr = getelementptr inbounds i8, ptr %buf.addr.0.lcssa, i64 %and3, !dbg !69
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !37, metadata !DIExpression()), !dbg !70
  %and4 = and i64 %size.addr.0.lcssa, 3, !dbg !71
  call void @llvm.dbg.value(metadata i64 %and4, metadata !35, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata ptr %buf.addr.0.lcssa, metadata !34, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %crc.addr.0.lcssa, metadata !36, metadata !DIExpression()), !dbg !43
  %cmp673 = icmp sgt i64 %and3, 0, !dbg !72
  br i1 %cmp673, label %while.body8, label %if.end, !dbg !73

while.body8:                                      ; preds = %while.end, %while.body8
  %buf.addr.175 = phi ptr [ %add.ptr12, %while.body8 ], [ %buf.addr.0.lcssa, %while.end ]
  %crc.addr.174 = phi i64 [ %xor30, %while.body8 ], [ %crc.addr.0.lcssa, %while.end ]
  call void @llvm.dbg.value(metadata ptr %buf.addr.175, metadata !34, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %crc.addr.174, metadata !36, metadata !DIExpression()), !dbg !43
  %4 = load i32, ptr %buf.addr.175, align 4, !dbg !74, !tbaa !75
  %5 = trunc i64 %crc.addr.174 to i32, !dbg !77
  %conv11 = xor i32 %4, %5, !dbg !77
  call void @llvm.dbg.value(metadata i32 %conv11, metadata !41, metadata !DIExpression()), !dbg !78
  %add.ptr12 = getelementptr inbounds i8, ptr %buf.addr.175, i64 4, !dbg !79
  call void @llvm.dbg.value(metadata ptr %add.ptr12, metadata !34, metadata !DIExpression()), !dbg !43
  %and13 = and i32 %conv11, 255, !dbg !80
  %idxprom = zext i32 %and13 to i64, !dbg !81
  %arrayidx14 = getelementptr inbounds [4 x [256 x i64]], ptr @lzma_crc64_table, i64 0, i64 3, i64 %idxprom, !dbg !81
  %6 = load i64, ptr %arrayidx14, align 8, !dbg !81, !tbaa !59
  %shr15 = lshr i32 %conv11, 8, !dbg !82
  %and16 = and i32 %shr15, 255, !dbg !82
  %idxprom17 = zext i32 %and16 to i64, !dbg !83
  %arrayidx18 = getelementptr inbounds [4 x [256 x i64]], ptr @lzma_crc64_table, i64 0, i64 2, i64 %idxprom17, !dbg !83
  %7 = load i64, ptr %arrayidx18, align 8, !dbg !83, !tbaa !59
  %shr20 = lshr i64 %crc.addr.174, 32, !dbg !84
  %shr22 = lshr i32 %conv11, 16, !dbg !85
  %and23 = and i32 %shr22, 255, !dbg !85
  %idxprom24 = zext i32 %and23 to i64, !dbg !86
  %arrayidx25 = getelementptr inbounds [4 x [256 x i64]], ptr @lzma_crc64_table, i64 0, i64 1, i64 %idxprom24, !dbg !86
  %8 = load i64, ptr %arrayidx25, align 8, !dbg !86, !tbaa !59
  %shr27 = lshr i32 %conv11, 24, !dbg !87
  %idxprom28 = zext i32 %shr27 to i64, !dbg !88
  %arrayidx29 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %idxprom28, !dbg !88
  %9 = load i64, ptr %arrayidx29, align 8, !dbg !88, !tbaa !59
  %xor19 = xor i64 %6, %shr20, !dbg !89
  %xor21 = xor i64 %xor19, %7, !dbg !90
  %xor26 = xor i64 %xor21, %8, !dbg !91
  %xor30 = xor i64 %xor26, %9, !dbg !92
  call void @llvm.dbg.value(metadata i64 %xor30, metadata !36, metadata !DIExpression()), !dbg !43
  %cmp6 = icmp ult ptr %add.ptr12, %add.ptr, !dbg !72
  br i1 %cmp6, label %while.body8, label %if.end, !dbg !73, !llvm.loop !93

if.end:                                           ; preds = %while.body8, %while.end, %entry
  %crc.addr.2 = phi i64 [ %neg, %entry ], [ %crc.addr.0.lcssa, %while.end ], [ %xor30, %while.body8 ], !dbg !95
  %size.addr.1 = phi i64 [ %size, %entry ], [ %and4, %while.end ], [ %and4, %while.body8 ]
  %buf.addr.2 = phi ptr [ %buf, %entry ], [ %buf.addr.0.lcssa, %while.end ], [ %add.ptr12, %while.body8 ]
  call void @llvm.dbg.value(metadata ptr %buf.addr.2, metadata !34, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %crc.addr.2, metadata !36, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %size.addr.1, metadata !35, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !43
  %cmp34.not78 = icmp eq i64 %size.addr.1, 0, !dbg !96
  br i1 %cmp34.not78, label %while.end44, label %while.body36, !dbg !97

while.body36:                                     ; preds = %if.end, %while.body36
  %buf.addr.381 = phi ptr [ %incdec.ptr37, %while.body36 ], [ %buf.addr.2, %if.end ]
  %size.addr.280 = phi i64 [ %dec33, %while.body36 ], [ %size.addr.1, %if.end ]
  %crc.addr.379 = phi i64 [ %xor43, %while.body36 ], [ %crc.addr.2, %if.end ]
  call void @llvm.dbg.value(metadata ptr %buf.addr.381, metadata !34, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %size.addr.280, metadata !35, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %crc.addr.379, metadata !36, metadata !DIExpression()), !dbg !43
  %dec33 = add i64 %size.addr.280, -1, !dbg !98
  call void @llvm.dbg.value(metadata i64 %dec33, metadata !35, metadata !DIExpression()), !dbg !43
  %incdec.ptr37 = getelementptr inbounds i8, ptr %buf.addr.381, i64 1, !dbg !99
  call void @llvm.dbg.value(metadata ptr %incdec.ptr37, metadata !34, metadata !DIExpression()), !dbg !43
  %10 = load i8, ptr %buf.addr.381, align 1, !dbg !100, !tbaa !53
  %conv38 = zext i8 %10 to i64, !dbg !100
  %and39 = and i64 %crc.addr.379, 255, !dbg !101
  %xor40 = xor i64 %and39, %conv38, !dbg !102
  %arrayidx41 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %xor40, !dbg !103
  %11 = load i64, ptr %arrayidx41, align 8, !dbg !103, !tbaa !59
  %shr42 = lshr i64 %crc.addr.379, 8, !dbg !104
  %xor43 = xor i64 %11, %shr42, !dbg !105
  call void @llvm.dbg.value(metadata i64 %xor43, metadata !36, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i64 %dec33, metadata !35, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !43
  %cmp34.not = icmp eq i64 %dec33, 0, !dbg !96
  br i1 %cmp34.not, label %while.end44, label %while.body36, !dbg !97, !llvm.loop !106

while.end44:                                      ; preds = %while.body36, %if.end
  %crc.addr.3.lcssa = phi i64 [ %crc.addr.2, %if.end ], [ %xor43, %while.body36 ], !dbg !43
  %neg45 = xor i64 %crc.addr.3.lcssa, -1, !dbg !107
  ret i64 %neg45, !dbg !108
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/check/crc64_fast.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "48de9a2589e975d1231092af2afbf70c")
!2 = !{!3, !6, !8}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !4, line: 90, baseType: !5)
!4 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 46, baseType: !5)
!7 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 26, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 42, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!22 = distinct !DISubprogram(name: "lzma_crc64", scope: !23, file: !23, line: 30, type: !24, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !33)
!23 = !DIFile(filename: "apps/557.xz_r/src/liblzma/check/crc64_fast.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "48de9a2589e975d1231092af2afbf70c")
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !28, !6, !26}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 27, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 45, baseType: !5)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !11, line: 24, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !13, line: 38, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34, !35, !36, !37, !41}
!34 = !DILocalVariable(name: "buf", arg: 1, scope: !22, file: !23, line: 30, type: !28)
!35 = !DILocalVariable(name: "size", arg: 2, scope: !22, file: !23, line: 30, type: !6)
!36 = !DILocalVariable(name: "crc", arg: 3, scope: !22, file: !23, line: 30, type: !26)
!37 = !DILocalVariable(name: "limit", scope: !38, file: !23, line: 44, type: !40)
!38 = distinct !DILexicalBlock(scope: !39, file: !23, line: 38, column: 16)
!39 = distinct !DILexicalBlock(scope: !22, file: !23, line: 38, column: 6)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!41 = !DILocalVariable(name: "tmp", scope: !42, file: !23, line: 52, type: !9)
!42 = distinct !DILexicalBlock(scope: !38, file: !23, line: 47, column: 23)
!43 = !DILocation(line: 0, scope: !22)
!44 = !DILocation(line: 32, column: 8, scope: !22)
!45 = !DILocation(line: 38, column: 11, scope: !39)
!46 = !DILocation(line: 38, column: 6, scope: !22)
!47 = !DILocation(line: 39, column: 10, scope: !38)
!48 = !DILocation(line: 39, column: 27, scope: !38)
!49 = !DILocation(line: 39, column: 3, scope: !38)
!50 = !DILocation(line: 40, column: 34, scope: !51)
!51 = distinct !DILexicalBlock(scope: !38, file: !23, line: 39, column: 32)
!52 = !DILocation(line: 40, column: 30, scope: !51)
!53 = !{!54, !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !DILocation(line: 40, column: 39, scope: !51)
!57 = !DILocation(line: 40, column: 37, scope: !51)
!58 = !DILocation(line: 40, column: 10, scope: !51)
!59 = !{!60, !60, i64 0}
!60 = !{!"long", !54, i64 0}
!61 = !DILocation(line: 40, column: 50, scope: !51)
!62 = !DILocation(line: 40, column: 48, scope: !51)
!63 = !DILocation(line: 41, column: 4, scope: !51)
!64 = distinct !{!64, !49, !65, !66, !67}
!65 = !DILocation(line: 42, column: 3, scope: !38)
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !DILocation(line: 44, column: 44, scope: !38)
!69 = !DILocation(line: 44, column: 36, scope: !38)
!70 = !DILocation(line: 0, scope: !38)
!71 = !DILocation(line: 45, column: 8, scope: !38)
!72 = !DILocation(line: 47, column: 14, scope: !38)
!73 = !DILocation(line: 47, column: 3, scope: !38)
!74 = !DILocation(line: 52, column: 31, scope: !42)
!75 = !{!76, !76, i64 0}
!76 = !{!"int", !54, i64 0}
!77 = !DILocation(line: 52, column: 25, scope: !42)
!78 = !DILocation(line: 0, scope: !42)
!79 = !DILocation(line: 54, column: 8, scope: !42)
!80 = !DILocation(line: 56, column: 30, scope: !42)
!81 = !DILocation(line: 56, column: 10, scope: !42)
!82 = !DILocation(line: 57, column: 30, scope: !42)
!83 = !DILocation(line: 57, column: 10, scope: !42)
!84 = !DILocation(line: 58, column: 10, scope: !42)
!85 = !DILocation(line: 59, column: 30, scope: !42)
!86 = !DILocation(line: 59, column: 10, scope: !42)
!87 = !DILocation(line: 60, column: 30, scope: !42)
!88 = !DILocation(line: 60, column: 10, scope: !42)
!89 = !DILocation(line: 57, column: 8, scope: !42)
!90 = !DILocation(line: 58, column: 8, scope: !42)
!91 = !DILocation(line: 59, column: 8, scope: !42)
!92 = !DILocation(line: 60, column: 8, scope: !42)
!93 = distinct !{!93, !73, !94, !66, !67}
!94 = !DILocation(line: 61, column: 3, scope: !38)
!95 = !DILocation(line: 32, column: 6, scope: !22)
!96 = !DILocation(line: 64, column: 16, scope: !22)
!97 = !DILocation(line: 64, column: 2, scope: !22)
!98 = !DILocation(line: 64, column: 13, scope: !22)
!99 = !DILocation(line: 65, column: 33, scope: !22)
!100 = !DILocation(line: 65, column: 29, scope: !22)
!101 = !DILocation(line: 65, column: 38, scope: !22)
!102 = !DILocation(line: 65, column: 36, scope: !22)
!103 = !DILocation(line: 65, column: 9, scope: !22)
!104 = !DILocation(line: 65, column: 49, scope: !22)
!105 = !DILocation(line: 65, column: 47, scope: !22)
!106 = distinct !{!106, !97, !104, !66, !67}
!107 = !DILocation(line: 71, column: 9, scope: !22)
!108 = !DILocation(line: 71, column: 2, scope: !22)
