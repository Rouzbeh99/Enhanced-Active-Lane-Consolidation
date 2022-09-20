; ModuleID = 'compiled.ll'
source_filename = "testCase.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata i32 10, metadata !19, metadata !DIExpression()), !dbg !30
  %vla19 = alloca [10 x i32], align 4, !dbg !31
  call void @llvm.dbg.value(metadata i64 10, metadata !20, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata ptr %vla19, metadata !22, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !33
  br label %for.body, !dbg !34

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !26, metadata !DIExpression()), !dbg !33
  %0 = mul nuw nsw i64 %indvars.iv, %indvars.iv, !dbg !35
  %arrayidx = getelementptr inbounds i32, ptr %vla19, i64 %indvars.iv, !dbg !38
  %1 = trunc i64 %0 to i32, !dbg !39
  store i32 %1, ptr %arrayidx, align 4, !dbg !39, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !44
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !26, metadata !DIExpression()), !dbg !33
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10, !dbg !45
  br i1 %exitcond.not, label %for.body5, label %for.body, !dbg !34, !llvm.loop !46

for.cond.cleanup4:                                ; preds = %for.body5
  ret i32 0, !dbg !50

for.body5:                                        ; preds = %for.body5, %for.body
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.body5 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv24, metadata !28, metadata !DIExpression()), !dbg !51
  %arrayidx7 = getelementptr inbounds i32, ptr %vla19, i64 %indvars.iv24, !dbg !52
  %2 = load i32, ptr %arrayidx7, align 4, !dbg !52, !tbaa !40
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %2), !dbg !55
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !56
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next25, metadata !28, metadata !DIExpression()), !dbg !51
  %exitcond27.not = icmp eq i64 %indvars.iv.next25, 10, !dbg !57
  br i1 %exitcond27.not, label %for.cond.cleanup4, label %for.body5, !dbg !58, !llvm.loop !59
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "testCase.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/test", checksumkind: CSK_MD5, checksum: "c62272f3eb8d57f255a1d05ade0a61f2")
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
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !15, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{!19, !20, !22, !26, !28}
!19 = !DILocalVariable(name: "n", scope: !14, file: !1, line: 6, type: !17)
!20 = !DILocalVariable(name: "__vla_expr0", scope: !14, type: !21, flags: DIFlagArtificial)
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "c", scope: !14, file: !1, line: 8, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: !20)
!26 = !DILocalVariable(name: "i", scope: !27, file: !1, line: 10, type: !17)
!27 = distinct !DILexicalBlock(scope: !14, file: !1, line: 10, column: 5)
!28 = !DILocalVariable(name: "i", scope: !29, file: !1, line: 14, type: !17)
!29 = distinct !DILexicalBlock(scope: !14, file: !1, line: 14, column: 5)
!30 = !DILocation(line: 0, scope: !14)
!31 = !DILocation(line: 8, column: 5, scope: !14)
!32 = !DILocation(line: 8, column: 9, scope: !14)
!33 = !DILocation(line: 0, scope: !27)
!34 = !DILocation(line: 10, column: 5, scope: !27)
!35 = !DILocation(line: 11, column: 18, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 10, column: 33)
!37 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 5)
!38 = !DILocation(line: 11, column: 9, scope: !36)
!39 = !DILocation(line: 11, column: 14, scope: !36)
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 10, column: 28, scope: !37)
!45 = !DILocation(line: 10, column: 23, scope: !37)
!46 = distinct !{!46, !34, !47, !48, !49}
!47 = !DILocation(line: 12, column: 5, scope: !27)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !DILocation(line: 19, column: 1, scope: !14)
!51 = !DILocation(line: 0, scope: !29)
!52 = !DILocation(line: 15, column: 23, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 14, column: 33)
!54 = distinct !DILexicalBlock(scope: !29, file: !1, line: 14, column: 5)
!55 = !DILocation(line: 15, column: 9, scope: !53)
!56 = !DILocation(line: 14, column: 28, scope: !54)
!57 = !DILocation(line: 14, column: 23, scope: !54)
!58 = !DILocation(line: 14, column: 5, scope: !29)
!59 = distinct !{!59, !58, !60, !48, !49}
!60 = !DILocation(line: 16, column: 5, scope: !29)
