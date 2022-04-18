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
  %2 = phi i32 [ %0, %entry.if.end15_crit_edge ], [ %spec.select, %for.inc ], !dbg !76
  %3 = load i32, i32* %.in, align 4, !dbg !77, !tbaa !42
  %div16 = sdiv i32 %2, 53668, !dbg !78
  call void @llvm.dbg.value(metadata i32 %div16, metadata !37, metadata !DIExpression()), !dbg !39
  %mul17.neg = mul nsw i32 %div16, -53668, !dbg !79
  %sub18 = add nsw i32 %mul17.neg, %2, !dbg !80
  %mul19 = mul nsw i32 %sub18, 40014, !dbg !81
  %mul20.neg = mul nsw i32 %div16, -12211, !dbg !82
  %sub21 = add i32 %mul19, %mul20.neg, !dbg !83
  %cmp22 = icmp slt i32 %sub21, 0, !dbg !84
  %add24 = add nsw i32 %sub21, 2147483563
  %spec.select4 = select i1 %cmp22, i32 %add24, i32 %sub21, !dbg !86
  store i32 %spec.select4, i32* @seed3, align 4, !dbg !39, !tbaa !42
  %div26 = sdiv i32 %1, 52774, !dbg !87
  call void @llvm.dbg.value(metadata i32 %div26, metadata !37, metadata !DIExpression()), !dbg !39
  %mul27.neg = mul nsw i32 %div26, -52774, !dbg !88
  %sub28 = add i32 %mul27.neg, %1, !dbg !89
  %mul29 = mul nsw i32 %sub28, 40692, !dbg !90
  %mul30.neg = mul nsw i32 %div26, -3791, !dbg !91
  %sub31 = add i32 %mul29, %mul30.neg, !dbg !92
  %cmp32 = icmp slt i32 %sub31, 0, !dbg !93
  %add34 = add nsw i32 %sub31, 2147483399, !dbg !95
  %storemerge = select i1 %cmp32, i32 %add34, i32 %sub31, !dbg !95
  store i32 %storemerge, i32* @seed2, align 4, !dbg !39, !tbaa !42
  %div36 = sdiv i32 %3, 67108862, !dbg !96
  call void @llvm.dbg.value(metadata i32 %div36, metadata !36, metadata !DIExpression()), !dbg !39
  %idxprom37 = sext i32 %div36 to i64, !dbg !97
  %arrayidx38 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %idxprom37, !dbg !97
  %4 = load i32, i32* %arrayidx38, align 4, !dbg !97, !tbaa !42
  %sub39 = sub nsw i32 %4, %storemerge, !dbg !98
  store i32 %sub39, i32* @iy, align 4, !dbg !99, !tbaa !42
  store i32 %spec.select4, i32* %arrayidx38, align 4, !dbg !100, !tbaa !42
  %cmp42 = icmp slt i32 %sub39, 1, !dbg !101
  br i1 %cmp42, label %if.then43, label %if.end45, !dbg !103

if.then43:                                        ; preds = %if.end15
  %add44 = add nsw i32 %sub39, 2147483562, !dbg !104
  store i32 %add44, i32* @iy, align 4, !dbg !104, !tbaa !42
  br label %if.end45, !dbg !105

if.end45:                                         ; preds = %if.then43, %if.end15
  %5 = phi i32 [ %add44, %if.then43 ], [ %sub39, %if.end15 ], !dbg !106
  %conv = sitofp i32 %5 to double, !dbg !106
  %mul46 = fmul double %conv, 0x3E0000000AA00007, !dbg !108
  call void @llvm.dbg.value(metadata double %mul46, metadata !38, metadata !DIExpression()), !dbg !39
  %cmp47 = fcmp ogt double %mul46, 0x3FEFFFFFFFFFFBC7, !dbg !109
  %.mul46 = select i1 %cmp47, double 0x3FEFFFFFFFFFFBC7, double %mul46, !dbg !110
  ret double %.mul46, !dbg !111
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @gauss(double* nocapture noundef readonly %mean, double* nocapture noundef readonly %sd) local_unnamed_addr #1 !dbg !112 {
entry:
  call void @llvm.dbg.value(metadata double* %mean, metadata !117, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata double* %sd, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata double* %mean, metadata !120, metadata !DIExpression()) #8, !dbg !132
  call void @llvm.dbg.value(metadata double* %sd, metadata !125, metadata !DIExpression()) #8, !dbg !132
  call void @llvm.dbg.value(metadata i32* @seed3, metadata !126, metadata !DIExpression()) #8, !dbg !132
  br label %do.body.i, !dbg !134

