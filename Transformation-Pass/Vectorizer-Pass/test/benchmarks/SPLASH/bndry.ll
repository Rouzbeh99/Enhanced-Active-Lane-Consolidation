; ModuleID = 'bndry.c'
source_filename = "bndry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.box_dummy = type { ptr, %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.link = type { %struct.mol_dummy, ptr }
%struct.mol_dummy = type { [3 x double], [9 x [3 x [3 x double]]] }
%struct.list_of_boxes = type { [3 x i64], ptr }

@my_boxes = external local_unnamed_addr global ptr, align 8
@BOX = external local_unnamed_addr global ptr, align 8
@BOXL = external local_unnamed_addr global double, align 8
@BOX_LENGTH = external local_unnamed_addr global double, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @BNDRY(i64 noundef %ProcID) local_unnamed_addr #0 !dbg !12 {
entry:
  call void @llvm.dbg.value(metadata i64 %ProcID, metadata !16, metadata !DIExpression()), !dbg !56
  %0 = load ptr, ptr @my_boxes, align 8, !dbg !57
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %ProcID, !dbg !57
  call void @llvm.dbg.value(metadata ptr undef, metadata !47, metadata !DIExpression()), !dbg !56
  %curr_box.0170 = load ptr, ptr %arrayidx, align 8, !dbg !56
  call void @llvm.dbg.value(metadata ptr %curr_box.0170, metadata !47, metadata !DIExpression()), !dbg !56
  %tobool.not171 = icmp eq ptr %curr_box.0170, null, !dbg !58
  br i1 %tobool.not171, label %while.end105, label %while.body, !dbg !58

while.body:                                       ; preds = %entry, %while.end104
  %curr_box.0172 = phi ptr [ %curr_box.0, %while.end104 ], [ %curr_box.0170, %entry ]
  %1 = load i64, ptr %curr_box.0172, align 8, !dbg !59
  call void @llvm.dbg.value(metadata i64 %1, metadata !17, metadata !DIExpression()), !dbg !56
  %arrayidx3 = getelementptr inbounds [3 x i64], ptr %curr_box.0172, i64 0, i64 1, !dbg !61
  %2 = load i64, ptr %arrayidx3, align 8, !dbg !61
  call void @llvm.dbg.value(metadata i64 %2, metadata !18, metadata !DIExpression()), !dbg !56
  %arrayidx5 = getelementptr inbounds [3 x i64], ptr %curr_box.0172, i64 0, i64 2, !dbg !62
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !62
  call void @llvm.dbg.value(metadata i64 %3, metadata !19, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata ptr null, metadata !44, metadata !DIExpression()), !dbg !56
  %4 = load ptr, ptr @BOX, align 8, !dbg !63
  %arrayidx6 = getelementptr inbounds ptr, ptr %4, i64 %1, !dbg !63
  %5 = load ptr, ptr %arrayidx6, align 8, !dbg !63
  %arrayidx7 = getelementptr inbounds ptr, ptr %5, i64 %2, !dbg !63
  %6 = load ptr, ptr %arrayidx7, align 8, !dbg !63
  %arrayidx8 = getelementptr inbounds %struct.box_dummy, ptr %6, i64 %3, !dbg !63
  %7 = load ptr, ptr %arrayidx8, align 8, !dbg !64
  call void @llvm.dbg.value(metadata ptr %7, metadata !24, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata ptr null, metadata !44, metadata !DIExpression()), !dbg !56
  %tobool10.not166 = icmp eq ptr %7, null, !dbg !65
  br i1 %tobool10.not166, label %while.end104, label %while.body11.preheader, !dbg !65

while.body11.preheader:                           ; preds = %while.body
  %.pre.pre173 = load double, ptr @BOXL, align 8, !dbg !66
  br label %while.body11, !dbg !65

