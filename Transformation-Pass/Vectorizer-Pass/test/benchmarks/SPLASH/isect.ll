; ModuleID = 'isect.c'
source_filename = "isect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irecord = type { double, ptr, double, double, double }
%struct.gmem = type { i64, i64, i64, ptr, ptr, ptr, [4096 x [256 x ptr]], %struct.anon, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, [4096 x %union.pthread_mutex_t], i64, [4096 x i64] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.object = type { i64, [32 x i8], %struct.bbox, ptr, i64, ptr, ptr, ptr }
%struct.bbox = type { [3 x double], [3 x double] }
%struct.pprocs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.element = type { i64, ptr, ptr, %struct.bbox }
%struct.surf = type { [3 x double], [3 x double], double, double, double, double, double }

@gm = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Intersect(ptr noundef %pr, ptr nocapture noundef %hit) local_unnamed_addr #0 !dbg !9 {
entry:
  %newhit = alloca %struct.irecord, align 8
  call void @llvm.dbg.value(metadata ptr %pr, metadata !188, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr %hit, metadata !189, metadata !DIExpression()), !dbg !194
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %newhit) #5, !dbg !195
  call void @llvm.dbg.declare(metadata ptr %newhit, metadata !193, metadata !DIExpression()), !dbg !196
  %0 = load ptr, ptr @gm, align 8, !dbg !197
  %modelroot = getelementptr inbounds %struct.gmem, ptr %0, i64 0, i32 3, !dbg !198
  %1 = load ptr, ptr %modelroot, align 8, !dbg !198
  call void @llvm.dbg.value(metadata ptr %1, metadata !190, metadata !DIExpression()), !dbg !194
  store double 1.000000e+32, ptr %hit, align 8, !dbg !199
  %pelem = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 1, !dbg !200
  store ptr null, ptr %pelem, align 8, !dbg !201
  call void @llvm.dbg.value(metadata ptr %1, metadata !190, metadata !DIExpression()), !dbg !194
  %tobool.not17 = icmp eq ptr %1, null, !dbg !202
  br i1 %tobool.not17, label %while.end, label %while.body, !dbg !202

while.body:                                       ; preds = %entry, %if.end5
  %po.018 = phi ptr [ %6, %if.end5 ], [ %1, %entry ]
  call void @llvm.dbg.value(metadata ptr %po.018, metadata !190, metadata !DIExpression()), !dbg !194
  %procs = getelementptr inbounds %struct.object, ptr %po.018, i64 0, i32 5, !dbg !203
  %2 = load ptr, ptr %procs, align 8, !dbg !203
  %intersect = getelementptr inbounds %struct.pprocs, ptr %2, i64 0, i32 5, !dbg !206
  %3 = load ptr, ptr %intersect, align 8, !dbg !206
  %call = call i64 (ptr, ptr, ptr, ...) %3(ptr noundef %pr, ptr noundef nonnull %po.018, ptr noundef nonnull %newhit) #5, !dbg !207
  %tobool1.not = icmp eq i64 %call, 0, !dbg !207
  br i1 %tobool1.not, label %if.end5, label %if.then, !dbg !208

if.then:                                          ; preds = %while.body
  %4 = load double, ptr %newhit, align 8, !dbg !209
  %5 = load double, ptr %hit, align 8, !dbg !211
  %cmp = fcmp olt double %4, %5, !dbg !212
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !213

if.then4:                                         ; preds = %if.then
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %hit, ptr noundef nonnull align 8 dereferenceable(40) %newhit, i64 40, i1 false), !dbg !214
  br label %if.end5, !dbg !215

if.end5:                                          ; preds = %if.then, %if.then4, %while.body
  %next = getelementptr inbounds %struct.object, ptr %po.018, i64 0, i32 7, !dbg !216
  %6 = load ptr, ptr %next, align 8, !dbg !216
  call void @llvm.dbg.value(metadata ptr %6, metadata !190, metadata !DIExpression()), !dbg !194
  %tobool.not = icmp eq ptr %6, null, !dbg !202
  br i1 %tobool.not, label %while.end.loopexit, label %while.body, !dbg !202, !llvm.loop !217

