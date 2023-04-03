; ModuleID = 'jacobcalc.c'
source_filename = "jacobcalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nprocs = external local_unnamed_addr global i64, align 8
@xprocs = external local_unnamed_addr global i64, align 8
@im = external local_unnamed_addr global i64, align 8
@jm = external local_unnamed_addr global i64, align 8
@factjacob = external local_unnamed_addr global double, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @jacobcalc(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y, ptr nocapture noundef writeonly %z, i64 noundef %pid, i64 noundef %firstrow, i64 noundef %lastrow, i64 noundef %firstcol, i64 noundef %lastcol, i64 noundef %numrows, i64 noundef %numcols) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !19, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata ptr %y, metadata !20, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata ptr %z, metadata !21, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %pid, metadata !22, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %firstrow, metadata !23, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %lastrow, metadata !24, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %firstcol, metadata !25, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %lastcol, metadata !26, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %numrows, metadata !27, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %numcols, metadata !28, metadata !DIExpression()), !dbg !44
  %cmp = icmp eq i64 %pid, 0, !dbg !45
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %z, align 8, !dbg !48
  br label %if.end, !dbg !50

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, ptr @nprocs, align 8, !dbg !51
  %1 = load i64, ptr @xprocs, align 8, !dbg !53
  %sub = sub nsw i64 %0, %1, !dbg !54
  %cmp2 = icmp eq i64 %sub, %pid, !dbg !55
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !56

if.then3:                                         ; preds = %if.end
  %2 = load i64, ptr @im, align 8, !dbg !57
  %sub4 = add nsw i64 %2, -1, !dbg !59
  %arrayidx5 = getelementptr inbounds [8194 x double], ptr %z, i64 %sub4, !dbg !60
  store double 0.000000e+00, ptr %arrayidx5, align 8, !dbg !61
  %.pre = load i64, ptr @xprocs, align 8, !dbg !62
  br label %if.end7, !dbg !64

if.end7:                                          ; preds = %if.then3, %if.end
  %3 = phi i64 [ %.pre, %if.then3 ], [ %1, %if.end ], !dbg !62
  %sub8 = add nsw i64 %3, -1, !dbg !65
  %cmp9 = icmp eq i64 %sub8, %pid, !dbg !66
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !67

if.then10:                                        ; preds = %if.end7
  %4 = load i64, ptr @jm, align 8, !dbg !68
  %sub12 = add nsw i64 %4, -1, !dbg !70
  %arrayidx13 = getelementptr inbounds [8194 x double], ptr %z, i64 0, i64 %sub12, !dbg !71
  store double 0.000000e+00, ptr %arrayidx13, align 8, !dbg !72
  br label %if.end14, !dbg !73

if.end14:                                         ; preds = %if.then10, %if.end7
  %5 = load i64, ptr @nprocs, align 8, !dbg !74
  %sub15 = add nsw i64 %5, -1, !dbg !76
  %cmp16 = icmp eq i64 %sub15, %pid, !dbg !77
  br i1 %cmp16, label %if.then17, label %if.end22, !dbg !78

if.then17:                                        ; preds = %if.end14
  %6 = load i64, ptr @im, align 8, !dbg !79
  %sub18 = add nsw i64 %6, -1, !dbg !81
  %7 = load i64, ptr @jm, align 8, !dbg !82
  %sub20 = add nsw i64 %7, -1, !dbg !83
  %arrayidx21 = getelementptr inbounds [8194 x double], ptr %z, i64 %sub18, i64 %sub20, !dbg !84
  store double 0.000000e+00, ptr %arrayidx21, align 8, !dbg !85
  br label %if.end22, !dbg !86

if.end22:                                         ; preds = %if.then17, %if.end14
  call void @llvm.dbg.value(metadata i64 %firstcol, metadata !37, metadata !DIExpression()), !dbg !44
  %cmp23.not362 = icmp sgt i64 %firstcol, %lastcol, !dbg !87
  br i1 %cmp23.not362, label %if.end178, label %for.body.lr.ph, !dbg !90

for.body.lr.ph:                                   ; preds = %if.end22
  %cmp26.not360 = icmp sgt i64 %firstrow, %lastrow
  br i1 %cmp26.not360, label %for.end153, label %for.body, !dbg !91

for.cond25.for.cond.loopexit_crit_edge:           ; preds = %for.body27
  call void @llvm.dbg.value(metadata i64 %add, metadata !37, metadata !DIExpression()), !dbg !44
  %exitcond376.not = icmp eq i64 %iindex.0363, %lastcol, !dbg !87
  br i1 %exitcond376.not, label %for.end153, label %for.body, !dbg !90, !llvm.loop !94