while.body11:                                     ; preds = %while.body11.preheader, %if.end103
  %.pre = phi double [ %.pre174, %if.end103 ], [ %.pre.pre173, %while.body11.preheader ], !dbg !66
  %curr_ptr.0169 = phi ptr [ %8, %if.end103 ], [ %7, %while.body11.preheader ]
  %last_ptr.0167 = phi ptr [ %last_ptr.1, %if.end103 ], [ null, %while.body11.preheader ]
  call void @llvm.dbg.value(metadata ptr %curr_ptr.0169, metadata !24, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata ptr %last_ptr.0167, metadata !44, metadata !DIExpression()), !dbg !56
  %next_mol = getelementptr inbounds %struct.link, ptr %curr_ptr.0169, i64 0, i32 1, !dbg !71
  %8 = load ptr, ptr %next_mol, align 8, !dbg !71
  call void @llvm.dbg.value(metadata ptr %8, metadata !45, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i64 0, metadata !20, metadata !DIExpression()), !dbg !56
  %F = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.0169, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 0, metadata !20, metadata !DIExpression()), !dbg !56
  br label %for.body, !dbg !72

for.body:                                         ; preds = %while.body11, %for.inc
  %.pre176 = phi double [ %.pre, %while.body11 ], [ %.pre175, %for.inc ]
  %9 = phi double [ %.pre, %while.body11 ], [ %23, %for.inc ], !dbg !66
  %dir.0165 = phi i64 [ 0, %while.body11 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %dir.0165, metadata !20, metadata !DIExpression()), !dbg !56
  %arrayidx13 = getelementptr inbounds [3 x [3 x double]], ptr %F, i64 0, i64 %dir.0165, !dbg !73
  call void @llvm.dbg.value(metadata ptr %arrayidx13, metadata !54, metadata !DIExpression()), !dbg !56
  %arrayidx15 = getelementptr inbounds double, ptr %arrayidx13, i64 1
  %10 = load double, ptr %arrayidx15, align 8, !dbg !74
  %cmp16160 = fcmp ogt double %10, %9, !dbg !75
  %cmp18161 = fcmp olt double %10, 0.000000e+00
  %or.cond162 = or i1 %cmp18161, %cmp16160, !dbg !76
  br i1 %or.cond162, label %while.body19.lr.ph, label %for.inc, !dbg !76

while.body19.lr.ph:                               ; preds = %for.body
  %arrayidx33 = getelementptr inbounds double, ptr %arrayidx13, i64 2
  br label %while.body19, !dbg !76

while.body19:                                     ; preds = %while.body19.lr.ph, %if.end35
  %11 = phi double [ %10, %while.body19.lr.ph ], [ %21, %if.end35 ]
  %cmp18164 = phi i1 [ %cmp18161, %while.body19.lr.ph ], [ %cmp18, %if.end35 ]
  %cmp16163 = phi i1 [ %cmp16160, %while.body19.lr.ph ], [ %cmp16, %if.end35 ]
  %12 = phi double [ %9, %while.body19.lr.ph ], [ %22, %if.end35 ]
  br i1 %cmp16163, label %if.then, label %if.else, !dbg !77

if.then:                                          ; preds = %while.body19
  %13 = load double, ptr %arrayidx13, align 8, !dbg !79
  %sub = fsub double %13, %12, !dbg !79
  store double %sub, ptr %arrayidx13, align 8, !dbg !79
  %14 = load double, ptr @BOXL, align 8, !dbg !82
  %sub24 = fsub double %11, %14, !dbg !83
  store double %sub24, ptr %arrayidx15, align 8, !dbg !83
  %15 = load double, ptr @BOXL, align 8, !dbg !84
  %16 = load double, ptr %arrayidx33, align 8, !dbg !85
  %sub26 = fsub double %16, %15, !dbg !85
  br label %if.end35.sink.split, !dbg !86

if.else:                                          ; preds = %while.body19
  br i1 %cmp18164, label %if.then29, label %if.end35, !dbg !87

if.then29:                                        ; preds = %if.else
  %17 = load double, ptr %arrayidx13, align 8, !dbg !88
  %add = fadd double %12, %17, !dbg !88
  store double %add, ptr %arrayidx13, align 8, !dbg !88
  %18 = load double, ptr @BOXL, align 8, !dbg !91
  %add32 = fadd double %11, %18, !dbg !92
  store double %add32, ptr %arrayidx15, align 8, !dbg !92
  %19 = load double, ptr @BOXL, align 8, !dbg !93
  %20 = load double, ptr %arrayidx33, align 8, !dbg !94
  %add34 = fadd double %19, %20, !dbg !94
  br label %if.end35.sink.split, !dbg !95

