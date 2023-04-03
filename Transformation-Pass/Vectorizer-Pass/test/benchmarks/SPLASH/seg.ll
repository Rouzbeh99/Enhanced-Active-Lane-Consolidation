; ModuleID = 'seg.c'
source_filename = "seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMatrix = type { i64, i64, ptr, ptr, ptr, ptr }

@work_tree = external local_unnamed_addr global ptr, align 8
@max_block_size = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !0
@.str = private unnamed_addr constant [56 x i8] c"%ld max height, %.0f ops, %.2f conc, %.2f bl for %ld P\0A\00", align 1
@firstchild = external local_unnamed_addr global ptr, align 8
@child = external local_unnamed_addr global ptr, align 8
@partition = dso_local local_unnamed_addr global ptr null, align 8, !dbg !18
@node = external local_unnamed_addr global ptr, align 8
@boundary = dso_local local_unnamed_addr global ptr null, align 8, !dbg !8
@next_in_segment = dso_local local_unnamed_addr global ptr null, align 8, !dbg !10
@next_segment = dso_local local_unnamed_addr global ptr null, align 8, !dbg !12
@sets_affected = dso_local local_unnamed_addr global ptr null, align 8, !dbg !14
@n_affected = dso_local local_unnamed_addr global i64 0, align 8, !dbg !16
@segment_perm = dso_local local_unnamed_addr global ptr null, align 8, !dbg !20

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @ComputeTargetBlockSize(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M, i64 noundef %P) local_unnamed_addr #0 !dbg !30 {
entry:
  %max_ht = alloca i64, align 8
  call void @llvm.dbg.declare(metadata ptr %M, metadata !45, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata i64 %P, metadata !46, metadata !DIExpression()), !dbg !50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_ht) #10, !dbg !51
  call void @llvm.dbg.value(metadata i64 0, metadata !47, metadata !DIExpression()), !dbg !50
  store i64 0, ptr %max_ht, align 8, !dbg !52
  %0 = load i64, ptr %M, align 8, !dbg !53
  call void @llvm.dbg.value(metadata ptr %max_ht, metadata !47, metadata !DIExpression(DW_OP_deref)), !dbg !50
  call void @FindMaxHeight(ptr noundef nonnull byval(%struct.SMatrix) align 8 %M, i64 noundef %0, i64 noundef 0, ptr noundef nonnull %max_ht), !dbg !54
  %1 = load ptr, ptr @work_tree, align 8, !dbg !55
  %arrayidx = getelementptr inbounds double, ptr %1, i64 %0, !dbg !55
  %2 = load double, ptr %arrayidx, align 8, !dbg !55
  call void @llvm.dbg.value(metadata double %2, metadata !48, metadata !DIExpression()), !dbg !50
  %3 = load i64, ptr %max_ht, align 8, !dbg !56
  call void @llvm.dbg.value(metadata i64 %3, metadata !47, metadata !DIExpression()), !dbg !50
  %mul = mul nsw i64 %3, 3, !dbg !57
  %conv = sitofp i64 %mul to double, !dbg !58
  %div = fdiv double %2, %conv, !dbg !59
  %conv2 = sitofp i64 %P to double, !dbg !60
  %div3 = fdiv double %div, %conv2, !dbg !61
  %call = tail call double @sqrt(double noundef %div3) #10, !dbg !62
  store double %call, ptr @max_block_size, align 8, !dbg !63
  call void @llvm.dbg.value(metadata i64 %3, metadata !47, metadata !DIExpression()), !dbg !50
  %call7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef %3, double noundef %2, double noundef %div, double noundef %call, i64 noundef %P), !dbg !64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_ht) #10, !dbg !65
  ret void, !dbg !65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @FindMaxHeight(ptr nocapture noundef readnone byval(%struct.SMatrix) align 8 %L, i64 noundef %root, i64 noundef %height, ptr nocapture noundef %maxm) local_unnamed_addr #3 !dbg !66 {
