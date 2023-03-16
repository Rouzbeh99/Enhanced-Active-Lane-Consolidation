; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r/llvm-ir/505.mcf_r_bc/src/output.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"***\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%.0f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @write_circulations(ptr nocapture noundef readonly %outfile, ptr noundef %net) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata ptr %outfile, metadata !100, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata ptr %net, metadata !101, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata ptr null, metadata !102, metadata !DIExpression()), !dbg !166
  %stop_arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 24, !dbg !167
  %0 = load ptr, ptr %stop_arcs, align 8, !dbg !167, !tbaa !168
  %m_impl = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 7, !dbg !175
  %1 = load i64, ptr %m_impl, align 8, !dbg !175, !tbaa !176
  %idx.neg = sub i64 0, %1, !dbg !177
  %add.ptr = getelementptr inbounds %struct.arc, ptr %0, i64 %idx.neg, !dbg !177
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !165, metadata !DIExpression()), !dbg !166
  %call = tail call ptr @fopen(ptr noundef %outfile, ptr noundef nonnull @.str), !dbg !178
  call void @llvm.dbg.value(metadata ptr %call, metadata !102, metadata !DIExpression()), !dbg !166
  %cmp = icmp eq ptr %call, null, !dbg !180
  br i1 %cmp, label %cleanup, label %if.end, !dbg !181

if.end:                                           ; preds = %entry
  tail call void @refresh_neighbour_lists(ptr noundef nonnull %net, ptr noundef nonnull @getArcPosition) #5, !dbg !182
  %nodes = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 21, !dbg !183
  %2 = load ptr, ptr %nodes, align 8, !dbg !183, !tbaa !185
  %n = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 2, !dbg !186
  %3 = load i64, ptr %n, align 8, !dbg !186, !tbaa !187
  %firstout = getelementptr inbounds %struct.node, ptr %2, i64 %3, i32 7, !dbg !188
  call void @llvm.dbg.value(metadata ptr undef, metadata !160, metadata !DIExpression()), !dbg !166
  %block.064 = load ptr, ptr %firstout, align 8, !dbg !189, !tbaa !190
  call void @llvm.dbg.value(metadata ptr %block.064, metadata !160, metadata !DIExpression()), !dbg !166
  %tobool.not65 = icmp eq ptr %block.064, null, !dbg !191
  br i1 %tobool.not65, label %cleanup.sink.split, label %for.body.lr.ph, !dbg !191

for.body.lr.ph:                                   ; preds = %if.end
  %n_trips = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 3
  br label %for.body, !dbg !191

for.body:                                         ; preds = %for.body.lr.ph, %for.inc30
  %block.066 = phi ptr [ %block.064, %for.body.lr.ph ], [ %block.0, %for.inc30 ]
  %flow = getelementptr inbounds %struct.arc, ptr %block.066, i64 0, i32 7, !dbg !192
  %4 = load i64, ptr %flow, align 8, !dbg !192, !tbaa !196
  %tobool1.not = icmp eq i64 %4, 0, !dbg !200
  br i1 %tobool1.not, label %for.inc30, label %if.then2, !dbg !201

if.then2:                                         ; preds = %for.body
  %5 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 3, i64 1, ptr nonnull %call), !dbg !202
  call void @llvm.dbg.value(metadata ptr %block.066, metadata !163, metadata !DIExpression()), !dbg !166
  br label %while.body, !dbg !204

while.body:                                       ; preds = %if.then2, %if.end23
  %arc.063 = phi ptr [ %block.066, %if.then2 ], [ %arc2.061, %if.end23 ]
  call void @llvm.dbg.value(metadata ptr %arc.063, metadata !163, metadata !DIExpression()), !dbg !166
  %cmp5.not = icmp ult ptr %arc.063, %add.ptr, !dbg !205
  br i1 %cmp5.not, label %if.end8, label %if.then6, !dbg !208

if.then6:                                         ; preds = %while.body
  %6 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 4, i64 1, ptr nonnull %call), !dbg !209
  br label %if.end8, !dbg !209