if.end35.sink.split:                              ; preds = %if.then, %if.then29
  %add34.sink = phi double [ %add34, %if.then29 ], [ %sub26, %if.then ]
  %.ph = phi double [ %add32, %if.then29 ], [ %sub24, %if.then ]
  store double %add34.sink, ptr %arrayidx33, align 8, !dbg !96
  br label %if.end35, !dbg !66

if.end35:                                         ; preds = %if.end35.sink.split, %if.else
  %21 = phi double [ %11, %if.else ], [ %.ph, %if.end35.sink.split ], !dbg !74
  %22 = load double, ptr @BOXL, align 8, !dbg !66
  %cmp16 = fcmp ogt double %21, %22, !dbg !75
  %cmp18 = fcmp olt double %21, 0.000000e+00
  %or.cond = or i1 %cmp18, %cmp16, !dbg !76
  br i1 %or.cond, label %while.body19, label %for.inc, !dbg !76, !llvm.loop !97

for.inc:                                          ; preds = %if.end35, %for.body
  %.pre175 = phi double [ %.pre176, %for.body ], [ %22, %if.end35 ]
  %23 = phi double [ %9, %for.body ], [ %22, %if.end35 ]
  %inc = add nuw nsw i64 %dir.0165, 1, !dbg !102
  call void @llvm.dbg.value(metadata i64 %inc, metadata !20, metadata !DIExpression()), !dbg !56
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !103
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !72, !llvm.loop !104

for.end:                                          ; preds = %for.inc
  %arrayidx40 = getelementptr inbounds [3 x double], ptr %F, i64 0, i64 1, !dbg !106
  %24 = load double, ptr %arrayidx40, align 8, !dbg !106
  %25 = load double, ptr @BOX_LENGTH, align 8, !dbg !107
  %div = fdiv double %24, %25, !dbg !108
  %conv = fptosi double %div to i64, !dbg !109
  call void @llvm.dbg.value(metadata i64 %conv, metadata !21, metadata !DIExpression()), !dbg !56
  %arrayidx45 = getelementptr inbounds [3 x [3 x double]], ptr %F, i64 0, i64 1, i64 1, !dbg !110
  %26 = load double, ptr %arrayidx45, align 8, !dbg !110
  %div46 = fdiv double %26, %25, !dbg !111
  %conv47 = fptosi double %div46 to i64, !dbg !112
  call void @llvm.dbg.value(metadata i64 %conv47, metadata !22, metadata !DIExpression()), !dbg !56
  %arrayidx52 = getelementptr inbounds [3 x [3 x double]], ptr %F, i64 0, i64 2, i64 1, !dbg !113
  %27 = load double, ptr %arrayidx52, align 8, !dbg !113
  %div53 = fdiv double %27, %25, !dbg !114
  %conv54 = fptosi double %div53 to i64, !dbg !115
  call void @llvm.dbg.value(metadata i64 %conv54, metadata !23, metadata !DIExpression()), !dbg !56
  %cmp55.not = icmp eq i64 %1, %conv, !dbg !116
  %cmp57.not = icmp eq i64 %2, %conv47
  %or.cond158 = select i1 %cmp55.not, i1 %cmp57.not, i1 false, !dbg !118
  %cmp60.not = icmp eq i64 %3, %conv54
  %or.cond159 = select i1 %or.cond158, i1 %cmp60.not, i1 false, !dbg !118
  br i1 %or.cond159, label %if.end103, label %if.then62, !dbg !118

if.then62:                                        ; preds = %for.end
  %28 = load ptr, ptr @BOX, align 8, !dbg !119
  %arrayidx63 = getelementptr inbounds ptr, ptr %28, i64 %1, !dbg !119
  %29 = load ptr, ptr %arrayidx63, align 8, !dbg !119
  %arrayidx64 = getelementptr inbounds ptr, ptr %29, i64 %2, !dbg !119
  %30 = load ptr, ptr %arrayidx64, align 8, !dbg !119
  %boxlock = getelementptr inbounds %struct.box_dummy, ptr %30, i64 %3, i32 1, !dbg !122
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %boxlock) #3, !dbg !123
  %cmp66.not = icmp eq ptr %last_ptr.0167, null, !dbg !124
  %31 = load ptr, ptr %next_mol, align 8, !dbg !126
  br i1 %cmp66.not, label %if.else71, label %if.then68, !dbg !127

