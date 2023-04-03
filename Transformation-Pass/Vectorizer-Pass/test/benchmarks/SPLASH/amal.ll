; ModuleID = 'amal.c'
source_filename = "amal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMatrix = type { i64, i64, ptr, ptr, ptr, ptr }

@tree_firstchild = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@tree_sibling = dso_local local_unnamed_addr global ptr null, align 8, !dbg !15
@tree_original_firstchild = dso_local local_unnamed_addr global ptr null, align 8, !dbg !17
@tree_original_sibling = dso_local local_unnamed_addr global ptr null, align 8, !dbg !19
@next_in_super = dso_local local_unnamed_addr global ptr null, align 8, !dbg !9
@member_of = dso_local local_unnamed_addr global ptr null, align 8, !dbg !11
@super_parent = dso_local local_unnamed_addr global ptr null, align 8, !dbg !13
@ops_added = dso_local local_unnamed_addr global i64 0, align 8, !dbg !21
@work_tree = external local_unnamed_addr global ptr, align 8
@PERM = external local_unnamed_addr global ptr, align 8
@INVP = external local_unnamed_addr global ptr, align 8
@firstchild = external local_unnamed_addr global ptr, align 8
@child = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"%ld/%ld supers before/after\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"%.0f/%.0f (%.2f) ops before/after amalgamation\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Model says %ld ops added, really %.0f\0A\00", align 1
@crit = dso_local local_unnamed_addr global ptr null, align 8, !dbg !23
@str = private unnamed_addr constant [24 x i8] c"Not a valid permutation\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @OpsFromSuper(i64 noundef %size, i64 noundef %nz) local_unnamed_addr #0 !dbg !33 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !37, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i64 %nz, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i64 0, metadata !39, metadata !DIExpression()), !dbg !40
  %add = add nsw i64 %size, 1, !dbg !41
  %mul = mul nsw i64 %add, %size, !dbg !42
  %mul1 = shl nsw i64 %size, 1, !dbg !43
  %add2 = or i64 %mul1, 1, !dbg !44
  %mul3 = mul nsw i64 %mul, %add2, !dbg !45
  %div = sdiv i64 %mul3, 6, !dbg !46
  call void @llvm.dbg.value(metadata i64 %div, metadata !39, metadata !DIExpression()), !dbg !40
  %mul5 = mul nsw i64 %size, %size, !dbg !47
  %sub = sub nsw i64 %nz, %size, !dbg !48
  %mul6 = mul nsw i64 %mul5, %sub, !dbg !49
  %add7 = add nsw i64 %div, %mul6, !dbg !50
  call void @llvm.dbg.value(metadata i64 %add7, metadata !39, metadata !DIExpression()), !dbg !40
  %mul10 = mul nsw i64 %sub, %mul1, !dbg !51
  %add12 = add nsw i64 %sub, 1, !dbg !52
  %mul13 = mul nsw i64 %mul10, %add12, !dbg !53
  %div14 = sdiv i64 %mul13, 2, !dbg !54
  %add15 = add nsw i64 %add7, %div14, !dbg !55
  call void @llvm.dbg.value(metadata i64 %add15, metadata !39, metadata !DIExpression()), !dbg !40
  ret i64 %add15, !dbg !56
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @CountSupers(i64 noundef %cols, ptr nocapture noundef readonly %node) local_unnamed_addr #3 !dbg !57 {
entry:
  call void @llvm.dbg.value(metadata i64 %cols, metadata !61, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata ptr %node, metadata !62, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i64 0, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i64 0, metadata !63, metadata !DIExpression()), !dbg !65
  %cmp4 = icmp sgt i64 %cols, 0, !dbg !66
  br i1 %cmp4, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %entry, %for.body
  %supers.06 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  %i.05 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %supers.06, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i64 %i.05, metadata !63, metadata !DIExpression()), !dbg !65
  %inc = add nuw nsw i64 %supers.06, 1, !dbg !70
  call void @llvm.dbg.value(metadata i64 %inc, metadata !64, metadata !DIExpression()), !dbg !65
  %arrayidx = getelementptr inbounds i64, ptr %node, i64 %i.05, !dbg !71
  %0 = load i64, ptr %arrayidx, align 8, !dbg !71
  %add = add nsw i64 %0, %i.05, !dbg !72
  call void @llvm.dbg.value(metadata i64 %add, metadata !63, metadata !DIExpression()), !dbg !65
  %cmp = icmp slt i64 %add, %cols, !dbg !66
  br i1 %cmp, label %for.body, label %for.end, !dbg !69, !llvm.loop !73

for.end:                                          ; preds = %for.body, %entry
  %supers.0.lcssa = phi i64 [ 0, %entry ], [ %inc, %for.body ], !dbg !65
  ret i64 %supers.0.lcssa, !dbg !77
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Amalgamate2(i64 noundef %join, ptr noundef byval(%struct.SMatrix) align 8 %M, ptr noundef %T, ptr noundef %nz, ptr nocapture noundef %node, ptr noundef %domain, i64 noundef %target_size) local_unnamed_addr #4 !dbg !78 {
entry:
  %counter = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %join, metadata !92, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata ptr %M, metadata !93, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata ptr %T, metadata !94, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata ptr %nz, metadata !95, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata ptr %node, metadata !96, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata ptr %domain, metadata !97, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i64 %target_size, metadata !98, metadata !DIExpression()), !dbg !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %counter) #16, !dbg !107
  %0 = load i64, ptr %M, align 8, !dbg !108
  %add = shl i64 %0, 3, !dbg !109
  %mul = add i64 %add, 8, !dbg !109
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #17, !dbg !110
  store ptr %call, ptr @tree_firstchild, align 8, !dbg !111
  %call4 = tail call noalias ptr @malloc(i64 noundef %mul) #17, !dbg !112
  store ptr %call4, ptr @tree_sibling, align 8, !dbg !113
  %call8 = tail call noalias ptr @malloc(i64 noundef %mul) #17, !dbg !114
  store ptr %call8, ptr @tree_original_firstchild, align 8, !dbg !115
  %call12 = tail call noalias ptr @malloc(i64 noundef %mul) #17, !dbg !116
  store ptr %call12, ptr @tree_original_sibling, align 8, !dbg !117
  %call16 = tail call noalias ptr @malloc(i64 noundef %mul) #17, !dbg !118
  store ptr %call16, ptr @next_in_super, align 8, !dbg !119
  %call20 = tail call noalias ptr @malloc(i64 noundef %mul) #17, !dbg !120
  store ptr %call20, ptr @member_of, align 8, !dbg !121
  %call24 = tail call noalias ptr @malloc(i64 noundef %mul) #17, !dbg !122
  store ptr %call24, ptr @super_parent, align 8, !dbg !123
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression()), !dbg !105
  %cmp.not164 = icmp slt i64 %0, 0, !dbg !124
  br i1 %cmp.not164, label %for.end42, label %for.body.preheader, !dbg !127

for.body.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression()), !dbg !105
  store i64 -1, ptr %call, align 8, !dbg !128
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !105
  %1 = load i64, ptr %M, align 8, !dbg !129
  %cmp.not.not196 = icmp sgt i64 %1, 0, !dbg !124
  br i1 %cmp.not.not196, label %for.body.for.body_crit_edge, label %for.cond26.preheader, !dbg !127, !llvm.loop !130

for.cond26.preheader:                             ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %.lcssa195 = phi i64 [ %1, %for.body.preheader ], [ %2, %for.body.for.body_crit_edge ], !dbg !129
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression()), !dbg !105
  %cmp28166 = icmp sgt i64 %.lcssa195, 0, !dbg !132
  br i1 %cmp28166, label %for.body29, label %for.end42, !dbg !135

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %i.0165197 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0165197, metadata !99, metadata !DIExpression()), !dbg !105
  %inc = add nuw nsw i64 %i.0165197, 1, !dbg !136
  call void @llvm.dbg.value(metadata i64 %inc, metadata !99, metadata !DIExpression()), !dbg !105
  %.pre = load ptr, ptr @tree_firstchild, align 8, !dbg !137
  %arrayidx = getelementptr inbounds i64, ptr %.pre, i64 %inc, !dbg !137
  store i64 -1, ptr %arrayidx, align 8, !dbg !128
  call void @llvm.dbg.value(metadata i64 %inc, metadata !99, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !105
  %2 = load i64, ptr %M, align 8, !dbg !129
  %cmp.not.not = icmp slt i64 %inc, %2, !dbg !124
  br i1 %cmp.not.not, label %for.body.for.body_crit_edge, label %for.cond26.preheader, !dbg !127, !llvm.loop !130

for.body29:                                       ; preds = %for.cond26.preheader, %for.body29
  %i.1167 = phi i64 [ %add41, %for.body29 ], [ 0, %for.cond26.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1167, metadata !99, metadata !DIExpression()), !dbg !105
  %arrayidx30 = getelementptr inbounds i64, ptr %node, i64 %i.1167, !dbg !138
  %3 = load i64, ptr %arrayidx30, align 8, !dbg !138
  %add31 = add i64 %i.1167, -1, !dbg !140
  %sub = add i64 %add31, %3, !dbg !141
  %arrayidx32 = getelementptr inbounds i64, ptr %T, i64 %sub, !dbg !142
  %4 = load i64, ptr %arrayidx32, align 8, !dbg !142
  %5 = load ptr, ptr @super_parent, align 8, !dbg !143
  %arrayidx33 = getelementptr inbounds i64, ptr %5, i64 %i.1167, !dbg !143
  store i64 %4, ptr %arrayidx33, align 8, !dbg !144
  %6 = load ptr, ptr @tree_firstchild, align 8, !dbg !145
  %7 = load ptr, ptr @super_parent, align 8, !dbg !146
  %arrayidx34 = getelementptr inbounds i64, ptr %7, i64 %i.1167, !dbg !146
  %8 = load i64, ptr %arrayidx34, align 8, !dbg !146
  %arrayidx35 = getelementptr inbounds i64, ptr %6, i64 %8, !dbg !145
  %9 = load i64, ptr %arrayidx35, align 8, !dbg !145
  %10 = load ptr, ptr @tree_sibling, align 8, !dbg !147
  %arrayidx36 = getelementptr inbounds i64, ptr %10, i64 %i.1167, !dbg !147
  store i64 %9, ptr %arrayidx36, align 8, !dbg !148
  %11 = load ptr, ptr @tree_firstchild, align 8, !dbg !149
  %12 = load ptr, ptr @super_parent, align 8, !dbg !150
  %arrayidx37 = getelementptr inbounds i64, ptr %12, i64 %i.1167, !dbg !150
  %13 = load i64, ptr %arrayidx37, align 8, !dbg !150
  %arrayidx38 = getelementptr inbounds i64, ptr %11, i64 %13, !dbg !149
  store i64 %i.1167, ptr %arrayidx38, align 8, !dbg !151
  %14 = load i64, ptr %arrayidx30, align 8, !dbg !152
  %add41 = add nsw i64 %14, %i.1167, !dbg !153
  call void @llvm.dbg.value(metadata i64 %add41, metadata !99, metadata !DIExpression()), !dbg !105
  %15 = load i64, ptr %M, align 8, !dbg !154
  %cmp28 = icmp slt i64 %add41, %15, !dbg !132
  br i1 %cmp28, label %for.body29, label %for.end42, !dbg !135, !llvm.loop !155

for.end42:                                        ; preds = %for.body29, %entry, %for.cond26.preheader
  %.lcssa163 = phi i64 [ %.lcssa195, %for.cond26.preheader ], [ %0, %entry ], [ %15, %for.body29 ], !dbg !154
  %16 = load ptr, ptr @super_parent, align 8, !dbg !157
  %arrayidx45 = getelementptr inbounds i64, ptr %16, i64 %.lcssa163, !dbg !157
  store i64 %.lcssa163, ptr %arrayidx45, align 8, !dbg !158
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression()), !dbg !105
  %17 = load i64, ptr %M, align 8, !dbg !159
  %cmp48.not168 = icmp slt i64 %17, 0, !dbg !162
  br i1 %cmp48.not168, label %for.end79, label %for.body49, !dbg !163

for.cond57.preheader:                             ; preds = %for.body49
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression()), !dbg !105
  %cmp59174 = icmp sgt i64 %24, 0, !dbg !164
  br i1 %cmp59174, label %for.cond61.preheader, label %for.end79, !dbg !167

for.body49:                                       ; preds = %for.end42, %for.body49
  %i.2169 = phi i64 [ %inc55, %for.body49 ], [ 0, %for.end42 ]
  call void @llvm.dbg.value(metadata i64 %i.2169, metadata !99, metadata !DIExpression()), !dbg !105
  %18 = load ptr, ptr @tree_firstchild, align 8, !dbg !168
  %arrayidx50 = getelementptr inbounds i64, ptr %18, i64 %i.2169, !dbg !168
  %19 = load i64, ptr %arrayidx50, align 8, !dbg !168
  %20 = load ptr, ptr @tree_original_firstchild, align 8, !dbg !170
  %arrayidx51 = getelementptr inbounds i64, ptr %20, i64 %i.2169, !dbg !170
  store i64 %19, ptr %arrayidx51, align 8, !dbg !171
  %21 = load ptr, ptr @tree_sibling, align 8, !dbg !172
  %arrayidx52 = getelementptr inbounds i64, ptr %21, i64 %i.2169, !dbg !172
  %22 = load i64, ptr %arrayidx52, align 8, !dbg !172
  %23 = load ptr, ptr @tree_original_sibling, align 8, !dbg !173
  %arrayidx53 = getelementptr inbounds i64, ptr %23, i64 %i.2169, !dbg !173
  store i64 %22, ptr %arrayidx53, align 8, !dbg !174
  %inc55 = add nuw nsw i64 %i.2169, 1, !dbg !175
  call void @llvm.dbg.value(metadata i64 %inc55, metadata !99, metadata !DIExpression()), !dbg !105
  %24 = load i64, ptr %M, align 8, !dbg !159
  %cmp48.not.not = icmp slt i64 %i.2169, %24, !dbg !162
  br i1 %cmp48.not.not, label %for.body49, label %for.cond57.preheader, !dbg !163, !llvm.loop !176

for.cond61.preheader:                             ; preds = %for.cond57.preheader, %for.end71
  %i.3175 = phi i64 [ %add78, %for.end71 ], [ 0, %for.cond57.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.3175, metadata !99, metadata !DIExpression()), !dbg !105
  %arrayidx62 = getelementptr inbounds i64, ptr %node, i64 %i.3175
  call void @llvm.dbg.value(metadata i64 %i.3175, metadata !100, metadata !DIExpression()), !dbg !105
  %25 = load i64, ptr %arrayidx62, align 8, !dbg !178
  %add63170 = add nsw i64 %25, %i.3175, !dbg !182
  %cmp64171 = icmp sgt i64 %25, 0, !dbg !183
  br i1 %cmp64171, label %for.body65, label %for.end71, !dbg !184

