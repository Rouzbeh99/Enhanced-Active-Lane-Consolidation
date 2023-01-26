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
  tail call void asm sideeffect ".inst 0x2520e020", ""() #8, !dbg !95, !srcloc !97
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #8, !dbg !98, !srcloc !100
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()), !dbg !101
  br label %for.cond2.preheader, !dbg !102

for.cond2.preheader:                              ; preds = %entry, %for.cond.cleanup4
  %nl.038 = phi i32 [ 0, %entry ], [ %inc21, %for.cond.cleanup4 ]
  call void @llvm.dbg.value(metadata i32 %nl.038, metadata !86, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32 0, metadata !88, metadata !DIExpression()), !dbg !103
  br label %for.body5, !dbg !104

for.cond.cleanup:                                 ; preds = %for.cond.cleanup4
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #8, !dbg !105, !srcloc !107
  tail call void asm sideeffect ".inst 0x2520e040", ""() #8, !dbg !108, !srcloc !110
  %t2 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, !dbg !111
  %call23 = tail call i32 @gettimeofday(ptr noundef nonnull %t2, ptr noundef null) #8, !dbg !112
  %call24 = tail call i32 @calc_checksum(ptr noundef nonnull @__func__.s253) #8, !dbg !113
  ret i32 %call24, !dbg !114

for.cond.cleanup4:                                ; preds = %for.inc
  %call19 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, i32 noundef 0) #8, !dbg !115
  %inc21 = add nuw nsw i32 %nl.038, 1, !dbg !116
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !86, metadata !DIExpression()), !dbg !101
  %exitcond40.not = icmp eq i32 %inc21, 10, !dbg !117
  br i1 %exitcond40.not, label %for.cond.cleanup, label %for.cond2.preheader, !dbg !102, !llvm.loop !118

for.body5:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !88, metadata !DIExpression()), !dbg !103
  %arrayidx = getelementptr inbounds [8192 x i32], ptr @a, i64 0, i64 %indvars.iv, !dbg !122
  %0 = load i32, ptr %arrayidx, align 4, !dbg !122, !tbaa !126
  %arrayidx7 = getelementptr inbounds [8192 x i32], ptr @b, i64 0, i64 %indvars.iv, !dbg !130
  %1 = load i32, ptr %arrayidx7, align 4, !dbg !130, !tbaa !126
  %cmp8 = icmp sgt i32 %0, %1, !dbg !131
  br i1 %cmp8, label %if.then, label %for.inc, !dbg !132

if.then:                                          ; preds = %for.body5
  %arrayidx14 = getelementptr inbounds [8192 x i32], ptr @d, i64 0, i64 %indvars.iv, !dbg !133
  %2 = load i32, ptr %arrayidx14, align 4, !dbg !133, !tbaa !126
  %mul = mul nsw i32 %2, %1, !dbg !135
  %sub = sub nsw i32 %0, %mul, !dbg !136
  call void @llvm.dbg.value(metadata i32 %sub, metadata !85, metadata !DIExpression()), !dbg !92
  %arrayidx16 = getelementptr inbounds [8192 x i32], ptr @c, i64 0, i64 %indvars.iv, !dbg !137
  %3 = load i32, ptr %arrayidx16, align 4, !dbg !138, !tbaa !126
  %add = add nsw i32 %sub, %3, !dbg !138
  store i32 %add, ptr %arrayidx16, align 4, !dbg !138, !tbaa !126
  store i32 %sub, ptr %arrayidx, align 4, !dbg !139, !tbaa !126
  br label %for.inc, !dbg !140