entry:
  call void @llvm.dbg.declare(metadata ptr %L, metadata !70, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 %root, metadata !71, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i64 %height, metadata !72, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata ptr %maxm, metadata !73, metadata !DIExpression()), !dbg !76
  %0 = load i64, ptr %maxm, align 8, !dbg !77
  %cmp = icmp slt i64 %0, %height, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %entry
  store i64 %height, ptr %maxm, align 8, !dbg !81
  br label %if.end, !dbg !82

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @firstchild, align 8, !dbg !83
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 %root, !dbg !83
  %2 = load i64, ptr %arrayidx, align 8, !dbg !83
  call void @llvm.dbg.value(metadata i64 %2, metadata !74, metadata !DIExpression()), !dbg !76
  %add = add nsw i64 %root, 1
  call void @llvm.dbg.value(metadata i64 %2, metadata !74, metadata !DIExpression()), !dbg !76
  %arrayidx112 = getelementptr inbounds i64, ptr %1, i64 %add, !dbg !85
  %3 = load i64, ptr %arrayidx112, align 8, !dbg !85
  %cmp213 = icmp slt i64 %2, %3, !dbg !87
  br i1 %cmp213, label %for.body.lr.ph, label %for.end, !dbg !88

for.body.lr.ph:                                   ; preds = %if.end
  %add4 = add nsw i64 %height, 1
  br label %for.body, !dbg !88

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.014 = phi i64 [ %2, %for.body.lr.ph ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.014, metadata !74, metadata !DIExpression()), !dbg !76
  %4 = load ptr, ptr @child, align 8, !dbg !89
  %arrayidx3 = getelementptr inbounds i64, ptr %4, i64 %i.014, !dbg !89
  %5 = load i64, ptr %arrayidx3, align 8, !dbg !89
  tail call void @FindMaxHeight(ptr noundef nonnull byval(%struct.SMatrix) align 8 %L, i64 noundef %5, i64 noundef %add4, ptr noundef nonnull %maxm), !dbg !90
  %inc = add nsw i64 %i.014, 1, !dbg !91
  call void @llvm.dbg.value(metadata i64 %inc, metadata !74, metadata !DIExpression()), !dbg !76
  %6 = load ptr, ptr @firstchild, align 8, !dbg !85
  %arrayidx1 = getelementptr inbounds i64, ptr %6, i64 %add, !dbg !85
  %7 = load i64, ptr %arrayidx1, align 8, !dbg !85
  %cmp2 = icmp slt i64 %inc, %7, !dbg !87
  br i1 %cmp2, label %for.body, label %for.end, !dbg !88, !llvm.loop !92

for.end:                                          ; preds = %for.body, %if.end
  ret void, !dbg !96
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @NoSegments(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M) local_unnamed_addr #6 !dbg !97 {
entry:
  call void @llvm.dbg.declare(metadata ptr %M, metadata !101, metadata !DIExpression()), !dbg !103
  %0 = load i64, ptr %M, align 8, !dbg !104
  %mul = shl i64 %0, 3, !dbg !105
  %call = tail call ptr @MyMalloc(i64 noundef %mul, i64 noundef 888) #10, !dbg !106
  store ptr %call, ptr @partition, align 8, !dbg !107
  call void @llvm.dbg.value(metadata i64 0, metadata !102, metadata !DIExpression()), !dbg !108
  %cmp6 = icmp sgt i64 %0, 0, !dbg !109
  br i1 %cmp6, label %for.body.preheader, label %for.end, !dbg !112