while.end.loopexit:                               ; preds = %if.end5
  %.pre = load double, ptr %hit, align 8, !dbg !221
  %phi.cmp = fcmp olt double %.pre, 1.000000e+32, !dbg !221
  %phi.cast = zext i1 %phi.cmp to i64, !dbg !221
  br label %while.end, !dbg !221

while.end:                                        ; preds = %while.end.loopexit, %entry
  %7 = phi i64 [ %phi.cast, %while.end.loopexit ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %newhit) #5, !dbg !223
  ret i64 %7, !dbg !223
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @ShadowIntersect(ptr noundef %pr, double noundef %lightdist, ptr noundef readnone %pe) local_unnamed_addr #0 !dbg !224 {
entry:
  %newhit = alloca %struct.irecord, align 8
  call void @llvm.dbg.value(metadata ptr %pr, metadata !228, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata double %lightdist, metadata !229, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata ptr %pe, metadata !230, metadata !DIExpression()), !dbg !234
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %newhit) #5, !dbg !235
  call void @llvm.dbg.declare(metadata ptr %newhit, metadata !233, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !231, metadata !DIExpression()), !dbg !234
  %0 = load ptr, ptr @gm, align 8, !dbg !237
  %modelroot = getelementptr inbounds %struct.gmem, ptr %0, i64 0, i32 3, !dbg !238
  call void @llvm.dbg.value(metadata ptr undef, metadata !232, metadata !DIExpression()), !dbg !234
  %po.012 = load ptr, ptr %modelroot, align 8, !dbg !234
  call void @llvm.dbg.value(metadata ptr %po.012, metadata !232, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !231, metadata !DIExpression()), !dbg !234
  %tobool13.not = icmp eq ptr %po.012, null, !dbg !239
  br i1 %tobool13.not, label %while.end, label %while.body.lr.ph, !dbg !240

while.body.lr.ph:                                 ; preds = %entry
  %pelem = getelementptr inbounds %struct.irecord, ptr %newhit, i64 0, i32 1
  br label %while.body, !dbg !240

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %po.015 = phi ptr [ %po.012, %while.body.lr.ph ], [ %po.0, %if.end ]
  %trans.014 = phi double [ 1.000000e+00, %while.body.lr.ph ], [ %trans.1, %if.end ]
  call void @llvm.dbg.value(metadata double %trans.014, metadata !231, metadata !DIExpression()), !dbg !234
  %procs = getelementptr inbounds %struct.object, ptr %po.015, i64 0, i32 5, !dbg !241
  %1 = load ptr, ptr %procs, align 8, !dbg !241
  %intersect = getelementptr inbounds %struct.pprocs, ptr %1, i64 0, i32 5, !dbg !244
  %2 = load ptr, ptr %intersect, align 8, !dbg !244
  %call = call i64 (ptr, ptr, ptr, ...) %2(ptr noundef %pr, ptr noundef nonnull %po.015, ptr noundef nonnull %newhit) #5, !dbg !245
  %tobool1.not = icmp eq i64 %call, 0, !dbg !245
  br i1 %tobool1.not, label %if.end, label %land.lhs.true, !dbg !246

land.lhs.true:                                    ; preds = %while.body
  %3 = load ptr, ptr %pelem, align 8, !dbg !247
  %cmp2.not = icmp ne ptr %3, %pe, !dbg !248
  %4 = load double, ptr %newhit, align 8
  %cmp4 = fcmp olt double %4, %lightdist
  %or.cond11 = select i1 %cmp2.not, i1 %cmp4, i1 false, !dbg !249
  br i1 %or.cond11, label %if.then, label %if.end, !dbg !249