for.inc:                                          ; preds = %for.body5, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !141
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !88, metadata !DIExpression()), !dbg !103
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !142
  br i1 %exitcond.not, label %for.cond.cleanup4, label %for.body5, !dbg !104, !llvm.loop !143
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !145 i32 @initialise_arrays(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !152 noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare !dbg !158 i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !164 i32 @calc_checksum(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @time_function(ptr nocapture noundef readonly %vector_func, ptr noundef %arg_info) local_unnamed_addr #0 !dbg !167 {
entry:
  %func_args = alloca %struct.args_t, align 8
  call void @llvm.dbg.value(metadata ptr %vector_func, metadata !171, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata ptr %arg_info, metadata !172, metadata !DIExpression()), !dbg !179
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %func_args) #8, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %func_args, metadata !173, metadata !DIExpression()), !dbg !181
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %func_args, i8 0, i64 32, i1 false), !dbg !181
  %arg_info1 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 2, !dbg !182
  store ptr %arg_info, ptr %arg_info1, align 8, !dbg !182, !tbaa !183
  %call = call i32 %vector_func(ptr noundef nonnull %func_args) #8, !dbg !188
  %conv = sitofp i32 %call to double, !dbg !188
  call void @llvm.dbg.value(metadata double %conv, metadata !174, metadata !DIExpression()), !dbg !179
  %0 = load i64, ptr %func_args, align 8, !dbg !189, !tbaa !190
  %conv2 = sitofp i64 %0 to double, !dbg !191
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %func_args, i64 0, i32 1, !dbg !192
  %1 = load i64, ptr %tv_usec, align 8, !dbg !192, !tbaa !193
  %conv4 = sitofp i64 %1 to double, !dbg !194
  %div = fdiv double %conv4, 1.000000e+06, !dbg !195
  %add = fadd double %div, %conv2, !dbg !196
  call void @llvm.dbg.value(metadata double %add, metadata !176, metadata !DIExpression()), !dbg !179
  %t2 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, !dbg !197
  %2 = load i64, ptr %t2, align 8, !dbg !198, !tbaa !199
  %conv6 = sitofp i64 %2 to double, !dbg !200
  %tv_usec8 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, i32 1, !dbg !201
  %3 = load i64, ptr %tv_usec8, align 8, !dbg !201, !tbaa !202
  %conv9 = sitofp i64 %3 to double, !dbg !203
  %div10 = fdiv double %conv9, 1.000000e+06, !dbg !204
  %add11 = fadd double %div10, %conv6, !dbg !205
  call void @llvm.dbg.value(metadata double %add11, metadata !177, metadata !DIExpression()), !dbg !179
  %sub = fsub double %add11, %add, !dbg !206
  call void @llvm.dbg.value(metadata double %sub, metadata !178, metadata !DIExpression()), !dbg !179
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %sub, double noundef %conv), !dbg !207
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %func_args) #8, !dbg !208
  ret void, !dbg !208
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 !dbg !209 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !215, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata ptr %argv, metadata !216, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i32 1, metadata !217, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i32 1, metadata !218, metadata !DIExpression()), !dbg !219
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !220
  tail call void @time_function(ptr noundef nonnull @s253, ptr noundef null), !dbg !221
  ret i32 0, !dbg !222
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
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "tsvc-functions.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test/s253", checksumkind: CSK_MD5, checksum: "34394c5ac185bee24371ea6bbd6188bd")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "test_function_t", file: !3, line: 58, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_t", file: !11, line: 23, baseType: !12)
!11 = !DIFile(filename: "./common.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test/s253", checksumkind: CSK_MD5, checksum: "5ffc4849a08971f3312fdcdd05f02549")
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_t", file: !11, line: 12, size: 320, elements: !15)
!15 = !{!16, !26, !27}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "t1", scope: !14, file: !11, line: 13, baseType: !17, size: 128)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !18, line: 8, size: 128, elements: !19)
!18 = !DIFile(filename: "/usr/include/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!19 = !{!20, !24}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !17, file: !18, line: 10, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !22, line: 160, baseType: !23)
!22 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!23 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !17, file: !18, line: 11, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !22, line: 162, baseType: !23)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "t2", scope: !14, file: !11, line: 14, baseType: !17, size: 128, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "arg_info", scope: !14, file: !11, line: 15, baseType: !28, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!29 = !{!30, !35, !0, !40, !42, !44, !46, !48, !53, !55, !57, !59, !62, !66}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "flat_2d_array", scope: !2, file: !3, line: 10, type: !32, isLocal: false, isDefinition: true, align: 512)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 65536)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 12, type: !37, isLocal: false, isDefinition: true, align: 512)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 262144, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 8192)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !3, line: 15, type: !50, isLocal: false, isDefinition: true, align: 512)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !51)
!51 = !{!52, !52}
!52 = !DISubrange(count: 256)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !3, line: 15, type: !50, isLocal: false, isDefinition: true, align: 512)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !3, line: 15, type: !50, isLocal: false, isDefinition: true, align: 512)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "tt", scope: !2, file: !3, line: 15, type: !50, isLocal: false, isDefinition: true, align: 512)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "indx", scope: !2, file: !3, line: 17, type: !61, isLocal: false, isDefinition: true, align: 512)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 262144, elements: !38)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "xx", scope: !2, file: !3, line: 19, type: !64, isLocal: false, isDefinition: true)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !3, line: 20, type: !65, isLocal: false, isDefinition: true)
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
!80 = distinct !DISubprogram(name: "s253", scope: !3, file: !3, line: 28, type: !81, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!12, !13}
!83 = !{!84, !85, !86, !88}
!84 = !DILocalVariable(name: "func_args", arg: 1, scope: !80, file: !3, line: 28, type: !13)
!85 = !DILocalVariable(name: "s", scope: !80, file: !3, line: 39, type: !12)
!86 = !DILocalVariable(name: "nl", scope: !87, file: !3, line: 40, type: !12)
!87 = distinct !DILexicalBlock(scope: !80, file: !3, line: 40, column: 5)
!88 = !DILocalVariable(name: "i", scope: !89, file: !3, line: 41, type: !12)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 41, column: 9)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 40, column: 45)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 40, column: 5)
!92 = !DILocation(line: 0, scope: !80)
!93 = !DILocation(line: 34, column: 5, scope: !80)
!94 = !DILocation(line: 35, column: 5, scope: !80)
!95 = !DILocation(line: 37, column: 5, scope: !96)
!96 = distinct !DILexicalBlock(scope: !80, file: !3, line: 37, column: 5)
!97 = !{i64 2148005712}
!98 = !DILocation(line: 38, column: 5, scope: !99)
!99 = distinct !DILexicalBlock(scope: !80, file: !3, line: 38, column: 5)
!100 = !{i64 2148005754, i64 2148005763}
!101 = !DILocation(line: 0, scope: !87)
!102 = !DILocation(line: 40, column: 5, scope: !87)
!103 = !DILocation(line: 0, scope: !89)
!104 = !DILocation(line: 41, column: 9, scope: !89)
!105 = !DILocation(line: 50, column: 5, scope: !106)
!106 = distinct !DILexicalBlock(scope: !80, file: !3, line: 50, column: 5)
!107 = !{i64 2148005824, i64 2148005833}
!108 = !DILocation(line: 51, column: 5, scope: !109)
!109 = distinct !DILexicalBlock(scope: !80, file: !3, line: 51, column: 5)
!110 = !{i64 2148005883}
!111 = !DILocation(line: 54, column: 30, scope: !80)
!112 = !DILocation(line: 54, column: 5, scope: !80)
!113 = !DILocation(line: 55, column: 12, scope: !80)
!114 = !DILocation(line: 55, column: 5, scope: !80)
!115 = !DILocation(line: 48, column: 9, scope: !90)
!116 = !DILocation(line: 40, column: 41, scope: !91)
!117 = !DILocation(line: 40, column: 25, scope: !91)
!118 = distinct !{!118, !102, !119, !120, !121}
!119 = !DILocation(line: 49, column: 5, scope: !87)
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!"llvm.loop.unroll.disable"}
!122 = !DILocation(line: 42, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !3, line: 42, column: 17)
!124 = distinct !DILexicalBlock(scope: !125, file: !3, line: 41, column: 42)
!125 = distinct !DILexicalBlock(scope: !89, file: !3, line: 41, column: 9)
!126 = !{!127, !127, i64 0}
!127 = !{!"int", !128, i64 0}
!128 = !{!"omnipotent char", !129, i64 0}
!129 = !{!"Simple C/C++ TBAA"}
!130 = !DILocation(line: 42, column: 24, scope: !123)
!131 = !DILocation(line: 42, column: 22, scope: !123)
!132 = !DILocation(line: 42, column: 17, scope: !124)
!133 = !DILocation(line: 43, column: 35, scope: !134)
!134 = distinct !DILexicalBlock(scope: !123, file: !3, line: 42, column: 30)
!135 = !DILocation(line: 43, column: 33, scope: !134)
!136 = !DILocation(line: 43, column: 26, scope: !134)
!137 = !DILocation(line: 44, column: 17, scope: !134)
!138 = !DILocation(line: 44, column: 22, scope: !134)
!139 = !DILocation(line: 45, column: 22, scope: !134)
!140 = !DILocation(line: 46, column: 13, scope: !134)
!141 = !DILocation(line: 41, column: 38, scope: !125)
!142 = !DILocation(line: 41, column: 27, scope: !125)
!143 = distinct !{!143, !104, !144, !120, !121}
!144 = !DILocation(line: 47, column: 9, scope: !89)
!145 = !DISubprogram(name: "initialise_arrays", scope: !11, file: !11, line: 31, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
!146 = !DISubroutineType(types: !147)
!147 = !{!12, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!151 = !{}
!152 = !DISubprogram(name: "gettimeofday", scope: !153, file: !153, line: 66, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
!153 = !DIFile(filename: "/usr/include/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!154 = !DISubroutineType(types: !155)
!155 = !{!12, !156, !28}
!156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!158 = !DISubprogram(name: "dummy", scope: !11, file: !11, line: 27, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
!159 = !DISubroutineType(types: !160)
!160 = !{!12, !65, !65, !65, !65, !65, !161, !161, !161, !10}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !163)
!163 = !{!52}
!164 = !DISubprogram(name: "calc_checksum", scope: !11, file: !11, line: 32, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
!165 = !DISubroutineType(types: !166)
!166 = !{!10, !148}
!167 = distinct !DISubprogram(name: "time_function", scope: !3, file: !3, line: 60, type: !168, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !6, !5}
!170 = !{!171, !172, !173, !174, !176, !177, !178}
!171 = !DILocalVariable(name: "vector_func", arg: 1, scope: !167, file: !3, line: 60, type: !6)
!172 = !DILocalVariable(name: "arg_info", arg: 2, scope: !167, file: !3, line: 60, type: !5)
!173 = !DILocalVariable(name: "func_args", scope: !167, file: !3, line: 62, type: !14)
!174 = !DILocalVariable(name: "result", scope: !167, file: !3, line: 64, type: !175)
!175 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!176 = !DILocalVariable(name: "tic", scope: !167, file: !3, line: 66, type: !175)
!177 = !DILocalVariable(name: "toc", scope: !167, file: !3, line: 67, type: !175)
!178 = !DILocalVariable(name: "taken", scope: !167, file: !3, line: 69, type: !175)
!179 = !DILocation(line: 0, scope: !167)
!180 = !DILocation(line: 62, column: 5, scope: !167)
!181 = !DILocation(line: 62, column: 19, scope: !167)
!182 = !DILocation(line: 62, column: 31, scope: !167)
!183 = !{!184, !187, i64 32}
!184 = !{!"args_t", !185, i64 0, !185, i64 16, !187, i64 32}
!185 = !{!"timeval", !186, i64 0, !186, i64 8}
!186 = !{!"long", !128, i64 0}
!187 = !{!"any pointer", !128, i64 0}
!188 = !DILocation(line: 64, column: 21, scope: !167)
!189 = !DILocation(line: 66, column: 29, scope: !167)
!190 = !{!184, !186, i64 0}
!191 = !DILocation(line: 66, column: 16, scope: !167)
!192 = !DILocation(line: 66, column: 50, scope: !167)
!193 = !{!184, !186, i64 8}
!194 = !DILocation(line: 66, column: 37, scope: !167)
!195 = !DILocation(line: 66, column: 57, scope: !167)
!196 = !DILocation(line: 66, column: 35, scope: !167)
!197 = !DILocation(line: 67, column: 26, scope: !167)
!198 = !DILocation(line: 67, column: 29, scope: !167)
!199 = !{!184, !186, i64 16}
!200 = !DILocation(line: 67, column: 16, scope: !167)
!201 = !DILocation(line: 67, column: 50, scope: !167)
!202 = !{!184, !186, i64 24}
!203 = !DILocation(line: 67, column: 37, scope: !167)
!204 = !DILocation(line: 67, column: 57, scope: !167)
!205 = !DILocation(line: 67, column: 35, scope: !167)
!206 = !DILocation(line: 69, column: 23, scope: !167)
!207 = !DILocation(line: 71, column: 5, scope: !167)
!208 = !DILocation(line: 72, column: 1, scope: !167)
!209 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 75, type: !210, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !214)
!210 = !DISubroutineType(types: !211)
!211 = !{!12, !12, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!214 = !{!215, !216, !217, !218}
!215 = !DILocalVariable(name: "argc", arg: 1, scope: !209, file: !3, line: 75, type: !12)
!216 = !DILocalVariable(name: "argv", arg: 2, scope: !209, file: !3, line: 75, type: !212)
!217 = !DILocalVariable(name: "n1", scope: !209, file: !3, line: 76, type: !12)
!218 = !DILocalVariable(name: "n3", scope: !209, file: !3, line: 77, type: !12)
!219 = !DILocation(line: 0, scope: !209)
!220 = !DILocation(line: 78, column: 5, scope: !209)
!221 = !DILocation(line: 80, column: 5, scope: !209)
!222 = !DILocation(line: 81, column: 1, scope: !209)
