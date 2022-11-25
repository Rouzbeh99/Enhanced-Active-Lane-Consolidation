; ModuleID = 'tsvc-functions.c'
source_filename = "tsvc-functions.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.args_t = type { %struct.timeval, %struct.timeval, ptr }
%struct.timeval = type { i64, i64 }

@__func__.s253 = private unnamed_addr constant [5 x i8] c"s253\00", align 1
@a = dso_local global [8192 x i32] zeroinitializer, align 64, !dbg !0
@b = dso_local global [8192 x i32] zeroinitializer, align 64, !dbg !40
@d = dso_local global [8192 x i32] zeroinitializer, align 64, !dbg !44
@c = dso_local global [8192 x i32] zeroinitializer, align 64, !dbg !42
@e = dso_local global [8192 x i32] zeroinitializer, align 64, !dbg !46
@aa = dso_local global [256 x [256 x i32]] zeroinitializer, align 64, !dbg !48
@bb = dso_local global [256 x [256 x i32]] zeroinitializer, align 64, !dbg !53
@cc = dso_local global [256 x [256 x i32]] zeroinitializer, align 64, !dbg !55
@.str = private unnamed_addr constant [11 x i8] c"%10.3f\09%f\0A\00", align 1
@flat_2d_array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 64, !dbg !30
@x = dso_local local_unnamed_addr global [8192 x i32] zeroinitializer, align 64, !dbg !35
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 64, !dbg !57
@indx = dso_local local_unnamed_addr global [8192 x i32] zeroinitializer, align 64, !dbg !59
@xx = dso_local local_unnamed_addr global ptr null, align 8, !dbg !62
@yy = dso_local local_unnamed_addr global ptr null, align 8, !dbg !66
@str = private unnamed_addr constant [26 x i8] c"Loop \09Time(sec) \09Checksum\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s253(ptr nocapture noundef %func_args) #0 !dbg !80 {
entry:
  call void @llvm.dbg.value(metadata ptr %func_args, metadata !84, metadata !DIExpression()), !dbg !92
  %call = tail call i32 @initialise_arrays(ptr noundef nonnull @__func__.s253) #8, !dbg !93
  %call1 = tail call i32 @gettimeofday(ptr noundef %func_args, ptr noundef null) #8, !dbg !94
  tail call void @m5_reset_stats(i64 noundef 0, i64 noundef 0) #8, !dbg !95
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()), !dbg !96
  br label %for.cond2.preheader, !dbg !97

for.cond2.preheader:                              ; preds = %entry, %for.cond.cleanup4
  %nl.038 = phi i32 [ 0, %entry ], [ %inc21, %for.cond.cleanup4 ]
  call void @llvm.dbg.value(metadata i32 %nl.038, metadata !86, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i32 0, metadata !88, metadata !DIExpression()), !dbg !98
  br label %for.body5, !dbg !99

for.cond.cleanup:                                 ; preds = %for.cond.cleanup4
  tail call void @m5_dump_stats(i64 noundef 0, i64 noundef 0) #8, !dbg !100
  %t2 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, !dbg !101
  %call23 = tail call i32 @gettimeofday(ptr noundef nonnull %t2, ptr noundef null) #8, !dbg !102
  %call24 = tail call i32 @calc_checksum(ptr noundef nonnull @__func__.s253) #8, !dbg !103
  ret i32 %call24, !dbg !104

for.cond.cleanup4:                                ; preds = %for.inc
  %call19 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, i32 noundef 0) #8, !dbg !105
  %inc21 = add nuw nsw i32 %nl.038, 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !86, metadata !DIExpression()), !dbg !96
  %exitcond40.not = icmp eq i32 %inc21, 10, !dbg !107
  br i1 %exitcond40.not, label %for.cond.cleanup, label %for.cond2.preheader, !dbg !97, !llvm.loop !108

