; ModuleID = 'encryptionKey.c'
source_filename = "encryptionKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CON80 = dso_local local_unnamed_addr global [25 x i32] [i32 691865372, i32 624828186, i32 557782808, i32 1027092246, i32 960046868, i32 893009682, i32 825964304, i32 221531918, i32 154486540, i32 87449354, i32 20403976, i32 489713414, i32 422668036, i32 355630850, i32 288585472, i32 1831636798, i32 1764591420, i32 1697554234, i32 1630508856, i32 2099818294, i32 2032772916, i32 1965735730, i32 1898690352, i32 1294257966, i32 1227212588], align 64, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"Memory size for type %s = %zu \0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"double\00", align 1

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @RunEncryptionKeySchedule(i32* nocapture noundef readonly %key, i32* nocapture noundef writeonly %roundKeys) local_unnamed_addr #0 !dbg !21 {
entry:
  call void @llvm.dbg.value(metadata i32* %key, metadata !25, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i32* %roundKeys, metadata !26, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i32* %key, metadata !29, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i32* %roundKeys, metadata !31, metadata !DIExpression()), !dbg !33
  %arrayidx = getelementptr inbounds i32, i32* %roundKeys, i64 100, !dbg !34
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = load i32, i32* %key, align 4, !dbg !35, !tbaa !36
  %and = and i32 %0, 65280, !dbg !40
  %arrayidx2 = getelementptr inbounds i32, i32* %key, i64 1, !dbg !41
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !41, !tbaa !36
  %and3 = and i32 %1, 255, !dbg !42
  %or = or i32 %and3, %and, !dbg !43
  store i32 %or, i32* %arrayidx, align 4, !dbg !44, !tbaa !36
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !45, !tbaa !36
  %and6 = and i32 %2, 65280, !dbg !46
  %3 = load i32, i32* %key, align 4, !dbg !47, !tbaa !36
  %and8 = and i32 %3, 255, !dbg !48
  %or9 = or i32 %and8, %and6, !dbg !49
  %arrayidx10 = getelementptr inbounds i32, i32* %roundKeys, i64 101, !dbg !50
  store i32 %or9, i32* %arrayidx10, align 4, !dbg !51, !tbaa !36
  %arrayidx11 = getelementptr inbounds i32, i32* %key, i64 4, !dbg !52
  %4 = load i32, i32* %arrayidx11, align 4, !dbg !52, !tbaa !36
  %and12 = and i32 %4, 65280, !dbg !53
  %arrayidx13 = getelementptr inbounds i32, i32* %key, i64 3, !dbg !54
  %5 = load i32, i32* %arrayidx13, align 4, !dbg !54, !tbaa !36
  %and14 = and i32 %5, 255, !dbg !55
  %or15 = or i32 %and14, %and12, !dbg !56
  %arrayidx16 = getelementptr inbounds i32, i32* %roundKeys, i64 102, !dbg !57
  store i32 %or15, i32* %arrayidx16, align 4, !dbg !58, !tbaa !36
  %6 = load i32, i32* %arrayidx13, align 4, !dbg !59, !tbaa !36
  %and18 = and i32 %6, 65280, !dbg !60
  %7 = load i32, i32* %arrayidx11, align 4, !dbg !61, !tbaa !36
  %and20 = and i32 %7, 255, !dbg !62
  %or21 = or i32 %and20, %and18, !dbg !63
  %arrayidx22 = getelementptr inbounds i32, i32* %roundKeys, i64 103, !dbg !64
  store i32 %or21, i32* %arrayidx22, align 4, !dbg !65, !tbaa !36
  call void @llvm.dbg.value(metadata i32 0, metadata !28, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !33
  %arrayidx24 = getelementptr inbounds i32, i32* %key, i64 2
  call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i32 0, metadata !28, metadata !DIExpression()), !dbg !33
  br label %for.body, !dbg !66

for.body:                                         ; preds = %entry, %sw.epilog
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %sw.epilog ]
  %m.066 = phi i32 [ 0, %entry ], [ %m.1, %sw.epilog ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !27, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i32 %m.066, metadata !28, metadata !DIExpression()), !dbg !33
  %arrayidx23 = getelementptr inbounds [25 x i32], [25 x i32]* @CON80, i64 0, i64 %indvars.iv, !dbg !68
  %8 = load i32, i32* %arrayidx23, align 4, !dbg !68, !tbaa !36
  call void @llvm.dbg.value(metadata i32 %8, metadata !30, metadata !DIExpression()), !dbg !33
  switch i32 %m.066, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb25
    i32 1, label %sw.bb30
    i32 4, label %sw.bb30
  ], !dbg !71

