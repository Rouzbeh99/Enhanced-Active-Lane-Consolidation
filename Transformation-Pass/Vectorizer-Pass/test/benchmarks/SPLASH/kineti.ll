; ModuleID = 'kineti.c'
source_filename = "kineti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.box_dummy = type { ptr, %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.mol_dummy = type { [3 x double], [9 x [3 x [3 x double]]] }
%struct.link = type { %struct.mol_dummy, ptr }
%struct.list_of_boxes = type { [3 x i64], ptr }
%struct.GlobalMemory = type { %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %struct.anon, %struct.anon.3, %struct.anon.4, i64, double, [3 x double], double, double, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }
%struct.anon.3 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.4 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }

@my_boxes = external local_unnamed_addr global ptr, align 8
@BOX = external local_unnamed_addr global ptr, align 8
@gl = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @KINETI(ptr nocapture noundef %SUM, double noundef %HMAS, double noundef %OMAS, i64 noundef %ProcID) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %SUM, metadata !16, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata double %HMAS, metadata !17, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata double %OMAS, metadata !18, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i64 %ProcID, metadata !19, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i64 0, metadata !20, metadata !DIExpression()), !dbg !52
  br label %for.body, !dbg !53

for.body:                                         ; preds = %entry, %while.end23
  %dir.052 = phi i64 [ 0, %entry ], [ %inc, %while.end23 ]
  call void @llvm.dbg.value(metadata i64 %dir.052, metadata !20, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !24, metadata !DIExpression()), !dbg !52
  %0 = load ptr, ptr @my_boxes, align 8, !dbg !55
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %ProcID, !dbg !55
  call void @llvm.dbg.value(metadata ptr undef, metadata !44, metadata !DIExpression()), !dbg !52
  %curr_box.047 = load ptr, ptr %arrayidx, align 8, !dbg !58
  call void @llvm.dbg.value(metadata ptr %curr_box.047, metadata !44, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !24, metadata !DIExpression()), !dbg !52
  %tobool.not48 = icmp eq ptr %curr_box.047, null, !dbg !59
  br i1 %tobool.not48, label %while.end23, label %while.body.lr.ph, !dbg !59

while.body.lr.ph:                                 ; preds = %for.body
  %1 = load ptr, ptr @BOX, align 8
  br label %while.body, !dbg !59

while.body:                                       ; preds = %while.body.lr.ph, %while.end
  %curr_box.050 = phi ptr [ %curr_box.047, %while.body.lr.ph ], [ %curr_box.0, %while.end ]
  %S.049 = phi double [ 0.000000e+00, %while.body.lr.ph ], [ %S.1.lcssa, %while.end ]
  call void @llvm.dbg.value(metadata double %S.049, metadata !24, metadata !DIExpression()), !dbg !52
  %2 = load i64, ptr %curr_box.050, align 8, !dbg !60
  call void @llvm.dbg.value(metadata i64 %2, metadata !21, metadata !DIExpression()), !dbg !52
  %arrayidx3 = getelementptr inbounds [3 x i64], ptr %curr_box.050, i64 0, i64 1, !dbg !62
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !62
  call void @llvm.dbg.value(metadata i64 %3, metadata !22, metadata !DIExpression()), !dbg !52
  %arrayidx5 = getelementptr inbounds [3 x i64], ptr %curr_box.050, i64 0, i64 2, !dbg !63
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !63
  call void @llvm.dbg.value(metadata i64 %4, metadata !23, metadata !DIExpression()), !dbg !52
  %arrayidx6 = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !64
  %5 = load ptr, ptr %arrayidx6, align 8, !dbg !64
  %arrayidx7 = getelementptr inbounds ptr, ptr %5, i64 %3, !dbg !64
  %6 = load ptr, ptr %arrayidx7, align 8, !dbg !64
  %arrayidx8 = getelementptr inbounds %struct.box_dummy, ptr %6, i64 %4, !dbg !64
  call void @llvm.dbg.value(metadata ptr undef, metadata !25, metadata !DIExpression()), !dbg !52
  %curr_ptr.043 = load ptr, ptr %arrayidx8, align 8, !dbg !65
  call void @llvm.dbg.value(metadata ptr %curr_ptr.043, metadata !25, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata double %S.049, metadata !24, metadata !DIExpression()), !dbg !52
  %tobool10.not44 = icmp eq ptr %curr_ptr.043, null, !dbg !66
  br i1 %tobool10.not44, label %while.end, label %while.body11, !dbg !66

