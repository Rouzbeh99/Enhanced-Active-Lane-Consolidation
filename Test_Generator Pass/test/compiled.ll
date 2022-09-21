; ModuleID = 'testCase.c'
source_filename = "testCase.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @foo(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b, ptr nocapture noundef writeonly %c) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !20, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata ptr %b, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata ptr %c, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load i32, ptr %a, align 4, !dbg !24, !tbaa !25
  %1 = load i32, ptr %b, align 4, !dbg !29, !tbaa !25
  %add = add nsw i32 %1, %0, !dbg !30
  store i32 %add, ptr %c, align 4, !dbg !31, !tbaa !25
  ret void, !dbg !32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 !dbg !33 {
entry:
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #6, !dbg !58, !srcloc !59
  call void @llvm.dbg.value(metadata i32 4, metadata !37, metadata !DIExpression()), !dbg !60
  %vla29 = alloca [4 x i32], align 4, !dbg !61
  call void @llvm.dbg.value(metadata i64 4, metadata !38, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata ptr %vla29, metadata !40, metadata !DIExpression()), !dbg !62
  %vla130 = alloca [4 x i32], align 4, !dbg !63
  call void @llvm.dbg.value(metadata i64 4, metadata !44, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata ptr %vla130, metadata !45, metadata !DIExpression()), !dbg !64
  %vla231 = alloca [4 x i32], align 4, !dbg !65
  call void @llvm.dbg.value(metadata i64 4, metadata !49, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata ptr %vla231, metadata !50, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32 0, metadata !54, metadata !DIExpression()), !dbg !67
  %0 = getelementptr inbounds i8, ptr %vla231, i64 4, !dbg !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 12, i1 false), !dbg !68, !tbaa !25
  br label %for.body, !dbg !71

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %vla29, metadata !20, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata ptr %vla130, metadata !21, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata ptr %vla231, metadata !22, metadata !DIExpression()), !dbg !72
  %1 = load i32, ptr %vla29, align 4, !dbg !74, !tbaa !25
  %2 = load i32, ptr %vla130, align 4, !dbg !75, !tbaa !25
  %add.i = add nsw i32 %2, %1, !dbg !76
  store i32 %add.i, ptr %vla231, align 4, !dbg !77, !tbaa !25
  call void @llvm.dbg.value(metadata i32 0, metadata !56, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i64 0, metadata !56, metadata !DIExpression()), !dbg !78
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add.i), !dbg !79
  call void @llvm.dbg.value(metadata i64 1, metadata !56, metadata !DIExpression()), !dbg !78
  br label %for.body11.for.body11_crit_edge, !dbg !82

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !54, metadata !DIExpression()), !dbg !67
  %arrayidx = getelementptr inbounds i32, ptr %vla29, i64 %indvars.iv, !dbg !83
  %3 = trunc i64 %indvars.iv to i32, !dbg !84
  store i32 %3, ptr %arrayidx, align 4, !dbg !84, !tbaa !25
  %arrayidx4 = getelementptr inbounds i32, ptr %vla130, i64 %indvars.iv, !dbg !85
  store i32 %3, ptr %arrayidx4, align 4, !dbg !86, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !87
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !54, metadata !DIExpression()), !dbg !67
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !88
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !71, !llvm.loop !89

for.cond.cleanup10:                               ; preds = %for.body11.for.body11_crit_edge
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #6, !dbg !93, !srcloc !94
  ret i32 0, !dbg !95

