; ModuleID = 'predcor.c'
source_filename = "predcor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.box_dummy = type { ptr, %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.mol_dummy = type { [3 x double], [9 x [3 x [3 x double]]] }
%struct.link = type { %struct.mol_dummy, ptr }
%struct.list_of_boxes = type { [3 x i64], ptr }

@my_boxes = external local_unnamed_addr global ptr, align 8
@BOX = external local_unnamed_addr global ptr, align 8
@NORDER = external local_unnamed_addr global i64, align 8

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @PREDIC(ptr nocapture noundef readonly %C, i64 noundef %NOR1, i64 noundef %ProcID) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %C, metadata !16, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 %NOR1, metadata !17, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 %ProcID, metadata !18, metadata !DIExpression()), !dbg !55
  %0 = load ptr, ptr @my_boxes, align 8, !dbg !56
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %ProcID, !dbg !56
  call void @llvm.dbg.value(metadata ptr undef, metadata !48, metadata !DIExpression()), !dbg !55
  %curr_box.078 = load ptr, ptr %arrayidx, align 8, !dbg !55
  call void @llvm.dbg.value(metadata ptr %curr_box.078, metadata !48, metadata !DIExpression()), !dbg !55
  %tobool.not79 = icmp eq ptr %curr_box.078, null, !dbg !57
  br i1 %tobool.not79, label %while.end42, label %while.body, !dbg !57

while.body:                                       ; preds = %entry, %while.end
  %curr_box.080 = phi ptr [ %curr_box.0, %while.end ], [ %curr_box.078, %entry ]
  %1 = load i64, ptr %curr_box.080, align 8, !dbg !58
  call void @llvm.dbg.value(metadata i64 %1, metadata !23, metadata !DIExpression()), !dbg !55
  %arrayidx3 = getelementptr inbounds [3 x i64], ptr %curr_box.080, i64 0, i64 1, !dbg !60
  %2 = load i64, ptr %arrayidx3, align 8, !dbg !60
  call void @llvm.dbg.value(metadata i64 %2, metadata !24, metadata !DIExpression()), !dbg !55
  %arrayidx5 = getelementptr inbounds [3 x i64], ptr %curr_box.080, i64 0, i64 2, !dbg !61
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !61
  call void @llvm.dbg.value(metadata i64 %3, metadata !25, metadata !DIExpression()), !dbg !55
  %4 = load ptr, ptr @BOX, align 8, !dbg !62
  %arrayidx6 = getelementptr inbounds ptr, ptr %4, i64 %1, !dbg !62
  %5 = load ptr, ptr %arrayidx6, align 8, !dbg !62
  %arrayidx7 = getelementptr inbounds ptr, ptr %5, i64 %2, !dbg !62
  %6 = load ptr, ptr %arrayidx7, align 8, !dbg !62
  %arrayidx8 = getelementptr inbounds %struct.box_dummy, ptr %6, i64 %3, !dbg !62
  call void @llvm.dbg.value(metadata ptr undef, metadata !29, metadata !DIExpression()), !dbg !55
  %curr_ptr.074 = load ptr, ptr %arrayidx8, align 8, !dbg !63
  call void @llvm.dbg.value(metadata ptr %curr_ptr.074, metadata !29, metadata !DIExpression()), !dbg !55
  %tobool10.not75 = icmp ne ptr %curr_ptr.074, null, !dbg !64
  %7 = load i64, ptr @NORDER, align 8
  %8 = icmp sgt i64 %7, 0
  %or.cond = select i1 %tobool10.not75, i1 %8, i1 false, !dbg !64
  br i1 %or.cond, label %for.cond.preheader, label %while.end, !dbg !64

for.cond.preheader:                               ; preds = %while.body, %for.end41
  %9 = phi i64 [ %16, %for.end41 ], [ %7, %while.body ], !dbg !65
  %curr_ptr.076 = phi ptr [ %curr_ptr.0, %for.end41 ], [ %curr_ptr.074, %while.body ]
  call void @llvm.dbg.value(metadata i64 2, metadata !19, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 0, metadata !22, metadata !DIExpression()), !dbg !55
  %cmp71 = icmp sgt i64 %9, 0, !dbg !69
  br i1 %cmp71, label %for.cond12.preheader, label %for.end41, !dbg !70