do.body.i:                                        ; preds = %do.body.i, %entry
  %call.i = tail call fastcc double @rand2a() #8, !dbg !135
  %0 = tail call double @llvm.fmuladd.f64(double %call.i, double 2.000000e+00, double -1.000000e+00) #8, !dbg !137
  call void @llvm.dbg.value(metadata double %0, metadata !130, metadata !DIExpression()) #8, !dbg !132
  %call1.i = tail call fastcc double @rand2a() #8, !dbg !138
  %1 = tail call double @llvm.fmuladd.f64(double %call1.i, double 2.000000e+00, double -1.000000e+00) #8, !dbg !139
  call void @llvm.dbg.value(metadata double %1, metadata !131, metadata !DIExpression()) #8, !dbg !132
  %mul2.i = fmul double %1, %1, !dbg !140
  %2 = tail call double @llvm.fmuladd.f64(double %0, double %0, double %mul2.i) #8, !dbg !141
  call void @llvm.dbg.value(metadata double %2, metadata !129, metadata !DIExpression()) #8, !dbg !132
  %cmp.i = fcmp oge double %2, 1.000000e+00, !dbg !142
  %cmp3.i = fcmp oeq double %2, 0.000000e+00, !dbg !143
  %3 = or i1 %cmp.i, %cmp3.i, !dbg !143
  br i1 %3, label %do.body.i, label %gaussa.exit, !dbg !144, !llvm.loop !145

gaussa.exit:                                      ; preds = %do.body.i
  %call4.i = tail call double @log(double noundef %2) #8, !dbg !147
  %mul.i = fmul double %call4.i, -2.000000e+00, !dbg !148
  %div.i = fdiv double %mul.i, %2, !dbg !149
  %call5.i = tail call double @sqrt(double noundef %div.i) #8, !dbg !150
  call void @llvm.dbg.value(metadata double %call5.i, metadata !127, metadata !DIExpression()) #8, !dbg !132
  %mul6.i = fmul double %0, %call5.i, !dbg !151
  call void @llvm.dbg.value(metadata double %mul6.i, metadata !128, metadata !DIExpression()) #8, !dbg !132
  %4 = load double, double* %sd, align 8, !dbg !152, !tbaa !153
  %5 = load double, double* %mean, align 8, !dbg !155, !tbaa !153
  %6 = tail call double @llvm.fmuladd.f64(double %4, double %mul6.i, double %5) #8, !dbg !156
  ret double %6, !dbg !157
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @setseed(i32* nocapture noundef readonly %seed4) local_unnamed_addr #1 !dbg !158 {
entry:
  call void @llvm.dbg.value(metadata i32* %seed4, metadata !162, metadata !DIExpression()), !dbg !163
  %0 = load i32, i32* %seed4, align 4, !dbg !164, !tbaa !42
  %cmp = icmp sgt i32 %0, -1, !dbg !166
  br i1 %cmp, label %if.then, label %if.else, !dbg !167

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !168, !tbaa !170
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %1) #9, !dbg !172
  br label %return, !dbg !173

