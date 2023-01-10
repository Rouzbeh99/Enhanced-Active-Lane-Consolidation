; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/wand/wand.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/wand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AcquireWandId.id = internal unnamed_addr global i64 0, align 8, !dbg !0
@wand_semaphore = internal global ptr null, align 8, !dbg !38
@wand_ids = internal unnamed_addr global ptr null, align 8, !dbg !40
@instantiate_wand = internal unnamed_addr global i1 false, align 4, !dbg !46

; Function Attrs: nounwind uwtable
define dso_local i64 @AcquireWandId() local_unnamed_addr #0 !dbg !2 {
entry:
  %0 = load ptr, ptr @wand_semaphore, align 8, !dbg !54, !tbaa !56
  %cmp = icmp eq ptr %0, null, !dbg !60
  br i1 %cmp, label %if.then, label %if.end, !dbg !61

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @wand_semaphore) #3, !dbg !62
  %.pre = load ptr, ptr @wand_semaphore, align 8, !dbg !63, !tbaa !56
  br label %if.end, !dbg !62

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !63
  tail call void @LockSemaphoreInfo(ptr noundef %1) #3, !dbg !64
  %2 = load ptr, ptr @wand_ids, align 8, !dbg !65, !tbaa !56
  %cmp1 = icmp eq ptr %2, null, !dbg !67
  %.b = load i1, ptr @instantiate_wand, align 4
  %cmp2 = xor i1 %.b, true
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false, !dbg !68
  br i1 %or.cond, label %if.then3, label %if.end4, !dbg !68

if.then3:                                         ; preds = %if.end
  %call = tail call ptr @NewSplayTree(ptr noundef null, ptr noundef null, ptr noundef null) #3, !dbg !69
  store ptr %call, ptr @wand_ids, align 8, !dbg !71, !tbaa !56
  store i1 true, ptr @instantiate_wand, align 4, !dbg !72
  br label %if.end4, !dbg !73

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = phi ptr [ %call, %if.then3 ], [ %2, %if.end ], !dbg !74
  %4 = load i64, ptr @AcquireWandId.id, align 8, !dbg !75, !tbaa !76
  %inc = add i64 %4, 1, !dbg !75
  store i64 %inc, ptr @AcquireWandId.id, align 8, !dbg !75, !tbaa !76
  %5 = inttoptr i64 %inc to ptr, !dbg !78
  %call5 = tail call i32 @AddValueToSplayTree(ptr noundef %3, ptr noundef %5, ptr noundef %5) #3, !dbg !79
  %6 = load ptr, ptr @wand_semaphore, align 8, !dbg !80, !tbaa !56
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #3, !dbg !81
  %7 = load i64, ptr @AcquireWandId.id, align 8, !dbg !82, !tbaa !76
  ret i64 %7, !dbg !83
}

declare !dbg !84 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !88 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !91 ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !94 i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !97 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DestroyWandIds() local_unnamed_addr #0 !dbg !98 {
entry:
  %0 = load ptr, ptr @wand_semaphore, align 8, !dbg !101, !tbaa !56
  %cmp = icmp eq ptr %0, null, !dbg !103
  br i1 %cmp, label %if.then, label %if.end, !dbg !104

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @wand_semaphore) #3, !dbg !105
  %.pre = load ptr, ptr @wand_semaphore, align 8, !dbg !106, !tbaa !56
  br label %if.end, !dbg !105

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !106
  tail call void @LockSemaphoreInfo(ptr noundef %1) #3, !dbg !107
  %2 = load ptr, ptr @wand_ids, align 8, !dbg !108, !tbaa !56
  %cmp1.not = icmp eq ptr %2, null, !dbg !110
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !111

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @DestroySplayTree(ptr noundef nonnull %2) #3, !dbg !112
  store ptr %call, ptr @wand_ids, align 8, !dbg !113, !tbaa !56
  br label %if.end3, !dbg !114

