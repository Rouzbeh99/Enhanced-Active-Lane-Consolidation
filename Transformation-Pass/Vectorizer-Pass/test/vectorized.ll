; ModuleID = 'compiled_with_O3.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !24, metadata !DIExpression()), !dbg !27
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #8, !dbg !28, !srcloc !29
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !30
  %cmp11 = icmp sgt i32 %n, 0, !dbg !31
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup, !dbg !33

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !31
  %0 = call i64 @llvm.vscale.i64(), !dbg !33
  %1 = shl i64 %0, 2, !dbg !33
  %2 = icmp uge i64 %wide.trip.count, %1, !dbg !33
  br i1 %2, label %Pre.Vectorization, label %Preheader.for.remaining.iterations, !dbg !33

for.cond.cleanup.loopexit:                        ; preds = %middle.block, %for.inc
  br label %for.cond.cleanup, !dbg !34

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #8, !dbg !34, !srcloc !35
  ret void, !dbg !36

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %22, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !25, metadata !DIExpression()), !dbg !30
  %rem15 = and i64 %indvars.iv, 1, !dbg !37
  %cmp1.not = icmp eq i64 %rem15, 0, !dbg !37
  br i1 %cmp1.not, label %for.inc, label %if.then, !dbg !40

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !41
  %3 = load i32, ptr %arrayidx, align 4, !dbg !41, !tbaa !43
  %arrayidx3 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !47
  %4 = load i32, ptr %arrayidx3, align 4, !dbg !47, !tbaa !43
  %mul = mul nsw i32 %4, %3, !dbg !48
  %arrayidx5 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !49
  store i32 %mul, ptr %arrayidx5, align 4, !dbg !50, !tbaa !43
  br label %for.inc, !dbg !51

middle.block:                                     ; preds = %vectorizing.block
  %condition = icmp eq i64 %7, 0
  br i1 %condition, label %for.cond.cleanup.loopexit, label %Preheader.for.remaining.iterations

Pre.Vectorization:                                ; preds = %for.body.preheader
  %5 = call <vscale x 4 x i64> @llvm.experimental.stepvector.nxv4i64()
  %6 = call i64 @llvm.vscale.i64()
  %step.value = shl i64 %6, 2
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
  %14 = getelementptr inbounds i32, ptr %a, i64 %9, !dbg !41
  %15 = getelementptr inbounds i32, ptr %b, i64 %9, !dbg !47
  %16 = getelementptr inbounds i32, ptr %c, i64 %9, !dbg !49
  %17 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1> %13, ptr %14)
  %18 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1> %13, ptr %15)
  %19 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %13, <vscale x 4 x i32> %18, <vscale x 4 x i32> %17)
  call void @llvm.aarch64.sve.st1.nxv4i32(<vscale x 4 x i32> %19, <vscale x 4 x i1> %13, ptr %16)
  %20 = add i64 %step.value, %9
  %21 = add <vscale x 4 x i64> %10, %stepVector.update.values
  %terminate.condition = icmp uge i64 %20, %total.iterations.to.be.vectorized
  br i1 %terminate.condition, label %middle.block, label %vectorizing.block