for.body5:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !88, metadata !DIExpression()), !dbg !98
  %arrayidx = getelementptr inbounds [8192 x i32], ptr @a, i64 0, i64 %indvars.iv, !dbg !112
  %0 = load i32, ptr %arrayidx, align 4, !dbg !112, !tbaa !116
  %arrayidx7 = getelementptr inbounds [8192 x i32], ptr @b, i64 0, i64 %indvars.iv, !dbg !120
  %1 = load i32, ptr %arrayidx7, align 4, !dbg !120, !tbaa !116
  %cmp8 = icmp sgt i32 %0, %1, !dbg !121
  br i1 %cmp8, label %if.then, label %for.inc, !dbg !122

if.then:                                          ; preds = %for.body5
  %arrayidx14 = getelementptr inbounds [8192 x i32], ptr @d, i64 0, i64 %indvars.iv, !dbg !123
  %2 = load i32, ptr %arrayidx14, align 4, !dbg !123, !tbaa !116
  %mul = mul nsw i32 %2, %1, !dbg !125
  %sub = sub nsw i32 %0, %mul, !dbg !126
  call void @llvm.dbg.value(metadata i32 %sub, metadata !85, metadata !DIExpression()), !dbg !92
  %arrayidx16 = getelementptr inbounds [8192 x i32], ptr @c, i64 0, i64 %indvars.iv, !dbg !127
  %3 = load i32, ptr %arrayidx16, align 4, !dbg !128, !tbaa !116
  %add = add nsw i32 %sub, %3, !dbg !128
  store i32 %add, ptr %arrayidx16, align 4, !dbg !128, !tbaa !116
  store i32 %sub, ptr %arrayidx, align 4, !dbg !129, !tbaa !116
  br label %for.inc, !dbg !130

