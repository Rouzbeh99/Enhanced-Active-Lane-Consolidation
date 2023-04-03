; ModuleID = 'raystack.c'
source_filename = "raystack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_struct = type { [4096 x i64], ptr, i64, i64, [4096 x i64] }
%struct.ray = type { i64, i64, i64, [3 x double], [3 x double], i64, ptr, i64, [3 x i64], [5 x %struct.rayinfo], float, float }
%struct.rayinfo = type { ptr, [3 x double], i64, double, i64, double, [3 x double], [3 x i64], i64, [3 x i64], ptr }

@raystruct = dso_local local_unnamed_addr global [4096 x %struct.r_struct] zeroinitializer, align 16, !dbg !0
@NumSubRays = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [11 x i8] c"raystack.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: Ray tree stack overflow.\0A\00", align 1
@ProgName = external local_unnamed_addr global ptr, align 8

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @CopyRayMsg(ptr nocapture noundef writeonly %rdst, ptr nocapture noundef readonly %rsrc) local_unnamed_addr #0 !dbg !188 {
entry:
  call void @llvm.dbg.value(metadata ptr %rdst, metadata !192, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr %rsrc, metadata !193, metadata !DIExpression()), !dbg !194
  %0 = load i64, ptr %rsrc, align 8, !dbg !195
  store i64 %0, ptr %rdst, align 8, !dbg !196
  %x = getelementptr inbounds %struct.ray, ptr %rsrc, i64 0, i32 1, !dbg !197
  %1 = load i64, ptr %x, align 8, !dbg !197
  %x2 = getelementptr inbounds %struct.ray, ptr %rdst, i64 0, i32 1, !dbg !198
  store i64 %1, ptr %x2, align 8, !dbg !199
  %y = getelementptr inbounds %struct.ray, ptr %rsrc, i64 0, i32 2, !dbg !200
  %2 = load i64, ptr %y, align 8, !dbg !200
  %y3 = getelementptr inbounds %struct.ray, ptr %rdst, i64 0, i32 2, !dbg !201
  store i64 %2, ptr %y3, align 8, !dbg !202
  %P = getelementptr inbounds %struct.ray, ptr %rsrc, i64 0, i32 3, !dbg !203
  %3 = load double, ptr %P, align 8, !dbg !203
  %P4 = getelementptr inbounds %struct.ray, ptr %rdst, i64 0, i32 3, !dbg !203
  store double %3, ptr %P4, align 8, !dbg !203
  %arrayidx7 = getelementptr inbounds %struct.ray, ptr %rsrc, i64 0, i32 3, i64 1, !dbg !203
  %4 = load double, ptr %arrayidx7, align 8, !dbg !203
  %arrayidx9 = getelementptr inbounds %struct.ray, ptr %rdst, i64 0, i32 3, i64 1, !dbg !203
  store double %4, ptr %arrayidx9, align 8, !dbg !203
  %arrayidx11 = getelementptr inbounds %struct.ray, ptr %rsrc, i64 0, i32 3, i64 2, !dbg !203
  %5 = load double, ptr %arrayidx11, align 8, !dbg !203
  %arrayidx13 = getelementptr inbounds %struct.ray, ptr %rdst, i64 0, i32 3, i64 2, !dbg !203
  store double %5, ptr %arrayidx13, align 8, !dbg !203
  %D = getelementptr inbounds %struct.ray, ptr %rsrc, i64 0, i32 4, !dbg !205
  %6 = load double, ptr %D, align 8, !dbg !205
  %D15 = getelementptr inbounds %struct.ray, ptr %rdst, i64 0, i32 4, !dbg !205
  store double %6, ptr %D15, align 8, !dbg !205
  %arrayidx18 = getelementptr inbounds %struct.ray, ptr %rsrc, i64 0, i32 4, i64 1, !dbg !205
  %7 = load double, ptr %arrayidx18, align 8, !dbg !205
  %arrayidx20 = getelementptr inbounds %struct.ray, ptr %rdst, i64 0, i32 4, i64 1, !dbg !205
  store double %7, ptr %arrayidx20, align 8, !dbg !205
  %arrayidx22 = getelementptr inbounds %struct.ray, ptr %rsrc, i64 0, i32 4, i64 2, !dbg !205
  %8 = load double, ptr %arrayidx22, align 8, !dbg !205
  %arrayidx24 = getelementptr inbounds %struct.ray, ptr %rdst, i64 0, i32 4, i64 2, !dbg !205
  store double %8, ptr %arrayidx24, align 8, !dbg !205
  %level = getelementptr inbounds %struct.ray, ptr %rsrc, i64 0, i32 5, !dbg !207
  %9 = load i64, ptr %level, align 8, !dbg !207
  %level25 = getelementptr inbounds %struct.ray, ptr %rdst, i64 0, i32 5, !dbg !208
  store i64 %9, ptr %level25, align 8, !dbg !209
  %weight = getelementptr inbounds %struct.ray, ptr %rsrc, i64 0, i32 10, !dbg !210
  %10 = load float, ptr %weight, align 8, !dbg !210
  %weight26 = getelementptr inbounds %struct.ray, ptr %rdst, i64 0, i32 10, !dbg !211
  store float %10, ptr %weight26, align 8, !dbg !212
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitRayTreeStack(i64 noundef %TreeDepth, i64 noundef %pid) local_unnamed_addr #1 !dbg !214 {
entry:
  call void @llvm.dbg.value(metadata i64 %TreeDepth, metadata !218, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i64 %pid, metadata !219, metadata !DIExpression()), !dbg !220
  %call = tail call i64 @powint(i64 noundef 2, i64 noundef %TreeDepth), !dbg !221
  %sub = add i64 %call, -1, !dbg !222
  %StackSize = getelementptr inbounds [4096 x %struct.r_struct], ptr @raystruct, i64 0, i64 %pid, i32 3, !dbg !223
  %0 = load i64, ptr @NumSubRays, align 8, !dbg !224
  %add = add nsw i64 %0, %sub, !dbg !225
  store i64 %add, ptr %StackSize, align 8, !dbg !225
  %mul = mul i64 %add, 888, !dbg !226
  %call5 = tail call ptr @LocalMalloc(i64 noundef %mul, ptr noundef nonnull @.str) #8, !dbg !227
  %Stack = getelementptr inbounds [4096 x %struct.r_struct], ptr @raystruct, i64 0, i64 %pid, i32 1, !dbg !228
  store ptr %call5, ptr %Stack, align 8, !dbg !229
  %StackTop = getelementptr inbounds [4096 x %struct.r_struct], ptr @raystruct, i64 0, i64 %pid, i32 2, !dbg !230
  store i64 -1, ptr %StackTop, align 8, !dbg !231
  ret void, !dbg !232
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i64 @powint(i64 noundef %i, i64 noundef %j) local_unnamed_addr #2 !dbg !233 {
entry:
  call void @llvm.dbg.value(metadata i64 %i, metadata !237, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i64 %j, metadata !238, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i64 1, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i64 0, metadata !239, metadata !DIExpression()), !dbg !241
  %cmp3 = icmp sgt i64 %j, 0, !dbg !242
  br i1 %cmp3, label %for.body, label %for.end, !dbg !245

