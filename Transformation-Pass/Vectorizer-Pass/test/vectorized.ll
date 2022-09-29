; ModuleID = 'compiled_with_O3.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !24, metadata !DIExpression()), !dbg !27
  tail call void asm sideeffect ".inst 0x2520e020", ""() #7, !dbg !28, !srcloc !30
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !31
  %cmp11 = icmp sgt i32 %n, 0, !dbg !32
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup, !dbg !34

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !32
  %0 = call i32 @llvm.vscale.i32(), !dbg !34
  %extended.vscale = zext i32 %0 to i64
  %1 = shl i64 %extended.vscale, 2, !dbg !34
  %2 = icmp uge i64 %wide.trip.count, %1, !dbg !34
  br i1 %2, label %Pre.Vectorization, label %Preheader.for.remaining.iterations, !dbg !34

for.cond.cleanup.loopexit:                        ; preds = %middle.block, %for.inc
  br label %for.cond.cleanup, !dbg !35

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  tail call void asm sideeffect ".inst 0x2520e040", ""() #7, !dbg !35, !srcloc !37
  ret void, !dbg !38

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %22, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !25, metadata !DIExpression()), !dbg !31
  %rem15 = and i64 %indvars.iv, 1, !dbg !39
  %cmp1.not = icmp eq i64 %rem15, 0, !dbg !39
  br i1 %cmp1.not, label %for.inc, label %if.then, !dbg !42

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !43
  %3 = load i32, ptr %arrayidx, align 4, !dbg !43, !tbaa !45
  %arrayidx3 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !49
  %4 = load i32, ptr %arrayidx3, align 4, !dbg !49, !tbaa !45
  %mul = mul nsw i32 %4, %3, !dbg !50
  %arrayidx5 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !51
  store i32 %mul, ptr %arrayidx5, align 4, !dbg !52, !tbaa !45
  br label %for.inc, !dbg !53

middle.block:                                     ; preds = %vectorizing.block
  %condition = icmp eq i64 %7, 0
  br i1 %condition, label %for.cond.cleanup.loopexit, label %Preheader.for.remaining.iterations

Pre.Vectorization:                                ; preds = %for.body.preheader
  %5 = call <vscale x 4 x i64> @llvm.experimental.stepvector.nxv4i64()
  %6 = call i32 @llvm.vscale.i32()
  %extended.vscale1 = zext i32 %6 to i64
  %step.value = shl i64 %extended.vscale1, 2
  %7 = urem i64 %wide.trip.count, %step.value
  %total.iterations.to.be.vectorized = sub i64 %wide.trip.count, %7
  %8 = insertelement <vscale x 4 x i64> poison, i64 %step.value, i64 0
  %stepVector.update.values = shufflevector <vscale x 4 x i64> %8, <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer
  br label %vectorizing.block

vectorizing.block:                                ; preds = %vectorizing.block, %Pre.Vectorization
  %9 = phi i64 [ 0, %Pre.Vectorization ], [ %20, %vectorizing.block ]
  %10 = phi <vscale x 4 x i64> [ %5, %Pre.Vectorization ], [ %21, %vectorizing.block ]
  %11 = and <vscale x 4 x i64> %10, shufflevector (<vscale x 4 x i64> insertelement (<vscale x 4 x i64> poison, i64 1, i64 0), <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer)
  %12 = icmp eq <vscale x 4 x i64> %11, zeroinitializer
  %13 = bitcast <vscale x 4 x i1> %12 to <vscale x 4 x i1>
  %negated.vector = xor <vscale x 4 x i1> %13, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %14 = getelementptr inbounds i32, ptr %a, i64 %9, !dbg !43
  %15 = getelementptr inbounds i32, ptr %b, i64 %9, !dbg !49
  %16 = getelementptr inbounds i32, ptr %c, i64 %9, !dbg !51
  %17 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1> %negated.vector, ptr %14)
  %18 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1> %negated.vector, ptr %15)
  %19 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %negated.vector, <vscale x 4 x i32> %18, <vscale x 4 x i32> %17)
  call void @llvm.aarch64.sve.st1.nxv4i32(<vscale x 4 x i32> %19, <vscale x 4 x i1> %negated.vector, ptr %16)
  %20 = add i64 %step.value, %9
  %21 = add <vscale x 4 x i64> %10, %stepVector.update.values
  %terminate.condition = icmp uge i64 %20, %total.iterations.to.be.vectorized
  br i1 %terminate.condition, label %middle.block, label %vectorizing.block