for.body65:                                       ; preds = %for.cond61.preheader, %for.body65
  %j.0172 = phi i64 [ %add66, %for.body65 ], [ %i.3175, %for.cond61.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.0172, metadata !100, metadata !DIExpression()), !dbg !105
  %add66 = add nsw i64 %j.0172, 1, !dbg !185
  %26 = load ptr, ptr @next_in_super, align 8, !dbg !187
  %arrayidx67 = getelementptr inbounds i64, ptr %26, i64 %j.0172, !dbg !187
  store i64 %add66, ptr %arrayidx67, align 8, !dbg !188
  %27 = load ptr, ptr @member_of, align 8, !dbg !189
  %arrayidx68 = getelementptr inbounds i64, ptr %27, i64 %j.0172, !dbg !189
  store i64 %i.3175, ptr %arrayidx68, align 8, !dbg !190
  call void @llvm.dbg.value(metadata i64 %add66, metadata !100, metadata !DIExpression()), !dbg !105
  %28 = load i64, ptr %arrayidx62, align 8, !dbg !178
  %add63 = add nsw i64 %28, %i.3175, !dbg !182
  %cmp64 = icmp slt i64 %add66, %add63, !dbg !183
  br i1 %cmp64, label %for.body65, label %for.end71, !dbg !184, !llvm.loop !191

for.end71:                                        ; preds = %for.body65, %for.cond61.preheader
  %add63.lcssa = phi i64 [ %add63170, %for.cond61.preheader ], [ %add63, %for.body65 ], !dbg !182
  %29 = load ptr, ptr @next_in_super, align 8, !dbg !193
  %sub74 = add nsw i64 %add63.lcssa, -1, !dbg !194
  %arrayidx75 = getelementptr inbounds i64, ptr %29, i64 %sub74, !dbg !193
  store i64 -1, ptr %arrayidx75, align 8, !dbg !195
  %30 = load i64, ptr %arrayidx62, align 8, !dbg !196
  %add78 = add nsw i64 %30, %i.3175, !dbg !197
  call void @llvm.dbg.value(metadata i64 %add78, metadata !99, metadata !DIExpression()), !dbg !105
  %31 = load i64, ptr %M, align 8, !dbg !198
  %cmp59 = icmp slt i64 %add78, %31, !dbg !164
  br i1 %cmp59, label %for.cond61.preheader, label %for.end79, !dbg !167, !llvm.loop !199

for.end79:                                        ; preds = %for.end71, %for.end42, %for.cond57.preheader
  %.lcssa = phi i64 [ %24, %for.cond57.preheader ], [ %17, %for.end42 ], [ %31, %for.end71 ], !dbg !198
  %32 = load ptr, ptr @member_of, align 8, !dbg !201
  %arrayidx82 = getelementptr inbounds i64, ptr %32, i64 %.lcssa, !dbg !201
  store i64 %.lcssa, ptr %arrayidx82, align 8, !dbg !202
  %33 = load i64, ptr %M, align 8, !dbg !203
  %call84 = tail call i64 @CountSupers(i64 noundef %33, ptr noundef %node), !dbg !204
  call void @llvm.dbg.value(metadata i64 %call84, metadata !102, metadata !DIExpression()), !dbg !105
  store i64 0, ptr @ops_added, align 8, !dbg !205
  %34 = load ptr, ptr @work_tree, align 8, !dbg !206
  %arrayidx86 = getelementptr inbounds double, ptr %34, i64 %33, !dbg !206
  %35 = load double, ptr %arrayidx86, align 8, !dbg !206
  call void @llvm.dbg.value(metadata double %35, metadata !104, metadata !DIExpression()), !dbg !105
  %36 = load ptr, ptr @tree_original_firstchild, align 8, !dbg !207
  %arrayidx88 = getelementptr inbounds i64, ptr %36, i64 %33, !dbg !207
  call void @llvm.dbg.value(metadata i64 undef, metadata !99, metadata !DIExpression()), !dbg !105
  %i.4178 = load i64, ptr %arrayidx88, align 8, !dbg !105
  call void @llvm.dbg.value(metadata i64 %i.4178, metadata !99, metadata !DIExpression()), !dbg !105
  %cmp89.not179 = icmp eq i64 %i.4178, -1, !dbg !208
  br i1 %cmp89.not179, label %while.end, label %while.body, !dbg !209

while.body:                                       ; preds = %for.end79, %while.body
  %i.4180 = phi i64 [ %i.4, %while.body ], [ %i.4178, %for.end79 ]
  tail call void @ConsiderMerge(i64 noundef %join, i64 noundef %i.4180, ptr noundef nonnull byval(%struct.SMatrix) align 8 %M, ptr noundef %nz, ptr noundef %node, ptr noundef %domain, i64 noundef %target_size, i64 noundef 1), !dbg !210
  %37 = load ptr, ptr @tree_original_sibling, align 8, !dbg !212
  %arrayidx90 = getelementptr inbounds i64, ptr %37, i64 %i.4180, !dbg !212
  call void @llvm.dbg.value(metadata i64 undef, metadata !99, metadata !DIExpression()), !dbg !105
  %i.4 = load i64, ptr %arrayidx90, align 8, !dbg !105
  call void @llvm.dbg.value(metadata i64 %i.4, metadata !99, metadata !DIExpression()), !dbg !105
  %cmp89.not = icmp eq i64 %i.4, -1, !dbg !208
  br i1 %cmp89.not, label %while.end, label %while.body, !dbg !209, !llvm.loop !213

while.end:                                        ; preds = %while.body, %for.end79
  call void @llvm.dbg.value(metadata i64 %33, metadata !101, metadata !DIExpression()), !dbg !105
  store i64 %33, ptr %counter, align 8, !dbg !215
  %38 = load ptr, ptr @PERM, align 8, !dbg !216
  call void @llvm.dbg.value(metadata ptr %counter, metadata !101, metadata !DIExpression(DW_OP_deref)), !dbg !105
  call void @ReorderMatrix(ptr noundef nonnull byval(%struct.SMatrix) align 8 %M, i64 noundef %33, ptr noundef %node, ptr noundef nonnull %counter, ptr noundef %38), !dbg !217
  %39 = load i64, ptr %M, align 8, !dbg !218
  %40 = load ptr, ptr @PERM, align 8, !dbg !219
  %41 = load ptr, ptr @INVP, align 8, !dbg !220
  tail call void @InvertPerm(i64 noundef %39, ptr noundef %40, ptr noundef %41), !dbg !221
  %42 = load ptr, ptr @PERM, align 8, !dbg !222
  tail call void @FixNodeNZAndT(ptr noundef nonnull byval(%struct.SMatrix) align 8 %M, ptr noundef %42, ptr noundef %node, ptr noundef %nz, ptr noundef %T), !dbg !223
  %43 = load ptr, ptr @tree_firstchild, align 8, !dbg !224
  tail call void @free(ptr noundef %43) #16, !dbg !225
  %44 = load ptr, ptr @tree_sibling, align 8, !dbg !226
  tail call void @free(ptr noundef %44) #16, !dbg !227
  %45 = load ptr, ptr @tree_original_firstchild, align 8, !dbg !228
  tail call void @free(ptr noundef %45) #16, !dbg !229
  %46 = load ptr, ptr @tree_original_sibling, align 8, !dbg !230
  tail call void @free(ptr noundef %46) #16, !dbg !231
  %47 = load ptr, ptr @next_in_super, align 8, !dbg !232
  tail call void @free(ptr noundef %47) #16, !dbg !233
  %48 = load ptr, ptr @member_of, align 8, !dbg !234
  tail call void @free(ptr noundef %48) #16, !dbg !235
  %49 = load ptr, ptr @super_parent, align 8, !dbg !236
  tail call void @free(ptr noundef %49) #16, !dbg !237
  %50 = load i64, ptr %M, align 8, !dbg !238
  %51 = load ptr, ptr @firstchild, align 8, !dbg !239
  %52 = load ptr, ptr @child, align 8, !dbg !240
  tail call void @ParentToChild(ptr noundef %T, i64 noundef %50, ptr noundef %51, ptr noundef %52) #16, !dbg !241
  %53 = load ptr, ptr @work_tree, align 8, !dbg !242
  tail call void @ComputeWorkTree(ptr noundef nonnull byval(%struct.SMatrix) align 8 %M, ptr noundef %nz, ptr noundef %53) #16, !dbg !243
  %54 = load i64, ptr %M, align 8, !dbg !244
  %call96 = tail call i64 @CountSupers(i64 noundef %54, ptr noundef %node), !dbg !245
  call void @llvm.dbg.value(metadata i64 %call96, metadata !103, metadata !DIExpression()), !dbg !105
  %call97 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef %call84, i64 noundef %call96), !dbg !246
  %55 = load ptr, ptr @work_tree, align 8, !dbg !247
  %56 = load i64, ptr %M, align 8, !dbg !248
  %arrayidx99 = getelementptr inbounds double, ptr %55, i64 %56, !dbg !247
  %57 = load double, ptr %arrayidx99, align 8, !dbg !247
  %div = fdiv double %57, %35, !dbg !249
  %call102 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, double noundef %35, double noundef %57, double noundef %div), !dbg !250
  %58 = load i64, ptr @ops_added, align 8, !dbg !251
  %conv = sitofp i64 %58 to double, !dbg !251
  %59 = load ptr, ptr @work_tree, align 8, !dbg !253
  %60 = load i64, ptr %M, align 8, !dbg !254
  %arrayidx104 = getelementptr inbounds double, ptr %59, i64 %60, !dbg !253
  %61 = load double, ptr %arrayidx104, align 8, !dbg !253
  %sub105 = fsub double %61, %35, !dbg !255
  %cmp106 = fcmp une double %sub105, %conv, !dbg !256
  br i1 %cmp106, label %if.then, label %if.end, !dbg !257

if.then:                                          ; preds = %while.end
  %call111 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, i64 noundef %58, double noundef %sub105), !dbg !258
  br label %if.end, !dbg !258

if.end:                                           ; preds = %if.then, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %counter) #16, !dbg !259
  ret void, !dbg !259
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @ConsiderMerge(i64 noundef %join, i64 noundef %super, ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M, ptr nocapture noundef %nz, ptr nocapture noundef %node, ptr noundef %domain, i64 noundef %target_size, i64 noundef %traversal_order) local_unnamed_addr #4 !dbg !260 {
entry:
  %time_before = alloca double, align 8
  %time_after = alloca double, align 8
  %dummy = alloca double, align 8
  call void @llvm.dbg.value(metadata i64 %join, metadata !264, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %super, metadata !265, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata ptr %M, metadata !266, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata ptr %nz, metadata !267, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata ptr %node, metadata !268, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata ptr %domain, metadata !269, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %target_size, metadata !270, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %traversal_order, metadata !271, metadata !DIExpression()), !dbg !285
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %time_before) #16, !dbg !287
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %time_after) #16, !dbg !287
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy) #16, !dbg !287
  %0 = load ptr, ptr @member_of, align 8, !dbg !288
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 %super, !dbg !288
  %1 = load i64, ptr %arrayidx, align 8, !dbg !288
  call void @llvm.dbg.value(metadata i64 %1, metadata !265, metadata !DIExpression()), !dbg !285
  %2 = load i64, ptr %M, align 8
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !285
  %3 = load ptr, ptr @super_parent, align 8, !dbg !289
  %arrayidx1225 = getelementptr inbounds i64, ptr %3, i64 %1, !dbg !289
  %4 = load i64, ptr %arrayidx1225, align 8, !dbg !289
  %cmp226 = icmp eq i64 %4, %2, !dbg !294
  br i1 %cmp226, label %for.end, label %if.end.lr.ph, !dbg !295

if.end.lr.ph:                                     ; preds = %entry
  %arrayidx3 = getelementptr inbounds i64, ptr %node, i64 %1
  %arrayidx4 = getelementptr inbounds i64, ptr %nz, i64 %1
  %tobool.not = icmp eq ptr %domain, null
  %arrayidx71 = getelementptr inbounds i64, ptr %domain, i64 %1
  br label %if.end, !dbg !295