for.body:                                         ; preds = %entry, %for.body
  %temp.05 = phi i64 [ %mul, %for.body ], [ 1, %entry ]
  %k.04 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %temp.05, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i64 %k.04, metadata !239, metadata !DIExpression()), !dbg !241
  %mul = mul nsw i64 %temp.05, %i, !dbg !246
  call void @llvm.dbg.value(metadata i64 %mul, metadata !240, metadata !DIExpression()), !dbg !241
  %inc = add nuw nsw i64 %k.04, 1, !dbg !247
  call void @llvm.dbg.value(metadata i64 %inc, metadata !239, metadata !DIExpression()), !dbg !241
  %exitcond.not = icmp eq i64 %inc, %j, !dbg !242
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !245, !llvm.loop !248

for.end:                                          ; preds = %for.body, %entry
  %temp.0.lcssa = phi i64 [ 1, %entry ], [ %mul, %for.body ], !dbg !241
  ret i64 %temp.0.lcssa, !dbg !252
}

declare !dbg !253 ptr @LocalMalloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @PushRayTreeStack(ptr nocapture noundef readonly %rmsg, i64 noundef %pid) local_unnamed_addr #1 !dbg !258 {
entry:
  call void @llvm.dbg.value(metadata ptr %rmsg, metadata !262, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %pid, metadata !263, metadata !DIExpression()), !dbg !264
  %StackTop = getelementptr inbounds [4096 x %struct.r_struct], ptr @raystruct, i64 0, i64 %pid, i32 2, !dbg !265
  %0 = load i64, ptr %StackTop, align 8, !dbg !266
  %inc = add nsw i64 %0, 1, !dbg !266
  store i64 %inc, ptr %StackTop, align 8, !dbg !266
  %StackSize = getelementptr inbounds [4096 x %struct.r_struct], ptr @raystruct, i64 0, i64 %pid, i32 3, !dbg !267
  %1 = load i64, ptr %StackSize, align 8, !dbg !267
  %cmp = icmp eq i64 %inc, %1, !dbg !269
  br i1 %cmp, label %if.then, label %if.end, !dbg !270

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !dbg !271
  %3 = load ptr, ptr @ProgName, align 8, !dbg !273
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %3) #9, !dbg !274
  tail call void @exit(i32 noundef -1) #10, !dbg !275
  unreachable, !dbg !275

