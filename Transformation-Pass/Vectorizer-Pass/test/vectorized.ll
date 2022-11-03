; ModuleID = 'compiled_with_O3.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !21, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata ptr %cond, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 %n, metadata !25, metadata !DIExpression()), !dbg !28
  tail call void asm sideeffect ".inst 0x2520e020", ""() #7, !dbg !29, !srcloc !31
  call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !32
  %cmp12 = icmp sgt i32 %n, 0, !dbg !33
  br i1 %cmp12, label %for.body.preheader, label %for.cond.cleanup, !dbg !35

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !33
  %0 = call i64 @llvm.vscale.i64(), !dbg !35
  %1 = mul i64 %0, 2, !dbg !35
  %2 = icmp uge i64 %wide.trip.count, %1, !dbg !35
  br i1 %2, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !35

for.cond.cleanup.loopexit:                        ; preds = %middel.block, %for.inc
  br label %for.cond.cleanup, !dbg !36

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  tail call void asm sideeffect ".inst 0x2520e040", ""() #7, !dbg !36, !srcloc !38
  ret void, !dbg !39

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %6, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !26, metadata !DIExpression()), !dbg !32
  %arrayidx = getelementptr inbounds i32, ptr %cond, i64 %indvars.iv, !dbg !40
  %3 = load i32, ptr %arrayidx, align 4, !dbg !40, !tbaa !43
  %tobool.not = icmp eq i32 %3, 0, !dbg !40
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !47

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !48
  %4 = load i32, ptr %arrayidx2, align 4, !dbg !48, !tbaa !43
  %arrayidx4 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !50
  %5 = load i32, ptr %arrayidx4, align 4, !dbg !50, !tbaa !43
  %mul = mul nsw i32 %5, %4, !dbg !51
  %arrayidx6 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !52
  store i32 %mul, ptr %arrayidx6, align 4, !dbg !53, !tbaa !43
  br label %for.inc, !dbg !54

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.body.preheader
  %6 = phi i64 [ 0, %for.body.preheader ], [ %52, %middel.block ]
  br label %for.body

pre.alc:                                          ; preds = %for.body.preheader
  %7 = call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 2)
  %uniform.vector = call <vscale x 2 x i64> @llvm.experimental.stepvector.nxv2i64()
  %8 = urem i64 %wide.trip.count, %1
  %total.iterations.to.be.vectorized = sub i64 %wide.trip.count, %8
  %9 = insertelement <vscale x 2 x i64> poison, i64 %1, i64 0
  %stepVector.update.values = shufflevector <vscale x 2 x i64> %9, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %10 = getelementptr inbounds i32, ptr %cond, i64 0, !dbg !40
  %11 = load <vscale x 2 x i32>, ptr %10, align 8
  %12 = icmp eq <vscale x 2 x i32> %11, zeroinitializer
  %13 = call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %12, <vscale x 2 x i1> %12)
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %index = phi i64 [ 0, %pre.alc ], [ %52, %new.latch ]
  %uniform.vector1 = phi <vscale x 2 x i64> [ %uniform.vector, %pre.alc ], [ %49, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 2 x i1> [ %12, %pre.alc ], [ %50, %new.latch ]
  %uniform.vec.actives = phi i64 [ %13, %pre.alc ], [ %51, %new.latch ]
  %14 = call <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64 %index, i64 %1)
  %15 = getelementptr inbounds i32, ptr %cond, i64 %index, !dbg !40
  %16 = load <vscale x 2 x i32>, ptr %15, align 8
  %17 = icmp eq <vscale x 2 x i32> %16, zeroinitializer
  %18 = call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %17, <vscale x 2 x i1> %17)
  %19 = add i64 %uniform.vec.actives, %18
  %condition2 = icmp ule i64 %19, %1
  br i1 %condition2, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %alc.header
  %20 = call <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1> %uniform.vector.predicates, <vscale x 2 x i64> %uniform.vector1)
  %21 = call <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1> %17, <vscale x 2 x i64> %14)
  %22 = call <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64 0, i64 %uniform.vec.actives)
  %23 = call <vscale x 2 x i64> @llvm.aarch64.sve.splice.nxv2i64(<vscale x 2 x i1> %22, <vscale x 2 x i64> %20, <vscale x 2 x i64> %21)
  %24 = call <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64 0, i64 %19)
  %25 = icmp uge i64 %19, %1
  br i1 %25, label %uniform.block, label %join.block