if.end:                                           ; preds = %if.end.lr.ph, %land.rhs
  %5 = phi i64 [ %4, %if.end.lr.ph ], [ %33, %land.rhs ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !273, metadata !DIExpression()), !dbg !285
  %6 = load i64, ptr %arrayidx3, align 8, !dbg !296
  %7 = load i64, ptr %arrayidx4, align 8, !dbg !297
  %call = call i64 @OpsFromSuper(i64 noundef %6, i64 noundef %7), !dbg !298
  call void @llvm.dbg.value(metadata i64 %call, metadata !274, metadata !DIExpression()), !dbg !285
  %arrayidx6 = getelementptr inbounds i64, ptr %nz, i64 %5, !dbg !299
  %8 = load i64, ptr %arrayidx6, align 8, !dbg !299
  %add = add nsw i64 %8, %6, !dbg !300
  %call8 = call i64 @OpsFromSuper(i64 noundef %6, i64 noundef %add), !dbg !301
  call void @llvm.dbg.value(metadata i64 %call8, metadata !275, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !280, metadata !DIExpression()), !dbg !285
  store double 0.000000e+00, ptr %time_before, align 8, !dbg !302
  call void @llvm.dbg.value(metadata ptr %time_before, metadata !280, metadata !DIExpression(DW_OP_deref)), !dbg !285
  call void @llvm.dbg.value(metadata ptr %dummy, metadata !282, metadata !DIExpression(DW_OP_deref)), !dbg !285
  call void @PDIV(i64 noundef %6, i64 noundef %7, ptr noundef nonnull %dummy, ptr noundef nonnull %dummy, ptr noundef nonnull %time_before) #16, !dbg !303
  %9 = load i64, ptr %arrayidx3, align 8, !dbg !304
  %10 = load i64, ptr %arrayidx4, align 8, !dbg !305
  %sub = sub nsw i64 %10, %9, !dbg !306
  call void @PMOD(i64 noundef %9, i64 noundef %sub, i64 noundef %sub, ptr noundef nonnull %dummy, ptr noundef nonnull %dummy, ptr noundef nonnull %time_before) #16, !dbg !307
  %11 = load i64, ptr %arrayidx4, align 8, !dbg !308
  %12 = load i64, ptr %arrayidx3, align 8, !dbg !309
  %sub19 = sub nsw i64 %11, %12, !dbg !310
  call void @PADD(i64 noundef %sub19, i64 noundef %sub19, ptr noundef nonnull %dummy, ptr noundef nonnull %time_before) #16, !dbg !311
  %arrayidx23 = getelementptr inbounds i64, ptr %node, i64 %5, !dbg !312
  %13 = load i64, ptr %arrayidx23, align 8, !dbg !312
  %14 = load i64, ptr %arrayidx6, align 8, !dbg !313
  call void @PDIV(i64 noundef %13, i64 noundef %14, ptr noundef nonnull %dummy, ptr noundef nonnull %dummy, ptr noundef nonnull %time_before) #16, !dbg !314
  %15 = load i64, ptr %arrayidx23, align 8, !dbg !315
  %16 = load i64, ptr %arrayidx6, align 8, !dbg !316
  %sub28 = sub nsw i64 %16, %15, !dbg !317
  call void @PMOD(i64 noundef %15, i64 noundef %sub28, i64 noundef %sub28, ptr noundef nonnull %dummy, ptr noundef nonnull %dummy, ptr noundef nonnull %time_before) #16, !dbg !318
  %17 = load i64, ptr %arrayidx6, align 8, !dbg !319
  %18 = load i64, ptr %arrayidx23, align 8, !dbg !320
  %sub34 = sub nsw i64 %17, %18, !dbg !321
  call void @PADD(i64 noundef %sub34, i64 noundef %sub34, ptr noundef nonnull %dummy, ptr noundef nonnull %time_before) #16, !dbg !322
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !281, metadata !DIExpression()), !dbg !285
  store double 0.000000e+00, ptr %time_after, align 8, !dbg !323
  %19 = load i64, ptr %arrayidx3, align 8, !dbg !324
  %20 = load i64, ptr %arrayidx23, align 8, !dbg !325
  %add40 = add nsw i64 %20, %19, !dbg !326
  %21 = load i64, ptr %arrayidx6, align 8, !dbg !327
  %add43 = add nsw i64 %21, %19, !dbg !328
  call void @llvm.dbg.value(metadata ptr %time_after, metadata !281, metadata !DIExpression(DW_OP_deref)), !dbg !285
  call void @PDIV(i64 noundef %add40, i64 noundef %add43, ptr noundef nonnull %dummy, ptr noundef nonnull %dummy, ptr noundef nonnull %time_after) #16, !dbg !329
  %22 = load i64, ptr %arrayidx3, align 8, !dbg !330
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !331
  %add46 = add nsw i64 %23, %22, !dbg !332
  %24 = load i64, ptr %arrayidx6, align 8, !dbg !333
  %sub49 = sub nsw i64 %24, %23, !dbg !334
  call void @PMOD(i64 noundef %add46, i64 noundef %sub49, i64 noundef %sub49, ptr noundef nonnull %dummy, ptr noundef nonnull %dummy, ptr noundef nonnull %time_after) #16, !dbg !335
  %25 = load i64, ptr %arrayidx6, align 8, !dbg !336
  %26 = load i64, ptr %arrayidx23, align 8, !dbg !337
  %sub55 = sub nsw i64 %25, %26, !dbg !338
  call void @PADD(i64 noundef %sub55, i64 noundef %sub55, ptr noundef nonnull %dummy, ptr noundef nonnull %time_after) #16, !dbg !339
  %sub59 = sub i64 %call8, %call, !dbg !340
  call void @llvm.dbg.value(metadata double undef, metadata !283, metadata !DIExpression()), !dbg !285
  br i1 %tobool.not, label %land.lhs.true91, label %lor.lhs.false, !dbg !341

lor.lhs.false:                                    ; preds = %if.end
  %27 = load i64, ptr %arrayidx71, align 8, !dbg !342
  %cmp72 = icmp eq i64 %27, 0, !dbg !343
  br i1 %cmp72, label %land.lhs.true91, label %lor.rhs, !dbg !344

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx74 = getelementptr inbounds i64, ptr %domain, i64 %5, !dbg !345
  %28 = load i64, ptr %arrayidx74, align 8, !dbg !345
  %cmp75.not = icmp eq i64 %28, 0, !dbg !346
  call void @llvm.dbg.value(metadata i1 %cmp75.not, metadata !278, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !285
  call void @llvm.dbg.value(metadata i64 1, metadata !279, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !285
  br i1 %cmp75.not, label %for.end, label %land.lhs.true91, !dbg !347

land.lhs.true91:                                  ; preds = %if.end, %lor.lhs.false, %lor.rhs
  %29 = load double, ptr %time_before, align 8, !dbg !348
  call void @llvm.dbg.value(metadata double %29, metadata !280, metadata !DIExpression()), !dbg !285
  %30 = load double, ptr %time_after, align 8, !dbg !349
  call void @llvm.dbg.value(metadata double %30, metadata !281, metadata !DIExpression()), !dbg !285
  %cmp92 = fcmp ogt double %29, %30, !dbg !350
  br i1 %cmp92, label %land.rhs, label %for.end, !dbg !351

land.rhs:                                         ; preds = %land.lhs.true91
  call void @llvm.dbg.value(metadata i1 true, metadata !276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !285
  call void @llvm.dbg.value(metadata i1 undef, metadata !277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !285
  call void @JoinTwoSupers2(ptr noundef nonnull %nz, ptr noundef nonnull %node, i64 noundef %1, i64 noundef %5), !dbg !352
  %31 = load i64, ptr @ops_added, align 8, !dbg !355
  %add107 = add nsw i64 %sub59, %31, !dbg !355
  store i64 %add107, ptr @ops_added, align 8, !dbg !355
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !284, metadata !DIExpression()), !dbg !285
  %32 = load ptr, ptr @super_parent, align 8, !dbg !289
  %arrayidx1 = getelementptr inbounds i64, ptr %32, i64 %1, !dbg !289
  %33 = load i64, ptr %arrayidx1, align 8, !dbg !289
  %cmp = icmp eq i64 %33, %2, !dbg !294
  br i1 %cmp, label %for.end, label %if.end, !dbg !295, !llvm.loop !356

for.end:                                          ; preds = %land.rhs, %land.lhs.true91, %lor.rhs, %entry
  %34 = load ptr, ptr @tree_original_firstchild, align 8, !dbg !359
  %arrayidx110 = getelementptr inbounds i64, ptr %34, i64 %1, !dbg !359
  call void @llvm.dbg.value(metadata i64 undef, metadata !272, metadata !DIExpression()), !dbg !285
  %i.0227 = load i64, ptr %arrayidx110, align 8, !dbg !285
  call void @llvm.dbg.value(metadata i64 %i.0227, metadata !272, metadata !DIExpression()), !dbg !285
  %cmp111.not228 = icmp eq i64 %i.0227, -1, !dbg !360
  br i1 %cmp111.not228, label %while.end, label %while.body, !dbg !361

while.body:                                       ; preds = %for.end, %while.body
  %i.0229 = phi i64 [ %i.0, %while.body ], [ %i.0227, %for.end ]
  call void @ConsiderMerge(i64 noundef %join, i64 noundef %i.0229, ptr noundef nonnull byval(%struct.SMatrix) align 8 %M, ptr noundef %nz, ptr noundef %node, ptr noundef %domain, i64 noundef %target_size, i64 noundef %traversal_order), !dbg !362
  %35 = load ptr, ptr @tree_original_sibling, align 8, !dbg !364
  %arrayidx113 = getelementptr inbounds i64, ptr %35, i64 %i.0229, !dbg !364
  call void @llvm.dbg.value(metadata i64 undef, metadata !272, metadata !DIExpression()), !dbg !285
  %i.0 = load i64, ptr %arrayidx113, align 8, !dbg !285
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !272, metadata !DIExpression()), !dbg !285
  %cmp111.not = icmp eq i64 %i.0, -1, !dbg !360
  br i1 %cmp111.not, label %while.end, label %while.body, !dbg !361, !llvm.loop !365

while.end:                                        ; preds = %while.body, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy) #16, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %time_after) #16, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %time_before) #16, !dbg !367
  ret void, !dbg !367
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @ReorderMatrix(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M, i64 noundef %super, ptr nocapture noundef readonly %node, ptr nocapture noundef %counter, ptr nocapture noundef writeonly %PERM) local_unnamed_addr #6 !dbg !368 {
entry:
  call void @llvm.dbg.declare(metadata ptr %M, metadata !372, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i64 %super, metadata !373, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata ptr %node, metadata !374, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata ptr %counter, metadata !375, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata ptr %PERM, metadata !376, metadata !DIExpression()), !dbg !381
  %0 = load i64, ptr %M, align 8, !dbg !382
  %cmp.not = icmp eq i64 %0, %super, !dbg !384
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !385

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @member_of, align 8, !dbg !386
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 %super, !dbg !386
  %2 = load i64, ptr %arrayidx, align 8, !dbg !386
  call void @llvm.dbg.value(metadata i64 %2, metadata !373, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i64 %2, metadata !378, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i64 0, metadata !379, metadata !DIExpression()), !dbg !381
  %cmp1.not28 = icmp eq i64 %2, -1, !dbg !388
  br i1 %cmp1.not28, label %while.end, label %while.body.lr.ph, !dbg !389

while.body.lr.ph:                                 ; preds = %if.then
  %arrayidx2 = getelementptr inbounds i64, ptr %node, i64 %2
  br label %while.body, !dbg !389

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %which_member.030 = phi i64 [ 0, %while.body.lr.ph ], [ %inc, %while.body ]
  %member.029 = phi i64 [ %2, %while.body.lr.ph ], [ %6, %while.body ]
  call void @llvm.dbg.value(metadata i64 %which_member.030, metadata !379, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i64 %member.029, metadata !378, metadata !DIExpression()), !dbg !381
  %3 = load i64, ptr %counter, align 8, !dbg !390
  %4 = load i64, ptr %arrayidx2, align 8, !dbg !392
  %sub = add i64 %3, %which_member.030, !dbg !393
  %add = sub i64 %sub, %4, !dbg !394
  %arrayidx3 = getelementptr inbounds i64, ptr %PERM, i64 %add, !dbg !395
  store i64 %member.029, ptr %arrayidx3, align 8, !dbg !396
  %5 = load ptr, ptr @next_in_super, align 8, !dbg !397
  %arrayidx4 = getelementptr inbounds i64, ptr %5, i64 %member.029, !dbg !397
  %6 = load i64, ptr %arrayidx4, align 8, !dbg !397
  call void @llvm.dbg.value(metadata i64 %6, metadata !378, metadata !DIExpression()), !dbg !381
  %inc = add nuw nsw i64 %which_member.030, 1, !dbg !398
  call void @llvm.dbg.value(metadata i64 %inc, metadata !379, metadata !DIExpression()), !dbg !381
  %cmp1.not = icmp eq i64 %6, -1, !dbg !388
  br i1 %cmp1.not, label %while.end, label %while.body, !dbg !389, !llvm.loop !399

while.end:                                        ; preds = %while.body, %if.then
  %arrayidx5 = getelementptr inbounds i64, ptr %node, i64 %2, !dbg !401
  %7 = load i64, ptr %arrayidx5, align 8, !dbg !401
  %8 = load i64, ptr %counter, align 8, !dbg !402
  %sub6 = sub nsw i64 %8, %7, !dbg !402
  store i64 %sub6, ptr %counter, align 8, !dbg !402
  br label %if.end, !dbg !403

if.end:                                           ; preds = %while.end, %entry
  %super.addr.0 = phi i64 [ %2, %while.end ], [ %super, %entry ]
  call void @llvm.dbg.value(metadata i64 %super.addr.0, metadata !373, metadata !DIExpression()), !dbg !381
  %9 = load ptr, ptr @tree_firstchild, align 8, !dbg !404
  %arrayidx7 = getelementptr inbounds i64, ptr %9, i64 %super.addr.0, !dbg !404
  call void @llvm.dbg.value(metadata i64 undef, metadata !377, metadata !DIExpression()), !dbg !381
  %child.031 = load i64, ptr %arrayidx7, align 8, !dbg !381
  call void @llvm.dbg.value(metadata i64 %child.031, metadata !377, metadata !DIExpression()), !dbg !381
  %cmp9.not32 = icmp eq i64 %child.031, -1, !dbg !405
  br i1 %cmp9.not32, label %while.end12, label %while.body10, !dbg !406

while.body10:                                     ; preds = %if.end, %while.body10
  %child.033 = phi i64 [ %child.0, %while.body10 ], [ %child.031, %if.end ]
  tail call void @ReorderMatrix(ptr noundef nonnull byval(%struct.SMatrix) align 8 %M, i64 noundef %child.033, ptr noundef %node, ptr noundef %counter, ptr noundef %PERM), !dbg !407
  %10 = load ptr, ptr @tree_sibling, align 8, !dbg !409
  %arrayidx11 = getelementptr inbounds i64, ptr %10, i64 %child.033, !dbg !409
  call void @llvm.dbg.value(metadata i64 undef, metadata !377, metadata !DIExpression()), !dbg !381
  %child.0 = load i64, ptr %arrayidx11, align 8, !dbg !381
  call void @llvm.dbg.value(metadata i64 %child.0, metadata !377, metadata !DIExpression()), !dbg !381
  %cmp9.not = icmp eq i64 %child.0, -1, !dbg !405
  br i1 %cmp9.not, label %while.end12, label %while.body10, !dbg !406, !llvm.loop !410

while.end12:                                      ; preds = %while.body10, %if.end
  ret void, !dbg !412
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @InvertPerm(i64 noundef %n, ptr nocapture noundef readonly %PERM, ptr nocapture noundef %INVP) local_unnamed_addr #7 !dbg !413 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !417, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata ptr %PERM, metadata !418, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata ptr %INVP, metadata !419, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i64 0, metadata !420, metadata !DIExpression()), !dbg !421
  %cmp.not30 = icmp slt i64 %n, 0, !dbg !422
  br i1 %cmp.not30, label %for.end16, label %for.body3.preheader, !dbg !425

for.body3.preheader:                              ; preds = %entry
  %0 = shl i64 %n, 3, !dbg !425
  %1 = add i64 %0, 8, !dbg !425
  call void @llvm.memset.p0.i64(ptr align 8 %INVP, i8 -1, i64 %1, i1 false), !dbg !426
  call void @llvm.dbg.value(metadata i64 0, metadata !420, metadata !DIExpression()), !dbg !421
  br label %for.body3, !dbg !427

for.cond9.preheader:                              ; preds = %for.body3
  call void @llvm.dbg.value(metadata i64 0, metadata !420, metadata !DIExpression()), !dbg !421
  br i1 %cmp.not30, label %for.end16, label %for.body11, !dbg !429

for.body3:                                        ; preds = %for.body3.preheader, %for.body3
  %i.133 = phi i64 [ %inc7, %for.body3 ], [ 0, %for.body3.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.133, metadata !420, metadata !DIExpression()), !dbg !421
  %arrayidx4 = getelementptr inbounds i64, ptr %PERM, i64 %i.133, !dbg !431
  %2 = load i64, ptr %arrayidx4, align 8, !dbg !431
  %arrayidx5 = getelementptr inbounds i64, ptr %INVP, i64 %2, !dbg !433
  store i64 %i.133, ptr %arrayidx5, align 8, !dbg !434
  %inc7 = add nuw i64 %i.133, 1, !dbg !435
  call void @llvm.dbg.value(metadata i64 %inc7, metadata !420, metadata !DIExpression()), !dbg !421
  %exitcond.not = icmp eq i64 %i.133, %n, !dbg !436
  br i1 %exitcond.not, label %for.cond9.preheader, label %for.body3, !dbg !427, !llvm.loop !437

for.body11:                                       ; preds = %for.cond9.preheader, %for.inc14
  %i.235 = phi i64 [ %inc15, %for.inc14 ], [ 0, %for.cond9.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.235, metadata !420, metadata !DIExpression()), !dbg !421
  %arrayidx12 = getelementptr inbounds i64, ptr %INVP, i64 %i.235, !dbg !439
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !439
  %cmp13 = icmp eq i64 %3, -1, !dbg !442
  br i1 %cmp13, label %if.then, label %for.inc14, !dbg !443

if.then:                                          ; preds = %for.body11
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !444
  br label %for.inc14, !dbg !444

for.inc14:                                        ; preds = %for.body11, %if.then
  %inc15 = add nuw i64 %i.235, 1, !dbg !445
  call void @llvm.dbg.value(metadata i64 %inc15, metadata !420, metadata !DIExpression()), !dbg !421
  %exitcond36.not = icmp eq i64 %i.235, %n, !dbg !446
  br i1 %exitcond36.not, label %for.end16, label %for.body11, !dbg !429, !llvm.loop !447

for.end16:                                        ; preds = %for.inc14, %entry, %for.cond9.preheader
  ret void, !dbg !449
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FixNodeNZAndT(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M, ptr nocapture noundef readonly %PERM, ptr nocapture noundef %node, ptr nocapture noundef %nz, ptr nocapture noundef writeonly %T) local_unnamed_addr #4 !dbg !450 {
entry:
  call void @llvm.dbg.declare(metadata ptr %M, metadata !454, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata ptr %PERM, metadata !455, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata ptr %node, metadata !456, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata ptr %nz, metadata !457, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata ptr %T, metadata !458, metadata !DIExpression()), !dbg !463
  %0 = load i64, ptr %M, align 8, !dbg !464
  %mul = shl i64 %0, 3, !dbg !465
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #17, !dbg !466
  call void @llvm.dbg.value(metadata ptr %call, metadata !461, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata i64 0, metadata !460, metadata !DIExpression()), !dbg !463
  %cmp155 = icmp sgt i64 %0, 0, !dbg !467
  br i1 %cmp155, label %for.body6.preheader, label %for.end87, !dbg !470

for.body6.preheader:                              ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call, ptr align 8 %node, i64 %mul, i1 false), !dbg !471
  call void @llvm.dbg.value(metadata i64 0, metadata !460, metadata !DIExpression()), !dbg !463
  br label %for.body6, !dbg !472