if.end8:                                          ; preds = %if.then6, %while.body
  %head = getelementptr inbounds %struct.arc, ptr %arc.063, i64 0, i32 3, !dbg !210
  %7 = load ptr, ptr %head, align 8, !dbg !210, !tbaa !211
  %number = getelementptr inbounds %struct.node, ptr %7, i64 0, i32 12, !dbg !212
  %8 = load i32, ptr %number, align 8, !dbg !212, !tbaa !213
  %sub = sub nsw i32 0, %8, !dbg !215
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call, ptr noundef nonnull @.str.3, i32 noundef %sub), !dbg !216
  %9 = load ptr, ptr %head, align 8, !dbg !217, !tbaa !211
  %10 = load i64, ptr %n_trips, align 8, !dbg !218, !tbaa !219
  %firstout12 = getelementptr inbounds %struct.node, ptr %9, i64 %10, i32 7, !dbg !220
  call void @llvm.dbg.value(metadata ptr undef, metadata !164, metadata !DIExpression()), !dbg !166
  %arc2.059 = load ptr, ptr %firstout12, align 8, !dbg !221, !tbaa !190
  call void @llvm.dbg.value(metadata ptr %arc2.059, metadata !164, metadata !DIExpression()), !dbg !166
  %tobool14.not60 = icmp eq ptr %arc2.059, null, !dbg !222
  br i1 %tobool14.not60, label %cleanup.sink.split, label %for.body15, !dbg !222

for.body15:                                       ; preds = %if.end8, %for.inc
  %arc2.061 = phi ptr [ %arc2.0, %for.inc ], [ %arc2.059, %if.end8 ]
  %flow16 = getelementptr inbounds %struct.arc, ptr %arc2.061, i64 0, i32 7, !dbg !224
  %11 = load i64, ptr %flow16, align 8, !dbg !224, !tbaa !196
  %tobool17.not = icmp eq i64 %11, 0, !dbg !227
  br i1 %tobool17.not, label %for.inc, label %if.end23, !dbg !228

for.inc:                                          ; preds = %for.body15
  %nextout = getelementptr inbounds %struct.arc, ptr %arc2.061, i64 0, i32 5, !dbg !229
  call void @llvm.dbg.value(metadata ptr undef, metadata !164, metadata !DIExpression()), !dbg !166
  %arc2.0 = load ptr, ptr %nextout, align 8, !dbg !221, !tbaa !190
  call void @llvm.dbg.value(metadata ptr %arc2.0, metadata !164, metadata !DIExpression()), !dbg !166
  %tobool14.not = icmp eq ptr %arc2.0, null, !dbg !222
  br i1 %tobool14.not, label %cleanup.sink.split, label %for.body15, !dbg !222, !llvm.loop !230

if.end23:                                         ; preds = %for.body15
  %head24 = getelementptr inbounds %struct.arc, ptr %arc2.061, i64 0, i32 3, !dbg !234
  %12 = load ptr, ptr %head24, align 8, !dbg !234, !tbaa !211
  %number25 = getelementptr inbounds %struct.node, ptr %12, i64 0, i32 12, !dbg !236
  %13 = load i32, ptr %number25, align 8, !dbg !236, !tbaa !213
  %tobool26.not = icmp eq i32 %13, 0, !dbg !237
  call void @llvm.dbg.value(metadata ptr undef, metadata !163, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata ptr undef, metadata !163, metadata !DIExpression()), !dbg !166
  %tobool4.not73 = icmp eq ptr %arc2.061, null, !dbg !204
  %tobool4.not = select i1 %tobool26.not, i1 true, i1 %tobool4.not73, !dbg !204
  br i1 %tobool4.not, label %for.inc30, label %while.body, !dbg !204

for.inc30:                                        ; preds = %if.end23, %for.body
  %nextout31 = getelementptr inbounds %struct.arc, ptr %block.066, i64 0, i32 5, !dbg !238
  call void @llvm.dbg.value(metadata ptr undef, metadata !160, metadata !DIExpression()), !dbg !166
  %block.0 = load ptr, ptr %nextout31, align 8, !dbg !189, !tbaa !190
  call void @llvm.dbg.value(metadata ptr %block.0, metadata !160, metadata !DIExpression()), !dbg !166
  %tobool.not = icmp eq ptr %block.0, null, !dbg !191
  br i1 %tobool.not, label %cleanup.sink.split, label %for.body, !dbg !191, !llvm.loop !239

cleanup.sink.split:                               ; preds = %for.inc30, %if.end8, %for.inc, %if.end
  %retval.0.ph = phi i64 [ 0, %if.end ], [ -1, %for.inc ], [ -1, %if.end8 ], [ 0, %for.inc30 ]
  %call33 = tail call i32 @fclose(ptr noundef nonnull %call), !dbg !166
  br label %cleanup, !dbg !241

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !166
  ret i64 %retval.0, !dbg !241
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