for.body11.for.body11_crit_edge:                  ; preds = %for.cond.cleanup, %for.body11.for.body11_crit_edge
  %indvars.iv.next3640 = phi i64 [ 1, %for.cond.cleanup ], [ %indvars.iv.next36, %for.body11.for.body11_crit_edge ]
  %arrayidx13.phi.trans.insert = getelementptr inbounds i32, ptr %vla231, i64 %indvars.iv.next3640
  %.pre = load i32, ptr %arrayidx13.phi.trans.insert, align 4, !dbg !96, !tbaa !25
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next3640, metadata !56, metadata !DIExpression()), !dbg !78
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %.pre), !dbg !79
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv.next3640, 1, !dbg !97
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next36, metadata !56, metadata !DIExpression()), !dbg !78
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, 4, !dbg !98
  br i1 %exitcond38.not, label %for.cond.cleanup10, label %for.body11.for.body11_crit_edge, !dbg !82, !llvm.loop !99
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "testCase.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/test", checksumkind: CSK_MD5, checksum: "9ebce2e5df555f7ca91a1cb1694a1449")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 1}
!13 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 4, type: !15, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 4, type: !17)
!21 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 4, type: !17)
!22 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 4, type: !17)
!23 = !DILocation(line: 0, scope: !14)
!24 = !DILocation(line: 5, column: 12, scope: !14)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 5, column: 19, scope: !14)
!30 = !DILocation(line: 5, column: 17, scope: !14)
!31 = !DILocation(line: 5, column: 10, scope: !14)
!32 = !DILocation(line: 6, column: 1, scope: !14)
!33 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !34, scopeLine: 8, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!18}
!36 = !{!37, !38, !40, !44, !45, !49, !50, !54, !56}
!37 = !DILocalVariable(name: "n", scope: !33, file: !1, line: 10, type: !18)
!38 = !DILocalVariable(name: "__vla_expr0", scope: !33, type: !39, flags: DIFlagArtificial)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DILocalVariable(name: "a", scope: !33, file: !1, line: 12, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: !38)
!44 = !DILocalVariable(name: "__vla_expr1", scope: !33, type: !39, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "b", scope: !33, file: !1, line: 13, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: !44)
!49 = !DILocalVariable(name: "__vla_expr2", scope: !33, type: !39, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "c", scope: !33, file: !1, line: 14, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: !49)
!54 = !DILocalVariable(name: "i", scope: !55, file: !1, line: 16, type: !18)
!55 = distinct !DILexicalBlock(scope: !33, file: !1, line: 16, column: 5)
!56 = !DILocalVariable(name: "i", scope: !57, file: !1, line: 24, type: !18)
!57 = distinct !DILexicalBlock(scope: !33, file: !1, line: 24, column: 5)
!58 = !DILocation(line: 9, column: 5, scope: !33)
!59 = !{i64 119, i64 128}
!60 = !DILocation(line: 0, scope: !33)
!61 = !DILocation(line: 12, column: 5, scope: !33)
!62 = !DILocation(line: 12, column: 9, scope: !33)
!63 = !DILocation(line: 13, column: 5, scope: !33)
!64 = !DILocation(line: 13, column: 9, scope: !33)
!65 = !DILocation(line: 14, column: 5, scope: !33)
!66 = !DILocation(line: 14, column: 9, scope: !33)
!67 = !DILocation(line: 0, scope: !55)
!68 = !DILocation(line: 19, column: 14, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 16, column: 33)
!70 = distinct !DILexicalBlock(scope: !55, file: !1, line: 16, column: 5)
!71 = !DILocation(line: 16, column: 5, scope: !55)
!72 = !DILocation(line: 0, scope: !14, inlinedAt: !73)
!73 = distinct !DILocation(line: 22, column: 5, scope: !33)
!74 = !DILocation(line: 5, column: 12, scope: !14, inlinedAt: !73)
!75 = !DILocation(line: 5, column: 19, scope: !14, inlinedAt: !73)
!76 = !DILocation(line: 5, column: 17, scope: !14, inlinedAt: !73)
!77 = !DILocation(line: 5, column: 10, scope: !14, inlinedAt: !73)
!78 = !DILocation(line: 0, scope: !57)
!79 = !DILocation(line: 25, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 24, column: 33)
!81 = distinct !DILexicalBlock(scope: !57, file: !1, line: 24, column: 5)
!82 = !DILocation(line: 24, column: 5, scope: !57)
!83 = !DILocation(line: 17, column: 9, scope: !69)
!84 = !DILocation(line: 17, column: 14, scope: !69)
!85 = !DILocation(line: 18, column: 9, scope: !69)
!86 = !DILocation(line: 18, column: 14, scope: !69)
!87 = !DILocation(line: 16, column: 28, scope: !70)
!88 = !DILocation(line: 16, column: 23, scope: !70)
!89 = distinct !{!89, !71, !90, !91, !92}
!90 = !DILocation(line: 20, column: 5, scope: !55)
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !DILocation(line: 27, column: 5, scope: !33)
!94 = !{i64 423, i64 432}
!95 = !DILocation(line: 30, column: 1, scope: !33)
!96 = !DILocation(line: 25, column: 23, scope: !80)
!97 = !DILocation(line: 24, column: 28, scope: !81)
!98 = !DILocation(line: 24, column: 23, scope: !81)
!99 = distinct !{!99, !82, !100, !91, !92}
!100 = !DILocation(line: 26, column: 5, scope: !57)