for.body.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !102, metadata !DIExpression()), !dbg !108
  %1 = load ptr, ptr @node, align 8, !dbg !113
  %2 = load i64, ptr %1, align 8, !dbg !113
  store i64 %2, ptr %call, align 8, !dbg !114
  call void @llvm.dbg.value(metadata i64 1, metadata !102, metadata !DIExpression()), !dbg !108
  %exitcond.not8 = icmp eq i64 %0, 1, !dbg !109
  br i1 %exitcond.not8, label %for.end, label %for.body.for.body_crit_edge, !dbg !112, !llvm.loop !115

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %inc9 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load ptr, ptr @partition, align 8, !dbg !117
  call void @llvm.dbg.value(metadata i64 %inc9, metadata !102, metadata !DIExpression()), !dbg !108
  %3 = load ptr, ptr @node, align 8, !dbg !113
  %arrayidx = getelementptr inbounds i64, ptr %3, i64 %inc9, !dbg !113
  %4 = load i64, ptr %arrayidx, align 8, !dbg !113
  %arrayidx2 = getelementptr inbounds i64, ptr %.pre, i64 %inc9, !dbg !117
  store i64 %4, ptr %arrayidx2, align 8, !dbg !114
  %inc = add nuw nsw i64 %inc9, 1, !dbg !118
  call void @llvm.dbg.value(metadata i64 %inc, metadata !102, metadata !DIExpression()), !dbg !108
  %exitcond.not = icmp eq i64 %inc, %0, !dbg !109
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge, !dbg !112, !llvm.loop !115

for.end:                                          ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %entry
  ret void, !dbg !119
}

declare !dbg !120 ptr @MyMalloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable
define dso_local void @CreatePermutation(i64 noundef %n, ptr nocapture noundef writeonly %PERM, i64 noundef %permutation_method) local_unnamed_addr #8 !dbg !126 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !130, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata ptr %PERM, metadata !131, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i64 %permutation_method, metadata !132, metadata !DIExpression()), !dbg !134
  %arrayidx = getelementptr inbounds i64, ptr %PERM, i64 %n, !dbg !135
  store i64 %n, ptr %arrayidx, align 8, !dbg !136
  %cmp = icmp eq i64 %permutation_method, 1, !dbg !137
  %cmp19 = icmp sgt i64 %n, 0
  %or.cond = and i1 %cmp, %cmp19, !dbg !139
  call void @llvm.dbg.value(metadata i64 0, metadata !133, metadata !DIExpression()), !dbg !134
  br i1 %or.cond, label %for.body, label %if.end, !dbg !139

for.body:                                         ; preds = %entry, %for.body
  %j.010 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %j.010, metadata !133, metadata !DIExpression()), !dbg !134
  %arrayidx2 = getelementptr inbounds i64, ptr %PERM, i64 %j.010, !dbg !140
  store i64 %j.010, ptr %arrayidx2, align 8, !dbg !144
  %inc = add nuw nsw i64 %j.010, 1, !dbg !145
  call void @llvm.dbg.value(metadata i64 %inc, metadata !133, metadata !DIExpression()), !dbg !134
  %exitcond.not = icmp eq i64 %inc, %n, !dbg !146
  br i1 %exitcond.not, label %if.end, label %for.body, !dbg !147, !llvm.loop !148