if.then68:                                        ; preds = %if.then62
  %next_mol70 = getelementptr inbounds %struct.link, ptr %last_ptr.0167, i64 0, i32 1, !dbg !128
  br label %if.end77, !dbg !129

if.else71:                                        ; preds = %if.then62
  %32 = load ptr, ptr @BOX, align 8, !dbg !130
  %arrayidx73 = getelementptr inbounds ptr, ptr %32, i64 %1, !dbg !130
  %33 = load ptr, ptr %arrayidx73, align 8, !dbg !130
  %arrayidx74 = getelementptr inbounds ptr, ptr %33, i64 %2, !dbg !130
  %34 = load ptr, ptr %arrayidx74, align 8, !dbg !130
  %arrayidx75 = getelementptr inbounds %struct.box_dummy, ptr %34, i64 %3, !dbg !130
  br label %if.end77

if.end77:                                         ; preds = %if.else71, %if.then68
  %arrayidx75.sink = phi ptr [ %arrayidx75, %if.else71 ], [ %next_mol70, %if.then68 ]
  store ptr %31, ptr %arrayidx75.sink, align 8, !dbg !126
  %35 = load ptr, ptr @BOX, align 8, !dbg !131
  %arrayidx78 = getelementptr inbounds ptr, ptr %35, i64 %1, !dbg !131
  %36 = load ptr, ptr %arrayidx78, align 8, !dbg !131
  %arrayidx79 = getelementptr inbounds ptr, ptr %36, i64 %2, !dbg !131
  %37 = load ptr, ptr %arrayidx79, align 8, !dbg !131
  %boxlock81 = getelementptr inbounds %struct.box_dummy, ptr %37, i64 %3, i32 1, !dbg !133
  %call82 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %boxlock81) #3, !dbg !134
  %38 = load ptr, ptr @BOX, align 8, !dbg !135
  %arrayidx83 = getelementptr inbounds ptr, ptr %38, i64 %conv, !dbg !135
  %39 = load ptr, ptr %arrayidx83, align 8, !dbg !135
  %arrayidx84 = getelementptr inbounds ptr, ptr %39, i64 %conv47, !dbg !135
  %40 = load ptr, ptr %arrayidx84, align 8, !dbg !135
  %boxlock86 = getelementptr inbounds %struct.box_dummy, ptr %40, i64 %conv54, i32 1, !dbg !137
  %call87 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %boxlock86) #3, !dbg !138
  %41 = load ptr, ptr @BOX, align 8, !dbg !139
  %arrayidx88 = getelementptr inbounds ptr, ptr %41, i64 %conv, !dbg !139
  %42 = load ptr, ptr %arrayidx88, align 8, !dbg !139
  %arrayidx89 = getelementptr inbounds ptr, ptr %42, i64 %conv47, !dbg !139
  %43 = load ptr, ptr %arrayidx89, align 8, !dbg !139
  %arrayidx90 = getelementptr inbounds %struct.box_dummy, ptr %43, i64 %conv54, !dbg !139
  %44 = load ptr, ptr %arrayidx90, align 8, !dbg !140
  call void @llvm.dbg.value(metadata ptr %44, metadata !46, metadata !DIExpression()), !dbg !56
  store ptr %curr_ptr.0169, ptr %arrayidx90, align 8, !dbg !141
  store ptr %44, ptr %next_mol, align 8, !dbg !142
  %45 = load ptr, ptr @BOX, align 8, !dbg !143
  %arrayidx97 = getelementptr inbounds ptr, ptr %45, i64 %conv, !dbg !143
  %46 = load ptr, ptr %arrayidx97, align 8, !dbg !143
  %arrayidx98 = getelementptr inbounds ptr, ptr %46, i64 %conv47, !dbg !143
  %47 = load ptr, ptr %arrayidx98, align 8, !dbg !143
  %boxlock100 = getelementptr inbounds %struct.box_dummy, ptr %47, i64 %conv54, i32 1, !dbg !145
  %call101 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %boxlock100) #3, !dbg !146
  %.pre.pre = load double, ptr @BOXL, align 8, !dbg !66
  br label %if.end103, !dbg !147