uniform.block:                                    ; preds = %lane.gather
  %26 = getelementptr inbounds i32, ptr %a, i64 0, !dbg !48
  %27 = getelementptr inbounds i32, ptr %b, i64 0, !dbg !50
  %28 = getelementptr inbounds i32, ptr %c, i64 0, !dbg !52
  %29 = call <vscale x 2 x i32> @llvm.aarch64.sve.ld1.gather.index.nxv2i32(<vscale x 2 x i1> %7, ptr %26, <vscale x 2 x i64> %23)
  %30 = call <vscale x 2 x i32> @llvm.aarch64.sve.ld1.gather.index.nxv2i32(<vscale x 2 x i1> %7, ptr %27, <vscale x 2 x i64> %23)
  %31 = mul <vscale x 2 x i32> %30, %29
  call void @llvm.aarch64.sve.st1.scatter.index.nxv2i32(<vscale x 2 x i32> %31, <vscale x 2 x i1> %7, ptr %28, <vscale x 2 x i64> %23)
  %32 = add i64 %index, %1
  %33 = call <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64 %32, i64 1)
  %34 = getelementptr inbounds i32, ptr %cond, i64 %32, !dbg !40
  %35 = load <vscale x 2 x i32>, ptr %34, align 8
  %36 = icmp eq <vscale x 2 x i32> %35, zeroinitializer
  %37 = call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %36, <vscale x 2 x i1> %36)
  br label %join.block

linearized:                                       ; preds = %alc.header
  %38 = getelementptr inbounds i32, ptr %a, i64 %index, !dbg !48
  %39 = getelementptr inbounds i32, ptr %b, i64 %index, !dbg !50
  %40 = getelementptr inbounds i32, ptr %c, i64 %index, !dbg !52
  %41 = load <vscale x 2 x i32>, ptr %38, align 8
  %42 = load <vscale x 2 x i32>, ptr %39, align 8
  %43 = mul <vscale x 2 x i32> %42, %41
  store <vscale x 2 x i32> %43, ptr %40, align 8
  br label %new.latch

join.block:                                       ; preds = %uniform.block, %lane.gather
  %44 = phi i64 [ %index, %lane.gather ], [ %32, %uniform.block ]
  %45 = phi <vscale x 2 x i64> [ %uniform.vector1, %lane.gather ], [ %33, %uniform.block ]
  %46 = phi <vscale x 2 x i1> [ %uniform.vector.predicates, %lane.gather ], [ %36, %uniform.block ]
  %47 = phi i64 [ %uniform.vec.actives, %lane.gather ], [ %37, %uniform.block ]
  br label %new.latch

new.latch:                                        ; preds = %join.block, %linearized
  %48 = phi i64 [ %44, %join.block ], [ %index, %linearized ]
  %49 = phi <vscale x 2 x i64> [ %45, %join.block ], [ %uniform.vector1, %linearized ]
  %50 = phi <vscale x 2 x i1> [ %46, %join.block ], [ %uniform.vector.predicates, %linearized ]
  %51 = phi i64 [ %47, %join.block ], [ %uniform.vec.actives, %linearized ]
  %52 = add i64 %48, %1
  %53 = icmp ugt i64 %52, %8
  br i1 %53, label %alc.header, label %middel.block

middel.block:                                     ; preds = %new.latch
  %condition = icmp eq i64 %8, 0
  br i1 %condition, label %for.cond.cleanup.loopexit, label %Preheader.for.remaining.iterations

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !55
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !26, metadata !DIExpression()), !dbg !32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !33
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !35, !llvm.loop !56
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !60 {
entry:
  call void @llvm.dbg.value(metadata i32 8192, metadata !64, metadata !DIExpression()), !dbg !91
  %vla38 = alloca [8192 x i32], align 4, !dbg !92
  call void @llvm.dbg.value(metadata i64 8192, metadata !65, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata ptr %vla38, metadata !67, metadata !DIExpression()), !dbg !93
  %vla139 = alloca [8192 x i32], align 4, !dbg !94
  call void @llvm.dbg.value(metadata i64 8192, metadata !71, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata ptr %vla139, metadata !72, metadata !DIExpression()), !dbg !95
  %vla240 = alloca [8192 x i32], align 4, !dbg !96
  call void @llvm.dbg.value(metadata i64 8192, metadata !76, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata ptr %vla240, metadata !77, metadata !DIExpression()), !dbg !97
  %vla341 = alloca [8192 x i32], align 4, !dbg !98
  call void @llvm.dbg.value(metadata i64 8192, metadata !81, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata ptr %vla341, metadata !82, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()), !dbg !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %vla240, i8 0, i64 32768, i1 false), !dbg !101, !tbaa !43
  br label %for.body, !dbg !104