if.end:                                           ; preds = %for.body, %entry
  ret void, !dbg !150
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "max_block_size", scope: !2, file: !3, line: 40, type: !22, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "seg.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "26236f07c2f39ed9dd4628ce2e9f1c3d")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!7 = !{!0, !8, !10, !12, !14, !16, !18, !20}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "boundary", scope: !2, file: !3, line: 42, type: !5, isLocal: false, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "next_in_segment", scope: !2, file: !3, line: 42, type: !5, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "next_segment", scope: !2, file: !3, line: 42, type: !5, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "sets_affected", scope: !2, file: !3, line: 42, type: !5, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "n_affected", scope: !2, file: !3, line: 42, type: !6, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "partition", scope: !2, file: !3, line: 43, type: !5, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "segment_perm", scope: !2, file: !3, line: 44, type: !5, isLocal: false, isDefinition: true)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 2}
!29 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!30 = distinct !DISubprogram(name: "ComputeTargetBlockSize", scope: !3, file: !3, line: 46, type: !31, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !44)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !6}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "SMatrix", file: !34, line: 29, baseType: !35)
!34 = !DIFile(filename: "./matrix.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "f19fdb19034f8f693c291706633e8f13")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 26, size: 384, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !35, file: !34, line: 27, baseType: !6, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !35, file: !34, line: 27, baseType: !6, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !35, file: !34, line: 27, baseType: !5, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "startrow", scope: !35, file: !34, line: 27, baseType: !5, size: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "row", scope: !35, file: !34, line: 27, baseType: !5, size: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !35, file: !34, line: 28, baseType: !43, size: 64, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!44 = !{!45, !46, !47, !48}
!45 = !DILocalVariable(name: "M", arg: 1, scope: !30, file: !3, line: 46, type: !33)
!46 = !DILocalVariable(name: "P", arg: 2, scope: !30, file: !3, line: 46, type: !6)
!47 = !DILocalVariable(name: "max_ht", scope: !30, file: !3, line: 48, type: !6)
!48 = !DILocalVariable(name: "total_ops", scope: !30, file: !3, line: 49, type: !22)
!49 = !DILocation(line: 46, column: 37, scope: !30)
!50 = !DILocation(line: 0, scope: !30)
!51 = !DILocation(line: 48, column: 3, scope: !30)
!52 = !DILocation(line: 52, column: 10, scope: !30)
!53 = !DILocation(line: 53, column: 22, scope: !30)
!54 = !DILocation(line: 53, column: 3, scope: !30)
!55 = !DILocation(line: 55, column: 15, scope: !30)
!56 = !DILocation(line: 57, column: 38, scope: !30)
!57 = !DILocation(line: 57, column: 37, scope: !30)
!58 = !DILocation(line: 57, column: 35, scope: !30)
!59 = !DILocation(line: 57, column: 34, scope: !30)
!60 = !DILocation(line: 57, column: 46, scope: !30)
!61 = !DILocation(line: 57, column: 45, scope: !30)
!62 = !DILocation(line: 57, column: 20, scope: !30)
!63 = !DILocation(line: 57, column: 18, scope: !30)
!64 = !DILocation(line: 59, column: 3, scope: !30)
!65 = !DILocation(line: 62, column: 1, scope: !30)
!66 = distinct !DISubprogram(name: "FindMaxHeight", scope: !3, file: !3, line: 64, type: !67, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !69)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !33, !6, !6, !5}
!69 = !{!70, !71, !72, !73, !74}
!70 = !DILocalVariable(name: "L", arg: 1, scope: !66, file: !3, line: 64, type: !33)
!71 = !DILocalVariable(name: "root", arg: 2, scope: !66, file: !3, line: 64, type: !6)
!72 = !DILocalVariable(name: "height", arg: 3, scope: !66, file: !3, line: 64, type: !6)
!73 = !DILocalVariable(name: "maxm", arg: 4, scope: !66, file: !3, line: 64, type: !5)
!74 = !DILocalVariable(name: "i", scope: !66, file: !3, line: 66, type: !6)
!75 = !DILocation(line: 64, column: 28, scope: !66)
!76 = !DILocation(line: 0, scope: !66)
!77 = !DILocation(line: 69, column: 16, scope: !78)
!78 = distinct !DILexicalBlock(scope: !66, file: !3, line: 69, column: 7)
!79 = !DILocation(line: 69, column: 14, scope: !78)
!80 = !DILocation(line: 69, column: 7, scope: !66)
!81 = !DILocation(line: 70, column: 11, scope: !78)
!82 = !DILocation(line: 70, column: 5, scope: !78)
!83 = !DILocation(line: 72, column: 10, scope: !84)
!84 = distinct !DILexicalBlock(scope: !66, file: !3, line: 72, column: 3)
!85 = !DILocation(line: 72, column: 30, scope: !86)
!86 = distinct !DILexicalBlock(scope: !84, file: !3, line: 72, column: 3)
!87 = !DILocation(line: 72, column: 29, scope: !86)
!88 = !DILocation(line: 72, column: 3, scope: !84)
!89 = !DILocation(line: 73, column: 22, scope: !86)
!90 = !DILocation(line: 73, column: 5, scope: !86)
!91 = !DILocation(line: 72, column: 51, scope: !86)
!92 = distinct !{!92, !88, !93, !94, !95}
!93 = !DILocation(line: 73, column: 46, scope: !84)
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !DILocation(line: 74, column: 1, scope: !66)
!97 = distinct !DISubprogram(name: "NoSegments", scope: !3, file: !3, line: 77, type: !98, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !100)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !33}
!100 = !{!101, !102}
!101 = !DILocalVariable(name: "M", arg: 1, scope: !97, file: !3, line: 77, type: !33)
!102 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 79, type: !6)
!103 = !DILocation(line: 77, column: 25, scope: !97)
!104 = !DILocation(line: 81, column: 35, scope: !97)
!105 = !DILocation(line: 81, column: 36, scope: !97)
!106 = !DILocation(line: 81, column: 24, scope: !97)
!107 = !DILocation(line: 81, column: 13, scope: !97)
!108 = !DILocation(line: 0, scope: !97)
!109 = !DILocation(line: 82, column: 14, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 82, column: 3)
!111 = distinct !DILexicalBlock(scope: !97, file: !3, line: 82, column: 3)
!112 = !DILocation(line: 82, column: 3, scope: !111)
!113 = !DILocation(line: 83, column: 20, scope: !110)
!114 = !DILocation(line: 83, column: 18, scope: !110)
!115 = distinct !{!115, !112, !116, !94, !95}
!116 = !DILocation(line: 83, column: 26, scope: !111)
!117 = !DILocation(line: 83, column: 5, scope: !110)
!118 = !DILocation(line: 82, column: 21, scope: !110)
!119 = !DILocation(line: 84, column: 1, scope: !97)
!120 = !DISubprogram(name: "MyMalloc", scope: !34, file: !34, line: 229, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !125)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !6, !6}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!125 = !{}
!126 = distinct !DISubprogram(name: "CreatePermutation", scope: !3, file: !3, line: 87, type: !127, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !6, !5, !6}
!129 = !{!130, !131, !132, !133}
!130 = !DILocalVariable(name: "n", arg: 1, scope: !126, file: !3, line: 87, type: !6)
!131 = !DILocalVariable(name: "PERM", arg: 2, scope: !126, file: !3, line: 87, type: !5)
!132 = !DILocalVariable(name: "permutation_method", arg: 3, scope: !126, file: !3, line: 87, type: !6)
!133 = !DILocalVariable(name: "j", scope: !126, file: !3, line: 89, type: !6)
!134 = !DILocation(line: 0, scope: !126)
!135 = !DILocation(line: 91, column: 3, scope: !126)
!136 = !DILocation(line: 91, column: 11, scope: !126)
!137 = !DILocation(line: 92, column: 26, scope: !138)
!138 = distinct !DILexicalBlock(scope: !126, file: !3, line: 92, column: 7)
!139 = !DILocation(line: 92, column: 7, scope: !126)
!140 = !DILocation(line: 94, column: 7, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 93, column: 5)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 93, column: 5)
!143 = distinct !DILexicalBlock(scope: !138, file: !3, line: 92, column: 38)
!144 = !DILocation(line: 94, column: 15, scope: !141)
!145 = !DILocation(line: 93, column: 21, scope: !141)
!146 = !DILocation(line: 93, column: 16, scope: !141)
!147 = !DILocation(line: 93, column: 5, scope: !142)
!148 = distinct !{!148, !147, !149, !94, !95}
!149 = !DILocation(line: 94, column: 17, scope: !142)
!150 = !DILocation(line: 96, column: 1, scope: !126)
