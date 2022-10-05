; ModuleID = 'compiled_with_O3.ll'
source_filename = "tsvc-functions.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.args_t = type { %struct.timeval, %struct.timeval, ptr }
%struct.timeval = type { i64, i64 }

@__func__.s253 = private unnamed_addr constant [5 x i8] c"s253\00", align 1
@a = dso_local global [32000 x i32] zeroinitializer, align 64, !dbg !0
@b = dso_local global [32000 x i32] zeroinitializer, align 64, !dbg !18
@d = dso_local global [32000 x i32] zeroinitializer, align 64, !dbg !22
@c = dso_local global [32000 x i32] zeroinitializer, align 64, !dbg !20
@e = dso_local global [32000 x i32] zeroinitializer, align 64, !dbg !24
@aa = dso_local global [256 x [256 x i32]] zeroinitializer, align 64, !dbg !26
@bb = dso_local global [256 x [256 x i32]] zeroinitializer, align 64, !dbg !31
@cc = dso_local global [256 x [256 x i32]] zeroinitializer, align 64, !dbg !33
@flat_2d_array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 64, !dbg !7
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 64, !dbg !13
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 64, !dbg !35
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 64, !dbg !37
@xx = dso_local local_unnamed_addr global ptr null, align 8, !dbg !39
@yy = dso_local local_unnamed_addr global ptr null, align 8, !dbg !43
@str = private unnamed_addr constant [26 x i8] c"Loop \09Time(sec) \09Checksum\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s253(ptr nocapture noundef %func_args) #0 !dbg !57 {
entry:
  call void @llvm.dbg.value(metadata ptr %func_args, metadata !78, metadata !DIExpression()), !dbg !86
  %call = tail call i32 @initialise_arrays(ptr noundef nonnull @__func__.s253) #8, !dbg !87
  %call1 = tail call i32 @gettimeofday(ptr noundef %func_args, ptr noundef null) #8, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !80, metadata !DIExpression()), !dbg !89
  br label %for.cond2.preheader, !dbg !90

for.cond2.preheader:                              ; preds = %for.cond.cleanup4, %entry
  %nl.038 = phi i32 [ 0, %entry ], [ %inc21, %for.cond.cleanup4 ]
  call void @llvm.dbg.value(metadata i32 %nl.038, metadata !80, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i32 0, metadata !82, metadata !DIExpression()), !dbg !91
  %0 = call i32 @llvm.vscale.i32(), !dbg !92
  %extended.vscale = zext i32 %0 to i64
  %1 = shl i64 %extended.vscale, 2, !dbg !92
  %2 = icmp uge i64 32000, %1, !dbg !92
  br i1 %2, label %Pre.Vectorization, label %Preheader.for.remaining.iterations, !dbg !92

for.cond.cleanup:                                 ; preds = %for.cond.cleanup4
  %t2 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, !dbg !93
  %call23 = tail call i32 @gettimeofday(ptr noundef nonnull %t2, ptr noundef null) #8, !dbg !94
  %call24 = tail call i32 @calc_checksum(ptr noundef nonnull @__func__.s253) #8, !dbg !95
  ret i32 %call24, !dbg !96

for.cond.cleanup4:                                ; preds = %middle.block, %for.inc
  %call19 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, i32 noundef 0) #8, !dbg !97
  %inc21 = add nuw nsw i32 %nl.038, 1, !dbg !98
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !80, metadata !DIExpression()), !dbg !89
  %exitcond40.not = icmp eq i32 %inc21, 100000, !dbg !99
  br i1 %exitcond40.not, label %for.cond.cleanup, label %for.cond2.preheader, !dbg !90, !llvm.loop !100

for.body5:                                        ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %27, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !82, metadata !DIExpression()), !dbg !91
  %arrayidx = getelementptr inbounds [32000 x i32], ptr @a, i64 0, i64 %indvars.iv, !dbg !104
  %3 = load i32, ptr %arrayidx, align 4, !dbg !104, !tbaa !108
  %arrayidx7 = getelementptr inbounds [32000 x i32], ptr @b, i64 0, i64 %indvars.iv, !dbg !112
  %4 = load i32, ptr %arrayidx7, align 4, !dbg !112, !tbaa !108
  %cmp8 = icmp sgt i32 %3, %4, !dbg !113
  br i1 %cmp8, label %if.then, label %for.inc, !dbg !114