for.cond13.preheader:                             ; preds = %for.body6
  call void @llvm.dbg.value(metadata i64 0, metadata !459, metadata !DIExpression()), !dbg !463
  br i1 %cmp155, label %for.cond17.preheader, label %for.end87, !dbg !474

for.body6:                                        ; preds = %for.body6.preheader, %for.body6
  %j.1158 = phi i64 [ %inc11, %for.body6 ], [ 0, %for.body6.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.1158, metadata !460, metadata !DIExpression()), !dbg !463
  %arrayidx7 = getelementptr inbounds i64, ptr %PERM, i64 %j.1158, !dbg !476
  %1 = load i64, ptr %arrayidx7, align 8, !dbg !476
  %arrayidx8 = getelementptr inbounds i64, ptr %call, i64 %1, !dbg !478
  %2 = load i64, ptr %arrayidx8, align 8, !dbg !478
  %arrayidx9 = getelementptr inbounds i64, ptr %node, i64 %j.1158, !dbg !479
  store i64 %2, ptr %arrayidx9, align 8, !dbg !480
  %inc11 = add nuw nsw i64 %j.1158, 1, !dbg !481
  call void @llvm.dbg.value(metadata i64 %inc11, metadata !460, metadata !DIExpression()), !dbg !463
  %exitcond.not = icmp eq i64 %inc11, %0, !dbg !482
  br i1 %exitcond.not, label %for.cond13.preheader, label %for.body6, !dbg !472, !llvm.loop !483

for.cond13.loopexit:                              ; preds = %for.body21, %for.cond17.preheader
  %add19.lcssa = phi i64 [ %add19160, %for.cond17.preheader ], [ %add19, %for.body21 ], !dbg !485
  call void @llvm.dbg.value(metadata i64 %add19.lcssa, metadata !459, metadata !DIExpression()), !dbg !463
  %cmp15 = icmp slt i64 %add19.lcssa, %0, !dbg !489
  br i1 %cmp15, label %for.cond17.preheader, label %for.cond30.preheader, !dbg !474, !llvm.loop !490

