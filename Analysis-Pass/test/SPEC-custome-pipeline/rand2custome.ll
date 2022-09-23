; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/rand2.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/rand2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }

@seed3 = internal unnamed_addr global i32 -1, align 4, !dbg !0
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"argument to setseed must be negative!\0A\00", align 1
@seed2 = internal unnamed_addr global i32 0, align 4, !dbg !8
@iv = internal unnamed_addr global [32 x i32] zeroinitializer, align 16, !dbg !11
@iy = internal unnamed_addr global i32 0, align 4, !dbg !16

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local double @rand2() local_unnamed_addr #0 !dbg !23 {
entry:
  %call = tail call fastcc double @rand2a(), !dbg !28
  ret double %call, !dbg !29
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc double @rand2a() unnamed_addr #0 !dbg !30 {
entry:
  call void @llvm.dbg.value(metadata i32* @seed3, metadata !35, metadata !DIExpression()), !dbg !39
  %0 = load i32, i32* @seed3, align 4, !dbg !40, !tbaa !42
  %cmp = icmp slt i32 %0, 1, !dbg !46
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge, !dbg !47

entry.if.end15_crit_edge:                         ; preds = %entry
  %.pre = load i32, i32* @seed2, align 4, !dbg !48, !tbaa !42
  br label %if.end15, !dbg !47

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %0, 0, !dbg !49
  %sub = sub nsw i32 0, %0, !dbg !52
  %storemerge2 = select i1 %cmp1, i32 1, i32 %sub, !dbg !52
  call void @llvm.dbg.value(metadata i32 39, metadata !36, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i32 39, metadata !36, metadata !DIExpression()), !dbg !39
  br label %for.body, !dbg !53

for.body:                                         ; preds = %if.then, %for.inc
  %indvars.iv = phi i64 [ 39, %if.then ], [ %indvars.iv.next, %for.inc ]
  %spec.select67 = phi i32 [ %storemerge2, %if.then ], [ %spec.select, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !36, metadata !DIExpression()), !dbg !39
  %div = sdiv i32 %spec.select67, 53668, !dbg !55
  call void @llvm.dbg.value(metadata i32 %div, metadata !37, metadata !DIExpression()), !dbg !39
  %mul.neg = mul nsw i32 %div, -53668, !dbg !58
  %sub5 = add i32 %mul.neg, %spec.select67, !dbg !59
  %mul6 = mul nsw i32 %sub5, 40014, !dbg !60
  %mul7.neg = mul nsw i32 %div, -12211, !dbg !61
  %sub8 = add i32 %mul6, %mul7.neg, !dbg !62
  %cmp9 = icmp slt i32 %sub8, 0, !dbg !63
  %add = add nsw i32 %sub8, 2147483563
  %spec.select = select i1 %cmp9, i32 %add, i32 %sub8, !dbg !65
  %cmp12 = icmp ult i64 %indvars.iv, 32, !dbg !66
  br i1 %cmp12, label %if.then13, label %for.inc, !dbg !68

if.then13:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %indvars.iv, !dbg !69
  store i32 %spec.select, i32* %arrayidx, align 4, !dbg !70, !tbaa !42
  br label %for.inc, !dbg !69

for.inc:                                          ; preds = %for.body, %if.then13
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !71
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !36, metadata !DIExpression()), !dbg !39
  %cmp4.not = icmp eq i64 %indvars.iv, 0, !dbg !72
  br i1 %cmp4.not, label %if.end15, label %for.body, !dbg !53, !llvm.loop !73