if.then:                                          ; preds = %for.body5
  %arrayidx14 = getelementptr inbounds [32000 x i32], ptr @d, i64 0, i64 %indvars.iv, !dbg !115
  %5 = load i32, ptr %arrayidx14, align 4, !dbg !115, !tbaa !108
  %mul = mul nsw i32 %5, %4, !dbg !117
  %sub = sub nsw i32 %3, %mul, !dbg !118
  call void @llvm.dbg.value(metadata i32 %sub, metadata !79, metadata !DIExpression()), !dbg !86
  %arrayidx16 = getelementptr inbounds [32000 x i32], ptr @c, i64 0, i64 %indvars.iv, !dbg !119
  %6 = load i32, ptr %arrayidx16, align 4, !dbg !120, !tbaa !108
  %add = add nsw i32 %sub, %6, !dbg !120
  store i32 %add, ptr %arrayidx16, align 4, !dbg !120, !tbaa !108
  store i32 %sub, ptr %arrayidx, align 4, !dbg !121, !tbaa !108
  br label %for.inc, !dbg !122

middle.block:                                     ; preds = %vectorizing.block
  %condition = icmp eq i64 %9, 0
  br i1 %condition, label %for.cond.cleanup4, label %Preheader.for.remaining.iterations

Pre.Vectorization:                                ; preds = %for.cond2.preheader
  %7 = call i32 @llvm.vscale.i32()
  %extended.vscale1 = zext i32 %7 to i64
  %8 = call <vscale x 4 x i64> @llvm.experimental.stepvector.nxv4i64()
  %step.value = shl i64 %extended.vscale1, 2
  %9 = urem i64 32000, %step.value
  %total.iterations.to.be.vectorized = sub i64 32000, %9
  %10 = insertelement <vscale x 4 x i64> poison, i64 %step.value, i64 0
  %stepVector.update.values = shufflevector <vscale x 4 x i64> %10, <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer
  br label %vectorizing.block

vectorizing.block:                                ; preds = %vectorizing.block, %Pre.Vectorization
  %11 = phi i64 [ 0, %Pre.Vectorization ], [ %25, %vectorizing.block ]
  %12 = phi <vscale x 4 x i64> [ %8, %Pre.Vectorization ], [ %26, %vectorizing.block ]
  %13 = getelementptr inbounds [32000 x i32], ptr @a, i64 0, i64 %11, !dbg !104
  %14 = getelementptr inbounds [32000 x i32], ptr @b, i64 0, i64 %11, !dbg !112
  %15 = load <vscale x 4 x i32>, ptr %13, align 16
  %16 = load <vscale x 4 x i32>, ptr %14, align 16
  %17 = icmp sgt <vscale x 4 x i32> %15, %16
  %18 = getelementptr inbounds [32000 x i32], ptr @d, i64 0, i64 %11, !dbg !115
  %19 = getelementptr inbounds [32000 x i32], ptr @c, i64 0, i64 %11, !dbg !119
  %20 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1> %17, ptr %18)
  %21 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %17, <vscale x 4 x i32> %20, <vscale x 4 x i32> %16)
  %22 = call <vscale x 4 x i32> @llvm.aarch64.sve.sub.nxv4i32(<vscale x 4 x i1> %17, <vscale x 4 x i32> %15, <vscale x 4 x i32> %21)
  %23 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1> %17, ptr %19)
  %24 = call <vscale x 4 x i32> @llvm.aarch64.sve.add.nxv4i32(<vscale x 4 x i1> %17, <vscale x 4 x i32> %22, <vscale x 4 x i32> %23)
  call void @llvm.aarch64.sve.st1.nxv4i32(<vscale x 4 x i32> %24, <vscale x 4 x i1> %17, ptr %19)
  call void @llvm.aarch64.sve.st1.nxv4i32(<vscale x 4 x i32> %22, <vscale x 4 x i1> %17, ptr %13)
  %25 = add i64 %step.value, %11
  %26 = add <vscale x 4 x i64> %12, %stepVector.update.values
  %terminate.condition = icmp uge i64 %25, %total.iterations.to.be.vectorized
  br i1 %terminate.condition, label %middle.block, label %vectorizing.block

Preheader.for.remaining.iterations:               ; preds = %middle.block, %for.cond2.preheader
  %27 = phi i64 [ 0, %for.cond2.preheader ], [ %25, %middle.block ]
  br label %for.body5

for.inc:                                          ; preds = %if.then, %for.body5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !123
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !82, metadata !DIExpression()), !dbg !91
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32000, !dbg !124
  br i1 %exitcond.not, label %for.cond.cleanup4, label %for.body5, !dbg !92, !llvm.loop !125
}