sw.bb:                                            ; preds = %for.body, %for.body
  %9 = load i32, i32* %arrayidx24, align 4, !dbg !72, !tbaa !36
  %xor = xor i32 %9, %8, !dbg !74
  call void @llvm.dbg.value(metadata i32 %xor, metadata !30, metadata !DIExpression()), !dbg !33
  br label %sw.epilog, !dbg !75

sw.bb25:                                          ; preds = %for.body
  %10 = load i32, i32* %arrayidx11, align 4, !dbg !76, !tbaa !36
  %shl = shl i32 %10, 16, !dbg !77
  %or28 = or i32 %shl, %10, !dbg !78
  %xor29 = xor i32 %or28, %8, !dbg !79
  call void @llvm.dbg.value(metadata i32 %xor29, metadata !30, metadata !DIExpression()), !dbg !33
  br label %sw.epilog, !dbg !80

sw.bb30:                                          ; preds = %for.body, %for.body
  %11 = load i32, i32* %key, align 4, !dbg !81, !tbaa !36
  %xor32 = xor i32 %11, %8, !dbg !82
  call void @llvm.dbg.value(metadata i32 %xor32, metadata !30, metadata !DIExpression()), !dbg !33
  br label %sw.epilog, !dbg !83

sw.epilog:                                        ; preds = %for.body, %sw.bb30, %sw.bb25, %sw.bb
  %_rk.0 = phi i32 [ %8, %for.body ], [ %xor32, %sw.bb30 ], [ %xor29, %sw.bb25 ], [ %xor, %sw.bb ], !dbg !84
  call void @llvm.dbg.value(metadata i32 %_rk.0, metadata !30, metadata !DIExpression()), !dbg !33
  %12 = shl nuw nsw i64 %indvars.iv, 1, !dbg !85
  %arrayidx34 = getelementptr inbounds i32, i32* %roundKeys, i64 %12, !dbg !86
  store i32 %_rk.0, i32* %arrayidx34, align 4, !dbg !87, !tbaa !36
  %cmp35 = icmp eq i32 %m.066, 4, !dbg !88
  %inc = add nsw i32 %m.066, 1, !dbg !90
  %m.1 = select i1 %cmp35, i32 0, i32 %inc, !dbg !90
  call void @llvm.dbg.value(metadata i32 %m.1, metadata !28, metadata !DIExpression()), !dbg !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !91
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !27, metadata !DIExpression()), !dbg !33
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25, !dbg !92
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !66, !llvm.loop !93