for.cond17.preheader:                             ; preds = %for.cond13.preheader, %for.cond13.loopexit
  %super.0164 = phi i64 [ %add19.lcssa, %for.cond13.loopexit ], [ 0, %for.cond13.preheader ]
  call void @llvm.dbg.value(metadata i64 %super.0164, metadata !459, metadata !DIExpression()), !dbg !463
  %arrayidx18 = getelementptr inbounds i64, ptr %node, i64 %super.0164
  call void @llvm.dbg.value(metadata i64 %super.0164, metadata !460, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !463
  %3 = load i64, ptr %arrayidx18, align 8, !dbg !492
  %add19160 = add nsw i64 %3, %super.0164, !dbg !485
  %cmp20161 = icmp sgt i64 %3, 1, !dbg !493
  br i1 %cmp20161, label %for.body21.preheader, label %for.cond13.loopexit, !dbg !494

for.body21.preheader:                             ; preds = %for.cond17.preheader
  %j.2159 = add nsw i64 %super.0164, 1, !dbg !495
  call void @llvm.dbg.value(metadata i64 %j.2159, metadata !460, metadata !DIExpression()), !dbg !463
  br label %for.body21, !dbg !494

for.cond30.preheader:                             ; preds = %for.cond13.loopexit
  call void @llvm.dbg.value(metadata i64 0, metadata !460, metadata !DIExpression()), !dbg !463
  br i1 %cmp155, label %for.body42.preheader, label %for.end87, !dbg !496

for.body21:                                       ; preds = %for.body21.preheader, %for.body21
  %j.2162 = phi i64 [ %j.2, %for.body21 ], [ %j.2159, %for.body21.preheader ]
  %sub = sub nsw i64 %super.0164, %j.2162, !dbg !498
  %arrayidx22 = getelementptr inbounds i64, ptr %node, i64 %j.2162, !dbg !499
  store i64 %sub, ptr %arrayidx22, align 8, !dbg !500
  call void @llvm.dbg.value(metadata i64 %j.2162, metadata !460, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !463
  %j.2 = add nsw i64 %j.2162, 1, !dbg !495
  call void @llvm.dbg.value(metadata i64 %j.2, metadata !460, metadata !DIExpression()), !dbg !463
  %4 = load i64, ptr %arrayidx18, align 8, !dbg !492
  %add19 = add nsw i64 %4, %super.0164, !dbg !485
  %cmp20 = icmp slt i64 %j.2, %add19, !dbg !493
  br i1 %cmp20, label %for.body21, label %for.cond13.loopexit, !dbg !494, !llvm.loop !501

for.body42.preheader:                             ; preds = %for.cond30.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call, ptr align 8 %nz, i64 %mul, i1 false), !dbg !503
  call void @llvm.dbg.value(metadata i32 undef, metadata !460, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !463
  call void @llvm.dbg.value(metadata i64 0, metadata !459, metadata !DIExpression()), !dbg !463
  br label %for.body42, !dbg !505

for.cond39.loopexit:                              ; preds = %for.body51.for.body51_crit_edge, %for.body51.preheader, %for.body42
  %add49.lcssa = phi i64 [ %add49168, %for.body42 ], [ %add49193, %for.body51.preheader ], [ %add49, %for.body51.for.body51_crit_edge ], !dbg !507
  call void @llvm.dbg.value(metadata i64 %add49.lcssa, metadata !459, metadata !DIExpression()), !dbg !463
  %cmp41 = icmp slt i64 %add49.lcssa, %0, !dbg !512
  br i1 %cmp41, label %for.body42, label %for.cond63.preheader, !dbg !505, !llvm.loop !513

for.cond63.preheader:                             ; preds = %for.cond39.loopexit
  call void @llvm.dbg.value(metadata i64 0, metadata !459, metadata !DIExpression()), !dbg !463
  br i1 %cmp155, label %for.cond67.preheader, label %for.end87, !dbg !515

for.body42:                                       ; preds = %for.body42.preheader, %for.cond39.loopexit
  %super.1173 = phi i64 [ %add49.lcssa, %for.cond39.loopexit ], [ 0, %for.body42.preheader ]
  call void @llvm.dbg.value(metadata i64 %super.1173, metadata !459, metadata !DIExpression()), !dbg !463
  %arrayidx43 = getelementptr inbounds i64, ptr %PERM, i64 %super.1173, !dbg !517
  %5 = load i64, ptr %arrayidx43, align 8, !dbg !517
  %arrayidx44 = getelementptr inbounds i64, ptr %call, i64 %5, !dbg !518
  %6 = load i64, ptr %arrayidx44, align 8, !dbg !518
  %arrayidx45 = getelementptr inbounds i64, ptr %nz, i64 %super.1173, !dbg !519
  store i64 %6, ptr %arrayidx45, align 8, !dbg !520
  call void @llvm.dbg.value(metadata i64 %super.1173, metadata !460, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !463
  %arrayidx48 = getelementptr inbounds i64, ptr %node, i64 %super.1173
  %7 = load i64, ptr %arrayidx48, align 8, !dbg !521
  %add49168 = add nsw i64 %7, %super.1173, !dbg !507
  %cmp50169 = icmp sgt i64 %7, 1, !dbg !522
  br i1 %cmp50169, label %for.body51.preheader, label %for.cond39.loopexit, !dbg !523

for.body51.preheader:                             ; preds = %for.body42
  %j.4167 = add nsw i64 %super.1173, 1, !dbg !524
  call void @llvm.dbg.value(metadata i64 %j.4167, metadata !460, metadata !DIExpression()), !dbg !463
  %sub54190 = add i64 %6, -1, !dbg !525
  %arrayidx55191 = getelementptr inbounds i64, ptr %nz, i64 %j.4167, !dbg !526
  store i64 %sub54190, ptr %arrayidx55191, align 8, !dbg !527
  call void @llvm.dbg.value(metadata i64 %j.4167, metadata !460, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !463
  call void @llvm.dbg.value(metadata i64 %super.1173, metadata !460, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !463
  %8 = load i64, ptr %arrayidx48, align 8, !dbg !521
  %add49193 = add nsw i64 %8, %super.1173, !dbg !507
  %cmp50194 = icmp sgt i64 %8, 2, !dbg !522
  br i1 %cmp50194, label %for.body51.for.body51_crit_edge.lr.ph, label %for.cond39.loopexit, !dbg !523, !llvm.loop !528

for.body51.for.body51_crit_edge.lr.ph:            ; preds = %for.body51.preheader
  %j.4192 = add nsw i64 %super.1173, 2, !dbg !524
  call void @llvm.dbg.value(metadata i64 %j.4192, metadata !460, metadata !DIExpression()), !dbg !463
  br label %for.body51.for.body51_crit_edge, !dbg !523

for.body51.for.body51_crit_edge:                  ; preds = %for.body51.for.body51_crit_edge.lr.ph, %for.body51.for.body51_crit_edge
  %j.4195 = phi i64 [ %j.4192, %for.body51.for.body51_crit_edge.lr.ph ], [ %j.4, %for.body51.for.body51_crit_edge ]
  %.pre = load i64, ptr %arrayidx45, align 8, !dbg !530
  %add53 = sub i64 %super.1173, %j.4195, !dbg !531
  %sub54 = add i64 %add53, %.pre, !dbg !525
  %arrayidx55 = getelementptr inbounds i64, ptr %nz, i64 %j.4195, !dbg !526
  store i64 %sub54, ptr %arrayidx55, align 8, !dbg !527
  call void @llvm.dbg.value(metadata i64 %j.4195, metadata !460, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !463
  %j.4 = add nsw i64 %j.4195, 1, !dbg !524
  call void @llvm.dbg.value(metadata i64 %j.4, metadata !460, metadata !DIExpression()), !dbg !463
  %9 = load i64, ptr %arrayidx48, align 8, !dbg !521
  %add49 = add nsw i64 %9, %super.1173, !dbg !507
  %cmp50 = icmp slt i64 %j.4, %add49, !dbg !522
  br i1 %cmp50, label %for.body51.for.body51_crit_edge, label %for.cond39.loopexit, !dbg !523, !llvm.loop !528

for.cond67.preheader:                             ; preds = %for.cond63.preheader, %for.end76
  %super.2179 = phi i64 [ %add86, %for.end76 ], [ 0, %for.cond63.preheader ]
  call void @llvm.dbg.value(metadata i64 %super.2179, metadata !459, metadata !DIExpression()), !dbg !463
  %arrayidx68 = getelementptr inbounds i64, ptr %node, i64 %super.2179
  call void @llvm.dbg.value(metadata i64 %super.2179, metadata !460, metadata !DIExpression()), !dbg !463
  %10 = load i64, ptr %arrayidx68, align 8, !dbg !532
  %add69174 = add nsw i64 %10, %super.2179, !dbg !537
  %cmp70175 = icmp sgt i64 %10, 0, !dbg !538
  br i1 %cmp70175, label %for.body71, label %for.end76, !dbg !539

for.body71:                                       ; preds = %for.cond67.preheader, %for.body71
  %j.5176 = phi i64 [ %add72, %for.body71 ], [ %super.2179, %for.cond67.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.5176, metadata !460, metadata !DIExpression()), !dbg !463
  %add72 = add nsw i64 %j.5176, 1, !dbg !540
  %arrayidx73 = getelementptr inbounds i64, ptr %T, i64 %j.5176, !dbg !541
  store i64 %add72, ptr %arrayidx73, align 8, !dbg !542
  call void @llvm.dbg.value(metadata i64 %add72, metadata !460, metadata !DIExpression()), !dbg !463
  %11 = load i64, ptr %arrayidx68, align 8, !dbg !532
  %add69 = add nsw i64 %11, %super.2179, !dbg !537
  %cmp70 = icmp slt i64 %add72, %add69, !dbg !538
  br i1 %cmp70, label %for.body71, label %for.end76, !dbg !539, !llvm.loop !543

for.end76:                                        ; preds = %for.body71, %for.cond67.preheader
  %add69.lcssa = phi i64 [ %add69174, %for.cond67.preheader ], [ %add69, %for.body71 ], !dbg !537
  %12 = load ptr, ptr @INVP, align 8, !dbg !545
  %13 = load ptr, ptr @super_parent, align 8, !dbg !546
  %arrayidx77 = getelementptr inbounds i64, ptr %PERM, i64 %super.2179, !dbg !547
  %14 = load i64, ptr %arrayidx77, align 8, !dbg !547
  %arrayidx78 = getelementptr inbounds i64, ptr %13, i64 %14, !dbg !546
  %15 = load i64, ptr %arrayidx78, align 8, !dbg !546
  %arrayidx79 = getelementptr inbounds i64, ptr %12, i64 %15, !dbg !545
  %16 = load i64, ptr %arrayidx79, align 8, !dbg !545
  %sub82 = add nsw i64 %add69.lcssa, -1, !dbg !548
  %arrayidx83 = getelementptr inbounds i64, ptr %T, i64 %sub82, !dbg !549
  store i64 %16, ptr %arrayidx83, align 8, !dbg !550
  %17 = load i64, ptr %arrayidx68, align 8, !dbg !551
  %add86 = add nsw i64 %17, %super.2179, !dbg !552
  call void @llvm.dbg.value(metadata i64 %add86, metadata !459, metadata !DIExpression()), !dbg !463
  %cmp65 = icmp slt i64 %add86, %0, !dbg !553
  br i1 %cmp65, label %for.cond67.preheader, label %for.end87, !dbg !515, !llvm.loop !554

for.end87:                                        ; preds = %for.end76, %for.cond30.preheader, %for.cond13.preheader, %entry, %for.cond63.preheader
  tail call void @free(ptr noundef %call) #16, !dbg !556
  ret void, !dbg !557
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !558 void @ParentToChild(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare !dbg !562 void @ComputeWorkTree(ptr noundef byval(%struct.SMatrix) align 8, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

declare !dbg !565 void @PDIV(i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare !dbg !568 void @PMOD(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare !dbg !571 void @PADD(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @JoinTwoSupers2(ptr nocapture noundef %nz, ptr nocapture noundef %node, i64 noundef %child, i64 noundef %parent) local_unnamed_addr #11 !dbg !574 {
entry:
  call void @llvm.dbg.value(metadata ptr %nz, metadata !578, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata ptr %node, metadata !579, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata i64 %child, metadata !580, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata i64 %parent, metadata !581, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata i64 %parent, metadata !584, metadata !DIExpression()), !dbg !586
  %cmp.not90 = icmp eq i64 %parent, -1, !dbg !587
  br i1 %cmp.not90, label %entry.while.cond2.preheader_crit_edge, label %while.body, !dbg !588

entry.while.cond2.preheader_crit_edge:            ; preds = %entry
  %.pre = load ptr, ptr @next_in_super, align 8
  br label %while.cond2.preheader, !dbg !588

while.cond2.preheader:                            ; preds = %while.body, %entry.while.cond2.preheader_crit_edge
  %0 = phi ptr [ %.pre, %entry.while.cond2.preheader_crit_edge ], [ %2, %while.body ]
  br label %while.cond2, !dbg !589

while.body:                                       ; preds = %entry, %while.body
  %member.091 = phi i64 [ %3, %while.body ], [ %parent, %entry ]
  call void @llvm.dbg.value(metadata i64 %member.091, metadata !584, metadata !DIExpression()), !dbg !586
  %1 = load ptr, ptr @member_of, align 8, !dbg !590
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 %member.091, !dbg !590
  store i64 %child, ptr %arrayidx, align 8, !dbg !592
  %2 = load ptr, ptr @next_in_super, align 8, !dbg !593
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 %member.091, !dbg !593
  %3 = load i64, ptr %arrayidx1, align 8, !dbg !593
  call void @llvm.dbg.value(metadata i64 %3, metadata !584, metadata !DIExpression()), !dbg !586
  %cmp.not = icmp eq i64 %3, -1, !dbg !587
  br i1 %cmp.not, label %while.cond2.preheader, label %while.body, !dbg !588, !llvm.loop !594

while.cond2:                                      ; preds = %while.cond2.preheader, %while.cond2
  %child_last.0 = phi i64 [ %4, %while.cond2 ], [ %child, %while.cond2.preheader ], !dbg !586
  call void @llvm.dbg.value(metadata i64 %child_last.0, metadata !583, metadata !DIExpression()), !dbg !586
  %arrayidx3 = getelementptr inbounds i64, ptr %0, i64 %child_last.0, !dbg !596
  %4 = load i64, ptr %arrayidx3, align 8, !dbg !596
  %cmp4.not = icmp eq i64 %4, -1, !dbg !597
  br i1 %cmp4.not, label %while.end7, label %while.cond2, !dbg !589, !llvm.loop !598

while.end7:                                       ; preds = %while.cond2
  %arrayidx3.le = getelementptr inbounds i64, ptr %0, i64 %child_last.0, !dbg !596
  store i64 %parent, ptr %arrayidx3.le, align 8, !dbg !600
  %arrayidx9 = getelementptr inbounds i64, ptr %nz, i64 %parent, !dbg !601
  %5 = load i64, ptr %arrayidx9, align 8, !dbg !601
  %arrayidx10 = getelementptr inbounds i64, ptr %node, i64 %child, !dbg !602
  %6 = load i64, ptr %arrayidx10, align 8, !dbg !602
  %add = add nsw i64 %6, %5, !dbg !603
  %arrayidx11 = getelementptr inbounds i64, ptr %nz, i64 %child, !dbg !604
  store i64 %add, ptr %arrayidx11, align 8, !dbg !605
  %arrayidx12 = getelementptr inbounds i64, ptr %node, i64 %parent, !dbg !606
  %7 = load i64, ptr %arrayidx12, align 8, !dbg !606
  %8 = load i64, ptr %arrayidx10, align 8, !dbg !607
  %add14 = add nsw i64 %8, %7, !dbg !607
  store i64 %add14, ptr %arrayidx10, align 8, !dbg !607
  %9 = load ptr, ptr @super_parent, align 8, !dbg !608
  %arrayidx15 = getelementptr inbounds i64, ptr %9, i64 %parent, !dbg !608
  %10 = load i64, ptr %arrayidx15, align 8, !dbg !608
  %arrayidx16 = getelementptr inbounds i64, ptr %9, i64 %child, !dbg !609
  store i64 %10, ptr %arrayidx16, align 8, !dbg !610
  %11 = load ptr, ptr @tree_firstchild, align 8, !dbg !611
  %arrayidx1892 = getelementptr inbounds i64, ptr %11, i64 %parent, !dbg !611
  %12 = load i64, ptr %arrayidx1892, align 8, !dbg !611
  %cmp19.not93 = icmp eq i64 %12, -1, !dbg !612
  br i1 %cmp19.not93, label %while.end31, label %while.body20, !dbg !613

while.body20:                                     ; preds = %while.end7, %if.end
  %13 = phi i64 [ %24, %if.end ], [ %12, %while.end7 ]
  %arrayidx1894 = phi ptr [ %arrayidx18, %if.end ], [ %arrayidx1892, %while.end7 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !582, metadata !DIExpression()), !dbg !586
  %14 = load ptr, ptr @tree_sibling, align 8, !dbg !614
  %arrayidx22 = getelementptr inbounds i64, ptr %14, i64 %13, !dbg !614
  %15 = load i64, ptr %arrayidx22, align 8, !dbg !614
  store i64 %15, ptr %arrayidx1894, align 8, !dbg !616
  %16 = load ptr, ptr @member_of, align 8, !dbg !617
  %arrayidx24 = getelementptr inbounds i64, ptr %16, i64 %13, !dbg !617
  %17 = load i64, ptr %arrayidx24, align 8, !dbg !617
  %cmp25.not = icmp eq i64 %17, %child, !dbg !619
  br i1 %cmp25.not, label %if.end, label %if.then, !dbg !620

if.then:                                          ; preds = %while.body20
  %18 = load ptr, ptr @super_parent, align 8, !dbg !621
  %arrayidx27 = getelementptr inbounds i64, ptr %18, i64 %17, !dbg !621
  store i64 %child, ptr %arrayidx27, align 8, !dbg !623
  %19 = load ptr, ptr @tree_firstchild, align 8, !dbg !624
  %arrayidx28 = getelementptr inbounds i64, ptr %19, i64 %child, !dbg !624
  %20 = load i64, ptr %arrayidx28, align 8, !dbg !624
  %21 = load ptr, ptr @tree_sibling, align 8, !dbg !625
  %arrayidx29 = getelementptr inbounds i64, ptr %21, i64 %13, !dbg !625
  store i64 %20, ptr %arrayidx29, align 8, !dbg !626
  %22 = load ptr, ptr @tree_firstchild, align 8, !dbg !627
  %arrayidx30 = getelementptr inbounds i64, ptr %22, i64 %child, !dbg !627
  store i64 %13, ptr %arrayidx30, align 8, !dbg !628
  br label %if.end, !dbg !629

if.end:                                           ; preds = %if.then, %while.body20
  %23 = load ptr, ptr @tree_firstchild, align 8, !dbg !611
  %arrayidx18 = getelementptr inbounds i64, ptr %23, i64 %parent, !dbg !611
  %24 = load i64, ptr %arrayidx18, align 8, !dbg !611
  %cmp19.not = icmp eq i64 %24, -1, !dbg !612
  br i1 %cmp19.not, label %while.end31, label %while.body20, !dbg !613, !llvm.loop !630

while.end31:                                      ; preds = %if.end, %while.end7
  %25 = load ptr, ptr @super_parent, align 8, !dbg !632
  %arrayidx32 = getelementptr inbounds i64, ptr %25, i64 %parent, !dbg !632
  %26 = load i64, ptr %arrayidx32, align 8, !dbg !632
  call void @llvm.dbg.value(metadata i64 %26, metadata !585, metadata !DIExpression()), !dbg !586
  %27 = load ptr, ptr @tree_sibling, align 8, !dbg !633
  %arrayidx33 = getelementptr inbounds i64, ptr %27, i64 %parent, !dbg !633
  %28 = load i64, ptr %arrayidx33, align 8, !dbg !633
  %arrayidx34 = getelementptr inbounds i64, ptr %27, i64 %child, !dbg !634
  store i64 %28, ptr %arrayidx34, align 8, !dbg !635
  %29 = load ptr, ptr @tree_firstchild, align 8, !dbg !636
  %arrayidx35 = getelementptr inbounds i64, ptr %29, i64 %26, !dbg !636
  %30 = load i64, ptr %arrayidx35, align 8, !dbg !636
  call void @llvm.dbg.value(metadata i64 %30, metadata !582, metadata !DIExpression()), !dbg !586
  %cmp36 = icmp eq i64 %30, %parent, !dbg !637
  br i1 %cmp36, label %if.end46, label %while.cond39.preheader, !dbg !639

while.cond39.preheader:                           ; preds = %while.end31
  %31 = load ptr, ptr @tree_sibling, align 8
  br label %while.cond39, !dbg !640

while.cond39:                                     ; preds = %while.cond39.preheader, %while.cond39
  %i.0 = phi i64 [ %32, %while.cond39 ], [ %30, %while.cond39.preheader ], !dbg !586
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !582, metadata !DIExpression()), !dbg !586
  %arrayidx40 = getelementptr inbounds i64, ptr %31, i64 %i.0, !dbg !642
  %32 = load i64, ptr %arrayidx40, align 8, !dbg !642
  %cmp41.not = icmp eq i64 %32, %parent, !dbg !643
  br i1 %cmp41.not, label %while.end44, label %while.cond39, !dbg !640, !llvm.loop !644

while.end44:                                      ; preds = %while.cond39
  %arrayidx40.le = getelementptr inbounds i64, ptr %31, i64 %i.0, !dbg !642
  br label %if.end46

if.end46:                                         ; preds = %while.end31, %while.end44
  %arrayidx40.le.sink = phi ptr [ %arrayidx40.le, %while.end44 ], [ %arrayidx35, %while.end31 ]
  store i64 %child, ptr %arrayidx40.le.sink, align 8, !dbg !646
  ret void, !dbg !647
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local double @PathLength(i64 noundef %cols, i64 noundef %rows, i64 noundef %target_panel_size) local_unnamed_addr #0 !dbg !648 {
entry:
  call void @llvm.dbg.value(metadata i64 %cols, metadata !652, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i64 %rows, metadata !653, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i64 %target_panel_size, metadata !654, metadata !DIExpression()), !dbg !656
  %mul = mul nsw i64 %rows, %cols, !dbg !657
  %sub = add nsw i64 %cols, -1, !dbg !658
  %mul1 = mul nsw i64 %sub, %cols, !dbg !659
  %div.neg = sdiv i64 %mul1, -2, !dbg !660
  %sub2 = add i64 %div.neg, %mul, !dbg !661
  %mul3 = mul nsw i64 %sub2, 3, !dbg !662
  %conv = sitofp i64 %mul3 to double, !dbg !663
  call void @llvm.dbg.value(metadata double %conv, metadata !655, metadata !DIExpression()), !dbg !656
  %conv4 = sitofp i64 %target_panel_size to double, !dbg !664
  %mul5 = fmul double %conv4, %conv, !dbg !665
  call void @llvm.dbg.value(metadata double %mul5, metadata !655, metadata !DIExpression()), !dbg !656
  ret double %mul5, !dbg !666
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nounwind }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { argmemonly nofree nounwind willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tree_firstchild", scope: !2, file: !3, line: 41, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "amal.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "b328675765245634c0d27c6137ea5528")
!4 = !{!5, !7}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!9, !11, !13, !0, !15, !17, !19, !21, !23}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "next_in_super", scope: !2, file: !3, line: 40, type: !5, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "member_of", scope: !2, file: !3, line: 40, type: !5, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "super_parent", scope: !2, file: !3, line: 40, type: !5, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "tree_sibling", scope: !2, file: !3, line: 41, type: !5, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "tree_original_firstchild", scope: !2, file: !3, line: 42, type: !5, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "tree_original_sibling", scope: !2, file: !3, line: 42, type: !5, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "ops_added", scope: !2, file: !3, line: 43, type: !6, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "crit", scope: !2, file: !3, line: 44, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 2}
!32 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!33 = distinct !DISubprogram(name: "OpsFromSuper", scope: !3, file: !3, line: 47, type: !34, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!6, !6, !6}
!36 = !{!37, !38, !39}
!37 = !DILocalVariable(name: "size", arg: 1, scope: !33, file: !3, line: 47, type: !6)
!38 = !DILocalVariable(name: "nz", arg: 2, scope: !33, file: !3, line: 47, type: !6)
!39 = !DILocalVariable(name: "ops", scope: !33, file: !3, line: 49, type: !6)
!40 = !DILocation(line: 0, scope: !33)
!41 = !DILocation(line: 51, column: 20, scope: !33)
!42 = !DILocation(line: 51, column: 14, scope: !33)
!43 = !DILocation(line: 51, column: 26, scope: !33)
!44 = !DILocation(line: 51, column: 31, scope: !33)
!45 = !DILocation(line: 51, column: 23, scope: !33)
!46 = !DILocation(line: 51, column: 34, scope: !33)
!47 = !DILocation(line: 52, column: 14, scope: !33)
!48 = !DILocation(line: 52, column: 23, scope: !33)
!49 = !DILocation(line: 52, column: 19, scope: !33)
!50 = !DILocation(line: 52, column: 7, scope: !33)
!51 = !DILocation(line: 53, column: 16, scope: !33)
!52 = !DILocation(line: 53, column: 35, scope: !33)
!53 = !DILocation(line: 53, column: 26, scope: !33)
!54 = !DILocation(line: 53, column: 38, scope: !33)
!55 = !DILocation(line: 53, column: 7, scope: !33)
!56 = !DILocation(line: 55, column: 3, scope: !33)
!57 = distinct !DISubprogram(name: "CountSupers", scope: !3, file: !3, line: 58, type: !58, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{!6, !6, !5}
!60 = !{!61, !62, !63, !64}
!61 = !DILocalVariable(name: "cols", arg: 1, scope: !57, file: !3, line: 58, type: !6)
!62 = !DILocalVariable(name: "node", arg: 2, scope: !57, file: !3, line: 58, type: !5)
!63 = !DILocalVariable(name: "i", scope: !57, file: !3, line: 60, type: !6)
!64 = !DILocalVariable(name: "supers", scope: !57, file: !3, line: 60, type: !6)
!65 = !DILocation(line: 0, scope: !57)
!66 = !DILocation(line: 63, column: 14, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !3, line: 63, column: 3)
!68 = distinct !DILexicalBlock(scope: !57, file: !3, line: 63, column: 3)
!69 = !DILocation(line: 63, column: 3, scope: !68)
!70 = !DILocation(line: 64, column: 11, scope: !67)
!71 = !DILocation(line: 63, column: 24, scope: !67)
!72 = !DILocation(line: 63, column: 22, scope: !67)
!73 = distinct !{!73, !69, !74, !75, !76}
!74 = !DILocation(line: 64, column: 11, scope: !68)
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !DILocation(line: 66, column: 3, scope: !57)
!78 = distinct !DISubprogram(name: "Amalgamate2", scope: !3, file: !3, line: 69, type: !79, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !91)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !6, !81, !5, !5, !5, !5, !6}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "SMatrix", file: !82, line: 29, baseType: !83)
!82 = !DIFile(filename: "./matrix.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "f19fdb19034f8f693c291706633e8f13")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 26, size: 384, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !83, file: !82, line: 27, baseType: !6, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !83, file: !82, line: 27, baseType: !6, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !83, file: !82, line: 27, baseType: !5, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "startrow", scope: !83, file: !82, line: 27, baseType: !5, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "row", scope: !83, file: !82, line: 27, baseType: !5, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !83, file: !82, line: 28, baseType: !25, size: 64, offset: 320)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!92 = !DILocalVariable(name: "join", arg: 1, scope: !78, file: !3, line: 69, type: !6)
!93 = !DILocalVariable(name: "M", arg: 2, scope: !78, file: !3, line: 69, type: !81)
!94 = !DILocalVariable(name: "T", arg: 3, scope: !78, file: !3, line: 69, type: !5)
!95 = !DILocalVariable(name: "nz", arg: 4, scope: !78, file: !3, line: 69, type: !5)
!96 = !DILocalVariable(name: "node", arg: 5, scope: !78, file: !3, line: 69, type: !5)
!97 = !DILocalVariable(name: "domain", arg: 6, scope: !78, file: !3, line: 69, type: !5)
!98 = !DILocalVariable(name: "target_size", arg: 7, scope: !78, file: !3, line: 69, type: !6)
!99 = !DILocalVariable(name: "i", scope: !78, file: !3, line: 71, type: !6)
!100 = !DILocalVariable(name: "j", scope: !78, file: !3, line: 71, type: !6)
!101 = !DILocalVariable(name: "counter", scope: !78, file: !3, line: 72, type: !6)
!102 = !DILocalVariable(name: "supers_before", scope: !78, file: !3, line: 72, type: !6)
!103 = !DILocalVariable(name: "supers_after", scope: !78, file: !3, line: 72, type: !6)
!104 = !DILocalVariable(name: "g_ops_before", scope: !78, file: !3, line: 73, type: !7)
!105 = !DILocation(line: 0, scope: !78)
!106 = !DILocation(line: 69, column: 37, scope: !78)
!107 = !DILocation(line: 72, column: 3, scope: !78)
!108 = !DILocation(line: 77, column: 40, scope: !78)
!109 = !DILocation(line: 77, column: 44, scope: !78)
!110 = !DILocation(line: 77, column: 30, scope: !78)
!111 = !DILocation(line: 77, column: 19, scope: !78)
!112 = !DILocation(line: 78, column: 27, scope: !78)
!113 = !DILocation(line: 78, column: 16, scope: !78)
!114 = !DILocation(line: 79, column: 39, scope: !78)
!115 = !DILocation(line: 79, column: 28, scope: !78)
!116 = !DILocation(line: 80, column: 36, scope: !78)
!117 = !DILocation(line: 80, column: 25, scope: !78)
!118 = !DILocation(line: 81, column: 28, scope: !78)
!119 = !DILocation(line: 81, column: 17, scope: !78)
!120 = !DILocation(line: 82, column: 24, scope: !78)
!121 = !DILocation(line: 82, column: 13, scope: !78)
!122 = !DILocation(line: 83, column: 27, scope: !78)
!123 = !DILocation(line: 83, column: 16, scope: !78)
!124 = !DILocation(line: 85, column: 14, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 85, column: 3)
!126 = distinct !DILexicalBlock(scope: !78, file: !3, line: 85, column: 3)
!127 = !DILocation(line: 85, column: 3, scope: !126)
!128 = !DILocation(line: 86, column: 24, scope: !125)
!129 = !DILocation(line: 85, column: 18, scope: !125)
!130 = distinct !{!130, !127, !131, !75, !76}
!131 = !DILocation(line: 86, column: 27, scope: !126)
!132 = !DILocation(line: 89, column: 14, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 89, column: 3)
!134 = distinct !DILexicalBlock(scope: !78, file: !3, line: 89, column: 3)
!135 = !DILocation(line: 89, column: 3, scope: !134)
!136 = !DILocation(line: 85, column: 22, scope: !125)
!137 = !DILocation(line: 86, column: 5, scope: !125)
!138 = !DILocation(line: 90, column: 27, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !3, line: 89, column: 32)
!140 = !DILocation(line: 90, column: 26, scope: !139)
!141 = !DILocation(line: 90, column: 34, scope: !139)
!142 = !DILocation(line: 90, column: 23, scope: !139)
!143 = !DILocation(line: 90, column: 5, scope: !139)
!144 = !DILocation(line: 90, column: 21, scope: !139)
!145 = !DILocation(line: 91, column: 23, scope: !139)
!146 = !DILocation(line: 91, column: 39, scope: !139)
!147 = !DILocation(line: 91, column: 5, scope: !139)
!148 = !DILocation(line: 91, column: 21, scope: !139)
!149 = !DILocation(line: 92, column: 5, scope: !139)
!150 = !DILocation(line: 92, column: 21, scope: !139)
!151 = !DILocation(line: 92, column: 38, scope: !139)
!152 = !DILocation(line: 89, column: 23, scope: !133)
!153 = !DILocation(line: 89, column: 21, scope: !133)
!154 = !DILocation(line: 89, column: 17, scope: !133)
!155 = distinct !{!155, !135, !156, !75, !76}
!156 = !DILocation(line: 93, column: 3, scope: !134)
!157 = !DILocation(line: 94, column: 3, scope: !78)
!158 = !DILocation(line: 94, column: 21, scope: !78)
!159 = !DILocation(line: 95, column: 18, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 95, column: 3)
!161 = distinct !DILexicalBlock(scope: !78, file: !3, line: 95, column: 3)
!162 = !DILocation(line: 95, column: 14, scope: !160)
!163 = !DILocation(line: 95, column: 3, scope: !161)
!164 = !DILocation(line: 101, column: 14, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 101, column: 3)
!166 = distinct !DILexicalBlock(scope: !78, file: !3, line: 101, column: 3)
!167 = !DILocation(line: 101, column: 3, scope: !166)
!168 = !DILocation(line: 96, column: 35, scope: !169)
!169 = distinct !DILexicalBlock(scope: !160, file: !3, line: 95, column: 26)
!170 = !DILocation(line: 96, column: 5, scope: !169)
!171 = !DILocation(line: 96, column: 33, scope: !169)
!172 = !DILocation(line: 97, column: 32, scope: !169)
!173 = !DILocation(line: 97, column: 5, scope: !169)
!174 = !DILocation(line: 97, column: 30, scope: !169)
!175 = !DILocation(line: 95, column: 22, scope: !160)
!176 = distinct !{!176, !163, !177, !75, !76}
!177 = !DILocation(line: 98, column: 3, scope: !161)
!178 = !DILocation(line: 102, column: 19, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 102, column: 5)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 102, column: 5)
!181 = distinct !DILexicalBlock(scope: !165, file: !3, line: 101, column: 32)
!182 = !DILocation(line: 102, column: 18, scope: !179)
!183 = !DILocation(line: 102, column: 16, scope: !179)
!184 = !DILocation(line: 102, column: 5, scope: !180)
!185 = !DILocation(line: 103, column: 27, scope: !186)
!186 = distinct !DILexicalBlock(scope: !179, file: !3, line: 102, column: 33)
!187 = !DILocation(line: 103, column: 7, scope: !186)
!188 = !DILocation(line: 103, column: 24, scope: !186)
!189 = !DILocation(line: 104, column: 7, scope: !186)
!190 = !DILocation(line: 104, column: 20, scope: !186)
!191 = distinct !{!191, !184, !192, !75, !76}
!192 = !DILocation(line: 105, column: 5, scope: !180)
!193 = !DILocation(line: 106, column: 5, scope: !181)
!194 = !DILocation(line: 106, column: 28, scope: !181)
!195 = !DILocation(line: 106, column: 32, scope: !181)
!196 = !DILocation(line: 101, column: 23, scope: !165)
!197 = !DILocation(line: 101, column: 21, scope: !165)
!198 = !DILocation(line: 101, column: 17, scope: !165)
!199 = distinct !{!199, !167, !200, !75, !76}
!200 = !DILocation(line: 107, column: 3, scope: !166)
!201 = !DILocation(line: 108, column: 3, scope: !78)
!202 = !DILocation(line: 108, column: 18, scope: !78)
!203 = !DILocation(line: 110, column: 33, scope: !78)
!204 = !DILocation(line: 110, column: 19, scope: !78)
!205 = !DILocation(line: 112, column: 13, scope: !78)
!206 = !DILocation(line: 113, column: 18, scope: !78)
!207 = !DILocation(line: 115, column: 7, scope: !78)
!208 = !DILocation(line: 116, column: 12, scope: !78)
!209 = !DILocation(line: 116, column: 3, scope: !78)
!210 = !DILocation(line: 117, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !78, file: !3, line: 116, column: 19)
!212 = !DILocation(line: 118, column: 9, scope: !211)
!213 = distinct !{!213, !209, !214, !75, !76}
!214 = !DILocation(line: 119, column: 3, scope: !78)
!215 = !DILocation(line: 121, column: 11, scope: !78)
!216 = !DILocation(line: 122, column: 41, scope: !78)
!217 = !DILocation(line: 122, column: 3, scope: !78)
!218 = !DILocation(line: 123, column: 16, scope: !78)
!219 = !DILocation(line: 123, column: 19, scope: !78)
!220 = !DILocation(line: 123, column: 25, scope: !78)
!221 = !DILocation(line: 123, column: 3, scope: !78)
!222 = !DILocation(line: 125, column: 20, scope: !78)
!223 = !DILocation(line: 125, column: 3, scope: !78)
!224 = !DILocation(line: 127, column: 8, scope: !78)
!225 = !DILocation(line: 127, column: 3, scope: !78)
!226 = !DILocation(line: 127, column: 31, scope: !78)
!227 = !DILocation(line: 127, column: 26, scope: !78)
!228 = !DILocation(line: 128, column: 8, scope: !78)
!229 = !DILocation(line: 128, column: 3, scope: !78)
!230 = !DILocation(line: 128, column: 40, scope: !78)
!231 = !DILocation(line: 128, column: 35, scope: !78)
!232 = !DILocation(line: 129, column: 8, scope: !78)
!233 = !DILocation(line: 129, column: 3, scope: !78)
!234 = !DILocation(line: 129, column: 29, scope: !78)
!235 = !DILocation(line: 129, column: 24, scope: !78)
!236 = !DILocation(line: 129, column: 46, scope: !78)
!237 = !DILocation(line: 129, column: 41, scope: !78)
!238 = !DILocation(line: 131, column: 22, scope: !78)
!239 = !DILocation(line: 131, column: 25, scope: !78)
!240 = !DILocation(line: 131, column: 37, scope: !78)
!241 = !DILocation(line: 131, column: 3, scope: !78)
!242 = !DILocation(line: 132, column: 26, scope: !78)
!243 = !DILocation(line: 132, column: 3, scope: !78)
!244 = !DILocation(line: 134, column: 32, scope: !78)
!245 = !DILocation(line: 134, column: 18, scope: !78)
!246 = !DILocation(line: 136, column: 3, scope: !78)
!247 = !DILocation(line: 138, column: 17, scope: !78)
!248 = !DILocation(line: 138, column: 29, scope: !78)
!249 = !DILocation(line: 138, column: 47, scope: !78)
!250 = !DILocation(line: 137, column: 3, scope: !78)
!251 = !DILocation(line: 139, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !78, file: !3, line: 139, column: 7)
!253 = !DILocation(line: 139, column: 20, scope: !252)
!254 = !DILocation(line: 139, column: 32, scope: !252)
!255 = !DILocation(line: 139, column: 34, scope: !252)
!256 = !DILocation(line: 139, column: 17, scope: !252)
!257 = !DILocation(line: 139, column: 7, scope: !78)
!258 = !DILocation(line: 140, column: 5, scope: !252)
!259 = !DILocation(line: 142, column: 1, scope: !78)
!260 = distinct !DISubprogram(name: "ConsiderMerge", scope: !3, file: !3, line: 145, type: !261, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !6, !6, !81, !5, !5, !5, !6, !6}
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!264 = !DILocalVariable(name: "join", arg: 1, scope: !260, file: !3, line: 145, type: !6)
!265 = !DILocalVariable(name: "super", arg: 2, scope: !260, file: !3, line: 145, type: !6)
!266 = !DILocalVariable(name: "M", arg: 3, scope: !260, file: !3, line: 145, type: !81)
!267 = !DILocalVariable(name: "nz", arg: 4, scope: !260, file: !3, line: 145, type: !5)
!268 = !DILocalVariable(name: "node", arg: 5, scope: !260, file: !3, line: 145, type: !5)
!269 = !DILocalVariable(name: "domain", arg: 6, scope: !260, file: !3, line: 145, type: !5)
!270 = !DILocalVariable(name: "target_size", arg: 7, scope: !260, file: !3, line: 145, type: !6)
!271 = !DILocalVariable(name: "traversal_order", arg: 8, scope: !260, file: !3, line: 145, type: !6)
!272 = !DILocalVariable(name: "i", scope: !260, file: !3, line: 147, type: !6)
!273 = !DILocalVariable(name: "parent", scope: !260, file: !3, line: 147, type: !6)
!274 = !DILocalVariable(name: "ops_before", scope: !260, file: !3, line: 148, type: !6)
!275 = !DILocalVariable(name: "ops_after", scope: !260, file: !3, line: 148, type: !6)
!276 = !DILocalVariable(name: "do_merge", scope: !260, file: !3, line: 148, type: !6)
!277 = !DILocalVariable(name: "do_merge_simple", scope: !260, file: !3, line: 148, type: !6)
!278 = !DILocalVariable(name: "possible", scope: !260, file: !3, line: 148, type: !6)
!279 = !DILocalVariable(name: "allow_critical_to_grow", scope: !260, file: !3, line: 149, type: !6)
!280 = !DILocalVariable(name: "time_before", scope: !260, file: !3, line: 150, type: !7)
!281 = !DILocalVariable(name: "time_after", scope: !260, file: !3, line: 150, type: !7)
!282 = !DILocalVariable(name: "dummy", scope: !260, file: !3, line: 150, type: !7)
!283 = !DILocalVariable(name: "simple_diff", scope: !260, file: !3, line: 150, type: !7)
!284 = !DILocalVariable(name: "path_grows", scope: !260, file: !3, line: 151, type: !7)
!285 = !DILocation(line: 0, scope: !260)
!286 = !DILocation(line: 145, column: 51, scope: !260)
!287 = !DILocation(line: 150, column: 3, scope: !260)
!288 = !DILocation(line: 153, column: 11, scope: !260)
!289 = !DILocation(line: 158, column: 9, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !3, line: 158, column: 9)
!291 = distinct !DILexicalBlock(scope: !292, file: !3, line: 156, column: 12)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 156, column: 3)
!293 = distinct !DILexicalBlock(scope: !260, file: !3, line: 156, column: 3)
!294 = !DILocation(line: 158, column: 29, scope: !290)
!295 = !DILocation(line: 158, column: 9, scope: !291)
!296 = !DILocation(line: 163, column: 31, scope: !291)
!297 = !DILocation(line: 163, column: 44, scope: !291)
!298 = !DILocation(line: 163, column: 18, scope: !291)
!299 = !DILocation(line: 164, column: 43, scope: !291)
!300 = !DILocation(line: 164, column: 53, scope: !291)
!301 = !DILocation(line: 164, column: 17, scope: !291)
!302 = !DILocation(line: 166, column: 17, scope: !291)
!303 = !DILocation(line: 167, column: 5, scope: !291)
!304 = !DILocation(line: 168, column: 10, scope: !291)
!305 = !DILocation(line: 168, column: 23, scope: !291)
!306 = !DILocation(line: 168, column: 32, scope: !291)
!307 = !DILocation(line: 168, column: 5, scope: !291)
!308 = !DILocation(line: 170, column: 10, scope: !291)
!309 = !DILocation(line: 170, column: 20, scope: !291)
!310 = !DILocation(line: 170, column: 19, scope: !291)
!311 = !DILocation(line: 170, column: 5, scope: !291)
!312 = !DILocation(line: 171, column: 10, scope: !291)
!313 = !DILocation(line: 171, column: 24, scope: !291)
!314 = !DILocation(line: 171, column: 5, scope: !291)
!315 = !DILocation(line: 172, column: 10, scope: !291)
!316 = !DILocation(line: 172, column: 24, scope: !291)
!317 = !DILocation(line: 172, column: 34, scope: !291)
!318 = !DILocation(line: 172, column: 5, scope: !291)
!319 = !DILocation(line: 174, column: 10, scope: !291)
!320 = !DILocation(line: 174, column: 21, scope: !291)
!321 = !DILocation(line: 174, column: 20, scope: !291)
!322 = !DILocation(line: 174, column: 5, scope: !291)
!323 = !DILocation(line: 177, column: 16, scope: !291)
!324 = !DILocation(line: 178, column: 10, scope: !291)
!325 = !DILocation(line: 178, column: 22, scope: !291)
!326 = !DILocation(line: 178, column: 21, scope: !291)
!327 = !DILocation(line: 178, column: 48, scope: !291)
!328 = !DILocation(line: 178, column: 47, scope: !291)
!329 = !DILocation(line: 178, column: 5, scope: !291)
!330 = !DILocation(line: 180, column: 10, scope: !291)
!331 = !DILocation(line: 180, column: 22, scope: !291)
!332 = !DILocation(line: 180, column: 21, scope: !291)
!333 = !DILocation(line: 180, column: 36, scope: !291)
!334 = !DILocation(line: 180, column: 46, scope: !291)
!335 = !DILocation(line: 180, column: 5, scope: !291)
!336 = !DILocation(line: 182, column: 10, scope: !291)
!337 = !DILocation(line: 182, column: 21, scope: !291)
!338 = !DILocation(line: 182, column: 20, scope: !291)
!339 = !DILocation(line: 182, column: 5, scope: !291)
!340 = !DILocation(line: 184, column: 29, scope: !291)
!341 = !DILocation(line: 187, column: 25, scope: !291)
!342 = !DILocation(line: 187, column: 28, scope: !291)
!343 = !DILocation(line: 187, column: 42, scope: !291)
!344 = !DILocation(line: 187, column: 47, scope: !291)
!345 = !DILocation(line: 187, column: 50, scope: !291)
!346 = !DILocation(line: 187, column: 65, scope: !291)
!347 = !DILocation(line: 197, column: 26, scope: !291)
!348 = !DILocation(line: 197, column: 29, scope: !291)
!349 = !DILocation(line: 197, column: 43, scope: !291)
!350 = !DILocation(line: 197, column: 41, scope: !291)
!351 = !DILocation(line: 197, column: 54, scope: !291)
!352 = !DILocation(line: 202, column: 7, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !3, line: 200, column: 19)
!354 = distinct !DILexicalBlock(scope: !291, file: !3, line: 200, column: 9)
!355 = !DILocation(line: 203, column: 17, scope: !353)
!356 = distinct !{!356, !357, !358, !76}
!357 = !DILocation(line: 156, column: 3, scope: !293)
!358 = !DILocation(line: 208, column: 3, scope: !293)
!359 = !DILocation(line: 210, column: 9, scope: !260)
!360 = !DILocation(line: 211, column: 14, scope: !260)
!361 = !DILocation(line: 211, column: 5, scope: !260)
!362 = !DILocation(line: 212, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !260, file: !3, line: 211, column: 21)
!364 = !DILocation(line: 213, column: 11, scope: !363)
!365 = distinct !{!365, !361, !366, !75, !76}
!366 = !DILocation(line: 214, column: 5, scope: !260)
!367 = !DILocation(line: 215, column: 1, scope: !260)
!368 = distinct !DISubprogram(name: "ReorderMatrix", scope: !3, file: !3, line: 268, type: !369, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !81, !6, !5, !5, !5}
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379}
!372 = !DILocalVariable(name: "M", arg: 1, scope: !368, file: !3, line: 268, type: !81)
!373 = !DILocalVariable(name: "super", arg: 2, scope: !368, file: !3, line: 268, type: !6)
!374 = !DILocalVariable(name: "node", arg: 3, scope: !368, file: !3, line: 268, type: !5)
!375 = !DILocalVariable(name: "counter", arg: 4, scope: !368, file: !3, line: 268, type: !5)
!376 = !DILocalVariable(name: "PERM", arg: 5, scope: !368, file: !3, line: 268, type: !5)
!377 = !DILocalVariable(name: "child", scope: !368, file: !3, line: 270, type: !6)
!378 = !DILocalVariable(name: "member", scope: !368, file: !3, line: 270, type: !6)
!379 = !DILocalVariable(name: "which_member", scope: !368, file: !3, line: 270, type: !6)
!380 = !DILocation(line: 268, column: 28, scope: !368)
!381 = !DILocation(line: 0, scope: !368)
!382 = !DILocation(line: 272, column: 18, scope: !383)
!383 = distinct !DILexicalBlock(scope: !368, file: !3, line: 272, column: 7)
!384 = !DILocation(line: 272, column: 13, scope: !383)
!385 = !DILocation(line: 272, column: 7, scope: !368)
!386 = !DILocation(line: 273, column: 13, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !3, line: 272, column: 21)
!388 = !DILocation(line: 276, column: 19, scope: !387)
!389 = !DILocation(line: 276, column: 5, scope: !387)
!390 = !DILocation(line: 277, column: 12, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !3, line: 276, column: 26)
!392 = !DILocation(line: 277, column: 21, scope: !391)
!393 = !DILocation(line: 277, column: 20, scope: !391)
!394 = !DILocation(line: 277, column: 32, scope: !391)
!395 = !DILocation(line: 277, column: 7, scope: !391)
!396 = !DILocation(line: 277, column: 47, scope: !391)
!397 = !DILocation(line: 278, column: 16, scope: !391)
!398 = !DILocation(line: 279, column: 19, scope: !391)
!399 = distinct !{!399, !389, !400, !75, !76}
!400 = !DILocation(line: 280, column: 5, scope: !387)
!401 = !DILocation(line: 282, column: 17, scope: !387)
!402 = !DILocation(line: 282, column: 14, scope: !387)
!403 = !DILocation(line: 283, column: 3, scope: !387)
!404 = !DILocation(line: 285, column: 11, scope: !368)
!405 = !DILocation(line: 286, column: 16, scope: !368)
!406 = !DILocation(line: 286, column: 3, scope: !368)
!407 = !DILocation(line: 287, column: 5, scope: !408)
!408 = distinct !DILexicalBlock(scope: !368, file: !3, line: 286, column: 23)
!409 = !DILocation(line: 288, column: 13, scope: !408)
!410 = distinct !{!410, !406, !411, !75, !76}
!411 = !DILocation(line: 289, column: 3, scope: !368)
!412 = !DILocation(line: 290, column: 1, scope: !368)
!413 = distinct !DISubprogram(name: "InvertPerm", scope: !3, file: !3, line: 325, type: !414, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !416)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !6, !5, !5}
!416 = !{!417, !418, !419, !420}
!417 = !DILocalVariable(name: "n", arg: 1, scope: !413, file: !3, line: 325, type: !6)
!418 = !DILocalVariable(name: "PERM", arg: 2, scope: !413, file: !3, line: 325, type: !5)
!419 = !DILocalVariable(name: "INVP", arg: 3, scope: !413, file: !3, line: 325, type: !5)
!420 = !DILocalVariable(name: "i", scope: !413, file: !3, line: 327, type: !6)
!421 = !DILocation(line: 0, scope: !413)
!422 = !DILocation(line: 329, column: 14, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !3, line: 329, column: 3)
!424 = distinct !DILexicalBlock(scope: !413, file: !3, line: 329, column: 3)
!425 = !DILocation(line: 329, column: 3, scope: !424)
!426 = !DILocation(line: 330, column: 13, scope: !423)
!427 = !DILocation(line: 332, column: 3, scope: !428)
!428 = distinct !DILexicalBlock(scope: !413, file: !3, line: 332, column: 3)
!429 = !DILocation(line: 335, column: 3, scope: !430)
!430 = distinct !DILexicalBlock(scope: !413, file: !3, line: 335, column: 3)
!431 = !DILocation(line: 333, column: 10, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !3, line: 332, column: 3)
!433 = !DILocation(line: 333, column: 5, scope: !432)
!434 = !DILocation(line: 333, column: 19, scope: !432)
!435 = !DILocation(line: 332, column: 20, scope: !432)
!436 = !DILocation(line: 332, column: 14, scope: !432)
!437 = distinct !{!437, !427, !438, !75, !76}
!438 = !DILocation(line: 333, column: 21, scope: !428)
!439 = !DILocation(line: 336, column: 9, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 336, column: 9)
!441 = distinct !DILexicalBlock(scope: !430, file: !3, line: 335, column: 3)
!442 = !DILocation(line: 336, column: 17, scope: !440)
!443 = !DILocation(line: 336, column: 9, scope: !441)
!444 = !DILocation(line: 337, column: 7, scope: !440)
!445 = !DILocation(line: 335, column: 20, scope: !441)
!446 = !DILocation(line: 335, column: 14, scope: !441)
!447 = distinct !{!447, !429, !448, !75, !76}
!448 = !DILocation(line: 337, column: 41, scope: !430)
!449 = !DILocation(line: 338, column: 1, scope: !413)
!450 = distinct !DISubprogram(name: "FixNodeNZAndT", scope: !3, file: !3, line: 293, type: !451, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !81, !5, !5, !5, !5}
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461}
!454 = !DILocalVariable(name: "M", arg: 1, scope: !450, file: !3, line: 293, type: !81)
!455 = !DILocalVariable(name: "PERM", arg: 2, scope: !450, file: !3, line: 293, type: !5)
!456 = !DILocalVariable(name: "node", arg: 3, scope: !450, file: !3, line: 293, type: !5)
!457 = !DILocalVariable(name: "nz", arg: 4, scope: !450, file: !3, line: 293, type: !5)
!458 = !DILocalVariable(name: "T", arg: 5, scope: !450, file: !3, line: 293, type: !5)
!459 = !DILocalVariable(name: "super", scope: !450, file: !3, line: 295, type: !6)
!460 = !DILocalVariable(name: "j", scope: !450, file: !3, line: 295, type: !6)
!461 = !DILocalVariable(name: "tmp", scope: !450, file: !3, line: 296, type: !5)
!462 = !DILocation(line: 293, column: 28, scope: !450)
!463 = !DILocation(line: 0, scope: !450)
!464 = !DILocation(line: 298, column: 27, scope: !450)
!465 = !DILocation(line: 298, column: 28, scope: !450)
!466 = !DILocation(line: 298, column: 18, scope: !450)
!467 = !DILocation(line: 300, column: 14, scope: !468)
!468 = distinct !DILexicalBlock(scope: !469, file: !3, line: 300, column: 3)
!469 = distinct !DILexicalBlock(scope: !450, file: !3, line: 300, column: 3)
!470 = !DILocation(line: 300, column: 3, scope: !469)
!471 = !DILocation(line: 301, column: 12, scope: !468)
!472 = !DILocation(line: 302, column: 3, scope: !473)
!473 = distinct !DILexicalBlock(scope: !450, file: !3, line: 302, column: 3)
!474 = !DILocation(line: 304, column: 3, scope: !475)
!475 = distinct !DILexicalBlock(scope: !450, file: !3, line: 304, column: 3)
!476 = !DILocation(line: 303, column: 19, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !3, line: 302, column: 3)
!478 = !DILocation(line: 303, column: 15, scope: !477)
!479 = !DILocation(line: 303, column: 5, scope: !477)
!480 = !DILocation(line: 303, column: 13, scope: !477)
!481 = !DILocation(line: 302, column: 21, scope: !477)
!482 = !DILocation(line: 302, column: 14, scope: !477)
!483 = distinct !{!483, !472, !484, !75, !76}
!484 = !DILocation(line: 303, column: 26, scope: !473)
!485 = !DILocation(line: 305, column: 28, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 305, column: 5)
!487 = distinct !DILexicalBlock(scope: !488, file: !3, line: 305, column: 5)
!488 = distinct !DILexicalBlock(scope: !475, file: !3, line: 304, column: 3)
!489 = !DILocation(line: 304, column: 22, scope: !488)
!490 = distinct !{!490, !474, !491, !75, !76}
!491 = !DILocation(line: 306, column: 23, scope: !475)
!492 = !DILocation(line: 305, column: 29, scope: !486)
!493 = !DILocation(line: 305, column: 22, scope: !486)
!494 = !DILocation(line: 305, column: 5, scope: !487)
!495 = !DILocation(line: 0, scope: !487)
!496 = !DILocation(line: 308, column: 3, scope: !497)
!497 = distinct !DILexicalBlock(scope: !450, file: !3, line: 308, column: 3)
!498 = !DILocation(line: 306, column: 22, scope: !486)
!499 = !DILocation(line: 306, column: 7, scope: !486)
!500 = !DILocation(line: 306, column: 15, scope: !486)
!501 = distinct !{!501, !494, !502, !75, !76}
!502 = !DILocation(line: 306, column: 23, scope: !487)
!503 = !DILocation(line: 309, column: 12, scope: !504)
!504 = distinct !DILexicalBlock(scope: !497, file: !3, line: 308, column: 3)
!505 = !DILocation(line: 310, column: 3, scope: !506)
!506 = distinct !DILexicalBlock(scope: !450, file: !3, line: 310, column: 3)
!507 = !DILocation(line: 312, column: 28, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !3, line: 312, column: 5)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 312, column: 5)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 310, column: 48)
!511 = distinct !DILexicalBlock(scope: !506, file: !3, line: 310, column: 3)
!512 = !DILocation(line: 310, column: 22, scope: !511)
!513 = distinct !{!513, !505, !514, !75, !76}
!514 = !DILocation(line: 314, column: 3, scope: !506)
!515 = !DILocation(line: 316, column: 3, scope: !516)
!516 = distinct !DILexicalBlock(scope: !450, file: !3, line: 316, column: 3)
!517 = !DILocation(line: 311, column: 21, scope: !510)
!518 = !DILocation(line: 311, column: 17, scope: !510)
!519 = !DILocation(line: 311, column: 5, scope: !510)
!520 = !DILocation(line: 311, column: 15, scope: !510)
!521 = !DILocation(line: 312, column: 29, scope: !508)
!522 = !DILocation(line: 312, column: 22, scope: !508)
!523 = !DILocation(line: 312, column: 5, scope: !509)
!524 = !DILocation(line: 0, scope: !509)
!525 = !DILocation(line: 313, column: 30, scope: !508)
!526 = !DILocation(line: 313, column: 7, scope: !508)
!527 = !DILocation(line: 313, column: 13, scope: !508)
!528 = distinct !{!528, !523, !529, !75, !76}
!529 = !DILocation(line: 313, column: 31, scope: !509)
!530 = !DILocation(line: 313, column: 15, scope: !508)
!531 = !DILocation(line: 313, column: 24, scope: !508)
!532 = !DILocation(line: 317, column: 27, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 317, column: 5)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 317, column: 5)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 316, column: 48)
!536 = distinct !DILexicalBlock(scope: !516, file: !3, line: 316, column: 3)
!537 = !DILocation(line: 317, column: 26, scope: !533)
!538 = !DILocation(line: 317, column: 20, scope: !533)
!539 = !DILocation(line: 317, column: 5, scope: !534)
!540 = !DILocation(line: 318, column: 15, scope: !533)
!541 = !DILocation(line: 318, column: 7, scope: !533)
!542 = !DILocation(line: 318, column: 12, scope: !533)
!543 = distinct !{!543, !539, !544, !75, !76}
!544 = !DILocation(line: 318, column: 16, scope: !534)
!545 = !DILocation(line: 319, column: 30, scope: !535)
!546 = !DILocation(line: 319, column: 35, scope: !535)
!547 = !DILocation(line: 319, column: 48, scope: !535)
!548 = !DILocation(line: 319, column: 24, scope: !535)
!549 = !DILocation(line: 319, column: 5, scope: !535)
!550 = !DILocation(line: 319, column: 28, scope: !535)
!551 = !DILocation(line: 316, column: 35, scope: !536)
!552 = !DILocation(line: 316, column: 33, scope: !536)
!553 = !DILocation(line: 316, column: 22, scope: !536)
!554 = distinct !{!554, !515, !555, !75, !76}
!555 = !DILocation(line: 320, column: 3, scope: !516)
!556 = !DILocation(line: 322, column: 3, scope: !450)
!557 = !DILocation(line: 323, column: 1, scope: !450)
!558 = !DISubprogram(name: "ParentToChild", scope: !82, file: !82, line: 288, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !5, !6, !5, !5}
!561 = !{}
!562 = !DISubprogram(name: "ComputeWorkTree", scope: !82, file: !82, line: 291, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !81, !5, !25}
!565 = !DISubprogram(name: "PDIV", scope: !82, file: !82, line: 141, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !6, !6, !25, !25, !25}
!568 = !DISubprogram(name: "PMOD", scope: !82, file: !82, line: 142, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !6, !6, !6, !25, !25, !25}
!571 = !DISubprogram(name: "PADD", scope: !82, file: !82, line: 143, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !6, !6, !25, !25}
!574 = distinct !DISubprogram(name: "JoinTwoSupers2", scope: !3, file: !3, line: 217, type: !575, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !5, !5, !6, !6}
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585}
!578 = !DILocalVariable(name: "nz", arg: 1, scope: !574, file: !3, line: 217, type: !5)
!579 = !DILocalVariable(name: "node", arg: 2, scope: !574, file: !3, line: 217, type: !5)
!580 = !DILocalVariable(name: "child", arg: 3, scope: !574, file: !3, line: 217, type: !6)
!581 = !DILocalVariable(name: "parent", arg: 4, scope: !574, file: !3, line: 217, type: !6)
!582 = !DILocalVariable(name: "i", scope: !574, file: !3, line: 219, type: !6)
!583 = !DILocalVariable(name: "child_last", scope: !574, file: !3, line: 219, type: !6)
!584 = !DILocalVariable(name: "member", scope: !574, file: !3, line: 219, type: !6)
!585 = !DILocalVariable(name: "grandparent", scope: !574, file: !3, line: 219, type: !6)
!586 = !DILocation(line: 0, scope: !574)
!587 = !DILocation(line: 223, column: 17, scope: !574)
!588 = !DILocation(line: 223, column: 3, scope: !574)
!589 = !DILocation(line: 230, column: 3, scope: !574)
!590 = !DILocation(line: 224, column: 5, scope: !591)
!591 = distinct !DILexicalBlock(scope: !574, file: !3, line: 223, column: 24)
!592 = !DILocation(line: 224, column: 23, scope: !591)
!593 = !DILocation(line: 225, column: 14, scope: !591)
!594 = distinct !{!594, !588, !595, !75, !76}
!595 = !DILocation(line: 226, column: 3, scope: !574)
!596 = !DILocation(line: 230, column: 10, scope: !574)
!597 = !DILocation(line: 230, column: 36, scope: !574)
!598 = distinct !{!598, !589, !599, !75, !76}
!599 = !DILocation(line: 231, column: 42, scope: !574)
!600 = !DILocation(line: 234, column: 29, scope: !574)
!601 = !DILocation(line: 237, column: 15, scope: !574)
!602 = !DILocation(line: 237, column: 26, scope: !574)
!603 = !DILocation(line: 237, column: 25, scope: !574)
!604 = !DILocation(line: 237, column: 3, scope: !574)
!605 = !DILocation(line: 237, column: 13, scope: !574)
!606 = !DILocation(line: 238, column: 18, scope: !574)
!607 = !DILocation(line: 238, column: 15, scope: !574)
!608 = !DILocation(line: 241, column: 25, scope: !574)
!609 = !DILocation(line: 241, column: 3, scope: !574)
!610 = !DILocation(line: 241, column: 23, scope: !574)
!611 = !DILocation(line: 244, column: 10, scope: !574)
!612 = !DILocation(line: 244, column: 34, scope: !574)
!613 = !DILocation(line: 244, column: 3, scope: !574)
!614 = !DILocation(line: 246, column: 31, scope: !615)
!615 = distinct !DILexicalBlock(scope: !574, file: !3, line: 244, column: 41)
!616 = !DILocation(line: 246, column: 29, scope: !615)
!617 = !DILocation(line: 247, column: 9, scope: !618)
!618 = distinct !DILexicalBlock(scope: !615, file: !3, line: 247, column: 9)
!619 = !DILocation(line: 247, column: 22, scope: !618)
!620 = !DILocation(line: 247, column: 9, scope: !615)
!621 = !DILocation(line: 248, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !3, line: 247, column: 32)
!623 = !DILocation(line: 248, column: 34, scope: !622)
!624 = !DILocation(line: 249, column: 25, scope: !622)
!625 = !DILocation(line: 249, column: 7, scope: !622)
!626 = !DILocation(line: 249, column: 23, scope: !622)
!627 = !DILocation(line: 250, column: 7, scope: !622)
!628 = !DILocation(line: 250, column: 30, scope: !622)
!629 = !DILocation(line: 251, column: 5, scope: !622)
!630 = distinct !{!630, !613, !631, !75, !76}
!631 = !DILocation(line: 252, column: 3, scope: !574)
!632 = !DILocation(line: 255, column: 17, scope: !574)
!633 = !DILocation(line: 256, column: 25, scope: !574)
!634 = !DILocation(line: 256, column: 3, scope: !574)
!635 = !DILocation(line: 256, column: 23, scope: !574)
!636 = !DILocation(line: 257, column: 7, scope: !574)
!637 = !DILocation(line: 258, column: 9, scope: !638)
!638 = distinct !DILexicalBlock(scope: !574, file: !3, line: 258, column: 7)
!639 = !DILocation(line: 258, column: 7, scope: !574)
!640 = !DILocation(line: 261, column: 5, scope: !641)
!641 = distinct !DILexicalBlock(scope: !638, file: !3, line: 260, column: 8)
!642 = !DILocation(line: 261, column: 12, scope: !641)
!643 = !DILocation(line: 261, column: 28, scope: !641)
!644 = distinct !{!644, !640, !645, !75, !76}
!645 = !DILocation(line: 262, column: 25, scope: !641)
!646 = !DILocation(line: 0, scope: !638)
!647 = !DILocation(line: 265, column: 1, scope: !574)
!648 = distinct !DISubprogram(name: "PathLength", scope: !3, file: !3, line: 341, type: !649, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !651)
!649 = !DISubroutineType(types: !650)
!650 = !{!7, !6, !6, !6}
!651 = !{!652, !653, !654, !655}
!652 = !DILocalVariable(name: "cols", arg: 1, scope: !648, file: !3, line: 341, type: !6)
!653 = !DILocalVariable(name: "rows", arg: 2, scope: !648, file: !3, line: 341, type: !6)
!654 = !DILocalVariable(name: "target_panel_size", arg: 3, scope: !648, file: !3, line: 341, type: !6)
!655 = !DILocalVariable(name: "path_length", scope: !648, file: !3, line: 343, type: !7)
!656 = !DILocation(line: 0, scope: !648)
!657 = !DILocation(line: 345, column: 24, scope: !648)
!658 = !DILocation(line: 345, column: 40, scope: !648)
!659 = !DILocation(line: 345, column: 34, scope: !648)
!660 = !DILocation(line: 345, column: 43, scope: !648)
!661 = !DILocation(line: 345, column: 29, scope: !648)
!662 = !DILocation(line: 345, column: 18, scope: !648)
!663 = !DILocation(line: 345, column: 17, scope: !648)
!664 = !DILocation(line: 346, column: 18, scope: !648)
!665 = !DILocation(line: 346, column: 15, scope: !648)
!666 = !DILocation(line: 348, column: 3, scope: !648)