if.end103:                                        ; preds = %for.end, %if.end77
  %.pre174 = phi double [ %.pre.pre, %if.end77 ], [ %.pre175, %for.end ]
  %last_ptr.1 = phi ptr [ %last_ptr.0167, %if.end77 ], [ %curr_ptr.0169, %for.end ], !dbg !148
  call void @llvm.dbg.value(metadata ptr %8, metadata !24, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata ptr %last_ptr.1, metadata !44, metadata !DIExpression()), !dbg !56
  %tobool10.not = icmp eq ptr %8, null, !dbg !65
  br i1 %tobool10.not, label %while.end104, label %while.body11, !dbg !65, !llvm.loop !149

while.end104:                                     ; preds = %if.end103, %while.body
  %next_box = getelementptr inbounds %struct.list_of_boxes, ptr %curr_box.0172, i64 0, i32 1, !dbg !151
  call void @llvm.dbg.value(metadata ptr undef, metadata !47, metadata !DIExpression()), !dbg !56
  %curr_box.0 = load ptr, ptr %next_box, align 8, !dbg !56
  call void @llvm.dbg.value(metadata ptr %curr_box.0, metadata !47, metadata !DIExpression()), !dbg !56
  %tobool.not = icmp eq ptr %curr_box.0, null, !dbg !58
  br i1 %tobool.not, label %while.end105, label %while.body, !dbg !58, !llvm.loop !152

while.end105:                                     ; preds = %while.end104, %entry
  ret void, !dbg !154
}