if.else:                                          ; preds = %entry
  store i32 %0, i32* @seed3, align 4, !dbg !174, !tbaa !42
  br label %return, !dbg !176

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.else ], !dbg !177
  ret i32 %retval.0, !dbg !178
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @rseed() local_unnamed_addr #1 !dbg !179 {
entry:
  %tv = alloca %struct.timeval, align 8
  %0 = bitcast %struct.timeval* %tv to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !193
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !183, metadata !DIExpression()), !dbg !194
  %call = call i32 @gettimeofday(%struct.timeval* noundef nonnull %tv, i8* noundef null) #8, !dbg !195
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0, !dbg !196
  %1 = load i64, i64* %tv_sec, align 8, !dbg !196, !tbaa !197
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1, !dbg !200
  %2 = load i64, i64* %tv_usec, align 8, !dbg !200, !tbaa !201
  %xor = xor i64 %2, %1, !dbg !202
  %conv = trunc i64 %xor to i32, !dbg !203
  %sub = sub nsw i32 0, %conv, !dbg !204
  store i32 %sub, i32* @seed3, align 4, !dbg !205, !tbaa !42
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !206
  ret i32 %sub, !dbg !207
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nounwind
declare !dbg !208 dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #4

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
!73 = distinct !{!73, !53, !74, !75}
!74 = !DILocation(line: 117, column: 3, scope: !54)
!75 = !{!"llvm.loop.mustprogress"}
!76 = !DILocation(line: 120, column: 6, scope: !30)
!77 = !DILocation(line: 128, column: 6, scope: !30)
!78 = !DILocation(line: 120, column: 12, scope: !30)
!79 = !DILocation(line: 121, column: 28, scope: !30)
!80 = !DILocation(line: 121, column: 24, scope: !30)
!81 = !DILocation(line: 121, column: 14, scope: !30)
!82 = !DILocation(line: 121, column: 40, scope: !30)
!83 = !DILocation(line: 121, column: 36, scope: !30)
!84 = !DILocation(line: 122, column: 12, scope: !85)
!85 = distinct !DILexicalBlock(scope: !30, file: !10, line: 122, column: 6)
!86 = !DILocation(line: 122, column: 6, scope: !30)
!87 = !DILocation(line: 124, column: 12, scope: !30)
!88 = !DILocation(line: 125, column: 28, scope: !30)
!89 = !DILocation(line: 125, column: 24, scope: !30)
!90 = !DILocation(line: 125, column: 14, scope: !30)
!91 = !DILocation(line: 125, column: 40, scope: !30)
!92 = !DILocation(line: 125, column: 36, scope: !30)
!93 = !DILocation(line: 126, column: 12, scope: !94)
!94 = distinct !DILexicalBlock(scope: !30, file: !10, line: 126, column: 6)
!95 = !DILocation(line: 126, column: 6, scope: !30)
!96 = !DILocation(line: 128, column: 9, scope: !30)
!97 = !DILocation(line: 129, column: 7, scope: !30)
!98 = !DILocation(line: 129, column: 15, scope: !30)
!99 = !DILocation(line: 129, column: 5, scope: !30)
!100 = !DILocation(line: 130, column: 10, scope: !30)
!101 = !DILocation(line: 131, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !30, file: !10, line: 131, column: 6)
!103 = !DILocation(line: 131, column: 6, scope: !30)
!104 = !DILocation(line: 132, column: 6, scope: !102)
!105 = !DILocation(line: 132, column: 3, scope: !102)
!106 = !DILocation(line: 133, column: 20, scope: !107)
!107 = distinct !DILexicalBlock(scope: !30, file: !10, line: 133, column: 6)
!108 = !DILocation(line: 133, column: 18, scope: !107)
!109 = !DILocation(line: 133, column: 25, scope: !107)
!110 = !DILocation(line: 0, scope: !107)
!111 = !DILocation(line: 137, column: 1, scope: !30)
!112 = distinct !DISubprogram(name: "gauss", scope: !10, file: !10, line: 175, type: !113, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!113 = !DISubroutineType(types: !114)
!114 = !{!26, !115, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!116 = !{!117, !118}
!117 = !DILocalVariable(name: "mean", arg: 1, scope: !112, file: !10, line: 175, type: !115)
!118 = !DILocalVariable(name: "sd", arg: 2, scope: !112, file: !10, line: 175, type: !115)
!119 = !DILocation(line: 0, scope: !112)
!120 = !DILocalVariable(name: "mean", arg: 1, scope: !121, file: !10, line: 147, type: !115)
!121 = distinct !DISubprogram(name: "gaussa", scope: !10, file: !10, line: 147, type: !122, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !124)
!122 = !DISubroutineType(types: !123)
!123 = !{!26, !115, !115, !33}
!124 = !{!120, !125, !126, !127, !128, !129, !130, !131}
!125 = !DILocalVariable(name: "sd", arg: 2, scope: !121, file: !10, line: 147, type: !115)
!126 = !DILocalVariable(name: "seed", arg: 3, scope: !121, file: !10, line: 147, type: !33)
!127 = !DILocalVariable(name: "fac", scope: !121, file: !10, line: 149, type: !26)
!128 = !DILocalVariable(name: "gdev1", scope: !121, file: !10, line: 149, type: !26)
!129 = !DILocalVariable(name: "rsq", scope: !121, file: !10, line: 149, type: !26)
!130 = !DILocalVariable(name: "s1", scope: !121, file: !10, line: 149, type: !26)
!131 = !DILocalVariable(name: "s2", scope: !121, file: !10, line: 149, type: !26)
!132 = !DILocation(line: 0, scope: !121, inlinedAt: !133)
!133 = distinct !DILocation(line: 177, column: 9, scope: !112)
!134 = !DILocation(line: 151, column: 3, scope: !121, inlinedAt: !133)
!135 = !DILocation(line: 152, column: 12, scope: !136, inlinedAt: !133)
!136 = distinct !DILexicalBlock(scope: !121, file: !10, line: 151, column: 6)
!137 = !DILocation(line: 152, column: 25, scope: !136, inlinedAt: !133)
!138 = !DILocation(line: 153, column: 12, scope: !136, inlinedAt: !133)
!139 = !DILocation(line: 153, column: 25, scope: !136, inlinedAt: !133)
!140 = !DILocation(line: 154, column: 20, scope: !136, inlinedAt: !133)
!141 = !DILocation(line: 154, column: 16, scope: !136, inlinedAt: !133)
!142 = !DILocation(line: 155, column: 17, scope: !121, inlinedAt: !133)
!143 = !DILocation(line: 155, column: 23, scope: !121, inlinedAt: !133)
!144 = !DILocation(line: 155, column: 3, scope: !136, inlinedAt: !133)
!145 = distinct !{!145, !134, !146, !75}
!146 = !DILocation(line: 155, column: 37, scope: !121, inlinedAt: !133)
!147 = !DILocation(line: 156, column: 18, scope: !121, inlinedAt: !133)
!148 = !DILocation(line: 156, column: 17, scope: !121, inlinedAt: !133)
!149 = !DILocation(line: 156, column: 26, scope: !121, inlinedAt: !133)
!150 = !DILocation(line: 156, column: 9, scope: !121, inlinedAt: !133)
!151 = !DILocation(line: 157, column: 13, scope: !121, inlinedAt: !133)
!152 = !DILocation(line: 159, column: 11, scope: !121, inlinedAt: !133)
!153 = !{!154, !154, i64 0}
!154 = !{!"double", !44, i64 0}
!155 = !DILocation(line: 159, column: 23, scope: !121, inlinedAt: !133)
!156 = !DILocation(line: 159, column: 21, scope: !121, inlinedAt: !133)
!157 = !DILocation(line: 177, column: 2, scope: !112)
!158 = distinct !DISubprogram(name: "setseed", scope: !10, file: !10, line: 184, type: !159, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{!6, !33}
!161 = !{!162}
!162 = !DILocalVariable(name: "seed4", arg: 1, scope: !158, file: !10, line: 184, type: !33)
!163 = !DILocation(line: 0, scope: !158)
!164 = !DILocation(line: 186, column: 6, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !10, line: 186, column: 6)
!166 = !DILocation(line: 186, column: 13, scope: !165)
!167 = !DILocation(line: 186, column: 6, scope: !158)
!168 = !DILocation(line: 187, column: 12, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !10, line: 186, column: 19)
!170 = !{!171, !171, i64 0}
!171 = !{!"any pointer", !44, i64 0}
!172 = !DILocation(line: 187, column: 3, scope: !169)
!173 = !DILocation(line: 188, column: 3, scope: !169)
!174 = !DILocation(line: 190, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !165, file: !10, line: 189, column: 9)
!176 = !DILocation(line: 191, column: 3, scope: !175)
!177 = !DILocation(line: 0, scope: !165)
!178 = !DILocation(line: 193, column: 1, scope: !158)
!179 = distinct !DISubprogram(name: "rseed", scope: !10, file: !10, line: 200, type: !180, scopeLine: 201, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{!6}
!182 = !{!183}
!183 = !DILocalVariable(name: "tv", scope: !179, file: !10, line: 202, type: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !185, line: 8, size: 128, elements: !186)
!185 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!186 = !{!187, !191}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !184, file: !185, line: 10, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !189, line: 160, baseType: !190)
!189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!190 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !184, file: !185, line: 11, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !189, line: 162, baseType: !190)
!193 = !DILocation(line: 202, column: 2, scope: !179)
!194 = !DILocation(line: 202, column: 17, scope: !179)
!195 = !DILocation(line: 203, column: 2, scope: !179)
!196 = !DILocation(line: 204, column: 21, scope: !179)
!197 = !{!198, !199, i64 0}
!198 = !{!"timeval", !199, i64 0, !199, i64 8}
!199 = !{!"long", !44, i64 0}
!200 = !DILocation(line: 204, column: 33, scope: !179)
!201 = !{!198, !199, i64 8}
!202 = !DILocation(line: 204, column: 28, scope: !179)
!203 = !DILocation(line: 204, column: 12, scope: !179)
!204 = !DILocation(line: 204, column: 10, scope: !179)
!205 = !DILocation(line: 204, column: 8, scope: !179)
!206 = !DILocation(line: 206, column: 1, scope: !179)
!207 = !DILocation(line: 205, column: 2, scope: !179)
!208 = !DISubprogram(name: "gettimeofday", scope: !209, file: !209, line: 66, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !27)
!209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!210 = !DISubroutineType(types: !211)
!211 = !{!6, !212, !214}
!212 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
