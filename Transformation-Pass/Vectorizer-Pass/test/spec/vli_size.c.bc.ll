; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/vli_size.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/vli_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @lzma_vli_size(i64 noundef %vli) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i64 %vli, metadata !24, metadata !DIExpression()), !dbg !26
  %cmp = icmp slt i64 %vli, 0, !dbg !27
  br i1 %cmp, label %return, label %do.body, !dbg !29

do.body:                                          ; preds = %entry, %do.body
  %vli.addr.0 = phi i64 [ %shr, %do.body ], [ %vli, %entry ]
  %i.0 = phi i32 [ %inc, %do.body ], [ 0, %entry ], !dbg !26
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i64 %vli.addr.0, metadata !24, metadata !DIExpression()), !dbg !26
  %shr = lshr i64 %vli.addr.0, 7, !dbg !30
  call void @llvm.dbg.value(metadata i64 %shr, metadata !24, metadata !DIExpression()), !dbg !26
  %inc = add nuw nsw i32 %i.0, 1, !dbg !32
  call void @llvm.dbg.value(metadata i32 %inc, metadata !25, metadata !DIExpression()), !dbg !26
  %cmp1.not = icmp ult i64 %vli.addr.0, 128, !dbg !33
  br i1 %cmp1.not, label %return, label %do.body, !dbg !34, !llvm.loop !35

return:                                           ; preds = %do.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %inc, %do.body ], !dbg !26
  ret i32 %retval.0, !dbg !40
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/vli_size.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "7fd9d1f3109f7c98176284c8c20a390a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "lzma_vli_size", scope: !10, file: !10, line: 17, type: !11, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!10 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/vli_size.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7fd9d1f3109f7c98176284c8c20a390a")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !18}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 26, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 42, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !19, line: 63, baseType: !20)
!19 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 27, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !16, line: 45, baseType: !22)
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !{!24, !25}
!24 = !DILocalVariable(name: "vli", arg: 1, scope: !9, file: !10, line: 17, type: !18)
!25 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 22, type: !13)
!26 = !DILocation(line: 0, scope: !9)
!27 = !DILocation(line: 19, column: 10, scope: !28)
!28 = distinct !DILexicalBlock(scope: !9, file: !10, line: 19, column: 6)
!29 = !DILocation(line: 19, column: 6, scope: !9)
!30 = !DILocation(line: 24, column: 7, scope: !31)
!31 = distinct !DILexicalBlock(scope: !9, file: !10, line: 23, column: 5)
!32 = !DILocation(line: 25, column: 3, scope: !31)
!33 = !DILocation(line: 26, column: 15, scope: !9)
!34 = !DILocation(line: 26, column: 2, scope: !31)
!35 = distinct !{!35, !36, !37, !38, !39}
!36 = !DILocation(line: 23, column: 2, scope: !9)
!37 = !DILocation(line: 26, column: 19, scope: !9)
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !DILocation(line: 30, column: 1, scope: !9)
