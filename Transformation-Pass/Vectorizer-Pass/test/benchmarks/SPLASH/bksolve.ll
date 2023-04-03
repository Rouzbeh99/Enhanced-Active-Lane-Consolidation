; ModuleID = 'bksolve.c'
source_filename = "bksolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BMatrix = type { i64, ptr, ptr, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, i64, ptr, ptr }
%union.Entry = type { ptr }
%struct.Block = type { i64, i64, i64, i64, i64, i64, i64, double, ptr, ptr, ptr, ptr }
%struct.SMatrix = type { i64, i64, ptr, ptr, ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @TriBSolve(ptr noundef readonly byval(%struct.BMatrix) align 8 %LB, ptr nocapture noundef readonly %b, ptr nocapture noundef readonly %PERM) local_unnamed_addr #0 !dbg !12 {
entry:
  call void @llvm.dbg.declare(metadata ptr %LB, metadata !68, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata ptr %b, metadata !69, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata ptr %PERM, metadata !70, metadata !DIExpression()), !dbg !82
  %0 = load i64, ptr %LB, align 8, !dbg !83
  %mul = shl i64 %0, 3, !dbg !84
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #9, !dbg !85
  call void @llvm.dbg.value(metadata ptr %call, metadata !79, metadata !DIExpression()), !dbg !82
  %call3 = tail call noalias ptr @malloc(i64 noundef %mul) #9, !dbg !86
  call void @llvm.dbg.value(metadata ptr %call3, metadata !78, metadata !DIExpression()), !dbg !82
  %call6 = tail call noalias ptr @malloc(i64 noundef %mul) #9, !dbg !87
  call void @llvm.dbg.value(metadata ptr %call6, metadata !77, metadata !DIExpression()), !dbg !82
  %call9 = tail call noalias ptr @malloc(i64 noundef %mul) #9, !dbg !88
  call void @llvm.dbg.value(metadata ptr %call9, metadata !80, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i64 0, metadata !72, metadata !DIExpression()), !dbg !82
  %cmp553 = icmp sgt i64 %0, 0, !dbg !89
  br i1 %cmp553, label %for.body15.lr.ph, label %for.cond12.preheader.for.end172_crit_edge, !dbg !92

for.cond12.preheader.for.end172_crit_edge:        ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !72, metadata !DIExpression()), !dbg !82
  %partition_size175.phi.trans.insert = getelementptr inbounds %struct.BMatrix, ptr %LB, i64 0, i32 6
  %.pre = load ptr, ptr %partition_size175.phi.trans.insert, align 8, !dbg !93
  br label %for.end172, !dbg !95

for.body15.lr.ph:                                 ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call9, ptr align 8 %b, i64 %mul, i1 false), !dbg !97
  call void @llvm.dbg.value(metadata i64 0, metadata !72, metadata !DIExpression()), !dbg !82
  %domain = getelementptr inbounds %struct.BMatrix, ptr %LB, i64 0, i32 10
  %1 = load ptr, ptr %domain, align 8
  %entry19 = getelementptr inbounds %struct.BMatrix, ptr %LB, i64 0, i32 17
  %2 = load ptr, ptr %entry19, align 8
  %col = getelementptr inbounds %struct.BMatrix, ptr %LB, i64 0, i32 1
  %3 = load ptr, ptr %col, align 8
  %row35 = getelementptr inbounds %struct.BMatrix, ptr %LB, i64 0, i32 2
  %4 = load ptr, ptr %row35, align 8
  %partition_size = getelementptr inbounds %struct.BMatrix, ptr %LB, i64 0, i32 6
  %5 = load ptr, ptr %partition_size, align 8
  br label %for.body15, !dbg !95

for.body15:                                       ; preds = %for.body15.lr.ph, %for.inc168
  %j.1580 = phi i64 [ 0, %for.body15.lr.ph ], [ %add171, %for.inc168 ]
  call void @llvm.dbg.value(metadata i64 %j.1580, metadata !72, metadata !DIExpression()), !dbg !82
  %arrayidx16 = getelementptr inbounds i64, ptr %1, i64 %j.1580, !dbg !98
  %6 = load i64, ptr %arrayidx16, align 8, !dbg !98
  %tobool.not = icmp eq i64 %6, 0, !dbg !98
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !102

if.then:                                          ; preds = %for.body15
  %arrayidx17 = getelementptr inbounds i64, ptr %PERM, i64 %j.1580, !dbg !103
  %7 = load i64, ptr %arrayidx17, align 8, !dbg !103
  %arrayidx18 = getelementptr inbounds double, ptr %call9, i64 %7, !dbg !105
  %8 = load double, ptr %arrayidx18, align 8, !dbg !105
  %arrayidx20 = getelementptr inbounds i64, ptr %3, i64 %j.1580, !dbg !106
  %9 = load i64, ptr %arrayidx20, align 8, !dbg !106
  %arrayidx21 = getelementptr inbounds %union.Entry, ptr %2, i64 %9, !dbg !107
  %10 = load double, ptr %arrayidx21, align 8, !dbg !108
  %div = fdiv double %8, %10, !dbg !109
  %arrayidx22 = getelementptr inbounds double, ptr %call6, i64 %j.1580, !dbg !110
  store double %div, ptr %arrayidx22, align 8, !dbg !111
  call void @llvm.dbg.value(metadata i64 %9, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !82
  %add27 = add nsw i64 %j.1580, 1
  %arrayidx28 = getelementptr inbounds i64, ptr %3, i64 %add27
  %11 = load i64, ptr %arrayidx28, align 8
  %i.0555 = add nsw i64 %9, 1, !dbg !112
  call void @llvm.dbg.value(metadata i64 %i.0555, metadata !71, metadata !DIExpression()), !dbg !82
  %cmp29556 = icmp slt i64 %i.0555, %11, !dbg !114
  br i1 %cmp29556, label %for.body30, label %for.inc168, !dbg !116

for.body30:                                       ; preds = %if.then, %for.body30
  %i.0557 = phi i64 [ %i.0, %for.body30 ], [ %i.0555, %if.then ]
  %arrayidx32 = getelementptr inbounds %union.Entry, ptr %2, i64 %i.0557, !dbg !117
  %12 = load double, ptr %arrayidx32, align 8, !dbg !118
  %arrayidx36 = getelementptr inbounds i64, ptr %4, i64 %i.0557, !dbg !119
  %13 = load i64, ptr %arrayidx36, align 8, !dbg !119
  %arrayidx37 = getelementptr inbounds i64, ptr %PERM, i64 %13, !dbg !120
  %14 = load i64, ptr %arrayidx37, align 8, !dbg !120
  %arrayidx38 = getelementptr inbounds double, ptr %call9, i64 %14, !dbg !121
  %15 = load double, ptr %arrayidx38, align 8, !dbg !122
  %neg = fneg double %12, !dbg !122
  %16 = tail call double @llvm.fmuladd.f64(double %neg, double %div, double %15), !dbg !122
  store double %16, ptr %arrayidx38, align 8, !dbg !122
  call void @llvm.dbg.value(metadata i64 %i.0557, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !82
  %i.0 = add nsw i64 %i.0557, 1, !dbg !112
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !71, metadata !DIExpression()), !dbg !82
  %exitcond.not = icmp eq i64 %i.0, %11, !dbg !114
  br i1 %exitcond.not, label %for.inc168, label %for.body30, !dbg !116, !llvm.loop !123

if.else:                                          ; preds = %for.body15
  %arrayidx43 = getelementptr inbounds i64, ptr %3, i64 %j.1580, !dbg !127
  %17 = load i64, ptr %arrayidx43, align 8, !dbg !127
  call void @llvm.dbg.value(metadata i64 %17, metadata !75, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i64 %j.1580, metadata !74, metadata !DIExpression()), !dbg !82
  %arrayidx45 = getelementptr inbounds i64, ptr %5, i64 %j.1580
  %18 = load i64, ptr %arrayidx45, align 8
  %add46 = add nsw i64 %18, %j.1580
  %cmp47561 = icmp sgt i64 %18, 0, !dbg !129
  br i1 %cmp47561, label %for.body48.lr.ph, label %for.inc168, !dbg !132

for.body48.lr.ph:                                 ; preds = %if.else
  %arrayidx52 = getelementptr inbounds %union.Entry, ptr %2, i64 %17
  %19 = load ptr, ptr %arrayidx52, align 8
  %nz = getelementptr inbounds %struct.Block, ptr %19, i64 0, i32 10
  %20 = load ptr, ptr %nz, align 8
  %length = getelementptr inbounds %struct.Block, ptr %19, i64 0, i32 5
  %21 = load i64, ptr %length, align 8
  %structure = getelementptr inbounds %struct.Block, ptr %19, i64 0, i32 8
  %arrayidx74 = getelementptr inbounds i64, ptr %4, i64 %17
  br label %for.body48, !dbg !132

for.cond108.preheader:                            ; preds = %for.inc102
  %add110 = add nsw i64 %j.1580, 1
  %arrayidx111 = getelementptr inbounds i64, ptr %3, i64 %add110
  %22 = load i64, ptr %arrayidx111, align 8
  %bl.0576 = add nsw i64 %17, 1, !dbg !133
  call void @llvm.dbg.value(metadata i64 %bl.0576, metadata !75, metadata !DIExpression()), !dbg !82
  %cmp112577 = icmp sge i64 %bl.0576, %22, !dbg !135
  %cmp47561.not = xor i1 %cmp47561, true, !dbg !137
  %brmerge = select i1 %cmp112577, i1 true, i1 %cmp47561.not, !dbg !137
  br i1 %brmerge, label %for.inc168, label %for.cond114.preheader.us, !dbg !137

for.cond114.preheader.us:                         ; preds = %for.cond108.preheader, %for.cond108.loopexit.us
  %bl.0578.us = phi i64 [ %bl.0.us, %for.cond108.loopexit.us ], [ %bl.0576, %for.cond108.preheader ]
  %arrayidx116.us = getelementptr inbounds %union.Entry, ptr %2, i64 %bl.0578.us
  %23 = load ptr, ptr %arrayidx116.us, align 8
  %length117.us = getelementptr inbounds %struct.Block, ptr %23, i64 0, i32 5
  %24 = load i64, ptr %length117.us, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !73, metadata !DIExpression()), !dbg !82
  %cmp118566.us = icmp sgt i64 %24, 0, !dbg !138
  br i1 %cmp118566.us, label %for.body119.lr.ph.us, label %for.cond108.loopexit.us, !dbg !142

for.cond108.loopexit.us:                          ; preds = %for.cond137.for.inc161_crit_edge.us.us, %for.cond137.for.inc161_crit_edge.us.us.us, %for.cond114.preheader.us
  %bl.0.us = add nsw i64 %bl.0578.us, 1, !dbg !133
  call void @llvm.dbg.value(metadata i64 %bl.0.us, metadata !75, metadata !DIExpression()), !dbg !82
  %exitcond632.not = icmp eq i64 %bl.0.us, %22, !dbg !135
  br i1 %exitcond632.not, label %for.inc168, label %for.cond114.preheader.us, !dbg !137, !llvm.loop !143