if.end15:                                         ; preds = %for.inc, %entry.if.end15_crit_edge
  %.in = phi i32* [ @iy, %entry.if.end15_crit_edge ], [ getelementptr inbounds ([32 x i32], [32 x i32]* @iv, i64 0, i64 0), %for.inc ]
  %1 = phi i32 [ %.pre, %entry.if.end15_crit_edge ], [ %storemerge2, %for.inc ], !dbg !48
  %2 = phi i32 [ %0, %entry.if.end15_crit_edge ], [ %spec.select, %for.inc ], !dbg !77
  %3 = load i32, i32* %.in, align 4, !dbg !78, !tbaa !42
  %div16 = sdiv i32 %2, 53668, !dbg !79
  call void @llvm.dbg.value(metadata i32 %div16, metadata !37, metadata !DIExpression()), !dbg !39
  %mul17.neg = mul nsw i32 %div16, -53668, !dbg !80
  %sub18 = add nsw i32 %mul17.neg, %2, !dbg !81
  %mul19 = mul nsw i32 %sub18, 40014, !dbg !82
  %mul20.neg = mul nsw i32 %div16, -12211, !dbg !83
  %sub21 = add i32 %mul19, %mul20.neg, !dbg !84
  %cmp22 = icmp slt i32 %sub21, 0, !dbg !85
  %add24 = add nsw i32 %sub21, 2147483563
  %spec.select4 = select i1 %cmp22, i32 %add24, i32 %sub21, !dbg !87
  store i32 %spec.select4, i32* @seed3, align 4, !dbg !39, !tbaa !42
  %div26 = sdiv i32 %1, 52774, !dbg !88
  call void @llvm.dbg.value(metadata i32 %div26, metadata !37, metadata !DIExpression()), !dbg !39
  %mul27.neg = mul nsw i32 %div26, -52774, !dbg !89
  %sub28 = add i32 %mul27.neg, %1, !dbg !90
  %mul29 = mul nsw i32 %sub28, 40692, !dbg !91
  %mul30.neg = mul nsw i32 %div26, -3791, !dbg !92
  %sub31 = add i32 %mul29, %mul30.neg, !dbg !93
  %cmp32 = icmp slt i32 %sub31, 0, !dbg !94
  %add34 = add nsw i32 %sub31, 2147483399, !dbg !96
  %storemerge = select i1 %cmp32, i32 %add34, i32 %sub31, !dbg !96
  store i32 %storemerge, i32* @seed2, align 4, !dbg !39, !tbaa !42
  %div36 = sdiv i32 %3, 67108862, !dbg !97
  call void @llvm.dbg.value(metadata i32 %div36, metadata !36, metadata !DIExpression()), !dbg !39
  %idxprom37 = sext i32 %div36 to i64, !dbg !98
  %arrayidx38 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %idxprom37, !dbg !98
  %4 = load i32, i32* %arrayidx38, align 4, !dbg !98, !tbaa !42
  %sub39 = sub nsw i32 %4, %storemerge, !dbg !99
  store i32 %sub39, i32* @iy, align 4, !dbg !100, !tbaa !42
  store i32 %spec.select4, i32* %arrayidx38, align 4, !dbg !101, !tbaa !42
  %cmp42 = icmp slt i32 %sub39, 1, !dbg !102
  br i1 %cmp42, label %if.then43, label %if.end45, !dbg !104

if.then43:                                        ; preds = %if.end15
  %add44 = add nsw i32 %sub39, 2147483562, !dbg !105
  store i32 %add44, i32* @iy, align 4, !dbg !105, !tbaa !42
  br label %if.end45, !dbg !106

if.end45:                                         ; preds = %if.then43, %if.end15
  %5 = phi i32 [ %add44, %if.then43 ], [ %sub39, %if.end15 ], !dbg !107
  %conv = sitofp i32 %5 to double, !dbg !107
  %mul46 = fmul double %conv, 0x3E0000000AA00007, !dbg !109
  call void @llvm.dbg.value(metadata double %mul46, metadata !38, metadata !DIExpression()), !dbg !39
  %cmp47 = fcmp ogt double %mul46, 0x3FEFFFFFFFFFFBC7, !dbg !110
  %.mul46 = select i1 %cmp47, double 0x3FEFFFFFFFFFFBC7, double %mul46, !dbg !111
  ret double %.mul46, !dbg !112
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @gauss(double* nocapture noundef readonly %mean, double* nocapture noundef readonly %sd) local_unnamed_addr #1 !dbg !113 {
entry:
  call void @llvm.dbg.value(metadata double* %mean, metadata !118, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata double* %sd, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata double* %mean, metadata !121, metadata !DIExpression()) #8, !dbg !133
  call void @llvm.dbg.value(metadata double* %sd, metadata !126, metadata !DIExpression()) #8, !dbg !133
  call void @llvm.dbg.value(metadata i32* @seed3, metadata !127, metadata !DIExpression()) #8, !dbg !133
  br label %do.body.i, !dbg !135