for.end:                                          ; preds = %sw.epilog
  ret void, !dbg !97
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readnone %argv) local_unnamed_addr #1 !dbg !98 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !105, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i8** %argv, metadata !106, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i32 undef, metadata !107, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i32 undef, metadata !107, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i32 undef, metadata !107, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i32 undef, metadata !107, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i32 undef, metadata !107, metadata !DIExpression()), !dbg !111
  %call = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 noundef 8), !dbg !112
  ret i32 0, !dbg !113
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CON80", scope: !2, file: !3, line: 7, type: !13, isLocal: false, isDefinition: true, align: 512)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "encryptionKey.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test/Compiled_files", checksumkind: CSK_MD5, checksum: "02f36ffee04f1aa9db499262c64c8a59")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!0, !8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "in_key", scope: !2, file: !3, line: 81, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 768, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 24)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 800, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 25)
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!21 = distinct !DISubprogram(name: "RunEncryptionKeySchedule", scope: !3, file: !3, line: 37, type: !22, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !5, !5}
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32}
!25 = !DILocalVariable(name: "key", arg: 1, scope: !21, file: !3, line: 37, type: !5)
!26 = !DILocalVariable(name: "roundKeys", arg: 2, scope: !21, file: !3, line: 37, type: !5)
!27 = !DILocalVariable(name: "i", scope: !21, file: !3, line: 39, type: !6)
!28 = !DILocalVariable(name: "m", scope: !21, file: !3, line: 40, type: !6)
!29 = !DILocalVariable(name: "mk", scope: !21, file: !3, line: 41, type: !5)
!30 = !DILocalVariable(name: "_rk", scope: !21, file: !3, line: 42, type: !6)
!31 = !DILocalVariable(name: "rk", scope: !21, file: !3, line: 43, type: !5)
!32 = !DILocalVariable(name: "wk", scope: !21, file: !3, line: 44, type: !5)
!33 = !DILocation(line: 0, scope: !21)
!34 = !DILocation(line: 44, column: 24, scope: !21)
!35 = !DILocation(line: 46, column: 14, scope: !21)
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 46, column: 20, scope: !21)
!41 = !DILocation(line: 46, column: 33, scope: !21)
!42 = !DILocation(line: 46, column: 39, scope: !21)
!43 = !DILocation(line: 46, column: 30, scope: !21)
!44 = !DILocation(line: 46, column: 11, scope: !21)
!45 = !DILocation(line: 47, column: 14, scope: !21)
!46 = !DILocation(line: 47, column: 20, scope: !21)
!47 = !DILocation(line: 47, column: 33, scope: !21)
!48 = !DILocation(line: 47, column: 39, scope: !21)
!49 = !DILocation(line: 47, column: 30, scope: !21)
!50 = !DILocation(line: 47, column: 5, scope: !21)
!51 = !DILocation(line: 47, column: 11, scope: !21)
!52 = !DILocation(line: 48, column: 14, scope: !21)
!53 = !DILocation(line: 48, column: 20, scope: !21)
!54 = !DILocation(line: 48, column: 33, scope: !21)
!55 = !DILocation(line: 48, column: 39, scope: !21)
!56 = !DILocation(line: 48, column: 30, scope: !21)
!57 = !DILocation(line: 48, column: 5, scope: !21)
!58 = !DILocation(line: 48, column: 11, scope: !21)
!59 = !DILocation(line: 49, column: 14, scope: !21)
!60 = !DILocation(line: 49, column: 20, scope: !21)
!61 = !DILocation(line: 49, column: 33, scope: !21)
!62 = !DILocation(line: 49, column: 39, scope: !21)
!63 = !DILocation(line: 49, column: 30, scope: !21)
!64 = !DILocation(line: 49, column: 5, scope: !21)
!65 = !DILocation(line: 49, column: 11, scope: !21)
!66 = !DILocation(line: 52, column: 5, scope: !67)
!67 = distinct !DILexicalBlock(scope: !21, file: !3, line: 52, column: 5)
!68 = !DILocation(line: 54, column: 15, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 53, column: 5)
!70 = distinct !DILexicalBlock(scope: !67, file: !3, line: 52, column: 5)
!71 = !DILocation(line: 55, column: 9, scope: !69)
!72 = !DILocation(line: 59, column: 24, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !3, line: 56, column: 9)
!74 = !DILocation(line: 59, column: 21, scope: !73)
!75 = !DILocation(line: 60, column: 17, scope: !73)
!76 = !DILocation(line: 62, column: 31, scope: !73)
!77 = !DILocation(line: 62, column: 38, scope: !73)
!78 = !DILocation(line: 62, column: 45, scope: !73)
!79 = !DILocation(line: 62, column: 21, scope: !73)
!80 = !DILocation(line: 63, column: 17, scope: !73)
!81 = !DILocation(line: 66, column: 24, scope: !73)
!82 = !DILocation(line: 66, column: 21, scope: !73)
!83 = !DILocation(line: 67, column: 17, scope: !73)
!84 = !DILocation(line: 0, scope: !69)
!85 = !DILocation(line: 69, column: 22, scope: !69)
!86 = !DILocation(line: 69, column: 18, scope: !69)
!87 = !DILocation(line: 69, column: 26, scope: !69)
!88 = !DILocation(line: 70, column: 15, scope: !89)
!89 = distinct !DILexicalBlock(scope: !69, file: !3, line: 70, column: 13)
!90 = !DILocation(line: 70, column: 13, scope: !69)
!91 = !DILocation(line: 52, column: 39, scope: !70)
!92 = !DILocation(line: 52, column: 19, scope: !70)
!93 = distinct !{!93, !66, !94, !95, !96}
!94 = !DILocation(line: 78, column: 5, scope: !67)
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !DILocation(line: 79, column: 1, scope: !21)
!98 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 85, type: !99, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !104)
!99 = !DISubroutineType(types: !100)
!100 = !{!6, !6, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!104 = !{!105, !106, !107}
!105 = !DILocalVariable(name: "argc", arg: 1, scope: !98, file: !3, line: 85, type: !6)
!106 = !DILocalVariable(name: "argv", arg: 2, scope: !98, file: !3, line: 85, type: !101)
!107 = !DILocalVariable(name: "roundKeys", scope: !98, file: !3, line: 87, type: !108)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3456, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 108)
!111 = !DILocation(line: 0, scope: !98)
!112 = !DILocation(line: 90, column: 5, scope: !98)
!113 = !DILocation(line: 91, column: 5, scope: !98)