while.body11:                                     ; preds = %while.body, %while.body11
  %curr_ptr.046 = phi ptr [ %curr_ptr.0, %while.body11 ], [ %curr_ptr.043, %while.body ]
  %S.145 = phi double [ %add, %while.body11 ], [ %S.049, %while.body ]
  call void @llvm.dbg.value(metadata double %S.145, metadata !24, metadata !DIExpression()), !dbg !52
  %arrayidx13 = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.046, i64 0, i32 1, i64 1, i64 %dir.052, !dbg !67
  call void @llvm.dbg.value(metadata ptr %arrayidx13, metadata !51, metadata !DIExpression()), !dbg !52
  %7 = load double, ptr %arrayidx13, align 8, !dbg !69
  %arrayidx16 = getelementptr inbounds double, ptr %arrayidx13, i64 2, !dbg !70
  %8 = load double, ptr %arrayidx16, align 8, !dbg !70
  %mul18 = fmul double %8, %8, !dbg !71
  %9 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %mul18), !dbg !72
  %arrayidx19 = getelementptr inbounds double, ptr %arrayidx13, i64 1, !dbg !73
  %10 = load double, ptr %arrayidx19, align 8, !dbg !73
  %mul21 = fmul double %10, %10, !dbg !74
  %mul22 = fmul double %mul21, %OMAS, !dbg !75
  %11 = tail call double @llvm.fmuladd.f64(double %9, double %HMAS, double %mul22), !dbg !76
  %add = fadd double %S.145, %11, !dbg !77
  call void @llvm.dbg.value(metadata double %add, metadata !24, metadata !DIExpression()), !dbg !52
  %next_mol = getelementptr inbounds %struct.link, ptr %curr_ptr.046, i64 0, i32 1, !dbg !78
  call void @llvm.dbg.value(metadata ptr undef, metadata !25, metadata !DIExpression()), !dbg !52
  %curr_ptr.0 = load ptr, ptr %next_mol, align 8, !dbg !65
  call void @llvm.dbg.value(metadata ptr %curr_ptr.0, metadata !25, metadata !DIExpression()), !dbg !52
  %tobool10.not = icmp eq ptr %curr_ptr.0, null, !dbg !66
  br i1 %tobool10.not, label %while.end, label %while.body11, !dbg !66, !llvm.loop !79

while.end:                                        ; preds = %while.body11, %while.body
  %S.1.lcssa = phi double [ %S.049, %while.body ], [ %add, %while.body11 ], !dbg !58
  %next_box = getelementptr inbounds %struct.list_of_boxes, ptr %curr_box.050, i64 0, i32 1, !dbg !83
  call void @llvm.dbg.value(metadata ptr undef, metadata !44, metadata !DIExpression()), !dbg !52
  %curr_box.0 = load ptr, ptr %next_box, align 8, !dbg !58
  call void @llvm.dbg.value(metadata ptr %curr_box.0, metadata !44, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata double %S.1.lcssa, metadata !24, metadata !DIExpression()), !dbg !52
  %tobool.not = icmp eq ptr %curr_box.0, null, !dbg !59
  br i1 %tobool.not, label %while.end23, label %while.body, !dbg !59, !llvm.loop !84