declare !dbg !242 void @refresh_neighbour_lists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @getArcPosition(ptr noundef, i64 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !250 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @write_objective_value(ptr nocapture noundef readonly %outfile, ptr noundef %net) local_unnamed_addr #0 !dbg !254 {
entry:
  call void @llvm.dbg.value(metadata ptr %outfile, metadata !256, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr %net, metadata !257, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr null, metadata !258, metadata !DIExpression()), !dbg !259
  %call = tail call ptr @fopen(ptr noundef %outfile, ptr noundef nonnull @.str), !dbg !260
  call void @llvm.dbg.value(metadata ptr %call, metadata !258, metadata !DIExpression()), !dbg !259
  %cmp = icmp eq ptr %call, null, !dbg !262
  br i1 %cmp, label %cleanup, label %if.end, !dbg !263

if.end:                                           ; preds = %entry
  %call1 = tail call double @flow_cost(ptr noundef %net) #5, !dbg !264
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call, ptr noundef nonnull @.str.4, double noundef %call1), !dbg !265
  %call3 = tail call i32 @fclose(ptr noundef nonnull %call), !dbg !266
  br label %cleanup, !dbg !267

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ 0, %if.end ], [ -1, %entry ], !dbg !259
  ret i64 %retval.0, !dbg !268
}

