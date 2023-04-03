; ModuleID = 'parts.c'
source_filename = "parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMatrix = type { i64, i64, ptr, ptr, ptr, ptr }
%struct.Chunk = type { i64, i64, i64, ptr }

@chunks_head = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@chunks_tail = dso_local local_unnamed_addr global ptr null, align 8, !dbg !17
@tolerance = dso_local local_unnamed_addr global i64 20, align 8, !dbg !19
@divide_lo = dso_local local_unnamed_addr global ptr null, align 8, !dbg !21
@work_tree = external local_unnamed_addr global ptr, align 8
@domain_ops = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !24
@.str = private unnamed_addr constant [32 x i8] c"Divide for %ld P, %ld domains, \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%.2f of work static, \00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%.2f eff, (%.2f overall)\0A\00", align 1
@firstchild = external local_unnamed_addr global ptr, align 8
@child = external local_unnamed_addr global ptr, align 8
@node = external local_unnamed_addr global ptr, align 8
@divide_hi = dso_local local_unnamed_addr global ptr null, align 8, !dbg !26

; Function Attrs: noinline nounwind uwtable
define dso_local void @Partition(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M, i64 noundef %parts, ptr nocapture noundef readonly %T, ptr nocapture noundef %assigned_ops, ptr nocapture noundef writeonly %domain, ptr noundef %domains, ptr nocapture noundef %proc_domains) local_unnamed_addr #0 !dbg !35 {
entry:
  call void @llvm.dbg.declare(metadata ptr %M, metadata !49, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i64 %parts, metadata !50, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata ptr %T, metadata !51, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata ptr %assigned_ops, metadata !52, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata ptr %domain, metadata !53, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata ptr %domains, metadata !54, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata ptr %proc_domains, metadata !55, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 0, metadata !63, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !66, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 0, metadata !58, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 0, metadata !56, metadata !DIExpression()), !dbg !70
  %0 = load i64, ptr %M, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !56, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 0, metadata !58, metadata !DIExpression()), !dbg !70
  %cmp244 = icmp sgt i64 %0, 0, !dbg !71
  br i1 %cmp244, label %for.body, label %for.end, !dbg !74

for.body:                                         ; preds = %entry, %for.inc
  %i.0246 = phi i64 [ %inc.pre-phi, %for.inc ], [ 0, %entry ]
  %start.0245 = phi i64 [ %start.1, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.0246, metadata !56, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %start.0245, metadata !58, metadata !DIExpression()), !dbg !70
  %arrayidx = getelementptr inbounds i64, ptr %T, i64 %i.0246, !dbg !75
  %1 = load i64, ptr %arrayidx, align 8, !dbg !75
  %cmp2 = icmp eq i64 %1, %0, !dbg !77
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge, !dbg !78

for.body.for.inc_crit_edge:                       ; preds = %for.body
  %.pre293 = add nuw nsw i64 %i.0246, 1, !dbg !79
  br label %for.inc, !dbg !78

if.then:                                          ; preds = %for.body
  %call = tail call ptr @NewChunk(), !dbg !80
  call void @llvm.dbg.value(metadata ptr %call, metadata !68, metadata !DIExpression()), !dbg !70
  store i64 %start.0245, ptr %call, align 8, !dbg !82
  %add = add nuw nsw i64 %i.0246, 1, !dbg !83
  %last = getelementptr inbounds %struct.Chunk, ptr %call, i64 0, i32 1, !dbg !84
  store i64 %add, ptr %last, align 8, !dbg !85
  tail call void @AddInOrder(ptr noundef nonnull %call), !dbg !86
  call void @llvm.dbg.value(metadata i64 %add, metadata !58, metadata !DIExpression()), !dbg !70
  br label %for.inc, !dbg !87

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %if.then
  %inc.pre-phi = phi i64 [ %.pre293, %for.body.for.inc_crit_edge ], [ %add, %if.then ], !dbg !79
  %start.1 = phi i64 [ %start.0245, %for.body.for.inc_crit_edge ], [ %add, %if.then ], !dbg !70
  call void @llvm.dbg.value(metadata i64 %start.1, metadata !58, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %inc.pre-phi, metadata !56, metadata !DIExpression()), !dbg !70
  %exitcond.not = icmp eq i64 %inc.pre-phi, %0, !dbg !71
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !74, !llvm.loop !88

for.end:                                          ; preds = %for.inc, %entry
  tail call void @NumberPartition(i64 noundef %parts, ptr noundef %assigned_ops, i64 noundef 0), !dbg !92
  %conv15 = sitofp i64 %parts to double, !dbg !93
  %call5248 = tail call i64 @MinBucket(ptr noundef %assigned_ops, i64 noundef %parts), !dbg !98
  call void @llvm.dbg.value(metadata i64 undef, metadata !59, metadata !DIExpression()), !dbg !70
  %call7249 = tail call i64 @MaxBucket(ptr noundef %assigned_ops, i64 noundef %parts), !dbg !99
  %arrayidx8250 = getelementptr inbounds i64, ptr %assigned_ops, i64 %call7249, !dbg !100
  %2 = load i64, ptr %arrayidx8250, align 8, !dbg !100
  call void @llvm.dbg.value(metadata i64 %2, metadata !60, metadata !DIExpression()), !dbg !70
  %cmp9251 = icmp eq i64 %2, 0, !dbg !101
  br i1 %cmp9251, label %for.end30, label %lor.lhs.false, !dbg !102

lor.lhs.false:                                    ; preds = %for.end, %if.end25
  %3 = phi i64 [ %8, %if.end25 ], [ %2, %for.end ]
  %call5252 = phi i64 [ %call5, %if.end25 ], [ %call5248, %for.end ]
  %arrayidx6 = getelementptr inbounds i64, ptr %assigned_ops, i64 %call5252, !dbg !103
  %4 = load i64, ptr %arrayidx6, align 8, !dbg !103
  call void @llvm.dbg.value(metadata i64 %4, metadata !59, metadata !DIExpression()), !dbg !70
  %sub = sub nsw i64 %3, %4, !dbg !104
  %conv = sitofp i64 %sub to double, !dbg !105
  %mul = fmul double %conv, 1.000000e+02, !dbg !106
  %conv10 = sitofp i64 %3 to double, !dbg !107
  %div = fdiv double %mul, %conv10, !dbg !108
  %5 = load i64, ptr @tolerance, align 8, !dbg !109
  %conv11 = sitofp i64 %5 to double, !dbg !109
  %cmp12 = fcmp olt double %div, %conv11, !dbg !110
  br i1 %cmp12, label %for.end30, label %lor.lhs.false14, !dbg !111

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %mul18 = fmul double %conv15, %conv10, !dbg !112
  %6 = load ptr, ptr @work_tree, align 8, !dbg !113
  %arrayidx20 = getelementptr inbounds double, ptr %6, i64 %0, !dbg !113
  %7 = load double, ptr %arrayidx20, align 8, !dbg !113
  %div21 = fdiv double %mul18, %7, !dbg !114
  %cmp22 = fcmp olt double %div21, 5.000000e-02, !dbg !115
  br i1 %cmp22, label %for.end30, label %if.end25, !dbg !116

if.end25:                                         ; preds = %lor.lhs.false14
  %call26 = tail call ptr @GetChunk(), !dbg !117
  call void @llvm.dbg.value(metadata ptr %call26, metadata !68, metadata !DIExpression()), !dbg !70
  %call27 = tail call i64 @Divide(ptr noundef %call26), !dbg !118
  call void @llvm.dbg.value(metadata i64 1, metadata !62, metadata !DIExpression()), !dbg !70
  tail call void @NumberPartition(i64 noundef %parts, ptr noundef nonnull %assigned_ops, i64 noundef 0), !dbg !119
  %call5 = tail call i64 @MinBucket(ptr noundef nonnull %assigned_ops, i64 noundef %parts), !dbg !98
  call void @llvm.dbg.value(metadata i64 undef, metadata !59, metadata !DIExpression()), !dbg !70
  %call7 = tail call i64 @MaxBucket(ptr noundef nonnull %assigned_ops, i64 noundef %parts), !dbg !99
  %arrayidx8 = getelementptr inbounds i64, ptr %assigned_ops, i64 %call7, !dbg !100
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !100
  call void @llvm.dbg.value(metadata i64 %8, metadata !60, metadata !DIExpression()), !dbg !70
  %cmp9 = icmp eq i64 %8, 0, !dbg !101
  br i1 %cmp9, label %for.end30, label %lor.lhs.false, !dbg !102, !llvm.loop !120

for.end30:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %if.end25, %for.end
  tail call void @NumberPartition(i64 noundef %parts, ptr noundef nonnull %assigned_ops, i64 noundef 1), !dbg !123
  call void @llvm.dbg.value(metadata i64 0, metadata !63, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 0, metadata !56, metadata !DIExpression()), !dbg !70
  %cmp32258 = icmp sgt i64 %parts, 0, !dbg !124
  br i1 %cmp32258, label %for.body34, label %for.end47, !dbg !127

for.body34:                                       ; preds = %for.end30, %for.inc45
  %i.1260 = phi i64 [ %inc46, %for.inc45 ], [ 0, %for.end30 ]
  %which.0259 = phi i64 [ %which.1.lcssa, %for.inc45 ], [ 0, %for.end30 ]
  call void @llvm.dbg.value(metadata i64 %i.1260, metadata !56, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %which.0259, metadata !63, metadata !DIExpression()), !dbg !70
  %arrayidx35 = getelementptr inbounds i64, ptr %proc_domains, i64 %i.1260, !dbg !128
  store i64 %which.0259, ptr %arrayidx35, align 8, !dbg !130
  call void @llvm.dbg.value(metadata ptr undef, metadata !68, metadata !DIExpression()), !dbg !70
  %t.0253 = load ptr, ptr @chunks_head, align 8, !dbg !131
  call void @llvm.dbg.value(metadata ptr %t.0253, metadata !68, metadata !DIExpression()), !dbg !70
  %tobool36.not254 = icmp eq ptr %t.0253, null, !dbg !132
  br i1 %tobool36.not254, label %for.inc45, label %while.body, !dbg !132

while.body:                                       ; preds = %for.body34, %if.end44
  %t.0256 = phi ptr [ %t.0, %if.end44 ], [ %t.0253, %for.body34 ]
  %which.1255 = phi i64 [ %which.2, %if.end44 ], [ %which.0259, %for.body34 ]
  call void @llvm.dbg.value(metadata i64 %which.1255, metadata !63, metadata !DIExpression()), !dbg !70
  %assign = getelementptr inbounds %struct.Chunk, ptr %t.0256, i64 0, i32 2, !dbg !133
  %9 = load i64, ptr %assign, align 8, !dbg !133
  %cmp37 = icmp eq i64 %9, %i.1260, !dbg !136
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !137