for.cond12.preheader:                             ; preds = %for.cond.preheader, %for.end37
  %JIZ.073 = phi i64 [ %add38, %for.end37 ], [ 2, %for.cond.preheader ]
  %func.072 = phi i64 [ %inc40, %for.end37 ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %JIZ.073, metadata !19, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 %func.072, metadata !22, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 0, metadata !26, metadata !DIExpression()), !dbg !55
  br label %for.cond15.preheader, !dbg !71

for.cond15.preheader:                             ; preds = %for.cond12.preheader, %for.inc35
  %dir.070 = phi i64 [ 0, %for.cond12.preheader ], [ %inc36, %for.inc35 ]
  call void @llvm.dbg.value(metadata i64 %dir.070, metadata !26, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 0, metadata !27, metadata !DIExpression()), !dbg !55
  br label %for.cond18.preheader, !dbg !74

for.cond18.preheader:                             ; preds = %for.cond15.preheader, %for.end
  %atom.068 = phi i64 [ 0, %for.cond15.preheader ], [ %inc33, %for.end ]
  call void @llvm.dbg.value(metadata i64 %atom.068, metadata !27, metadata !DIExpression()), !dbg !55
  %10 = load i64, ptr @NORDER, align 8
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !28, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 %JIZ.073, metadata !20, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 %func.072, metadata !21, metadata !DIExpression()), !dbg !55
  %cmp1964 = icmp slt i64 %func.072, %10, !dbg !77
  br i1 %cmp1964, label %for.body20, label %for.end, !dbg !82

for.body20:                                       ; preds = %for.cond18.preheader, %for.body20
  %S.067 = phi double [ %13, %for.body20 ], [ 0.000000e+00, %for.cond18.preheader ]
  %JI.066 = phi i64 [ %inc, %for.body20 ], [ %JIZ.073, %for.cond18.preheader ]
  %L.065 = phi i64 [ %add, %for.body20 ], [ %func.072, %for.cond18.preheader ]
  call void @llvm.dbg.value(metadata double %S.067, metadata !28, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 %JI.066, metadata !20, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 %L.065, metadata !21, metadata !DIExpression()), !dbg !55
  %arrayidx21 = getelementptr inbounds double, ptr %C, i64 %JI.066, !dbg !83
  %11 = load double, ptr %arrayidx21, align 8, !dbg !83
  %add = add nuw nsw i64 %L.065, 1, !dbg !85
  %arrayidx24 = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.076, i64 0, i32 1, i64 %add, i64 %dir.070, i64 %atom.068, !dbg !86
  %12 = load double, ptr %arrayidx24, align 8, !dbg !86
  %13 = tail call double @llvm.fmuladd.f64(double %11, double %12, double %S.067), !dbg !87
  call void @llvm.dbg.value(metadata double %13, metadata !28, metadata !DIExpression()), !dbg !55
  %inc = add nsw i64 %JI.066, 1, !dbg !88
  call void @llvm.dbg.value(metadata i64 %inc, metadata !20, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i64 %add, metadata !21, metadata !DIExpression()), !dbg !55
  %cmp19 = icmp slt i64 %add, %10, !dbg !77
  br i1 %cmp19, label %for.body20, label %for.end, !dbg !82, !llvm.loop !89

for.end:                                          ; preds = %for.body20, %for.cond18.preheader
  %S.0.lcssa = phi double [ 0.000000e+00, %for.cond18.preheader ], [ %13, %for.body20 ], !dbg !93
  %arrayidx30 = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.076, i64 0, i32 1, i64 %func.072, i64 %dir.070, i64 %atom.068, !dbg !94
  %14 = load double, ptr %arrayidx30, align 8, !dbg !95
  %add31 = fadd double %S.0.lcssa, %14, !dbg !95
  store double %add31, ptr %arrayidx30, align 8, !dbg !95
  %inc33 = add nuw nsw i64 %atom.068, 1, !dbg !96
  call void @llvm.dbg.value(metadata i64 %inc33, metadata !27, metadata !DIExpression()), !dbg !55
  %exitcond.not = icmp eq i64 %inc33, 3, !dbg !97
  br i1 %exitcond.not, label %for.inc35, label %for.cond18.preheader, !dbg !74, !llvm.loop !98