for.body119.lr.ph.us:                             ; preds = %for.cond114.preheader.us
  %structure122.us = getelementptr inbounds %struct.Block, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %structure122.us, align 8
  %tobool123.not.us = icmp eq ptr %25, null
  %nz145.us = getelementptr inbounds %struct.Block, ptr %23, i64 0, i32 10
  %26 = load ptr, ptr %nz145.us, align 8
  %arrayidx134.us = getelementptr inbounds i64, ptr %4, i64 %bl.0578.us
  %27 = load i64, ptr %arrayidx134.us, align 8
  br i1 %tobool123.not.us, label %for.body119.us.us.us, label %for.body119.us.us, !dbg !145

for.body119.us.us.us:                             ; preds = %for.body119.lr.ph.us, %for.cond137.for.inc161_crit_edge.us.us.us
  %i1.1567.us.us.us = phi i64 [ %inc162.us.us.us, %for.cond137.for.inc161_crit_edge.us.us.us ], [ 0, %for.body119.lr.ph.us ]
  call void @llvm.dbg.value(metadata i64 %i1.1567.us.us.us, metadata !73, metadata !DIExpression()), !dbg !82
  %add135.us.us.us = add nsw i64 %27, %i1.1567.us.us.us, !dbg !147
  call void @llvm.dbg.value(metadata i64 undef, metadata !76, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i64 %j.1580, metadata !74, metadata !DIExpression()), !dbg !82
  %arrayidx155.us.us.us = getelementptr inbounds i64, ptr %PERM, i64 %add135.us.us.us
  %28 = load i64, ptr %arrayidx155.us.us.us, align 8
  %arrayidx156.us.us.us = getelementptr inbounds double, ptr %call9, i64 %28
  %arrayidx156.promoted.us.us.us = load double, ptr %arrayidx156.us.us.us, align 8
  br label %for.body142.us.us.us, !dbg !149

for.body142.us.us.us:                             ; preds = %for.body142.us.us.us, %for.body119.us.us.us
  %29 = phi double [ %arrayidx156.promoted.us.us.us, %for.body119.us.us.us ], [ %32, %for.body142.us.us.us ], !dbg !82
  %j1.1564.us.us.us = phi i64 [ %j.1580, %for.body119.us.us.us ], [ %inc159.us.us.us, %for.body142.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %j1.1564.us.us.us, metadata !74, metadata !DIExpression()), !dbg !82
  %sub146.us.us.us = sub nsw i64 %j1.1564.us.us.us, %j.1580, !dbg !151
  %mul150.us.us.us = mul nsw i64 %sub146.us.us.us, %24, !dbg !154
  %add151.us.us.us = add nsw i64 %mul150.us.us.us, %i1.1567.us.us.us, !dbg !155
  %arrayidx152.us.us.us = getelementptr inbounds double, ptr %26, i64 %add151.us.us.us, !dbg !156
  %30 = load double, ptr %arrayidx152.us.us.us, align 8, !dbg !156
  %arrayidx153.us.us.us = getelementptr inbounds double, ptr %call6, i64 %j1.1564.us.us.us, !dbg !157
  %31 = load double, ptr %arrayidx153.us.us.us, align 8, !dbg !157
  %neg157.us.us.us = fneg double %30, !dbg !158
  %32 = tail call double @llvm.fmuladd.f64(double %neg157.us.us.us, double %31, double %29), !dbg !158
  %inc159.us.us.us = add nsw i64 %j1.1564.us.us.us, 1, !dbg !159
  call void @llvm.dbg.value(metadata i64 %inc159.us.us.us, metadata !74, metadata !DIExpression()), !dbg !82
  %cmp141.us.us.us = icmp slt i64 %inc159.us.us.us, %add46, !dbg !160
  br i1 %cmp141.us.us.us, label %for.body142.us.us.us, label %for.cond137.for.inc161_crit_edge.us.us.us, !dbg !149, !llvm.loop !161

for.cond137.for.inc161_crit_edge.us.us.us:        ; preds = %for.body142.us.us.us
  store double %32, ptr %arrayidx156.us.us.us, align 8, !dbg !158
  %inc162.us.us.us = add nuw nsw i64 %i1.1567.us.us.us, 1, !dbg !163
  call void @llvm.dbg.value(metadata i64 %inc162.us.us.us, metadata !73, metadata !DIExpression()), !dbg !82
  %exitcond631.not = icmp eq i64 %inc162.us.us.us, %24, !dbg !138
  br i1 %exitcond631.not, label %for.cond108.loopexit.us, label %for.body119.us.us.us, !dbg !142, !llvm.loop !164

for.body119.us.us:                                ; preds = %for.body119.lr.ph.us, %for.cond137.for.inc161_crit_edge.us.us
  %i1.1567.us.us = phi i64 [ %inc162.us.us, %for.cond137.for.inc161_crit_edge.us.us ], [ 0, %for.body119.lr.ph.us ]
  call void @llvm.dbg.value(metadata i64 %i1.1567.us.us, metadata !73, metadata !DIExpression()), !dbg !82
  %arrayidx130.us.us = getelementptr inbounds i64, ptr %25, i64 %i1.1567.us.us, !dbg !166
  %33 = load i64, ptr %arrayidx130.us.us, align 8, !dbg !166
  %add131.us.us = add nsw i64 %33, %27, !dbg !167
  call void @llvm.dbg.value(metadata i64 %add131.us.us, metadata !76, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i64 %j.1580, metadata !74, metadata !DIExpression()), !dbg !82
  %arrayidx155.us.us = getelementptr inbounds i64, ptr %PERM, i64 %add131.us.us
  %34 = load i64, ptr %arrayidx155.us.us, align 8
  %arrayidx156.us.us = getelementptr inbounds double, ptr %call9, i64 %34
  %arrayidx156.promoted.us.us = load double, ptr %arrayidx156.us.us, align 8
  br label %for.body142.us.us, !dbg !149

for.body142.us.us:                                ; preds = %for.body142.us.us, %for.body119.us.us
  %35 = phi double [ %arrayidx156.promoted.us.us, %for.body119.us.us ], [ %38, %for.body142.us.us ], !dbg !82
  %j1.1564.us.us = phi i64 [ %j.1580, %for.body119.us.us ], [ %inc159.us.us, %for.body142.us.us ]
  call void @llvm.dbg.value(metadata i64 %j1.1564.us.us, metadata !74, metadata !DIExpression()), !dbg !82
  %sub146.us.us = sub nsw i64 %j1.1564.us.us, %j.1580, !dbg !151
  %mul150.us.us = mul nsw i64 %sub146.us.us, %24, !dbg !154
  %add151.us.us = add nsw i64 %mul150.us.us, %i1.1567.us.us, !dbg !155
  %arrayidx152.us.us = getelementptr inbounds double, ptr %26, i64 %add151.us.us, !dbg !156
  %36 = load double, ptr %arrayidx152.us.us, align 8, !dbg !156
  %arrayidx153.us.us = getelementptr inbounds double, ptr %call6, i64 %j1.1564.us.us, !dbg !157
  %37 = load double, ptr %arrayidx153.us.us, align 8, !dbg !157
  %neg157.us.us = fneg double %36, !dbg !158
  %38 = tail call double @llvm.fmuladd.f64(double %neg157.us.us, double %37, double %35), !dbg !158
  %inc159.us.us = add nsw i64 %j1.1564.us.us, 1, !dbg !159
  call void @llvm.dbg.value(metadata i64 %inc159.us.us, metadata !74, metadata !DIExpression()), !dbg !82
  %cmp141.us.us = icmp slt i64 %inc159.us.us, %add46, !dbg !160
  br i1 %cmp141.us.us, label %for.body142.us.us, label %for.cond137.for.inc161_crit_edge.us.us, !dbg !149, !llvm.loop !161