; Function Attrs: nounwind
declare !dbg !155 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !193 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "bndry.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/water-spatial", checksumkind: CSK_MD5, checksum: "b379808adcc08b5b25c7703229e8a1be")
!2 = !{!3, !4}
!3 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!12 = distinct !DISubprogram(name: "BNDRY", scope: !1, file: !1, line: 44, type: !13, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !3}
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !44, !45, !46, !47, !54}
!16 = !DILocalVariable(name: "ProcID", arg: 1, scope: !12, file: !1, line: 44, type: !3)
!17 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 46, type: !3)
!18 = !DILocalVariable(name: "j", scope: !12, file: !1, line: 46, type: !3)
!19 = !DILocalVariable(name: "k", scope: !12, file: !1, line: 46, type: !3)
!20 = !DILocalVariable(name: "dir", scope: !12, file: !1, line: 46, type: !3)
!21 = !DILocalVariable(name: "X_INDEX", scope: !12, file: !1, line: 47, type: !3)
!22 = !DILocalVariable(name: "Y_INDEX", scope: !12, file: !1, line: 47, type: !3)
!23 = !DILocalVariable(name: "Z_INDEX", scope: !12, file: !1, line: 47, type: !3)
!24 = !DILocalVariable(name: "curr_ptr", scope: !12, file: !1, line: 48, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "link", file: !27, line: 30, size: 5440, elements: !28)
!27 = !DIFile(filename: "./mddata.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/water-spatial", checksumkind: CSK_MD5, checksum: "5eef464d675810165298663b2382575d")
!28 = !{!29, !43}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "mol", scope: !26, file: !27, line: 31, baseType: !30, size: 5376)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "molecule_type", file: !27, line: 28, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mol_dummy", file: !27, line: 25, size: 5376, elements: !32)
!32 = !{!33, !39}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "VM", scope: !31, file: !27, line: 26, baseType: !34, size: 192)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_type", file: !27, line: 23, baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 192, elements: !37)
!36 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!37 = !{!38}
!38 = !DISubrange(count: 3)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "F", scope: !31, file: !27, line: 27, baseType: !40, size: 5184, offset: 192)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 5184, elements: !41)
!41 = !{!42, !38, !38}
!42 = !DISubrange(count: 9)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next_mol", scope: !26, file: !27, line: 32, baseType: !25, size: 64, offset: 5376)
!44 = !DILocalVariable(name: "last_ptr", scope: !12, file: !1, line: 48, type: !25)
!45 = !DILocalVariable(name: "next_ptr", scope: !12, file: !1, line: 48, type: !25)
!46 = !DILocalVariable(name: "temp_ptr", scope: !12, file: !1, line: 48, type: !25)
!47 = !DILocalVariable(name: "curr_box", scope: !12, file: !1, line: 49, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_of_boxes", file: !27, line: 48, size: 256, elements: !50)
!50 = !{!51, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "coord", scope: !49, file: !27, line: 49, baseType: !52, size: 192)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 192, elements: !37)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next_box", scope: !49, file: !27, line: 50, baseType: !48, size: 64, offset: 192)
!54 = !DILocalVariable(name: "extra_p", scope: !12, file: !1, line: 50, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!56 = !DILocation(line: 0, scope: !12)
!57 = !DILocation(line: 53, column: 16, scope: !12)
!58 = !DILocation(line: 54, column: 5, scope: !12)
!59 = !DILocation(line: 55, column: 13, scope: !60)
!60 = distinct !DILexicalBlock(scope: !12, file: !1, line: 54, column: 22)
!61 = !DILocation(line: 56, column: 13, scope: !60)
!62 = !DILocation(line: 57, column: 13, scope: !60)
!63 = !DILocation(line: 60, column: 20, scope: !60)
!64 = !DILocation(line: 60, column: 33, scope: !60)
!65 = !DILocation(line: 64, column: 9, scope: !60)
!66 = !DILocation(line: 73, column: 36, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 69, column: 52)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 69, column: 13)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 69, column: 13)
!70 = distinct !DILexicalBlock(scope: !60, file: !1, line: 64, column: 26)
!71 = !DILocation(line: 65, column: 34, scope: !70)
!72 = !DILocation(line: 69, column: 13, scope: !69)
!73 = !DILocation(line: 70, column: 27, scope: !67)
!74 = !DILocation(line: 73, column: 23, scope: !67)
!75 = !DILocation(line: 73, column: 34, scope: !67)
!76 = !DILocation(line: 73, column: 41, scope: !67)
!77 = !DILocation(line: 74, column: 21, scope: !78)
!78 = distinct !DILexicalBlock(scope: !67, file: !1, line: 73, column: 63)
!79 = !DILocation(line: 77, column: 33, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 74, column: 41)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 74, column: 21)
!82 = !DILocation(line: 78, column: 36, scope: !80)
!83 = !DILocation(line: 78, column: 33, scope: !80)
!84 = !DILocation(line: 79, column: 36, scope: !80)
!85 = !DILocation(line: 79, column: 33, scope: !80)
!86 = !DILocation(line: 80, column: 17, scope: !80)
!87 = !DILocation(line: 81, column: 26, scope: !81)
!88 = !DILocation(line: 82, column: 33, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 81, column: 45)
!90 = distinct !DILexicalBlock(scope: !81, file: !1, line: 81, column: 26)
!91 = !DILocation(line: 83, column: 36, scope: !89)
!92 = !DILocation(line: 83, column: 33, scope: !89)
!93 = !DILocation(line: 84, column: 36, scope: !89)
!94 = !DILocation(line: 84, column: 33, scope: !89)
!95 = !DILocation(line: 85, column: 17, scope: !89)
!96 = !DILocation(line: 0, scope: !81)
!97 = distinct !{!97, !98, !99, !100, !101}
!98 = !DILocation(line: 73, column: 17, scope: !67)
!99 = !DILocation(line: 86, column: 3, scope: !67)
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = !DILocation(line: 69, column: 47, scope: !68)
!103 = !DILocation(line: 69, column: 35, scope: !68)
!104 = distinct !{!104, !72, !105, !100, !101}
!105 = !DILocation(line: 87, column: 13, scope: !69)
!106 = !DILocation(line: 90, column: 31, scope: !70)
!107 = !DILocation(line: 90, column: 64, scope: !70)
!108 = !DILocation(line: 90, column: 62, scope: !70)
!109 = !DILocation(line: 90, column: 23, scope: !70)
!110 = !DILocation(line: 91, column: 31, scope: !70)
!111 = !DILocation(line: 91, column: 62, scope: !70)
!112 = !DILocation(line: 91, column: 23, scope: !70)
!113 = !DILocation(line: 92, column: 31, scope: !70)
!114 = !DILocation(line: 92, column: 62, scope: !70)
!115 = !DILocation(line: 92, column: 23, scope: !70)
!116 = !DILocation(line: 94, column: 26, scope: !117)
!117 = distinct !DILexicalBlock(scope: !70, file: !1, line: 94, column: 17)
!118 = !DILocation(line: 94, column: 32, scope: !117)
!119 = !DILocation(line: 100, column: 39, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 100, column: 17)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 96, column: 33)
!122 = !DILocation(line: 100, column: 52, scope: !120)
!123 = !DILocation(line: 100, column: 18, scope: !120)
!124 = !DILocation(line: 101, column: 30, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 101, column: 21)
!126 = !DILocation(line: 0, scope: !125)
!127 = !DILocation(line: 101, column: 21, scope: !121)
!128 = !DILocation(line: 102, column: 31, scope: !125)
!129 = !DILocation(line: 102, column: 21, scope: !125)
!130 = !DILocation(line: 104, column: 21, scope: !125)
!131 = !DILocation(line: 105, column: 41, scope: !132)
!132 = distinct !DILexicalBlock(scope: !121, file: !1, line: 105, column: 17)
!133 = !DILocation(line: 105, column: 54, scope: !132)
!134 = !DILocation(line: 105, column: 18, scope: !132)
!135 = !DILocation(line: 109, column: 39, scope: !136)
!136 = distinct !DILexicalBlock(scope: !121, file: !1, line: 109, column: 17)
!137 = !DILocation(line: 109, column: 70, scope: !136)
!138 = !DILocation(line: 109, column: 18, scope: !136)
!139 = !DILocation(line: 110, column: 28, scope: !121)
!140 = !DILocation(line: 110, column: 59, scope: !121)
!141 = !DILocation(line: 111, column: 53, scope: !121)
!142 = !DILocation(line: 112, column: 36, scope: !121)
!143 = !DILocation(line: 113, column: 41, scope: !144)
!144 = distinct !DILexicalBlock(scope: !121, file: !1, line: 113, column: 17)
!145 = !DILocation(line: 113, column: 72, scope: !144)
!146 = !DILocation(line: 113, column: 18, scope: !144)
!147 = !DILocation(line: 115, column: 13, scope: !121)
!148 = !DILocation(line: 0, scope: !60)
!149 = distinct !{!149, !65, !150, !100, !101}
!150 = !DILocation(line: 118, column: 9, scope: !60)
!151 = !DILocation(line: 119, column: 30, scope: !60)
!152 = distinct !{!152, !58, !153, !100, !101}
!153 = !DILocation(line: 120, column: 5, scope: !12)
!154 = !DILocation(line: 122, column: 1, scope: !12)
!155 = !DISubprogram(name: "pthread_mutex_lock", scope: !156, file: !156, line: 738, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
!156 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !160}
!159 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !162, line: 72, baseType: !163)
!162 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !162, line: 67, size: 320, elements: !164)
!164 = !{!165, !186, !191}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !163, file: !162, line: 69, baseType: !166, size: 320)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !167, line: 22, size: 320, elements: !168)
!167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!168 = !{!169, !170, !172, !173, !174, !175, !177, !178}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !166, file: !167, line: 24, baseType: !159, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !166, file: !167, line: 25, baseType: !171, size: 32, offset: 32)
!171 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !166, file: !167, line: 26, baseType: !159, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !166, file: !167, line: 28, baseType: !171, size: 32, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !166, file: !167, line: 32, baseType: !159, size: 32, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !166, file: !167, line: 34, baseType: !176, size: 16, offset: 160)
!176 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !166, file: !167, line: 35, baseType: !176, size: 16, offset: 176)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !166, file: !167, line: 36, baseType: !179, size: 128, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !180, line: 53, baseType: !181)
!180 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !180, line: 49, size: 128, elements: !182)
!182 = !{!183, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !181, file: !180, line: 51, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !181, file: !180, line: 52, baseType: !184, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !163, file: !162, line: 70, baseType: !187, size: 320)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 320, elements: !189)
!188 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!189 = !{!190}
!190 = !DISubrange(count: 40)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !163, file: !162, line: 71, baseType: !3, size: 64)
!192 = !{}
!193 = !DISubprogram(name: "pthread_mutex_unlock", scope: !156, file: !156, line: 756, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !192)