do.body.i:                                        ; preds = %do.body.i, %entry
  %call.i = tail call fastcc double @rand2a() #8, !dbg !136
  %0 = tail call double @llvm.fmuladd.f64(double %call.i, double 2.000000e+00, double -1.000000e+00) #8, !dbg !138
  call void @llvm.dbg.value(metadata double %0, metadata !131, metadata !DIExpression()) #8, !dbg !133
  %call1.i = tail call fastcc double @rand2a() #8, !dbg !139
  %1 = tail call double @llvm.fmuladd.f64(double %call1.i, double 2.000000e+00, double -1.000000e+00) #8, !dbg !140
  call void @llvm.dbg.value(metadata double %1, metadata !132, metadata !DIExpression()) #8, !dbg !133
  %mul2.i = fmul double %1, %1, !dbg !141
  %2 = tail call double @llvm.fmuladd.f64(double %0, double %0, double %mul2.i) #8, !dbg !142
  call void @llvm.dbg.value(metadata double %2, metadata !130, metadata !DIExpression()) #8, !dbg !133
  %cmp.i = fcmp oge double %2, 1.000000e+00, !dbg !143
  %cmp3.i = fcmp oeq double %2, 0.000000e+00, !dbg !144
  %3 = or i1 %cmp.i, %cmp3.i, !dbg !144
  br i1 %3, label %do.body.i, label %gaussa.exit, !dbg !145, !llvm.loop !146

gaussa.exit:                                      ; preds = %do.body.i
  %call4.i = tail call double @log(double noundef %2) #8, !dbg !148
  %mul.i = fmul double %call4.i, -2.000000e+00, !dbg !149
  %div.i = fdiv double %mul.i, %2, !dbg !150
  %call5.i = tail call double @sqrt(double noundef %div.i) #8, !dbg !151
  call void @llvm.dbg.value(metadata double %call5.i, metadata !128, metadata !DIExpression()) #8, !dbg !133
  %mul6.i = fmul double %0, %call5.i, !dbg !152
  call void @llvm.dbg.value(metadata double %mul6.i, metadata !129, metadata !DIExpression()) #8, !dbg !133
  %4 = load double, double* %sd, align 8, !dbg !153, !tbaa !154
  %5 = load double, double* %mean, align 8, !dbg !156, !tbaa !154
  %6 = tail call double @llvm.fmuladd.f64(double %4, double %mul6.i, double %5) #8, !dbg !157
  ret double %6, !dbg !158
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @setseed(i32* nocapture noundef readonly %seed4) local_unnamed_addr #1 !dbg !159 {
entry:
  call void @llvm.dbg.value(metadata i32* %seed4, metadata !163, metadata !DIExpression()), !dbg !164
  %0 = load i32, i32* %seed4, align 4, !dbg !165, !tbaa !42
  %cmp = icmp sgt i32 %0, -1, !dbg !167
  br i1 %cmp, label %if.then, label %if.else, !dbg !168

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !169, !tbaa !171
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %1) #9, !dbg !173
  br label %return, !dbg !174