for.body:                                         ; preds = %for.body.lr.ph, %for.cond25.for.cond.loopexit_crit_edge
  %iindex.0363 = phi i64 [ %add, %for.cond25.for.cond.loopexit_crit_edge ], [ %firstcol, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %iindex.0363, metadata !37, metadata !DIExpression()), !dbg !44
  %add = add nsw i64 %iindex.0363, 1, !dbg !98
  call void @llvm.dbg.value(metadata i64 %add, metadata !38, metadata !DIExpression()), !dbg !44
  %sub24 = add nsw i64 %iindex.0363, -1, !dbg !99
  call void @llvm.dbg.value(metadata i64 %sub24, metadata !39, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %firstrow, metadata !42, metadata !DIExpression()), !dbg !44
  br label %for.body27, !dbg !91

for.body27:                                       ; preds = %for.body, %for.body27
  %i.0361 = phi i64 [ %firstrow, %for.body ], [ %add28, %for.body27 ]
  call void @llvm.dbg.value(metadata i64 %i.0361, metadata !42, metadata !DIExpression()), !dbg !44
  %add28 = add nsw i64 %i.0361, 1, !dbg !100
  call void @llvm.dbg.value(metadata i64 %add28, metadata !41, metadata !DIExpression()), !dbg !44
  %sub29 = add nsw i64 %i.0361, -1, !dbg !103
  call void @llvm.dbg.value(metadata i64 %sub29, metadata !40, metadata !DIExpression()), !dbg !44
  %arrayidx31 = getelementptr inbounds [8194 x double], ptr %y, i64 %i.0361, i64 %sub24, !dbg !104
  %8 = load double, ptr %arrayidx31, align 8, !dbg !104
  %arrayidx33 = getelementptr inbounds [8194 x double], ptr %y, i64 %add28, i64 %sub24, !dbg !105
  %9 = load double, ptr %arrayidx33, align 8, !dbg !105
  %add34 = fadd double %8, %9, !dbg !106
  %arrayidx36 = getelementptr inbounds [8194 x double], ptr %y, i64 %i.0361, i64 %add, !dbg !107
  %10 = load double, ptr %arrayidx36, align 8, !dbg !107
  %sub37 = fsub double %add34, %10, !dbg !108
  %arrayidx39 = getelementptr inbounds [8194 x double], ptr %y, i64 %add28, i64 %add, !dbg !109
  %11 = load double, ptr %arrayidx39, align 8, !dbg !109
  %sub40 = fsub double %sub37, %11, !dbg !110
  %arrayidx42 = getelementptr inbounds [8194 x double], ptr %x, i64 %add28, i64 %iindex.0363, !dbg !111
  %12 = load double, ptr %arrayidx42, align 8, !dbg !111
  %arrayidx44 = getelementptr inbounds [8194 x double], ptr %x, i64 %i.0361, i64 %iindex.0363, !dbg !112
  %13 = load double, ptr %arrayidx44, align 8, !dbg !112
  %sub45 = fsub double %12, %13, !dbg !113
  %mul = fmul double %sub40, %sub45, !dbg !114
  call void @llvm.dbg.value(metadata double %mul, metadata !29, metadata !DIExpression()), !dbg !44
  %arrayidx47 = getelementptr inbounds [8194 x double], ptr %y, i64 %sub29, i64 %sub24, !dbg !115
  %14 = load double, ptr %arrayidx47, align 8, !dbg !115
  %add50 = fadd double %8, %14, !dbg !116
  %arrayidx52 = getelementptr inbounds [8194 x double], ptr %y, i64 %sub29, i64 %add, !dbg !117
  %15 = load double, ptr %arrayidx52, align 8, !dbg !117
  %sub53 = fsub double %add50, %15, !dbg !118
  %sub56 = fsub double %sub53, %10, !dbg !119
  %arrayidx60 = getelementptr inbounds [8194 x double], ptr %x, i64 %sub29, i64 %iindex.0363, !dbg !120
  %16 = load double, ptr %arrayidx60, align 8, !dbg !120
  %sub61 = fsub double %13, %16, !dbg !121
  %mul62 = fmul double %sub56, %sub61, !dbg !122
  call void @llvm.dbg.value(metadata double %mul62, metadata !30, metadata !DIExpression()), !dbg !44
  %arrayidx64 = getelementptr inbounds [8194 x double], ptr %y, i64 %add28, i64 %iindex.0363, !dbg !123
  %17 = load double, ptr %arrayidx64, align 8, !dbg !123
  %add67 = fadd double %11, %17, !dbg !124
  %arrayidx69 = getelementptr inbounds [8194 x double], ptr %y, i64 %sub29, i64 %iindex.0363, !dbg !125
  %18 = load double, ptr %arrayidx69, align 8, !dbg !125
  %sub70 = fsub double %add67, %18, !dbg !126
  %sub73 = fsub double %sub70, %15, !dbg !127
  %arrayidx75 = getelementptr inbounds [8194 x double], ptr %x, i64 %i.0361, i64 %add, !dbg !128
  %19 = load double, ptr %arrayidx75, align 8, !dbg !128
  %sub78 = fsub double %19, %13, !dbg !129
  %mul79 = fmul double %sub73, %sub78, !dbg !130
  call void @llvm.dbg.value(metadata double %mul79, metadata !31, metadata !DIExpression()), !dbg !44
  %add84 = fadd double %9, %17, !dbg !131
  %sub87 = fsub double %add84, %14, !dbg !132
  %sub90 = fsub double %sub87, %18, !dbg !133
  %arrayidx94 = getelementptr inbounds [8194 x double], ptr %x, i64 %i.0361, i64 %sub24, !dbg !134
  %20 = load double, ptr %arrayidx94, align 8, !dbg !134
  %sub95 = fsub double %13, %20, !dbg !135
  %mul96 = fmul double %sub90, %sub95, !dbg !136
  call void @llvm.dbg.value(metadata double %mul96, metadata !32, metadata !DIExpression()), !dbg !44
  %sub101 = fsub double %17, %10, !dbg !137
  %arrayidx103 = getelementptr inbounds [8194 x double], ptr %x, i64 %add28, i64 %add, !dbg !138
  %21 = load double, ptr %arrayidx103, align 8, !dbg !138
  %sub106 = fsub double %21, %13, !dbg !139
  %mul107 = fmul double %sub101, %sub106, !dbg !140
  call void @llvm.dbg.value(metadata double %mul107, metadata !33, metadata !DIExpression()), !dbg !44
  %sub112 = fsub double %8, %18, !dbg !141
  %arrayidx116 = getelementptr inbounds [8194 x double], ptr %x, i64 %sub29, i64 %sub24, !dbg !142
  %22 = load double, ptr %arrayidx116, align 8, !dbg !142
  %sub117 = fsub double %13, %22, !dbg !143
  %mul118 = fmul double %sub112, %sub117, !dbg !144
  call void @llvm.dbg.value(metadata double %mul118, metadata !34, metadata !DIExpression()), !dbg !44
  %sub123 = fsub double %10, %18, !dbg !145
  %arrayidx125 = getelementptr inbounds [8194 x double], ptr %x, i64 %sub29, i64 %add, !dbg !146
  %23 = load double, ptr %arrayidx125, align 8, !dbg !146
  %sub128 = fsub double %23, %13, !dbg !147
  %mul129 = fmul double %sub123, %sub128, !dbg !148
  call void @llvm.dbg.value(metadata double %mul129, metadata !35, metadata !DIExpression()), !dbg !44
  %sub134 = fsub double %17, %8, !dbg !149
  %arrayidx138 = getelementptr inbounds [8194 x double], ptr %x, i64 %add28, i64 %sub24, !dbg !150
  %24 = load double, ptr %arrayidx138, align 8, !dbg !150
  %sub139 = fsub double %13, %24, !dbg !151
  %mul140 = fmul double %sub134, %sub139, !dbg !152
  call void @llvm.dbg.value(metadata double %mul140, metadata !36, metadata !DIExpression()), !dbg !44
  %25 = load double, ptr @factjacob, align 8, !dbg !153
  %add141 = fadd double %mul, %mul62, !dbg !154
  %add142 = fadd double %add141, %mul79, !dbg !155
  %add143 = fadd double %add142, %mul96, !dbg !156
  %add144 = fadd double %add143, %mul107, !dbg !157
  %add145 = fadd double %add144, %mul118, !dbg !158
  %add146 = fadd double %add145, %mul129, !dbg !159
  %add147 = fadd double %add146, %mul140, !dbg !160
  %mul148 = fmul double %25, %add147, !dbg !161
  %arrayidx150 = getelementptr inbounds [8194 x double], ptr %z, i64 %i.0361, i64 %iindex.0363, !dbg !162
  store double %mul148, ptr %arrayidx150, align 8, !dbg !163
  call void @llvm.dbg.value(metadata i64 %add28, metadata !42, metadata !DIExpression()), !dbg !44
  %exitcond.not = icmp eq i64 %i.0361, %lastrow, !dbg !164
  br i1 %exitcond.not, label %for.cond25.for.cond.loopexit_crit_edge, label %for.body27, !dbg !91, !llvm.loop !165