for.inc35:                                        ; preds = %for.end
  %inc36 = add nuw nsw i64 %dir.070, 1, !dbg !100
  call void @llvm.dbg.value(metadata i64 %inc36, metadata !26, metadata !DIExpression()), !dbg !55
  %exitcond82.not = icmp eq i64 %inc36, 3, !dbg !101
  br i1 %exitcond82.not, label %for.end37, label %for.cond15.preheader, !dbg !71, !llvm.loop !102

for.end37:                                        ; preds = %for.inc35
  %add38 = add nsw i64 %JIZ.073, %NOR1, !dbg !104
  call void @llvm.dbg.value(metadata i64 %add38, metadata !19, metadata !DIExpression()), !dbg !55
  %inc40 = add nuw nsw i64 %func.072, 1, !dbg !105
  call void @llvm.dbg.value(metadata i64 %inc40, metadata !22, metadata !DIExpression()), !dbg !55
  %15 = load i64, ptr @NORDER, align 8, !dbg !65
  %cmp = icmp slt i64 %inc40, %15, !dbg !69
  br i1 %cmp, label %for.cond12.preheader, label %for.end41, !dbg !70, !llvm.loop !106

for.end41:                                        ; preds = %for.end37, %for.cond.preheader
  %16 = phi i64 [ %9, %for.cond.preheader ], [ %15, %for.end37 ]
  %next_mol = getelementptr inbounds %struct.link, ptr %curr_ptr.076, i64 0, i32 1, !dbg !108
  call void @llvm.dbg.value(metadata ptr undef, metadata !29, metadata !DIExpression()), !dbg !55
  %curr_ptr.0 = load ptr, ptr %next_mol, align 8, !dbg !63
  call void @llvm.dbg.value(metadata ptr %curr_ptr.0, metadata !29, metadata !DIExpression()), !dbg !55
  %tobool10.not = icmp eq ptr %curr_ptr.0, null, !dbg !64
  br i1 %tobool10.not, label %while.end, label %for.cond.preheader, !dbg !64, !llvm.loop !109

while.end:                                        ; preds = %for.end41, %while.body
  %next_box = getelementptr inbounds %struct.list_of_boxes, ptr %curr_box.080, i64 0, i32 1, !dbg !112
  call void @llvm.dbg.value(metadata ptr undef, metadata !48, metadata !DIExpression()), !dbg !55
  %curr_box.0 = load ptr, ptr %next_box, align 8, !dbg !55
  call void @llvm.dbg.value(metadata ptr %curr_box.0, metadata !48, metadata !DIExpression()), !dbg !55
  %tobool.not = icmp eq ptr %curr_box.0, null, !dbg !57
  br i1 %tobool.not, label %while.end42, label %while.body, !dbg !57, !llvm.loop !113

while.end42:                                      ; preds = %while.end, %entry
  ret void, !dbg !115
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @CORREC(ptr nocapture noundef readonly %PCC, i64 noundef %NOR1, i64 noundef %ProcID) local_unnamed_addr #0 !dbg !116 {
entry:
  call void @llvm.dbg.value(metadata ptr %PCC, metadata !118, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 %NOR1, metadata !119, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 %ProcID, metadata !120, metadata !DIExpression()), !dbg !132
  %0 = load ptr, ptr @my_boxes, align 8, !dbg !133
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %ProcID, !dbg !133
  call void @llvm.dbg.value(metadata ptr undef, metadata !129, metadata !DIExpression()), !dbg !132
  %curr_box.068 = load ptr, ptr %arrayidx, align 8, !dbg !132
  call void @llvm.dbg.value(metadata ptr %curr_box.068, metadata !129, metadata !DIExpression()), !dbg !132
  %tobool.not69 = icmp ne ptr %curr_box.068, null, !dbg !134
  %cmp2458 = icmp sgt i64 %NOR1, 0
  %or.cond = and i1 %tobool.not69, %cmp2458, !dbg !134
  br i1 %or.cond, label %while.body.us, label %while.end38, !dbg !134

