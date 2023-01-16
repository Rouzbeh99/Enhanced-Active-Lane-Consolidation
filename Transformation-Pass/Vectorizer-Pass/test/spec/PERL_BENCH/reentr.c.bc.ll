; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/reentr.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/reentr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_reentrant_size() local_unnamed_addr #0 !dbg !11 {
entry:
  ret void, !dbg !16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_reentrant_init() local_unnamed_addr #0 !dbg !17 {
entry:
  ret void, !dbg !18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_reentrant_free() local_unnamed_addr #0 !dbg !19 {
entry:
  ret void, !dbg !20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noalias ptr @Perl_reentrant_retry(ptr nocapture noundef readnone %f, ...) local_unnamed_addr #0 !dbg !21 {
entry:
  call void @llvm.dbg.value(metadata ptr %f, metadata !28, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata ptr null, metadata !29, metadata !DIExpression()), !dbg !47
  ret ptr null, !dbg !48
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/reentr.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "25d5ecdc6e94dd5027907ac1a4201d2c")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!11 = distinct !DISubprogram(name: "Perl_reentrant_size", scope: !12, file: !12, line: 37, type: !13, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!12 = !DIFile(filename: "apps/500.perlbench_r/src/reentr.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "25d5ecdc6e94dd5027907ac1a4201d2c")
!13 = !DISubroutineType(types: !14)
!14 = !{null}
!15 = !{}
!16 = !DILocation(line: 145, column: 1, scope: !11)
!17 = distinct !DISubprogram(name: "Perl_reentrant_init", scope: !12, file: !12, line: 148, type: !13, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!18 = !DILocation(line: 222, column: 1, scope: !17)
!19 = distinct !DISubprogram(name: "Perl_reentrant_free", scope: !12, file: !12, line: 225, type: !13, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!20 = !DILocation(line: 289, column: 1, scope: !19)
!21 = distinct !DISubprogram(name: "Perl_reentrant_retry", scope: !12, file: !12, line: 292, type: !22, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!22 = !DISubroutineType(types: !23)
!23 = !{!3, !24, null}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{!28, !29, !30}
!28 = !DILocalVariable(name: "f", arg: 1, scope: !21, file: !12, line: 292, type: !24)
!29 = !DILocalVariable(name: "retptr", scope: !21, file: !12, line: 294, type: !3)
!30 = !DILocalVariable(name: "ap", scope: !21, file: !12, line: 295, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !32, line: 52, baseType: !33)
!32 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !34, line: 32, baseType: !35)
!34 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stdarg.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !36, baseType: !37)
!36 = !DIFile(filename: "apps/500.perlbench_r/src/reentr.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 192, elements: !45)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !39)
!39 = !{!40, !42, !43, !44}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !38, file: !36, line: 295, baseType: !41, size: 32)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !38, file: !36, line: 295, baseType: !41, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !38, file: !36, line: 295, baseType: !3, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !38, file: !36, line: 295, baseType: !3, size: 64, offset: 128)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DILocation(line: 0, scope: !21)
!48 = !DILocation(line: 528, column: 5, scope: !21)