for.end153:                                       ; preds = %for.cond25.for.cond.loopexit_crit_edge, %for.body.lr.ph
  %cmp154 = icmp ne i64 %firstrow, 1, !dbg !167
  %or.cond = or i1 %cmp154, %cmp23.not362, !dbg !169
  call void @llvm.dbg.value(metadata i64 %firstcol, metadata !43, metadata !DIExpression()), !dbg !44
  br i1 %or.cond, label %if.end164, label %for.body158.preheader, !dbg !169

for.body158.preheader:                            ; preds = %for.end153
  %26 = shl i64 %firstcol, 3, !dbg !170
  %uglygep = getelementptr i8, ptr %z, i64 %26, !dbg !170
  %27 = add i64 %lastcol, 1, !dbg !170
  %28 = sub i64 %27, %firstcol, !dbg !170
  %29 = shl nuw i64 %28, 3, !dbg !170
  call void @llvm.memset.p0.i64(ptr align 8 %uglygep, i8 0, i64 %29, i1 false), !dbg !173
  call void @llvm.dbg.value(metadata i32 undef, metadata !43, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !44
  br label %if.end164, !dbg !176

if.end164:                                        ; preds = %for.body158.preheader, %for.end153
  %add165 = add nsw i64 %numrows, %firstrow, !dbg !176
  %30 = load i64, ptr @im, align 8, !dbg !178
  %sub166 = add nsw i64 %30, -1, !dbg !179
  %cmp167 = icmp ne i64 %add165, %sub166, !dbg !180
  %or.cond372 = or i1 %cmp167, %cmp23.not362, !dbg !181
  call void @llvm.dbg.value(metadata i64 %firstcol, metadata !43, metadata !DIExpression()), !dbg !44
  br i1 %or.cond372, label %if.end178, label %for.body171.preheader, !dbg !181

for.body171.preheader:                            ; preds = %if.end164
  call void @llvm.dbg.value(metadata i64 %firstcol, metadata !43, metadata !DIExpression()), !dbg !44
  %sub172388 = add nsw i64 %30, -1, !dbg !182
  %arrayidx174389 = getelementptr inbounds [8194 x double], ptr %z, i64 %sub172388, i64 %firstcol, !dbg !187
  store double 0.000000e+00, ptr %arrayidx174389, align 8, !dbg !188
  call void @llvm.dbg.value(metadata i64 %firstcol, metadata !43, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !44
  %exitcond377.not390 = icmp eq i64 %firstcol, %lastcol, !dbg !189
  br i1 %exitcond377.not390, label %if.end178, label %for.body171.for.body171_crit_edge, !dbg !190, !llvm.loop !191

for.body171.for.body171_crit_edge:                ; preds = %for.body171.preheader, %for.body171.for.body171_crit_edge
  %j.1367391 = phi i64 [ %inc176, %for.body171.for.body171_crit_edge ], [ %firstcol, %for.body171.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.1367391, metadata !43, metadata !DIExpression()), !dbg !44
  %inc176 = add i64 %j.1367391, 1, !dbg !193
  call void @llvm.dbg.value(metadata i64 %inc176, metadata !43, metadata !DIExpression()), !dbg !44
  %.pre380 = load i64, ptr @im, align 8, !dbg !194
  %sub172 = add nsw i64 %.pre380, -1, !dbg !182
  %arrayidx174 = getelementptr inbounds [8194 x double], ptr %z, i64 %sub172, i64 %inc176, !dbg !187
  store double 0.000000e+00, ptr %arrayidx174, align 8, !dbg !188
  call void @llvm.dbg.value(metadata i64 %inc176, metadata !43, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !44
  %exitcond377.not = icmp eq i64 %inc176, %lastcol, !dbg !189
  br i1 %exitcond377.not, label %if.end178, label %for.body171.for.body171_crit_edge, !dbg !190, !llvm.loop !191

if.end178:                                        ; preds = %for.body171.for.body171_crit_edge, %for.body171.preheader, %if.end22, %if.end164
  %cmp179 = icmp ne i64 %firstcol, 1, !dbg !195
  %cmp182.not368 = icmp sgt i64 %firstrow, %lastrow
  %or.cond373 = or i1 %cmp179, %cmp182.not368, !dbg !197
  call void @llvm.dbg.value(metadata i64 %firstrow, metadata !43, metadata !DIExpression()), !dbg !44
  br i1 %or.cond373, label %if.end189, label %for.body183, !dbg !197

for.body183:                                      ; preds = %if.end178, %for.body183
  %j.2369 = phi i64 [ %inc187, %for.body183 ], [ %firstrow, %if.end178 ]
  call void @llvm.dbg.value(metadata i64 %j.2369, metadata !43, metadata !DIExpression()), !dbg !44
  %arrayidx184 = getelementptr inbounds [8194 x double], ptr %z, i64 %j.2369, !dbg !198
  store double 0.000000e+00, ptr %arrayidx184, align 8, !dbg !203
  %inc187 = add i64 %j.2369, 1, !dbg !204
  call void @llvm.dbg.value(metadata i64 %inc187, metadata !43, metadata !DIExpression()), !dbg !44
  %exitcond378.not = icmp eq i64 %j.2369, %lastrow, !dbg !205
  br i1 %exitcond378.not, label %if.end189, label %for.body183, !dbg !206, !llvm.loop !207

if.end189:                                        ; preds = %for.body183, %if.end178
  %add190 = add nsw i64 %numcols, %firstcol, !dbg !209
  %31 = load i64, ptr @jm, align 8, !dbg !211
  %sub191 = add nsw i64 %31, -1, !dbg !212
  %cmp192 = icmp ne i64 %add190, %sub191, !dbg !213
  %or.cond374 = or i1 %cmp192, %cmp182.not368, !dbg !214
  call void @llvm.dbg.value(metadata i64 %firstrow, metadata !43, metadata !DIExpression()), !dbg !44
  br i1 %or.cond374, label %if.end203, label %for.body196.preheader, !dbg !214

for.body196.preheader:                            ; preds = %if.end189
  call void @llvm.dbg.value(metadata i64 %firstrow, metadata !43, metadata !DIExpression()), !dbg !44
  %sub198392 = add nsw i64 %31, -1, !dbg !215
  %arrayidx199393 = getelementptr inbounds [8194 x double], ptr %z, i64 %firstrow, i64 %sub198392, !dbg !220
  store double 0.000000e+00, ptr %arrayidx199393, align 8, !dbg !221
  call void @llvm.dbg.value(metadata i64 %firstrow, metadata !43, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !44
  %exitcond379.not394 = icmp eq i64 %firstrow, %lastrow, !dbg !222
  br i1 %exitcond379.not394, label %if.end203, label %for.body196.for.body196_crit_edge, !dbg !223, !llvm.loop !224

for.body196.for.body196_crit_edge:                ; preds = %for.body196.preheader, %for.body196.for.body196_crit_edge
  %j.3371395 = phi i64 [ %inc201, %for.body196.for.body196_crit_edge ], [ %firstrow, %for.body196.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.3371395, metadata !43, metadata !DIExpression()), !dbg !44
  %inc201 = add i64 %j.3371395, 1, !dbg !226
  call void @llvm.dbg.value(metadata i64 %inc201, metadata !43, metadata !DIExpression()), !dbg !44
  %.pre381 = load i64, ptr @jm, align 8, !dbg !227
  %sub198 = add nsw i64 %.pre381, -1, !dbg !215
  %arrayidx199 = getelementptr inbounds [8194 x double], ptr %z, i64 %inc201, i64 %sub198, !dbg !220
  store double 0.000000e+00, ptr %arrayidx199, align 8, !dbg !221
  call void @llvm.dbg.value(metadata i64 %inc201, metadata !43, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !44
  %exitcond379.not = icmp eq i64 %inc201, %lastrow, !dbg !222
  br i1 %exitcond379.not, label %if.end203, label %for.body196.for.body196_crit_edge, !dbg !223, !llvm.loop !224

if.end203:                                        ; preds = %for.body196.for.body196_crit_edge, %for.body196.preheader, %if.end189
  ret void, !dbg !228
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "jacobcalc.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/ocean/non_contiguous_partitions", checksumkind: CSK_MD5, checksum: "af83f385b17728082f0e53d30193c973")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "jacobcalc", scope: !1, file: !1, line: 27, type: !10, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !12, !17, !17, !17, !17, !17, !17, !17}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 524416, elements: !15)
!14 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!15 = !{!16}
!16 = !DISubrange(count: 8194)
!17 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!19 = !DILocalVariable(name: "x", arg: 1, scope: !9, file: !1, line: 27, type: !12)
!20 = !DILocalVariable(name: "y", arg: 2, scope: !9, file: !1, line: 27, type: !12)
!21 = !DILocalVariable(name: "z", arg: 3, scope: !9, file: !1, line: 27, type: !12)
!22 = !DILocalVariable(name: "pid", arg: 4, scope: !9, file: !1, line: 27, type: !17)
!23 = !DILocalVariable(name: "firstrow", arg: 5, scope: !9, file: !1, line: 27, type: !17)
!24 = !DILocalVariable(name: "lastrow", arg: 6, scope: !9, file: !1, line: 27, type: !17)
!25 = !DILocalVariable(name: "firstcol", arg: 7, scope: !9, file: !1, line: 27, type: !17)
!26 = !DILocalVariable(name: "lastcol", arg: 8, scope: !9, file: !1, line: 27, type: !17)
!27 = !DILocalVariable(name: "numrows", arg: 9, scope: !9, file: !1, line: 27, type: !17)
!28 = !DILocalVariable(name: "numcols", arg: 10, scope: !9, file: !1, line: 27, type: !17)
!29 = !DILocalVariable(name: "f1", scope: !9, file: !1, line: 29, type: !14)
!30 = !DILocalVariable(name: "f2", scope: !9, file: !1, line: 30, type: !14)
!31 = !DILocalVariable(name: "f3", scope: !9, file: !1, line: 31, type: !14)
!32 = !DILocalVariable(name: "f4", scope: !9, file: !1, line: 32, type: !14)
!33 = !DILocalVariable(name: "f5", scope: !9, file: !1, line: 33, type: !14)
!34 = !DILocalVariable(name: "f6", scope: !9, file: !1, line: 34, type: !14)
!35 = !DILocalVariable(name: "f7", scope: !9, file: !1, line: 35, type: !14)
!36 = !DILocalVariable(name: "f8", scope: !9, file: !1, line: 36, type: !14)
!37 = !DILocalVariable(name: "iindex", scope: !9, file: !1, line: 37, type: !17)
!38 = !DILocalVariable(name: "indexp1", scope: !9, file: !1, line: 38, type: !17)
!39 = !DILocalVariable(name: "indexm1", scope: !9, file: !1, line: 39, type: !17)
!40 = !DILocalVariable(name: "im1", scope: !9, file: !1, line: 40, type: !17)
!41 = !DILocalVariable(name: "ip1", scope: !9, file: !1, line: 41, type: !17)
!42 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 42, type: !17)
!43 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 43, type: !17)
!44 = !DILocation(line: 0, scope: !9)
!45 = !DILocation(line: 45, column: 12, scope: !46)
!46 = distinct !DILexicalBlock(scope: !9, file: !1, line: 45, column: 8)
!47 = !DILocation(line: 45, column: 8, scope: !9)
!48 = !DILocation(line: 46, column: 13, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 45, column: 23)
!50 = !DILocation(line: 47, column: 4, scope: !49)
!51 = !DILocation(line: 48, column: 15, scope: !52)
!52 = distinct !DILexicalBlock(scope: !9, file: !1, line: 48, column: 8)
!53 = !DILocation(line: 48, column: 22, scope: !52)
!54 = !DILocation(line: 48, column: 21, scope: !52)
!55 = !DILocation(line: 48, column: 12, scope: !52)
!56 = !DILocation(line: 48, column: 8, scope: !9)
!57 = !DILocation(line: 49, column: 8, scope: !58)
!58 = distinct !DILexicalBlock(scope: !52, file: !1, line: 48, column: 30)
!59 = !DILocation(line: 49, column: 10, scope: !58)
!60 = !DILocation(line: 49, column: 6, scope: !58)
!61 = !DILocation(line: 49, column: 16, scope: !58)
!62 = !DILocation(line: 51, column: 15, scope: !63)
!63 = distinct !DILexicalBlock(scope: !9, file: !1, line: 51, column: 8)
!64 = !DILocation(line: 50, column: 4, scope: !58)
!65 = !DILocation(line: 51, column: 21, scope: !63)
!66 = !DILocation(line: 51, column: 12, scope: !63)
!67 = !DILocation(line: 51, column: 8, scope: !9)
!68 = !DILocation(line: 52, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !63, file: !1, line: 51, column: 25)
!70 = !DILocation(line: 52, column: 13, scope: !69)
!71 = !DILocation(line: 52, column: 6, scope: !69)
!72 = !DILocation(line: 52, column: 16, scope: !69)
!73 = !DILocation(line: 53, column: 4, scope: !69)
!74 = !DILocation(line: 54, column: 15, scope: !75)
!75 = distinct !DILexicalBlock(scope: !9, file: !1, line: 54, column: 8)
!76 = !DILocation(line: 54, column: 21, scope: !75)
!77 = !DILocation(line: 54, column: 12, scope: !75)
!78 = !DILocation(line: 54, column: 8, scope: !9)
!79 = !DILocation(line: 55, column: 8, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 54, column: 25)
!81 = !DILocation(line: 55, column: 10, scope: !80)
!82 = !DILocation(line: 55, column: 14, scope: !80)
!83 = !DILocation(line: 55, column: 16, scope: !80)
!84 = !DILocation(line: 55, column: 6, scope: !80)
!85 = !DILocation(line: 55, column: 19, scope: !80)
!86 = !DILocation(line: 56, column: 4, scope: !80)
!87 = !DILocation(line: 57, column: 31, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 57, column: 4)
!89 = distinct !DILexicalBlock(scope: !9, file: !1, line: 57, column: 4)
!90 = !DILocation(line: 57, column: 4, scope: !89)
!91 = !DILocation(line: 60, column: 6, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 60, column: 6)
!93 = distinct !DILexicalBlock(scope: !88, file: !1, line: 57, column: 51)
!94 = distinct !{!94, !90, !95, !96, !97}
!95 = !DILocation(line: 78, column: 4, scope: !89)
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !DILocation(line: 58, column: 22, scope: !93)
!99 = !DILocation(line: 59, column: 22, scope: !93)
!100 = !DILocation(line: 61, column: 15, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 60, column: 38)
!102 = distinct !DILexicalBlock(scope: !92, file: !1, line: 60, column: 6)
!103 = !DILocation(line: 62, column: 15, scope: !101)
!104 = !DILocation(line: 63, column: 14, scope: !101)
!105 = !DILocation(line: 63, column: 28, scope: !101)
!106 = !DILocation(line: 63, column: 27, scope: !101)
!107 = !DILocation(line: 63, column: 44, scope: !101)
!108 = !DILocation(line: 63, column: 43, scope: !101)
!109 = !DILocation(line: 63, column: 58, scope: !101)
!110 = !DILocation(line: 63, column: 57, scope: !101)
!111 = !DILocation(line: 64, column: 14, scope: !101)
!112 = !DILocation(line: 64, column: 29, scope: !101)
!113 = !DILocation(line: 64, column: 28, scope: !101)
!114 = !DILocation(line: 63, column: 74, scope: !101)
!115 = !DILocation(line: 65, column: 14, scope: !101)
!116 = !DILocation(line: 65, column: 29, scope: !101)
!117 = !DILocation(line: 65, column: 44, scope: !101)
!118 = !DILocation(line: 65, column: 43, scope: !101)
!119 = !DILocation(line: 65, column: 59, scope: !101)
!120 = !DILocation(line: 66, column: 27, scope: !101)
!121 = !DILocation(line: 66, column: 26, scope: !101)
!122 = !DILocation(line: 65, column: 74, scope: !101)
!123 = !DILocation(line: 67, column: 14, scope: !101)
!124 = !DILocation(line: 67, column: 28, scope: !101)
!125 = !DILocation(line: 67, column: 45, scope: !101)
!126 = !DILocation(line: 67, column: 44, scope: !101)
!127 = !DILocation(line: 67, column: 59, scope: !101)
!128 = !DILocation(line: 68, column: 14, scope: !101)
!129 = !DILocation(line: 68, column: 27, scope: !101)
!130 = !DILocation(line: 67, column: 76, scope: !101)
!131 = !DILocation(line: 69, column: 29, scope: !101)
!132 = !DILocation(line: 69, column: 44, scope: !101)
!133 = !DILocation(line: 69, column: 60, scope: !101)
!134 = !DILocation(line: 70, column: 27, scope: !101)
!135 = !DILocation(line: 70, column: 26, scope: !101)
!136 = !DILocation(line: 69, column: 76, scope: !101)
!137 = !DILocation(line: 71, column: 28, scope: !101)
!138 = !DILocation(line: 71, column: 45, scope: !101)
!139 = !DILocation(line: 71, column: 60, scope: !101)
!140 = !DILocation(line: 71, column: 43, scope: !101)
!141 = !DILocation(line: 72, column: 27, scope: !101)
!142 = !DILocation(line: 72, column: 58, scope: !101)
!143 = !DILocation(line: 72, column: 57, scope: !101)
!144 = !DILocation(line: 72, column: 43, scope: !101)
!145 = !DILocation(line: 73, column: 27, scope: !101)
!146 = !DILocation(line: 73, column: 45, scope: !101)
!147 = !DILocation(line: 73, column: 60, scope: !101)
!148 = !DILocation(line: 73, column: 43, scope: !101)
!149 = !DILocation(line: 74, column: 28, scope: !101)
!150 = !DILocation(line: 74, column: 58, scope: !101)
!151 = !DILocation(line: 74, column: 57, scope: !101)
!152 = !DILocation(line: 74, column: 43, scope: !101)
!153 = !DILocation(line: 76, column: 23, scope: !101)
!154 = !DILocation(line: 76, column: 36, scope: !101)
!155 = !DILocation(line: 76, column: 39, scope: !101)
!156 = !DILocation(line: 76, column: 42, scope: !101)
!157 = !DILocation(line: 76, column: 45, scope: !101)
!158 = !DILocation(line: 76, column: 48, scope: !101)
!159 = !DILocation(line: 76, column: 51, scope: !101)
!160 = !DILocation(line: 76, column: 54, scope: !101)
!161 = !DILocation(line: 76, column: 32, scope: !101)
!162 = !DILocation(line: 76, column: 8, scope: !101)
!163 = !DILocation(line: 76, column: 21, scope: !101)
!164 = !DILocation(line: 60, column: 23, scope: !102)
!165 = distinct !{!165, !91, !166, !96, !97}
!166 = !DILocation(line: 77, column: 6, scope: !92)
!167 = !DILocation(line: 79, column: 17, scope: !168)
!168 = distinct !DILexicalBlock(scope: !9, file: !1, line: 79, column: 8)
!169 = !DILocation(line: 79, column: 8, scope: !9)
!170 = !DILocation(line: 80, column: 6, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 80, column: 6)
!172 = distinct !DILexicalBlock(scope: !168, file: !1, line: 79, column: 23)
!173 = !DILocation(line: 81, column: 16, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 80, column: 38)
!175 = distinct !DILexicalBlock(scope: !171, file: !1, line: 80, column: 6)
!176 = !DILocation(line: 84, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !9, file: !1, line: 84, column: 8)
!178 = !DILocation(line: 84, column: 30, scope: !177)
!179 = !DILocation(line: 84, column: 32, scope: !177)
!180 = !DILocation(line: 84, column: 27, scope: !177)
!181 = !DILocation(line: 84, column: 8, scope: !9)
!182 = !DILocation(line: 86, column: 12, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 85, column: 38)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 85, column: 6)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 85, column: 6)
!186 = distinct !DILexicalBlock(scope: !177, file: !1, line: 84, column: 36)
!187 = !DILocation(line: 86, column: 8, scope: !183)
!188 = !DILocation(line: 86, column: 19, scope: !183)
!189 = !DILocation(line: 85, column: 23, scope: !184)
!190 = !DILocation(line: 85, column: 6, scope: !185)
!191 = distinct !{!191, !190, !192, !96, !97}
!192 = !DILocation(line: 87, column: 6, scope: !185)
!193 = !DILocation(line: 85, column: 34, scope: !184)
!194 = !DILocation(line: 86, column: 10, scope: !183)
!195 = !DILocation(line: 89, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !9, file: !1, line: 89, column: 8)
!197 = !DILocation(line: 89, column: 8, scope: !9)
!198 = !DILocation(line: 91, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 90, column: 38)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 90, column: 6)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 90, column: 6)
!202 = distinct !DILexicalBlock(scope: !196, file: !1, line: 89, column: 23)
!203 = !DILocation(line: 91, column: 16, scope: !199)
!204 = !DILocation(line: 90, column: 34, scope: !200)
!205 = !DILocation(line: 90, column: 23, scope: !200)
!206 = !DILocation(line: 90, column: 6, scope: !201)
!207 = distinct !{!207, !206, !208, !96, !97}
!208 = !DILocation(line: 92, column: 6, scope: !201)
!209 = !DILocation(line: 94, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !9, file: !1, line: 94, column: 8)
!211 = !DILocation(line: 94, column: 30, scope: !210)
!212 = !DILocation(line: 94, column: 32, scope: !210)
!213 = !DILocation(line: 94, column: 27, scope: !210)
!214 = !DILocation(line: 94, column: 8, scope: !9)
!215 = !DILocation(line: 96, column: 15, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 95, column: 38)
!217 = distinct !DILexicalBlock(scope: !218, file: !1, line: 95, column: 6)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 95, column: 6)
!219 = distinct !DILexicalBlock(scope: !210, file: !1, line: 94, column: 36)
!220 = !DILocation(line: 96, column: 8, scope: !216)
!221 = !DILocation(line: 96, column: 19, scope: !216)
!222 = !DILocation(line: 95, column: 23, scope: !217)
!223 = !DILocation(line: 95, column: 6, scope: !218)
!224 = distinct !{!224, !223, !225, !96, !97}
!225 = !DILocation(line: 97, column: 6, scope: !218)
!226 = !DILocation(line: 95, column: 34, scope: !217)
!227 = !DILocation(line: 96, column: 13, scope: !216)
!228 = !DILocation(line: 99, column: 1, scope: !9)