if.then:                                          ; preds = %land.lhs.true
  %parent = getelementptr inbounds %struct.element, ptr %3, i64 0, i32 1, !dbg !250
  %5 = load ptr, ptr %parent, align 8, !dbg !250
  %surf = getelementptr inbounds %struct.object, ptr %5, i64 0, i32 6, !dbg !251
  %6 = load ptr, ptr %surf, align 8, !dbg !251
  %ktran = getelementptr inbounds %struct.surf, ptr %6, i64 0, i32 4, !dbg !252
  %7 = load double, ptr %ktran, align 8, !dbg !252
  %mul = fmul double %trans.014, %7, !dbg !253
  call void @llvm.dbg.value(metadata double %mul, metadata !231, metadata !DIExpression()), !dbg !234
  br label %if.end, !dbg !254

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %trans.1 = phi double [ %mul, %if.then ], [ %trans.014, %land.lhs.true ], [ %trans.014, %while.body ], !dbg !234
  call void @llvm.dbg.value(metadata double %trans.1, metadata !231, metadata !DIExpression()), !dbg !234
  %next = getelementptr inbounds %struct.object, ptr %po.015, i64 0, i32 7, !dbg !255
  call void @llvm.dbg.value(metadata ptr undef, metadata !232, metadata !DIExpression()), !dbg !234
  %po.0 = load ptr, ptr %next, align 8, !dbg !234
  call void @llvm.dbg.value(metadata ptr %po.0, metadata !232, metadata !DIExpression()), !dbg !234
  %tobool = icmp ne ptr %po.0, null, !dbg !239
  %cmp = fcmp ogt double %trans.1, 0.000000e+00
  %or.cond = select i1 %tobool, i1 %cmp, i1 false, !dbg !240
  br i1 %or.cond, label %while.body, label %while.end, !dbg !240, !llvm.loop !256