if.then39:                                        ; preds = %while.body
  %last40 = getelementptr inbounds %struct.Chunk, ptr %t.0256, i64 0, i32 1, !dbg !138
  %10 = load i64, ptr %last40, align 8, !dbg !138
  %sub41 = add nsw i64 %10, -1, !dbg !140
  %inc42 = add nsw i64 %which.1255, 1, !dbg !141
  call void @llvm.dbg.value(metadata i64 %inc42, metadata !63, metadata !DIExpression()), !dbg !70
  %arrayidx43 = getelementptr inbounds i64, ptr %domains, i64 %which.1255, !dbg !142
  store i64 %sub41, ptr %arrayidx43, align 8, !dbg !143
  br label %if.end44, !dbg !144

if.end44:                                         ; preds = %if.then39, %while.body
  %which.2 = phi i64 [ %inc42, %if.then39 ], [ %which.1255, %while.body ], !dbg !70
  call void @llvm.dbg.value(metadata i64 %which.2, metadata !63, metadata !DIExpression()), !dbg !70
  %next = getelementptr inbounds %struct.Chunk, ptr %t.0256, i64 0, i32 3, !dbg !145
  call void @llvm.dbg.value(metadata ptr undef, metadata !68, metadata !DIExpression()), !dbg !70
  %t.0 = load ptr, ptr %next, align 8, !dbg !131
  call void @llvm.dbg.value(metadata ptr %t.0, metadata !68, metadata !DIExpression()), !dbg !70
  %tobool36.not = icmp eq ptr %t.0, null, !dbg !132
  br i1 %tobool36.not, label %for.inc45, label %while.body, !dbg !132, !llvm.loop !146

for.inc45:                                        ; preds = %if.end44, %for.body34
  %which.1.lcssa = phi i64 [ %which.0259, %for.body34 ], [ %which.2, %if.end44 ], !dbg !70
  %inc46 = add nuw nsw i64 %i.1260, 1, !dbg !148
  call void @llvm.dbg.value(metadata i64 %inc46, metadata !56, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %which.1.lcssa, metadata !63, metadata !DIExpression()), !dbg !70
  %exitcond287.not = icmp eq i64 %inc46, %parts, !dbg !124
  br i1 %exitcond287.not, label %for.end47, label %for.body34, !dbg !127, !llvm.loop !149

for.end47:                                        ; preds = %for.inc45, %for.end30
  %which.0.lcssa = phi i64 [ 0, %for.end30 ], [ %which.1.lcssa, %for.inc45 ], !dbg !151
  %arrayidx48 = getelementptr inbounds i64, ptr %proc_domains, i64 %parts, !dbg !152
  store i64 %which.0.lcssa, ptr %arrayidx48, align 8, !dbg !153
  %11 = load ptr, ptr @chunks_head, align 8, !dbg !154
  %tobool50.not263 = icmp eq ptr %11, null, !dbg !155
  br i1 %tobool50.not263, label %while.end53, label %while.body51, !dbg !155

while.body51:                                     ; preds = %for.end47, %while.body51
  %12 = phi ptr [ %14, %while.body51 ], [ %11, %for.end47 ]
  call void @llvm.dbg.value(metadata ptr %12, metadata !68, metadata !DIExpression()), !dbg !70
  %next52 = getelementptr inbounds %struct.Chunk, ptr %12, i64 0, i32 3, !dbg !156
  %13 = load ptr, ptr %next52, align 8, !dbg !156
  store ptr %13, ptr @chunks_head, align 8, !dbg !158
  tail call void @free(ptr noundef nonnull %12) #12, !dbg !159
  %14 = load ptr, ptr @chunks_head, align 8, !dbg !154
  %tobool50.not = icmp eq ptr %14, null, !dbg !155
  br i1 %tobool50.not, label %while.end53.loopexit, label %while.body51, !dbg !155, !llvm.loop !160

while.end53.loopexit:                             ; preds = %while.body51
  %.pre = load i64, ptr %arrayidx48, align 8, !dbg !162
  br label %while.end53, !dbg !162

while.end53:                                      ; preds = %while.end53.loopexit, %for.end47
  %15 = phi i64 [ %.pre, %while.end53.loopexit ], [ %which.0.lcssa, %for.end47 ], !dbg !162
  %mul55 = shl i64 %15, 3, !dbg !163
  %call56 = tail call noalias ptr @malloc(i64 noundef %mul55) #13, !dbg !164
  call void @llvm.dbg.value(metadata ptr %call56, metadata !64, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 0, metadata !57, metadata !DIExpression()), !dbg !70
  br i1 %cmp32258, label %for.body60.preheader, label %for.end78, !dbg !165

for.body60.preheader:                             ; preds = %while.end53
  %.pre291 = load i64, ptr %proc_domains, align 8, !dbg !167
  br label %for.body60, !dbg !165

for.cond57.loopexit:                              ; preds = %for.body67, %for.body60
  %16 = phi i64 [ %18, %for.body60 ], [ %20, %for.body67 ]
  call void @llvm.dbg.value(metadata i64 %add63, metadata !57, metadata !DIExpression()), !dbg !70
  %exitcond288.not = icmp eq i64 %add63, %parts, !dbg !170
  br i1 %exitcond288.not, label %for.end78, label %for.body60, !dbg !165, !llvm.loop !171

for.body60:                                       ; preds = %for.body60.preheader, %for.cond57.loopexit
  %17 = phi i64 [ %16, %for.cond57.loopexit ], [ %.pre291, %for.body60.preheader ], !dbg !167
  %p.0268 = phi i64 [ %add63, %for.cond57.loopexit ], [ 0, %for.body60.preheader ]
  call void @llvm.dbg.value(metadata i64 %p.0268, metadata !57, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %17, metadata !56, metadata !DIExpression()), !dbg !70
  %add63 = add nuw nsw i64 %p.0268, 1
  %arrayidx64 = getelementptr inbounds i64, ptr %proc_domains, i64 %add63
  %18 = load i64, ptr %arrayidx64, align 8, !dbg !173
  %cmp65264 = icmp slt i64 %17, %18, !dbg !175
  br i1 %cmp65264, label %for.body67.lr.ph, label %for.cond57.loopexit, !dbg !176

for.body67.lr.ph:                                 ; preds = %for.body60
  %mul68 = mul nsw i64 %p.0268, 1000000
  br label %for.body67, !dbg !176

for.body67:                                       ; preds = %for.body67.lr.ph, %for.body67
  %i.2265 = phi i64 [ %17, %for.body67.lr.ph ], [ %inc74, %for.body67 ]
  call void @llvm.dbg.value(metadata i64 %i.2265, metadata !56, metadata !DIExpression()), !dbg !70
  %arrayidx69 = getelementptr inbounds i64, ptr %domains, i64 %i.2265, !dbg !177
  %19 = load i64, ptr %arrayidx69, align 8, !dbg !177
  %call70 = tail call i64 @BlDepth(i64 noundef %19) #12, !dbg !178
  %sub71 = sub nsw i64 %mul68, %call70, !dbg !179
  %arrayidx72 = getelementptr inbounds i64, ptr %call56, i64 %i.2265, !dbg !180
  store i64 %sub71, ptr %arrayidx72, align 8, !dbg !181
  %inc74 = add nsw i64 %i.2265, 1, !dbg !182
  call void @llvm.dbg.value(metadata i64 %inc74, metadata !56, metadata !DIExpression()), !dbg !70
  %20 = load i64, ptr %arrayidx64, align 8, !dbg !173
  %cmp65 = icmp slt i64 %inc74, %20, !dbg !175
  br i1 %cmp65, label %for.body67, label %for.cond57.loopexit, !dbg !176, !llvm.loop !183

for.end78:                                        ; preds = %for.cond57.loopexit, %while.end53
  %p.0.lcssa = phi i64 [ 0, %while.end53 ], [ %parts, %for.cond57.loopexit ], !dbg !185
  %arrayidx79 = getelementptr inbounds i64, ptr %proc_domains, i64 %p.0.lcssa, !dbg !186
  %21 = load i64, ptr %arrayidx79, align 8, !dbg !186
  tail call void @SortByKey(i64 noundef %21, ptr noundef %domains, ptr noundef %call56) #12, !dbg !187
  tail call void @free(ptr noundef %call56) #12, !dbg !188
  call void @llvm.dbg.value(metadata i64 0, metadata !56, metadata !DIExpression()), !dbg !70
  br i1 %cmp244, label %for.body84.preheader, label %for.cond89.preheader, !dbg !189

for.body84.preheader:                             ; preds = %for.end78
  %22 = shl nuw i64 %0, 3, !dbg !189
  call void @llvm.memset.p0.i64(ptr align 8 %domain, i8 0, i64 %22, i1 false), !dbg !191
  call void @llvm.dbg.value(metadata i32 undef, metadata !56, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !70
  br label %for.cond89.preheader, !dbg !193

for.cond89.preheader:                             ; preds = %for.body84.preheader, %for.end78
  call void @llvm.dbg.value(metadata i64 0, metadata !56, metadata !DIExpression()), !dbg !70
  %23 = load i64, ptr %arrayidx48, align 8, !dbg !193
  %cmp91272 = icmp sgt i64 %23, 0, !dbg !196
  br i1 %cmp91272, label %for.body93, label %for.end97, !dbg !197

for.body93:                                       ; preds = %for.cond89.preheader, %for.body93
  %i.4273 = phi i64 [ %inc96, %for.body93 ], [ 0, %for.cond89.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.4273, metadata !56, metadata !DIExpression()), !dbg !70
  %arrayidx94 = getelementptr inbounds i64, ptr %domains, i64 %i.4273, !dbg !198
  %24 = load i64, ptr %arrayidx94, align 8, !dbg !198
  tail call void @MarkSubtreeAsDomain(ptr noundef %domain, i64 noundef %24), !dbg !199
  %inc96 = add nuw nsw i64 %i.4273, 1, !dbg !200
  call void @llvm.dbg.value(metadata i64 %inc96, metadata !56, metadata !DIExpression()), !dbg !70
  %25 = load i64, ptr %arrayidx48, align 8, !dbg !193
  %cmp91 = icmp slt i64 %inc96, %25, !dbg !196
  br i1 %cmp91, label %for.body93, label %for.end97, !dbg !197, !llvm.loop !201

for.end97:                                        ; preds = %for.body93, %for.cond89.preheader
  store double 0.000000e+00, ptr @domain_ops, align 8, !dbg !203
  call void @llvm.dbg.value(metadata i64 0, metadata !56, metadata !DIExpression()), !dbg !70
  %26 = load i64, ptr %arrayidx48, align 8, !dbg !204
  %cmp100274 = icmp sgt i64 %26, 0, !dbg !207
  br i1 %cmp100274, label %for.body102.lr.ph, label %for.cond109.preheader, !dbg !208

for.body102.lr.ph:                                ; preds = %for.end97
  %27 = load ptr, ptr @work_tree, align 8
  br label %for.body102, !dbg !208

for.cond109.preheader:                            ; preds = %for.body102, %for.end97
  %28 = phi double [ 0.000000e+00, %for.end97 ], [ %add105, %for.body102 ]
  %.lcssa = phi i64 [ %26, %for.end97 ], [ %33, %for.body102 ], !dbg !204
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !67, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 0, metadata !57, metadata !DIExpression()), !dbg !70
  br i1 %cmp32258, label %for.body112.lr.ph, label %for.end136, !dbg !209