for.cond.cleanup:                                 ; preds = %for.body
  call void @foo(ptr noundef nonnull %vla38, ptr noundef nonnull %vla139, ptr noundef nonnull %vla240, ptr noundef nonnull %vla341, i32 noundef 8192), !dbg !105
  call void @llvm.dbg.value(metadata i32 0, metadata !88, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 0, metadata !89, metadata !DIExpression()), !dbg !106
  br label %for.body16, !dbg !107

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %indvars46 = trunc i64 %indvars.iv to i32
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !86, metadata !DIExpression()), !dbg !100
  %arrayidx = getelementptr inbounds i32, ptr %vla38, i64 %indvars.iv, !dbg !108
  store i32 %indvars46, ptr %arrayidx, align 4, !dbg !109, !tbaa !43
  %arrayidx5 = getelementptr inbounds i32, ptr %vla139, i64 %indvars.iv, !dbg !110
  store i32 2, ptr %arrayidx5, align 4, !dbg !111, !tbaa !43
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16, !dbg !112
  %rem42 = urem i16 %rem.lhs.trunc, 10, !dbg !112
  %cmp8 = icmp eq i16 %rem42, 0, !dbg !113
  %conv = zext i1 %cmp8 to i32, !dbg !113
  %arrayidx10 = getelementptr inbounds i32, ptr %vla341, i64 %indvars.iv, !dbg !114
  store i32 %conv, ptr %arrayidx10, align 4, !dbg !115, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !116
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !86, metadata !DIExpression()), !dbg !100
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !117
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !104, !llvm.loop !118

for.cond.cleanup15:                               ; preds = %for.body16
  %add.lcssa = phi i32 [ %add, %for.body16 ], !dbg !120
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add.lcssa), !dbg !123
  ret i32 0, !dbg !124

