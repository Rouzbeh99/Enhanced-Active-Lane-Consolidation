; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/deb.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/deb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }

@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_debstash = external local_unnamed_addr global ptr, align 8
@PL_debug = external global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"    =>  \00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_deb(ptr nocapture noundef %pat, ...) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %pat, metadata !17, metadata !DIExpression()), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_vdeb(ptr nocapture noundef %pat, ptr nocapture noundef %args) local_unnamed_addr #0 !dbg !38 {
entry:
  call void @llvm.dbg.value(metadata ptr %pat, metadata !43, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata ptr %args, metadata !44, metadata !DIExpression()), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @Perl_debstackptrs() local_unnamed_addr #0 !dbg !47 {
entry:
  ret i32 0, !dbg !54
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_debstack() local_unnamed_addr #1 !dbg !55 {
entry:
  %0 = load ptr, ptr @PL_curcop, align 8, !dbg !56
  %cop_stash = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 8, !dbg !56
  %1 = load ptr, ptr %cop_stash, align 8, !dbg !56
  %2 = load ptr, ptr @PL_debstash, align 8, !dbg !56
  %cmp = icmp eq ptr %1, %2, !dbg !56
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !58

land.lhs.true:                                    ; preds = %entry
  %3 = load volatile i32, ptr @PL_debug, align 4, !dbg !59
  %and = and i32 %3, 524288, !dbg !59
  %tobool.not = icmp eq i32 %and, 0, !dbg !59
  br i1 %tobool.not, label %return, label %if.end, !dbg !60

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = tail call ptr @Perl_PerlIO_stderr() #4, !dbg !61
  %call1 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call, ptr noundef nonnull @.str) #4, !dbg !62
  br label %return, !dbg !63

return:                                           ; preds = %land.lhs.true, %if.end
  ret i32 0, !dbg !64
}

declare !dbg !65 i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !74 ptr @Perl_PerlIO_stderr() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_deb_stack_all() local_unnamed_addr #0 !dbg !78 {
entry:
  ret void, !dbg !81
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/deb.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "4f1ef8aad48dabc226cd442664e224f5")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "Perl_deb", scope: !10, file: !10, line: 45, type: !11, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DIFile(filename: "apps/500.perlbench_r/src/deb.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f1ef8aad48dabc226cd442664e224f5")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, null}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18}
!17 = !DILocalVariable(name: "pat", arg: 1, scope: !9, file: !10, line: 45, type: !13)
!18 = !DILocalVariable(name: "args", scope: !9, file: !10, line: 47, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !20, line: 52, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !22, line: 32, baseType: !23)
!22 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stdarg.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !24, baseType: !25)
!24 = !DIFile(filename: "apps/500.perlbench_r/src/deb.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 192, elements: !34)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !27)
!27 = !{!28, !30, !31, !33}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !26, file: !24, line: 47, baseType: !29, size: 32)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !26, file: !24, line: 47, baseType: !29, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !26, file: !24, line: 47, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !26, file: !24, line: 47, baseType: !32, size: 64, offset: 128)
!34 = !{!35}
!35 = !DISubrange(count: 1)
!36 = !DILocation(line: 0, scope: !9)
!37 = !DILocation(line: 56, column: 1, scope: !9)
!38 = distinct !DISubprogram(name: "Perl_vdeb", scope: !10, file: !10, line: 59, type: !39, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !13, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!42 = !{!43, !44}
!43 = !DILocalVariable(name: "pat", arg: 1, scope: !38, file: !10, line: 59, type: !13)
!44 = !DILocalVariable(name: "args", arg: 2, scope: !38, file: !10, line: 59, type: !41)
!45 = !DILocation(line: 0, scope: !38)
!46 = !DILocation(line: 79, column: 1, scope: !38)
!47 = distinct !DISubprogram(name: "Perl_debstackptrs", scope: !10, file: !10, line: 82, type: !48, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !53)
!48 = !DISubroutineType(types: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !51, line: 174, baseType: !52)
!51 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !{}
!54 = !DILocation(line: 98, column: 5, scope: !47)
!55 = distinct !DISubprogram(name: "Perl_debstack", scope: !10, file: !10, line: 163, type: !48, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !53)
!56 = !DILocation(line: 166, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !55, file: !10, line: 166, column: 9)
!58 = !DILocation(line: 166, column: 45, scope: !57)
!59 = !DILocation(line: 166, column: 49, scope: !57)
!60 = !DILocation(line: 166, column: 9, scope: !55)
!61 = !DILocation(line: 169, column: 19, scope: !55)
!62 = !DILocation(line: 169, column: 5, scope: !55)
!63 = !DILocation(line: 178, column: 5, scope: !55)
!64 = !DILocation(line: 179, column: 1, scope: !55)
!65 = !DISubprogram(name: "PerlIO_printf", scope: !66, file: !66, line: 268, type: !67, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!66 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!67 = !DISubroutineType(types: !68)
!68 = !{!52, !69, !13, null}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !66, line: 85, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !66, line: 83, baseType: !73)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !66, line: 83, flags: DIFlagFwdDecl)
!74 = !DISubprogram(name: "Perl_PerlIO_stderr", scope: !75, file: !75, line: 8274, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!75 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!76 = !DISubroutineType(types: !77)
!77 = !{!69}
!78 = distinct !DISubprogram(name: "Perl_deb_stack_all", scope: !10, file: !10, line: 202, type: !79, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !53)
!79 = !DISubroutineType(types: !80)
!80 = !{null}
!81 = !DILocation(line: 326, column: 1, scope: !78)
