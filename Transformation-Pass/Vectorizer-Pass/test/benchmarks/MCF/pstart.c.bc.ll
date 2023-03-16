; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r/llvm-ir/505.mcf_r_bc/src/pstart.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/pstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i64 @primal_start_artificial(ptr nocapture noundef readonly %net) local_unnamed_addr #0 !dbg !18 {
entry:
  call void @llvm.dbg.value(metadata ptr %net, metadata !98, metadata !DIExpression()), !dbg !107
  %nodes = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 21, !dbg !108
  %0 = load ptr, ptr %nodes, align 8, !dbg !108, !tbaa !109
  call void @llvm.dbg.value(metadata ptr %0, metadata !99, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata ptr %0, metadata !102, metadata !DIExpression()), !dbg !107
  %incdec.ptr = getelementptr inbounds %struct.node, ptr %0, i64 1, !dbg !116
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !99, metadata !DIExpression()), !dbg !107
  %basic_arc = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 6, !dbg !117
  store ptr null, ptr %basic_arc, align 8, !dbg !118, !tbaa !119
  %pred = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 3, !dbg !122
  store ptr null, ptr %pred, align 8, !dbg !123, !tbaa !124
  %child = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, !dbg !125
  store ptr %incdec.ptr, ptr %child, align 8, !dbg !126, !tbaa !127
  %sibling = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 4, !dbg !128
  %n = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 2, !dbg !129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %sibling, i8 0, i64 16, i1 false), !dbg !130
  %1 = load i64, ptr %n, align 8, !dbg !129, !tbaa !131
  %add = add nsw i64 %1, 1, !dbg !132
  %depth = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 11, !dbg !133
  store i64 %add, ptr %depth, align 8, !dbg !134, !tbaa !135
  %orientation = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1, !dbg !136
  store i32 0, ptr %orientation, align 8, !dbg !137, !tbaa !138
  store i64 -100000000, ptr %0, align 8, !dbg !139, !tbaa !140
  %flow = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 10, !dbg !141
  store i64 0, ptr %flow, align 8, !dbg !142, !tbaa !143
  %arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 23, !dbg !144
  %2 = load ptr, ptr %arcs, align 8, !dbg !144, !tbaa !145
  call void @llvm.dbg.value(metadata ptr %2, metadata !103, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()), !dbg !107
  %m = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 5
  %3 = load i64, ptr %m, align 8, !tbaa !146
  call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()), !dbg !107
  %cmp133 = icmp sgt i64 %3, 0, !dbg !147
  br i1 %cmp133, label %for.body, label %for.end, !dbg !150

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !106, metadata !DIExpression()), !dbg !107
  %ident = getelementptr inbounds %struct.arc, ptr %2, i64 %indvars.iv, i32 4, !dbg !151
  %4 = load i16, ptr %ident, align 8, !dbg !151, !tbaa !153
  %cmp3.not = icmp eq i16 %4, -1, !dbg !156
  br i1 %cmp3.not, label %for.inc, label %if.then, !dbg !157

if.then:                                          ; preds = %for.body
  store i16 1, ptr %ident, align 8, !dbg !158, !tbaa !153
  br label %for.inc, !dbg !159

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !160
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !106, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %3, !dbg !147
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !150, !llvm.loop !161

for.end:                                          ; preds = %for.inc, %entry
  %dummy_arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 26, !dbg !165
  %5 = load ptr, ptr %dummy_arcs, align 8, !dbg !165, !tbaa !166
  call void @llvm.dbg.value(metadata ptr %5, metadata !103, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()), !dbg !107
  %cmp11136 = icmp sgt i64 %1, 0, !dbg !167
  br i1 %cmp11136, label %for.body13, label %for.end63, !dbg !170