Preheader.for.remaining.iterations:               ; preds = %middle.block, %for.body.preheader
  %22 = phi i64 [ 0, %for.body.preheader ], [ %20, %middle.block ]
  br label %for.body

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !52
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !25, metadata !DIExpression()), !dbg !30
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !31
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !33, !llvm.loop !53
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !57 {
entry:
  call void @llvm.dbg.value(metadata i32 2048, metadata !61, metadata !DIExpression()), !dbg !83
  %vla30 = alloca [2048 x i32], align 4, !dbg !84
  call void @llvm.dbg.value(metadata i64 2048, metadata !62, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata ptr %vla30, metadata !64, metadata !DIExpression()), !dbg !85
  %vla131 = alloca [2048 x i32], align 4, !dbg !86
  call void @llvm.dbg.value(metadata i64 2048, metadata !68, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata ptr %vla131, metadata !69, metadata !DIExpression()), !dbg !87
  %vla232 = alloca [2048 x i32], align 4, !dbg !88
  call void @llvm.dbg.value(metadata i64 2048, metadata !73, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata ptr %vla232, metadata !74, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i32 0, metadata !78, metadata !DIExpression()), !dbg !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %vla232, i8 0, i64 8192, i1 false), !dbg !91, !tbaa !43
  br label %for.body, !dbg !94

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95), !dbg !98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99), !dbg !98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101), !dbg !98
  call void @llvm.dbg.value(metadata ptr %vla30, metadata !21, metadata !DIExpression()) #8, !dbg !103
  call void @llvm.dbg.value(metadata ptr %vla131, metadata !22, metadata !DIExpression()) #8, !dbg !103
  call void @llvm.dbg.value(metadata ptr %vla232, metadata !23, metadata !DIExpression()) #8, !dbg !103
  call void @llvm.dbg.value(metadata i32 2048, metadata !24, metadata !DIExpression()) #8, !dbg !103
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #8, !dbg !105, !noalias !106, !srcloc !29
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()) #8, !dbg !107
  br label %for.body.i, !dbg !108

for.body.i:                                       ; preds = %for.inc.i, %for.cond.cleanup
  %indvars.iv.i = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !25, metadata !DIExpression()) #8, !dbg !107
  %rem15.i = and i64 %indvars.iv.i, 1, !dbg !109
  %cmp1.not.i = icmp eq i64 %rem15.i, 0, !dbg !109
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !110

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr inbounds i32, ptr %vla30, i64 %indvars.iv.i, !dbg !111
  %0 = load i32, ptr %arrayidx.i, align 4, !dbg !111, !tbaa !43, !alias.scope !95, !noalias !112
  %arrayidx3.i = getelementptr inbounds i32, ptr %vla131, i64 %indvars.iv.i, !dbg !113
  %1 = load i32, ptr %arrayidx3.i, align 4, !dbg !113, !tbaa !43, !alias.scope !99, !noalias !114
  %mul.i = mul nsw i32 %1, %0, !dbg !115
  %arrayidx5.i = getelementptr inbounds i32, ptr %vla232, i64 %indvars.iv.i, !dbg !116
  store i32 %mul.i, ptr %arrayidx5.i, align 4, !dbg !117, !tbaa !43, !alias.scope !101, !noalias !118
  br label %for.inc.i, !dbg !119

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !120
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !25, metadata !DIExpression()) #8, !dbg !107
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2048, !dbg !121
  br i1 %exitcond.not.i, label %foo.exit, label %for.body.i, !dbg !108, !llvm.loop !122

foo.exit:                                         ; preds = %for.inc.i
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #8, !dbg !124, !noalias !106, !srcloc !35
  call void @llvm.dbg.value(metadata i32 0, metadata !80, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i32 0, metadata !81, metadata !DIExpression()), !dbg !125
  br label %for.body11, !dbg !126

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !78, metadata !DIExpression()), !dbg !90
  %arrayidx = getelementptr inbounds i32, ptr %vla30, i64 %indvars.iv, !dbg !127
  %2 = trunc i64 %indvars.iv to i32, !dbg !128
  store i32 %2, ptr %arrayidx, align 4, !dbg !128, !tbaa !43
  %arrayidx4 = getelementptr inbounds i32, ptr %vla131, i64 %indvars.iv, !dbg !129
  store i32 2, ptr %arrayidx4, align 4, !dbg !130, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !131
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !78, metadata !DIExpression()), !dbg !90
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2048, !dbg !132
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !94, !llvm.loop !133

for.cond.cleanup10:                               ; preds = %for.body11
  %add.lcssa = phi i32 [ %add, %for.body11 ], !dbg !135
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add.lcssa), !dbg !138
  ret i32 0, !dbg !139