declare !dbg !127 i32 @initialise_arrays(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !134 noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare !dbg !140 i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !146 i32 @calc_checksum(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 !dbg !147 {
entry:
  %ip = alloca ptr, align 8
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !153, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata ptr %argv, metadata !154, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata i32 1, metadata !155, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata i32 1, metadata !156, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ip) #8, !dbg !161
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s1) #8, !dbg !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s2) #8, !dbg !162
  call void @llvm.dbg.value(metadata ptr %ip, metadata !157, metadata !DIExpression(DW_OP_deref)), !dbg !160
  call void @llvm.dbg.value(metadata ptr %s1, metadata !158, metadata !DIExpression(DW_OP_deref)), !dbg !160
  call void @llvm.dbg.value(metadata ptr %s2, metadata !159, metadata !DIExpression(DW_OP_deref)), !dbg !160
  call void @init(ptr noundef nonnull %ip, ptr noundef nonnull %s1, ptr noundef nonnull %s2) #8, !dbg !163
  %puts = call i32 @puts(ptr nonnull @str), !dbg !164
  %call1 = call i32 @time_function(ptr noundef nonnull @s253, ptr noundef null) #8, !dbg !165
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s2) #8, !dbg !166
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s1) #8, !dbg !166
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ip) #8, !dbg !166
  ret i32 0, !dbg !166
}