for.body13:                                       ; preds = %for.end, %for.body13
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %for.body13 ], [ 0, %for.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv140, metadata !106, metadata !DIExpression()), !dbg !107
  %arrayidx15 = getelementptr inbounds %struct.arc, ptr %5, i64 %indvars.iv140, !dbg !171
  %arrayidx17 = getelementptr inbounds %struct.node, ptr %incdec.ptr, i64 %indvars.iv140, !dbg !173
  %basic_arc18 = getelementptr inbounds %struct.node, ptr %arrayidx17, i64 0, i32 6, !dbg !174
  store ptr %arrayidx15, ptr %basic_arc18, align 8, !dbg !175, !tbaa !119
  %pred21 = getelementptr inbounds %struct.node, ptr %arrayidx17, i64 0, i32 3, !dbg !176
  store ptr %0, ptr %pred21, align 8, !dbg !177, !tbaa !124
  %child24 = getelementptr inbounds %struct.node, ptr %arrayidx17, i64 0, i32 2, !dbg !178
  store ptr null, ptr %child24, align 8, !dbg !179, !tbaa !127
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1, !dbg !180
  %arrayidx27 = getelementptr inbounds %struct.node, ptr %incdec.ptr, i64 %indvars.iv.next141, !dbg !181
  %sibling30 = getelementptr inbounds %struct.node, ptr %arrayidx17, i64 0, i32 4, !dbg !182
  store ptr %arrayidx27, ptr %sibling30, align 8, !dbg !183, !tbaa !184
  %arrayidx32 = getelementptr inbounds %struct.node, ptr %0, i64 %indvars.iv140, !dbg !185
  %sibling_prev35 = getelementptr inbounds %struct.node, ptr %arrayidx17, i64 0, i32 5, !dbg !186
  store ptr %arrayidx32, ptr %sibling_prev35, align 8, !dbg !187, !tbaa !188
  %depth38 = getelementptr inbounds %struct.node, ptr %arrayidx17, i64 0, i32 11, !dbg !189
  store i64 1, ptr %depth38, align 8, !dbg !190, !tbaa !135
  %cost = getelementptr inbounds %struct.arc, ptr %5, i64 %indvars.iv140, i32 1, !dbg !191
  store i64 100000000, ptr %cost, align 8, !dbg !192, !tbaa !193
  %ident43 = getelementptr inbounds %struct.arc, ptr %5, i64 %indvars.iv140, i32 4, !dbg !194
  store i16 0, ptr %ident43, align 8, !dbg !195, !tbaa !153
  %orientation46 = getelementptr inbounds %struct.node, ptr %arrayidx17, i64 0, i32 1, !dbg !196
  store i32 1, ptr %orientation46, align 8, !dbg !197, !tbaa !138
  store i64 0, ptr %arrayidx17, align 8, !dbg !198, !tbaa !140
  %tail = getelementptr inbounds %struct.arc, ptr %5, i64 %indvars.iv140, i32 2, !dbg !199
  store ptr %arrayidx17, ptr %tail, align 8, !dbg !200, !tbaa !201
  %head = getelementptr inbounds %struct.arc, ptr %5, i64 %indvars.iv140, i32 3, !dbg !202
  store ptr %0, ptr %head, align 8, !dbg !203, !tbaa !204
  store i32 -2, ptr %arrayidx15, align 8, !dbg !205, !tbaa !206
  %flow60 = getelementptr inbounds %struct.node, ptr %arrayidx17, i64 0, i32 10, !dbg !207
  store i64 0, ptr %flow60, align 8, !dbg !208, !tbaa !143
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next141, metadata !106, metadata !DIExpression()), !dbg !107
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %1, !dbg !167
  br i1 %exitcond144.not, label %for.end63, label %for.body13, !dbg !170, !llvm.loop !209