declare !dbg !269 double @flow_cost(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/output.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r", checksumkind: CSK_MD5, checksum: "e40bfd568e64d7c26b1870c04422f9c2")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!11 = distinct !DISubprogram(name: "write_circulations", scope: !12, file: !12, line: 31, type: !13, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !99)
!12 = !DIFile(filename: "apps/505.mcf_r/src/output.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e40bfd568e64d7c26b1870c04422f9c2")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !20, !22}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !16, line: 27, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !18, line: 44, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!19 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !24, line: 206, baseType: !25)
!24 = !DIFile(filename: "apps/505.mcf_r/src/defines.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "05eeb7bba098b08025cbe048b289d372")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !24, line: 181, size: 5184, elements: !26)
!26 = !{!27, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !51, !53, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !25, file: !24, line: 183, baseType: !28, size: 1600)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1600, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 200)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !25, file: !24, line: 184, baseType: !28, size: 1600, offset: 1600)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !25, file: !24, line: 185, baseType: !15, size: 64, offset: 3200)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !25, file: !24, line: 185, baseType: !15, size: 64, offset: 3264)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !25, file: !24, line: 186, baseType: !15, size: 64, offset: 3328)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !25, file: !24, line: 186, baseType: !15, size: 64, offset: 3392)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !25, file: !24, line: 186, baseType: !15, size: 64, offset: 3456)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !25, file: !24, line: 186, baseType: !15, size: 64, offset: 3520)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "max_residual_new_m", scope: !25, file: !24, line: 187, baseType: !15, size: 64, offset: 3584)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "max_new_m", scope: !25, file: !24, line: 187, baseType: !15, size: 64, offset: 3648)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !25, file: !24, line: 189, baseType: !15, size: 64, offset: 3712)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !25, file: !24, line: 190, baseType: !15, size: 64, offset: 3776)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !25, file: !24, line: 191, baseType: !15, size: 64, offset: 3840)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !25, file: !24, line: 192, baseType: !15, size: 64, offset: 3904)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !25, file: !24, line: 193, baseType: !15, size: 64, offset: 3968)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !25, file: !24, line: 194, baseType: !15, size: 64, offset: 4032)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !25, file: !24, line: 195, baseType: !15, size: 64, offset: 4096)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !25, file: !24, line: 196, baseType: !15, size: 64, offset: 4160)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !25, file: !24, line: 197, baseType: !15, size: 64, offset: 4224)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !25, file: !24, line: 198, baseType: !50, size: 64, offset: 4288)
!50 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !25, file: !24, line: 199, baseType: !52, size: 64, offset: 4352)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !24, line: 98, baseType: !15)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !25, file: !24, line: 200, baseType: !54, size: 64, offset: 4416)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !24, line: 135, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !24, line: 149, size: 832, elements: !57)
!57 = !{!58, !59, !61, !62, !63, !64, !65, !81, !82, !83, !84, !85, !86, !87}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !56, file: !24, line: 151, baseType: !52, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !56, file: !24, line: 152, baseType: !60, size: 32, offset: 64)
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !56, file: !24, line: 153, baseType: !54, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !56, file: !24, line: 154, baseType: !54, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !56, file: !24, line: 155, baseType: !54, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !56, file: !24, line: 156, baseType: !54, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !56, file: !24, line: 157, baseType: !66, size: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !24, line: 138, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !24, line: 168, size: 576, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !76, !77, !78, !80}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !68, file: !24, line: 170, baseType: !60, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !68, file: !24, line: 171, baseType: !52, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !68, file: !24, line: 172, baseType: !54, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !68, file: !24, line: 172, baseType: !54, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !68, file: !24, line: 173, baseType: !75, size: 16, offset: 256)
!75 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !68, file: !24, line: 174, baseType: !66, size: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !68, file: !24, line: 174, baseType: !66, size: 64, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !68, file: !24, line: 175, baseType: !79, size: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !24, line: 97, baseType: !15)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !68, file: !24, line: 176, baseType: !52, size: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !56, file: !24, line: 158, baseType: !66, size: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !56, file: !24, line: 158, baseType: !66, size: 64, offset: 512)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !56, file: !24, line: 159, baseType: !66, size: 64, offset: 576)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !56, file: !24, line: 160, baseType: !79, size: 64, offset: 640)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !56, file: !24, line: 161, baseType: !15, size: 64, offset: 704)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !56, file: !24, line: 162, baseType: !60, size: 32, offset: 768)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !56, file: !24, line: 163, baseType: !60, size: 32, offset: 800)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !25, file: !24, line: 200, baseType: !54, size: 64, offset: 4480)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !25, file: !24, line: 201, baseType: !66, size: 64, offset: 4544)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !25, file: !24, line: 201, baseType: !66, size: 64, offset: 4608)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sorted_arcs", scope: !25, file: !24, line: 201, baseType: !66, size: 64, offset: 4672)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !25, file: !24, line: 202, baseType: !66, size: 64, offset: 4736)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !25, file: !24, line: 202, baseType: !66, size: 64, offset: 4800)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !25, file: !24, line: 203, baseType: !15, size: 64, offset: 4864)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !25, file: !24, line: 204, baseType: !15, size: 64, offset: 4928)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "nr_group", scope: !25, file: !24, line: 205, baseType: !15, size: 64, offset: 4992)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "full_groups", scope: !25, file: !24, line: 205, baseType: !15, size: 64, offset: 5056)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !25, file: !24, line: 205, baseType: !15, size: 64, offset: 5120)
!99 = !{!100, !101, !102, !160, !163, !164, !165}
!100 = !DILocalVariable(name: "outfile", arg: 1, scope: !11, file: !12, line: 32, type: !20)
!101 = !DILocalVariable(name: "net", arg: 2, scope: !11, file: !12, line: 33, type: !22)
!102 = !DILocalVariable(name: "out", scope: !11, file: !12, line: 41, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !124, !126, !127, !128, !130, !132, !134, !138, !141, !143, !146, !149, !150, !151, !155, !156}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !106, file: !107, line: 51, baseType: !60, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !106, file: !107, line: 54, baseType: !20, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !106, file: !107, line: 55, baseType: !20, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !106, file: !107, line: 56, baseType: !20, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !106, file: !107, line: 57, baseType: !20, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !106, file: !107, line: 58, baseType: !20, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !106, file: !107, line: 59, baseType: !20, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !106, file: !107, line: 60, baseType: !20, size: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !106, file: !107, line: 61, baseType: !20, size: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !106, file: !107, line: 64, baseType: !20, size: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !106, file: !107, line: 65, baseType: !20, size: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !106, file: !107, line: 66, baseType: !20, size: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !106, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !107, line: 36, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !106, file: !107, line: 70, baseType: !125, size: 64, offset: 832)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !106, file: !107, line: 72, baseType: !60, size: 32, offset: 896)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !106, file: !107, line: 73, baseType: !60, size: 32, offset: 928)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !106, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !18, line: 152, baseType: !19)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !106, file: !107, line: 77, baseType: !131, size: 16, offset: 1024)
!131 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !106, file: !107, line: 78, baseType: !133, size: 8, offset: 1040)
!133 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !106, file: !107, line: 79, baseType: !135, size: 8, offset: 1048)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 1)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !106, file: !107, line: 81, baseType: !139, size: 64, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !107, line: 43, baseType: null)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !106, file: !107, line: 89, baseType: !142, size: 64, offset: 1152)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !18, line: 153, baseType: !19)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !106, file: !107, line: 91, baseType: !144, size: 64, offset: 1216)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !107, line: 37, flags: DIFlagFwdDecl)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !106, file: !107, line: 92, baseType: !147, size: 64, offset: 1280)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !107, line: 38, flags: DIFlagFwdDecl)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !106, file: !107, line: 93, baseType: !125, size: 64, offset: 1344)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !106, file: !107, line: 94, baseType: !3, size: 64, offset: 1408)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !106, file: !107, line: 95, baseType: !152, size: 64, offset: 1472)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 46, baseType: !154)
!153 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!154 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !106, file: !107, line: 96, baseType: !60, size: 32, offset: 1536)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !106, file: !107, line: 98, baseType: !157, size: 160, offset: 1568)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 20)
!160 = !DILocalVariable(name: "block", scope: !11, file: !12, line: 42, type: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_t", file: !24, line: 137, baseType: !68)
!163 = !DILocalVariable(name: "arc", scope: !11, file: !12, line: 43, type: !161)
!164 = !DILocalVariable(name: "arc2", scope: !11, file: !12, line: 44, type: !161)
!165 = !DILocalVariable(name: "first_impl", scope: !11, file: !12, line: 45, type: !161)
!166 = !DILocation(line: 0, scope: !11)
!167 = !DILocation(line: 45, column: 28, scope: !11)
!168 = !{!169, !174, i64 576}
!169 = !{!"network", !170, i64 0, !170, i64 200, !172, i64 400, !172, i64 408, !172, i64 416, !172, i64 424, !172, i64 432, !172, i64 440, !172, i64 448, !172, i64 456, !172, i64 464, !172, i64 472, !172, i64 480, !172, i64 488, !172, i64 496, !172, i64 504, !172, i64 512, !172, i64 520, !172, i64 528, !173, i64 536, !172, i64 544, !174, i64 552, !174, i64 560, !174, i64 568, !174, i64 576, !174, i64 584, !174, i64 592, !174, i64 600, !172, i64 608, !172, i64 616, !172, i64 624, !172, i64 632, !172, i64 640}
!170 = !{!"omnipotent char", !171, i64 0}
!171 = !{!"Simple C/C++ TBAA"}
!172 = !{!"long", !170, i64 0}
!173 = !{!"double", !170, i64 0}
!174 = !{!"any pointer", !170, i64 0}
!175 = !DILocation(line: 45, column: 45, scope: !11)
!176 = !{!169, !172, i64 440}
!177 = !DILocation(line: 45, column: 38, scope: !11)
!178 = !DILocation(line: 47, column: 14, scope: !179)
!179 = distinct !DILexicalBlock(scope: !11, file: !12, line: 47, column: 6)
!180 = !DILocation(line: 47, column: 37, scope: !179)
!181 = !DILocation(line: 47, column: 6, scope: !11)
!182 = !DILocation(line: 50, column: 3, scope: !11)
!183 = !DILocation(line: 52, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !11, file: !12, line: 52, column: 3)
!185 = !{!169, !174, i64 552}
!186 = !DILocation(line: 52, column: 32, scope: !184)
!187 = !{!169, !172, i64 400}
!188 = !DILocation(line: 52, column: 35, scope: !184)
!189 = !DILocation(line: 0, scope: !184)
!190 = !{!174, !174, i64 0}
!191 = !DILocation(line: 52, column: 3, scope: !184)
!192 = !DILocation(line: 54, column: 16, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !12, line: 54, column: 9)
!194 = distinct !DILexicalBlock(scope: !195, file: !12, line: 53, column: 3)
!195 = distinct !DILexicalBlock(scope: !184, file: !12, line: 52, column: 3)
!196 = !{!197, !172, i64 56}
!197 = !{!"arc", !198, i64 0, !172, i64 8, !174, i64 16, !174, i64 24, !199, i64 32, !174, i64 40, !174, i64 48, !172, i64 56, !172, i64 64}
!198 = !{!"int", !170, i64 0}
!199 = !{!"short", !170, i64 0}
!200 = !DILocation(line: 54, column: 9, scope: !193)
!201 = !DILocation(line: 54, column: 9, scope: !194)
!202 = !DILocation(line: 56, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !193, file: !12, line: 55, column: 5)
!204 = !DILocation(line: 59, column: 7, scope: !203)
!205 = !DILocation(line: 61, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !12, line: 61, column: 13)
!207 = distinct !DILexicalBlock(scope: !203, file: !12, line: 60, column: 7)
!208 = !DILocation(line: 61, column: 13, scope: !207)
!209 = !DILocation(line: 62, column: 11, scope: !206)
!210 = !DILocation(line: 64, column: 38, scope: !207)
!211 = !{!197, !174, i64 24}
!212 = !DILocation(line: 64, column: 44, scope: !207)
!213 = !{!214, !198, i64 96}
!214 = !{!"node", !172, i64 0, !198, i64 8, !174, i64 16, !174, i64 24, !174, i64 32, !174, i64 40, !174, i64 48, !174, i64 56, !174, i64 64, !174, i64 72, !172, i64 80, !172, i64 88, !198, i64 96, !198, i64 100}
!215 = !DILocation(line: 64, column: 31, scope: !207)
!216 = !DILocation(line: 64, column: 9, scope: !207)
!217 = !DILocation(line: 65, column: 21, scope: !207)
!218 = !DILocation(line: 65, column: 31, scope: !207)
!219 = !{!169, !172, i64 408}
!220 = !DILocation(line: 65, column: 40, scope: !207)
!221 = !DILocation(line: 0, scope: !207)
!222 = !DILocation(line: 66, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !207, file: !12, line: 66, column: 9)
!224 = !DILocation(line: 67, column: 21, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !12, line: 67, column: 15)
!226 = distinct !DILexicalBlock(scope: !223, file: !12, line: 66, column: 9)
!227 = !DILocation(line: 67, column: 15, scope: !225)
!228 = !DILocation(line: 67, column: 15, scope: !226)
!229 = !DILocation(line: 66, column: 35, scope: !226)
!230 = distinct !{!230, !222, !231, !232, !233}
!231 = !DILocation(line: 68, column: 13, scope: !223)
!232 = !{!"llvm.loop.mustprogress"}
!233 = !{!"llvm.loop.unroll.disable"}
!234 = !DILocation(line: 75, column: 19, scope: !235)
!235 = distinct !DILexicalBlock(scope: !207, file: !12, line: 75, column: 13)
!236 = !DILocation(line: 75, column: 25, scope: !235)
!237 = !DILocation(line: 75, column: 13, scope: !235)
!238 = !DILocation(line: 52, column: 67, scope: !195)
!239 = distinct !{!239, !191, !240, !232, !233}
!240 = !DILocation(line: 81, column: 3, scope: !184)
!241 = !DILocation(line: 87, column: 1, scope: !11)
!242 = !DISubprogram(name: "refresh_neighbour_lists", scope: !243, file: !243, line: 31, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !249)
!243 = !DIFile(filename: "apps/505.mcf_r/src/mcfutil.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6fade418d230c2d9d39deb67b05e3ee3")
!244 = !DISubroutineType(types: !245)
!245 = !{null, !22, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!15, !22, !15}
!249 = !{}
!250 = !DISubprogram(name: "fclose", scope: !251, file: !251, line: 213, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !249)
!251 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!252 = !DISubroutineType(types: !253)
!253 = !{!60, !103}
!254 = distinct !DISubprogram(name: "write_objective_value", scope: !12, file: !12, line: 94, type: !13, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !255)
!255 = !{!256, !257, !258}
!256 = !DILocalVariable(name: "outfile", arg: 1, scope: !254, file: !12, line: 95, type: !20)
!257 = !DILocalVariable(name: "net", arg: 2, scope: !254, file: !12, line: 96, type: !22)
!258 = !DILocalVariable(name: "out", scope: !254, file: !12, line: 104, type: !103)
!259 = !DILocation(line: 0, scope: !254)
!260 = !DILocation(line: 106, column: 14, scope: !261)
!261 = distinct !DILexicalBlock(scope: !254, file: !12, line: 106, column: 6)
!262 = !DILocation(line: 106, column: 37, scope: !261)
!263 = !DILocation(line: 106, column: 6, scope: !254)
!264 = !DILocation(line: 109, column: 27, scope: !254)
!265 = !DILocation(line: 109, column: 3, scope: !254)
!266 = !DILocation(line: 111, column: 3, scope: !254)
!267 = !DILocation(line: 113, column: 3, scope: !254)
!268 = !DILocation(line: 114, column: 1, scope: !254)
!269 = !DISubprogram(name: "flow_cost", scope: !243, file: !243, line: 32, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !249)
!270 = !DISubroutineType(types: !271)
!271 = !{!50, !22}