if.end:                                           ; preds = %entry
  %Stack = getelementptr inbounds [4096 x %struct.r_struct], ptr @raystruct, i64 0, i64 %pid, i32 1, !dbg !276
  %4 = load ptr, ptr %Stack, align 8, !dbg !276
  %arrayidx7 = getelementptr inbounds %struct.ray, ptr %4, i64 %inc, !dbg !277
  tail call void @CopyRayMsg(ptr noundef %arrayidx7, ptr noundef %rmsg), !dbg !278
  ret void, !dbg !279
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local i64 @PopRayTreeStack(ptr nocapture noundef writeonly %rmsg, i64 noundef %pid) local_unnamed_addr #6 !dbg !280 {
entry:
  call void @llvm.dbg.value(metadata ptr %rmsg, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 %pid, metadata !285, metadata !DIExpression()), !dbg !286
  %StackTop = getelementptr inbounds [4096 x %struct.r_struct], ptr @raystruct, i64 0, i64 %pid, i32 2, !dbg !287
  %0 = load i64, ptr %StackTop, align 8, !dbg !287
  %cmp = icmp slt i64 %0, 0, !dbg !289
  br i1 %cmp, label %return, label %if.end, !dbg !290

if.end:                                           ; preds = %entry
  %Stack = getelementptr inbounds [4096 x %struct.r_struct], ptr @raystruct, i64 0, i64 %pid, i32 1, !dbg !291
  %1 = load ptr, ptr %Stack, align 8, !dbg !291
  %arrayidx4 = getelementptr inbounds %struct.ray, ptr %1, i64 %0, !dbg !292
  tail call void @CopyRayMsg(ptr noundef %rmsg, ptr noundef %arrayidx4), !dbg !293
  %2 = load i64, ptr %StackTop, align 8, !dbg !294
  %dec = add nsw i64 %2, -1, !dbg !294
  store i64 %dec, ptr %StackTop, align 8, !dbg !294
  br label %return, !dbg !295

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ 1, %if.end ], [ 0, %entry ], !dbg !286
  ret i64 %retval.0, !dbg !296
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "raystruct", scope: !2, file: !3, line: 59, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "raystack.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "60a5c51ecb89ede9f9c6efc979e418b2")
!4 = !{!0}
!5 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2148270080, elements: !13)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "r_struct", file: !3, line: 46, size: 524480, elements: !7)
!7 = !{!8, !15, !178, !179, !180}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !6, file: !3, line: 47, baseType: !9, size: 262144)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 262144, elements: !13)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !11, line: 297, baseType: !12)
!11 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!12 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DISubrange(count: 4096)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "Stack", scope: !6, file: !3, line: 51, baseType: !16, size: 64, offset: 262144)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAY", file: !11, line: 625, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ray", file: !11, line: 611, size: 7104, elements: !19)
!19 = !{!20, !22, !23, !24, !31, !32, !33, !168, !169, !170, !174, !177}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !18, file: !11, line: 613, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !11, line: 301, baseType: !12)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !18, file: !11, line: 614, baseType: !10, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !18, file: !11, line: 614, baseType: !10, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !18, file: !11, line: 615, baseType: !25, size: 192, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !11, line: 314, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 192, elements: !29)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !11, line: 310, baseType: !28)
!28 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!29 = !{!30}
!30 = !DISubrange(count: 3)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !18, file: !11, line: 616, baseType: !25, size: 192, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !18, file: !11, line: 617, baseType: !10, size: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !18, file: !11, line: 618, baseType: !34, size: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAYINFO", file: !11, line: 603, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rayinfo", file: !11, line: 582, size: 1216, elements: !37)
!37 = !{!38, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "grid", scope: !36, file: !11, line: 584, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRID", file: !11, line: 572, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "grid", file: !11, line: 539, size: 1152, elements: !42)
!42 = !{!43, !44, !63, !67, !131, !132, !134, !135, !136, !137, !138, !155}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !41, file: !11, line: 541, baseType: !10, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "hashtable", scope: !41, file: !11, line: 542, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOXEL", file: !11, line: 405, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "voxel", file: !11, line: 394, size: 320, elements: !49)
!49 = !{!50, !51, !52, !54, !58, !59}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !48, file: !11, line: 396, baseType: !10, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !48, file: !11, line: 397, baseType: !10, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !48, file: !11, line: 398, baseType: !53, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "cell", scope: !48, file: !11, line: 399, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !11, line: 287, baseType: !57)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "celltype", scope: !48, file: !11, line: 400, baseType: !56, size: 8, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !48, file: !11, line: 403, baseType: !60, size: 56, offset: 264)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 56, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 7)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "emptycells", scope: !41, file: !11, line: 548, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !11, line: 298, baseType: !66)
!66 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pepa", scope: !41, file: !11, line: 555, baseType: !68, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELEMENT", file: !11, line: 481, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "element", file: !11, line: 474, size: 576, elements: !72)
!72 = !{!73, !74, !129, !130}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !71, file: !11, line: 476, baseType: !10, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !71, file: !11, line: 477, baseType: !75, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !11, line: 488, size: 1024, elements: !77)
!77 = !{!78, !79, !83, !89, !90, !91, !115, !128}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !76, file: !11, line: 490, baseType: !10, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !76, file: !11, line: 491, baseType: !80, size: 256, offset: 64)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 256, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !76, file: !11, line: 492, baseType: !84, size: 384, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !11, line: 418, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !11, line: 413, size: 384, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !85, file: !11, line: 415, baseType: !26, size: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !85, file: !11, line: 416, baseType: !26, size: 192, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !76, file: !11, line: 493, baseType: !69, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !76, file: !11, line: 494, baseType: !10, size: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !76, file: !11, line: 495, baseType: !92, size: 64, offset: 832)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROCS", file: !11, line: 340, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pprocs", file: !11, line: 327, size: 640, elements: !95)
!95 = !{!96, !100, !104, !105, !106, !107, !111, !112, !113, !114}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !11, line: 329, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!55, null}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !94, file: !11, line: 330, baseType: !101, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, null}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !94, file: !11, line: 331, baseType: !101, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "binread", scope: !94, file: !11, line: 332, baseType: !101, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "transform", scope: !94, file: !11, line: 333, baseType: !101, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "intersect", scope: !94, file: !11, line: 334, baseType: !108, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!10, null}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pe_intersect", scope: !94, file: !11, line: 335, baseType: !108, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !94, file: !11, line: 336, baseType: !101, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !94, file: !11, line: 337, baseType: !101, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !94, file: !11, line: 338, baseType: !101, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "surf", scope: !76, file: !11, line: 496, baseType: !116, size: 64, offset: 896)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "SURF", file: !11, line: 357, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "surf", file: !11, line: 347, size: 704, elements: !119)
!119 = !{!120, !122, !123, !124, !125, !126, !127}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "fcolor", scope: !118, file: !11, line: 349, baseType: !121, size: 192)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !11, line: 319, baseType: !25)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "bcolor", scope: !118, file: !11, line: 350, baseType: !121, size: 192, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "kdiff", scope: !118, file: !11, line: 351, baseType: !27, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "kspec", scope: !118, file: !11, line: 352, baseType: !27, size: 64, offset: 448)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ktran", scope: !118, file: !11, line: 353, baseType: !27, size: 64, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "refrindex", scope: !118, file: !11, line: 354, baseType: !27, size: 64, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "kspecn", scope: !118, file: !11, line: 355, baseType: !27, size: 64, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !76, file: !11, line: 497, baseType: !75, size: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !71, file: !11, line: 478, baseType: !55, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !71, file: !11, line: 479, baseType: !84, size: 384, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "num_prims", scope: !41, file: !11, line: 556, baseType: !10, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc", scope: !41, file: !11, line: 558, baseType: !133, size: 192, offset: 320)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !29)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !41, file: !11, line: 562, baseType: !10, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !41, file: !11, line: 563, baseType: !26, size: 192, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cellsize", scope: !41, file: !11, line: 564, baseType: !26, size: 192, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "subdiv_level", scope: !41, file: !11, line: 566, baseType: !10, size: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "bintree", scope: !41, file: !11, line: 569, baseType: !139, size: 64, offset: 1024)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "BTNODE", file: !11, line: 535, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btnode", file: !11, line: 522, size: 960, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !141, file: !11, line: 524, baseType: !68, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !141, file: !11, line: 525, baseType: !26, size: 192, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nprims", scope: !141, file: !11, line: 527, baseType: !10, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !141, file: !11, line: 528, baseType: !133, size: 192, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !141, file: !11, line: 529, baseType: !133, size: 192, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !141, file: !11, line: 531, baseType: !10, size: 64, offset: 704)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "totalPrimsAllocated", scope: !141, file: !11, line: 532, baseType: !10, size: 64, offset: 768)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !141, file: !11, line: 533, baseType: !151, size: 128, offset: 832)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !153)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!153 = !{!154}
!154 = !DISubrange(count: 2)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !41, file: !11, line: 570, baseType: !156, size: 64, offset: 1088)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !36, file: !11, line: 585, baseType: !26, size: 192, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "entry_plane", scope: !36, file: !11, line: 587, baseType: !10, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "t_in", scope: !36, file: !11, line: 589, baseType: !27, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "exit_plane", scope: !36, file: !11, line: 591, baseType: !10, size: 64, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "t_out", scope: !36, file: !11, line: 593, baseType: !27, size: 64, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !36, file: !11, line: 595, baseType: !26, size: 192, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "index3D", scope: !36, file: !11, line: 596, baseType: !133, size: 192, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "index1D", scope: !36, file: !11, line: 597, baseType: !10, size: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc1D", scope: !36, file: !11, line: 600, baseType: !133, size: 192, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !36, file: !11, line: 601, baseType: !167, size: 64, offset: 1152)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ri_indx", scope: !18, file: !11, line: 619, baseType: !10, size: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc3D", scope: !18, file: !11, line: 620, baseType: !133, size: 192, offset: 768)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rinfo", scope: !18, file: !11, line: 621, baseType: !171, size: 6080, offset: 960)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 6080, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 5)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !18, file: !11, line: 622, baseType: !175, size: 32, offset: 7040)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "R32", file: !11, line: 307, baseType: !176)
!176 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !18, file: !11, line: 623, baseType: !175, size: 32, offset: 7072)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "StackTop", scope: !6, file: !3, line: 52, baseType: !10, size: 64, offset: 262208)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "StackSize", scope: !6, file: !3, line: 53, baseType: !10, size: 64, offset: 262272)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !6, file: !3, line: 54, baseType: !9, size: 262144, offset: 262336)
!181 = !{i32 7, !"Dwarf Version", i32 5}
!182 = !{i32 2, !"Debug Info Version", i32 3}
!183 = !{i32 1, !"wchar_size", i32 4}
!184 = !{i32 7, !"PIC Level", i32 2}
!185 = !{i32 7, !"PIE Level", i32 2}
!186 = !{i32 7, !"uwtable", i32 2}
!187 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!188 = distinct !DISubprogram(name: "CopyRayMsg", scope: !3, file: !3, line: 75, type: !189, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !16, !16}
!191 = !{!192, !193}
!192 = !DILocalVariable(name: "rdst", arg: 1, scope: !188, file: !3, line: 75, type: !16)
!193 = !DILocalVariable(name: "rsrc", arg: 2, scope: !188, file: !3, line: 75, type: !16)
!194 = !DILocation(line: 0, scope: !188)
!195 = !DILocation(line: 77, column: 19, scope: !188)
!196 = !DILocation(line: 77, column: 11, scope: !188)
!197 = !DILocation(line: 78, column: 19, scope: !188)
!198 = !DILocation(line: 78, column: 8, scope: !188)
!199 = !DILocation(line: 78, column: 11, scope: !188)
!200 = !DILocation(line: 79, column: 19, scope: !188)
!201 = !DILocation(line: 79, column: 8, scope: !188)
!202 = !DILocation(line: 79, column: 11, scope: !188)
!203 = !DILocation(line: 81, column: 2, scope: !204)
!204 = distinct !DILexicalBlock(scope: !188, file: !3, line: 81, column: 2)
!205 = !DILocation(line: 82, column: 2, scope: !206)
!206 = distinct !DILexicalBlock(scope: !188, file: !3, line: 82, column: 2)
!207 = !DILocation(line: 84, column: 23, scope: !188)
!208 = !DILocation(line: 84, column: 8, scope: !188)
!209 = !DILocation(line: 84, column: 15, scope: !188)
!210 = !DILocation(line: 85, column: 23, scope: !188)
!211 = !DILocation(line: 85, column: 8, scope: !188)
!212 = !DILocation(line: 85, column: 15, scope: !188)
!213 = !DILocation(line: 88, column: 2, scope: !188)
!214 = distinct !DISubprogram(name: "InitRayTreeStack", scope: !3, file: !3, line: 109, type: !215, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !10, !10}
!217 = !{!218, !219}
!218 = !DILocalVariable(name: "TreeDepth", arg: 1, scope: !214, file: !3, line: 109, type: !10)
!219 = !DILocalVariable(name: "pid", arg: 2, scope: !214, file: !3, line: 109, type: !10)
!220 = !DILocation(line: 0, scope: !214)
!221 = !DILocation(line: 111, column: 31, scope: !214)
!222 = !DILocation(line: 111, column: 52, scope: !214)
!223 = !DILocation(line: 111, column: 17, scope: !214)
!224 = !DILocation(line: 112, column: 31, scope: !214)
!225 = !DILocation(line: 112, column: 28, scope: !214)
!226 = !DILocation(line: 113, column: 65, scope: !214)
!227 = !DILocation(line: 113, column: 29, scope: !214)
!228 = !DILocation(line: 113, column: 17, scope: !214)
!229 = !DILocation(line: 113, column: 27, scope: !214)
!230 = !DILocation(line: 114, column: 17, scope: !214)
!231 = !DILocation(line: 114, column: 29, scope: !214)
!232 = !DILocation(line: 115, column: 2, scope: !214)
!233 = distinct !DISubprogram(name: "powint", scope: !3, file: !3, line: 118, type: !234, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{!66, !12, !12}
!236 = !{!237, !238, !239, !240}
!237 = !DILocalVariable(name: "i", arg: 1, scope: !233, file: !3, line: 118, type: !12)
!238 = !DILocalVariable(name: "j", arg: 2, scope: !233, file: !3, line: 118, type: !12)
!239 = !DILocalVariable(name: "k", scope: !233, file: !3, line: 120, type: !12)
!240 = !DILocalVariable(name: "temp", scope: !233, file: !3, line: 121, type: !12)
!241 = !DILocation(line: 0, scope: !233)
!242 = !DILocation(line: 123, column: 17, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 123, column: 3)
!244 = distinct !DILexicalBlock(scope: !233, file: !3, line: 123, column: 3)
!245 = !DILocation(line: 123, column: 3, scope: !244)
!246 = !DILocation(line: 124, column: 18, scope: !243)
!247 = !DILocation(line: 123, column: 23, scope: !243)
!248 = distinct !{!248, !245, !249, !250, !251}
!249 = !DILocation(line: 124, column: 19, scope: !244)
!250 = !{!"llvm.loop.mustprogress"}
!251 = !{!"llvm.loop.unroll.disable"}
!252 = !DILocation(line: 125, column: 3, scope: !233)
!253 = !DISubprogram(name: "LocalMalloc", scope: !11, file: !11, line: 905, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !257)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !65, !55}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!257 = !{}
!258 = distinct !DISubprogram(name: "PushRayTreeStack", scope: !3, file: !3, line: 142, type: !259, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !16, !10}
!261 = !{!262, !263}
!262 = !DILocalVariable(name: "rmsg", arg: 1, scope: !258, file: !3, line: 142, type: !16)
!263 = !DILocalVariable(name: "pid", arg: 2, scope: !258, file: !3, line: 142, type: !10)
!264 = !DILocation(line: 0, scope: !258)
!265 = !DILocation(line: 144, column: 17, scope: !258)
!266 = !DILocation(line: 144, column: 25, scope: !258)
!267 = !DILocation(line: 146, column: 48, scope: !268)
!268 = distinct !DILexicalBlock(scope: !258, file: !3, line: 146, column: 6)
!269 = !DILocation(line: 146, column: 30, scope: !268)
!270 = !DILocation(line: 146, column: 6, scope: !258)
!271 = !DILocation(line: 148, column: 11, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !3, line: 147, column: 3)
!273 = !DILocation(line: 148, column: 52, scope: !272)
!274 = !DILocation(line: 148, column: 3, scope: !272)
!275 = !DILocation(line: 149, column: 3, scope: !272)
!276 = !DILocation(line: 152, column: 30, scope: !258)
!277 = !DILocation(line: 152, column: 15, scope: !258)
!278 = !DILocation(line: 152, column: 2, scope: !258)
!279 = !DILocation(line: 153, column: 2, scope: !258)
!280 = distinct !DISubprogram(name: "PopRayTreeStack", scope: !3, file: !3, line: 170, type: !281, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{!10, !16, !10}
!283 = !{!284, !285}
!284 = !DILocalVariable(name: "rmsg", arg: 1, scope: !280, file: !3, line: 170, type: !16)
!285 = !DILocalVariable(name: "pid", arg: 2, scope: !280, file: !3, line: 170, type: !10)
!286 = !DILocation(line: 0, scope: !280)
!287 = !DILocation(line: 172, column: 21, scope: !288)
!288 = distinct !DILexicalBlock(scope: !280, file: !3, line: 172, column: 6)
!289 = !DILocation(line: 172, column: 30, scope: !288)
!290 = !DILocation(line: 172, column: 6, scope: !280)
!291 = !DILocation(line: 175, column: 36, scope: !280)
!292 = !DILocation(line: 175, column: 21, scope: !280)
!293 = !DILocation(line: 175, column: 2, scope: !280)
!294 = !DILocation(line: 177, column: 25, scope: !280)
!295 = !DILocation(line: 178, column: 2, scope: !280)
!296 = !DILocation(line: 179, column: 2, scope: !280)