for.end63:                                        ; preds = %for.body13, %for.end
  call void @llvm.dbg.value(metadata ptr %0, metadata !99, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !102, metadata !DIExpression()), !dbg !107
  %sibling68 = getelementptr inbounds %struct.node, ptr %0, i64 %1, i32 4, !dbg !211
  store ptr null, ptr %sibling68, align 8, !dbg !212, !tbaa !184
  %sibling_prev69 = getelementptr inbounds %struct.node, ptr %0, i64 1, i32 5, !dbg !213
  store ptr null, ptr %sibling_prev69, align 8, !dbg !214, !tbaa !188
  ret i64 0, !dbg !215
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/pstart.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r", checksumkind: CSK_MD5, checksum: "28f14a7fc69dd1d74587ffb54fd767c4")
!2 = !{!3, !5, !10}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !4, line: 98, baseType: !5)
!4 = !DIFile(filename: "apps/505.mcf_r/src/defines.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "05eeb7bba098b08025cbe048b289d372")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 27, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !8, line: 44, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!9 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !4, line: 97, baseType: !5)
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!18 = distinct !DISubprogram(name: "primal_start_artificial", scope: !19, file: !19, line: 30, type: !20, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !97)
!19 = !DIFile(filename: "apps/505.mcf_r/src/pstart.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28f14a7fc69dd1d74587ffb54fd767c4")
!20 = !DISubroutineType(types: !21)
!21 = !{!5, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !4, line: 206, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !4, line: 181, size: 5184, elements: !25)
!25 = !{!26, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !51, !52, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !24, file: !4, line: 183, baseType: !27, size: 1600)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1600, elements: !29)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30}
!30 = !DISubrange(count: 200)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !24, file: !4, line: 184, baseType: !27, size: 1600, offset: 1600)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !24, file: !4, line: 185, baseType: !5, size: 64, offset: 3200)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !24, file: !4, line: 185, baseType: !5, size: 64, offset: 3264)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !24, file: !4, line: 186, baseType: !5, size: 64, offset: 3328)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !24, file: !4, line: 186, baseType: !5, size: 64, offset: 3392)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !24, file: !4, line: 186, baseType: !5, size: 64, offset: 3456)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !24, file: !4, line: 186, baseType: !5, size: 64, offset: 3520)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "max_residual_new_m", scope: !24, file: !4, line: 187, baseType: !5, size: 64, offset: 3584)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "max_new_m", scope: !24, file: !4, line: 187, baseType: !5, size: 64, offset: 3648)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !24, file: !4, line: 189, baseType: !5, size: 64, offset: 3712)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !24, file: !4, line: 190, baseType: !5, size: 64, offset: 3776)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !24, file: !4, line: 191, baseType: !5, size: 64, offset: 3840)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !24, file: !4, line: 192, baseType: !5, size: 64, offset: 3904)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !24, file: !4, line: 193, baseType: !5, size: 64, offset: 3968)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !24, file: !4, line: 194, baseType: !5, size: 64, offset: 4032)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !24, file: !4, line: 195, baseType: !5, size: 64, offset: 4096)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !24, file: !4, line: 196, baseType: !5, size: 64, offset: 4160)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !24, file: !4, line: 197, baseType: !5, size: 64, offset: 4224)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !24, file: !4, line: 198, baseType: !50, size: 64, offset: 4288)
!50 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !24, file: !4, line: 199, baseType: !3, size: 64, offset: 4352)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !24, file: !4, line: 200, baseType: !53, size: 64, offset: 4416)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !4, line: 135, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !4, line: 149, size: 832, elements: !56)
!56 = !{!57, !58, !60, !61, !62, !63, !64, !79, !80, !81, !82, !83, !84, !85}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !55, file: !4, line: 151, baseType: !3, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !55, file: !4, line: 152, baseType: !59, size: 32, offset: 64)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !55, file: !4, line: 153, baseType: !53, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !55, file: !4, line: 154, baseType: !53, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !55, file: !4, line: 155, baseType: !53, size: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !55, file: !4, line: 156, baseType: !53, size: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !55, file: !4, line: 157, baseType: !65, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !4, line: 138, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !4, line: 168, size: 576, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !75, !76, !77, !78}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !67, file: !4, line: 170, baseType: !59, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !67, file: !4, line: 171, baseType: !3, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !67, file: !4, line: 172, baseType: !53, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !67, file: !4, line: 172, baseType: !53, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !67, file: !4, line: 173, baseType: !74, size: 16, offset: 256)
!74 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !67, file: !4, line: 174, baseType: !65, size: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !67, file: !4, line: 174, baseType: !65, size: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !67, file: !4, line: 175, baseType: !10, size: 64, offset: 448)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !67, file: !4, line: 176, baseType: !3, size: 64, offset: 512)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !55, file: !4, line: 158, baseType: !65, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !55, file: !4, line: 158, baseType: !65, size: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !55, file: !4, line: 159, baseType: !65, size: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !55, file: !4, line: 160, baseType: !10, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !55, file: !4, line: 161, baseType: !5, size: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !55, file: !4, line: 162, baseType: !59, size: 32, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !55, file: !4, line: 163, baseType: !59, size: 32, offset: 800)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !24, file: !4, line: 200, baseType: !53, size: 64, offset: 4480)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !24, file: !4, line: 201, baseType: !65, size: 64, offset: 4544)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !24, file: !4, line: 201, baseType: !65, size: 64, offset: 4608)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sorted_arcs", scope: !24, file: !4, line: 201, baseType: !65, size: 64, offset: 4672)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !24, file: !4, line: 202, baseType: !65, size: 64, offset: 4736)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !24, file: !4, line: 202, baseType: !65, size: 64, offset: 4800)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !24, file: !4, line: 203, baseType: !5, size: 64, offset: 4864)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !24, file: !4, line: 204, baseType: !5, size: 64, offset: 4928)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "nr_group", scope: !24, file: !4, line: 205, baseType: !5, size: 64, offset: 4992)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "full_groups", scope: !24, file: !4, line: 205, baseType: !5, size: 64, offset: 5056)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !24, file: !4, line: 205, baseType: !5, size: 64, offset: 5120)
!97 = !{!98, !99, !102, !103, !106}
!98 = !DILocalVariable(name: "net", arg: 1, scope: !18, file: !19, line: 30, type: !22)
!99 = !DILocalVariable(name: "node", scope: !18, file: !19, line: 36, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !4, line: 134, baseType: !55)
!102 = !DILocalVariable(name: "root", scope: !18, file: !19, line: 36, type: !100)
!103 = !DILocalVariable(name: "arc", scope: !18, file: !19, line: 37, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_t", file: !4, line: 137, baseType: !67)
!106 = !DILocalVariable(name: "i", scope: !18, file: !19, line: 38, type: !59)
!107 = !DILocation(line: 0, scope: !18)
!108 = !DILocation(line: 40, column: 24, scope: !18)
!109 = !{!110, !115, i64 552}
!110 = !{!"network", !111, i64 0, !111, i64 200, !113, i64 400, !113, i64 408, !113, i64 416, !113, i64 424, !113, i64 432, !113, i64 440, !113, i64 448, !113, i64 456, !113, i64 464, !113, i64 472, !113, i64 480, !113, i64 488, !113, i64 496, !113, i64 504, !113, i64 512, !113, i64 520, !113, i64 528, !114, i64 536, !113, i64 544, !115, i64 552, !115, i64 560, !115, i64 568, !115, i64 576, !115, i64 584, !115, i64 592, !115, i64 600, !113, i64 608, !113, i64 616, !113, i64 624, !113, i64 632, !113, i64 640}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !{!"long", !111, i64 0}
!114 = !{!"double", !111, i64 0}
!115 = !{!"any pointer", !111, i64 0}
!116 = !DILocation(line: 40, column: 35, scope: !18)
!117 = !DILocation(line: 41, column: 11, scope: !18)
!118 = !DILocation(line: 41, column: 21, scope: !18)
!119 = !{!120, !115, i64 48}
!120 = !{!"node", !113, i64 0, !121, i64 8, !115, i64 16, !115, i64 24, !115, i64 32, !115, i64 40, !115, i64 48, !115, i64 56, !115, i64 64, !115, i64 72, !113, i64 80, !113, i64 88, !121, i64 96, !121, i64 100}
!121 = !{!"int", !111, i64 0}
!122 = !DILocation(line: 42, column: 11, scope: !18)
!123 = !DILocation(line: 42, column: 16, scope: !18)
!124 = !{!120, !115, i64 24}
!125 = !DILocation(line: 43, column: 11, scope: !18)
!126 = !DILocation(line: 43, column: 17, scope: !18)
!127 = !{!120, !115, i64 16}
!128 = !DILocation(line: 44, column: 11, scope: !18)
!129 = !DILocation(line: 46, column: 25, scope: !18)
!130 = !DILocation(line: 45, column: 24, scope: !18)
!131 = !{!110, !113, i64 400}
!132 = !DILocation(line: 46, column: 28, scope: !18)
!133 = !DILocation(line: 46, column: 11, scope: !18)
!134 = !DILocation(line: 46, column: 17, scope: !18)
!135 = !{!120, !113, i64 88}
!136 = !DILocation(line: 47, column: 11, scope: !18)
!137 = !DILocation(line: 47, column: 23, scope: !18)
!138 = !{!120, !121, i64 8}
!139 = !DILocation(line: 48, column: 21, scope: !18)
!140 = !{!120, !113, i64 0}
!141 = !DILocation(line: 49, column: 11, scope: !18)
!142 = !DILocation(line: 49, column: 16, scope: !18)
!143 = !{!120, !113, i64 80}
!144 = !DILocation(line: 51, column: 16, scope: !18)
!145 = !{!110, !115, i64 568}
!146 = !{!110, !113, i64 424}
!147 = !DILocation(line: 55, column: 19, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !19, line: 55, column: 5)
!149 = distinct !DILexicalBlock(scope: !18, file: !19, line: 55, column: 5)
!150 = !DILocation(line: 55, column: 5, scope: !149)
!151 = !DILocation(line: 56, column: 20, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !19, line: 56, column: 13)
!153 = !{!154, !155, i64 32}
!154 = !{!"arc", !121, i64 0, !113, i64 8, !115, i64 16, !115, i64 24, !155, i64 32, !115, i64 40, !115, i64 48, !113, i64 56, !113, i64 64}
!155 = !{!"short", !111, i64 0}
!156 = !DILocation(line: 56, column: 26, scope: !152)
!157 = !DILocation(line: 56, column: 13, scope: !148)
!158 = !DILocation(line: 57, column: 26, scope: !152)
!159 = !DILocation(line: 57, column: 13, scope: !152)
!160 = !DILocation(line: 55, column: 30, scope: !148)
!161 = distinct !{!161, !150, !162, !163, !164}
!162 = !DILocation(line: 57, column: 28, scope: !149)
!163 = !{!"llvm.loop.mustprogress"}
!164 = !{!"llvm.loop.unroll.disable"}
!165 = !DILocation(line: 59, column: 16, scope: !18)
!166 = !{!110, !115, i64 592}
!167 = !DILocation(line: 63, column: 20, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !19, line: 63, column: 5)
!169 = distinct !DILexicalBlock(scope: !18, file: !19, line: 63, column: 5)
!170 = !DILocation(line: 63, column: 5, scope: !169)
!171 = !DILocation(line: 66, column: 30, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !19, line: 64, column: 5)
!173 = !DILocation(line: 66, column: 9, scope: !172)
!174 = !DILocation(line: 66, column: 17, scope: !172)
!175 = !DILocation(line: 66, column: 27, scope: !172)
!176 = !DILocation(line: 67, column: 17, scope: !172)
!177 = !DILocation(line: 67, column: 22, scope: !172)
!178 = !DILocation(line: 68, column: 17, scope: !172)
!179 = !DILocation(line: 68, column: 23, scope: !172)
!180 = !DILocation(line: 69, column: 35, scope: !172)
!181 = !DILocation(line: 69, column: 28, scope: !172)
!182 = !DILocation(line: 69, column: 17, scope: !172)
!183 = !DILocation(line: 69, column: 25, scope: !172)
!184 = !{!120, !115, i64 32}
!185 = !DILocation(line: 70, column: 33, scope: !172)
!186 = !DILocation(line: 70, column: 17, scope: !172)
!187 = !DILocation(line: 70, column: 30, scope: !172)
!188 = !{!120, !115, i64 40}
!189 = !DILocation(line: 71, column: 17, scope: !172)
!190 = !DILocation(line: 71, column: 23, scope: !172)
!191 = !DILocation(line: 73, column: 16, scope: !172)
!192 = !DILocation(line: 73, column: 21, scope: !172)
!193 = !{!154, !113, i64 8}
!194 = !DILocation(line: 74, column: 16, scope: !172)
!195 = !DILocation(line: 74, column: 22, scope: !172)
!196 = !DILocation(line: 76, column: 17, scope: !172)
!197 = !DILocation(line: 76, column: 29, scope: !172)
!198 = !DILocation(line: 77, column: 27, scope: !172)
!199 = !DILocation(line: 78, column: 16, scope: !172)
!200 = !DILocation(line: 78, column: 21, scope: !172)
!201 = !{!154, !115, i64 16}
!202 = !DILocation(line: 79, column: 16, scope: !172)
!203 = !DILocation(line: 79, column: 21, scope: !172)
!204 = !{!154, !115, i64 24}
!205 = !DILocation(line: 80, column: 19, scope: !172)
!206 = !{!154, !121, i64 0}
!207 = !DILocation(line: 81, column: 17, scope: !172)
!208 = !DILocation(line: 81, column: 22, scope: !172)
!209 = distinct !{!209, !170, !210, !163, !164}
!210 = !DILocation(line: 83, column: 5, scope: !169)
!211 = !DILocation(line: 87, column: 18, scope: !18)
!212 = !DILocation(line: 87, column: 26, scope: !18)
!213 = !DILocation(line: 88, column: 11, scope: !18)
!214 = !DILocation(line: 88, column: 24, scope: !18)
!215 = !DILocation(line: 90, column: 5, scope: !18)