declare !dbg !167 void @init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @time_function(...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i64> @llvm.experimental.stepvector.nxv4i64() #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1>, ptr) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.sub.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.add.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.aarch64.sve.st1.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr nocapture) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 14, type: !15, isLocal: false, isDefinition: true, align: 512)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "tsvc-functions.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "c6f620ae9f6e00b4e2b646d0818f2f39")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!7, !13, !0, !18, !20, !22, !24, !26, !31, !33, !35, !37, !39, !43}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "flat_2d_array", scope: !2, file: !3, line: 10, type: !9, isLocal: false, isDefinition: true, align: 512)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 65536)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 12, type: !15, isLocal: false, isDefinition: true, align: 512)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024000, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 32000)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 14, type: !15, isLocal: false, isDefinition: true, align: 512)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 14, type: !15, isLocal: false, isDefinition: true, align: 512)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !3, line: 14, type: !15, isLocal: false, isDefinition: true, align: 512)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !3, line: 14, type: !15, isLocal: false, isDefinition: true, align: 512)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !3, line: 15, type: !28, isLocal: false, isDefinition: true, align: 512)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !29)
!29 = !{!30, !30}
!30 = !DISubrange(count: 256)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !3, line: 15, type: !28, isLocal: false, isDefinition: true, align: 512)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !3, line: 15, type: !28, isLocal: false, isDefinition: true, align: 512)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "tt", scope: !2, file: !3, line: 15, type: !28, isLocal: false, isDefinition: true, align: 512)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "indx", scope: !2, file: !3, line: 17, type: !15, isLocal: false, isDefinition: true, align: 512)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "xx", scope: !2, file: !3, line: 19, type: !41, isLocal: false, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !3, line: 20, type: !42, isLocal: false, isDefinition: true)
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"PIC Level", i32 2}
!53 = !{i32 7, !"PIE Level", i32 2}
!54 = !{i32 7, !"uwtable", i32 2}
!55 = !{i32 7, !"frame-pointer", i32 1}
!56 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!57 = distinct !DISubprogram(name: "s253", scope: !3, file: !3, line: 23, type: !58, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!58 = !DISubroutineType(types: !59)
!59 = !{!10, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_t", file: !62, line: 10, size: 320, elements: !63)
!62 = !DIFile(filename: "./common.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "5e4aaa336c606013c82cfcd9c7a7c62d")
!63 = !{!64, !74, !75}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "t1", scope: !61, file: !62, line: 11, baseType: !65, size: 128)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !66, line: 8, size: 128, elements: !67)
!66 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!67 = !{!68, !72}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !65, file: !66, line: 10, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !70, line: 160, baseType: !71)
!70 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!71 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !65, file: !66, line: 11, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !70, line: 162, baseType: !71)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "t2", scope: !61, file: !62, line: 12, baseType: !65, size: 128, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "arg_info", scope: !61, file: !62, line: 13, baseType: !76, size: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!77 = !{!78, !79, !80, !82}
!78 = !DILocalVariable(name: "func_args", arg: 1, scope: !57, file: !3, line: 23, type: !60)
!79 = !DILocalVariable(name: "s", scope: !57, file: !3, line: 32, type: !10)
!80 = !DILocalVariable(name: "nl", scope: !81, file: !3, line: 33, type: !10)
!81 = distinct !DILexicalBlock(scope: !57, file: !3, line: 33, column: 5)
!82 = !DILocalVariable(name: "i", scope: !83, file: !3, line: 34, type: !10)
!83 = distinct !DILexicalBlock(scope: !84, file: !3, line: 34, column: 9)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 33, column: 45)
!85 = distinct !DILexicalBlock(scope: !81, file: !3, line: 33, column: 5)
!86 = !DILocation(line: 0, scope: !57)
!87 = !DILocation(line: 29, column: 5, scope: !57)
!88 = !DILocation(line: 30, column: 5, scope: !57)
!89 = !DILocation(line: 0, scope: !81)
!90 = !DILocation(line: 33, column: 5, scope: !81)
!91 = !DILocation(line: 0, scope: !83)
!92 = !DILocation(line: 34, column: 9, scope: !83)
!93 = !DILocation(line: 44, column: 30, scope: !57)
!94 = !DILocation(line: 44, column: 5, scope: !57)
!95 = !DILocation(line: 45, column: 12, scope: !57)
!96 = !DILocation(line: 45, column: 5, scope: !57)
!97 = !DILocation(line: 41, column: 9, scope: !84)
!98 = !DILocation(line: 33, column: 41, scope: !85)
!99 = !DILocation(line: 33, column: 25, scope: !85)
!100 = distinct !{!100, !90, !101, !102, !103}
!101 = !DILocation(line: 42, column: 5, scope: !81)
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !DILocation(line: 35, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 35, column: 17)
!106 = distinct !DILexicalBlock(scope: !107, file: !3, line: 34, column: 42)
!107 = distinct !DILexicalBlock(scope: !83, file: !3, line: 34, column: 9)
!108 = !{!109, !109, i64 0}
!109 = !{!"int", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !DILocation(line: 35, column: 24, scope: !105)
!113 = !DILocation(line: 35, column: 22, scope: !105)
!114 = !DILocation(line: 35, column: 17, scope: !106)
!115 = !DILocation(line: 36, column: 35, scope: !116)
!116 = distinct !DILexicalBlock(scope: !105, file: !3, line: 35, column: 30)
!117 = !DILocation(line: 36, column: 33, scope: !116)
!118 = !DILocation(line: 36, column: 26, scope: !116)
!119 = !DILocation(line: 37, column: 17, scope: !116)
!120 = !DILocation(line: 37, column: 22, scope: !116)
!121 = !DILocation(line: 38, column: 22, scope: !116)
!122 = !DILocation(line: 39, column: 13, scope: !116)
!123 = !DILocation(line: 34, column: 38, scope: !107)
!124 = !DILocation(line: 34, column: 27, scope: !107)
!125 = distinct !{!125, !92, !126, !102, !103}
!126 = !DILocation(line: 40, column: 9, scope: !83)
!127 = !DISubprogram(name: "initialise_arrays", scope: !62, file: !62, line: 27, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!128 = !DISubroutineType(types: !129)
!129 = !{!10, !130}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!133 = !{}
!134 = !DISubprogram(name: "gettimeofday", scope: !135, file: !135, line: 66, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!135 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!136 = !DISubroutineType(types: !137)
!137 = !{!10, !138, !76}
!138 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!140 = !DISubprogram(name: "dummy", scope: !62, file: !62, line: 23, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!141 = !DISubroutineType(types: !142)
!142 = !{!10, !42, !42, !42, !42, !42, !143, !143, !143, !10}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !145)
!145 = !{!30}
!146 = !DISubprogram(name: "calc_checksum", scope: !62, file: !62, line: 28, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!147 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 49, type: !148, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!148 = !DISubroutineType(types: !149)
!149 = !{!10, !10, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!152 = !{!153, !154, !155, !156, !157, !158, !159}
!153 = !DILocalVariable(name: "argc", arg: 1, scope: !147, file: !3, line: 49, type: !10)
!154 = !DILocalVariable(name: "argv", arg: 2, scope: !147, file: !3, line: 49, type: !150)
!155 = !DILocalVariable(name: "n1", scope: !147, file: !3, line: 50, type: !10)
!156 = !DILocalVariable(name: "n3", scope: !147, file: !3, line: 51, type: !10)
!157 = !DILocalVariable(name: "ip", scope: !147, file: !3, line: 52, type: !42)
!158 = !DILocalVariable(name: "s1", scope: !147, file: !3, line: 53, type: !10)
!159 = !DILocalVariable(name: "s2", scope: !147, file: !3, line: 53, type: !10)
!160 = !DILocation(line: 0, scope: !147)
!161 = !DILocation(line: 52, column: 5, scope: !147)
!162 = !DILocation(line: 53, column: 5, scope: !147)
!163 = !DILocation(line: 54, column: 5, scope: !147)
!164 = !DILocation(line: 55, column: 5, scope: !147)
!165 = !DILocation(line: 57, column: 6, scope: !147)
!166 = !DILocation(line: 58, column: 1, scope: !147)
!167 = !DISubprogram(name: "init", scope: !62, file: !62, line: 25, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !170, !42, !42}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
