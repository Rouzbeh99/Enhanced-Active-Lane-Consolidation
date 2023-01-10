; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/tuklib_mbstr_fw.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/common/tuklib_mbstr_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @tuklib_mbstr_fw(ptr noundef %str, i32 noundef %columns_min) local_unnamed_addr #0 !dbg !13 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %str, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %columns_min, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #4, !dbg !28
  call void @llvm.dbg.value(metadata ptr %len, metadata !24, metadata !DIExpression(DW_OP_deref)), !dbg !27
  %call = call i64 @tuklib_mbstr_width(ptr noundef %str, ptr noundef nonnull %len) #4, !dbg !29
  call void @llvm.dbg.value(metadata i64 %call, metadata !25, metadata !DIExpression()), !dbg !27
  %cmp = icmp eq i64 %call, -1, !dbg !30
  br i1 %cmp, label %cleanup, label %if.end, !dbg !32

if.end:                                           ; preds = %entry
  %conv = sext i32 %columns_min to i64, !dbg !33
  %cmp1 = icmp ugt i64 %call, %conv, !dbg !35
  br i1 %cmp1, label %cleanup, label %if.end4, !dbg !36

if.end4:                                          ; preds = %if.end
  %cmp6 = icmp ult i64 %call, %conv, !dbg !37
  br i1 %cmp6, label %if.then8, label %if.end4.if.end10_crit_edge, !dbg !39

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  %.pre = load i64, ptr %len, align 8, !dbg !40, !tbaa !41
  br label %if.end10, !dbg !39

if.then8:                                         ; preds = %if.end4
  %sub = sub i64 %conv, %call, !dbg !45
  %0 = load i64, ptr %len, align 8, !dbg !46, !tbaa !41
  call void @llvm.dbg.value(metadata i64 %0, metadata !24, metadata !DIExpression()), !dbg !27
  %add = add i64 %sub, %0, !dbg !46
  call void @llvm.dbg.value(metadata i64 %add, metadata !24, metadata !DIExpression()), !dbg !27
  br label %if.end10, !dbg !47

if.end10:                                         ; preds = %if.end4.if.end10_crit_edge, %if.then8
  %1 = phi i64 [ %.pre, %if.end4.if.end10_crit_edge ], [ %add, %if.then8 ], !dbg !40
  call void @llvm.dbg.value(metadata i64 %1, metadata !24, metadata !DIExpression()), !dbg !27
  %conv11 = trunc i64 %1 to i32, !dbg !40
  br label %cleanup, !dbg !48

cleanup:                                          ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ %conv11, %if.end10 ], [ -1, %entry ], [ 0, %if.end ], !dbg !27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #4, !dbg !49
  ret i32 %retval.0, !dbg !49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !50 i64 @tuklib_mbstr_width(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/common/tuklib_mbstr_fw.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "2dcc99604758195b800a6303c1109630")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !4, line: 46, baseType: !5)
!4 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!13 = distinct !DISubprogram(name: "tuklib_mbstr_fw", scope: !14, file: !14, line: 17, type: !15, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!14 = !DIFile(filename: "apps/557.xz_r/src/common/tuklib_mbstr_fw.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2dcc99604758195b800a6303c1109630")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "str", arg: 1, scope: !13, file: !14, line: 17, type: !18)
!23 = !DILocalVariable(name: "columns_min", arg: 2, scope: !13, file: !14, line: 17, type: !17)
!24 = !DILocalVariable(name: "len", scope: !13, file: !14, line: 19, type: !3)
!25 = !DILocalVariable(name: "width", scope: !13, file: !14, line: 20, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!27 = !DILocation(line: 0, scope: !13)
!28 = !DILocation(line: 19, column: 2, scope: !13)
!29 = !DILocation(line: 20, column: 23, scope: !13)
!30 = !DILocation(line: 21, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !13, file: !14, line: 21, column: 6)
!32 = !DILocation(line: 21, column: 6, scope: !13)
!33 = !DILocation(line: 24, column: 14, scope: !34)
!34 = distinct !DILexicalBlock(scope: !13, file: !14, line: 24, column: 6)
!35 = !DILocation(line: 24, column: 12, scope: !34)
!36 = !DILocation(line: 24, column: 6, scope: !13)
!37 = !DILocation(line: 27, column: 12, scope: !38)
!38 = distinct !DILexicalBlock(scope: !13, file: !14, line: 27, column: 6)
!39 = !DILocation(line: 27, column: 6, scope: !13)
!40 = !DILocation(line: 30, column: 9, scope: !13)
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 28, column: 30, scope: !38)
!46 = !DILocation(line: 28, column: 7, scope: !38)
!47 = !DILocation(line: 28, column: 3, scope: !38)
!48 = !DILocation(line: 30, column: 2, scope: !13)
!49 = !DILocation(line: 31, column: 1, scope: !13)
!50 = !DISubprogram(name: "tuklib_mbstr_width", scope: !51, file: !51, line: 25, type: !52, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !55)
!51 = !DIFile(filename: "apps/557.xz_r/src/common/tuklib_mbstr.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5bc9cb58bcf05bb0a68592285fa2e6df")
!52 = !DISubroutineType(types: !53)
!53 = !{!3, !18, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!55 = !{}