while.body.us:                                    ; preds = %entry, %while.end.us
  %curr_box.070.us = phi ptr [ %curr_box.0.us, %while.end.us ], [ %curr_box.068, %entry ]
  %1 = load i64, ptr %curr_box.070.us, align 8, !dbg !135
  call void @llvm.dbg.value(metadata i64 %1, metadata !122, metadata !DIExpression()), !dbg !132
  %arrayidx3.us = getelementptr inbounds [3 x i64], ptr %curr_box.070.us, i64 0, i64 1, !dbg !137
  %2 = load i64, ptr %arrayidx3.us, align 8, !dbg !137
  call void @llvm.dbg.value(metadata i64 %2, metadata !123, metadata !DIExpression()), !dbg !132
  %arrayidx5.us = getelementptr inbounds [3 x i64], ptr %curr_box.070.us, i64 0, i64 2, !dbg !138
  %3 = load i64, ptr %arrayidx5.us, align 8, !dbg !138
  call void @llvm.dbg.value(metadata i64 %3, metadata !124, metadata !DIExpression()), !dbg !132
  %4 = load ptr, ptr @BOX, align 8, !dbg !139
  %arrayidx6.us = getelementptr inbounds ptr, ptr %4, i64 %1, !dbg !139
  %5 = load ptr, ptr %arrayidx6.us, align 8, !dbg !139
  %arrayidx7.us = getelementptr inbounds ptr, ptr %5, i64 %2, !dbg !139
  %6 = load ptr, ptr %arrayidx7.us, align 8, !dbg !139
  %arrayidx8.us = getelementptr inbounds %struct.box_dummy, ptr %6, i64 %3, !dbg !139
  call void @llvm.dbg.value(metadata ptr undef, metadata !128, metadata !DIExpression()), !dbg !132
  %curr_ptr.064.us = load ptr, ptr %arrayidx8.us, align 8, !dbg !140
  call void @llvm.dbg.value(metadata ptr %curr_ptr.064.us, metadata !128, metadata !DIExpression()), !dbg !132
  %tobool10.not65.us = icmp eq ptr %curr_ptr.064.us, null, !dbg !141
  br i1 %tobool10.not65.us, label %while.end.us, label %for.cond.preheader.us.us, !dbg !141

while.end.us:                                     ; preds = %for.end37.split.us.us.us, %while.body.us
  %next_box.us = getelementptr inbounds %struct.list_of_boxes, ptr %curr_box.070.us, i64 0, i32 1, !dbg !142
  call void @llvm.dbg.value(metadata ptr undef, metadata !129, metadata !DIExpression()), !dbg !132
  %curr_box.0.us = load ptr, ptr %next_box.us, align 8, !dbg !132
  call void @llvm.dbg.value(metadata ptr %curr_box.0.us, metadata !129, metadata !DIExpression()), !dbg !132
  %tobool.not.us = icmp eq ptr %curr_box.0.us, null, !dbg !134
  br i1 %tobool.not.us, label %while.end38, label %while.body.us, !dbg !134, !llvm.loop !143

for.cond.preheader.us.us:                         ; preds = %while.body.us, %for.end37.split.us.us.us
  %curr_ptr.066.us.us = phi ptr [ %curr_ptr.0.us.us, %for.end37.split.us.us.us ], [ %curr_ptr.064.us, %while.body.us ]
  call void @llvm.dbg.value(metadata i64 0, metadata !125, metadata !DIExpression()), !dbg !132
  br label %for.cond12.preheader.us.us.us, !dbg !145

for.cond12.preheader.us.us.us:                    ; preds = %for.inc35.split.us.us.us.us, %for.cond.preheader.us.us
  %dir.062.us.us.us = phi i64 [ 0, %for.cond.preheader.us.us ], [ %inc36.us.us.us, %for.inc35.split.us.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %dir.062.us.us.us, metadata !125, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 0, metadata !126, metadata !DIExpression()), !dbg !132
  br label %for.body14.us.us.us.us, !dbg !148