while.end:                                        ; preds = %if.end, %entry
  %trans.0.lcssa = phi double [ 1.000000e+00, %entry ], [ %trans.1, %if.end ], !dbg !234
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %newhit) #5, !dbg !259
  ret double %trans.0.lcssa, !dbg !260
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "isect.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "087c95ede603120c82536cd18d0cf57f")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "Intersect", scope: !1, file: !1, line: 50, type: !10, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !187)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !15, !178}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOL", file: !13, line: 299, baseType: !14)
!13 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!14 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAY", file: !13, line: 625, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ray", file: !13, line: 611, size: 7104, elements: !18)
!18 = !{!19, !22, !24, !25, !32, !33, !34, !168, !169, !170, !174, !177}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !17, file: !13, line: 613, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !13, line: 301, baseType: !21)
!21 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !17, file: !13, line: 614, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !13, line: 297, baseType: !21)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !17, file: !13, line: 614, baseType: !23, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !17, file: !13, line: 615, baseType: !26, size: 192, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !13, line: 314, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 192, elements: !30)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !13, line: 310, baseType: !29)
!29 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!30 = !{!31}
!31 = !DISubrange(count: 3)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !17, file: !13, line: 616, baseType: !26, size: 192, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !17, file: !13, line: 617, baseType: !23, size: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !17, file: !13, line: 618, baseType: !35, size: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAYINFO", file: !13, line: 603, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rayinfo", file: !13, line: 582, size: 1216, elements: !38)
!38 = !{!39, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "grid", scope: !37, file: !13, line: 584, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRID", file: !13, line: 572, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "grid", file: !13, line: 539, size: 1152, elements: !43)
!43 = !{!44, !45, !64, !67, !131, !132, !134, !135, !136, !137, !138, !155}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !42, file: !13, line: 541, baseType: !23, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "hashtable", scope: !42, file: !13, line: 542, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOXEL", file: !13, line: 405, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "voxel", file: !13, line: 394, size: 320, elements: !50)
!50 = !{!51, !52, !53, !55, !59, !60}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !49, file: !13, line: 396, baseType: !23, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !49, file: !13, line: 397, baseType: !23, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !49, file: !13, line: 398, baseType: !54, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cell", scope: !49, file: !13, line: 399, baseType: !56, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !13, line: 287, baseType: !58)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "celltype", scope: !49, file: !13, line: 400, baseType: !57, size: 8, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !49, file: !13, line: 403, baseType: !61, size: 56, offset: 264)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 56, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 7)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "emptycells", scope: !42, file: !13, line: 548, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !13, line: 298, baseType: !14)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pepa", scope: !42, file: !13, line: 555, baseType: !68, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELEMENT", file: !13, line: 481, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "element", file: !13, line: 474, size: 576, elements: !72)
!72 = !{!73, !74, !129, !130}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !71, file: !13, line: 476, baseType: !23, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !71, file: !13, line: 477, baseType: !75, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !13, line: 488, size: 1024, elements: !77)
!77 = !{!78, !79, !83, !89, !90, !91, !115, !128}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !76, file: !13, line: 490, baseType: !23, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !76, file: !13, line: 491, baseType: !80, size: 256, offset: 64)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 256, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !76, file: !13, line: 492, baseType: !84, size: 384, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !13, line: 418, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !13, line: 413, size: 384, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !85, file: !13, line: 415, baseType: !27, size: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !85, file: !13, line: 416, baseType: !27, size: 192, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !76, file: !13, line: 493, baseType: !69, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !76, file: !13, line: 494, baseType: !23, size: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !76, file: !13, line: 495, baseType: !92, size: 64, offset: 832)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROCS", file: !13, line: 340, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pprocs", file: !13, line: 327, size: 640, elements: !95)
!95 = !{!96, !100, !104, !105, !106, !107, !111, !112, !113, !114}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !13, line: 329, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!56, null}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !94, file: !13, line: 330, baseType: !101, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, null}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !94, file: !13, line: 331, baseType: !101, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "binread", scope: !94, file: !13, line: 332, baseType: !101, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "transform", scope: !94, file: !13, line: 333, baseType: !101, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "intersect", scope: !94, file: !13, line: 334, baseType: !108, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!23, null}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pe_intersect", scope: !94, file: !13, line: 335, baseType: !108, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !94, file: !13, line: 336, baseType: !101, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !94, file: !13, line: 337, baseType: !101, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !94, file: !13, line: 338, baseType: !101, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "surf", scope: !76, file: !13, line: 496, baseType: !116, size: 64, offset: 896)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "SURF", file: !13, line: 357, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "surf", file: !13, line: 347, size: 704, elements: !119)
!119 = !{!120, !122, !123, !124, !125, !126, !127}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "fcolor", scope: !118, file: !13, line: 349, baseType: !121, size: 192)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !13, line: 319, baseType: !26)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "bcolor", scope: !118, file: !13, line: 350, baseType: !121, size: 192, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "kdiff", scope: !118, file: !13, line: 351, baseType: !28, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "kspec", scope: !118, file: !13, line: 352, baseType: !28, size: 64, offset: 448)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ktran", scope: !118, file: !13, line: 353, baseType: !28, size: 64, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "refrindex", scope: !118, file: !13, line: 354, baseType: !28, size: 64, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "kspecn", scope: !118, file: !13, line: 355, baseType: !28, size: 64, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !76, file: !13, line: 497, baseType: !75, size: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !71, file: !13, line: 478, baseType: !56, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !71, file: !13, line: 479, baseType: !84, size: 384, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "num_prims", scope: !42, file: !13, line: 556, baseType: !23, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc", scope: !42, file: !13, line: 558, baseType: !133, size: 192, offset: 320)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, elements: !30)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !42, file: !13, line: 562, baseType: !23, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !42, file: !13, line: 563, baseType: !27, size: 192, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cellsize", scope: !42, file: !13, line: 564, baseType: !27, size: 192, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "subdiv_level", scope: !42, file: !13, line: 566, baseType: !23, size: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "bintree", scope: !42, file: !13, line: 569, baseType: !139, size: 64, offset: 1024)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "BTNODE", file: !13, line: 535, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btnode", file: !13, line: 522, size: 960, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !141, file: !13, line: 524, baseType: !68, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !141, file: !13, line: 525, baseType: !27, size: 192, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nprims", scope: !141, file: !13, line: 527, baseType: !23, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !141, file: !13, line: 528, baseType: !133, size: 192, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !141, file: !13, line: 529, baseType: !133, size: 192, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !141, file: !13, line: 531, baseType: !23, size: 64, offset: 704)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "totalPrimsAllocated", scope: !141, file: !13, line: 532, baseType: !23, size: 64, offset: 768)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !141, file: !13, line: 533, baseType: !151, size: 128, offset: 832)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !153)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!153 = !{!154}
!154 = !DISubrange(count: 2)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !42, file: !13, line: 570, baseType: !156, size: 64, offset: 1088)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !37, file: !13, line: 585, baseType: !27, size: 192, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "entry_plane", scope: !37, file: !13, line: 587, baseType: !23, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "t_in", scope: !37, file: !13, line: 589, baseType: !28, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "exit_plane", scope: !37, file: !13, line: 591, baseType: !23, size: 64, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "t_out", scope: !37, file: !13, line: 593, baseType: !28, size: 64, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !37, file: !13, line: 595, baseType: !27, size: 192, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "index3D", scope: !37, file: !13, line: 596, baseType: !133, size: 192, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "index1D", scope: !37, file: !13, line: 597, baseType: !23, size: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc1D", scope: !37, file: !13, line: 600, baseType: !133, size: 192, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !37, file: !13, line: 601, baseType: !167, size: 64, offset: 1152)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ri_indx", scope: !17, file: !13, line: 619, baseType: !23, size: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc3D", scope: !17, file: !13, line: 620, baseType: !133, size: 192, offset: 768)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rinfo", scope: !17, file: !13, line: 621, baseType: !171, size: 6080, offset: 960)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 6080, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 5)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !17, file: !13, line: 622, baseType: !175, size: 32, offset: 7040)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "R32", file: !13, line: 307, baseType: !176)
!176 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !17, file: !13, line: 623, baseType: !175, size: 32, offset: 7072)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRECORD", file: !13, line: 514, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irecord", file: !13, line: 506, size: 320, elements: !181)
!181 = !{!182, !183, !184, !185, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !180, file: !13, line: 508, baseType: !28, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !180, file: !13, line: 509, baseType: !69, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b1", scope: !180, file: !13, line: 510, baseType: !28, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "b2", scope: !180, file: !13, line: 511, baseType: !28, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "b3", scope: !180, file: !13, line: 512, baseType: !28, size: 64, offset: 256)
!187 = !{!188, !189, !190, !193}
!188 = !DILocalVariable(name: "pr", arg: 1, scope: !9, file: !1, line: 50, type: !15)
!189 = !DILocalVariable(name: "hit", arg: 2, scope: !9, file: !1, line: 50, type: !178)
!190 = !DILocalVariable(name: "po", scope: !9, file: !1, line: 52, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "OBJECT", file: !13, line: 499, baseType: !76)
!193 = !DILocalVariable(name: "newhit", scope: !9, file: !1, line: 53, type: !179)
!194 = !DILocation(line: 0, scope: !9)
!195 = !DILocation(line: 53, column: 2, scope: !9)
!196 = !DILocation(line: 53, column: 10, scope: !9)
!197 = !DILocation(line: 55, column: 10, scope: !9)
!198 = !DILocation(line: 55, column: 14, scope: !9)
!199 = !DILocation(line: 56, column: 12, scope: !9)
!200 = !DILocation(line: 57, column: 7, scope: !9)
!201 = !DILocation(line: 57, column: 13, scope: !9)
!202 = !DILocation(line: 59, column: 2, scope: !9)
!203 = !DILocation(line: 61, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 61, column: 7)
!205 = distinct !DILexicalBlock(scope: !9, file: !1, line: 60, column: 3)
!206 = !DILocation(line: 61, column: 20, scope: !204)
!207 = !DILocation(line: 61, column: 7, scope: !204)
!208 = !DILocation(line: 61, column: 7, scope: !205)
!209 = !DILocation(line: 62, column: 15, scope: !210)
!210 = distinct !DILexicalBlock(scope: !204, file: !1, line: 62, column: 8)
!211 = !DILocation(line: 62, column: 26, scope: !210)
!212 = !DILocation(line: 62, column: 17, scope: !210)
!213 = !DILocation(line: 62, column: 8, scope: !204)
!214 = !DILocation(line: 63, column: 12, scope: !210)
!215 = !DILocation(line: 63, column: 5, scope: !210)
!216 = !DILocation(line: 65, column: 12, scope: !205)
!217 = distinct !{!217, !202, !218, !219, !220}
!218 = !DILocation(line: 66, column: 3, scope: !9)
!219 = !{!"llvm.loop.mustprogress"}
!220 = !{!"llvm.loop.unroll.disable"}
!221 = !DILocation(line: 68, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !9, file: !1, line: 68, column: 6)
!223 = !DILocation(line: 72, column: 2, scope: !9)
!224 = distinct !DISubprogram(name: "ShadowIntersect", scope: !1, file: !1, line: 93, type: !225, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !227)
!225 = !DISubroutineType(types: !226)
!226 = !{!28, !15, !28, !69}
!227 = !{!228, !229, !230, !231, !232, !233}
!228 = !DILocalVariable(name: "pr", arg: 1, scope: !224, file: !1, line: 93, type: !15)
!229 = !DILocalVariable(name: "lightdist", arg: 2, scope: !224, file: !1, line: 93, type: !28)
!230 = !DILocalVariable(name: "pe", arg: 3, scope: !224, file: !1, line: 93, type: !69)
!231 = !DILocalVariable(name: "trans", scope: !224, file: !1, line: 95, type: !28)
!232 = !DILocalVariable(name: "po", scope: !224, file: !1, line: 96, type: !191)
!233 = !DILocalVariable(name: "newhit", scope: !224, file: !1, line: 97, type: !179)
!234 = !DILocation(line: 0, scope: !224)
!235 = !DILocation(line: 97, column: 2, scope: !224)
!236 = !DILocation(line: 97, column: 10, scope: !224)
!237 = !DILocation(line: 100, column: 10, scope: !224)
!238 = !DILocation(line: 100, column: 14, scope: !224)
!239 = !DILocation(line: 102, column: 9, scope: !224)
!240 = !DILocation(line: 102, column: 12, scope: !224)
!241 = !DILocation(line: 104, column: 13, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 104, column: 7)
!243 = distinct !DILexicalBlock(scope: !224, file: !1, line: 103, column: 3)
!244 = !DILocation(line: 104, column: 20, scope: !242)
!245 = !DILocation(line: 104, column: 7, scope: !242)
!246 = !DILocation(line: 104, column: 48, scope: !242)
!247 = !DILocation(line: 104, column: 58, scope: !242)
!248 = !DILocation(line: 104, column: 64, scope: !242)
!249 = !DILocation(line: 104, column: 70, scope: !242)
!250 = !DILocation(line: 105, column: 27, scope: !242)
!251 = !DILocation(line: 105, column: 35, scope: !242)
!252 = !DILocation(line: 105, column: 41, scope: !242)
!253 = !DILocation(line: 105, column: 10, scope: !242)
!254 = !DILocation(line: 105, column: 4, scope: !242)
!255 = !DILocation(line: 107, column: 12, scope: !243)
!256 = distinct !{!256, !257, !258, !219, !220}
!257 = !DILocation(line: 102, column: 2, scope: !224)
!258 = !DILocation(line: 108, column: 3, scope: !224)
!259 = !DILocation(line: 111, column: 2, scope: !224)
!260 = !DILocation(line: 110, column: 2, scope: !224)