for.body16:                                       ; preds = %for.body16, %for.cond.cleanup
  %indvars.iv47 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next48, %for.body16 ]
  %sum.044 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body16 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv47, metadata !89, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32 %sum.044, metadata !88, metadata !DIExpression()), !dbg !91
  %arrayidx18 = getelementptr inbounds i32, ptr %vla240, i64 %indvars.iv47, !dbg !125
  %0 = load i32, ptr %arrayidx18, align 4, !dbg !125, !tbaa !43
  %add = add nsw i32 %0, %sum.044, !dbg !120
  call void @llvm.dbg.value(metadata i32 %add, metadata !88, metadata !DIExpression()), !dbg !91
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next48, metadata !89, metadata !DIExpression()), !dbg !106
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, 8192, !dbg !127
  br i1 %exitcond50.not, label %for.cond.cleanup15, label %for.body16, !dbg !107, !llvm.loop !128
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.vscale.i64() #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.experimental.stepvector.nxv2i64() #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1>, <vscale x 2 x i1>) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.splice.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 2 x i32> @llvm.aarch64.sve.ld1.gather.index.nxv2i32(<vscale x 2 x i1>, ptr, <vscale x 2 x i64>) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.index.nxv2i32(<vscale x 2 x i32>, <vscale x 2 x i1>, ptr, <vscale x 2 x i64>) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "31b0f111804ac48347421d407d07b919")
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
!16 = !{null, !17, !17, !17, !17, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25, !26}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 6, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 6, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 6, type: !17)
!24 = !DILocalVariable(name: "cond", arg: 4, scope: !14, file: !1, line: 6, type: !17)
!25 = !DILocalVariable(name: "n", arg: 5, scope: !14, file: !1, line: 6, type: !19)
!26 = !DILocalVariable(name: "i", scope: !27, file: !1, line: 10, type: !19)
!27 = distinct !DILexicalBlock(scope: !14, file: !1, line: 10, column: 5)
!28 = !DILocation(line: 0, scope: !14)
!29 = !DILocation(line: 9, column: 5, scope: !30)
!30 = distinct !DILexicalBlock(scope: !14, file: !1, line: 9, column: 5)
!31 = !{i64 2147612542}
!32 = !DILocation(line: 0, scope: !27)
!33 = !DILocation(line: 10, column: 23, scope: !34)
!34 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 5)
!35 = !DILocation(line: 10, column: 5, scope: !27)
!36 = !DILocation(line: 15, column: 5, scope: !37)
!37 = distinct !DILexicalBlock(scope: !14, file: !1, line: 15, column: 5)
!38 = !{i64 2147612581}
!39 = !DILocation(line: 17, column: 1, scope: !14)
!40 = !DILocation(line: 11, column: 13, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 11, column: 13)
!42 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 33)
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 11, column: 13, scope: !42)
!48 = !DILocation(line: 12, column: 20, scope: !49)
!49 = distinct !DILexicalBlock(scope: !41, file: !1, line: 11, column: 22)
!50 = !DILocation(line: 12, column: 27, scope: !49)
!51 = !DILocation(line: 12, column: 25, scope: !49)
!52 = !DILocation(line: 12, column: 13, scope: !49)
!53 = !DILocation(line: 12, column: 18, scope: !49)
!54 = !DILocation(line: 13, column: 9, scope: !49)
!55 = !DILocation(line: 10, column: 28, scope: !34)
!56 = distinct !{!56, !35, !57, !58, !59}
!57 = !DILocation(line: 14, column: 5, scope: !27)
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !61, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!61 = !DISubroutineType(types: !62)
!62 = !{!19}
!63 = !{!64, !65, !67, !71, !72, !76, !77, !81, !82, !86, !88, !89}
!64 = !DILocalVariable(name: "n", scope: !60, file: !1, line: 22, type: !19)
!65 = !DILocalVariable(name: "__vla_expr0", scope: !60, type: !66, flags: DIFlagArtificial)
!66 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DILocalVariable(name: "a", scope: !60, file: !1, line: 24, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: !65)
!71 = !DILocalVariable(name: "__vla_expr1", scope: !60, type: !66, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "b", scope: !60, file: !1, line: 25, type: !73)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: !71)
!76 = !DILocalVariable(name: "__vla_expr2", scope: !60, type: !66, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "c", scope: !60, file: !1, line: 26, type: !78)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: !76)
!81 = !DILocalVariable(name: "__vla_expr3", scope: !60, type: !66, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "cond", scope: !60, file: !1, line: 27, type: !83)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: !81)
!86 = !DILocalVariable(name: "i", scope: !87, file: !1, line: 29, type: !19)
!87 = distinct !DILexicalBlock(scope: !60, file: !1, line: 29, column: 5)
!88 = !DILocalVariable(name: "sum", scope: !60, file: !1, line: 39, type: !19)
!89 = !DILocalVariable(name: "i", scope: !90, file: !1, line: 41, type: !19)
!90 = distinct !DILexicalBlock(scope: !60, file: !1, line: 41, column: 5)
!91 = !DILocation(line: 0, scope: !60)
!92 = !DILocation(line: 24, column: 5, scope: !60)
!93 = !DILocation(line: 24, column: 9, scope: !60)
!94 = !DILocation(line: 25, column: 5, scope: !60)
!95 = !DILocation(line: 25, column: 9, scope: !60)
!96 = !DILocation(line: 26, column: 5, scope: !60)
!97 = !DILocation(line: 26, column: 9, scope: !60)
!98 = !DILocation(line: 27, column: 5, scope: !60)
!99 = !DILocation(line: 27, column: 9, scope: !60)
!100 = !DILocation(line: 0, scope: !87)
!101 = !DILocation(line: 32, column: 14, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 29, column: 33)
!103 = distinct !DILexicalBlock(scope: !87, file: !1, line: 29, column: 5)
!104 = !DILocation(line: 29, column: 5, scope: !87)
!105 = !DILocation(line: 37, column: 5, scope: !60)
!106 = !DILocation(line: 0, scope: !90)
!107 = !DILocation(line: 41, column: 5, scope: !90)
!108 = !DILocation(line: 30, column: 9, scope: !102)
!109 = !DILocation(line: 30, column: 14, scope: !102)
!110 = !DILocation(line: 31, column: 9, scope: !102)
!111 = !DILocation(line: 31, column: 14, scope: !102)
!112 = !DILocation(line: 33, column: 21, scope: !102)
!113 = !DILocation(line: 33, column: 25, scope: !102)
!114 = !DILocation(line: 33, column: 9, scope: !102)
!115 = !DILocation(line: 33, column: 17, scope: !102)
!116 = !DILocation(line: 29, column: 28, scope: !103)
!117 = !DILocation(line: 29, column: 23, scope: !103)
!118 = distinct !{!118, !104, !119, !58, !59}
!119 = !DILocation(line: 34, column: 5, scope: !87)
!120 = !DILocation(line: 42, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 41, column: 33)
!122 = distinct !DILexicalBlock(scope: !90, file: !1, line: 41, column: 5)
!123 = !DILocation(line: 45, column: 5, scope: !60)
!124 = !DILocation(line: 49, column: 1, scope: !60)
!125 = !DILocation(line: 42, column: 16, scope: !121)
!126 = !DILocation(line: 41, column: 28, scope: !122)
!127 = !DILocation(line: 41, column: 23, scope: !122)
!128 = distinct !{!128, !107, !129, !58, !59}
!129 = !DILocation(line: 43, column: 5, scope: !90)