for.body112.lr.ph:                                ; preds = %for.cond109.preheader
  %29 = load ptr, ptr @work_tree, align 8
  %.pre292 = load i64, ptr %proc_domains, align 8, !dbg !211
  br label %for.body112, !dbg !209

for.body102:                                      ; preds = %for.body102.lr.ph, %for.body102
  %30 = phi double [ 0.000000e+00, %for.body102.lr.ph ], [ %add105, %for.body102 ], !dbg !215
  %i.5275 = phi i64 [ 0, %for.body102.lr.ph ], [ %inc107, %for.body102 ]
  call void @llvm.dbg.value(metadata i64 %i.5275, metadata !56, metadata !DIExpression()), !dbg !70
  %arrayidx103 = getelementptr inbounds i64, ptr %domains, i64 %i.5275, !dbg !216
  %31 = load i64, ptr %arrayidx103, align 8, !dbg !216
  %arrayidx104 = getelementptr inbounds double, ptr %27, i64 %31, !dbg !217
  %32 = load double, ptr %arrayidx104, align 8, !dbg !217
  %add105 = fadd double %32, %30, !dbg !215
  store double %add105, ptr @domain_ops, align 8, !dbg !215
  %inc107 = add nuw nsw i64 %i.5275, 1, !dbg !218
  call void @llvm.dbg.value(metadata i64 %inc107, metadata !56, metadata !DIExpression()), !dbg !70
  %33 = load i64, ptr %arrayidx48, align 8, !dbg !204
  %cmp100 = icmp slt i64 %inc107, %33, !dbg !207
  br i1 %cmp100, label %for.body102, label %for.cond109.preheader, !dbg !208, !llvm.loop !219

for.body112:                                      ; preds = %for.body112.lr.ph, %for.inc134
  %34 = phi i64 [ %.pre292, %for.body112.lr.ph ], [ %35, %for.inc134 ], !dbg !211
  %maxd.0284 = phi double [ 0.000000e+00, %for.body112.lr.ph ], [ %maxd.1, %for.inc134 ]
  %p.1283 = phi i64 [ 0, %for.body112.lr.ph ], [ %add115, %for.inc134 ]
  call void @llvm.dbg.value(metadata double %maxd.0284, metadata !67, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %p.1283, metadata !57, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 0, metadata !61, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %34, metadata !56, metadata !DIExpression()), !dbg !70
  %add115 = add nuw nsw i64 %p.1283, 1
  %arrayidx116 = getelementptr inbounds i64, ptr %proc_domains, i64 %add115
  %35 = load i64, ptr %arrayidx116, align 8
  %cmp117277 = icmp slt i64 %34, %35, !dbg !221
  br i1 %cmp117277, label %for.body119, label %for.end127, !dbg !223

for.body119:                                      ; preds = %for.body112, %for.body119
  %i.6279 = phi i64 [ %inc126, %for.body119 ], [ %34, %for.body112 ]
  %ops.0278 = phi i64 [ %conv124, %for.body119 ], [ 0, %for.body112 ]
  call void @llvm.dbg.value(metadata i64 %i.6279, metadata !56, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %ops.0278, metadata !61, metadata !DIExpression()), !dbg !70
  %arrayidx120 = getelementptr inbounds i64, ptr %domains, i64 %i.6279, !dbg !224
  %36 = load i64, ptr %arrayidx120, align 8, !dbg !224
  %arrayidx121 = getelementptr inbounds double, ptr %29, i64 %36, !dbg !225
  %37 = load double, ptr %arrayidx121, align 8, !dbg !225
  %conv122 = sitofp i64 %ops.0278 to double, !dbg !226
  %add123 = fadd double %37, %conv122, !dbg !226
  %conv124 = fptosi double %add123 to i64, !dbg !226
  call void @llvm.dbg.value(metadata i64 %conv124, metadata !61, metadata !DIExpression()), !dbg !70
  %inc126 = add nsw i64 %i.6279, 1, !dbg !227
  call void @llvm.dbg.value(metadata i64 %inc126, metadata !56, metadata !DIExpression()), !dbg !70
  %exitcond289.not = icmp eq i64 %inc126, %35, !dbg !221
  br i1 %exitcond289.not, label %for.end127, label %for.body119, !dbg !223, !llvm.loop !228

for.end127:                                       ; preds = %for.body119, %for.body112
  %ops.0.lcssa = phi i64 [ 0, %for.body112 ], [ %conv124, %for.body119 ], !dbg !230
  %conv128 = sitofp i64 %ops.0.lcssa to double, !dbg !231
  %cmp129 = fcmp olt double %maxd.0284, %conv128, !dbg !233
  br i1 %cmp129, label %if.then131, label %for.inc134, !dbg !234

if.then131:                                       ; preds = %for.end127
  call void @llvm.dbg.value(metadata double %conv128, metadata !67, metadata !DIExpression()), !dbg !70
  br label %for.inc134, !dbg !235

for.inc134:                                       ; preds = %for.end127, %if.then131
  %maxd.1 = phi double [ %conv128, %if.then131 ], [ %maxd.0284, %for.end127 ], !dbg !70
  call void @llvm.dbg.value(metadata double %maxd.1, metadata !67, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %add115, metadata !57, metadata !DIExpression()), !dbg !70
  %exitcond290.not = icmp eq i64 %add115, %parts, !dbg !236
  br i1 %exitcond290.not, label %for.end136, label %for.body112, !dbg !209, !llvm.loop !237

for.end136:                                       ; preds = %for.inc134, %for.cond109.preheader
  %maxd.0.lcssa = phi double [ 0.000000e+00, %for.cond109.preheader ], [ %maxd.1, %for.inc134 ], !dbg !70
  %div138 = fdiv double %28, %conv15, !dbg !239
  call void @llvm.dbg.value(metadata double %div138, metadata !65, metadata !DIExpression()), !dbg !70
  %call140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef %parts, i64 noundef %.lcssa), !dbg !240
  %38 = load double, ptr @domain_ops, align 8, !dbg !241
  %39 = load ptr, ptr @work_tree, align 8, !dbg !242
  %arrayidx142 = getelementptr inbounds double, ptr %39, i64 %0, !dbg !242
  %40 = load double, ptr %arrayidx142, align 8, !dbg !242
  %div143 = fdiv double %38, %40, !dbg !243
  %call144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, double noundef %div143), !dbg !244
  %div145 = fdiv double %div138, %maxd.0.lcssa, !dbg !245
  %41 = load ptr, ptr @work_tree, align 8, !dbg !246
  %arrayidx147 = getelementptr inbounds double, ptr %41, i64 %0, !dbg !246
  %42 = load double, ptr %arrayidx147, align 8, !dbg !246
  %div148 = fdiv double %42, 0.000000e+00, !dbg !247
  %div150 = fdiv double %div148, %conv15, !dbg !248
  %call151 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %div145, double noundef %div150), !dbg !249
  ret void, !dbg !250
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local noalias ptr @NewChunk() local_unnamed_addr #2 !dbg !251 {
entry:
  %call = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13, !dbg !256
  call void @llvm.dbg.value(metadata ptr %call, metadata !255, metadata !DIExpression()), !dbg !257
  ret ptr %call, !dbg !258
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @AddInOrder(ptr noundef %t) local_unnamed_addr #3 !dbg !259 {
entry:
  call void @llvm.dbg.value(metadata ptr %t, metadata !263, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 undef, metadata !265, metadata !DIExpression()), !dbg !266
  %0 = load ptr, ptr @chunks_head, align 8, !dbg !267
  call void @llvm.dbg.value(metadata ptr %0, metadata !264, metadata !DIExpression()), !dbg !266
  %tobool.not = icmp eq ptr %0, null, !dbg !268
  br i1 %tobool.not, label %if.end22.thread, label %if.else, !dbg !270

if.end22.thread:                                  ; preds = %entry
  %next = getelementptr inbounds %struct.Chunk, ptr %t, i64 0, i32 3, !dbg !271
  store ptr null, ptr %next, align 8, !dbg !273
  store ptr %t, ptr @chunks_head, align 8, !dbg !274
  br label %if.end27.sink.split, !dbg !275

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr @work_tree, align 8, !dbg !276
  %last = getelementptr inbounds %struct.Chunk, ptr %t, i64 0, i32 1, !dbg !277
  %2 = load i64, ptr %last, align 8, !dbg !277
  %sub = add nsw i64 %2, -1, !dbg !278
  %arrayidx = getelementptr inbounds double, ptr %1, i64 %sub, !dbg !276
  %3 = load double, ptr %arrayidx, align 8, !dbg !276
  %conv = fptosi double %3 to i64, !dbg !276
  call void @llvm.dbg.value(metadata i64 %conv, metadata !265, metadata !DIExpression()), !dbg !266
  %conv1 = sitofp i64 %conv to double, !dbg !279
  %last2 = getelementptr inbounds %struct.Chunk, ptr %0, i64 0, i32 1, !dbg !281
  %4 = load i64, ptr %last2, align 8, !dbg !281
  %sub3 = add nsw i64 %4, -1, !dbg !282
  %arrayidx4 = getelementptr inbounds double, ptr %1, i64 %sub3, !dbg !283
  %5 = load double, ptr %arrayidx4, align 8, !dbg !283
  %cmp = fcmp ugt double %5, %conv1, !dbg !284
  br i1 %cmp, label %while.cond, label %if.end22.thread45, !dbg !285

if.end22.thread45:                                ; preds = %if.else
  %next7 = getelementptr inbounds %struct.Chunk, ptr %t, i64 0, i32 3, !dbg !286
  store ptr %0, ptr %next7, align 8, !dbg !288
  br label %if.end27.sink.split, !dbg !275

while.cond:                                       ; preds = %if.else, %land.rhs
  %current.0 = phi ptr [ %6, %land.rhs ], [ %0, %if.else ], !dbg !266
  call void @llvm.dbg.value(metadata ptr %current.0, metadata !264, metadata !DIExpression()), !dbg !266
  %next9 = getelementptr inbounds %struct.Chunk, ptr %current.0, i64 0, i32 3, !dbg !289
  %6 = load ptr, ptr %next9, align 8, !dbg !289
  %tobool10.not = icmp eq ptr %6, null, !dbg !291
  br i1 %tobool10.not, label %if.end22, label %land.rhs, !dbg !292

land.rhs:                                         ; preds = %while.cond
  %last13 = getelementptr inbounds %struct.Chunk, ptr %6, i64 0, i32 1, !dbg !293
  %7 = load i64, ptr %last13, align 8, !dbg !293
  %sub14 = add nsw i64 %7, -1, !dbg !294
  %arrayidx15 = getelementptr inbounds double, ptr %1, i64 %sub14, !dbg !295
  %8 = load double, ptr %arrayidx15, align 8, !dbg !295
  %cmp16 = fcmp ogt double %8, %conv1, !dbg !296
  br i1 %cmp16, label %while.cond, label %if.end22, !dbg !297, !llvm.loop !298