Preheader.for.remaining.iterations:               ; preds = %middle.block, %for.body.preheader
  %22 = phi i64 [ 0, %for.body.preheader ], [ %20, %middle.block ]
  br label %for.body

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !54
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !25, metadata !DIExpression()), !dbg !31
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !32
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !34, !llvm.loop !55
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !59 {
entry:
  call void @llvm.dbg.value(metadata i32 8192, metadata !63, metadata !DIExpression()), !dbg !85
  %vla30 = alloca [8192 x i32], align 4, !dbg !86
  call void @llvm.dbg.value(metadata i64 8192, metadata !64, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata ptr %vla30, metadata !66, metadata !DIExpression()), !dbg !87
  %vla131 = alloca [8192 x i32], align 4, !dbg !88
  call void @llvm.dbg.value(metadata i64 8192, metadata !70, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata ptr %vla131, metadata !71, metadata !DIExpression()), !dbg !89
  %vla232 = alloca [8192 x i32], align 4, !dbg !90
  call void @llvm.dbg.value(metadata i64 8192, metadata !75, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata ptr %vla232, metadata !76, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 0, metadata !80, metadata !DIExpression()), !dbg !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %vla232, i8 0, i64 32768, i1 false), !dbg !93, !tbaa !45
  br label %for.body, !dbg !96

for.cond.cleanup:                                 ; preds = %for.body
  call void @foo(ptr noundef nonnull %vla30, ptr noundef nonnull %vla131, ptr noundef nonnull %vla232, i32 noundef 8192), !dbg !97
  call void @llvm.dbg.value(metadata i32 0, metadata !82, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 0, metadata !83, metadata !DIExpression()), !dbg !98
  br label %for.body11, !dbg !99

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !80, metadata !DIExpression()), !dbg !92
  %arrayidx = getelementptr inbounds i32, ptr %vla30, i64 %indvars.iv, !dbg !100
  %0 = trunc i64 %indvars.iv to i32, !dbg !101
  store i32 %0, ptr %arrayidx, align 4, !dbg !101, !tbaa !45
  %arrayidx4 = getelementptr inbounds i32, ptr %vla131, i64 %indvars.iv, !dbg !102
  store i32 2, ptr %arrayidx4, align 4, !dbg !103, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !104
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !80, metadata !DIExpression()), !dbg !92
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !105
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !96, !llvm.loop !106

for.cond.cleanup10:                               ; preds = %for.body11
  %add.lcssa = phi i32 [ %add, %for.body11 ], !dbg !108
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add.lcssa), !dbg !111
  ret i32 0, !dbg !112