if.end3:                                          ; preds = %if.then2, %if.end
  store i1 false, ptr @instantiate_wand, align 4, !dbg !115
  %3 = load ptr, ptr @wand_semaphore, align 8, !dbg !116, !tbaa !56
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #3, !dbg !117
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @wand_semaphore) #3, !dbg !118
  ret void, !dbg !119
}

declare !dbg !120 ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

declare !dbg !123 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RelinquishWandId(i64 noundef %id) local_unnamed_addr #0 !dbg !124 {
entry:
  call void @llvm.dbg.value(metadata i64 %id, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load ptr, ptr @wand_semaphore, align 8, !dbg !131, !tbaa !56
  tail call void @LockSemaphoreInfo(ptr noundef %0) #3, !dbg !132
  %1 = load ptr, ptr @wand_ids, align 8, !dbg !133, !tbaa !56
  %cmp.not = icmp eq ptr %1, null, !dbg !135
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !136

if.then:                                          ; preds = %entry
  %2 = inttoptr i64 %id to ptr, !dbg !137
  %call = tail call i32 @DeleteNodeByValueFromSplayTree(ptr noundef nonnull %1, ptr noundef %2) #3, !dbg !138
  br label %if.end, !dbg !139

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr @wand_semaphore, align 8, !dbg !140, !tbaa !56
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #3, !dbg !141
  ret void, !dbg !142
}