if.else:                                          ; preds = %entry
  store i32 %0, i32* @seed3, align 4, !dbg !175, !tbaa !42
  br label %return, !dbg !177

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.else ], !dbg !178
  ret i32 %retval.0, !dbg !179
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @rseed() local_unnamed_addr #1 !dbg !180 {
entry:
  %tv = alloca %struct.timeval, align 8
  %0 = bitcast %struct.timeval* %tv to i8*, !dbg !194
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !194
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !184, metadata !DIExpression()), !dbg !195
  %call = call i32 @gettimeofday(%struct.timeval* noundef nonnull %tv, i8* noundef null) #8, !dbg !196
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0, !dbg !197
  %1 = load i64, i64* %tv_sec, align 8, !dbg !197, !tbaa !198
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1, !dbg !201
  %2 = load i64, i64* %tv_usec, align 8, !dbg !201, !tbaa !202
  %xor = xor i64 %2, %1, !dbg !203
  %conv = trunc i64 %xor to i32, !dbg !204
  %sub = sub nsw i32 0, %conv, !dbg !205
  store i32 %sub, i32* @seed3, align 4, !dbg !206, !tbaa !42
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !207
  ret i32 %sub, !dbg !208
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nounwind
declare !dbg !209 dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @log(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #7

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "seed3", scope: !2, file: !10, line: 73, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/rand2.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "54fc6262d3a3873ac85d6c555fd34801")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!8, !11, !16, !0}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "seed2", scope: !2, file: !10, line: 72, type: !6, isLocal: true, isDefinition: true)
!10 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/rand2.c", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "54fc6262d3a3873ac85d6c555fd34801")
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "iv", scope: !2, file: !10, line: 75, type: !13, isLocal: true, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 32)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "iy", scope: !2, file: !10, line: 74, type: !6, isLocal: true, isDefinition: true)
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!23 = distinct !DISubprogram(name: "rand2", scope: !10, file: !10, line: 169, type: !24, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !27)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!27 = !{}
!28 = !DILocation(line: 172, column: 9, scope: !23)
!29 = !DILocation(line: 172, column: 2, scope: !23)
!30 = distinct !DISubprogram(name: "rand2a", scope: !10, file: !10, line: 99, type: !31, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !34)
!31 = !DISubroutineType(types: !32)
!32 = !{!26, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!34 = !{!35, !36, !37, !38}
!35 = !DILocalVariable(name: "seed", arg: 1, scope: !30, file: !10, line: 99, type: !33)
!36 = !DILocalVariable(name: "j", scope: !30, file: !10, line: 101, type: !6)
!37 = !DILocalVariable(name: "k", scope: !30, file: !10, line: 101, type: !6)
!38 = !DILocalVariable(name: "temp", scope: !30, file: !10, line: 102, type: !26)
!39 = !DILocation(line: 0, scope: !30)
!40 = !DILocation(line: 104, column: 6, scope: !41)
!41 = distinct !DILexicalBlock(scope: !30, file: !10, line: 104, column: 6)
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 104, column: 12, scope: !41)
!47 = !DILocation(line: 104, column: 6, scope: !30)
!48 = !DILocation(line: 124, column: 6, scope: !30)
!49 = !DILocation(line: 105, column: 14, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !10, line: 105, column: 7)
!51 = distinct !DILexicalBlock(scope: !41, file: !10, line: 104, column: 18)
!52 = !DILocation(line: 105, column: 7, scope: !51)
!53 = !DILocation(line: 110, column: 3, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !10, line: 110, column: 3)
!55 = !DILocation(line: 111, column: 14, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !10, line: 110, column: 35)
!57 = distinct !DILexicalBlock(scope: !54, file: !10, line: 110, column: 3)
!58 = !DILocation(line: 112, column: 30, scope: !56)
!59 = !DILocation(line: 112, column: 26, scope: !56)
!60 = !DILocation(line: 112, column: 16, scope: !56)
!61 = !DILocation(line: 112, column: 42, scope: !56)
!62 = !DILocation(line: 112, column: 38, scope: !56)
!63 = !DILocation(line: 113, column: 14, scope: !64)
!64 = distinct !DILexicalBlock(scope: !56, file: !10, line: 113, column: 8)
!65 = !DILocation(line: 113, column: 8, scope: !56)
!66 = !DILocation(line: 115, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !56, file: !10, line: 115, column: 8)
!68 = !DILocation(line: 115, column: 8, scope: !56)
!69 = !DILocation(line: 116, column: 5, scope: !67)
!70 = !DILocation(line: 116, column: 13, scope: !67)
!71 = !DILocation(line: 110, column: 31, scope: !57)
!72 = !DILocation(line: 110, column: 24, scope: !57)
!73 = distinct !{!73, !53, !74, !75, !76}
!74 = !DILocation(line: 117, column: 3, scope: !54)
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !DILocation(line: 120, column: 6, scope: !30)
!78 = !DILocation(line: 128, column: 6, scope: !30)
!79 = !DILocation(line: 120, column: 12, scope: !30)
!80 = !DILocation(line: 121, column: 28, scope: !30)
!81 = !DILocation(line: 121, column: 24, scope: !30)
!82 = !DILocation(line: 121, column: 14, scope: !30)
!83 = !DILocation(line: 121, column: 40, scope: !30)
!84 = !DILocation(line: 121, column: 36, scope: !30)
!85 = !DILocation(line: 122, column: 12, scope: !86)
!86 = distinct !DILexicalBlock(scope: !30, file: !10, line: 122, column: 6)
!87 = !DILocation(line: 122, column: 6, scope: !30)
!88 = !DILocation(line: 124, column: 12, scope: !30)
!89 = !DILocation(line: 125, column: 28, scope: !30)
!90 = !DILocation(line: 125, column: 24, scope: !30)
!91 = !DILocation(line: 125, column: 14, scope: !30)
!92 = !DILocation(line: 125, column: 40, scope: !30)
!93 = !DILocation(line: 125, column: 36, scope: !30)
!94 = !DILocation(line: 126, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !30, file: !10, line: 126, column: 6)
!96 = !DILocation(line: 126, column: 6, scope: !30)
!97 = !DILocation(line: 128, column: 9, scope: !30)
!98 = !DILocation(line: 129, column: 7, scope: !30)
!99 = !DILocation(line: 129, column: 15, scope: !30)
!100 = !DILocation(line: 129, column: 5, scope: !30)
!101 = !DILocation(line: 130, column: 10, scope: !30)
!102 = !DILocation(line: 131, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !30, file: !10, line: 131, column: 6)
!104 = !DILocation(line: 131, column: 6, scope: !30)
!105 = !DILocation(line: 132, column: 6, scope: !103)
!106 = !DILocation(line: 132, column: 3, scope: !103)
!107 = !DILocation(line: 133, column: 20, scope: !108)
!108 = distinct !DILexicalBlock(scope: !30, file: !10, line: 133, column: 6)
!109 = !DILocation(line: 133, column: 18, scope: !108)
!110 = !DILocation(line: 133, column: 25, scope: !108)
!111 = !DILocation(line: 0, scope: !108)
!112 = !DILocation(line: 137, column: 1, scope: !30)
!113 = distinct !DISubprogram(name: "gauss", scope: !10, file: !10, line: 175, type: !114, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !117)
!114 = !DISubroutineType(types: !115)
!115 = !{!26, !116, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!117 = !{!118, !119}
!118 = !DILocalVariable(name: "mean", arg: 1, scope: !113, file: !10, line: 175, type: !116)
!119 = !DILocalVariable(name: "sd", arg: 2, scope: !113, file: !10, line: 175, type: !116)
!120 = !DILocation(line: 0, scope: !113)
!121 = !DILocalVariable(name: "mean", arg: 1, scope: !122, file: !10, line: 147, type: !116)
!122 = distinct !DISubprogram(name: "gaussa", scope: !10, file: !10, line: 147, type: !123, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!26, !116, !116, !33}
!125 = !{!121, !126, !127, !128, !129, !130, !131, !132}
!126 = !DILocalVariable(name: "sd", arg: 2, scope: !122, file: !10, line: 147, type: !116)
!127 = !DILocalVariable(name: "seed", arg: 3, scope: !122, file: !10, line: 147, type: !33)
!128 = !DILocalVariable(name: "fac", scope: !122, file: !10, line: 149, type: !26)
!129 = !DILocalVariable(name: "gdev1", scope: !122, file: !10, line: 149, type: !26)
!130 = !DILocalVariable(name: "rsq", scope: !122, file: !10, line: 149, type: !26)
!131 = !DILocalVariable(name: "s1", scope: !122, file: !10, line: 149, type: !26)
!132 = !DILocalVariable(name: "s2", scope: !122, file: !10, line: 149, type: !26)
!133 = !DILocation(line: 0, scope: !122, inlinedAt: !134)
!134 = distinct !DILocation(line: 177, column: 9, scope: !113)
!135 = !DILocation(line: 151, column: 3, scope: !122, inlinedAt: !134)
!136 = !DILocation(line: 152, column: 12, scope: !137, inlinedAt: !134)
!137 = distinct !DILexicalBlock(scope: !122, file: !10, line: 151, column: 6)
!138 = !DILocation(line: 152, column: 25, scope: !137, inlinedAt: !134)
!139 = !DILocation(line: 153, column: 12, scope: !137, inlinedAt: !134)
!140 = !DILocation(line: 153, column: 25, scope: !137, inlinedAt: !134)
!141 = !DILocation(line: 154, column: 20, scope: !137, inlinedAt: !134)
!142 = !DILocation(line: 154, column: 16, scope: !137, inlinedAt: !134)
!143 = !DILocation(line: 155, column: 17, scope: !122, inlinedAt: !134)
!144 = !DILocation(line: 155, column: 23, scope: !122, inlinedAt: !134)
!145 = !DILocation(line: 155, column: 3, scope: !137, inlinedAt: !134)
!146 = distinct !{!146, !135, !147, !75, !76}
!147 = !DILocation(line: 155, column: 37, scope: !122, inlinedAt: !134)
!148 = !DILocation(line: 156, column: 18, scope: !122, inlinedAt: !134)
!149 = !DILocation(line: 156, column: 17, scope: !122, inlinedAt: !134)
!150 = !DILocation(line: 156, column: 26, scope: !122, inlinedAt: !134)
!151 = !DILocation(line: 156, column: 9, scope: !122, inlinedAt: !134)
!152 = !DILocation(line: 157, column: 13, scope: !122, inlinedAt: !134)
!153 = !DILocation(line: 159, column: 11, scope: !122, inlinedAt: !134)
!154 = !{!155, !155, i64 0}
!155 = !{!"double", !44, i64 0}
!156 = !DILocation(line: 159, column: 23, scope: !122, inlinedAt: !134)
!157 = !DILocation(line: 159, column: 21, scope: !122, inlinedAt: !134)
!158 = !DILocation(line: 177, column: 2, scope: !113)
!159 = distinct !DISubprogram(name: "setseed", scope: !10, file: !10, line: 184, type: !160, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{!6, !33}
!162 = !{!163}
!163 = !DILocalVariable(name: "seed4", arg: 1, scope: !159, file: !10, line: 184, type: !33)
!164 = !DILocation(line: 0, scope: !159)
!165 = !DILocation(line: 186, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !159, file: !10, line: 186, column: 6)
!167 = !DILocation(line: 186, column: 13, scope: !166)
!168 = !DILocation(line: 186, column: 6, scope: !159)
!169 = !DILocation(line: 187, column: 12, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !10, line: 186, column: 19)
!171 = !{!172, !172, i64 0}
!172 = !{!"any pointer", !44, i64 0}
!173 = !DILocation(line: 187, column: 3, scope: !170)
!174 = !DILocation(line: 188, column: 3, scope: !170)
!175 = !DILocation(line: 190, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !166, file: !10, line: 189, column: 9)
!177 = !DILocation(line: 191, column: 3, scope: !176)
!178 = !DILocation(line: 0, scope: !166)
!179 = !DILocation(line: 193, column: 1, scope: !159)
!180 = distinct !DISubprogram(name: "rseed", scope: !10, file: !10, line: 200, type: !181, scopeLine: 201, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !183)
!181 = !DISubroutineType(types: !182)
!182 = !{!6}
!183 = !{!184}
!184 = !DILocalVariable(name: "tv", scope: !180, file: !10, line: 202, type: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !186, line: 8, size: 128, elements: !187)
!186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!187 = !{!188, !192}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !185, file: !186, line: 10, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !190, line: 160, baseType: !191)
!190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!191 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !185, file: !186, line: 11, baseType: !193, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !190, line: 162, baseType: !191)
!194 = !DILocation(line: 202, column: 2, scope: !180)
!195 = !DILocation(line: 202, column: 17, scope: !180)
!196 = !DILocation(line: 203, column: 2, scope: !180)
!197 = !DILocation(line: 204, column: 21, scope: !180)
!198 = !{!199, !200, i64 0}
!199 = !{!"timeval", !200, i64 0, !200, i64 8}
!200 = !{!"long", !44, i64 0}
!201 = !DILocation(line: 204, column: 33, scope: !180)
!202 = !{!199, !200, i64 8}
!203 = !DILocation(line: 204, column: 28, scope: !180)
!204 = !DILocation(line: 204, column: 12, scope: !180)
!205 = !DILocation(line: 204, column: 10, scope: !180)
!206 = !DILocation(line: 204, column: 8, scope: !180)
!207 = !DILocation(line: 206, column: 1, scope: !180)
!208 = !DILocation(line: 205, column: 2, scope: !180)
!209 = !DISubprogram(name: "gettimeofday", scope: !210, file: !210, line: 66, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !27)
!210 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!211 = !DISubroutineType(types: !212)
!212 = !{!6, !213, !215}
!213 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