for.body14.us.us.us.us:                           ; preds = %for.cond23.for.inc32_crit_edge.us.us.us.us, %for.cond12.preheader.us.us.us
  %atom.060.us.us.us.us = phi i64 [ 0, %for.cond12.preheader.us.us.us ], [ %inc33.us.us.us.us, %for.cond23.for.inc32_crit_edge.us.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %atom.060.us.us.us.us, metadata !126, metadata !DIExpression()), !dbg !132
  %arrayidx17.us.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.066.us.us, i64 0, i32 1, i64 7, i64 %dir.062.us.us.us, i64 %atom.060.us.us.us.us, !dbg !152
  %7 = load double, ptr %arrayidx17.us.us.us.us, align 8, !dbg !152
  %arrayidx22.us.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.066.us.us, i64 0, i32 1, i64 2, i64 %dir.062.us.us.us, i64 %atom.060.us.us.us.us, !dbg !155
  %8 = load double, ptr %arrayidx22.us.us.us.us, align 8, !dbg !155
  %sub.us.us.us.us = fsub double %7, %8, !dbg !156
  call void @llvm.dbg.value(metadata double %sub.us.us.us.us, metadata !121, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 0, metadata !127, metadata !DIExpression()), !dbg !132
  br label %for.body25.us.us.us.us, !dbg !157

for.body25.us.us.us.us:                           ; preds = %for.body25.us.us.us.us, %for.body14.us.us.us.us
  %func.059.us.us.us.us = phi i64 [ 0, %for.body14.us.us.us.us ], [ %inc.us.us.us.us, %for.body25.us.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %func.059.us.us.us.us, metadata !127, metadata !DIExpression()), !dbg !132
  %arrayidx26.us.us.us.us = getelementptr inbounds double, ptr %PCC, i64 %func.059.us.us.us.us, !dbg !159
  %9 = load double, ptr %arrayidx26.us.us.us.us, align 8, !dbg !159
  %arrayidx31.us.us.us.us = getelementptr inbounds %struct.mol_dummy, ptr %curr_ptr.066.us.us, i64 0, i32 1, i64 %func.059.us.us.us.us, i64 %dir.062.us.us.us, i64 %atom.060.us.us.us.us, !dbg !161
  %10 = load double, ptr %arrayidx31.us.us.us.us, align 8, !dbg !162
  %11 = tail call double @llvm.fmuladd.f64(double %9, double %sub.us.us.us.us, double %10), !dbg !162
  store double %11, ptr %arrayidx31.us.us.us.us, align 8, !dbg !162
  %inc.us.us.us.us = add nuw nsw i64 %func.059.us.us.us.us, 1, !dbg !163
  call void @llvm.dbg.value(metadata i64 %inc.us.us.us.us, metadata !127, metadata !DIExpression()), !dbg !132
  %exitcond.not = icmp eq i64 %inc.us.us.us.us, %NOR1, !dbg !164
  br i1 %exitcond.not, label %for.cond23.for.inc32_crit_edge.us.us.us.us, label %for.body25.us.us.us.us, !dbg !157, !llvm.loop !165

for.cond23.for.inc32_crit_edge.us.us.us.us:       ; preds = %for.body25.us.us.us.us
  %inc33.us.us.us.us = add nuw nsw i64 %atom.060.us.us.us.us, 1, !dbg !167
  call void @llvm.dbg.value(metadata i64 %inc33.us.us.us.us, metadata !126, metadata !DIExpression()), !dbg !132
  %exitcond72.not = icmp eq i64 %inc33.us.us.us.us, 3, !dbg !168
  br i1 %exitcond72.not, label %for.inc35.split.us.us.us.us, label %for.body14.us.us.us.us, !dbg !148, !llvm.loop !169