for.body11:                                       ; preds = %for.body11, %foo.exit
  %indvars.iv37 = phi i64 [ 0, %foo.exit ], [ %indvars.iv.next38, %for.body11 ]
  %sum.034 = phi i32 [ 0, %foo.exit ], [ %add, %for.body11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37, metadata !81, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i32 %sum.034, metadata !80, metadata !DIExpression()), !dbg !83
  %arrayidx13 = getelementptr inbounds i32, ptr %vla232, i64 %indvars.iv37, !dbg !140
  %3 = load i32, ptr %arrayidx13, align 4, !dbg !140, !tbaa !43
  %add = add nsw i32 %3, %sum.034, !dbg !135
  call void @llvm.dbg.value(metadata i32 %add, metadata !80, metadata !DIExpression()), !dbg !83
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !141
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38, metadata !81, metadata !DIExpression()), !dbg !125
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 2048, !dbg !142
  br i1 %exitcond40.not, label %for.cond.cleanup10, label %for.body11, !dbg !126, !llvm.loop !143
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.vscale.i64() #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i64> @llvm.experimental.stepvector.nxv4i64() #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1>, ptr) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.aarch64.sve.st1.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr nocapture) #7

attributes #0 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "934b071bdca8250cfb34ac9e786213bd")
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
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 4, type: !15, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 4, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 4, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 4, type: !17)
!24 = !DILocalVariable(name: "n", arg: 4, scope: !14, file: !1, line: 4, type: !19)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 7, type: !19)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 0, scope: !14)
!28 = !DILocation(line: 6, column: 5, scope: !14)
!29 = !{i64 126, i64 135}
!30 = !DILocation(line: 0, scope: !26)
!31 = !DILocation(line: 7, column: 23, scope: !32)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 7, column: 5)
!33 = !DILocation(line: 7, column: 5, scope: !26)
!34 = !DILocation(line: 12, column: 5, scope: !14)
!35 = !{i64 296, i64 305}
!36 = !DILocation(line: 13, column: 1, scope: !14)
!37 = !DILocation(line: 8, column: 19, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 8, column: 13)
!39 = distinct !DILexicalBlock(scope: !32, file: !1, line: 7, column: 33)
!40 = !DILocation(line: 8, column: 13, scope: !39)
!41 = !DILocation(line: 9, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 8, column: 25)
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 9, column: 27, scope: !42)
!48 = !DILocation(line: 9, column: 25, scope: !42)
!49 = !DILocation(line: 9, column: 13, scope: !42)
!50 = !DILocation(line: 9, column: 18, scope: !42)
!51 = !DILocation(line: 10, column: 9, scope: !42)
!52 = !DILocation(line: 7, column: 28, scope: !32)
!53 = distinct !{!53, !33, !54, !55, !56}
!54 = !DILocation(line: 11, column: 5, scope: !26)
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 16, type: !58, scopeLine: 16, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{!19}
!60 = !{!61, !62, !64, !68, !69, !73, !74, !78, !80, !81}
!61 = !DILocalVariable(name: "n", scope: !57, file: !1, line: 18, type: !19)
!62 = !DILocalVariable(name: "__vla_expr0", scope: !57, type: !63, flags: DIFlagArtificial)
!63 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DILocalVariable(name: "a", scope: !57, file: !1, line: 20, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: !62)
!68 = !DILocalVariable(name: "__vla_expr1", scope: !57, type: !63, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: "b", scope: !57, file: !1, line: 21, type: !70)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: !68)
!73 = !DILocalVariable(name: "__vla_expr2", scope: !57, type: !63, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "c", scope: !57, file: !1, line: 22, type: !75)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: !73)
!78 = !DILocalVariable(name: "i", scope: !79, file: !1, line: 24, type: !19)
!79 = distinct !DILexicalBlock(scope: !57, file: !1, line: 24, column: 5)
!80 = !DILocalVariable(name: "sum", scope: !57, file: !1, line: 33, type: !19)
!81 = !DILocalVariable(name: "i", scope: !82, file: !1, line: 35, type: !19)
!82 = distinct !DILexicalBlock(scope: !57, file: !1, line: 35, column: 5)
!83 = !DILocation(line: 0, scope: !57)
!84 = !DILocation(line: 20, column: 5, scope: !57)
!85 = !DILocation(line: 20, column: 9, scope: !57)
!86 = !DILocation(line: 21, column: 5, scope: !57)
!87 = !DILocation(line: 21, column: 9, scope: !57)
!88 = !DILocation(line: 22, column: 5, scope: !57)
!89 = !DILocation(line: 22, column: 9, scope: !57)
!90 = !DILocation(line: 0, scope: !79)
!91 = !DILocation(line: 27, column: 14, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 24, column: 33)
!93 = distinct !DILexicalBlock(scope: !79, file: !1, line: 24, column: 5)
!94 = !DILocation(line: 24, column: 5, scope: !79)
!95 = !{!96}
!96 = distinct !{!96, !97, !"foo: %a"}
!97 = distinct !{!97, !"foo"}
!98 = !DILocation(line: 31, column: 5, scope: !57)
!99 = !{!100}
!100 = distinct !{!100, !97, !"foo: %b"}
!101 = !{!102}
!102 = distinct !{!102, !97, !"foo: %c"}
!103 = !DILocation(line: 0, scope: !14, inlinedAt: !104)
!104 = distinct !DILocation(line: 31, column: 5, scope: !57)
!105 = !DILocation(line: 6, column: 5, scope: !14, inlinedAt: !104)
!106 = !{!96, !100, !102}
!107 = !DILocation(line: 0, scope: !26, inlinedAt: !104)
!108 = !DILocation(line: 7, column: 5, scope: !26, inlinedAt: !104)
!109 = !DILocation(line: 8, column: 19, scope: !38, inlinedAt: !104)
!110 = !DILocation(line: 8, column: 13, scope: !39, inlinedAt: !104)
!111 = !DILocation(line: 9, column: 20, scope: !42, inlinedAt: !104)
!112 = !{!100, !102}
!113 = !DILocation(line: 9, column: 27, scope: !42, inlinedAt: !104)
!114 = !{!96, !102}
!115 = !DILocation(line: 9, column: 25, scope: !42, inlinedAt: !104)
!116 = !DILocation(line: 9, column: 13, scope: !42, inlinedAt: !104)
!117 = !DILocation(line: 9, column: 18, scope: !42, inlinedAt: !104)
!118 = !{!96, !100}
!119 = !DILocation(line: 10, column: 9, scope: !42, inlinedAt: !104)
!120 = !DILocation(line: 7, column: 28, scope: !32, inlinedAt: !104)
!121 = !DILocation(line: 7, column: 23, scope: !32, inlinedAt: !104)
!122 = distinct !{!122, !108, !123, !55, !56}
!123 = !DILocation(line: 11, column: 5, scope: !26, inlinedAt: !104)
!124 = !DILocation(line: 12, column: 5, scope: !14, inlinedAt: !104)
!125 = !DILocation(line: 0, scope: !82)
!126 = !DILocation(line: 35, column: 5, scope: !82)
!127 = !DILocation(line: 25, column: 9, scope: !92)
!128 = !DILocation(line: 25, column: 14, scope: !92)
!129 = !DILocation(line: 26, column: 9, scope: !92)
!130 = !DILocation(line: 26, column: 14, scope: !92)
!131 = !DILocation(line: 24, column: 28, scope: !93)
!132 = !DILocation(line: 24, column: 23, scope: !93)
!133 = distinct !{!133, !94, !134, !55, !56}
!134 = !DILocation(line: 28, column: 5, scope: !79)
!135 = !DILocation(line: 36, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 35, column: 33)
!137 = distinct !DILexicalBlock(scope: !82, file: !1, line: 35, column: 5)
!138 = !DILocation(line: 38, column: 5, scope: !57)
!139 = !DILocation(line: 42, column: 1, scope: !57)
!140 = !DILocation(line: 36, column: 16, scope: !136)
!141 = !DILocation(line: 35, column: 28, scope: !137)
!142 = !DILocation(line: 35, column: 23, scope: !137)
!143 = distinct !{!143, !126, !144, !55, !56}
!144 = !DILocation(line: 37, column: 5, scope: !82)