while.end23:                                      ; preds = %while.end, %for.body
  %S.0.lcssa = phi double [ 0.000000e+00, %for.body ], [ %S.1.lcssa, %while.end ], !dbg !86
  %12 = load ptr, ptr @gl, align 8, !dbg !87
  %KinetiSumLock = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 4, !dbg !89
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %KinetiSumLock) #4, !dbg !90
  %arrayidx24 = getelementptr inbounds double, ptr %SUM, i64 %dir.052, !dbg !91
  %13 = load double, ptr %arrayidx24, align 8, !dbg !92
  %add25 = fadd double %S.0.lcssa, %13, !dbg !92
  store double %add25, ptr %arrayidx24, align 8, !dbg !92
  %14 = load ptr, ptr @gl, align 8, !dbg !93
  %KinetiSumLock26 = getelementptr inbounds %struct.GlobalMemory, ptr %14, i64 0, i32 4, !dbg !95
  %call27 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %KinetiSumLock26) #4, !dbg !96
  %inc = add nuw nsw i64 %dir.052, 1, !dbg !97
  call void @llvm.dbg.value(metadata i64 %inc, metadata !20, metadata !DIExpression()), !dbg !52
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !98
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !53, !llvm.loop !99

for.end:                                          ; preds = %while.end23
  ret void, !dbg !101
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
declare !dbg !102 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !140 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "kineti.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/water-spatial", checksumkind: CSK_MD5, checksum: "7ae6434a83aee4fc8eaa37af5f017f24")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "KINETI", scope: !1, file: !1, line: 46, type: !10, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13, !13, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !44, !51}
!16 = !DILocalVariable(name: "SUM", arg: 1, scope: !9, file: !1, line: 46, type: !12)
!17 = !DILocalVariable(name: "HMAS", arg: 2, scope: !9, file: !1, line: 46, type: !13)
!18 = !DILocalVariable(name: "OMAS", arg: 3, scope: !9, file: !1, line: 46, type: !13)
!19 = !DILocalVariable(name: "ProcID", arg: 4, scope: !9, file: !1, line: 46, type: !14)
!20 = !DILocalVariable(name: "dir", scope: !9, file: !1, line: 48, type: !14)
!21 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 48, type: !14)
!22 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 48, type: !14)
!23 = !DILocalVariable(name: "k", scope: !9, file: !1, line: 48, type: !14)
!24 = !DILocalVariable(name: "S", scope: !9, file: !1, line: 49, type: !13)
!25 = !DILocalVariable(name: "curr_ptr", scope: !9, file: !1, line: 50, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "link", file: !28, line: 30, size: 5440, elements: !29)
!28 = !DIFile(filename: "./mddata.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/water-spatial", checksumkind: CSK_MD5, checksum: "5eef464d675810165298663b2382575d")
!29 = !{!30, !43}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "mol", scope: !27, file: !28, line: 31, baseType: !31, size: 5376)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "molecule_type", file: !28, line: 28, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mol_dummy", file: !28, line: 25, size: 5376, elements: !33)
!33 = !{!34, !39}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "VM", scope: !32, file: !28, line: 26, baseType: !35, size: 192)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_type", file: !28, line: 23, baseType: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 3)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "F", scope: !32, file: !28, line: 27, baseType: !40, size: 5184, offset: 192)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 5184, elements: !41)
!41 = !{!42, !38, !38}
!42 = !DISubrange(count: 9)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next_mol", scope: !27, file: !28, line: 32, baseType: !26, size: 64, offset: 5376)
!44 = !DILocalVariable(name: "curr_box", scope: !9, file: !1, line: 51, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_of_boxes", file: !28, line: 48, size: 256, elements: !47)
!47 = !{!48, !50}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "coord", scope: !46, file: !28, line: 49, baseType: !49, size: 192)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !37)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "next_box", scope: !46, file: !28, line: 50, baseType: !45, size: 64, offset: 192)
!51 = !DILocalVariable(name: "tempptr", scope: !9, file: !1, line: 52, type: !12)
!52 = !DILocation(line: 0, scope: !9)
!53 = !DILocation(line: 56, column: 5, scope: !54)
!54 = distinct !DILexicalBlock(scope: !9, file: !1, line: 56, column: 5)
!55 = !DILocation(line: 60, column: 20, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 56, column: 42)
!57 = distinct !DILexicalBlock(scope: !54, file: !1, line: 56, column: 5)
!58 = !DILocation(line: 0, scope: !56)
!59 = !DILocation(line: 62, column: 9, scope: !56)
!60 = !DILocation(line: 64, column: 17, scope: !61)
!61 = distinct !DILexicalBlock(scope: !56, file: !1, line: 62, column: 26)
!62 = !DILocation(line: 65, column: 17, scope: !61)
!63 = !DILocation(line: 66, column: 17, scope: !61)
!64 = !DILocation(line: 70, column: 24, scope: !61)
!65 = !DILocation(line: 0, scope: !61)
!66 = !DILocation(line: 71, column: 13, scope: !61)
!67 = !DILocation(line: 72, column: 27, scope: !68)
!68 = distinct !DILexicalBlock(scope: !61, file: !1, line: 71, column: 30)
!69 = !DILocation(line: 73, column: 23, scope: !68)
!70 = !DILocation(line: 74, column: 23, scope: !68)
!71 = !DILocation(line: 74, column: 35, scope: !68)
!72 = !DILocation(line: 73, column: 49, scope: !68)
!73 = !DILocation(line: 75, column: 28, scope: !68)
!74 = !DILocation(line: 75, column: 39, scope: !68)
!75 = !DILocation(line: 75, column: 53, scope: !68)
!76 = !DILocation(line: 74, column: 58, scope: !68)
!77 = !DILocation(line: 73, column: 19, scope: !68)
!78 = !DILocation(line: 76, column: 38, scope: !68)
!79 = distinct !{!79, !66, !80, !81, !82}
!80 = !DILocation(line: 77, column: 13, scope: !61)
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !DILocation(line: 79, column: 34, scope: !61)
!84 = distinct !{!84, !59, !85, !81, !82}
!85 = !DILocation(line: 81, column: 9, scope: !56)
!86 = !DILocation(line: 57, column: 10, scope: !56)
!87 = !DILocation(line: 83, column: 31, scope: !88)
!88 = distinct !DILexicalBlock(scope: !56, file: !1, line: 83, column: 9)
!89 = !DILocation(line: 83, column: 35, scope: !88)
!90 = !DILocation(line: 83, column: 10, scope: !88)
!91 = !DILocation(line: 84, column: 9, scope: !56)
!92 = !DILocation(line: 84, column: 17, scope: !56)
!93 = !DILocation(line: 85, column: 33, scope: !94)
!94 = distinct !DILexicalBlock(scope: !56, file: !1, line: 85, column: 9)
!95 = !DILocation(line: 85, column: 37, scope: !94)
!96 = !DILocation(line: 85, column: 10, scope: !94)
!97 = !DILocation(line: 56, column: 38, scope: !57)
!98 = !DILocation(line: 56, column: 26, scope: !57)
!99 = distinct !{!99, !53, !100, !81, !82}
!100 = !DILocation(line: 87, column: 5, scope: !54)
!101 = !DILocation(line: 89, column: 1, scope: !9)
!102 = !DISubprogram(name: "pthread_mutex_lock", scope: !103, file: !103, line: 738, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !139)
!103 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !107}
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !109, line: 72, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !109, line: 67, size: 320, elements: !111)
!111 = !{!112, !133, !138}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !110, file: !109, line: 69, baseType: !113, size: 320)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !114, line: 22, size: 320, elements: !115)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!115 = !{!116, !117, !119, !120, !121, !122, !124, !125}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !113, file: !114, line: 24, baseType: !106, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !113, file: !114, line: 25, baseType: !118, size: 32, offset: 32)
!118 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !113, file: !114, line: 26, baseType: !106, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !113, file: !114, line: 28, baseType: !118, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !113, file: !114, line: 32, baseType: !106, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !113, file: !114, line: 34, baseType: !123, size: 16, offset: 160)
!123 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !113, file: !114, line: 35, baseType: !123, size: 16, offset: 176)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !113, file: !114, line: 36, baseType: !126, size: 128, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !127, line: 53, baseType: !128)
!127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !127, line: 49, size: 128, elements: !129)
!129 = !{!130, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !128, file: !127, line: 51, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !128, file: !127, line: 52, baseType: !131, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !110, file: !109, line: 70, baseType: !134, size: 320)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 320, elements: !136)
!135 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!136 = !{!137}
!137 = !DISubrange(count: 40)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !110, file: !109, line: 71, baseType: !14, size: 64)
!139 = !{}
!140 = !DISubprogram(name: "pthread_mutex_unlock", scope: !103, file: !103, line: 756, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !139)