for.inc35.split.us.us.us.us:                      ; preds = %for.cond23.for.inc32_crit_edge.us.us.us.us
  %inc36.us.us.us = add nuw nsw i64 %dir.062.us.us.us, 1, !dbg !171
  call void @llvm.dbg.value(metadata i64 %inc36.us.us.us, metadata !125, metadata !DIExpression()), !dbg !132
  %exitcond73.not = icmp eq i64 %inc36.us.us.us, 3, !dbg !172
  br i1 %exitcond73.not, label %for.end37.split.us.us.us, label %for.cond12.preheader.us.us.us, !dbg !145, !llvm.loop !173

for.end37.split.us.us.us:                         ; preds = %for.inc35.split.us.us.us.us
  %next_mol.us.us = getelementptr inbounds %struct.link, ptr %curr_ptr.066.us.us, i64 0, i32 1, !dbg !175
  call void @llvm.dbg.value(metadata ptr undef, metadata !128, metadata !DIExpression()), !dbg !132
  %curr_ptr.0.us.us = load ptr, ptr %next_mol.us.us, align 8, !dbg !140
  call void @llvm.dbg.value(metadata ptr %curr_ptr.0.us.us, metadata !128, metadata !DIExpression()), !dbg !132
  %tobool10.not.us.us = icmp eq ptr %curr_ptr.0.us.us, null, !dbg !141
  br i1 %tobool10.not.us.us, label %while.end.us, label %for.cond.preheader.us.us, !dbg !141, !llvm.loop !176