if.end22:                                         ; preds = %land.rhs, %while.cond
  %next9.le = getelementptr inbounds %struct.Chunk, ptr %current.0, i64 0, i32 3, !dbg !289
  %next20 = getelementptr inbounds %struct.Chunk, ptr %t, i64 0, i32 3, !dbg !300
  store ptr %6, ptr %next20, align 8, !dbg !301
  store ptr %t, ptr %next9.le, align 8, !dbg !302
  %.pre = load ptr, ptr %next20, align 8, !dbg !303
  %cmp24 = icmp eq ptr %.pre, null, !dbg !305
  br i1 %cmp24, label %if.end27.sink.split, label %if.end27, !dbg !275

if.end27.sink.split:                              ; preds = %if.end22, %if.end22.thread, %if.end22.thread45
  %chunks_head.sink = phi ptr [ @chunks_head, %if.end22.thread45 ], [ @chunks_tail, %if.end22.thread ], [ @chunks_tail, %if.end22 ]
  store ptr %t, ptr %chunks_head.sink, align 8, !dbg !266
  br label %if.end27, !dbg !306

if.end27:                                         ; preds = %if.end27.sink.split, %if.end22
  ret void, !dbg !306
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @NumberPartition(i64 noundef %parts, ptr nocapture noundef %assigned_ops, i64 noundef %distribute) local_unnamed_addr #3 !dbg !307 {
entry:
  call void @llvm.dbg.value(metadata i64 %parts, metadata !311, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata ptr %assigned_ops, metadata !312, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i64 %distribute, metadata !313, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i64 0, metadata !314, metadata !DIExpression()), !dbg !318
  %cmp14 = icmp sgt i64 %parts, 0, !dbg !319
  br i1 %cmp14, label %for.body.preheader, label %for.end, !dbg !322