for.inc:                                          ; preds = %for.body5, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !131
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !88, metadata !DIExpression()), !dbg !98
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !132
  br i1 %exitcond.not, label %for.cond.cleanup4, label %for.body5, !dbg !99, !llvm.loop !133
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !135 i32 @initialise_arrays(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !142 noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare !dbg !148 void @m5_reset_stats(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare !dbg !156 i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !162 void @m5_dump_stats(i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !163 i32 @calc_checksum(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @time_function(ptr nocapture noundef readonly %vector_func, ptr noundef %arg_info) local_unnamed_addr #0 !dbg !166 {
entry:
  %func_args = alloca %struct.args_t, align 8
  call void @llvm.dbg.value(metadata ptr %vector_func, metadata !170, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata ptr %arg_info, metadata !171, metadata !DIExpression()), !dbg !178
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %func_args) #8, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %func_args, metadata !172, metadata !DIExpression()), !dbg !180
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %func_args, i8 0, i64 32, i1 false), !dbg !180
  %arg_info1 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 2, !dbg !181
  store ptr %arg_info, ptr %arg_info1, align 8, !dbg !181, !tbaa !182
  %call = call i32 %vector_func(ptr noundef nonnull %func_args) #8, !dbg !187
  %conv = sitofp i32 %call to double, !dbg !187
  call void @llvm.dbg.value(metadata double %conv, metadata !173, metadata !DIExpression()), !dbg !178
  %0 = load i64, ptr %func_args, align 8, !dbg !188, !tbaa !189
  %conv2 = sitofp i64 %0 to double, !dbg !190
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %func_args, i64 0, i32 1, !dbg !191
  %1 = load i64, ptr %tv_usec, align 8, !dbg !191, !tbaa !192
  %conv4 = sitofp i64 %1 to double, !dbg !193
  %div = fdiv double %conv4, 1.000000e+06, !dbg !194
  %add = fadd double %div, %conv2, !dbg !195
  call void @llvm.dbg.value(metadata double %add, metadata !175, metadata !DIExpression()), !dbg !178
  %t2 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, !dbg !196
  %2 = load i64, ptr %t2, align 8, !dbg !197, !tbaa !198
  %conv6 = sitofp i64 %2 to double, !dbg !199
  %tv_usec8 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, i32 1, !dbg !200
  %3 = load i64, ptr %tv_usec8, align 8, !dbg !200, !tbaa !201
  %conv9 = sitofp i64 %3 to double, !dbg !202
  %div10 = fdiv double %conv9, 1.000000e+06, !dbg !203
  %add11 = fadd double %div10, %conv6, !dbg !204
  call void @llvm.dbg.value(metadata double %add11, metadata !176, metadata !DIExpression()), !dbg !178
  %sub = fsub double %add11, %add, !dbg !205
  call void @llvm.dbg.value(metadata double %sub, metadata !177, metadata !DIExpression()), !dbg !178
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %sub, double noundef %conv), !dbg !206
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %func_args) #8, !dbg !207
  ret void, !dbg !207
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 !dbg !208 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !214, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata ptr %argv, metadata !215, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 1, metadata !216, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 1, metadata !217, metadata !DIExpression()), !dbg !218
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !219
  tail call void @time_function(ptr noundef nonnull @s253, ptr noundef null), !dbg !220
  ret i32 0, !dbg !221
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 15, type: !37, isLocal: false, isDefinition: true, align: 512)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "tsvc-functions.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "3df7e9218db45fdee5dbb73cc61dd413")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "test_function_t", file: !3, line: 61, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_t", file: !11, line: 23, baseType: !12)
!11 = !DIFile(filename: "./common.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "5ffc4849a08971f3312fdcdd05f02549")
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_t", file: !11, line: 12, size: 320, elements: !15)
!15 = !{!16, !26, !27}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "t1", scope: !14, file: !11, line: 13, baseType: !17, size: 128)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !18, line: 8, size: 128, elements: !19)
!18 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!19 = !{!20, !24}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !17, file: !18, line: 10, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !22, line: 160, baseType: !23)
!22 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!23 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !17, file: !18, line: 11, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !22, line: 162, baseType: !23)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "t2", scope: !14, file: !11, line: 14, baseType: !17, size: 128, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "arg_info", scope: !14, file: !11, line: 15, baseType: !28, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!29 = !{!30, !35, !0, !40, !42, !44, !46, !48, !53, !55, !57, !59, !62, !66}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "flat_2d_array", scope: !2, file: !3, line: 11, type: !32, isLocal: false, isDefinition: true, align: 512)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 65536)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 13, type: !37, isLocal: false, isDefinition: true, align: 512)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 262144, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 8192)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 15, type: !37, isLocal: false, isDefinition: true, align: 512)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 15, type: !37, isLocal: false, isDefinition: true, align: 512)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !3, line: 15, type: !37, isLocal: false, isDefinition: true, align: 512)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !3, line: 15, type: !37, isLocal: false, isDefinition: true, align: 512)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !3, line: 16, type: !50, isLocal: false, isDefinition: true, align: 512)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !51)
!51 = !{!52, !52}
!52 = !DISubrange(count: 256)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !3, line: 16, type: !50, isLocal: false, isDefinition: true, align: 512)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !3, line: 16, type: !50, isLocal: false, isDefinition: true, align: 512)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "tt", scope: !2, file: !3, line: 16, type: !50, isLocal: false, isDefinition: true, align: 512)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "indx", scope: !2, file: !3, line: 18, type: !61, isLocal: false, isDefinition: true, align: 512)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 262144, elements: !38)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "xx", scope: !2, file: !3, line: 20, type: !64, isLocal: false, isDefinition: true)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !3, line: 21, type: !65, isLocal: false, isDefinition: true)
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"PIC Level", i32 2}
!76 = !{i32 7, !"PIE Level", i32 2}
!77 = !{i32 7, !"uwtable", i32 2}
!78 = !{i32 7, !"frame-pointer", i32 1}
!79 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!80 = distinct !DISubprogram(name: "s253", scope: !3, file: !3, line: 29, type: !81, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!12, !13}
!83 = !{!84, !85, !86, !88}
!84 = !DILocalVariable(name: "func_args", arg: 1, scope: !80, file: !3, line: 29, type: !13)
!85 = !DILocalVariable(name: "s", scope: !80, file: !3, line: 40, type: !12)
!86 = !DILocalVariable(name: "nl", scope: !87, file: !3, line: 42, type: !12)
!87 = distinct !DILexicalBlock(scope: !80, file: !3, line: 42, column: 5)
!88 = !DILocalVariable(name: "i", scope: !89, file: !3, line: 43, type: !12)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 43, column: 9)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 42, column: 45)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 42, column: 5)
!92 = !DILocation(line: 0, scope: !80)
!93 = !DILocation(line: 35, column: 5, scope: !80)
!94 = !DILocation(line: 36, column: 5, scope: !80)
!95 = !DILocation(line: 41, column: 5, scope: !80)
!96 = !DILocation(line: 0, scope: !87)
!97 = !DILocation(line: 42, column: 5, scope: !87)
!98 = !DILocation(line: 0, scope: !89)
!99 = !DILocation(line: 43, column: 9, scope: !89)
!100 = !DILocation(line: 52, column: 5, scope: !80)
!101 = !DILocation(line: 57, column: 30, scope: !80)
!102 = !DILocation(line: 57, column: 5, scope: !80)
!103 = !DILocation(line: 58, column: 12, scope: !80)
!104 = !DILocation(line: 58, column: 5, scope: !80)
!105 = !DILocation(line: 50, column: 9, scope: !90)
!106 = !DILocation(line: 42, column: 41, scope: !91)
!107 = !DILocation(line: 42, column: 25, scope: !91)
!108 = distinct !{!108, !97, !109, !110, !111}
!109 = !DILocation(line: 51, column: 5, scope: !87)
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!"llvm.loop.unroll.disable"}
!112 = !DILocation(line: 44, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !3, line: 44, column: 17)
!114 = distinct !DILexicalBlock(scope: !115, file: !3, line: 43, column: 42)
!115 = distinct !DILexicalBlock(scope: !89, file: !3, line: 43, column: 9)
!116 = !{!117, !117, i64 0}
!117 = !{!"int", !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C/C++ TBAA"}
!120 = !DILocation(line: 44, column: 24, scope: !113)
!121 = !DILocation(line: 44, column: 22, scope: !113)
!122 = !DILocation(line: 44, column: 17, scope: !114)
!123 = !DILocation(line: 45, column: 35, scope: !124)
!124 = distinct !DILexicalBlock(scope: !113, file: !3, line: 44, column: 30)
!125 = !DILocation(line: 45, column: 33, scope: !124)
!126 = !DILocation(line: 45, column: 26, scope: !124)
!127 = !DILocation(line: 46, column: 17, scope: !124)
!128 = !DILocation(line: 46, column: 22, scope: !124)
!129 = !DILocation(line: 47, column: 22, scope: !124)
!130 = !DILocation(line: 48, column: 13, scope: !124)
!131 = !DILocation(line: 43, column: 38, scope: !115)
!132 = !DILocation(line: 43, column: 27, scope: !115)
!133 = distinct !{!133, !99, !134, !110, !111}
!134 = !DILocation(line: 49, column: 9, scope: !89)
!135 = !DISubprogram(name: "initialise_arrays", scope: !11, file: !11, line: 31, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !141)
!136 = !DISubroutineType(types: !137)
!137 = !{!12, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !{}
!142 = !DISubprogram(name: "gettimeofday", scope: !143, file: !143, line: 66, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !141)
!143 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!144 = !DISubroutineType(types: !145)
!145 = !{!12, !146, !28}
!146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!148 = !DISubprogram(name: "m5_reset_stats", scope: !149, file: !149, line: 55, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !141)
!149 = !DIFile(filename: "GEM5/gem5-arm-sve/gem5/include/gem5/m5ops.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "0d6f1213d2a5fe07f4954aee626f0ea8")
!150 = !DISubroutineType(types: !151)
!151 = !{null, !152, !152}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !153, line: 27, baseType: !154)
!153 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !22, line: 45, baseType: !155)
!155 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!156 = !DISubprogram(name: "dummy", scope: !11, file: !11, line: 27, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !141)
!157 = !DISubroutineType(types: !158)
!158 = !{!12, !65, !65, !65, !65, !65, !159, !159, !159, !10}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !161)
!161 = !{!52}
!162 = !DISubprogram(name: "m5_dump_stats", scope: !149, file: !149, line: 56, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !141)
!163 = !DISubprogram(name: "calc_checksum", scope: !11, file: !11, line: 32, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !141)
!164 = !DISubroutineType(types: !165)
!165 = !{!10, !138}
!166 = distinct !DISubprogram(name: "time_function", scope: !3, file: !3, line: 63, type: !167, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !6, !5}
!169 = !{!170, !171, !172, !173, !175, !176, !177}
!170 = !DILocalVariable(name: "vector_func", arg: 1, scope: !166, file: !3, line: 63, type: !6)
!171 = !DILocalVariable(name: "arg_info", arg: 2, scope: !166, file: !3, line: 63, type: !5)
!172 = !DILocalVariable(name: "func_args", scope: !166, file: !3, line: 65, type: !14)
!173 = !DILocalVariable(name: "result", scope: !166, file: !3, line: 67, type: !174)
!174 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!175 = !DILocalVariable(name: "tic", scope: !166, file: !3, line: 69, type: !174)
!176 = !DILocalVariable(name: "toc", scope: !166, file: !3, line: 70, type: !174)
!177 = !DILocalVariable(name: "taken", scope: !166, file: !3, line: 72, type: !174)
!178 = !DILocation(line: 0, scope: !166)
!179 = !DILocation(line: 65, column: 5, scope: !166)
!180 = !DILocation(line: 65, column: 19, scope: !166)
!181 = !DILocation(line: 65, column: 31, scope: !166)
!182 = !{!183, !186, i64 32}
!183 = !{!"args_t", !184, i64 0, !184, i64 16, !186, i64 32}
!184 = !{!"timeval", !185, i64 0, !185, i64 8}
!185 = !{!"long", !118, i64 0}
!186 = !{!"any pointer", !118, i64 0}
!187 = !DILocation(line: 67, column: 21, scope: !166)
!188 = !DILocation(line: 69, column: 29, scope: !166)
!189 = !{!183, !185, i64 0}
!190 = !DILocation(line: 69, column: 16, scope: !166)
!191 = !DILocation(line: 69, column: 50, scope: !166)
!192 = !{!183, !185, i64 8}
!193 = !DILocation(line: 69, column: 37, scope: !166)
!194 = !DILocation(line: 69, column: 57, scope: !166)
!195 = !DILocation(line: 69, column: 35, scope: !166)
!196 = !DILocation(line: 70, column: 26, scope: !166)
!197 = !DILocation(line: 70, column: 29, scope: !166)
!198 = !{!183, !185, i64 16}
!199 = !DILocation(line: 70, column: 16, scope: !166)
!200 = !DILocation(line: 70, column: 50, scope: !166)
!201 = !{!183, !185, i64 24}
!202 = !DILocation(line: 70, column: 37, scope: !166)
!203 = !DILocation(line: 70, column: 57, scope: !166)
!204 = !DILocation(line: 70, column: 35, scope: !166)
!205 = !DILocation(line: 72, column: 23, scope: !166)
!206 = !DILocation(line: 74, column: 5, scope: !166)
!207 = !DILocation(line: 75, column: 1, scope: !166)
!208 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 78, type: !209, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!209 = !DISubroutineType(types: !210)
!210 = !{!12, !12, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!213 = !{!214, !215, !216, !217}
!214 = !DILocalVariable(name: "argc", arg: 1, scope: !208, file: !3, line: 78, type: !12)
!215 = !DILocalVariable(name: "argv", arg: 2, scope: !208, file: !3, line: 78, type: !211)
!216 = !DILocalVariable(name: "n1", scope: !208, file: !3, line: 79, type: !12)
!217 = !DILocalVariable(name: "n3", scope: !208, file: !3, line: 80, type: !12)
!218 = !DILocation(line: 0, scope: !208)
!219 = !DILocation(line: 81, column: 5, scope: !208)
!220 = !DILocation(line: 83, column: 5, scope: !208)
!221 = !DILocation(line: 84, column: 1, scope: !208)