while.end38:                                      ; preds = %while.end.us, %entry
  ret void, !dbg !178
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "predcor.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/water-spatial", checksumkind: CSK_MD5, checksum: "8304a4c50c5ccf7ada30c732e6b943f0")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "PREDIC", scope: !1, file: !1, line: 48, type: !10, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !48}
!16 = !DILocalVariable(name: "C", arg: 1, scope: !9, file: !1, line: 48, type: !12)
!17 = !DILocalVariable(name: "NOR1", arg: 2, scope: !9, file: !1, line: 48, type: !14)
!18 = !DILocalVariable(name: "ProcID", arg: 3, scope: !9, file: !1, line: 48, type: !14)
!19 = !DILocalVariable(name: "JIZ", scope: !9, file: !1, line: 52, type: !14)
!20 = !DILocalVariable(name: "JI", scope: !9, file: !1, line: 53, type: !14)
!21 = !DILocalVariable(name: "L", scope: !9, file: !1, line: 54, type: !14)
!22 = !DILocalVariable(name: "func", scope: !9, file: !1, line: 55, type: !14)
!23 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 55, type: !14)
!24 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 55, type: !14)
!25 = !DILocalVariable(name: "k", scope: !9, file: !1, line: 55, type: !14)
!26 = !DILocalVariable(name: "dir", scope: !9, file: !1, line: 55, type: !14)
!27 = !DILocalVariable(name: "atom", scope: !9, file: !1, line: 55, type: !14)
!28 = !DILocalVariable(name: "S", scope: !9, file: !1, line: 56, type: !13)
!29 = !DILocalVariable(name: "curr_ptr", scope: !9, file: !1, line: 57, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "link", file: !32, line: 30, size: 5440, elements: !33)
!32 = !DIFile(filename: "./mddata.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/water-spatial", checksumkind: CSK_MD5, checksum: "5eef464d675810165298663b2382575d")
!33 = !{!34, !47}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "mol", scope: !31, file: !32, line: 31, baseType: !35, size: 5376)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "molecule_type", file: !32, line: 28, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mol_dummy", file: !32, line: 25, size: 5376, elements: !37)
!37 = !{!38, !43}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "VM", scope: !36, file: !32, line: 26, baseType: !39, size: 192)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_type", file: !32, line: 23, baseType: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 3)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "F", scope: !36, file: !32, line: 27, baseType: !44, size: 5184, offset: 192)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 5184, elements: !45)
!45 = !{!46, !42, !42}
!46 = !DISubrange(count: 9)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next_mol", scope: !31, file: !32, line: 32, baseType: !30, size: 64, offset: 5376)
!48 = !DILocalVariable(name: "curr_box", scope: !9, file: !1, line: 58, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_of_boxes", file: !32, line: 48, size: 256, elements: !51)
!51 = !{!52, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "coord", scope: !50, file: !32, line: 49, baseType: !53, size: 192)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !41)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_box", scope: !50, file: !32, line: 50, baseType: !49, size: 64, offset: 192)
!55 = !DILocation(line: 0, scope: !9)
!56 = !DILocation(line: 60, column: 16, scope: !9)
!57 = !DILocation(line: 62, column: 5, scope: !9)
!58 = !DILocation(line: 64, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !9, file: !1, line: 62, column: 22)
!60 = !DILocation(line: 65, column: 13, scope: !59)
!61 = !DILocation(line: 66, column: 13, scope: !59)
!62 = !DILocation(line: 70, column: 20, scope: !59)
!63 = !DILocation(line: 0, scope: !59)
!64 = !DILocation(line: 72, column: 9, scope: !59)
!65 = !DILocation(line: 78, column: 35, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 78, column: 13)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 78, column: 13)
!68 = distinct !DILexicalBlock(scope: !59, file: !1, line: 72, column: 26)
!69 = !DILocation(line: 78, column: 33, scope: !66)
!70 = !DILocation(line: 78, column: 13, scope: !67)
!71 = !DILocation(line: 79, column: 17, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 79, column: 17)
!73 = distinct !DILexicalBlock(scope: !66, file: !1, line: 78, column: 51)
!74 = !DILocation(line: 80, column: 21, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 80, column: 21)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 79, column: 17)
!77 = !DILocation(line: 84, column: 43, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 84, column: 25)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 84, column: 25)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 80, column: 60)
!81 = distinct !DILexicalBlock(scope: !75, file: !1, line: 80, column: 21)
!82 = !DILocation(line: 84, column: 25, scope: !79)
!83 = !DILocation(line: 85, column: 34, scope: !84)
!84 = distinct !DILexicalBlock(scope: !78, file: !1, line: 84, column: 58)
!85 = !DILocation(line: 85, column: 59, scope: !84)
!86 = !DILocation(line: 85, column: 42, scope: !84)
!87 = !DILocation(line: 85, column: 31, scope: !84)
!88 = !DILocation(line: 86, column: 31, scope: !84)
!89 = distinct !{!89, !82, !90, !91, !92}
!90 = !DILocation(line: 87, column: 25, scope: !79)
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !DILocation(line: 0, scope: !80)
!94 = !DILocation(line: 88, column: 25, scope: !80)
!95 = !DILocation(line: 88, column: 58, scope: !80)
!96 = !DILocation(line: 80, column: 55, scope: !81)
!97 = !DILocation(line: 80, column: 42, scope: !81)
!98 = distinct !{!98, !74, !99, !91, !92}
!99 = !DILocation(line: 89, column: 21, scope: !75)
!100 = !DILocation(line: 79, column: 47, scope: !76)
!101 = !DILocation(line: 79, column: 36, scope: !76)
!102 = distinct !{!102, !71, !103, !91, !92}
!103 = !DILocation(line: 89, column: 21, scope: !72)
!104 = !DILocation(line: 90, column: 21, scope: !73)
!105 = !DILocation(line: 78, column: 47, scope: !66)
!106 = distinct !{!106, !70, !107, !91, !92}
!107 = !DILocation(line: 91, column: 13, scope: !67)
!108 = !DILocation(line: 92, column: 34, scope: !68)
!109 = distinct !{!109, !64, !110, !91, !92, !111}
!110 = !DILocation(line: 93, column: 9, scope: !59)
!111 = !{!"llvm.loop.unswitch.partial.disable"}
!112 = !DILocation(line: 94, column: 30, scope: !59)
!113 = distinct !{!113, !57, !114, !91, !92}
!114 = !DILocation(line: 95, column: 5, scope: !9)
!115 = !DILocation(line: 97, column: 1, scope: !9)
!116 = distinct !DISubprogram(name: "CORREC", scope: !1, file: !1, line: 104, type: !10, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!118 = !DILocalVariable(name: "PCC", arg: 1, scope: !116, file: !1, line: 104, type: !12)
!119 = !DILocalVariable(name: "NOR1", arg: 2, scope: !116, file: !1, line: 104, type: !14)
!120 = !DILocalVariable(name: "ProcID", arg: 3, scope: !116, file: !1, line: 104, type: !14)
!121 = !DILocalVariable(name: "Y", scope: !116, file: !1, line: 113, type: !13)
!122 = !DILocalVariable(name: "i", scope: !116, file: !1, line: 114, type: !14)
!123 = !DILocalVariable(name: "j", scope: !116, file: !1, line: 114, type: !14)
!124 = !DILocalVariable(name: "k", scope: !116, file: !1, line: 114, type: !14)
!125 = !DILocalVariable(name: "dir", scope: !116, file: !1, line: 114, type: !14)
!126 = !DILocalVariable(name: "atom", scope: !116, file: !1, line: 114, type: !14)
!127 = !DILocalVariable(name: "func", scope: !116, file: !1, line: 114, type: !14)
!128 = !DILocalVariable(name: "curr_ptr", scope: !116, file: !1, line: 115, type: !30)
!129 = !DILocalVariable(name: "curr_box", scope: !116, file: !1, line: 116, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "box_list", file: !32, line: 51, baseType: !50)
!132 = !DILocation(line: 0, scope: !116)
!133 = !DILocation(line: 118, column: 16, scope: !116)
!134 = !DILocation(line: 120, column: 5, scope: !116)
!135 = !DILocation(line: 122, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !116, file: !1, line: 120, column: 22)
!137 = !DILocation(line: 123, column: 13, scope: !136)
!138 = !DILocation(line: 124, column: 13, scope: !136)
!139 = !DILocation(line: 128, column: 20, scope: !136)
!140 = !DILocation(line: 0, scope: !136)
!141 = !DILocation(line: 129, column: 9, scope: !136)
!142 = !DILocation(line: 141, column: 30, scope: !136)
!143 = distinct !{!143, !134, !144, !91, !92}
!144 = !DILocation(line: 142, column: 5, scope: !116)
!145 = !DILocation(line: 131, column: 13, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 131, column: 13)
!147 = distinct !DILexicalBlock(scope: !136, file: !1, line: 129, column: 26)
!148 = !DILocation(line: 132, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !1, line: 132, column: 17)
!150 = distinct !DILexicalBlock(scope: !151, file: !1, line: 131, column: 46)
!151 = distinct !DILexicalBlock(scope: !146, file: !1, line: 131, column: 13)
!152 = !DILocation(line: 133, column: 25, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 132, column: 54)
!154 = distinct !DILexicalBlock(scope: !149, file: !1, line: 132, column: 17)
!155 = !DILocation(line: 134, column: 25, scope: !153)
!156 = !DILocation(line: 133, column: 60, scope: !153)
!157 = !DILocation(line: 135, column: 21, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !1, line: 135, column: 21)
!159 = !DILocation(line: 136, column: 61, scope: !160)
!160 = distinct !DILexicalBlock(scope: !158, file: !1, line: 135, column: 21)
!161 = !DILocation(line: 136, column: 25, scope: !160)
!162 = !DILocation(line: 136, column: 58, scope: !160)
!163 = !DILocation(line: 135, column: 54, scope: !160)
!164 = !DILocation(line: 135, column: 42, scope: !160)
!165 = distinct !{!165, !157, !166, !91, !92}
!166 = !DILocation(line: 136, column: 73, scope: !158)
!167 = !DILocation(line: 132, column: 50, scope: !154)
!168 = !DILocation(line: 132, column: 37, scope: !154)
!169 = distinct !{!169, !148, !170, !91, !92}
!170 = !DILocation(line: 137, column: 17, scope: !149)
!171 = !DILocation(line: 131, column: 42, scope: !151)
!172 = !DILocation(line: 131, column: 31, scope: !151)
!173 = distinct !{!173, !145, !174, !91, !92}
!174 = !DILocation(line: 138, column: 13, scope: !146)
!175 = !DILocation(line: 139, column: 33, scope: !147)
!176 = distinct !{!176, !141, !177, !91, !92}
!177 = !DILocation(line: 140, column: 9, scope: !136)
!178 = !DILocation(line: 144, column: 1, scope: !116)