for.body.preheader:                               ; preds = %entry
  %0 = shl nuw i64 %parts, 3, !dbg !322
  call void @llvm.memset.p0.i64(ptr align 8 %assigned_ops, i8 0, i64 %0, i1 false), !dbg !323
  call void @llvm.dbg.value(metadata i32 undef, metadata !314, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 undef, metadata !314, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !318
  br label %for.end, !dbg !324

for.end:                                          ; preds = %for.body.preheader, %entry
  %1 = load ptr, ptr @chunks_head, align 8, !dbg !324
  call void @llvm.dbg.value(metadata ptr %1, metadata !316, metadata !DIExpression()), !dbg !318
  %tobool.not16 = icmp eq ptr %1, null, !dbg !325
  br i1 %tobool.not16, label %while.end, label %while.body.lr.ph, !dbg !325

while.body.lr.ph:                                 ; preds = %for.end
  %tobool4.not = icmp eq i64 %distribute, 0
  br i1 %tobool4.not, label %while.body.us, label %while.body, !dbg !326

while.body.us:                                    ; preds = %while.body.lr.ph, %while.body.us
  %t.017.us = phi ptr [ %6, %while.body.us ], [ %1, %while.body.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %t.017.us, metadata !316, metadata !DIExpression()), !dbg !318
  %call.us = tail call i64 @MinBucket(ptr noundef %assigned_ops, i64 noundef %parts), !dbg !328
  call void @llvm.dbg.value(metadata i64 %call.us, metadata !315, metadata !DIExpression()), !dbg !318
  %2 = load ptr, ptr @work_tree, align 8, !dbg !329
  %last.us = getelementptr inbounds %struct.Chunk, ptr %t.017.us, i64 0, i32 1, !dbg !330
  %3 = load i64, ptr %last.us, align 8, !dbg !330
  %sub.us = add nsw i64 %3, -1, !dbg !331
  %arrayidx1.us = getelementptr inbounds double, ptr %2, i64 %sub.us, !dbg !329
  %4 = load double, ptr %arrayidx1.us, align 8, !dbg !329
  %arrayidx2.us = getelementptr inbounds i64, ptr %assigned_ops, i64 %call.us, !dbg !332
  %5 = load i64, ptr %arrayidx2.us, align 8, !dbg !333
  %conv.us = sitofp i64 %5 to double, !dbg !333
  %add.us = fadd double %4, %conv.us, !dbg !333
  %conv3.us = fptosi double %add.us to i64, !dbg !333
  store i64 %conv3.us, ptr %arrayidx2.us, align 8, !dbg !333
  call void @llvm.dbg.value(metadata ptr %t.017.us, metadata !317, metadata !DIExpression()), !dbg !318
  %next.us = getelementptr inbounds %struct.Chunk, ptr %t.017.us, i64 0, i32 3, !dbg !334
  %6 = load ptr, ptr %next.us, align 8, !dbg !334
  call void @llvm.dbg.value(metadata ptr %6, metadata !316, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata ptr %6, metadata !316, metadata !DIExpression()), !dbg !318
  %tobool.not.us = icmp eq ptr %6, null, !dbg !325
  br i1 %tobool.not.us, label %while.end, label %while.body.us, !dbg !325, !llvm.loop !335

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %t.017 = phi ptr [ %11, %while.body ], [ %1, %while.body.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %t.017, metadata !316, metadata !DIExpression()), !dbg !318
  %call = tail call i64 @MinBucket(ptr noundef %assigned_ops, i64 noundef %parts), !dbg !328
  call void @llvm.dbg.value(metadata i64 %call, metadata !315, metadata !DIExpression()), !dbg !318
  %7 = load ptr, ptr @work_tree, align 8, !dbg !329
  %last = getelementptr inbounds %struct.Chunk, ptr %t.017, i64 0, i32 1, !dbg !330
  %8 = load i64, ptr %last, align 8, !dbg !330
  %sub = add nsw i64 %8, -1, !dbg !331
  %arrayidx1 = getelementptr inbounds double, ptr %7, i64 %sub, !dbg !329
  %9 = load double, ptr %arrayidx1, align 8, !dbg !329
  %arrayidx2 = getelementptr inbounds i64, ptr %assigned_ops, i64 %call, !dbg !332
  %10 = load i64, ptr %arrayidx2, align 8, !dbg !333
  %conv = sitofp i64 %10 to double, !dbg !333
  %add = fadd double %9, %conv, !dbg !333
  %conv3 = fptosi double %add to i64, !dbg !333
  store i64 %conv3, ptr %arrayidx2, align 8, !dbg !333
  call void @llvm.dbg.value(metadata ptr %t.017, metadata !317, metadata !DIExpression()), !dbg !318
  %next = getelementptr inbounds %struct.Chunk, ptr %t.017, i64 0, i32 3, !dbg !334
  %11 = load ptr, ptr %next, align 8, !dbg !334
  call void @llvm.dbg.value(metadata ptr %11, metadata !316, metadata !DIExpression()), !dbg !318
  %assign = getelementptr inbounds %struct.Chunk, ptr %t.017, i64 0, i32 2, !dbg !337
  store i64 %call, ptr %assign, align 8, !dbg !340
  call void @llvm.dbg.value(metadata ptr %11, metadata !316, metadata !DIExpression()), !dbg !318
  %tobool.not = icmp eq ptr %11, null, !dbg !325
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !325, !llvm.loop !335

while.end:                                        ; preds = %while.body, %while.body.us, %for.end
  ret void, !dbg !341
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @MinBucket(ptr nocapture noundef readonly %assigned_ops, i64 noundef %parts) local_unnamed_addr #4 !dbg !342 {
entry:
  call void @llvm.dbg.value(metadata ptr %assigned_ops, metadata !346, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %parts, metadata !347, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 undef, metadata !349, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 0, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 1, metadata !348, metadata !DIExpression()), !dbg !351
  %cmp11 = icmp sgt i64 %parts, 1, !dbg !352
  br i1 %cmp11, label %for.body.preheader, label %for.end, !dbg !355

for.body.preheader:                               ; preds = %entry
  %0 = load i64, ptr %assigned_ops, align 8, !dbg !356
  call void @llvm.dbg.value(metadata i64 %0, metadata !349, metadata !DIExpression()), !dbg !351
  br label %for.body, !dbg !355

for.body:                                         ; preds = %for.body.preheader, %for.body
  %ind.014 = phi i64 [ %spec.select10, %for.body ], [ 0, %for.body.preheader ]
  %minm.013 = phi i64 [ %2, %for.body ], [ %0, %for.body.preheader ]
  %i.012 = phi i64 [ %inc, %for.body ], [ 1, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %ind.014, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %minm.013, metadata !349, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %i.012, metadata !348, metadata !DIExpression()), !dbg !351
  %arrayidx1 = getelementptr inbounds i64, ptr %assigned_ops, i64 %i.012, !dbg !357
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !357
  %cmp2 = icmp slt i64 %1, %minm.013, !dbg !359
  %2 = tail call i64 @llvm.smin.i64(i64 %1, i64 %minm.013), !dbg !360
  %spec.select10 = select i1 %cmp2, i64 %i.012, i64 %ind.014, !dbg !360
  call void @llvm.dbg.value(metadata i64 %spec.select10, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %2, metadata !349, metadata !DIExpression()), !dbg !351
  %inc = add nuw nsw i64 %i.012, 1, !dbg !361
  call void @llvm.dbg.value(metadata i64 %inc, metadata !348, metadata !DIExpression()), !dbg !351
  %exitcond.not = icmp eq i64 %inc, %parts, !dbg !352
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !355, !llvm.loop !362

for.end:                                          ; preds = %for.body, %entry
  %ind.0.lcssa = phi i64 [ 0, %entry ], [ %spec.select10, %for.body ], !dbg !351
  ret i64 %ind.0.lcssa, !dbg !364
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @MaxBucket(ptr nocapture noundef readonly %assigned_ops, i64 noundef %parts) local_unnamed_addr #4 !dbg !365 {
entry:
  call void @llvm.dbg.value(metadata ptr %assigned_ops, metadata !367, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %parts, metadata !368, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 undef, metadata !370, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 0, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 1, metadata !369, metadata !DIExpression()), !dbg !372
  %cmp11 = icmp sgt i64 %parts, 1, !dbg !373
  br i1 %cmp11, label %for.body.preheader, label %for.end, !dbg !376

for.body.preheader:                               ; preds = %entry
  %0 = load i64, ptr %assigned_ops, align 8, !dbg !377
  call void @llvm.dbg.value(metadata i64 %0, metadata !370, metadata !DIExpression()), !dbg !372
  br label %for.body, !dbg !376

for.body:                                         ; preds = %for.body.preheader, %for.body
  %ind.014 = phi i64 [ %spec.select10, %for.body ], [ 0, %for.body.preheader ]
  %maxm.013 = phi i64 [ %2, %for.body ], [ %0, %for.body.preheader ]
  %i.012 = phi i64 [ %inc, %for.body ], [ 1, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %ind.014, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %maxm.013, metadata !370, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %i.012, metadata !369, metadata !DIExpression()), !dbg !372
  %arrayidx1 = getelementptr inbounds i64, ptr %assigned_ops, i64 %i.012, !dbg !378
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !378
  %cmp2 = icmp sgt i64 %1, %maxm.013, !dbg !380
  %2 = tail call i64 @llvm.smax.i64(i64 %1, i64 %maxm.013), !dbg !381
  %spec.select10 = select i1 %cmp2, i64 %i.012, i64 %ind.014, !dbg !381
  call void @llvm.dbg.value(metadata i64 %spec.select10, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %2, metadata !370, metadata !DIExpression()), !dbg !372
  %inc = add nuw nsw i64 %i.012, 1, !dbg !382
  call void @llvm.dbg.value(metadata i64 %inc, metadata !369, metadata !DIExpression()), !dbg !372
  %exitcond.not = icmp eq i64 %inc, %parts, !dbg !373
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !376, !llvm.loop !383

for.end:                                          ; preds = %for.body, %entry
  %ind.0.lcssa = phi i64 [ 0, %entry ], [ %spec.select10, %for.body ], !dbg !372
  ret i64 %ind.0.lcssa, !dbg !385
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local ptr @GetChunk() local_unnamed_addr #5 !dbg !386 {
entry:
  %0 = load ptr, ptr @chunks_head, align 8, !dbg !389
  call void @llvm.dbg.value(metadata ptr %0, metadata !388, metadata !DIExpression()), !dbg !390
  %tobool.not = icmp eq ptr %0, null, !dbg !391
  br i1 %tobool.not, label %if.end2, label %if.then, !dbg !393

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.Chunk, ptr %0, i64 0, i32 3, !dbg !394
  %1 = load ptr, ptr %next, align 8, !dbg !394
  store ptr %1, ptr @chunks_head, align 8, !dbg !396
  %2 = load ptr, ptr @chunks_tail, align 8, !dbg !397
  %cmp = icmp eq ptr %0, %2, !dbg !399
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !400

if.then1:                                         ; preds = %if.then
  store ptr null, ptr @chunks_tail, align 8, !dbg !401
  br label %if.end2, !dbg !402

if.end2:                                          ; preds = %if.then, %if.then1, %entry
  ret ptr %0, !dbg !403
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Divide(ptr nocapture noundef %root) local_unnamed_addr #0 !dbg !404 {
entry:
  call void @llvm.dbg.value(metadata ptr %root, metadata !408, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i64 1, metadata !412, metadata !DIExpression()), !dbg !414
  %last = getelementptr inbounds %struct.Chunk, ptr %root, i64 0, i32 1, !dbg !415
  %0 = load i64, ptr %last, align 8, !dbg !415
  call void @llvm.dbg.value(metadata i64 %0, metadata !411, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !414
  %1 = load ptr, ptr @firstchild, align 8
  %arrayidx2.phi.trans.insert = getelementptr inbounds i64, ptr %1, i64 %0
  %.pre = load i64, ptr %arrayidx2.phi.trans.insert, align 8, !dbg !416
  br label %while.cond, !dbg !417

while.cond:                                       ; preds = %while.cond, %entry
  %2 = phi i64 [ %.pre, %entry ], [ %3, %while.cond ], !dbg !416
  %first_in_super.0.in = phi i64 [ %0, %entry ], [ %first_in_super.0, %while.cond ]
  %first_in_super.0 = add nsw i64 %first_in_super.0.in, -1, !dbg !414
  call void @llvm.dbg.value(metadata i64 %first_in_super.0, metadata !411, metadata !DIExpression()), !dbg !414
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 %first_in_super.0, !dbg !418
  %3 = load i64, ptr %arrayidx, align 8, !dbg !418
  %add = add nsw i64 %3, 1, !dbg !419
  %cmp = icmp eq i64 %add, %2, !dbg !420
  br i1 %cmp, label %while.cond, label %for.cond.preheader, !dbg !417, !llvm.loop !421

for.cond.preheader:                               ; preds = %while.cond
  %arrayidx2 = getelementptr inbounds i64, ptr %1, i64 %first_in_super.0.in, !dbg !416
  call void @llvm.dbg.value(metadata i64 %3, metadata !409, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i64 undef, metadata !410, metadata !DIExpression()), !dbg !414
  %4 = load i64, ptr %arrayidx2, align 8, !dbg !423
  %cmp725 = icmp slt i64 %3, %4, !dbg !426
  br i1 %cmp725, label %for.body, label %for.end, !dbg !427

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.027 = phi i64 [ %inc, %for.body ], [ %3, %for.cond.preheader ]
  %first.0.in26 = phi ptr [ %last10, %for.body ], [ %root, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.027, metadata !409, metadata !DIExpression()), !dbg !414
  %first.0 = load i64, ptr %first.0.in26, align 8, !dbg !414
  call void @llvm.dbg.value(metadata i64 %first.0, metadata !410, metadata !DIExpression()), !dbg !414
  %call = tail call ptr @NewChunk(), !dbg !428
  call void @llvm.dbg.value(metadata ptr %call, metadata !413, metadata !DIExpression()), !dbg !414
  %5 = load ptr, ptr @child, align 8, !dbg !430
  %arrayidx8 = getelementptr inbounds i64, ptr %5, i64 %i.027, !dbg !430
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !430
  %add9 = add nsw i64 %6, 1, !dbg !431
  %last10 = getelementptr inbounds %struct.Chunk, ptr %call, i64 0, i32 1, !dbg !432
  store i64 %add9, ptr %last10, align 8, !dbg !433
  store i64 %first.0, ptr %call, align 8, !dbg !434
  tail call void @AddInOrder(ptr noundef nonnull %call), !dbg !435
  call void @llvm.dbg.value(metadata i64 undef, metadata !410, metadata !DIExpression()), !dbg !414
  %inc = add nsw i64 %i.027, 1, !dbg !436
  call void @llvm.dbg.value(metadata i64 %inc, metadata !409, metadata !DIExpression()), !dbg !414
  %7 = load ptr, ptr @firstchild, align 8, !dbg !423
  %arrayidx6 = getelementptr inbounds i64, ptr %7, i64 %first_in_super.0.in, !dbg !423
  %8 = load i64, ptr %arrayidx6, align 8, !dbg !423
  %cmp7 = icmp slt i64 %inc, %8, !dbg !426
  br i1 %cmp7, label %for.body, label %for.end, !dbg !427, !llvm.loop !437

for.end:                                          ; preds = %for.body, %for.cond.preheader
  tail call void @free(ptr noundef %root) #12, !dbg !439
  ret i64 1, !dbg !440
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare !dbg !441 i64 @BlDepth(i64 noundef) local_unnamed_addr #8

declare !dbg !445 void @SortByKey(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @MarkSubtreeAsDomain(ptr nocapture noundef writeonly %domain, i64 noundef %root) local_unnamed_addr #3 !dbg !448 {
entry:
  call void @llvm.dbg.value(metadata ptr %domain, metadata !452, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i64 %root, metadata !453, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i64 %root, metadata !455, metadata !DIExpression()), !dbg !457
  %0 = load ptr, ptr @firstchild, align 8
  call void @llvm.dbg.value(metadata i64 %root, metadata !455, metadata !DIExpression()), !dbg !457
  %arrayidx36 = getelementptr inbounds i64, ptr %0, i64 %root, !dbg !458
  %1 = load i64, ptr %arrayidx36, align 8, !dbg !458
  %add37 = add i64 %root, 1, !dbg !459
  %arrayidx138 = getelementptr inbounds i64, ptr %0, i64 %add37, !dbg !460
  %2 = load i64, ptr %arrayidx138, align 8, !dbg !460
  %cmp.not39 = icmp eq i64 %1, %2, !dbg !461
  br i1 %cmp.not39, label %for.body.preheader, label %while.body.lr.ph, !dbg !462

while.body.lr.ph:                                 ; preds = %entry
  %3 = load ptr, ptr @child, align 8
  br label %while.body, !dbg !462

for.cond.preheader:                               ; preds = %while.body
  call void @llvm.dbg.value(metadata i64 %5, metadata !454, metadata !DIExpression()), !dbg !457
  %cmp4.not40 = icmp sgt i64 %5, %root, !dbg !463
  br i1 %cmp4.not40, label %for.end, label %for.body.preheader, !dbg !466

for.body.preheader:                               ; preds = %entry, %for.cond.preheader
  %i.041.ph = phi i64 [ %root, %entry ], [ %5, %for.cond.preheader ]
  br label %for.body, !dbg !466

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %4 = phi i64 [ %1, %while.body.lr.ph ], [ %6, %while.body ]
  %arrayidx3 = getelementptr inbounds i64, ptr %3, i64 %4, !dbg !467
  %5 = load i64, ptr %arrayidx3, align 8, !dbg !467
  call void @llvm.dbg.value(metadata i64 %5, metadata !455, metadata !DIExpression()), !dbg !457
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 %5, !dbg !458
  %6 = load i64, ptr %arrayidx, align 8, !dbg !458
  %add = add nsw i64 %5, 1, !dbg !459
  %arrayidx1 = getelementptr inbounds i64, ptr %0, i64 %add, !dbg !460
  %7 = load i64, ptr %arrayidx1, align 8, !dbg !460
  %cmp.not = icmp eq i64 %6, %7, !dbg !461
  br i1 %cmp.not, label %for.cond.preheader, label %while.body, !dbg !462, !llvm.loop !468

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.041 = phi i64 [ %inc, %for.body ], [ %i.041.ph, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.041, metadata !454, metadata !DIExpression()), !dbg !457
  %arrayidx5 = getelementptr inbounds i64, ptr %domain, i64 %i.041, !dbg !470
  store i64 1, ptr %arrayidx5, align 8, !dbg !471
  %inc = add i64 %i.041, 1, !dbg !472
  call void @llvm.dbg.value(metadata i64 %inc, metadata !454, metadata !DIExpression()), !dbg !457
  %exitcond.not = icmp eq i64 %i.041, %root, !dbg !463
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !466, !llvm.loop !473

for.end:                                          ; preds = %for.body, %for.cond.preheader
  call void @llvm.dbg.value(metadata i64 %root, metadata !456, metadata !DIExpression()), !dbg !457
  %8 = load ptr, ptr @node, align 8, !dbg !475
  %arrayidx6 = getelementptr inbounds i64, ptr %8, i64 %root, !dbg !475
  %9 = load i64, ptr %arrayidx6, align 8, !dbg !475
  %10 = tail call i64 @llvm.smin.i64(i64 %9, i64 0), !dbg !477
  %spec.select = add nsw i64 %10, %root, !dbg !477
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !454, metadata !DIExpression()), !dbg !457
  %arrayidx1142 = getelementptr inbounds i64, ptr %8, i64 %spec.select, !dbg !478
  %11 = load i64, ptr %arrayidx1142, align 8, !dbg !478
  %cmp1344 = icmp sgt i64 %11, 0, !dbg !481
  br i1 %cmp1344, label %for.body14, label %for.end18, !dbg !482

for.body14:                                       ; preds = %for.end, %for.body14
  %i.145 = phi i64 [ %inc17, %for.body14 ], [ %spec.select, %for.end ]
  call void @llvm.dbg.value(metadata i64 %i.145, metadata !454, metadata !DIExpression()), !dbg !457
  %arrayidx15 = getelementptr inbounds i64, ptr %domain, i64 %i.145, !dbg !483
  store i64 2, ptr %arrayidx15, align 8, !dbg !484
  %inc17 = add nsw i64 %i.145, 1, !dbg !485
  call void @llvm.dbg.value(metadata i64 %inc17, metadata !454, metadata !DIExpression()), !dbg !457
  %12 = load ptr, ptr @node, align 8, !dbg !478
  %arrayidx11 = getelementptr inbounds i64, ptr %12, i64 %spec.select, !dbg !478
  %13 = load i64, ptr %arrayidx11, align 8, !dbg !478
  %add12 = add nsw i64 %13, %spec.select, !dbg !486
  %cmp13 = icmp slt i64 %inc17, %add12, !dbg !481
  br i1 %cmp13, label %for.body14, label %for.end18, !dbg !482, !llvm.loop !487

for.end18:                                        ; preds = %for.body14, %for.end
  ret void, !dbg !489
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "chunks_head", scope: !2, file: !3, line: 44, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "parts.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "b5c7f429b97ca506745a90a306dcd09a")
!4 = !{!5, !6, !8, !15}
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Chunk", file: !3, line: 41, size: 256, elements: !10)
!10 = !{!11, !12, !13, !14}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !9, file: !3, line: 42, baseType: !7, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !9, file: !3, line: 42, baseType: !7, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "assign", scope: !9, file: !3, line: 42, baseType: !7, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !9, file: !3, line: 43, baseType: !8, size: 64, offset: 192)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{!0, !17, !19, !21, !24, !26}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "chunks_tail", scope: !2, file: !3, line: 44, type: !8, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "tolerance", scope: !2, file: !3, line: 46, type: !7, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "divide_lo", scope: !2, file: !3, line: 50, type: !23, isLocal: false, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "domain_ops", scope: !2, file: !3, line: 48, type: !5, isLocal: false, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "divide_hi", scope: !2, file: !3, line: 50, type: !23, isLocal: false, isDefinition: true)
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 7, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!35 = distinct !DISubprogram(name: "Partition", scope: !3, file: !3, line: 58, type: !36, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !48)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !7, !6, !6, !6, !6, !6}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "SMatrix", file: !39, line: 29, baseType: !40)
!39 = !DIFile(filename: "./matrix.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "f19fdb19034f8f693c291706633e8f13")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 26, size: 384, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !47}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !40, file: !39, line: 27, baseType: !7, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !40, file: !39, line: 27, baseType: !7, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !40, file: !39, line: 27, baseType: !6, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "startrow", scope: !40, file: !39, line: 27, baseType: !6, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "row", scope: !40, file: !39, line: 27, baseType: !6, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !40, file: !39, line: 28, baseType: !23, size: 64, offset: 320)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!49 = !DILocalVariable(name: "M", arg: 1, scope: !35, file: !3, line: 58, type: !38)
!50 = !DILocalVariable(name: "parts", arg: 2, scope: !35, file: !3, line: 58, type: !7)
!51 = !DILocalVariable(name: "T", arg: 3, scope: !35, file: !3, line: 58, type: !6)
!52 = !DILocalVariable(name: "assigned_ops", arg: 4, scope: !35, file: !3, line: 58, type: !6)
!53 = !DILocalVariable(name: "domain", arg: 5, scope: !35, file: !3, line: 58, type: !6)
!54 = !DILocalVariable(name: "domains", arg: 6, scope: !35, file: !3, line: 58, type: !6)
!55 = !DILocalVariable(name: "proc_domains", arg: 7, scope: !35, file: !3, line: 58, type: !6)
!56 = !DILocalVariable(name: "i", scope: !35, file: !3, line: 60, type: !7)
!57 = !DILocalVariable(name: "p", scope: !35, file: !3, line: 60, type: !7)
!58 = !DILocalVariable(name: "start", scope: !35, file: !3, line: 60, type: !7)
!59 = !DILocalVariable(name: "minm", scope: !35, file: !3, line: 60, type: !7)
!60 = !DILocalVariable(name: "maxm", scope: !35, file: !3, line: 60, type: !7)
!61 = !DILocalVariable(name: "ops", scope: !35, file: !3, line: 60, type: !7)
!62 = !DILocalVariable(name: "change", scope: !35, file: !3, line: 60, type: !7)
!63 = !DILocalVariable(name: "which", scope: !35, file: !3, line: 61, type: !7)
!64 = !DILocalVariable(name: "depth", scope: !35, file: !3, line: 62, type: !6)
!65 = !DILocalVariable(name: "ave", scope: !35, file: !3, line: 63, type: !5)
!66 = !DILocalVariable(name: "maxo", scope: !35, file: !3, line: 63, type: !5)
!67 = !DILocalVariable(name: "maxd", scope: !35, file: !3, line: 63, type: !5)
!68 = !DILocalVariable(name: "t", scope: !35, file: !3, line: 64, type: !8)
!69 = !DILocation(line: 58, column: 24, scope: !35)
!70 = !DILocation(line: 0, scope: !35)
!71 = !DILocation(line: 67, column: 14, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 67, column: 3)
!73 = distinct !DILexicalBlock(scope: !35, file: !3, line: 67, column: 3)
!74 = !DILocation(line: 67, column: 3, scope: !73)
!75 = !DILocation(line: 68, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !3, line: 68, column: 9)
!77 = !DILocation(line: 68, column: 14, scope: !76)
!78 = !DILocation(line: 68, column: 9, scope: !72)
!79 = !DILocation(line: 67, column: 21, scope: !72)
!80 = !DILocation(line: 69, column: 11, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !3, line: 68, column: 22)
!82 = !DILocation(line: 70, column: 16, scope: !81)
!83 = !DILocation(line: 70, column: 36, scope: !81)
!84 = !DILocation(line: 70, column: 28, scope: !81)
!85 = !DILocation(line: 70, column: 33, scope: !81)
!86 = !DILocation(line: 71, column: 7, scope: !81)
!87 = !DILocation(line: 73, column: 5, scope: !81)
!88 = distinct !{!88, !74, !89, !90, !91}
!89 = !DILocation(line: 73, column: 5, scope: !73)
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !DILocation(line: 75, column: 5, scope: !35)
!93 = !DILocation(line: 83, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 81, column: 11)
!95 = distinct !DILexicalBlock(scope: !96, file: !3, line: 77, column: 14)
!96 = distinct !DILexicalBlock(scope: !97, file: !3, line: 77, column: 5)
!97 = distinct !DILexicalBlock(scope: !35, file: !3, line: 77, column: 5)
!98 = !DILocation(line: 78, column: 27, scope: !95)
!99 = !DILocation(line: 79, column: 27, scope: !95)
!100 = !DILocation(line: 79, column: 14, scope: !95)
!101 = !DILocation(line: 81, column: 16, scope: !94)
!102 = !DILocation(line: 81, column: 21, scope: !94)
!103 = !DILocation(line: 78, column: 14, scope: !95)
!104 = !DILocation(line: 82, column: 17, scope: !94)
!105 = !DILocation(line: 82, column: 11, scope: !94)
!106 = !DILocation(line: 82, column: 10, scope: !94)
!107 = !DILocation(line: 82, column: 25, scope: !94)
!108 = !DILocation(line: 82, column: 24, scope: !94)
!109 = !DILocation(line: 82, column: 41, scope: !94)
!110 = !DILocation(line: 82, column: 39, scope: !94)
!111 = !DILocation(line: 82, column: 52, scope: !94)
!112 = !DILocation(line: 83, column: 14, scope: !94)
!113 = !DILocation(line: 83, column: 20, scope: !94)
!114 = !DILocation(line: 83, column: 19, scope: !94)
!115 = !DILocation(line: 83, column: 35, scope: !94)
!116 = !DILocation(line: 81, column: 11, scope: !95)
!117 = !DILocation(line: 86, column: 11, scope: !95)
!118 = !DILocation(line: 88, column: 16, scope: !95)
!119 = !DILocation(line: 93, column: 7, scope: !95)
!120 = distinct !{!120, !121, !122, !91}
!121 = !DILocation(line: 77, column: 5, scope: !97)
!122 = !DILocation(line: 94, column: 5, scope: !97)
!123 = !DILocation(line: 96, column: 5, scope: !35)
!124 = !DILocation(line: 99, column: 14, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 99, column: 3)
!126 = distinct !DILexicalBlock(scope: !35, file: !3, line: 99, column: 3)
!127 = !DILocation(line: 99, column: 3, scope: !126)
!128 = !DILocation(line: 100, column: 5, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !3, line: 99, column: 27)
!130 = !DILocation(line: 100, column: 21, scope: !129)
!131 = !DILocation(line: 0, scope: !129)
!132 = !DILocation(line: 103, column: 5, scope: !129)
!133 = !DILocation(line: 104, column: 14, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !3, line: 104, column: 11)
!135 = distinct !DILexicalBlock(scope: !129, file: !3, line: 103, column: 15)
!136 = !DILocation(line: 104, column: 21, scope: !134)
!137 = !DILocation(line: 104, column: 11, scope: !135)
!138 = !DILocation(line: 105, column: 31, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !3, line: 104, column: 27)
!140 = !DILocation(line: 105, column: 35, scope: !139)
!141 = !DILocation(line: 105, column: 22, scope: !139)
!142 = !DILocation(line: 105, column: 9, scope: !139)
!143 = !DILocation(line: 105, column: 26, scope: !139)
!144 = !DILocation(line: 106, column: 7, scope: !139)
!145 = !DILocation(line: 107, column: 14, scope: !135)
!146 = distinct !{!146, !132, !147, !90, !91}
!147 = !DILocation(line: 108, column: 5, scope: !129)
!148 = !DILocation(line: 99, column: 23, scope: !125)
!149 = distinct !{!149, !127, !150, !90, !91}
!150 = !DILocation(line: 109, column: 3, scope: !126)
!151 = !DILocation(line: 98, column: 9, scope: !35)
!152 = !DILocation(line: 110, column: 3, scope: !35)
!153 = !DILocation(line: 110, column: 23, scope: !35)
!154 = !DILocation(line: 113, column: 10, scope: !35)
!155 = !DILocation(line: 113, column: 3, scope: !35)
!156 = !DILocation(line: 115, column: 32, scope: !157)
!157 = distinct !DILexicalBlock(scope: !35, file: !3, line: 113, column: 23)
!158 = !DILocation(line: 115, column: 17, scope: !157)
!159 = !DILocation(line: 116, column: 5, scope: !157)
!160 = distinct !{!160, !155, !161, !90, !91}
!161 = !DILocation(line: 117, column: 3, scope: !35)
!162 = !DILocation(line: 119, column: 27, scope: !35)
!163 = !DILocation(line: 119, column: 46, scope: !35)
!164 = !DILocation(line: 119, column: 20, scope: !35)
!165 = !DILocation(line: 120, column: 3, scope: !166)
!166 = distinct !DILexicalBlock(scope: !35, file: !3, line: 120, column: 3)
!167 = !DILocation(line: 121, column: 12, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !3, line: 121, column: 5)
!169 = distinct !DILexicalBlock(scope: !166, file: !3, line: 120, column: 3)
!170 = !DILocation(line: 120, column: 14, scope: !169)
!171 = distinct !{!171, !165, !172, !90, !91}
!172 = !DILocation(line: 122, column: 46, scope: !166)
!173 = !DILocation(line: 121, column: 31, scope: !174)
!174 = distinct !DILexicalBlock(scope: !168, file: !3, line: 121, column: 5)
!175 = !DILocation(line: 121, column: 30, scope: !174)
!176 = !DILocation(line: 121, column: 5, scope: !168)
!177 = !DILocation(line: 122, column: 36, scope: !174)
!178 = !DILocation(line: 122, column: 28, scope: !174)
!179 = !DILocation(line: 122, column: 27, scope: !174)
!180 = !DILocation(line: 122, column: 7, scope: !174)
!181 = !DILocation(line: 122, column: 16, scope: !174)
!182 = !DILocation(line: 121, column: 51, scope: !174)
!183 = distinct !{!183, !176, !184, !90, !91}
!184 = !DILocation(line: 122, column: 46, scope: !168)
!185 = !DILocation(line: 0, scope: !166)
!186 = !DILocation(line: 124, column: 13, scope: !35)
!187 = !DILocation(line: 124, column: 3, scope: !35)
!188 = !DILocation(line: 126, column: 3, scope: !35)
!189 = !DILocation(line: 128, column: 3, scope: !190)
!190 = distinct !DILexicalBlock(scope: !35, file: !3, line: 128, column: 3)
!191 = !DILocation(line: 129, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !190, file: !3, line: 128, column: 3)
!193 = !DILocation(line: 130, column: 15, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 130, column: 3)
!195 = distinct !DILexicalBlock(scope: !35, file: !3, line: 130, column: 3)
!196 = !DILocation(line: 130, column: 14, scope: !194)
!197 = !DILocation(line: 130, column: 3, scope: !195)
!198 = !DILocation(line: 131, column: 33, scope: !194)
!199 = !DILocation(line: 131, column: 5, scope: !194)
!200 = !DILocation(line: 130, column: 37, scope: !194)
!201 = distinct !{!201, !197, !202, !90, !91}
!202 = !DILocation(line: 131, column: 43, scope: !195)
!203 = !DILocation(line: 133, column: 14, scope: !35)
!204 = !DILocation(line: 134, column: 15, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 134, column: 3)
!206 = distinct !DILexicalBlock(scope: !35, file: !3, line: 134, column: 3)
!207 = !DILocation(line: 134, column: 14, scope: !205)
!208 = !DILocation(line: 134, column: 3, scope: !206)
!209 = !DILocation(line: 138, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !35, file: !3, line: 138, column: 3)
!211 = !DILocation(line: 140, column: 12, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !3, line: 140, column: 5)
!213 = distinct !DILexicalBlock(scope: !214, file: !3, line: 138, column: 27)
!214 = distinct !DILexicalBlock(scope: !210, file: !3, line: 138, column: 3)
!215 = !DILocation(line: 135, column: 16, scope: !205)
!216 = !DILocation(line: 135, column: 29, scope: !205)
!217 = !DILocation(line: 135, column: 19, scope: !205)
!218 = !DILocation(line: 134, column: 37, scope: !205)
!219 = distinct !{!219, !208, !220, !90, !91}
!220 = !DILocation(line: 135, column: 39, scope: !206)
!221 = !DILocation(line: 140, column: 30, scope: !222)
!222 = distinct !DILexicalBlock(scope: !212, file: !3, line: 140, column: 5)
!223 = !DILocation(line: 140, column: 5, scope: !212)
!224 = !DILocation(line: 141, column: 24, scope: !222)
!225 = !DILocation(line: 141, column: 14, scope: !222)
!226 = !DILocation(line: 141, column: 11, scope: !222)
!227 = !DILocation(line: 140, column: 51, scope: !222)
!228 = distinct !{!228, !223, !229, !90, !91}
!229 = !DILocation(line: 141, column: 34, scope: !212)
!230 = !DILocation(line: 0, scope: !213)
!231 = !DILocation(line: 142, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !213, file: !3, line: 142, column: 9)
!233 = !DILocation(line: 142, column: 13, scope: !232)
!234 = !DILocation(line: 142, column: 9, scope: !213)
!235 = !DILocation(line: 143, column: 7, scope: !232)
!236 = !DILocation(line: 138, column: 14, scope: !214)
!237 = distinct !{!237, !209, !238, !90, !91}
!238 = !DILocation(line: 144, column: 3, scope: !210)
!239 = !DILocation(line: 145, column: 19, scope: !35)
!240 = !DILocation(line: 147, column: 3, scope: !35)
!241 = !DILocation(line: 148, column: 35, scope: !35)
!242 = !DILocation(line: 148, column: 46, scope: !35)
!243 = !DILocation(line: 148, column: 45, scope: !35)
!244 = !DILocation(line: 148, column: 3, scope: !35)
!245 = !DILocation(line: 149, column: 43, scope: !35)
!246 = !DILocation(line: 149, column: 50, scope: !35)
!247 = !DILocation(line: 149, column: 64, scope: !35)
!248 = !DILocation(line: 149, column: 69, scope: !35)
!249 = !DILocation(line: 149, column: 3, scope: !35)
!250 = !DILocation(line: 150, column: 1, scope: !35)
!251 = distinct !DISubprogram(name: "NewChunk", scope: !3, file: !3, line: 248, type: !252, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!8}
!254 = !{!255}
!255 = !DILocalVariable(name: "t", scope: !251, file: !3, line: 250, type: !8)
!256 = !DILocation(line: 252, column: 23, scope: !251)
!257 = !DILocation(line: 0, scope: !251)
!258 = !DILocation(line: 254, column: 2, scope: !251)
!259 = distinct !DISubprogram(name: "AddInOrder", scope: !3, file: !3, line: 259, type: !260, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !8}
!262 = !{!263, !264, !265}
!263 = !DILocalVariable(name: "t", arg: 1, scope: !259, file: !3, line: 259, type: !8)
!264 = !DILocalVariable(name: "current", scope: !259, file: !3, line: 261, type: !8)
!265 = !DILocalVariable(name: "work", scope: !259, file: !3, line: 262, type: !7)
!266 = !DILocation(line: 0, scope: !259)
!267 = !DILocation(line: 265, column: 12, scope: !259)
!268 = !DILocation(line: 266, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !259, file: !3, line: 266, column: 6)
!270 = !DILocation(line: 266, column: 6, scope: !259)
!271 = !DILocation(line: 267, column: 6, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !3, line: 266, column: 16)
!273 = !DILocation(line: 267, column: 11, scope: !272)
!274 = !DILocation(line: 268, column: 15, scope: !272)
!275 = !DILocation(line: 281, column: 6, scope: !259)
!276 = !DILocation(line: 264, column: 9, scope: !259)
!277 = !DILocation(line: 264, column: 22, scope: !259)
!278 = !DILocation(line: 264, column: 26, scope: !259)
!279 = !DILocation(line: 270, column: 11, scope: !280)
!280 = distinct !DILexicalBlock(scope: !269, file: !3, line: 270, column: 11)
!281 = !DILocation(line: 270, column: 38, scope: !280)
!282 = !DILocation(line: 270, column: 42, scope: !280)
!283 = !DILocation(line: 270, column: 19, scope: !280)
!284 = !DILocation(line: 270, column: 16, scope: !280)
!285 = !DILocation(line: 270, column: 11, scope: !269)
!286 = !DILocation(line: 271, column: 6, scope: !287)
!287 = distinct !DILexicalBlock(scope: !280, file: !3, line: 270, column: 47)
!288 = !DILocation(line: 271, column: 11, scope: !287)
!289 = !DILocation(line: 275, column: 19, scope: !290)
!290 = distinct !DILexicalBlock(scope: !280, file: !3, line: 274, column: 7)
!291 = !DILocation(line: 275, column: 10, scope: !290)
!292 = !DILocation(line: 275, column: 24, scope: !290)
!293 = !DILocation(line: 275, column: 57, scope: !290)
!294 = !DILocation(line: 275, column: 61, scope: !290)
!295 = !DILocation(line: 275, column: 32, scope: !290)
!296 = !DILocation(line: 275, column: 31, scope: !290)
!297 = !DILocation(line: 275, column: 3, scope: !290)
!298 = distinct !{!298, !297, !299, !90, !91}
!299 = !DILocation(line: 276, column: 23, scope: !290)
!300 = !DILocation(line: 277, column: 6, scope: !290)
!301 = !DILocation(line: 277, column: 11, scope: !290)
!302 = !DILocation(line: 278, column: 17, scope: !290)
!303 = !DILocation(line: 281, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !259, file: !3, line: 281, column: 6)
!305 = !DILocation(line: 281, column: 14, scope: !304)
!306 = !DILocation(line: 283, column: 1, scope: !259)
!307 = distinct !DISubprogram(name: "NumberPartition", scope: !3, file: !3, line: 175, type: !308, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !310)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !7, !6, !7}
!310 = !{!311, !312, !313, !314, !315, !316, !317}
!311 = !DILocalVariable(name: "parts", arg: 1, scope: !307, file: !3, line: 175, type: !7)
!312 = !DILocalVariable(name: "assigned_ops", arg: 2, scope: !307, file: !3, line: 175, type: !6)
!313 = !DILocalVariable(name: "distribute", arg: 3, scope: !307, file: !3, line: 175, type: !7)
!314 = !DILocalVariable(name: "i", scope: !307, file: !3, line: 177, type: !7)
!315 = !DILocalVariable(name: "minm", scope: !307, file: !3, line: 177, type: !7)
!316 = !DILocalVariable(name: "t", scope: !307, file: !3, line: 178, type: !8)
!317 = !DILocalVariable(name: "old_t", scope: !307, file: !3, line: 178, type: !8)
!318 = !DILocation(line: 0, scope: !307)
!319 = !DILocation(line: 180, column: 14, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !3, line: 180, column: 3)
!321 = distinct !DILexicalBlock(scope: !307, file: !3, line: 180, column: 3)
!322 = !DILocation(line: 180, column: 3, scope: !321)
!323 = !DILocation(line: 181, column: 21, scope: !320)
!324 = !DILocation(line: 183, column: 7, scope: !307)
!325 = !DILocation(line: 184, column: 3, scope: !307)
!326 = !DILocation(line: 189, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !307, file: !3, line: 184, column: 13)
!328 = !DILocation(line: 185, column: 12, scope: !327)
!329 = !DILocation(line: 186, column: 27, scope: !327)
!330 = !DILocation(line: 186, column: 40, scope: !327)
!331 = !DILocation(line: 186, column: 44, scope: !327)
!332 = !DILocation(line: 186, column: 5, scope: !327)
!333 = !DILocation(line: 186, column: 24, scope: !327)
!334 = !DILocation(line: 188, column: 12, scope: !327)
!335 = distinct !{!335, !325, !336, !90, !91}
!336 = !DILocation(line: 192, column: 3, scope: !307)
!337 = !DILocation(line: 190, column: 14, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 189, column: 21)
!339 = distinct !DILexicalBlock(scope: !327, file: !3, line: 189, column: 9)
!340 = !DILocation(line: 190, column: 21, scope: !338)
!341 = !DILocation(line: 193, column: 1, scope: !307)
!342 = distinct !DISubprogram(name: "MinBucket", scope: !3, file: !3, line: 234, type: !343, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!343 = !DISubroutineType(types: !344)
!344 = !{!7, !6, !7}
!345 = !{!346, !347, !348, !349, !350}
!346 = !DILocalVariable(name: "assigned_ops", arg: 1, scope: !342, file: !3, line: 234, type: !6)
!347 = !DILocalVariable(name: "parts", arg: 2, scope: !342, file: !3, line: 234, type: !7)
!348 = !DILocalVariable(name: "i", scope: !342, file: !3, line: 236, type: !7)
!349 = !DILocalVariable(name: "minm", scope: !342, file: !3, line: 236, type: !7)
!350 = !DILocalVariable(name: "ind", scope: !342, file: !3, line: 236, type: !7)
!351 = !DILocation(line: 0, scope: !342)
!352 = !DILocation(line: 239, column: 13, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !3, line: 239, column: 2)
!354 = distinct !DILexicalBlock(scope: !342, file: !3, line: 239, column: 2)
!355 = !DILocation(line: 239, column: 2, scope: !354)
!356 = !DILocation(line: 238, column: 9, scope: !342)
!357 = !DILocation(line: 240, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !353, file: !3, line: 240, column: 7)
!359 = !DILocation(line: 240, column: 23, scope: !358)
!360 = !DILocation(line: 240, column: 7, scope: !353)
!361 = !DILocation(line: 239, column: 22, scope: !353)
!362 = distinct !{!362, !355, !363, !90, !91}
!363 = !DILocation(line: 242, column: 4, scope: !354)
!364 = !DILocation(line: 244, column: 2, scope: !342)
!365 = distinct !DISubprogram(name: "MaxBucket", scope: !3, file: !3, line: 221, type: !343, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !366)
!366 = !{!367, !368, !369, !370, !371}
!367 = !DILocalVariable(name: "assigned_ops", arg: 1, scope: !365, file: !3, line: 221, type: !6)
!368 = !DILocalVariable(name: "parts", arg: 2, scope: !365, file: !3, line: 221, type: !7)
!369 = !DILocalVariable(name: "i", scope: !365, file: !3, line: 223, type: !7)
!370 = !DILocalVariable(name: "maxm", scope: !365, file: !3, line: 223, type: !7)
!371 = !DILocalVariable(name: "ind", scope: !365, file: !3, line: 223, type: !7)
!372 = !DILocation(line: 0, scope: !365)
!373 = !DILocation(line: 226, column: 13, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 226, column: 2)
!375 = distinct !DILexicalBlock(scope: !365, file: !3, line: 226, column: 2)
!376 = !DILocation(line: 226, column: 2, scope: !375)
!377 = !DILocation(line: 225, column: 9, scope: !365)
!378 = !DILocation(line: 227, column: 7, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !3, line: 227, column: 7)
!380 = !DILocation(line: 227, column: 23, scope: !379)
!381 = !DILocation(line: 227, column: 7, scope: !374)
!382 = !DILocation(line: 226, column: 22, scope: !374)
!383 = distinct !{!383, !376, !384, !90, !91}
!384 = !DILocation(line: 229, column: 4, scope: !375)
!385 = !DILocation(line: 231, column: 2, scope: !365)
!386 = distinct !DISubprogram(name: "GetChunk", scope: !3, file: !3, line: 286, type: !252, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !387)
!387 = !{!388}
!388 = !DILocalVariable(name: "t", scope: !386, file: !3, line: 288, type: !8)
!389 = !DILocation(line: 290, column: 6, scope: !386)
!390 = !DILocation(line: 0, scope: !386)
!391 = !DILocation(line: 291, column: 6, scope: !392)
!392 = distinct !DILexicalBlock(scope: !386, file: !3, line: 291, column: 6)
!393 = !DILocation(line: 291, column: 6, scope: !386)
!394 = !DILocation(line: 292, column: 21, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !3, line: 291, column: 9)
!396 = !DILocation(line: 292, column: 16, scope: !395)
!397 = !DILocation(line: 293, column: 13, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !3, line: 293, column: 8)
!399 = !DILocation(line: 293, column: 10, scope: !398)
!400 = !DILocation(line: 293, column: 8, scope: !395)
!401 = !DILocation(line: 294, column: 18, scope: !398)
!402 = !DILocation(line: 294, column: 6, scope: !398)
!403 = !DILocation(line: 297, column: 2, scope: !386)
!404 = distinct !DISubprogram(name: "Divide", scope: !3, file: !3, line: 195, type: !405, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{!7, !8}
!407 = !{!408, !409, !410, !411, !412, !413}
!408 = !DILocalVariable(name: "root", arg: 1, scope: !404, file: !3, line: 195, type: !8)
!409 = !DILocalVariable(name: "i", scope: !404, file: !3, line: 197, type: !7)
!410 = !DILocalVariable(name: "first", scope: !404, file: !3, line: 197, type: !7)
!411 = !DILocalVariable(name: "first_in_super", scope: !404, file: !3, line: 197, type: !7)
!412 = !DILocalVariable(name: "change", scope: !404, file: !3, line: 198, type: !7)
!413 = !DILocalVariable(name: "t2", scope: !404, file: !3, line: 199, type: !8)
!414 = !DILocation(line: 0, scope: !404)
!415 = !DILocation(line: 201, column: 26, scope: !404)
!416 = !DILocation(line: 203, column: 3, scope: !404)
!417 = !DILocation(line: 202, column: 3, scope: !404)
!418 = !DILocation(line: 202, column: 10, scope: !404)
!419 = !DILocation(line: 202, column: 36, scope: !404)
!420 = !DILocation(line: 202, column: 39, scope: !404)
!421 = distinct !{!421, !417, !422, !90, !91}
!422 = !DILocation(line: 205, column: 3, scope: !404)
!423 = !DILocation(line: 208, column: 41, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 208, column: 5)
!425 = distinct !DILexicalBlock(scope: !404, file: !3, line: 208, column: 5)
!426 = !DILocation(line: 208, column: 40, scope: !424)
!427 = !DILocation(line: 208, column: 5, scope: !425)
!428 = !DILocation(line: 209, column: 12, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !3, line: 208, column: 75)
!430 = !DILocation(line: 210, column: 18, scope: !429)
!431 = !DILocation(line: 210, column: 26, scope: !429)
!432 = !DILocation(line: 210, column: 11, scope: !429)
!433 = !DILocation(line: 210, column: 16, scope: !429)
!434 = !DILocation(line: 211, column: 17, scope: !429)
!435 = !DILocation(line: 212, column: 7, scope: !429)
!436 = !DILocation(line: 208, column: 72, scope: !424)
!437 = distinct !{!437, !427, !438, !90, !91}
!438 = !DILocation(line: 214, column: 5, scope: !425)
!439 = !DILocation(line: 215, column: 5, scope: !404)
!440 = !DILocation(line: 217, column: 3, scope: !404)
!441 = !DISubprogram(name: "BlDepth", scope: !39, file: !39, line: 186, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!7, !7}
!444 = !{}
!445 = !DISubprogram(name: "SortByKey", scope: !39, file: !39, line: 187, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !444)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !7, !6, !6}
!448 = distinct !DISubprogram(name: "MarkSubtreeAsDomain", scope: !3, file: !3, line: 153, type: !449, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !6, !7}
!451 = !{!452, !453, !454, !455, !456}
!452 = !DILocalVariable(name: "domain", arg: 1, scope: !448, file: !3, line: 153, type: !6)
!453 = !DILocalVariable(name: "root", arg: 2, scope: !448, file: !3, line: 153, type: !7)
!454 = !DILocalVariable(name: "i", scope: !448, file: !3, line: 155, type: !7)
!455 = !DILocalVariable(name: "first", scope: !448, file: !3, line: 155, type: !7)
!456 = !DILocalVariable(name: "root_super", scope: !448, file: !3, line: 155, type: !7)
!457 = !DILocation(line: 0, scope: !448)
!458 = !DILocation(line: 159, column: 10, scope: !448)
!459 = !DILocation(line: 159, column: 47, scope: !448)
!460 = !DILocation(line: 159, column: 31, scope: !448)
!461 = !DILocation(line: 159, column: 28, scope: !448)
!462 = !DILocation(line: 159, column: 3, scope: !448)
!463 = !DILocation(line: 163, column: 18, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 163, column: 3)
!465 = distinct !DILexicalBlock(scope: !448, file: !3, line: 163, column: 3)
!466 = !DILocation(line: 163, column: 3, scope: !465)
!467 = !DILocation(line: 160, column: 13, scope: !448)
!468 = distinct !{!468, !462, !469, !90, !91}
!469 = !DILocation(line: 160, column: 36, scope: !448)
!470 = !DILocation(line: 164, column: 5, scope: !464)
!471 = !DILocation(line: 164, column: 15, scope: !464)
!472 = !DILocation(line: 163, column: 27, scope: !464)
!473 = distinct !{!473, !466, !474, !90, !91}
!474 = !DILocation(line: 164, column: 17, scope: !465)
!475 = !DILocation(line: 168, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !448, file: !3, line: 168, column: 7)
!477 = !DILocation(line: 168, column: 7, scope: !448)
!478 = !DILocation(line: 170, column: 35, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !3, line: 170, column: 3)
!480 = distinct !DILexicalBlock(scope: !448, file: !3, line: 170, column: 3)
!481 = !DILocation(line: 170, column: 23, scope: !479)
!482 = !DILocation(line: 170, column: 3, scope: !480)
!483 = !DILocation(line: 171, column: 5, scope: !479)
!484 = !DILocation(line: 171, column: 15, scope: !479)
!485 = !DILocation(line: 170, column: 54, scope: !479)
!486 = !DILocation(line: 170, column: 34, scope: !479)
!487 = distinct !{!487, !482, !488, !90, !91}
!488 = !DILocation(line: 171, column: 17, scope: !480)
!489 = !DILocation(line: 172, column: 1, scope: !448)