for.cond137.for.inc161_crit_edge.us.us:           ; preds = %for.body142.us.us
  store double %38, ptr %arrayidx156.us.us, align 8, !dbg !158
  %inc162.us.us = add nuw nsw i64 %i1.1567.us.us, 1, !dbg !163
  call void @llvm.dbg.value(metadata i64 %inc162.us.us, metadata !73, metadata !DIExpression()), !dbg !82
  %exitcond630.not = icmp eq i64 %inc162.us.us, %24, !dbg !138
  br i1 %exitcond630.not, label %for.cond108.loopexit.us, label %for.body119.us.us, !dbg !142, !llvm.loop !164

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc102
  %j1.0562 = phi i64 [ %j.1580, %for.body48.lr.ph ], [ %inc103, %for.inc102 ]
  call void @llvm.dbg.value(metadata i64 %j1.0562, metadata !74, metadata !DIExpression()), !dbg !82
  %arrayidx49 = getelementptr inbounds i64, ptr %PERM, i64 %j1.0562, !dbg !168
  %39 = load i64, ptr %arrayidx49, align 8, !dbg !168
  %arrayidx50 = getelementptr inbounds double, ptr %call9, i64 %39, !dbg !170
  %40 = load double, ptr %arrayidx50, align 8, !dbg !170
  %sub = sub nsw i64 %j1.0562, %j.1580, !dbg !171
  %mul56 = mul nsw i64 %21, %sub, !dbg !172
  %add57 = add nsw i64 %mul56, %sub, !dbg !173
  %arrayidx58 = getelementptr inbounds double, ptr %20, i64 %add57, !dbg !174
  %41 = load double, ptr %arrayidx58, align 8, !dbg !174
  %div59 = fdiv double %40, %41, !dbg !175
  %arrayidx60 = getelementptr inbounds double, ptr %call6, i64 %j1.0562, !dbg !176
  store double %div59, ptr %arrayidx60, align 8, !dbg !177
  call void @llvm.dbg.value(metadata i64 %sub, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !82
  %i1.0558 = add nsw i64 %sub, 1, !dbg !178
  call void @llvm.dbg.value(metadata i64 %i1.0558, metadata !73, metadata !DIExpression()), !dbg !82
  %cmp67559 = icmp slt i64 %i1.0558, %21, !dbg !180
  br i1 %cmp67559, label %for.body68.lr.ph, label %for.inc102, !dbg !182

for.body68.lr.ph:                                 ; preds = %for.body48
  %42 = load ptr, ptr %structure, align 8
  %tobool71.not = icmp eq ptr %42, null
  %43 = load i64, ptr %arrayidx74, align 8
  br i1 %tobool71.not, label %for.body68.us, label %for.body68, !dbg !183

for.body68.us:                                    ; preds = %for.body68.lr.ph, %for.body68.us
  %i1.0560.us = phi i64 [ %i1.0.us, %for.body68.us ], [ %i1.0558, %for.body68.lr.ph ]
  %add83.us = add nsw i64 %43, %i1.0560.us, !dbg !185
  call void @llvm.dbg.value(metadata i64 undef, metadata !76, metadata !DIExpression()), !dbg !82
  %add92.us = add nsw i64 %i1.0560.us, %mul56, !dbg !187
  %arrayidx93.us = getelementptr inbounds double, ptr %20, i64 %add92.us, !dbg !188
  %44 = load double, ptr %arrayidx93.us, align 8, !dbg !188
  %arrayidx96.us = getelementptr inbounds i64, ptr %PERM, i64 %add83.us, !dbg !189
  %45 = load i64, ptr %arrayidx96.us, align 8, !dbg !189
  %arrayidx97.us = getelementptr inbounds double, ptr %call9, i64 %45, !dbg !190
  %46 = load double, ptr %arrayidx97.us, align 8, !dbg !191
  %neg98.us = fneg double %44, !dbg !191
  %47 = tail call double @llvm.fmuladd.f64(double %neg98.us, double %div59, double %46), !dbg !191
  store double %47, ptr %arrayidx97.us, align 8, !dbg !191
  call void @llvm.dbg.value(metadata i64 %i1.0560.us, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !82
  %i1.0.us = add nsw i64 %i1.0560.us, 1, !dbg !178
  call void @llvm.dbg.value(metadata i64 %i1.0.us, metadata !73, metadata !DIExpression()), !dbg !82
  %cmp67.us = icmp slt i64 %i1.0.us, %21, !dbg !180
  br i1 %cmp67.us, label %for.body68.us, label %for.inc102, !dbg !182, !llvm.loop !192

for.body68:                                       ; preds = %for.body68.lr.ph, %for.body68
  %i1.0560 = phi i64 [ %i1.0, %for.body68 ], [ %i1.0558, %for.body68.lr.ph ]
  %arrayidx78 = getelementptr inbounds i64, ptr %42, i64 %i1.0560, !dbg !194
  %48 = load i64, ptr %arrayidx78, align 8, !dbg !194
  %add79 = add nsw i64 %48, %43, !dbg !195
  call void @llvm.dbg.value(metadata i64 %add79, metadata !76, metadata !DIExpression()), !dbg !82
  %add92 = add nsw i64 %i1.0560, %mul56, !dbg !187
  %arrayidx93 = getelementptr inbounds double, ptr %20, i64 %add92, !dbg !188
  %49 = load double, ptr %arrayidx93, align 8, !dbg !188
  %arrayidx96 = getelementptr inbounds i64, ptr %PERM, i64 %add79, !dbg !189
  %50 = load i64, ptr %arrayidx96, align 8, !dbg !189
  %arrayidx97 = getelementptr inbounds double, ptr %call9, i64 %50, !dbg !190
  %51 = load double, ptr %arrayidx97, align 8, !dbg !191
  %neg98 = fneg double %49, !dbg !191
  %52 = tail call double @llvm.fmuladd.f64(double %neg98, double %div59, double %51), !dbg !191
  store double %52, ptr %arrayidx97, align 8, !dbg !191
  call void @llvm.dbg.value(metadata i64 %i1.0560, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !82
  %i1.0 = add nsw i64 %i1.0560, 1, !dbg !178
  call void @llvm.dbg.value(metadata i64 %i1.0, metadata !73, metadata !DIExpression()), !dbg !82
  %cmp67 = icmp slt i64 %i1.0, %21, !dbg !180
  br i1 %cmp67, label %for.body68, label %for.inc102, !dbg !182, !llvm.loop !192

for.inc102:                                       ; preds = %for.body68, %for.body68.us, %for.body48
  %inc103 = add nsw i64 %j1.0562, 1, !dbg !196
  call void @llvm.dbg.value(metadata i64 %inc103, metadata !74, metadata !DIExpression()), !dbg !82
  %cmp47 = icmp slt i64 %inc103, %add46, !dbg !129
  br i1 %cmp47, label %for.body48, label %for.cond108.preheader, !dbg !132, !llvm.loop !197

for.inc168:                                       ; preds = %for.body30, %for.cond108.loopexit.us, %for.cond108.preheader, %if.else, %if.then
  %arrayidx170 = getelementptr inbounds i64, ptr %5, i64 %j.1580, !dbg !199
  %53 = load i64, ptr %arrayidx170, align 8, !dbg !199
  %add171 = add nsw i64 %53, %j.1580, !dbg !200
  call void @llvm.dbg.value(metadata i64 %add171, metadata !72, metadata !DIExpression()), !dbg !82
  %cmp14 = icmp slt i64 %add171, %0, !dbg !201
  br i1 %cmp14, label %for.body15, label %for.end172, !dbg !95, !llvm.loop !202

for.end172:                                       ; preds = %for.inc168, %for.cond12.preheader.for.end172_crit_edge
  %54 = phi ptr [ %.pre, %for.cond12.preheader.for.end172_crit_edge ], [ %5, %for.inc168 ], !dbg !93
  %sub174 = add nsw i64 %0, -1, !dbg !204
  call void @llvm.dbg.value(metadata i64 %sub174, metadata !72, metadata !DIExpression()), !dbg !82
  %arrayidx176 = getelementptr inbounds i64, ptr %54, i64 %sub174, !dbg !205
  %55 = load i64, ptr %arrayidx176, align 8, !dbg !205
  %56 = tail call i64 @llvm.smin.i64(i64 %55, i64 0), !dbg !206
  %spec.select = add nsw i64 %56, %sub174, !dbg !206
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !72, metadata !DIExpression()), !dbg !82
  %cmp183613 = icmp sgt i64 %spec.select, -1, !dbg !207
  br i1 %cmp183613, label %while.body.lr.ph, label %for.cond355.preheader, !dbg !208

while.body.lr.ph:                                 ; preds = %for.end172
  %domain184 = getelementptr inbounds %struct.BMatrix, ptr %LB, i64 0, i32 10
  %57 = load ptr, ptr %domain184, align 8
  %col188 = getelementptr inbounds %struct.BMatrix, ptr %LB, i64 0, i32 1
  %58 = load ptr, ptr %col188, align 8
  %entry197 = getelementptr inbounds %struct.BMatrix, ptr %LB, i64 0, i32 17
  %59 = load ptr, ptr %entry197, align 8
  %row199 = getelementptr inbounds %struct.BMatrix, ptr %LB, i64 0, i32 2
  %60 = load ptr, ptr %row199, align 8
  br label %while.body, !dbg !208

for.cond355.preheader:                            ; preds = %if.end344, %if.end354, %for.end172
  call void @llvm.dbg.value(metadata i64 0, metadata !72, metadata !DIExpression()), !dbg !82
  br i1 %cmp553, label %for.body358, label %for.end364, !dbg !209

while.body:                                       ; preds = %while.body.lr.ph, %if.end354
  %j.3614 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %spec.select550, %if.end354 ]
  call void @llvm.dbg.value(metadata i64 %j.3614, metadata !72, metadata !DIExpression()), !dbg !82
  %arrayidx185 = getelementptr inbounds i64, ptr %57, i64 %j.3614, !dbg !211
  %61 = load i64, ptr %arrayidx185, align 8, !dbg !211
  %tobool186.not = icmp eq i64 %61, 0, !dbg !211
  %arrayidx217 = getelementptr inbounds i64, ptr %58, i64 %j.3614, !dbg !214
  %62 = load i64, ptr %arrayidx217, align 8, !dbg !214
  %add221 = add nuw nsw i64 %j.3614, 1
  %arrayidx222 = getelementptr inbounds i64, ptr %58, i64 %add221
  %63 = load i64, ptr %arrayidx222, align 8
  %bl.1600 = add nsw i64 %62, 1, !dbg !214
  %cmp223601 = icmp slt i64 %bl.1600, %63, !dbg !214
  br i1 %tobool186.not, label %if.else215, label %if.then187, !dbg !215

if.then187:                                       ; preds = %while.body
  call void @llvm.dbg.value(metadata i64 %62, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !82
  call void @llvm.dbg.value(metadata i64 %bl.1600, metadata !71, metadata !DIExpression()), !dbg !82
  %arrayidx203 = getelementptr inbounds double, ptr %call6, i64 %j.3614
  %arrayidx203.promoted = load double, ptr %arrayidx203, align 8
  br i1 %cmp223601, label %for.body196, label %for.end207, !dbg !216

for.body196:                                      ; preds = %if.then187, %for.body196
  %64 = phi double [ %68, %for.body196 ], [ %arrayidx203.promoted, %if.then187 ], !dbg !219
  %i.1586 = phi i64 [ %i.1, %for.body196 ], [ %bl.1600, %if.then187 ]
  %arrayidx198 = getelementptr inbounds %union.Entry, ptr %59, i64 %i.1586, !dbg !219
  %65 = load double, ptr %arrayidx198, align 8, !dbg !221
  %arrayidx200 = getelementptr inbounds i64, ptr %60, i64 %i.1586, !dbg !222
  %66 = load i64, ptr %arrayidx200, align 8, !dbg !222
  %arrayidx201 = getelementptr inbounds double, ptr %call3, i64 %66, !dbg !223
  %67 = load double, ptr %arrayidx201, align 8, !dbg !223
  %neg204 = fneg double %65, !dbg !224
  %68 = tail call double @llvm.fmuladd.f64(double %neg204, double %67, double %64), !dbg !224
  call void @llvm.dbg.value(metadata i64 %i.1586, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !82
  %i.1 = add nsw i64 %i.1586, 1, !dbg !225
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !71, metadata !DIExpression()), !dbg !82
  %exitcond633.not = icmp eq i64 %i.1, %63, !dbg !226
  br i1 %exitcond633.not, label %for.cond191.for.end207_crit_edge, label %for.body196, !dbg !216, !llvm.loop !227

for.cond191.for.end207_crit_edge:                 ; preds = %for.body196
  store double %68, ptr %arrayidx203, align 8, !dbg !224
  br label %for.end207, !dbg !216

for.end207:                                       ; preds = %if.then187, %for.cond191.for.end207_crit_edge
  %69 = phi double [ %68, %for.cond191.for.end207_crit_edge ], [ %arrayidx203.promoted, %if.then187 ], !dbg !229
  %arrayidx212 = getelementptr inbounds %union.Entry, ptr %59, i64 %62, !dbg !230
  %70 = load double, ptr %arrayidx212, align 8, !dbg !231
  %div213 = fdiv double %69, %70, !dbg !232
  %arrayidx214 = getelementptr inbounds double, ptr %call3, i64 %j.3614, !dbg !233
  store double %div213, ptr %arrayidx214, align 8, !dbg !234
  br label %if.end344, !dbg !235

if.else215:                                       ; preds = %while.body
  call void @llvm.dbg.value(metadata i64 %62, metadata !75, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !82
  call void @llvm.dbg.value(metadata i64 %bl.1600, metadata !75, metadata !DIExpression()), !dbg !82
  br i1 %cmp223601, label %for.cond225.preheader.lr.ph, label %for.end276, !dbg !236

for.cond225.preheader.lr.ph:                      ; preds = %if.else215
  %arrayidx250 = getelementptr inbounds i64, ptr %54, i64 %j.3614
  br label %for.cond225.preheader, !dbg !236

for.cond219.loopexit:                             ; preds = %for.cond248.for.inc271_crit_edge.us, %for.body230.lr.ph, %for.cond225.preheader
  %bl.1 = add nsw i64 %bl.1602, 1, !dbg !239
  call void @llvm.dbg.value(metadata i64 %bl.1, metadata !75, metadata !DIExpression()), !dbg !82
  %exitcond635.not = icmp eq i64 %bl.1, %63, !dbg !240
  br i1 %exitcond635.not, label %for.end276, label %for.cond225.preheader, !dbg !236, !llvm.loop !242

for.cond225.preheader:                            ; preds = %for.cond225.preheader.lr.ph, %for.cond219.loopexit
  %bl.1602 = phi i64 [ %bl.1600, %for.cond225.preheader.lr.ph ], [ %bl.1, %for.cond219.loopexit ]
  %arrayidx227 = getelementptr inbounds %union.Entry, ptr %59, i64 %bl.1602
  %71 = load ptr, ptr %arrayidx227, align 8
  %length228 = getelementptr inbounds %struct.Block, ptr %71, i64 0, i32 5
  %72 = load i64, ptr %length228, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !73, metadata !DIExpression()), !dbg !82
  %cmp229590 = icmp sgt i64 %72, 0, !dbg !244
  br i1 %cmp229590, label %for.body230.lr.ph, label %for.cond219.loopexit, !dbg !248

for.body230.lr.ph:                                ; preds = %for.cond225.preheader
  %structure233 = getelementptr inbounds %struct.Block, ptr %71, i64 0, i32 8
  %73 = load ptr, ptr %structure233, align 8
  %tobool234.not = icmp eq ptr %73, null
  %arrayidx237 = getelementptr inbounds i64, ptr %60, i64 %bl.1602
  %74 = load i64, ptr %arrayidx250, align 8
  %add251 = add nsw i64 %74, %j.3614
  %cmp252588 = icmp sgt i64 %74, 0
  br i1 %cmp252588, label %for.body230.lr.ph.split.us, label %for.cond219.loopexit, !dbg !249

for.body230.lr.ph.split.us:                       ; preds = %for.body230.lr.ph
  %nz256 = getelementptr inbounds %struct.Block, ptr %71, i64 0, i32 10
  %75 = load ptr, ptr %nz256, align 8
  %76 = load i64, ptr %arrayidx237, align 8
  br label %for.body230.us, !dbg !248

for.body230.us:                                   ; preds = %for.cond248.for.inc271_crit_edge.us, %for.body230.lr.ph.split.us
  %i1.2591.us = phi i64 [ 0, %for.body230.lr.ph.split.us ], [ %inc272.us, %for.cond248.for.inc271_crit_edge.us ]
  call void @llvm.dbg.value(metadata i64 %i1.2591.us, metadata !73, metadata !DIExpression()), !dbg !82
  br i1 %tobool234.not, label %if.else243.us, label %if.then235.us, !dbg !252

if.then235.us:                                    ; preds = %for.body230.us
  %arrayidx241.us = getelementptr inbounds i64, ptr %73, i64 %i1.2591.us, !dbg !253
  %77 = load i64, ptr %arrayidx241.us, align 8, !dbg !253
  %add242.us = add nsw i64 %77, %76, !dbg !255
  call void @llvm.dbg.value(metadata i64 %add242.us, metadata !76, metadata !DIExpression()), !dbg !82
  br label %if.end247.us, !dbg !256

if.else243.us:                                    ; preds = %for.body230.us
  %add246.us = add nsw i64 %76, %i1.2591.us, !dbg !257
  call void @llvm.dbg.value(metadata i64 %add246.us, metadata !76, metadata !DIExpression()), !dbg !82
  br label %if.end247.us

if.end247.us:                                     ; preds = %if.else243.us, %if.then235.us
  %row.2.us = phi i64 [ %add242.us, %if.then235.us ], [ %add246.us, %if.else243.us ], !dbg !258
  call void @llvm.dbg.value(metadata i64 %row.2.us, metadata !76, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i64 %j.3614, metadata !74, metadata !DIExpression()), !dbg !82
  %arrayidx264.us = getelementptr inbounds double, ptr %call3, i64 %row.2.us
  %78 = load double, ptr %arrayidx264.us, align 8
  br label %for.body253.us, !dbg !249

for.body253.us:                                   ; preds = %if.end247.us, %for.body253.us
  %j1.2589.us = phi i64 [ %j.3614, %if.end247.us ], [ %inc269.us, %for.body253.us ]
  call void @llvm.dbg.value(metadata i64 %j1.2589.us, metadata !74, metadata !DIExpression()), !dbg !82
  %sub257.us = sub nsw i64 %j1.2589.us, %j.3614, !dbg !259
  %mul261.us = mul nsw i64 %sub257.us, %72, !dbg !262
  %add262.us = add nsw i64 %mul261.us, %i1.2591.us, !dbg !263
  %arrayidx263.us = getelementptr inbounds double, ptr %75, i64 %add262.us, !dbg !264
  %79 = load double, ptr %arrayidx263.us, align 8, !dbg !264
  %arrayidx266.us = getelementptr inbounds double, ptr %call6, i64 %j1.2589.us, !dbg !265
  %80 = load double, ptr %arrayidx266.us, align 8, !dbg !266
  %neg267.us = fneg double %79, !dbg !266
  %81 = tail call double @llvm.fmuladd.f64(double %neg267.us, double %78, double %80), !dbg !266
  store double %81, ptr %arrayidx266.us, align 8, !dbg !266
  %inc269.us = add nsw i64 %j1.2589.us, 1, !dbg !267
  call void @llvm.dbg.value(metadata i64 %inc269.us, metadata !74, metadata !DIExpression()), !dbg !82
  %cmp252.us = icmp slt i64 %inc269.us, %add251, !dbg !268
  br i1 %cmp252.us, label %for.body253.us, label %for.cond248.for.inc271_crit_edge.us, !dbg !249, !llvm.loop !269

for.cond248.for.inc271_crit_edge.us:              ; preds = %for.body253.us
  %inc272.us = add nuw nsw i64 %i1.2591.us, 1, !dbg !271
  call void @llvm.dbg.value(metadata i64 %inc272.us, metadata !73, metadata !DIExpression()), !dbg !82
  %exitcond634.not = icmp eq i64 %inc272.us, %72, !dbg !244
  br i1 %exitcond634.not, label %for.cond219.loopexit, label %for.body230.us, !dbg !248, !llvm.loop !272

for.end276:                                       ; preds = %for.cond219.loopexit, %if.else215
  call void @llvm.dbg.value(metadata i64 %62, metadata !75, metadata !DIExpression()), !dbg !82
  %arrayidx280 = getelementptr inbounds i64, ptr %54, i64 %j.3614, !dbg !274
  %82 = load i64, ptr %arrayidx280, align 8, !dbg !274
  call void @llvm.dbg.value(metadata !DIArgList(i64 %82, i64 %j.3614), metadata !74, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  %cmp284.not.not611 = icmp sgt i64 %82, 0, !dbg !276
  br i1 %cmp284.not.not611, label %for.body285.lr.ph, label %if.end344, !dbg !278

for.body285.lr.ph:                                ; preds = %for.end276
  %add281 = add nsw i64 %82, %j.3614, !dbg !279
  call void @llvm.dbg.value(metadata i64 %add281, metadata !74, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  %arrayidx290 = getelementptr inbounds %union.Entry, ptr %59, i64 %62
  %83 = load ptr, ptr %arrayidx290, align 8
  %length291 = getelementptr inbounds %struct.Block, ptr %83, i64 0, i32 5
  %84 = load i64, ptr %length291, align 8
  %structure296 = getelementptr inbounds %struct.Block, ptr %83, i64 0, i32 8
  %arrayidx300 = getelementptr inbounds i64, ptr %60, i64 %62
  %nz313 = getelementptr inbounds %struct.Block, ptr %83, i64 0, i32 10
  %85 = load ptr, ptr %nz313, align 8
  br label %for.body285, !dbg !278

for.body285:                                      ; preds = %for.body285.lr.ph, %for.end327
  %j1.3612.in = phi i64 [ %add281, %for.body285.lr.ph ], [ %j1.3612, %for.end327 ]
  %j1.3612 = add nsw i64 %j1.3612.in, -1, !dbg !280
  %sub286 = sub nsw i64 %j1.3612, %j.3614, !dbg !281
  call void @llvm.dbg.value(metadata i64 %sub286, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !82
  %i1.3603 = add nsw i64 %sub286, 1, !dbg !284
  call void @llvm.dbg.value(metadata i64 %i1.3603, metadata !73, metadata !DIExpression()), !dbg !82
  %cmp292604 = icmp slt i64 %i1.3603, %84, !dbg !285
  br i1 %cmp292604, label %for.body293.lr.ph, label %for.body285.for.end327_crit_edge, !dbg !287

for.body285.for.end327_crit_edge:                 ; preds = %for.body285
  %arrayidx328.phi.trans.insert = getelementptr inbounds double, ptr %call6, i64 %j1.3612
  %.pre638 = load double, ptr %arrayidx328.phi.trans.insert, align 8, !dbg !288
  %.pre639 = mul nsw i64 %84, %sub286, !dbg !289
  br label %for.end327, !dbg !287

for.body293.lr.ph:                                ; preds = %for.body285
  %86 = load ptr, ptr %structure296, align 8
  %tobool297.not = icmp eq ptr %86, null
  %mul318 = mul nsw i64 %84, %sub286
  %arrayidx323 = getelementptr inbounds double, ptr %call6, i64 %j1.3612
  %arrayidx323.promoted = load double, ptr %arrayidx323, align 8
  %87 = load i64, ptr %arrayidx300, align 8
  br i1 %tobool297.not, label %for.body293.us, label %for.body293, !dbg !290

for.body293.us:                                   ; preds = %for.body293.lr.ph, %for.body293.us
  %88 = phi double [ %91, %for.body293.us ], [ %arrayidx323.promoted, %for.body293.lr.ph ]
  %i1.3605.us = phi i64 [ %i1.3.us, %for.body293.us ], [ %i1.3603, %for.body293.lr.ph ]
  %add309.us = add nsw i64 %87, %i1.3605.us, !dbg !292
  call void @llvm.dbg.value(metadata i64 undef, metadata !76, metadata !DIExpression()), !dbg !82
  %add319.us = add nsw i64 %mul318, %i1.3605.us, !dbg !294
  %arrayidx320.us = getelementptr inbounds double, ptr %85, i64 %add319.us, !dbg !295
  %89 = load double, ptr %arrayidx320.us, align 8, !dbg !295
  %arrayidx321.us = getelementptr inbounds double, ptr %call3, i64 %add309.us, !dbg !296
  %90 = load double, ptr %arrayidx321.us, align 8, !dbg !296
  %neg324.us = fneg double %89, !dbg !297
  %91 = tail call double @llvm.fmuladd.f64(double %neg324.us, double %90, double %88), !dbg !297
  call void @llvm.dbg.value(metadata i64 %i1.3605.us, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !82
  %i1.3.us = add nsw i64 %i1.3605.us, 1, !dbg !284
  call void @llvm.dbg.value(metadata i64 %i1.3.us, metadata !73, metadata !DIExpression()), !dbg !82
  %cmp292.us = icmp slt i64 %i1.3.us, %84, !dbg !285
  br i1 %cmp292.us, label %for.body293.us, label %for.cond288.for.end327_crit_edge, !dbg !287, !llvm.loop !298

for.body293:                                      ; preds = %for.body293.lr.ph, %for.body293
  %92 = phi double [ %96, %for.body293 ], [ %arrayidx323.promoted, %for.body293.lr.ph ]
  %i1.3605 = phi i64 [ %i1.3, %for.body293 ], [ %i1.3603, %for.body293.lr.ph ]
  %arrayidx304 = getelementptr inbounds i64, ptr %86, i64 %i1.3605, !dbg !300
  %93 = load i64, ptr %arrayidx304, align 8, !dbg !300
  %add305 = add nsw i64 %93, %87, !dbg !301
  call void @llvm.dbg.value(metadata i64 %add305, metadata !76, metadata !DIExpression()), !dbg !82
  %add319 = add nsw i64 %mul318, %i1.3605, !dbg !294
  %arrayidx320 = getelementptr inbounds double, ptr %85, i64 %add319, !dbg !295
  %94 = load double, ptr %arrayidx320, align 8, !dbg !295
  %arrayidx321 = getelementptr inbounds double, ptr %call3, i64 %add305, !dbg !296
  %95 = load double, ptr %arrayidx321, align 8, !dbg !296
  %neg324 = fneg double %94, !dbg !297
  %96 = tail call double @llvm.fmuladd.f64(double %neg324, double %95, double %92), !dbg !297
  call void @llvm.dbg.value(metadata i64 %i1.3605, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !82
  %i1.3 = add nsw i64 %i1.3605, 1, !dbg !284
  call void @llvm.dbg.value(metadata i64 %i1.3, metadata !73, metadata !DIExpression()), !dbg !82
  %cmp292 = icmp slt i64 %i1.3, %84, !dbg !285
  br i1 %cmp292, label %for.body293, label %for.cond288.for.end327_crit_edge, !dbg !287, !llvm.loop !298

for.cond288.for.end327_crit_edge:                 ; preds = %for.body293, %for.body293.us
  %.us-phi = phi double [ %91, %for.body293.us ], [ %96, %for.body293 ]
  store double %.us-phi, ptr %arrayidx323, align 8, !dbg !297
  br label %for.end327, !dbg !287

for.end327:                                       ; preds = %for.body285.for.end327_crit_edge, %for.cond288.for.end327_crit_edge
  %mul337.pre-phi = phi i64 [ %.pre639, %for.body285.for.end327_crit_edge ], [ %mul318, %for.cond288.for.end327_crit_edge ], !dbg !289
  %97 = phi double [ %.pre638, %for.body285.for.end327_crit_edge ], [ %.us-phi, %for.cond288.for.end327_crit_edge ], !dbg !288
  %add338 = add nsw i64 %mul337.pre-phi, %sub286, !dbg !302
  %arrayidx339 = getelementptr inbounds double, ptr %85, i64 %add338, !dbg !303
  %98 = load double, ptr %arrayidx339, align 8, !dbg !303
  %div340 = fdiv double %97, %98, !dbg !304
  %arrayidx341 = getelementptr inbounds double, ptr %call3, i64 %j1.3612, !dbg !305
  store double %div340, ptr %arrayidx341, align 8, !dbg !306
  call void @llvm.dbg.value(metadata i64 %j1.3612, metadata !74, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  %cmp284.not.not = icmp sgt i64 %j1.3612, %j.3614, !dbg !276
  br i1 %cmp284.not.not, label %for.body285, label %if.end344, !dbg !278, !llvm.loop !307

if.end344:                                        ; preds = %for.end327, %for.end276, %for.end207
  call void @llvm.dbg.value(metadata i64 %j.3614, metadata !72, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  %cmp346 = icmp sgt i64 %j.3614, 0, !dbg !309
  br i1 %cmp346, label %if.end354, label %for.cond355.preheader, !dbg !311

if.end354:                                        ; preds = %if.end344
  %dec345 = add nsw i64 %j.3614, -1, !dbg !312
  call void @llvm.dbg.value(metadata i64 %dec345, metadata !72, metadata !DIExpression()), !dbg !82
  %arrayidx348 = getelementptr inbounds i64, ptr %54, i64 %dec345, !dbg !313
  %99 = load i64, ptr %arrayidx348, align 8, !dbg !313
  %100 = tail call i64 @llvm.smin.i64(i64 %99, i64 0), !dbg !314
  %spec.select550 = add nsw i64 %100, %dec345, !dbg !314
  call void @llvm.dbg.value(metadata i64 %spec.select550, metadata !72, metadata !DIExpression()), !dbg !82
  %cmp183 = icmp sgt i64 %spec.select550, -1, !dbg !207
  br i1 %cmp183, label %while.body, label %for.cond355.preheader, !dbg !208, !llvm.loop !315

for.body358:                                      ; preds = %for.cond355.preheader, %for.body358
  %j.5617 = phi i64 [ %inc363, %for.body358 ], [ 0, %for.cond355.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.5617, metadata !72, metadata !DIExpression()), !dbg !82
  %arrayidx359 = getelementptr inbounds i64, ptr %PERM, i64 %j.5617, !dbg !317
  %101 = load i64, ptr %arrayidx359, align 8, !dbg !317
  %arrayidx360 = getelementptr inbounds double, ptr %call3, i64 %101, !dbg !319
  %102 = load double, ptr %arrayidx360, align 8, !dbg !319
  %arrayidx361 = getelementptr inbounds double, ptr %call, i64 %j.5617, !dbg !320
  store double %102, ptr %arrayidx361, align 8, !dbg !321
  %inc363 = add nuw nsw i64 %j.5617, 1, !dbg !322
  call void @llvm.dbg.value(metadata i64 %inc363, metadata !72, metadata !DIExpression()), !dbg !82
  %exitcond636.not = icmp eq i64 %inc363, %0, !dbg !323
  br i1 %exitcond636.not, label %for.end364, label %for.body358, !dbg !209, !llvm.loop !324

for.end364:                                       ; preds = %for.body358, %for.cond355.preheader
  tail call void @free(ptr noundef %call3) #10, !dbg !326
  tail call void @free(ptr noundef %call6) #10, !dbg !327
  tail call void @free(ptr noundef %call9) #10, !dbg !328
  ret ptr %call, !dbg !329
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree noinline nosync nounwind readonly uwtable
define dso_local double @ComputeNorm(ptr nocapture noundef readonly %x, i64 noundef %n) local_unnamed_addr #4 !dbg !330 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !334, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 %n, metadata !335, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !336, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i64 0, metadata !337, metadata !DIExpression()), !dbg !338
  %cmp9 = icmp sgt i64 %n, 0, !dbg !339
  br i1 %cmp9, label %for.body, label %for.end, !dbg !342

for.body:                                         ; preds = %entry, %for.inc
  %i.011 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %tmp.010 = phi double [ %tmp.1, %for.inc ], [ 0.000000e+00, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.011, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata double %tmp.010, metadata !336, metadata !DIExpression()), !dbg !338
  %arrayidx = getelementptr inbounds double, ptr %x, i64 %i.011, !dbg !343
  %0 = load double, ptr %arrayidx, align 8, !dbg !343
  %sub = fadd double %0, -1.000000e+00, !dbg !345
  %1 = tail call double @llvm.fabs.f64(double %sub), !dbg !346
  %cmp1 = fcmp ogt double %1, %tmp.010, !dbg !347
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !348

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata double %1, metadata !336, metadata !DIExpression()), !dbg !338
  br label %for.inc, !dbg !349

for.inc:                                          ; preds = %for.body, %if.then
  %tmp.1 = phi double [ %1, %if.then ], [ %tmp.010, %for.body ], !dbg !338
  call void @llvm.dbg.value(metadata double %tmp.1, metadata !336, metadata !DIExpression()), !dbg !338
  %inc = add nuw nsw i64 %i.011, 1, !dbg !350
  call void @llvm.dbg.value(metadata i64 %inc, metadata !337, metadata !DIExpression()), !dbg !338
  %exitcond.not = icmp eq i64 %inc, %n, !dbg !339
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !342, !llvm.loop !351

for.end:                                          ; preds = %for.inc, %entry
  %tmp.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %tmp.1, %for.inc ], !dbg !338
  ret double %tmp.0.lcssa, !dbg !353
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @CreateVector(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M) local_unnamed_addr #0 !dbg !354 {
entry:
  call void @llvm.dbg.declare(metadata ptr %M, metadata !367, metadata !DIExpression()), !dbg !371
  %0 = load i64, ptr %M, align 8, !dbg !372
  %call = tail call ptr @NewVector(i64 noundef %0) #10, !dbg !373
  call void @llvm.dbg.value(metadata ptr %call, metadata !370, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i64 0, metadata !369, metadata !DIExpression()), !dbg !374
  %cmp70 = icmp sgt i64 %0, 0, !dbg !375
  br i1 %cmp70, label %for.end, label %if.end, !dbg !378

for.end:                                          ; preds = %entry
  %1 = shl nuw i64 %0, 3, !dbg !378
  call void @llvm.memset.p0.i64(ptr align 8 %call, i8 0, i64 %1, i1 false), !dbg !379
  call void @llvm.dbg.value(metadata i32 undef, metadata !369, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !374
  %nz = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 5, !dbg !380
  %2 = load ptr, ptr %nz, align 8, !dbg !380
  %tobool.not = icmp eq ptr %2, null, !dbg !382
  call void @llvm.dbg.value(metadata i64 0, metadata !369, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i64 0, metadata !369, metadata !DIExpression()), !dbg !374
  %col27 = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 2
  %3 = load ptr, ptr %col27, align 8
  %row35 = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 4
  %4 = load ptr, ptr %row35, align 8
  %.pre82 = load i64, ptr %3, align 8, !dbg !383
  br i1 %tobool.not, label %for.body26, label %for.body5, !dbg !384

for.cond2.loopexit:                               ; preds = %for.body11, %for.body5
  %5 = phi i64 [ %7, %for.body5 ], [ %11, %for.body11 ]
  call void @llvm.dbg.value(metadata i64 %add, metadata !369, metadata !DIExpression()), !dbg !374
  %exitcond.not = icmp eq i64 %add, %0, !dbg !385
  br i1 %exitcond.not, label %if.end, label %for.body5, !dbg !389, !llvm.loop !390

for.body5:                                        ; preds = %for.end, %for.cond2.loopexit
  %6 = phi i64 [ %5, %for.cond2.loopexit ], [ %.pre82, %for.end ], !dbg !392
  %j.175 = phi i64 [ %add, %for.cond2.loopexit ], [ 0, %for.end ]
  call void @llvm.dbg.value(metadata i64 %j.175, metadata !369, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i64 %6, metadata !368, metadata !DIExpression()), !dbg !374
  %add = add nuw nsw i64 %j.175, 1
  %arrayidx9 = getelementptr inbounds i64, ptr %3, i64 %add
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !394
  %cmp1072 = icmp slt i64 %6, %7, !dbg !396
  br i1 %cmp1072, label %for.body11, label %for.cond2.loopexit, !dbg !397

for.body11:                                       ; preds = %for.body5, %for.body11
  %i.073 = phi i64 [ %inc18, %for.body11 ], [ %6, %for.body5 ]
  call void @llvm.dbg.value(metadata i64 %i.073, metadata !368, metadata !DIExpression()), !dbg !374
  %arrayidx13 = getelementptr inbounds double, ptr %2, i64 %i.073, !dbg !398
  %8 = load double, ptr %arrayidx13, align 8, !dbg !398
  %arrayidx14 = getelementptr inbounds i64, ptr %4, i64 %i.073, !dbg !400
  %9 = load i64, ptr %arrayidx14, align 8, !dbg !400
  %arrayidx15 = getelementptr inbounds double, ptr %call, i64 %9, !dbg !401
  %10 = load double, ptr %arrayidx15, align 8, !dbg !402
  %add16 = fadd double %8, %10, !dbg !402
  store double %add16, ptr %arrayidx15, align 8, !dbg !402
  %inc18 = add nsw i64 %i.073, 1, !dbg !403
  call void @llvm.dbg.value(metadata i64 %inc18, metadata !368, metadata !DIExpression()), !dbg !374
  %11 = load i64, ptr %arrayidx9, align 8, !dbg !394
  %cmp10 = icmp slt i64 %inc18, %11, !dbg !396
  br i1 %cmp10, label %for.body11, label %for.cond2.loopexit, !dbg !397, !llvm.loop !404

for.cond23.loopexit:                              ; preds = %for.body34, %for.body26
  %12 = phi i64 [ %14, %for.body26 ], [ %18, %for.body34 ]
  call void @llvm.dbg.value(metadata i64 %add31, metadata !369, metadata !DIExpression()), !dbg !374
  %exitcond81.not = icmp eq i64 %add31, %0, !dbg !406
  br i1 %exitcond81.not, label %if.end, label %for.body26, !dbg !410, !llvm.loop !411

for.body26:                                       ; preds = %for.end, %for.cond23.loopexit
  %13 = phi i64 [ %12, %for.cond23.loopexit ], [ %.pre82, %for.end ], !dbg !413
  %j.279 = phi i64 [ %add31, %for.cond23.loopexit ], [ 0, %for.end ]
  call void @llvm.dbg.value(metadata i64 %j.279, metadata !369, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i64 %13, metadata !368, metadata !DIExpression()), !dbg !374
  %add31 = add nuw nsw i64 %j.279, 1
  %arrayidx32 = getelementptr inbounds i64, ptr %3, i64 %add31
  %14 = load i64, ptr %arrayidx32, align 8, !dbg !415
  %cmp3376 = icmp slt i64 %13, %14, !dbg !417
  br i1 %cmp3376, label %for.body34, label %for.cond23.loopexit, !dbg !418

for.body34:                                       ; preds = %for.body26, %for.body34
  %i.177 = phi i64 [ %inc43, %for.body34 ], [ %13, %for.body26 ]
  call void @llvm.dbg.value(metadata i64 %i.177, metadata !368, metadata !DIExpression()), !dbg !374
  %arrayidx36 = getelementptr inbounds i64, ptr %4, i64 %i.177, !dbg !419
  %15 = load i64, ptr %arrayidx36, align 8, !dbg !419
  %call37 = tail call double @Value(i64 noundef %15, i64 noundef %j.279) #10, !dbg !421
  %16 = load i64, ptr %arrayidx36, align 8, !dbg !422
  %arrayidx40 = getelementptr inbounds double, ptr %call, i64 %16, !dbg !423
  %17 = load double, ptr %arrayidx40, align 8, !dbg !424
  %add41 = fadd double %call37, %17, !dbg !424
  store double %add41, ptr %arrayidx40, align 8, !dbg !424
  %inc43 = add nsw i64 %i.177, 1, !dbg !425
  call void @llvm.dbg.value(metadata i64 %inc43, metadata !368, metadata !DIExpression()), !dbg !374
  %18 = load i64, ptr %arrayidx32, align 8, !dbg !415
  %cmp33 = icmp slt i64 %inc43, %18, !dbg !417
  br i1 %cmp33, label %for.body34, label %for.cond23.loopexit, !dbg !418, !llvm.loop !426

if.end:                                           ; preds = %for.cond2.loopexit, %for.cond23.loopexit, %entry
  ret ptr %call, !dbg !428
}

declare !dbg !429 ptr @NewVector(i64 noundef) local_unnamed_addr #5

declare !dbg !433 double @Value(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree noinline nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "bksolve.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "f926876ddf27ad74d6d0106f8d7fcc87")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!12 = distinct !DISubprogram(name: "TriBSolve", scope: !1, file: !1, line: 40, type: !13, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!13 = !DISubroutineType(types: !14)
!14 = !{!3, !15, !3, !22}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "BMatrix", file: !16, line: 58, baseType: !17)
!16 = !DIFile(filename: "./matrix.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "f19fdb19034f8f693c291706633e8f13")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 51, size: 1152, elements: !18)
!18 = !{!19, !21, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !39}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !17, file: !16, line: 52, baseType: !20, size: 64)
!20 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !17, file: !16, line: 52, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "row", scope: !17, file: !16, line: 52, baseType: !22, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "n_blocks", scope: !17, file: !16, line: 52, baseType: !20, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "n_entries", scope: !17, file: !16, line: 52, baseType: !20, size: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "entries_allocated", scope: !17, file: !16, line: 52, baseType: !20, size: 64, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "partition_size", scope: !17, file: !16, line: 53, baseType: !22, size: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "renumbering", scope: !17, file: !16, line: 53, baseType: !22, size: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "mapI", scope: !17, file: !16, line: 53, baseType: !22, size: 64, offset: 512)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "mapJ", scope: !17, file: !16, line: 53, baseType: !22, size: 64, offset: 576)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !17, file: !16, line: 54, baseType: !22, size: 64, offset: 640)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "domains", scope: !17, file: !16, line: 54, baseType: !22, size: 64, offset: 704)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "n_domains", scope: !17, file: !16, line: 54, baseType: !20, size: 64, offset: 768)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "proc_domains", scope: !17, file: !16, line: 54, baseType: !22, size: 64, offset: 832)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "n_partitions", scope: !17, file: !16, line: 55, baseType: !20, size: 64, offset: 896)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "max_partition", scope: !17, file: !16, line: 55, baseType: !20, size: 64, offset: 960)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "proc_domain_storage", scope: !17, file: !16, line: 56, baseType: !38, size: 64, offset: 1024)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !17, file: !16, line: 57, baseType: !40, size: 64, offset: 1088)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "Entry", file: !16, line: 49, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !16, line: 46, size: 64, elements: !43)
!43 = !{!44, !66}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !42, file: !16, line: 47, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "Block", file: !16, line: 44, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 36, size: 768, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !47, file: !16, line: 37, baseType: !20, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !47, file: !16, line: 37, baseType: !20, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !47, file: !16, line: 37, baseType: !20, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !47, file: !16, line: 37, baseType: !20, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nmod", scope: !47, file: !16, line: 37, baseType: !20, size: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !47, file: !16, line: 38, baseType: !20, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !47, file: !16, line: 39, baseType: !20, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !47, file: !16, line: 40, baseType: !4, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !47, file: !16, line: 41, baseType: !22, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "relative", scope: !47, file: !16, line: 41, baseType: !22, size: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !47, file: !16, line: 42, baseType: !3, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !47, file: !16, line: 43, baseType: !61, size: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Pair", file: !16, line: 31, size: 128, elements: !63)
!63 = !{!64, !65}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !62, file: !16, line: 32, baseType: !20, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !62, file: !16, line: 33, baseType: !61, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !42, file: !16, line: 48, baseType: !4, size: 64)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!68 = !DILocalVariable(name: "LB", arg: 1, scope: !12, file: !1, line: 40, type: !15)
!69 = !DILocalVariable(name: "b", arg: 2, scope: !12, file: !1, line: 40, type: !3)
!70 = !DILocalVariable(name: "PERM", arg: 3, scope: !12, file: !1, line: 40, type: !22)
!71 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 42, type: !20)
!72 = !DILocalVariable(name: "j", scope: !12, file: !1, line: 42, type: !20)
!73 = !DILocalVariable(name: "i1", scope: !12, file: !1, line: 42, type: !20)
!74 = !DILocalVariable(name: "j1", scope: !12, file: !1, line: 42, type: !20)
!75 = !DILocalVariable(name: "bl", scope: !12, file: !1, line: 42, type: !20)
!76 = !DILocalVariable(name: "row", scope: !12, file: !1, line: 42, type: !20)
!77 = !DILocalVariable(name: "y", scope: !12, file: !1, line: 43, type: !3)
!78 = !DILocalVariable(name: "xp", scope: !12, file: !1, line: 43, type: !3)
!79 = !DILocalVariable(name: "x", scope: !12, file: !1, line: 43, type: !3)
!80 = !DILocalVariable(name: "bt", scope: !12, file: !1, line: 43, type: !3)
!81 = !DILocation(line: 40, column: 27, scope: !12)
!82 = !DILocation(line: 0, scope: !12)
!83 = !DILocation(line: 45, column: 28, scope: !12)
!84 = !DILocation(line: 45, column: 29, scope: !12)
!85 = !DILocation(line: 45, column: 18, scope: !12)
!86 = !DILocation(line: 46, column: 19, scope: !12)
!87 = !DILocation(line: 47, column: 18, scope: !12)
!88 = !DILocation(line: 48, column: 19, scope: !12)
!89 = !DILocation(line: 50, column: 14, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 50, column: 3)
!91 = distinct !DILexicalBlock(scope: !12, file: !1, line: 50, column: 3)
!92 = !DILocation(line: 50, column: 3, scope: !91)
!93 = !DILocation(line: 93, column: 10, scope: !94)
!94 = distinct !DILexicalBlock(scope: !12, file: !1, line: 93, column: 7)
!95 = !DILocation(line: 55, column: 3, scope: !96)
!96 = distinct !DILexicalBlock(scope: !12, file: !1, line: 55, column: 3)
!97 = !DILocation(line: 51, column: 11, scope: !90)
!98 = !DILocation(line: 56, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 56, column: 9)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 55, column: 46)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 55, column: 3)
!102 = !DILocation(line: 56, column: 9, scope: !100)
!103 = !DILocation(line: 57, column: 17, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 56, column: 23)
!105 = !DILocation(line: 57, column: 14, scope: !104)
!106 = !DILocation(line: 57, column: 35, scope: !104)
!107 = !DILocation(line: 57, column: 26, scope: !104)
!108 = !DILocation(line: 57, column: 46, scope: !104)
!109 = !DILocation(line: 57, column: 25, scope: !104)
!110 = !DILocation(line: 57, column: 7, scope: !104)
!111 = !DILocation(line: 57, column: 12, scope: !104)
!112 = !DILocation(line: 0, scope: !113)
!113 = distinct !DILexicalBlock(scope: !104, file: !1, line: 58, column: 7)
!114 = !DILocation(line: 58, column: 28, scope: !115)
!115 = distinct !DILexicalBlock(scope: !113, file: !1, line: 58, column: 7)
!116 = !DILocation(line: 58, column: 7, scope: !113)
!117 = !DILocation(line: 59, column: 32, scope: !115)
!118 = !DILocation(line: 59, column: 44, scope: !115)
!119 = !DILocation(line: 59, column: 17, scope: !115)
!120 = !DILocation(line: 59, column: 12, scope: !115)
!121 = !DILocation(line: 59, column: 9, scope: !115)
!122 = !DILocation(line: 59, column: 29, scope: !115)
!123 = distinct !{!123, !116, !124, !125, !126}
!124 = !DILocation(line: 59, column: 50, scope: !113)
!125 = !{!"llvm.loop.mustprogress"}
!126 = !{!"llvm.loop.unroll.disable"}
!127 = !DILocation(line: 63, column: 12, scope: !128)
!128 = distinct !DILexicalBlock(scope: !99, file: !1, line: 61, column: 10)
!129 = !DILocation(line: 64, column: 20, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 64, column: 7)
!131 = distinct !DILexicalBlock(scope: !128, file: !1, line: 64, column: 7)
!132 = !DILocation(line: 64, column: 7, scope: !131)
!133 = !DILocation(line: 0, scope: !134)
!134 = distinct !DILexicalBlock(scope: !128, file: !1, line: 76, column: 7)
!135 = !DILocation(line: 76, column: 30, scope: !136)
!136 = distinct !DILexicalBlock(scope: !134, file: !1, line: 76, column: 7)
!137 = !DILocation(line: 76, column: 7, scope: !134)
!138 = !DILocation(line: 77, column: 15, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 77, column: 2)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 77, column: 2)
!141 = distinct !DILexicalBlock(scope: !136, file: !1, line: 76, column: 50)
!142 = !DILocation(line: 77, column: 2, scope: !140)
!143 = distinct !{!143, !137, !144, !125, !126}
!144 = !DILocation(line: 86, column: 7, scope: !134)
!145 = !DILocation(line: 78, column: 8, scope: !146)
!146 = distinct !DILexicalBlock(scope: !139, file: !1, line: 77, column: 50)
!147 = !DILocation(line: 80, column: 26, scope: !148)
!148 = distinct !DILexicalBlock(scope: !146, file: !1, line: 78, column: 8)
!149 = !DILocation(line: 81, column: 4, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 81, column: 4)
!151 = !DILocation(line: 83, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 81, column: 48)
!153 = distinct !DILexicalBlock(scope: !150, file: !1, line: 81, column: 4)
!154 = !DILocation(line: 83, column: 12, scope: !152)
!155 = !DILocation(line: 83, column: 5, scope: !152)
!156 = !DILocation(line: 82, column: 23, scope: !152)
!157 = !DILocation(line: 83, column: 43, scope: !152)
!158 = !DILocation(line: 82, column: 20, scope: !152)
!159 = !DILocation(line: 81, column: 44, scope: !153)
!160 = !DILocation(line: 81, column: 17, scope: !153)
!161 = distinct !{!161, !149, !162, !125, !126}
!162 = !DILocation(line: 84, column: 4, scope: !150)
!163 = !DILocation(line: 77, column: 46, scope: !139)
!164 = distinct !{!164, !142, !165, !125, !126}
!165 = !DILocation(line: 85, column: 2, scope: !140)
!166 = !DILocation(line: 79, column: 25, scope: !148)
!167 = !DILocation(line: 79, column: 23, scope: !148)
!168 = !DILocation(line: 65, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !130, file: !1, line: 64, column: 51)
!170 = !DILocation(line: 65, column: 10, scope: !169)
!171 = !DILocation(line: 66, column: 36, scope: !169)
!172 = !DILocation(line: 66, column: 46, scope: !169)
!173 = !DILocation(line: 66, column: 39, scope: !169)
!174 = !DILocation(line: 66, column: 10, scope: !169)
!175 = !DILocation(line: 65, column: 22, scope: !169)
!176 = !DILocation(line: 65, column: 2, scope: !169)
!177 = !DILocation(line: 65, column: 8, scope: !169)
!178 = !DILocation(line: 0, scope: !179)
!179 = distinct !DILexicalBlock(scope: !169, file: !1, line: 67, column: 9)
!180 = !DILocation(line: 67, column: 27, scope: !181)
!181 = distinct !DILexicalBlock(scope: !179, file: !1, line: 67, column: 9)
!182 = !DILocation(line: 67, column: 9, scope: !179)
!183 = !DILocation(line: 68, column: 8, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !1, line: 67, column: 62)
!185 = !DILocation(line: 70, column: 26, scope: !186)
!186 = distinct !DILexicalBlock(scope: !184, file: !1, line: 68, column: 8)
!187 = !DILocation(line: 72, column: 5, scope: !184)
!188 = !DILocation(line: 71, column: 21, scope: !184)
!189 = !DILocation(line: 71, column: 7, scope: !184)
!190 = !DILocation(line: 71, column: 4, scope: !184)
!191 = !DILocation(line: 71, column: 18, scope: !184)
!192 = distinct !{!192, !182, !193, !125, !126}
!193 = !DILocation(line: 73, column: 2, scope: !179)
!194 = !DILocation(line: 69, column: 25, scope: !186)
!195 = !DILocation(line: 69, column: 23, scope: !186)
!196 = !DILocation(line: 64, column: 47, scope: !130)
!197 = distinct !{!197, !132, !198, !125, !126}
!198 = !DILocation(line: 74, column: 7, scope: !131)
!199 = !DILocation(line: 55, column: 24, scope: !101)
!200 = !DILocation(line: 55, column: 22, scope: !101)
!201 = !DILocation(line: 55, column: 14, scope: !101)
!202 = distinct !{!202, !95, !203, !125, !126}
!203 = !DILocation(line: 88, column: 3, scope: !96)
!204 = !DILocation(line: 92, column: 11, scope: !12)
!205 = !DILocation(line: 93, column: 7, scope: !94)
!206 = !DILocation(line: 93, column: 7, scope: !12)
!207 = !DILocation(line: 96, column: 12, scope: !12)
!208 = !DILocation(line: 96, column: 3, scope: !12)
!209 = !DILocation(line: 136, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !12, file: !1, line: 136, column: 3)
!211 = !DILocation(line: 97, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 97, column: 9)
!213 = distinct !DILexicalBlock(scope: !12, file: !1, line: 96, column: 18)
!214 = !DILocation(line: 0, scope: !212)
!215 = !DILocation(line: 97, column: 9, scope: !213)
!216 = !DILocation(line: 98, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !1, line: 98, column: 7)
!218 = distinct !DILexicalBlock(scope: !212, file: !1, line: 97, column: 23)
!219 = !DILocation(line: 99, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !1, line: 98, column: 7)
!221 = !DILocation(line: 99, column: 29, scope: !220)
!222 = !DILocation(line: 99, column: 35, scope: !220)
!223 = !DILocation(line: 99, column: 32, scope: !220)
!224 = !DILocation(line: 99, column: 14, scope: !220)
!225 = !DILocation(line: 0, scope: !217)
!226 = !DILocation(line: 98, column: 28, scope: !220)
!227 = distinct !{!227, !216, !228, !125, !126}
!228 = !DILocation(line: 99, column: 44, scope: !217)
!229 = !DILocation(line: 100, column: 15, scope: !218)
!230 = !DILocation(line: 100, column: 20, scope: !218)
!231 = !DILocation(line: 100, column: 40, scope: !218)
!232 = !DILocation(line: 100, column: 19, scope: !218)
!233 = !DILocation(line: 100, column: 7, scope: !218)
!234 = !DILocation(line: 100, column: 13, scope: !218)
!235 = !DILocation(line: 101, column: 5, scope: !218)
!236 = !DILocation(line: 104, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 104, column: 7)
!238 = distinct !DILexicalBlock(scope: !212, file: !1, line: 102, column: 10)
!239 = !DILocation(line: 0, scope: !237)
!240 = !DILocation(line: 104, column: 30, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !1, line: 104, column: 7)
!242 = distinct !{!242, !236, !243, !125, !126}
!243 = !DILocation(line: 114, column: 7, scope: !237)
!244 = !DILocation(line: 105, column: 22, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 105, column: 9)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 105, column: 9)
!247 = distinct !DILexicalBlock(scope: !241, file: !1, line: 104, column: 50)
!248 = !DILocation(line: 105, column: 9, scope: !246)
!249 = !DILocation(line: 109, column: 11, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 109, column: 11)
!251 = distinct !DILexicalBlock(scope: !245, file: !1, line: 105, column: 57)
!252 = !DILocation(line: 106, column: 8, scope: !251)
!253 = !DILocation(line: 107, column: 25, scope: !254)
!254 = distinct !DILexicalBlock(scope: !251, file: !1, line: 106, column: 8)
!255 = !DILocation(line: 107, column: 23, scope: !254)
!256 = !DILocation(line: 107, column: 6, scope: !254)
!257 = !DILocation(line: 108, column: 26, scope: !254)
!258 = !DILocation(line: 0, scope: !254)
!259 = !DILocation(line: 111, column: 9, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 109, column: 55)
!261 = distinct !DILexicalBlock(scope: !250, file: !1, line: 109, column: 11)
!262 = !DILocation(line: 111, column: 12, scope: !260)
!263 = !DILocation(line: 111, column: 5, scope: !260)
!264 = !DILocation(line: 110, column: 15, scope: !260)
!265 = !DILocation(line: 110, column: 6, scope: !260)
!266 = !DILocation(line: 110, column: 12, scope: !260)
!267 = !DILocation(line: 109, column: 51, scope: !261)
!268 = !DILocation(line: 109, column: 24, scope: !261)
!269 = distinct !{!269, !249, !270, !125, !126}
!270 = !DILocation(line: 112, column: 4, scope: !250)
!271 = !DILocation(line: 105, column: 53, scope: !245)
!272 = distinct !{!272, !248, !273, !125, !126}
!273 = !DILocation(line: 113, column: 2, scope: !246)
!274 = !DILocation(line: 117, column: 17, scope: !275)
!275 = distinct !DILexicalBlock(scope: !238, file: !1, line: 117, column: 7)
!276 = !DILocation(line: 117, column: 43, scope: !277)
!277 = distinct !DILexicalBlock(scope: !275, file: !1, line: 117, column: 7)
!278 = !DILocation(line: 117, column: 7, scope: !275)
!279 = !DILocation(line: 117, column: 16, scope: !275)
!280 = !DILocation(line: 0, scope: !275)
!281 = !DILocation(line: 118, column: 19, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 118, column: 9)
!283 = distinct !DILexicalBlock(scope: !277, file: !1, line: 117, column: 54)
!284 = !DILocation(line: 0, scope: !282)
!285 = !DILocation(line: 118, column: 27, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !1, line: 118, column: 9)
!287 = !DILocation(line: 118, column: 9, scope: !282)
!288 = !DILocation(line: 125, column: 11, scope: !283)
!289 = !DILocation(line: 126, column: 46, scope: !283)
!290 = !DILocation(line: 119, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !286, file: !1, line: 118, column: 62)
!292 = !DILocation(line: 121, column: 26, scope: !293)
!293 = distinct !DILexicalBlock(scope: !291, file: !1, line: 119, column: 8)
!294 = !DILocation(line: 123, column: 5, scope: !291)
!295 = !DILocation(line: 122, column: 13, scope: !291)
!296 = !DILocation(line: 123, column: 43, scope: !291)
!297 = !DILocation(line: 122, column: 10, scope: !291)
!298 = distinct !{!298, !287, !299, !125, !126}
!299 = !DILocation(line: 124, column: 2, scope: !282)
!300 = !DILocation(line: 120, column: 25, scope: !293)
!301 = !DILocation(line: 120, column: 23, scope: !293)
!302 = !DILocation(line: 126, column: 39, scope: !283)
!303 = !DILocation(line: 126, column: 10, scope: !283)
!304 = !DILocation(line: 125, column: 16, scope: !283)
!305 = !DILocation(line: 125, column: 2, scope: !283)
!306 = !DILocation(line: 125, column: 9, scope: !283)
!307 = distinct !{!307, !278, !308, !125, !126}
!308 = !DILocation(line: 127, column: 7, scope: !275)
!309 = !DILocation(line: 131, column: 10, scope: !310)
!310 = distinct !DILexicalBlock(scope: !213, file: !1, line: 131, column: 9)
!311 = !DILocation(line: 131, column: 14, scope: !310)
!312 = !DILocation(line: 130, column: 6, scope: !213)
!313 = !DILocation(line: 131, column: 17, scope: !310)
!314 = !DILocation(line: 131, column: 9, scope: !213)
!315 = distinct !{!315, !208, !316, !125, !126}
!316 = !DILocation(line: 133, column: 3, scope: !12)
!317 = !DILocation(line: 137, column: 15, scope: !318)
!318 = distinct !DILexicalBlock(scope: !210, file: !1, line: 136, column: 3)
!319 = !DILocation(line: 137, column: 12, scope: !318)
!320 = !DILocation(line: 137, column: 5, scope: !318)
!321 = !DILocation(line: 137, column: 10, scope: !318)
!322 = !DILocation(line: 136, column: 22, scope: !318)
!323 = !DILocation(line: 136, column: 14, scope: !318)
!324 = distinct !{!324, !209, !325, !125, !126}
!325 = !DILocation(line: 137, column: 22, scope: !210)
!326 = !DILocation(line: 139, column: 3, scope: !12)
!327 = !DILocation(line: 140, column: 3, scope: !12)
!328 = !DILocation(line: 141, column: 3, scope: !12)
!329 = !DILocation(line: 143, column: 3, scope: !12)
!330 = distinct !DISubprogram(name: "ComputeNorm", scope: !1, file: !1, line: 146, type: !331, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{!4, !3, !20}
!333 = !{!334, !335, !336, !337}
!334 = !DILocalVariable(name: "x", arg: 1, scope: !330, file: !1, line: 146, type: !3)
!335 = !DILocalVariable(name: "n", arg: 2, scope: !330, file: !1, line: 146, type: !20)
!336 = !DILocalVariable(name: "tmp", scope: !330, file: !1, line: 148, type: !4)
!337 = !DILocalVariable(name: "i", scope: !330, file: !1, line: 149, type: !20)
!338 = !DILocation(line: 0, scope: !330)
!339 = !DILocation(line: 151, column: 14, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 151, column: 3)
!341 = distinct !DILexicalBlock(scope: !330, file: !1, line: 151, column: 3)
!342 = !DILocation(line: 151, column: 3, scope: !341)
!343 = !DILocation(line: 152, column: 14, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !1, line: 152, column: 9)
!345 = !DILocation(line: 152, column: 18, scope: !344)
!346 = !DILocation(line: 152, column: 9, scope: !344)
!347 = !DILocation(line: 152, column: 24, scope: !344)
!348 = !DILocation(line: 152, column: 9, scope: !340)
!349 = !DILocation(line: 153, column: 7, scope: !344)
!350 = !DILocation(line: 151, column: 19, scope: !340)
!351 = distinct !{!351, !342, !352, !125, !126}
!352 = !DILocation(line: 153, column: 26, scope: !341)
!353 = !DILocation(line: 155, column: 3, scope: !330)
!354 = distinct !DISubprogram(name: "CreateVector", scope: !1, file: !1, line: 158, type: !355, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !366)
!355 = !DISubroutineType(types: !356)
!356 = !{!3, !357}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "SMatrix", file: !16, line: 29, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 26, size: 384, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !358, file: !16, line: 27, baseType: !20, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !358, file: !16, line: 27, baseType: !20, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !358, file: !16, line: 27, baseType: !22, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "startrow", scope: !358, file: !16, line: 27, baseType: !22, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "row", scope: !358, file: !16, line: 27, baseType: !22, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !358, file: !16, line: 28, baseType: !3, size: 64, offset: 320)
!366 = !{!367, !368, !369, !370}
!367 = !DILocalVariable(name: "M", arg: 1, scope: !354, file: !1, line: 158, type: !357)
!368 = !DILocalVariable(name: "i", scope: !354, file: !1, line: 160, type: !20)
!369 = !DILocalVariable(name: "j", scope: !354, file: !1, line: 160, type: !20)
!370 = !DILocalVariable(name: "b", scope: !354, file: !1, line: 161, type: !3)
!371 = !DILocation(line: 158, column: 30, scope: !354)
!372 = !DILocation(line: 163, column: 19, scope: !354)
!373 = !DILocation(line: 163, column: 7, scope: !354)
!374 = !DILocation(line: 0, scope: !354)
!375 = !DILocation(line: 165, column: 14, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !1, line: 165, column: 3)
!377 = distinct !DILexicalBlock(scope: !354, file: !1, line: 165, column: 3)
!378 = !DILocation(line: 165, column: 3, scope: !377)
!379 = !DILocation(line: 166, column: 10, scope: !376)
!380 = !DILocation(line: 168, column: 9, scope: !381)
!381 = distinct !DILexicalBlock(scope: !354, file: !1, line: 168, column: 7)
!382 = !DILocation(line: 168, column: 7, scope: !381)
!383 = !DILocation(line: 0, scope: !381)
!384 = !DILocation(line: 168, column: 7, scope: !354)
!385 = !DILocation(line: 169, column: 16, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 169, column: 5)
!387 = distinct !DILexicalBlock(scope: !388, file: !1, line: 169, column: 5)
!388 = distinct !DILexicalBlock(scope: !381, file: !1, line: 168, column: 13)
!389 = !DILocation(line: 169, column: 5, scope: !387)
!390 = distinct !{!390, !389, !391, !125, !126}
!391 = !DILocation(line: 172, column: 7, scope: !387)
!392 = !DILocation(line: 170, column: 14, scope: !393)
!393 = distinct !DILexicalBlock(scope: !386, file: !1, line: 170, column: 7)
!394 = !DILocation(line: 170, column: 26, scope: !395)
!395 = distinct !DILexicalBlock(scope: !393, file: !1, line: 170, column: 7)
!396 = !DILocation(line: 170, column: 25, scope: !395)
!397 = !DILocation(line: 170, column: 7, scope: !393)
!398 = !DILocation(line: 171, column: 17, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !1, line: 170, column: 43)
!400 = !DILocation(line: 171, column: 4, scope: !399)
!401 = !DILocation(line: 171, column: 2, scope: !399)
!402 = !DILocation(line: 171, column: 14, scope: !399)
!403 = !DILocation(line: 170, column: 39, scope: !395)
!404 = distinct !{!404, !397, !405, !125, !126}
!405 = !DILocation(line: 172, column: 7, scope: !393)
!406 = !DILocation(line: 175, column: 16, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 175, column: 5)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 175, column: 5)
!409 = distinct !DILexicalBlock(scope: !381, file: !1, line: 174, column: 8)
!410 = !DILocation(line: 175, column: 5, scope: !408)
!411 = distinct !{!411, !410, !412, !125, !126}
!412 = !DILocation(line: 178, column: 7, scope: !408)
!413 = !DILocation(line: 176, column: 14, scope: !414)
!414 = distinct !DILexicalBlock(scope: !407, file: !1, line: 176, column: 7)
!415 = !DILocation(line: 176, column: 26, scope: !416)
!416 = distinct !DILexicalBlock(scope: !414, file: !1, line: 176, column: 7)
!417 = !DILocation(line: 176, column: 25, scope: !416)
!418 = !DILocation(line: 176, column: 7, scope: !414)
!419 = !DILocation(line: 177, column: 23, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !1, line: 176, column: 43)
!421 = !DILocation(line: 177, column: 17, scope: !420)
!422 = !DILocation(line: 177, column: 4, scope: !420)
!423 = !DILocation(line: 177, column: 2, scope: !420)
!424 = !DILocation(line: 177, column: 14, scope: !420)
!425 = !DILocation(line: 176, column: 39, scope: !416)
!426 = distinct !{!426, !418, !427, !125, !126}
!427 = !DILocation(line: 178, column: 7, scope: !414)
!428 = !DILocation(line: 181, column: 3, scope: !354)
!429 = !DISubprogram(name: "NewVector", scope: !16, file: !16, line: 298, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!3, !20}
!432 = !{}
!433 = !DISubprogram(name: "Value", scope: !16, file: !16, line: 299, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !432)
!434 = !DISubroutineType(types: !435)
!435 = !{!4, !20, !20}
