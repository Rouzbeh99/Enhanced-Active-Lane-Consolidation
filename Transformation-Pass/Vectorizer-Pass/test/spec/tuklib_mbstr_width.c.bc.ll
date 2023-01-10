; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/tuklib_mbstr_width.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/common/tuklib_mbstr_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @tuklib_mbstr_width(ptr nocapture noundef readonly %str, ptr noundef writeonly %bytes) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata ptr %str, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %bytes, metadata !24, metadata !DIExpression()), !dbg !27
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #3, !dbg !28
  call void @llvm.dbg.value(metadata i64 %call, metadata !25, metadata !DIExpression()), !dbg !27
  %cmp.not = icmp eq ptr %bytes, null, !dbg !29
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !31

if.then:                                          ; preds = %entry
  store i64 %call, ptr %bytes, align 8, !dbg !32, !tbaa !33
  br label %if.end, !dbg !37

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call, !dbg !38
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { argmemonly mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/common/tuklib_mbstr_width.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "222459987dcc98c6ea41fd7b2c07f457")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!11 = distinct !DISubprogram(name: "tuklib_mbstr_width", scope: !12, file: !12, line: 21, type: !13, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!12 = !DIFile(filename: "apps/557.xz_r/src/common/tuklib_mbstr_width.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "222459987dcc98c6ea41fd7b2c07f457")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !18, !21}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 46, baseType: !17)
!16 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!17 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!22 = !{!23, !24, !25}
!23 = !DILocalVariable(name: "str", arg: 1, scope: !11, file: !12, line: 21, type: !18)
!24 = !DILocalVariable(name: "bytes", arg: 2, scope: !11, file: !12, line: 21, type: !21)
!25 = !DILocalVariable(name: "len", scope: !11, file: !12, line: 23, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!27 = !DILocation(line: 0, scope: !11)
!28 = !DILocation(line: 23, column: 21, scope: !11)
!29 = !DILocation(line: 24, column: 12, scope: !30)
!30 = distinct !DILexicalBlock(scope: !11, file: !12, line: 24, column: 6)
!31 = !DILocation(line: 24, column: 6, scope: !11)
!32 = !DILocation(line: 25, column: 10, scope: !30)
!33 = !{!34, !34, i64 0}
!34 = !{!"long", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 25, column: 3, scope: !30)
!38 = !DILocation(line: 30, column: 2, scope: !11)