declare !dbg !143 i32 @DeleteNodeByValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "id", scope: !2, file: !3, line: 77, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "AcquireWandId", scope: !3, file: !3, line: 74, type: !4, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !45)
!3 = !DIFile(filename: "apps/538.imagick_r/src/wand/wand.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3fd3d689cfac286d6de740967f7661ba")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 46, baseType: !8)
!7 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !18, globals: !37, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/wand.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "3fd3d689cfac286d6de740967f7661ba")
!11 = !{!12}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 211, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "MagickFalse", value: 0)
!17 = !DIEnumerator(name: "MagickTrue", value: 1)
!18 = !{!19, !23, !24, !28, !34, !32}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !21, line: 26, baseType: !22)
!21 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !21, line: 25, flags: DIFlagFwdDecl)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !26, line: 26, baseType: !27)
!26 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !26, line: 25, flags: DIFlagFwdDecl)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !32, !32}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!23, !23}
!37 = !{!0, !38, !40, !42}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "wand_semaphore", scope: !9, file: !3, line: 54, type: !19, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "wand_ids", scope: !9, file: !3, line: 48, type: !24, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "instantiate_wand", scope: !9, file: !3, line: 51, type: !44, isLocal: true, isDefinition: true)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !13, line: 215, baseType: !12)
!45 = !{}
!46 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!47 = !{i32 7, !"Dwarf Version", i32 5}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{i32 7, !"PIC Level", i32 2}
!51 = !{i32 7, !"PIE Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 2}
!53 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!54 = !DILocation(line: 79, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !2, file: !3, line: 79, column: 7)
!56 = !{!57, !57, i64 0}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !DILocation(line: 79, column: 22, scope: !55)
!61 = !DILocation(line: 79, column: 7, scope: !2)
!62 = !DILocation(line: 80, column: 3, scope: !55)
!63 = !DILocation(line: 81, column: 21, scope: !2)
!64 = !DILocation(line: 81, column: 3, scope: !2)
!65 = !DILocation(line: 82, column: 8, scope: !66)
!66 = distinct !DILexicalBlock(scope: !2, file: !3, line: 82, column: 7)
!67 = !DILocation(line: 82, column: 17, scope: !66)
!68 = !DILocation(line: 82, column: 44, scope: !66)
!69 = !DILocation(line: 84, column: 16, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !3, line: 83, column: 5)
!71 = !DILocation(line: 84, column: 15, scope: !70)
!72 = !DILocation(line: 86, column: 23, scope: !70)
!73 = !DILocation(line: 87, column: 5, scope: !70)
!74 = !DILocation(line: 89, column: 30, scope: !2)
!75 = !DILocation(line: 88, column: 5, scope: !2)
!76 = !{!77, !77, i64 0}
!77 = !{!"long", !58, i64 0}
!78 = !DILocation(line: 89, column: 39, scope: !2)
!79 = !DILocation(line: 89, column: 10, scope: !2)
!80 = !DILocation(line: 90, column: 23, scope: !2)
!81 = !DILocation(line: 90, column: 3, scope: !2)
!82 = !DILocation(line: 91, column: 10, scope: !2)
!83 = !DILocation(line: 91, column: 3, scope: !2)
!84 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !21, file: !21, line: 35, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!88 = !DISubprogram(name: "LockSemaphoreInfo", scope: !21, file: !21, line: 37, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !19}
!91 = !DISubprogram(name: "NewSplayTree", scope: !26, file: !26, line: 45, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!92 = !DISubroutineType(types: !93)
!93 = !{!24, !28, !34, !34}
!94 = !DISubprogram(name: "AddValueToSplayTree", scope: !26, file: !26, line: 29, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!95 = !DISubroutineType(types: !96)
!96 = !{!44, !24, !32, !32}
!97 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !21, file: !21, line: 39, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!98 = distinct !DISubprogram(name: "DestroyWandIds", scope: !3, file: !3, line: 114, type: !99, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !45)
!99 = !DISubroutineType(types: !100)
!100 = !{null}
!101 = !DILocation(line: 116, column: 7, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !3, line: 116, column: 7)
!103 = !DILocation(line: 116, column: 22, scope: !102)
!104 = !DILocation(line: 116, column: 7, scope: !98)
!105 = !DILocation(line: 117, column: 3, scope: !102)
!106 = !DILocation(line: 118, column: 21, scope: !98)
!107 = !DILocation(line: 118, column: 3, scope: !98)
!108 = !DILocation(line: 119, column: 7, scope: !109)
!109 = distinct !DILexicalBlock(scope: !98, file: !3, line: 119, column: 7)
!110 = !DILocation(line: 119, column: 16, scope: !109)
!111 = !DILocation(line: 119, column: 7, scope: !98)
!112 = !DILocation(line: 120, column: 14, scope: !109)
!113 = !DILocation(line: 120, column: 13, scope: !109)
!114 = !DILocation(line: 120, column: 5, scope: !109)
!115 = !DILocation(line: 121, column: 19, scope: !98)
!116 = !DILocation(line: 122, column: 23, scope: !98)
!117 = !DILocation(line: 122, column: 3, scope: !98)
!118 = !DILocation(line: 123, column: 3, scope: !98)
!119 = !DILocation(line: 124, column: 1, scope: !98)
!120 = !DISubprogram(name: "DestroySplayTree", scope: !26, file: !26, line: 44, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!121 = !DISubroutineType(types: !122)
!122 = !{!24, !24}
!123 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !21, file: !21, line: 36, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!124 = distinct !DISubprogram(name: "RelinquishWandId", scope: !3, file: !3, line: 148, type: !125, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !128)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !127}
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!128 = !{!129}
!129 = !DILocalVariable(name: "id", arg: 1, scope: !124, file: !3, line: 148, type: !127)
!130 = !DILocation(line: 0, scope: !124)
!131 = !DILocation(line: 150, column: 21, scope: !124)
!132 = !DILocation(line: 150, column: 3, scope: !124)
!133 = !DILocation(line: 151, column: 7, scope: !134)
!134 = distinct !DILexicalBlock(scope: !124, file: !3, line: 151, column: 7)
!135 = !DILocation(line: 151, column: 16, scope: !134)
!136 = !DILocation(line: 151, column: 7, scope: !124)
!137 = !DILocation(line: 152, column: 52, scope: !134)
!138 = !DILocation(line: 152, column: 12, scope: !134)
!139 = !DILocation(line: 152, column: 5, scope: !134)
!140 = !DILocation(line: 153, column: 23, scope: !124)
!141 = !DILocation(line: 153, column: 3, scope: !124)
!142 = !DILocation(line: 154, column: 1, scope: !124)
!143 = !DISubprogram(name: "DeleteNodeByValueFromSplayTree", scope: !26, file: !26, line: 30, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !24, !32}