for.body11:                                       ; preds = %for.body11, %for.cond.cleanup
  %indvars.iv37 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next38, %for.body11 ]
  %sum.034 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37, metadata !83, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 %sum.034, metadata !82, metadata !DIExpression()), !dbg !85
  %arrayidx13 = getelementptr inbounds i32, ptr %vla232, i64 %indvars.iv37, !dbg !113
  %1 = load i32, ptr %arrayidx13, align 4, !dbg !113, !tbaa !45
  %add = add nsw i32 %1, %sum.034, !dbg !108
  call void @llvm.dbg.value(metadata i32 %add, metadata !82, metadata !DIExpression()), !dbg !85
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !114
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38, metadata !83, metadata !DIExpression()), !dbg !98
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 8192, !dbg !115
  br i1 %exitcond40.not, label %for.cond.cleanup10, label %for.body11, !dbg !99, !llvm.loop !116
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i64> @llvm.experimental.stepvector.nxv4i64() #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1>, ptr) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.aarch64.sve.st1.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr nocapture) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "71d1863922fa68fddcec5be7e29df1e9")
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
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 6, type: !15, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 6, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 6, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 6, type: !17)
!24 = !DILocalVariable(name: "n", arg: 4, scope: !14, file: !1, line: 6, type: !19)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 10, type: !19)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 10, column: 5)
!27 = !DILocation(line: 0, scope: !14)
!28 = !DILocation(line: 9, column: 5, scope: !29)
!29 = distinct !DILexicalBlock(scope: !14, file: !1, line: 9, column: 5)
!30 = !{i64 2147612468}
!31 = !DILocation(line: 0, scope: !26)
!32 = !DILocation(line: 10, column: 23, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !1, line: 10, column: 5)
!34 = !DILocation(line: 10, column: 5, scope: !26)
!35 = !DILocation(line: 15, column: 5, scope: !36)
!36 = distinct !DILexicalBlock(scope: !14, file: !1, line: 15, column: 5)
!37 = !{i64 2147612507}
!38 = !DILocation(line: 17, column: 1, scope: !14)
!39 = !DILocation(line: 11, column: 19, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 11, column: 13)
!41 = distinct !DILexicalBlock(scope: !33, file: !1, line: 10, column: 33)
!42 = !DILocation(line: 11, column: 13, scope: !41)
!43 = !DILocation(line: 12, column: 20, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 11, column: 25)
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !DILocation(line: 12, column: 27, scope: !44)
!50 = !DILocation(line: 12, column: 25, scope: !44)
!51 = !DILocation(line: 12, column: 13, scope: !44)
!52 = !DILocation(line: 12, column: 18, scope: !44)
!53 = !DILocation(line: 13, column: 9, scope: !44)
!54 = !DILocation(line: 10, column: 28, scope: !33)
!55 = distinct !{!55, !34, !56, !57, !58}
!56 = !DILocation(line: 14, column: 5, scope: !26)
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !60, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{!19}
!62 = !{!63, !64, !66, !70, !71, !75, !76, !80, !82, !83}
!63 = !DILocalVariable(name: "n", scope: !59, file: !1, line: 22, type: !19)
!64 = !DILocalVariable(name: "__vla_expr0", scope: !59, type: !65, flags: DIFlagArtificial)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DILocalVariable(name: "a", scope: !59, file: !1, line: 24, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: !64)
!70 = !DILocalVariable(name: "__vla_expr1", scope: !59, type: !65, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "b", scope: !59, file: !1, line: 25, type: !72)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: !70)
!75 = !DILocalVariable(name: "__vla_expr2", scope: !59, type: !65, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "c", scope: !59, file: !1, line: 26, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: !75)
!80 = !DILocalVariable(name: "i", scope: !81, file: !1, line: 28, type: !19)
!81 = distinct !DILexicalBlock(scope: !59, file: !1, line: 28, column: 5)
!82 = !DILocalVariable(name: "sum", scope: !59, file: !1, line: 37, type: !19)
!83 = !DILocalVariable(name: "i", scope: !84, file: !1, line: 39, type: !19)
!84 = distinct !DILexicalBlock(scope: !59, file: !1, line: 39, column: 5)
!85 = !DILocation(line: 0, scope: !59)
!86 = !DILocation(line: 24, column: 5, scope: !59)
!87 = !DILocation(line: 24, column: 9, scope: !59)
!88 = !DILocation(line: 25, column: 5, scope: !59)
!89 = !DILocation(line: 25, column: 9, scope: !59)
!90 = !DILocation(line: 26, column: 5, scope: !59)
!91 = !DILocation(line: 26, column: 9, scope: !59)
!92 = !DILocation(line: 0, scope: !81)
!93 = !DILocation(line: 31, column: 14, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 28, column: 33)
!95 = distinct !DILexicalBlock(scope: !81, file: !1, line: 28, column: 5)
!96 = !DILocation(line: 28, column: 5, scope: !81)
!97 = !DILocation(line: 35, column: 5, scope: !59)
!98 = !DILocation(line: 0, scope: !84)
!99 = !DILocation(line: 39, column: 5, scope: !84)
!100 = !DILocation(line: 29, column: 9, scope: !94)
!101 = !DILocation(line: 29, column: 14, scope: !94)
!102 = !DILocation(line: 30, column: 9, scope: !94)
!103 = !DILocation(line: 30, column: 14, scope: !94)
!104 = !DILocation(line: 28, column: 28, scope: !95)
!105 = !DILocation(line: 28, column: 23, scope: !95)
!106 = distinct !{!106, !96, !107, !57, !58}
!107 = !DILocation(line: 32, column: 5, scope: !81)
!108 = !DILocation(line: 40, column: 13, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 39, column: 33)
!110 = distinct !DILexicalBlock(scope: !84, file: !1, line: 39, column: 5)
!111 = !DILocation(line: 43, column: 5, scope: !59)
!112 = !DILocation(line: 47, column: 1, scope: !59)
!113 = !DILocation(line: 40, column: 16, scope: !109)
!114 = !DILocation(line: 39, column: 28, scope: !110)
!115 = !DILocation(line: 39, column: 23, scope: !110)
!116 = distinct !{!116, !99, !117, !57, !58}
!117 = !DILocation(line: 41, column: 5, scope: !84)
