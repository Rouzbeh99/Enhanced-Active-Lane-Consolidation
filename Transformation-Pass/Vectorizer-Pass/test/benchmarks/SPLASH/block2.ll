; ModuleID = 'block2.c'
source_filename = "block2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BMatrix = type { i64, ptr, ptr, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, i64, ptr, ptr }
%struct.SMatrix = type { i64, i64, ptr, ptr, ptr, ptr }
%struct.Block = type { i64, i64, i64, i64, i64, i64, i64, double, ptr, ptr, ptr, ptr }
%union.Entry = type { ptr }

@LB = dso_local global %struct.BMatrix zeroinitializer, align 8, !dbg !0
@domains = external local_unnamed_addr global ptr, align 8
@proc_domains = external local_unnamed_addr global ptr, align 8
@P = external local_unnamed_addr global i64, align 8
@node = external local_unnamed_addr global ptr, align 8
@postpass_partition_size = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Supers: \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Blocks: \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%ld partitions\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%ld partitions, %ld blocks\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Block %ld has bad structure\0A\00", align 1
@nz = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"Col %ld: %ld vs %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"%ld,%ld: %ld\0A\00", align 1
@T = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"%ld: %ld  \00", align 1
@P_dimi = dso_local local_unnamed_addr global i64 0, align 8, !dbg !39
@P_dimj = dso_local local_unnamed_addr global i64 0, align 8, !dbg !41
@.str.13 = private unnamed_addr constant [31 x i8] c"Processor array is %ld by %ld\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"No redistribution\00", align 1
@str.15 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@str.16 = private unnamed_addr constant [11 x i8] c"Overflow!!\00", align 1
@str.17 = private unnamed_addr constant [17 x i8] c"Parent not found\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @CreateBlockedMatrix2(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M, i64 noundef %block_ub, ptr nocapture noundef readonly %T, ptr nocapture noundef readonly %firstchild, ptr nocapture noundef readonly %child, ptr nocapture noundef readonly %PERM, ptr nocapture noundef readonly %INVP, ptr noundef %domain, ptr nocapture noundef %partition) local_unnamed_addr #0 !dbg !71 {
entry:
  %n_nz = alloca i64, align 8
  call void @llvm.dbg.declare(metadata ptr %M, metadata !84, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i64 %block_ub, metadata !85, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata ptr %T, metadata !86, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata ptr %firstchild, metadata !87, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata ptr %child, metadata !88, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata ptr %PERM, metadata !89, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata ptr %INVP, metadata !90, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata ptr %domain, metadata !91, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata ptr %partition, metadata !92, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n_nz) #20, !dbg !109
  %0 = load i64, ptr %M, align 8, !dbg !110
  store i64 %0, ptr @LB, align 8, !dbg !111
  store ptr %domain, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !112
  %1 = load ptr, ptr @domains, align 8, !dbg !113
  store ptr %1, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 11), align 8, !dbg !114
  %2 = load ptr, ptr @proc_domains, align 8, !dbg !115
  store ptr %2, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 13), align 8, !dbg !116
  %3 = load i64, ptr @P, align 8, !dbg !117
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3, !dbg !118
  %4 = load i64, ptr %arrayidx, align 8, !dbg !118
  store i64 %4, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !119
  %add = add nsw i64 %block_ub, 20, !dbg !120
  store i64 %add, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 5), align 8, !dbg !121
  %mul = shl i64 %4, 3, !dbg !122
  %call = tail call ptr @MyMalloc(i64 noundef %mul, i64 noundef 888) #20, !dbg !123
  store ptr %call, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 16), align 8, !dbg !124
  call void @llvm.dbg.value(metadata i64 0, metadata !93, metadata !DIExpression()), !dbg !108
  %5 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !125
  %cmp437 = icmp sgt i64 %5, 0, !dbg !128
  br i1 %cmp437, label %for.body.preheader, label %for.end, !dbg !129

for.body.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !93, metadata !DIExpression()), !dbg !108
  store ptr null, ptr %call, align 8, !dbg !130
  call void @llvm.dbg.value(metadata i64 1, metadata !93, metadata !DIExpression()), !dbg !108
  %6 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !125
  %cmp551 = icmp sgt i64 %6, 1, !dbg !128
  br i1 %cmp551, label %for.body.for.body_crit_edge, label %for.end, !dbg !129, !llvm.loop !131

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %inc552 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 16), align 8, !dbg !135
  call void @llvm.dbg.value(metadata i64 %inc552, metadata !93, metadata !DIExpression()), !dbg !108
  %arrayidx1 = getelementptr inbounds ptr, ptr %.pre, i64 %inc552, !dbg !136
  store ptr null, ptr %arrayidx1, align 8, !dbg !130
  %inc = add nuw nsw i64 %inc552, 1, !dbg !137
  call void @llvm.dbg.value(metadata i64 %inc, metadata !93, metadata !DIExpression()), !dbg !108
  %7 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !125
  %cmp = icmp slt i64 %inc, %7, !dbg !128
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end, !dbg !129, !llvm.loop !131

for.end:                                          ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %entry
  %.lcssa436 = phi i64 [ %5, %entry ], [ %6, %for.body.preheader ], [ %7, %for.body.for.body_crit_edge ], !dbg !125
  %8 = load i64, ptr @LB, align 8, !dbg !138
  %add2 = add nsw i64 %8, %.lcssa436, !dbg !139
  %add3 = shl i64 %add2, 3, !dbg !140
  %mul4 = add i64 %add3, 8, !dbg !140
  %call5 = tail call ptr @MyMalloc(i64 noundef %mul4, i64 noundef 888) #20, !dbg !141
  store ptr %call5, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !142
  %9 = load i64, ptr @LB, align 8, !dbg !143
  %10 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !144
  %add6 = add nsw i64 %10, %9, !dbg !145
  %add7 = shl i64 %add6, 3, !dbg !146
  %mul8 = add i64 %add7, 8, !dbg !146
  %call9 = tail call ptr @MyMalloc(i64 noundef %mul8, i64 noundef 888) #20, !dbg !147
  store ptr %call9, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !148
  %11 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 5), align 8, !dbg !149
  %mul10 = shl i64 %11, 3, !dbg !150
  %call11 = tail call noalias ptr @malloc(i64 noundef %mul10) #21, !dbg !151
  store ptr %call11, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !152
  tail call void @MigrateMem(ptr noundef %call11, i64 noundef %mul10, i64 noundef 888) #20, !dbg !153
  %12 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 5), align 8, !dbg !154
  %mul13 = shl i64 %12, 3, !dbg !155
  %call14 = tail call noalias ptr @malloc(i64 noundef %mul13) #21, !dbg !156
  store ptr %call14, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !157
  tail call void @MigrateMem(ptr noundef %call14, i64 noundef %mul13, i64 noundef 888) #20, !dbg !158
  %13 = load i64, ptr @P, align 8, !dbg !159
  tail call void @FindMachineDimensions(i64 noundef %13), !dbg !160
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()), !dbg !108
  %cmp18445 = icmp sgt i64 %0, 0, !dbg !161
  br i1 %cmp18445, label %for.body19, label %for.end47.thread, !dbg !164

for.end47.thread:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()), !dbg !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), i8 0, i64 16, i1 false), !dbg !165
  br label %for.cond81.preheader, !dbg !166

for.body19:                                       ; preds = %for.end, %for.inc44
  %j.0446 = phi i64 [ %add46, %for.inc44 ], [ 0, %for.end ]
  call void @llvm.dbg.value(metadata i64 %j.0446, metadata !94, metadata !DIExpression()), !dbg !108
  %14 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !167
  %arrayidx20 = getelementptr inbounds i64, ptr %14, i64 %j.0446, !dbg !170
  %15 = load i64, ptr %arrayidx20, align 8, !dbg !170
  %tobool.not = icmp eq i64 %15, 0, !dbg !170
  br i1 %tobool.not, label %if.then, label %for.inc44, !dbg !171

if.then:                                          ; preds = %for.body19
  %16 = load ptr, ptr @node, align 8, !dbg !172
  %arrayidx21 = getelementptr inbounds i64, ptr %16, i64 %j.0446, !dbg !172
  %17 = load i64, ptr %arrayidx21, align 8, !dbg !172
  %18 = load i64, ptr @postpass_partition_size, align 8, !dbg !174
  %call22 = tail call i64 @FindNumPartitions(i64 noundef %17, i64 noundef %18), !dbg !175
  call void @llvm.dbg.value(metadata i64 %call22, metadata !103, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %j.0446, metadata !106, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 0, metadata !105, metadata !DIExpression()), !dbg !108
  %cmp24442 = icmp sgt i64 %call22, 0, !dbg !176
  br i1 %cmp24442, label %for.body25, label %for.inc44, !dbg !179

for.cond23.loopexit:                              ; preds = %for.body35, %for.body25
  call void @llvm.dbg.value(metadata i64 %add33, metadata !106, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %add27, metadata !105, metadata !DIExpression()), !dbg !108
  %exitcond.not = icmp eq i64 %add27, %call22, !dbg !176
  br i1 %exitcond.not, label %for.inc44, label %for.cond23.loopexit.for.body25_crit_edge, !dbg !179, !llvm.loop !180

for.cond23.loopexit.for.body25_crit_edge:         ; preds = %for.cond23.loopexit
  %.pre516 = load ptr, ptr @node, align 8, !dbg !182
  %arrayidx26.phi.trans.insert = getelementptr inbounds i64, ptr %.pre516, i64 %j.0446
  %.pre517 = load i64, ptr %arrayidx26.phi.trans.insert, align 8, !dbg !182
  br label %for.body25, !dbg !179

for.body25:                                       ; preds = %if.then, %for.cond23.loopexit.for.body25_crit_edge
  %19 = phi i64 [ %.pre517, %for.cond23.loopexit.for.body25_crit_edge ], [ %17, %if.then ], !dbg !182
  %current.0444 = phi i64 [ %add33, %for.cond23.loopexit.for.body25_crit_edge ], [ %j.0446, %if.then ]
  %piece.0443 = phi i64 [ %add27, %for.cond23.loopexit.for.body25_crit_edge ], [ 0, %if.then ]
  call void @llvm.dbg.value(metadata i64 %current.0444, metadata !106, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %piece.0443, metadata !105, metadata !DIExpression()), !dbg !108
  %add27 = add nuw nsw i64 %piece.0443, 1, !dbg !184
  %mul28 = mul nsw i64 %19, %add27, !dbg !185
  %div = sdiv i64 %mul28, %call22, !dbg !186
  %mul30 = mul nsw i64 %19, %piece.0443, !dbg !187
  %div31 = sdiv i64 %mul30, %call22, !dbg !188
  %sub = sub nsw i64 %div, %div31, !dbg !189
  call void @llvm.dbg.value(metadata i64 %sub, metadata !104, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %current.0444, metadata !95, metadata !DIExpression()), !dbg !108
  %add33 = add nsw i64 %sub, %current.0444
  %cmp34439 = icmp sgt i64 %sub, 0, !dbg !190
  br i1 %cmp34439, label %for.body35, label %for.cond23.loopexit, !dbg !193

for.body35:                                       ; preds = %for.body25, %for.body35
  %k.0440 = phi i64 [ %inc38, %for.body35 ], [ %current.0444, %for.body25 ]
  call void @llvm.dbg.value(metadata i64 %k.0440, metadata !95, metadata !DIExpression()), !dbg !108
  %arrayidx36 = getelementptr inbounds i64, ptr %partition, i64 %k.0440, !dbg !194
  store i64 %current.0444, ptr %arrayidx36, align 8, !dbg !196
  %inc38 = add nsw i64 %k.0440, 1, !dbg !197
  call void @llvm.dbg.value(metadata i64 %inc38, metadata !95, metadata !DIExpression()), !dbg !108
  %cmp34 = icmp slt i64 %inc38, %add33, !dbg !190
  br i1 %cmp34, label %for.body35, label %for.cond23.loopexit, !dbg !193, !llvm.loop !198

for.inc44:                                        ; preds = %for.cond23.loopexit, %if.then, %for.body19
  %20 = load ptr, ptr @node, align 8, !dbg !200
  %arrayidx45 = getelementptr inbounds i64, ptr %20, i64 %j.0446, !dbg !200
  %21 = load i64, ptr %arrayidx45, align 8, !dbg !200
  %add46 = add nsw i64 %21, %j.0446, !dbg !201
  call void @llvm.dbg.value(metadata i64 %add46, metadata !94, metadata !DIExpression()), !dbg !108
  %cmp18 = icmp slt i64 %add46, %0, !dbg !161
  br i1 %cmp18, label %for.body19, label %for.end47, !dbg !164, !llvm.loop !202

for.end47:                                        ; preds = %for.inc44
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()), !dbg !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), i8 0, i64 16, i1 false), !dbg !165
  br i1 %cmp18445, label %while.body, label %for.cond81.preheader, !dbg !166

for.cond81.preheader:                             ; preds = %if.end79, %for.end47.thread, %for.end47
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()), !dbg !108
  %22 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !204
  %cmp82455 = icmp sgt i64 %22, 0, !dbg !207
  br i1 %cmp82455, label %for.body83, label %for.end88, !dbg !208

while.body:                                       ; preds = %for.end47, %if.end79
  %j.1453 = phi i64 [ %j.2, %if.end79 ], [ 0, %for.end47 ]
  call void @llvm.dbg.value(metadata i64 %j.1453, metadata !94, metadata !DIExpression()), !dbg !108
  %23 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !209
  %arrayidx50 = getelementptr inbounds i64, ptr %23, i64 %j.1453, !dbg !212
  %24 = load i64, ptr %arrayidx50, align 8, !dbg !212
  %tobool51.not = icmp eq i64 %24, 0, !dbg !212
  br i1 %tobool51.not, label %while.cond55, label %if.then52, !dbg !213

if.then52:                                        ; preds = %while.body
  %25 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !214
  %arrayidx53 = getelementptr inbounds i64, ptr %25, i64 %j.1453, !dbg !216
  store i64 1, ptr %arrayidx53, align 8, !dbg !217
  %inc54 = add nsw i64 %j.1453, 1, !dbg !218
  call void @llvm.dbg.value(metadata i64 %inc54, metadata !94, metadata !DIExpression()), !dbg !108
  br label %if.end79, !dbg !219

while.cond55:                                     ; preds = %while.body, %while.cond55
  %k.1 = phi i64 [ %inc61, %while.cond55 ], [ %j.1453, %while.body ], !dbg !220
  call void @llvm.dbg.value(metadata i64 %k.1, metadata !95, metadata !DIExpression()), !dbg !108
  %arrayidx56 = getelementptr inbounds i64, ptr %partition, i64 %k.1, !dbg !222
  %26 = load i64, ptr %arrayidx56, align 8, !dbg !222
  %cmp57 = icmp eq i64 %26, %j.1453, !dbg !223
  %cmp59 = icmp slt i64 %k.1, %0
  %or.cond = select i1 %cmp57, i1 %cmp59, i1 false, !dbg !224
  %inc61 = add nsw i64 %k.1, 1, !dbg !225
  call void @llvm.dbg.value(metadata i64 %inc61, metadata !95, metadata !DIExpression()), !dbg !108
  br i1 %or.cond, label %while.cond55, label %while.end, !dbg !224, !llvm.loop !226

while.end:                                        ; preds = %while.cond55
  %sub62 = sub nsw i64 %k.1, %j.1453, !dbg !228
  %27 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !229
  %arrayidx63 = getelementptr inbounds i64, ptr %27, i64 %j.1453, !dbg !230
  store i64 %sub62, ptr %arrayidx63, align 8, !dbg !231
  call void @llvm.dbg.value(metadata i64 %j.1453, metadata !93, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  %i.1449 = add nsw i64 %j.1453, 1, !dbg !232
  call void @llvm.dbg.value(metadata i64 %i.1449, metadata !93, metadata !DIExpression()), !dbg !108
  %cmp66450 = icmp slt i64 %i.1449, %k.1, !dbg !234
  br i1 %cmp66450, label %for.body67, label %for.end72, !dbg !236

for.body67:                                       ; preds = %while.end, %for.body67
  %i.1451 = phi i64 [ %i.1, %for.body67 ], [ %i.1449, %while.end ]
  %sub68 = sub nsw i64 %j.1453, %i.1451, !dbg !237
  %28 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !238
  %arrayidx69 = getelementptr inbounds i64, ptr %28, i64 %i.1451, !dbg !239
  store i64 %sub68, ptr %arrayidx69, align 8, !dbg !240
  call void @llvm.dbg.value(metadata i64 %i.1451, metadata !93, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  %i.1 = add nsw i64 %i.1451, 1, !dbg !232
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !93, metadata !DIExpression()), !dbg !108
  %exitcond514.not = icmp eq i64 %i.1, %k.1, !dbg !234
  br i1 %exitcond514.not, label %for.end72, label %for.body67, !dbg !236, !llvm.loop !241

for.end72:                                        ; preds = %for.body67, %while.end
  %29 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !243
  %arrayidx73 = getelementptr inbounds i64, ptr %29, i64 %j.1453, !dbg !245
  %30 = load i64, ptr %arrayidx73, align 8, !dbg !245
  %31 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 15), align 8, !dbg !246
  %cmp74 = icmp sgt i64 %30, %31, !dbg !247
  br i1 %cmp74, label %if.then75, label %if.end77, !dbg !248

if.then75:                                        ; preds = %for.end72
  store i64 %30, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 15), align 8, !dbg !249
  br label %if.end77, !dbg !250

if.end77:                                         ; preds = %if.then75, %for.end72
  %32 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), align 8, !dbg !251
  %inc78 = add nsw i64 %32, 1, !dbg !251
  store i64 %inc78, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), align 8, !dbg !251
  call void @llvm.dbg.value(metadata i64 %k.1, metadata !94, metadata !DIExpression()), !dbg !108
  br label %if.end79

if.end79:                                         ; preds = %if.end77, %if.then52
  %j.2 = phi i64 [ %inc54, %if.then52 ], [ %k.1, %if.end77 ], !dbg !252
  call void @llvm.dbg.value(metadata i64 %j.2, metadata !94, metadata !DIExpression()), !dbg !108
  %cmp49 = icmp slt i64 %j.2, %0, !dbg !253
  br i1 %cmp49, label %while.body, label %for.cond81.preheader, !dbg !166, !llvm.loop !254

for.body83:                                       ; preds = %for.cond81.preheader, %for.body83
  %j.3456 = phi i64 [ %inc87, %for.body83 ], [ 0, %for.cond81.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.3456, metadata !94, metadata !DIExpression()), !dbg !108
  %33 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !256
  %34 = load i64, ptr @LB, align 8, !dbg !257
  %add84 = add nsw i64 %34, %j.3456, !dbg !258
  %arrayidx85 = getelementptr inbounds i64, ptr %33, i64 %add84, !dbg !259
  store i64 1, ptr %arrayidx85, align 8, !dbg !260
  %inc87 = add nuw nsw i64 %j.3456, 1, !dbg !261
  call void @llvm.dbg.value(metadata i64 %inc87, metadata !94, metadata !DIExpression()), !dbg !108
  %35 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !204
  %cmp82 = icmp slt i64 %inc87, %35, !dbg !207
  br i1 %cmp82, label %for.body83, label %for.end88, !dbg !208, !llvm.loop !262

for.end88:                                        ; preds = %for.body83, %for.cond81.preheader
  %.lcssa435 = phi i64 [ %22, %for.cond81.preheader ], [ %35, %for.body83 ], !dbg !204
  %36 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), align 8, !dbg !264
  %cmp89 = icmp eq i64 %36, 0, !dbg !266
  br i1 %cmp89, label %if.then90, label %if.end91, !dbg !267

if.then90:                                        ; preds = %for.end88
  store i64 1, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), align 8, !dbg !268
  br label %if.end91, !dbg !269

if.end91:                                         ; preds = %if.then90, %for.end88
  %37 = load i64, ptr @LB, align 8, !dbg !270
  %add92 = add nsw i64 %37, %.lcssa435, !dbg !271
  %mul93 = shl i64 %add92, 3, !dbg !272
  %call94 = tail call ptr @MyMalloc(i64 noundef %mul93, i64 noundef 888) #20, !dbg !273
  store ptr %call94, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 7), align 8, !dbg !274
  tail call void @ComputePartitionNumbering(ptr noundef %call94), !dbg !275
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()), !dbg !108
  %38 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !276
  %cmp96458 = icmp sgt i64 %38, 0, !dbg !279
  br i1 %cmp96458, label %for.body97, label %for.end102, !dbg !280

for.body97:                                       ; preds = %if.end91, %for.body97
  %j.4459 = phi i64 [ %inc101, %for.body97 ], [ 0, %if.end91 ]
  call void @llvm.dbg.value(metadata i64 %j.4459, metadata !94, metadata !DIExpression()), !dbg !108
  %39 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), align 8, !dbg !281
  %rem = srem i64 %j.4459, %39, !dbg !282
  %40 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 7), align 8, !dbg !283
  %41 = load i64, ptr @LB, align 8, !dbg !284
  %add98 = add nsw i64 %41, %j.4459, !dbg !285
  %arrayidx99 = getelementptr inbounds i64, ptr %40, i64 %add98, !dbg !286
  store i64 %rem, ptr %arrayidx99, align 8, !dbg !287
  %inc101 = add nuw nsw i64 %j.4459, 1, !dbg !288
  call void @llvm.dbg.value(metadata i64 %inc101, metadata !94, metadata !DIExpression()), !dbg !108
  %42 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !276
  %cmp96 = icmp slt i64 %inc101, %42, !dbg !279
  br i1 %cmp96, label %for.body97, label %for.end102, !dbg !280, !llvm.loop !289

for.end102:                                       ; preds = %for.body97, %if.end91
  %43 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), align 8, !dbg !291
  %mul103 = shl i64 %43, 3, !dbg !292
  %call104 = tail call ptr @MyMalloc(i64 noundef %mul103, i64 noundef 888) #20, !dbg !293
  store ptr %call104, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 8), align 8, !dbg !294
  %44 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), align 8, !dbg !295
  %mul105 = shl i64 %44, 3, !dbg !296
  %call106 = tail call ptr @MyMalloc(i64 noundef %mul105, i64 noundef 888) #20, !dbg !297
  store ptr %call106, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 9), align 8, !dbg !298
  call void @llvm.dbg.value(metadata i64 0, metadata !93, metadata !DIExpression()), !dbg !108
  %45 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), align 8, !dbg !299
  %cmp108460 = icmp sgt i64 %45, 0, !dbg !302
  br i1 %cmp108460, label %for.body109.preheader, label %for.end114, !dbg !303

for.body109.preheader:                            ; preds = %for.end102
  call void @llvm.dbg.value(metadata i64 0, metadata !93, metadata !DIExpression()), !dbg !108
  store i64 0, ptr %call106, align 8, !dbg !304
  %46 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 8), align 8, !dbg !305
  store i64 0, ptr %46, align 8, !dbg !306
  call void @llvm.dbg.value(metadata i64 1, metadata !93, metadata !DIExpression()), !dbg !108
  %47 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), align 8, !dbg !299
  %cmp108553 = icmp sgt i64 %47, 1, !dbg !302
  br i1 %cmp108553, label %for.body109.for.body109_crit_edge, label %for.end114, !dbg !303, !llvm.loop !307

for.body109.for.body109_crit_edge:                ; preds = %for.body109.preheader, %for.body109.for.body109_crit_edge
  %inc113554 = phi i64 [ %inc113, %for.body109.for.body109_crit_edge ], [ 1, %for.body109.preheader ]
  %.pre518 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 9), align 8, !dbg !309
  call void @llvm.dbg.value(metadata i64 %inc113554, metadata !93, metadata !DIExpression()), !dbg !108
  %arrayidx110 = getelementptr inbounds i64, ptr %.pre518, i64 %inc113554, !dbg !310
  store i64 %inc113554, ptr %arrayidx110, align 8, !dbg !304
  %48 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 8), align 8, !dbg !305
  %arrayidx111 = getelementptr inbounds i64, ptr %48, i64 %inc113554, !dbg !311
  store i64 %inc113554, ptr %arrayidx111, align 8, !dbg !306
  %inc113 = add nuw nsw i64 %inc113554, 1, !dbg !312
  call void @llvm.dbg.value(metadata i64 %inc113, metadata !93, metadata !DIExpression()), !dbg !108
  %49 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), align 8, !dbg !299
  %cmp108 = icmp slt i64 %inc113, %49, !dbg !302
  br i1 %cmp108, label %for.body109.for.body109_crit_edge, label %for.end114, !dbg !303, !llvm.loop !307

for.end114:                                       ; preds = %for.body109.for.body109_crit_edge, %for.body109.preheader, %for.end102
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !313
  %call116 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1), !dbg !314
  %50 = load ptr, ptr @node, align 8, !dbg !315
  tail call void @DumpSizes(ptr noundef nonnull byval(%struct.BMatrix) align 8 @LB, ptr noundef %domain, ptr noundef %50), !dbg !316
  %call117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2), !dbg !317
  %51 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !318
  tail call void @DumpSizes(ptr noundef nonnull byval(%struct.BMatrix) align 8 @LB, ptr noundef %domain, ptr noundef %51), !dbg !319
  %52 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), align 8, !dbg !320
  %call118 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i64 noundef %52), !dbg !321
  %mul120 = shl i64 %0, 3, !dbg !322
  %call121 = tail call noalias ptr @malloc(i64 noundef %mul120) #21, !dbg !323
  call void @llvm.dbg.value(metadata ptr %call121, metadata !100, metadata !DIExpression()), !dbg !108
  %call124 = tail call noalias ptr @malloc(i64 noundef %mul120) #21, !dbg !324
  call void @llvm.dbg.value(metadata ptr %call124, metadata !101, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 0, metadata !93, metadata !DIExpression()), !dbg !108
  br i1 %cmp18445, label %for.body128.preheader, label %for.end132, !dbg !325

for.body128.preheader:                            ; preds = %for.end114
  call void @llvm.memset.p0.i64(ptr align 8 %call121, i8 0, i64 %mul120, i1 false), !dbg !327
  call void @llvm.dbg.value(metadata i32 undef, metadata !93, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  br label %for.end132, !dbg !329

for.end132:                                       ; preds = %for.body128.preheader, %for.end114
  %53 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !329
  store i64 0, ptr %53, align 8, !dbg !330
  call void @llvm.dbg.value(metadata i64 0, metadata !98, metadata !DIExpression()), !dbg !108
  %54 = load i64, ptr @LB, align 8, !dbg !331
  %cmp135473 = icmp sgt i64 %54, 0, !dbg !334
  br i1 %cmp135473, label %for.body136, label %for.cond167.preheader, !dbg !335

for.cond167.preheader:                            ; preds = %for.inc163, %for.end132
  %55 = phi i64 [ %54, %for.end132 ], [ %70, %for.inc163 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()), !dbg !108
  %56 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !336
  %cmp168477 = icmp sgt i64 %56, 0, !dbg !339
  br i1 %cmp168477, label %for.body169, label %for.end172, !dbg !340

for.body136:                                      ; preds = %for.end132, %for.inc163
  %super.0474 = phi i64 [ %add165, %for.inc163 ], [ 0, %for.end132 ]
  call void @llvm.dbg.value(metadata i64 %super.0474, metadata !98, metadata !DIExpression()), !dbg !108
  %arrayidx137 = getelementptr inbounds i64, ptr %domain, i64 %super.0474, !dbg !341
  %57 = load i64, ptr %arrayidx137, align 8, !dbg !341
  %tobool138.not = icmp eq i64 %57, 0, !dbg !341
  br i1 %tobool138.not, label %for.cond141.preheader, label %if.then139, !dbg !343

for.cond141.preheader:                            ; preds = %for.body136
  call void @llvm.dbg.value(metadata i64 %super.0474, metadata !94, metadata !DIExpression()), !dbg !108
  %58 = load ptr, ptr @node, align 8, !dbg !344
  %arrayidx142469 = getelementptr inbounds i64, ptr %58, i64 %super.0474, !dbg !344
  %59 = load i64, ptr %arrayidx142469, align 8, !dbg !344
  %cmp144471 = icmp sgt i64 %59, 0, !dbg !348
  br i1 %cmp144471, label %for.body145, label %for.inc163, !dbg !349

if.then139:                                       ; preds = %for.body136
  call void @llvm.dbg.value(metadata ptr %n_nz, metadata !99, metadata !DIExpression(DW_OP_deref)), !dbg !108
  call void @FindSuperStructure(ptr noundef nonnull byval(%struct.SMatrix) align 8 %M, i64 noundef %super.0474, ptr noundef %PERM, ptr noundef %INVP, ptr noundef %firstchild, ptr noundef %child, ptr noundef %call121, ptr noundef %call124, ptr noundef nonnull %n_nz), !dbg !350
  %60 = load i64, ptr %n_nz, align 8, !dbg !352
  call void @llvm.dbg.value(metadata i64 %60, metadata !99, metadata !DIExpression()), !dbg !108
  tail call void @FindDomStructure(i64 noundef %super.0474, ptr noundef %call124, i64 noundef %60), !dbg !353
  %.pre519 = load ptr, ptr @node, align 8, !dbg !354
  %arrayidx164.phi.trans.insert = getelementptr inbounds i64, ptr %.pre519, i64 %super.0474
  %.pre520 = load i64, ptr %arrayidx164.phi.trans.insert, align 8, !dbg !354
  br label %for.inc163, !dbg !355

for.cond141.loopexit:                             ; preds = %for.body151, %for.body145
  %add149.lcssa = phi i64 [ %add149465, %for.body145 ], [ %add149, %for.body151 ], !dbg !356
  call void @llvm.dbg.value(metadata i64 %add149.lcssa, metadata !94, metadata !DIExpression()), !dbg !108
  %61 = load ptr, ptr @node, align 8, !dbg !344
  %arrayidx142 = getelementptr inbounds i64, ptr %61, i64 %super.0474, !dbg !344
  %62 = load i64, ptr %arrayidx142, align 8, !dbg !344
  %add143 = add nsw i64 %62, %super.0474, !dbg !360
  %cmp144 = icmp slt i64 %add149.lcssa, %add143, !dbg !348
  br i1 %cmp144, label %for.body145, label %for.inc163, !dbg !349, !llvm.loop !361

for.body145:                                      ; preds = %for.cond141.preheader, %for.cond141.loopexit
  %j.5472 = phi i64 [ %add149.lcssa, %for.cond141.loopexit ], [ %super.0474, %for.cond141.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.5472, metadata !94, metadata !DIExpression()), !dbg !108
  tail call void @FindBlStructure(ptr noundef nonnull byval(%struct.SMatrix) align 8 %M, i64 noundef %j.5472, ptr noundef %PERM, ptr noundef %INVP, ptr noundef %firstchild, ptr noundef %child, ptr noundef %call121, ptr noundef %call124), !dbg !363
  call void @llvm.dbg.value(metadata i64 %j.5472, metadata !93, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  %63 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !364
  %arrayidx148464 = getelementptr inbounds i64, ptr %63, i64 %j.5472, !dbg !365
  %64 = load i64, ptr %arrayidx148464, align 8, !dbg !365
  %add149465 = add nsw i64 %64, %j.5472, !dbg !356
  %cmp150466 = icmp sgt i64 %64, 1, !dbg !366
  br i1 %cmp150466, label %for.body151.preheader, label %for.cond141.loopexit, !dbg !367

for.body151.preheader:                            ; preds = %for.body145
  %add146 = add nsw i64 %j.5472, 1, !dbg !368
  call void @llvm.dbg.value(metadata i64 %add146, metadata !93, metadata !DIExpression()), !dbg !108
  br label %for.body151, !dbg !367

for.body151:                                      ; preds = %for.body151.preheader, %for.body151
  %i.4467 = phi i64 [ %add153, %for.body151 ], [ %add146, %for.body151.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.4467, metadata !93, metadata !DIExpression()), !dbg !108
  %65 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !369
  %arrayidx152 = getelementptr inbounds i64, ptr %65, i64 %i.4467, !dbg !370
  %66 = load i64, ptr %arrayidx152, align 8, !dbg !370
  %add153 = add nsw i64 %i.4467, 1, !dbg !371
  %arrayidx154 = getelementptr inbounds i64, ptr %65, i64 %add153, !dbg !372
  store i64 %66, ptr %arrayidx154, align 8, !dbg !373
  call void @llvm.dbg.value(metadata i64 %add153, metadata !93, metadata !DIExpression()), !dbg !108
  %67 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !364
  %arrayidx148 = getelementptr inbounds i64, ptr %67, i64 %j.5472, !dbg !365
  %68 = load i64, ptr %arrayidx148, align 8, !dbg !365
  %add149 = add nsw i64 %68, %j.5472, !dbg !356
  %cmp150 = icmp slt i64 %add153, %add149, !dbg !366
  br i1 %cmp150, label %for.body151, label %for.cond141.loopexit, !dbg !367, !llvm.loop !374

for.inc163:                                       ; preds = %for.cond141.loopexit, %for.cond141.preheader, %if.then139
  %69 = phi i64 [ %59, %for.cond141.preheader ], [ %.pre520, %if.then139 ], [ %62, %for.cond141.loopexit ], !dbg !354
  %add165 = add nsw i64 %69, %super.0474, !dbg !376
  call void @llvm.dbg.value(metadata i64 %add165, metadata !98, metadata !DIExpression()), !dbg !108
  %70 = load i64, ptr @LB, align 8, !dbg !331
  %cmp135 = icmp slt i64 %add165, %70, !dbg !334
  br i1 %cmp135, label %for.body136, label %for.cond167.preheader, !dbg !335, !llvm.loop !377

for.body169:                                      ; preds = %for.cond167.preheader, %for.body169
  %j.6478 = phi i64 [ %inc171, %for.body169 ], [ 0, %for.cond167.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.6478, metadata !94, metadata !DIExpression()), !dbg !108
  tail call void @FindDummyDomainStructure(i64 noundef %j.6478), !dbg !379
  %inc171 = add nuw nsw i64 %j.6478, 1, !dbg !380
  call void @llvm.dbg.value(metadata i64 %inc171, metadata !94, metadata !DIExpression()), !dbg !108
  %71 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !336
  %cmp168 = icmp slt i64 %inc171, %71, !dbg !339
  br i1 %cmp168, label %for.body169, label %for.end172.loopexit, !dbg !340, !llvm.loop !381

for.end172.loopexit:                              ; preds = %for.body169
  %.pre521 = load i64, ptr @LB, align 8, !dbg !383
  br label %for.end172, !dbg !384

for.end172:                                       ; preds = %for.end172.loopexit, %for.cond167.preheader
  %72 = phi i64 [ %55, %for.cond167.preheader ], [ %.pre521, %for.end172.loopexit ], !dbg !383
  %.lcssa434 = phi i64 [ %56, %for.cond167.preheader ], [ %71, %for.end172.loopexit ], !dbg !336
  %73 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !384
  %add173 = add nsw i64 %72, %.lcssa434, !dbg !385
  %arrayidx174 = getelementptr inbounds i64, ptr %73, i64 %add173, !dbg !386
  %74 = load i64, ptr %arrayidx174, align 8, !dbg !386
  store i64 %74, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 4), align 8, !dbg !387
  tail call void @free(ptr noundef %call121) #20, !dbg !388
  tail call void @free(ptr noundef %call124) #20, !dbg !389
  %75 = load i64, ptr @P, align 8, !dbg !390
  tail call void @PlaceDomains(i64 noundef %75) #20, !dbg !391
  store i64 0, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 3), align 8, !dbg !392
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()), !dbg !108
  %76 = load i64, ptr @LB, align 8
  %cmp176480 = icmp sgt i64 %76, 0, !dbg !393
  br i1 %cmp176480, label %for.body177.lr.ph, label %for.cond191.preheader, !dbg !396

for.body177.lr.ph:                                ; preds = %for.end172
  %77 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8
  %78 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8
  %79 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8
  br label %for.body177, !dbg !396

for.cond191.preheader:                            ; preds = %for.inc187, %for.end172
  %80 = phi i64 [ 0, %for.end172 ], [ %87, %for.inc187 ]
  %81 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()), !dbg !108
  %cmp192483 = icmp sgt i64 %81, 0, !dbg !397
  br i1 %cmp192483, label %for.body193.lr.ph, label %for.end203, !dbg !400

for.body193.lr.ph:                                ; preds = %for.cond191.preheader
  %82 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8
  br label %for.body193, !dbg !400

for.body177:                                      ; preds = %for.body177.lr.ph, %for.inc187
  %83 = phi i64 [ 0, %for.body177.lr.ph ], [ %87, %for.inc187 ]
  %j.7481 = phi i64 [ 0, %for.body177.lr.ph ], [ %add189, %for.inc187 ]
  call void @llvm.dbg.value(metadata i64 %j.7481, metadata !94, metadata !DIExpression()), !dbg !108
  %arrayidx178 = getelementptr inbounds i64, ptr %77, i64 %j.7481, !dbg !401
  %84 = load i64, ptr %arrayidx178, align 8, !dbg !401
  %tobool179.not = icmp eq i64 %84, 0, !dbg !401
  br i1 %tobool179.not, label %if.then180, label %for.inc187, !dbg !403

if.then180:                                       ; preds = %for.body177
  %add181 = add nsw i64 %j.7481, 1, !dbg !404
  %arrayidx182 = getelementptr inbounds i64, ptr %78, i64 %add181, !dbg !405
  %85 = load i64, ptr %arrayidx182, align 8, !dbg !405
  %arrayidx183 = getelementptr inbounds i64, ptr %78, i64 %j.7481, !dbg !406
  %86 = load i64, ptr %arrayidx183, align 8, !dbg !406
  %sub184 = sub i64 %85, %86, !dbg !407
  %add185 = add nsw i64 %sub184, %83, !dbg !408
  store i64 %add185, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 3), align 8, !dbg !408
  br label %for.inc187, !dbg !409

for.inc187:                                       ; preds = %for.body177, %if.then180
  %87 = phi i64 [ %83, %for.body177 ], [ %add185, %if.then180 ]
  %arrayidx188 = getelementptr inbounds i64, ptr %79, i64 %j.7481, !dbg !410
  %88 = load i64, ptr %arrayidx188, align 8, !dbg !410
  %add189 = add nsw i64 %88, %j.7481, !dbg !411
  call void @llvm.dbg.value(metadata i64 %add189, metadata !94, metadata !DIExpression()), !dbg !108
  %cmp176 = icmp slt i64 %add189, %76, !dbg !393
  br i1 %cmp176, label %for.body177, label %for.cond191.preheader, !dbg !396, !llvm.loop !412

for.body193:                                      ; preds = %for.body193.lr.ph, %for.body193
  %89 = phi i64 [ %80, %for.body193.lr.ph ], [ %add200, %for.body193 ], !dbg !414
  %j.8484 = phi i64 [ 0, %for.body193.lr.ph ], [ %inc202, %for.body193 ]
  call void @llvm.dbg.value(metadata i64 %j.8484, metadata !94, metadata !DIExpression()), !dbg !108
  %add194 = add nsw i64 %j.8484, %76, !dbg !415
  %add195 = add nsw i64 %add194, 1, !dbg !416
  %arrayidx196 = getelementptr inbounds i64, ptr %82, i64 %add195, !dbg !417
  %90 = load i64, ptr %arrayidx196, align 8, !dbg !417
  %arrayidx198 = getelementptr inbounds i64, ptr %82, i64 %add194, !dbg !418
  %91 = load i64, ptr %arrayidx198, align 8, !dbg !418
  %sub199 = sub i64 %90, %91, !dbg !419
  %add200 = add nsw i64 %sub199, %89, !dbg !414
  store i64 %add200, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 3), align 8, !dbg !414
  %inc202 = add nuw nsw i64 %j.8484, 1, !dbg !420
  call void @llvm.dbg.value(metadata i64 %inc202, metadata !94, metadata !DIExpression()), !dbg !108
  %exitcond515.not = icmp eq i64 %inc202, %81, !dbg !397
  br i1 %exitcond515.not, label %for.end203, label %for.body193, !dbg !400, !llvm.loop !421

for.end203:                                       ; preds = %for.body193, %for.cond191.preheader
  %92 = phi i64 [ %80, %for.cond191.preheader ], [ %add200, %for.body193 ], !dbg !423
  %93 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 14), align 8, !dbg !424
  %call204 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i64 noundef %93, i64 noundef %92), !dbg !425
  %94 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 3), align 8, !dbg !426
  %mul205 = mul i64 %94, 96, !dbg !427
  %call206 = tail call ptr @MyMalloc(i64 noundef %mul205, i64 noundef 888) #20, !dbg !428
  call void @llvm.dbg.value(metadata ptr %call206, metadata !102, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 0, metadata !97, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()), !dbg !108
  %95 = load i64, ptr @LB, align 8, !dbg !429
  %cmp208490 = icmp sgt i64 %95, 0, !dbg !432
  br i1 %cmp208490, label %for.body209, label %for.cond247.preheader, !dbg !433

for.cond247.preheader:                            ; preds = %for.inc243, %for.end203
  %96 = phi i64 [ %95, %for.end203 ], [ %120, %for.inc243 ]
  %which.0.lcssa = phi i64 [ 0, %for.end203 ], [ %which.2, %for.inc243 ], !dbg !434
  call void @llvm.dbg.value(metadata i64 0, metadata !96, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %which.0.lcssa, metadata !97, metadata !DIExpression()), !dbg !108
  %97 = load i64, ptr @P, align 8, !dbg !435
  %cmp248507 = icmp sgt i64 %97, 0, !dbg !438
  br i1 %cmp248507, label %for.body249.preheader, label %for.end286, !dbg !439

for.body249.preheader:                            ; preds = %for.cond247.preheader
  %.pre523 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 13), align 8, !dbg !440
  br label %for.body249, !dbg !439

for.body209:                                      ; preds = %for.end203, %for.inc243
  %98 = phi i64 [ %120, %for.inc243 ], [ %95, %for.end203 ]
  %j.9492 = phi i64 [ %add245, %for.inc243 ], [ 0, %for.end203 ]
  %which.0491 = phi i64 [ %which.2, %for.inc243 ], [ 0, %for.end203 ]
  call void @llvm.dbg.value(metadata i64 %j.9492, metadata !94, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %which.0491, metadata !97, metadata !DIExpression()), !dbg !108
  %99 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !442
  %arrayidx210 = getelementptr inbounds i64, ptr %99, i64 %j.9492, !dbg !445
  %100 = load i64, ptr %arrayidx210, align 8, !dbg !445
  %tobool211.not = icmp eq i64 %100, 0, !dbg !445
  br i1 %tobool211.not, label %if.then212, label %for.inc243, !dbg !446

if.then212:                                       ; preds = %for.body209
  %101 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !447
  %arrayidx213 = getelementptr inbounds i64, ptr %101, i64 %j.9492, !dbg !449
  %102 = load i64, ptr %arrayidx213, align 8, !dbg !449
  call void @llvm.dbg.value(metadata i64 %102, metadata !93, metadata !DIExpression()), !dbg !108
  %add215 = add nsw i64 %j.9492, 1
  call void @llvm.dbg.value(metadata i64 %which.0491, metadata !97, metadata !DIExpression()), !dbg !108
  %arrayidx216485 = getelementptr inbounds i64, ptr %101, i64 %add215, !dbg !450
  %103 = load i64, ptr %arrayidx216485, align 8, !dbg !450
  %cmp217486 = icmp slt i64 %102, %103, !dbg !452
  br i1 %cmp217486, label %for.body218, label %for.inc243, !dbg !453

for.body218:                                      ; preds = %if.then212, %if.end236
  %i.5488 = phi i64 [ %inc240, %if.end236 ], [ %102, %if.then212 ]
  %which.1487 = phi i64 [ %inc238, %if.end236 ], [ %which.0491, %if.then212 ]
  call void @llvm.dbg.value(metadata i64 %i.5488, metadata !93, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %which.1487, metadata !97, metadata !DIExpression()), !dbg !108
  %arrayidx219 = getelementptr inbounds %struct.Block, ptr %call206, i64 %which.1487, !dbg !454
  %104 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !456
  %arrayidx220 = getelementptr inbounds %union.Entry, ptr %104, i64 %i.5488, !dbg !456
  store ptr %arrayidx219, ptr %arrayidx220, align 8, !dbg !457
  %105 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !458
  %arrayidx221 = getelementptr inbounds i64, ptr %105, i64 %i.5488, !dbg !459
  %106 = load i64, ptr %arrayidx221, align 8, !dbg !459
  %107 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !460
  %arrayidx222 = getelementptr inbounds %union.Entry, ptr %107, i64 %i.5488, !dbg !460
  %108 = load ptr, ptr %arrayidx222, align 8, !dbg !460
  store i64 %106, ptr %108, align 8, !dbg !461
  %109 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !462
  %arrayidx224 = getelementptr inbounds %union.Entry, ptr %109, i64 %i.5488, !dbg !462
  %110 = load ptr, ptr %arrayidx224, align 8, !dbg !462
  %j225 = getelementptr inbounds %struct.Block, ptr %110, i64 0, i32 1, !dbg !463
  store i64 %j.9492, ptr %j225, align 8, !dbg !464
  %111 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 7), align 8, !dbg !465
  %112 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !467
  %arrayidx226 = getelementptr inbounds %union.Entry, ptr %112, i64 %i.5488, !dbg !467
  %113 = load ptr, ptr %arrayidx226, align 8, !dbg !467
  %114 = load i64, ptr %113, align 8, !dbg !468
  %arrayidx228 = getelementptr inbounds i64, ptr %111, i64 %114, !dbg !469
  %115 = load i64, ptr %arrayidx228, align 8, !dbg !469
  %cmp229 = icmp slt i64 %115, 0, !dbg !470
  br i1 %cmp229, label %if.then234, label %lor.lhs.false, !dbg !471

lor.lhs.false:                                    ; preds = %for.body218
  %j231 = getelementptr inbounds %struct.Block, ptr %113, i64 0, i32 1, !dbg !472
  %116 = load i64, ptr %j231, align 8, !dbg !472
  %arrayidx232 = getelementptr inbounds i64, ptr %111, i64 %116, !dbg !473
  %117 = load i64, ptr %arrayidx232, align 8, !dbg !473
  %cmp233 = icmp slt i64 %117, 0, !dbg !474
  br i1 %cmp233, label %if.then234, label %if.end236, !dbg !475

if.then234:                                       ; preds = %lor.lhs.false, %for.body218
  %call235 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %which.1487), !dbg !476
  tail call void @exit(i32 noundef -1) #22, !dbg !478
  unreachable, !dbg !478

if.end236:                                        ; preds = %lor.lhs.false
  %pair = getelementptr inbounds %struct.Block, ptr %113, i64 0, i32 11, !dbg !479
  store ptr null, ptr %pair, align 8, !dbg !480
  %inc238 = add nsw i64 %which.1487, 1, !dbg !481
  call void @llvm.dbg.value(metadata i64 %inc238, metadata !97, metadata !DIExpression()), !dbg !108
  %inc240 = add nsw i64 %i.5488, 1, !dbg !482
  call void @llvm.dbg.value(metadata i64 %inc240, metadata !93, metadata !DIExpression()), !dbg !108
  %118 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !483
  %arrayidx216 = getelementptr inbounds i64, ptr %118, i64 %add215, !dbg !450
  %119 = load i64, ptr %arrayidx216, align 8, !dbg !450
  %cmp217 = icmp slt i64 %inc240, %119, !dbg !452
  br i1 %cmp217, label %for.body218, label %for.inc243.loopexit, !dbg !453, !llvm.loop !484

for.inc243.loopexit:                              ; preds = %if.end236
  %.pre522 = load i64, ptr @LB, align 8, !dbg !429
  br label %for.inc243, !dbg !486

for.inc243:                                       ; preds = %for.inc243.loopexit, %if.then212, %for.body209
  %120 = phi i64 [ %98, %for.body209 ], [ %98, %if.then212 ], [ %.pre522, %for.inc243.loopexit ], !dbg !429
  %which.2 = phi i64 [ %which.0491, %for.body209 ], [ %which.0491, %if.then212 ], [ %inc238, %for.inc243.loopexit ], !dbg !434
  call void @llvm.dbg.value(metadata i64 %which.2, metadata !97, metadata !DIExpression()), !dbg !108
  %121 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !486
  %arrayidx244 = getelementptr inbounds i64, ptr %121, i64 %j.9492, !dbg !487
  %122 = load i64, ptr %arrayidx244, align 8, !dbg !487
  %add245 = add nsw i64 %122, %j.9492, !dbg !488
  call void @llvm.dbg.value(metadata i64 %add245, metadata !94, metadata !DIExpression()), !dbg !108
  %cmp208 = icmp slt i64 %add245, %120, !dbg !432
  br i1 %cmp208, label %for.body209, label %for.cond247.preheader, !dbg !433, !llvm.loop !489

for.cond247.loopexit.loopexit:                    ; preds = %for.inc281
  %.pre526 = load i64, ptr @P, align 8, !dbg !435
  br label %for.cond247.loopexit, !dbg !435

for.cond247.loopexit:                             ; preds = %for.cond247.loopexit.loopexit, %for.body249
  %123 = phi i64 [ %127, %for.body249 ], [ %.pre526, %for.cond247.loopexit.loopexit ], !dbg !435
  %124 = phi ptr [ %128, %for.body249 ], [ %154, %for.cond247.loopexit.loopexit ]
  %125 = phi i64 [ %129, %for.body249 ], [ %155, %for.cond247.loopexit.loopexit ]
  %126 = phi ptr [ %130, %for.body249 ], [ %154, %for.cond247.loopexit.loopexit ]
  %which.4.lcssa = phi i64 [ %which.3508, %for.body249 ], [ %which.5.lcssa, %for.cond247.loopexit.loopexit ], !dbg !434
  call void @llvm.dbg.value(metadata i64 %add252, metadata !96, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %which.4.lcssa, metadata !97, metadata !DIExpression()), !dbg !108
  %cmp248 = icmp slt i64 %add252, %123, !dbg !438
  br i1 %cmp248, label %for.body249, label %for.end286, !dbg !439, !llvm.loop !491

for.body249:                                      ; preds = %for.body249.preheader, %for.cond247.loopexit
  %127 = phi i64 [ %123, %for.cond247.loopexit ], [ %97, %for.body249.preheader ]
  %128 = phi ptr [ %124, %for.cond247.loopexit ], [ %.pre523, %for.body249.preheader ]
  %129 = phi i64 [ %125, %for.cond247.loopexit ], [ %96, %for.body249.preheader ]
  %130 = phi ptr [ %126, %for.cond247.loopexit ], [ %.pre523, %for.body249.preheader ], !dbg !440
  %p.0509 = phi i64 [ %add252, %for.cond247.loopexit ], [ 0, %for.body249.preheader ]
  %which.3508 = phi i64 [ %which.4.lcssa, %for.cond247.loopexit ], [ %which.0.lcssa, %for.body249.preheader ]
  call void @llvm.dbg.value(metadata i64 %p.0509, metadata !96, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %which.3508, metadata !97, metadata !DIExpression()), !dbg !108
  %arrayidx250 = getelementptr inbounds i64, ptr %130, i64 %p.0509, !dbg !493
  %131 = load i64, ptr %arrayidx250, align 8, !dbg !493
  call void @llvm.dbg.value(metadata i64 %131, metadata !94, metadata !DIExpression()), !dbg !108
  %add252 = add nuw nsw i64 %p.0509, 1
  %arrayidx253500 = getelementptr inbounds i64, ptr %130, i64 %add252, !dbg !494
  %132 = load i64, ptr %arrayidx253500, align 8, !dbg !494
  %cmp254501 = icmp slt i64 %131, %132, !dbg !496
  br i1 %cmp254501, label %for.body255.preheader, label %for.cond247.loopexit, !dbg !497

for.body255.preheader:                            ; preds = %for.body249
  %.pre524 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !498
  br label %for.body255, !dbg !497

for.body255:                                      ; preds = %for.body255.preheader, %for.inc281
  %133 = phi ptr [ %154, %for.inc281 ], [ %128, %for.body255.preheader ]
  %134 = phi i64 [ %155, %for.inc281 ], [ %129, %for.body255.preheader ], !dbg !500
  %135 = phi ptr [ %156, %for.inc281 ], [ %.pre524, %for.body255.preheader ], !dbg !498
  %j.10503 = phi i64 [ %add259, %for.inc281 ], [ %131, %for.body255.preheader ]
  %which.4502 = phi i64 [ %which.5.lcssa, %for.inc281 ], [ %which.3508, %for.body255.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.10503, metadata !94, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %which.4502, metadata !97, metadata !DIExpression()), !dbg !108
  %add256 = add nsw i64 %134, %j.10503, !dbg !501
  %arrayidx257 = getelementptr inbounds i64, ptr %135, i64 %add256, !dbg !502
  %136 = load i64, ptr %arrayidx257, align 8, !dbg !502
  call void @llvm.dbg.value(metadata i64 %136, metadata !93, metadata !DIExpression()), !dbg !108
  %add259 = add nsw i64 %j.10503, 1
  %add260494 = add i64 %add259, %134, !dbg !503
  %arrayidx261495 = getelementptr inbounds i64, ptr %135, i64 %add260494, !dbg !505
  %137 = load i64, ptr %arrayidx261495, align 8, !dbg !505
  %cmp262496 = icmp slt i64 %136, %137, !dbg !506
  br i1 %cmp262496, label %for.body263, label %for.inc281, !dbg !507

for.body263:                                      ; preds = %for.body255, %for.body263
  %i.6498 = phi i64 [ %inc279, %for.body263 ], [ %136, %for.body255 ]
  %which.5497 = phi i64 [ %inc277, %for.body263 ], [ %which.4502, %for.body255 ]
  call void @llvm.dbg.value(metadata i64 %i.6498, metadata !93, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %which.5497, metadata !97, metadata !DIExpression()), !dbg !108
  %arrayidx264 = getelementptr inbounds %struct.Block, ptr %call206, i64 %which.5497, !dbg !508
  %138 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !510
  %arrayidx265 = getelementptr inbounds %union.Entry, ptr %138, i64 %i.6498, !dbg !510
  store ptr %arrayidx264, ptr %arrayidx265, align 8, !dbg !511
  %139 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !512
  %arrayidx266 = getelementptr inbounds i64, ptr %139, i64 %i.6498, !dbg !513
  %140 = load i64, ptr %arrayidx266, align 8, !dbg !513
  %141 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !514
  %arrayidx267 = getelementptr inbounds %union.Entry, ptr %141, i64 %i.6498, !dbg !514
  %142 = load ptr, ptr %arrayidx267, align 8, !dbg !514
  store i64 %140, ptr %142, align 8, !dbg !515
  %143 = load i64, ptr @LB, align 8, !dbg !516
  %add269 = add nsw i64 %143, %j.10503, !dbg !517
  %144 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !518
  %arrayidx270 = getelementptr inbounds %union.Entry, ptr %144, i64 %i.6498, !dbg !518
  %145 = load ptr, ptr %arrayidx270, align 8, !dbg !518
  %j271 = getelementptr inbounds %struct.Block, ptr %145, i64 0, i32 1, !dbg !519
  store i64 %add269, ptr %j271, align 8, !dbg !520
  %146 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !521
  %arrayidx272 = getelementptr inbounds %union.Entry, ptr %146, i64 %i.6498, !dbg !521
  %147 = load ptr, ptr %arrayidx272, align 8, !dbg !521
  %nz273 = getelementptr inbounds %struct.Block, ptr %147, i64 0, i32 10, !dbg !522
  store ptr null, ptr %nz273, align 8, !dbg !523
  %148 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !524
  %arrayidx274 = getelementptr inbounds %union.Entry, ptr %148, i64 %i.6498, !dbg !524
  %149 = load ptr, ptr %arrayidx274, align 8, !dbg !524
  %owner = getelementptr inbounds %struct.Block, ptr %149, i64 0, i32 2, !dbg !525
  store i64 %p.0509, ptr %owner, align 8, !dbg !526
  %150 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !527
  %arrayidx275 = getelementptr inbounds %union.Entry, ptr %150, i64 %i.6498, !dbg !527
  %151 = load ptr, ptr %arrayidx275, align 8, !dbg !527
  %pair276 = getelementptr inbounds %struct.Block, ptr %151, i64 0, i32 11, !dbg !528
  store ptr null, ptr %pair276, align 8, !dbg !529
  %inc277 = add nsw i64 %which.5497, 1, !dbg !530
  call void @llvm.dbg.value(metadata i64 %inc277, metadata !97, metadata !DIExpression()), !dbg !108
  %inc279 = add nsw i64 %i.6498, 1, !dbg !531
  call void @llvm.dbg.value(metadata i64 %inc279, metadata !93, metadata !DIExpression()), !dbg !108
  %152 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !532
  %add260 = add i64 %add259, %143, !dbg !503
  %arrayidx261 = getelementptr inbounds i64, ptr %152, i64 %add260, !dbg !505
  %153 = load i64, ptr %arrayidx261, align 8, !dbg !505
  %cmp262 = icmp slt i64 %inc279, %153, !dbg !506
  br i1 %cmp262, label %for.body263, label %for.inc281.loopexit, !dbg !507, !llvm.loop !533

for.inc281.loopexit:                              ; preds = %for.body263
  %.pre525 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 13), align 8, !dbg !535
  br label %for.inc281, !dbg !536

for.inc281:                                       ; preds = %for.inc281.loopexit, %for.body255
  %154 = phi ptr [ %133, %for.body255 ], [ %.pre525, %for.inc281.loopexit ], !dbg !535
  %155 = phi i64 [ %134, %for.body255 ], [ %143, %for.inc281.loopexit ]
  %156 = phi ptr [ %135, %for.body255 ], [ %152, %for.inc281.loopexit ]
  %which.5.lcssa = phi i64 [ %which.4502, %for.body255 ], [ %inc277, %for.inc281.loopexit ], !dbg !108
  call void @llvm.dbg.value(metadata i64 %add259, metadata !94, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %which.5.lcssa, metadata !97, metadata !DIExpression()), !dbg !108
  %arrayidx253 = getelementptr inbounds i64, ptr %154, i64 %add252, !dbg !494
  %157 = load i64, ptr %arrayidx253, align 8, !dbg !494
  %cmp254 = icmp slt i64 %add259, %157, !dbg !496
  br i1 %cmp254, label %for.body255, label %for.cond247.loopexit.loopexit, !dbg !497, !llvm.loop !537

for.end286:                                       ; preds = %for.cond247.loopexit, %for.cond247.preheader
  tail call void @ComputeBlockParents(ptr noundef %T), !dbg !539
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n_nz) #20, !dbg !540
  ret void, !dbg !540
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !541 ptr @MyMalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare !dbg !547 void @MigrateMem(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @FindMachineDimensions(i64 noundef %P) local_unnamed_addr #5 !dbg !551 {
entry:
  call void @llvm.dbg.value(metadata i64 %P, metadata !555, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 0, metadata !556, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 0, metadata !557, metadata !DIExpression()), !dbg !558
  %conv = sitofp i64 %P to double, !dbg !559
  %call = tail call double @sqrt(double noundef %conv) #20, !dbg !561
  %conv1 = fptosi double %call to i64, !dbg !562
  call void @llvm.dbg.value(metadata i64 %conv1, metadata !556, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 0, metadata !557, metadata !DIExpression()), !dbg !558
  %cmp14 = icmp sgt i64 %conv1, 0, !dbg !563
  br i1 %cmp14, label %for.body, label %for.end, !dbg !565

for.body:                                         ; preds = %entry, %for.inc
  %try.015 = phi i64 [ %dec, %for.inc ], [ %conv1, %entry ]
  call void @llvm.dbg.value(metadata i64 %try.015, metadata !556, metadata !DIExpression()), !dbg !558
  %div3 = sdiv i64 %P, %try.015, !dbg !566
  call void @llvm.dbg.value(metadata i64 %div3, metadata !557, metadata !DIExpression()), !dbg !558
  %mul = mul nsw i64 %div3, %try.015, !dbg !568
  %cmp4 = icmp eq i64 %mul, %P, !dbg !570
  br i1 %cmp4, label %for.end, label %for.inc, !dbg !571

for.inc:                                          ; preds = %for.body
  %dec = add nsw i64 %try.015, -1, !dbg !572
  call void @llvm.dbg.value(metadata i64 %div3, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 %dec, metadata !556, metadata !DIExpression()), !dbg !558
  %cmp = icmp sgt i64 %try.015, 1, !dbg !563
  br i1 %cmp, label %for.body, label %for.end, !dbg !565, !llvm.loop !573

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %try.0.lcssa = phi i64 [ %conv1, %entry ], [ %try.015, %for.body ], [ 0, %for.inc ], !dbg !575
  %div.1 = phi i64 [ 0, %entry ], [ %div3, %for.body ], [ %div3, %for.inc ], !dbg !558
  call void @llvm.dbg.value(metadata i64 %div.1, metadata !557, metadata !DIExpression()), !dbg !558
  store i64 %div.1, ptr @P_dimi, align 8, !dbg !576
  store i64 %try.0.lcssa, ptr @P_dimj, align 8, !dbg !577
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13, i64 noundef %div.1, i64 noundef %try.0.lcssa), !dbg !578
  ret void, !dbg !579
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @FindNumPartitions(i64 noundef %set_size, i64 noundef %piece_size) local_unnamed_addr #6 !dbg !580 {
entry:
  call void @llvm.dbg.value(metadata i64 %set_size, metadata !584, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 %piece_size, metadata !585, metadata !DIExpression()), !dbg !587
  %mul = shl nsw i64 %piece_size, 2, !dbg !588
  %div = sdiv i64 %mul, 3, !dbg !590
  %cmp.not = icmp slt i64 %div, %set_size, !dbg !591
  br i1 %cmp.not, label %if.else, label %if.end9, !dbg !592

if.else:                                          ; preds = %entry
  %add = add nsw i64 %set_size, -1, !dbg !593
  %sub = add i64 %add, %piece_size, !dbg !595
  %div1 = sdiv i64 %sub, %piece_size, !dbg !596
  call void @llvm.dbg.value(metadata i64 %div1, metadata !586, metadata !DIExpression()), !dbg !587
  %div2 = sdiv i64 %set_size, %div1, !dbg !597
  %sub3 = sub nsw i64 %piece_size, %div2, !dbg !599
  %sub4 = add nsw i64 %div1, -1, !dbg !600
  %div5 = sdiv i64 %set_size, %sub4, !dbg !601
  %sub6 = sub nsw i64 %div5, %piece_size, !dbg !602
  %cmp7 = icmp sgt i64 %sub3, %sub6, !dbg !603
  %spec.select = select i1 %cmp7, i64 %sub4, i64 %div1, !dbg !604
  br label %if.end9, !dbg !604

if.end9:                                          ; preds = %if.else, %entry
  %num_partitions.0 = phi i64 [ 1, %entry ], [ %spec.select, %if.else ], !dbg !605
  call void @llvm.dbg.value(metadata i64 %num_partitions.0, metadata !586, metadata !DIExpression()), !dbg !587
  ret i64 %num_partitions.0, !dbg !606
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ComputePartitionNumbering(ptr nocapture noundef writeonly %numbering) local_unnamed_addr #7 !dbg !607 {
entry:
  call void @llvm.dbg.value(metadata ptr %numbering, metadata !611, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i64 0, metadata !612, metadata !DIExpression()), !dbg !614
  %0 = load i64, ptr @LB, align 8, !dbg !615
  %cmp18 = icmp sgt i64 %0, 0, !dbg !618
  br i1 %cmp18, label %for.body, label %for.end9, !dbg !619

for.cond1.preheader:                              ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !613, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i64 0, metadata !612, metadata !DIExpression()), !dbg !614
  %cmp220 = icmp sgt i64 %1, 0, !dbg !620
  br i1 %cmp220, label %for.body3.preheader, label %for.end9, !dbg !623

for.body3.preheader:                              ; preds = %for.cond1.preheader
  %.pre23 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !624
  br label %for.body3, !dbg !623

for.body:                                         ; preds = %entry, %for.body
  %j.019 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %j.019, metadata !612, metadata !DIExpression()), !dbg !614
  %arrayidx = getelementptr inbounds i64, ptr %numbering, i64 %j.019, !dbg !626
  store i64 -1, ptr %arrayidx, align 8, !dbg !627
  %inc = add nuw nsw i64 %j.019, 1, !dbg !628
  call void @llvm.dbg.value(metadata i64 %inc, metadata !612, metadata !DIExpression()), !dbg !614
  %1 = load i64, ptr @LB, align 8, !dbg !615
  %cmp = icmp slt i64 %inc, %1, !dbg !618
  br i1 %cmp, label %for.body, label %for.cond1.preheader, !dbg !619, !llvm.loop !629

for.body3:                                        ; preds = %for.body3.preheader, %for.inc7
  %2 = phi i64 [ %5, %for.inc7 ], [ %1, %for.body3.preheader ]
  %3 = phi ptr [ %6, %for.inc7 ], [ %.pre23, %for.body3.preheader ], !dbg !624
  %which.022 = phi i64 [ %which.1, %for.inc7 ], [ 0, %for.body3.preheader ]
  %j.121 = phi i64 [ %add, %for.inc7 ], [ 0, %for.body3.preheader ]
  call void @llvm.dbg.value(metadata i64 %which.022, metadata !613, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i64 %j.121, metadata !612, metadata !DIExpression()), !dbg !614
  %arrayidx4 = getelementptr inbounds i64, ptr %3, i64 %j.121, !dbg !631
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !631
  %tobool.not = icmp eq i64 %4, 0, !dbg !631
  br i1 %tobool.not, label %if.then, label %for.inc7, !dbg !632

if.then:                                          ; preds = %for.body3
  %inc5 = add nsw i64 %which.022, 1, !dbg !633
  call void @llvm.dbg.value(metadata i64 %inc5, metadata !613, metadata !DIExpression()), !dbg !614
  %arrayidx6 = getelementptr inbounds i64, ptr %numbering, i64 %j.121, !dbg !634
  store i64 %which.022, ptr %arrayidx6, align 8, !dbg !635
  %.pre = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !624
  %.pre24 = load i64, ptr @LB, align 8, !dbg !636
  br label %for.inc7, !dbg !634

for.inc7:                                         ; preds = %for.body3, %if.then
  %5 = phi i64 [ %2, %for.body3 ], [ %.pre24, %if.then ], !dbg !636
  %6 = phi ptr [ %3, %for.body3 ], [ %.pre, %if.then ]
  %which.1 = phi i64 [ %which.022, %for.body3 ], [ %inc5, %if.then ], !dbg !614
  call void @llvm.dbg.value(metadata i64 %which.1, metadata !613, metadata !DIExpression()), !dbg !614
  %7 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !637
  %arrayidx8 = getelementptr inbounds i64, ptr %7, i64 %j.121, !dbg !638
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !638
  %add = add nsw i64 %8, %j.121, !dbg !639
  call void @llvm.dbg.value(metadata i64 %add, metadata !612, metadata !DIExpression()), !dbg !614
  %cmp2 = icmp slt i64 %add, %5, !dbg !620
  br i1 %cmp2, label %for.body3, label %for.end9, !dbg !623, !llvm.loop !640

for.end9:                                         ; preds = %for.inc7, %entry, %for.cond1.preheader
  ret void, !dbg !642
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define dso_local void @DumpSizes(ptr nocapture noundef readonly byval(%struct.BMatrix) align 8 %LB, ptr nocapture noundef readonly %domain, ptr nocapture noundef readonly %sizes) local_unnamed_addr #0 !dbg !643 {
entry:
  call void @llvm.dbg.declare(metadata ptr %LB, metadata !647, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata ptr %domain, metadata !648, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata ptr %sizes, metadata !649, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i64 0, metadata !652, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i64 0, metadata !650, metadata !DIExpression()), !dbg !654
  %0 = load i64, ptr %LB, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !652, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i64 0, metadata !650, metadata !DIExpression()), !dbg !654
  %cmp71 = icmp sgt i64 %0, 0, !dbg !655
  br i1 %cmp71, label %for.body, label %for.cond12.preheader, !dbg !658

for.body:                                         ; preds = %entry, %for.body
  %maxm.073 = phi i64 [ %spec.select, %for.body ], [ 0, %entry ]
  %i.072 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %maxm.073, metadata !652, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i64 %i.072, metadata !650, metadata !DIExpression()), !dbg !654
  %arrayidx = getelementptr inbounds i64, ptr %domain, i64 %i.072, !dbg !659
  %1 = load i64, ptr %arrayidx, align 8, !dbg !659
  %tobool.not = icmp eq i64 %1, 0, !dbg !659
  %arrayidx1 = getelementptr inbounds i64, ptr %sizes, i64 %i.072
  %2 = load i64, ptr %arrayidx1, align 8, !dbg !661
  %3 = tail call i64 @llvm.smax.i64(i64 %2, i64 %maxm.073)
  %spec.select = select i1 %tobool.not, i64 %3, i64 %maxm.073, !dbg !662
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !652, metadata !DIExpression()), !dbg !654
  %add = add nsw i64 %2, %i.072, !dbg !663
  call void @llvm.dbg.value(metadata i64 %add, metadata !650, metadata !DIExpression()), !dbg !654
  %cmp = icmp slt i64 %add, %0, !dbg !655
  br i1 %cmp, label %for.body, label %for.cond12.preheader, !dbg !658, !llvm.loop !664

for.cond12.preheader:                             ; preds = %for.body, %entry
  %maxm.0.lcssa = phi i64 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !666
  %add5 = shl i64 %maxm.0.lcssa, 3, !dbg !667
  %mul = add i64 %add5, 8, !dbg !667
  %calloc = call ptr @calloc(i64 1, i64 %mul), !dbg !668
  call void @llvm.dbg.value(metadata ptr %calloc, metadata !651, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i64 0, metadata !650, metadata !DIExpression()), !dbg !654
  br i1 %cmp71, label %for.body15, label %for.body29.preheader, !dbg !669

for.body15:                                       ; preds = %for.cond12.preheader, %for.inc23
  %i.278 = phi i64 [ %add25, %for.inc23 ], [ 0, %for.cond12.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.278, metadata !650, metadata !DIExpression()), !dbg !654
  %arrayidx16 = getelementptr inbounds i64, ptr %domain, i64 %i.278, !dbg !671
  %4 = load i64, ptr %arrayidx16, align 8, !dbg !671
  %tobool17.not = icmp eq i64 %4, 0, !dbg !671
  %arrayidx19 = getelementptr inbounds i64, ptr %sizes, i64 %i.278
  %5 = load i64, ptr %arrayidx19, align 8, !dbg !674
  br i1 %tobool17.not, label %if.then18, label %for.inc23, !dbg !675

if.then18:                                        ; preds = %for.body15
  %arrayidx20 = getelementptr inbounds i64, ptr %calloc, i64 %5, !dbg !676
  %6 = load i64, ptr %arrayidx20, align 8, !dbg !677
  %inc21 = add nsw i64 %6, 1, !dbg !677
  store i64 %inc21, ptr %arrayidx20, align 8, !dbg !677
  br label %for.inc23, !dbg !676

for.inc23:                                        ; preds = %for.body15, %if.then18
  %add25 = add nsw i64 %5, %i.278, !dbg !678
  call void @llvm.dbg.value(metadata i64 %add25, metadata !650, metadata !DIExpression()), !dbg !654
  %cmp14 = icmp slt i64 %add25, %0, !dbg !679
  br i1 %cmp14, label %for.body15, label %for.body29.preheader, !dbg !669, !llvm.loop !680

for.body29.preheader:                             ; preds = %for.inc23, %for.cond12.preheader
  br label %for.body29, !dbg !682

for.body29:                                       ; preds = %for.body29.preheader, %for.inc36
  %i.380 = phi i64 [ %inc37, %for.inc36 ], [ 0, %for.body29.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.380, metadata !650, metadata !DIExpression()), !dbg !654
  %arrayidx30 = getelementptr inbounds i64, ptr %calloc, i64 %i.380, !dbg !684
  %7 = load i64, ptr %arrayidx30, align 8, !dbg !684
  %cmp31 = icmp eq i64 %7, 0, !dbg !688
  br i1 %cmp31, label %for.inc36, label %if.else, !dbg !689

if.else:                                          ; preds = %for.body29
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i64 noundef %i.380, i64 noundef %7), !dbg !690
  br label %for.inc36

for.inc36:                                        ; preds = %if.else, %for.body29
  %inc37 = add nuw i64 %i.380, 1, !dbg !691
  call void @llvm.dbg.value(metadata i64 %inc37, metadata !650, metadata !DIExpression()), !dbg !654
  %exitcond.not = icmp eq i64 %i.380, %maxm.0.lcssa, !dbg !692
  br i1 %exitcond.not, label %for.end38, label %for.body29, !dbg !682, !llvm.loop !693

for.end38:                                        ; preds = %for.inc36
  %putchar = tail call i32 @putchar(i32 10), !dbg !695
  tail call void @free(ptr noundef nonnull %calloc) #20, !dbg !696
  ret void, !dbg !697
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @FindSuperStructure(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M, i64 noundef %super, ptr nocapture noundef readonly %PERM, ptr nocapture noundef readonly %INVP, ptr nocapture noundef readonly %firstchild, ptr nocapture noundef readonly %child, ptr nocapture noundef %structure, ptr nocapture noundef %nz, ptr nocapture noundef %n_nz) local_unnamed_addr #5 !dbg !698 {
entry:
  call void @llvm.dbg.declare(metadata ptr %M, metadata !700, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.value(metadata i64 %super, metadata !701, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata ptr %PERM, metadata !702, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata ptr %INVP, metadata !703, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata ptr %firstchild, metadata !704, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata ptr %child, metadata !705, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata ptr %structure, metadata !706, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata ptr %nz, metadata !707, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata ptr %n_nz, metadata !708, metadata !DIExpression()), !dbg !717
  store i64 0, ptr %n_nz, align 8, !dbg !718
  call void @llvm.dbg.value(metadata i64 %super, metadata !711, metadata !DIExpression()), !dbg !717
  %0 = load ptr, ptr @node, align 8, !dbg !719
  %arrayidx178 = getelementptr inbounds i64, ptr %0, i64 %super, !dbg !719
  %1 = load i64, ptr %arrayidx178, align 8, !dbg !719
  %cmp180 = icmp sgt i64 %1, 0, !dbg !722
  br i1 %cmp180, label %for.body.lr.ph, label %for.end19, !dbg !723

for.body.lr.ph:                                   ; preds = %entry
  %col = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 2
  %2 = load ptr, ptr %col, align 8
  %row9 = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 4
  %3 = load ptr, ptr %row9, align 8
  br label %for.body, !dbg !723

for.body:                                         ; preds = %for.body.lr.ph, %for.inc17
  %4 = phi ptr [ %0, %for.body.lr.ph ], [ %14, %for.inc17 ]
  %current.0181 = phi i64 [ %super, %for.body.lr.ph ], [ %inc18, %for.inc17 ]
  call void @llvm.dbg.value(metadata i64 %current.0181, metadata !711, metadata !DIExpression()), !dbg !717
  %arrayidx1 = getelementptr inbounds i64, ptr %PERM, i64 %current.0181, !dbg !724
  %5 = load i64, ptr %arrayidx1, align 8, !dbg !724
  call void @llvm.dbg.value(metadata i64 %5, metadata !710, metadata !DIExpression()), !dbg !717
  %arrayidx2 = getelementptr inbounds i64, ptr %2, i64 %5, !dbg !726
  %6 = load i64, ptr %arrayidx2, align 8, !dbg !726
  call void @llvm.dbg.value(metadata i64 %6, metadata !709, metadata !DIExpression()), !dbg !717
  %add5 = add nsw i64 %5, 1
  %arrayidx6 = getelementptr inbounds i64, ptr %2, i64 %add5
  call void @llvm.dbg.value(metadata i64 %6, metadata !709, metadata !DIExpression()), !dbg !717
  %7 = load i64, ptr %arrayidx6, align 8, !dbg !728
  %cmp7176 = icmp slt i64 %6, %7, !dbg !730
  br i1 %cmp7176, label %for.body8, label %for.inc17, !dbg !731

for.body8:                                        ; preds = %for.body, %for.inc
  %8 = phi i64 [ %13, %for.inc ], [ %7, %for.body ]
  %i.0177 = phi i64 [ %inc16, %for.inc ], [ %6, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.0177, metadata !709, metadata !DIExpression()), !dbg !717
  %arrayidx10 = getelementptr inbounds i64, ptr %3, i64 %i.0177, !dbg !732
  %9 = load i64, ptr %arrayidx10, align 8, !dbg !732
  %arrayidx11 = getelementptr inbounds i64, ptr %INVP, i64 %9, !dbg !734
  %10 = load i64, ptr %arrayidx11, align 8, !dbg !734
  call void @llvm.dbg.value(metadata i64 %10, metadata !715, metadata !DIExpression()), !dbg !717
  %cmp12.not = icmp slt i64 %10, %super, !dbg !735
  br i1 %cmp12.not, label %for.inc, label %land.lhs.true, !dbg !737

land.lhs.true:                                    ; preds = %for.body8
  %arrayidx13 = getelementptr inbounds i64, ptr %structure, i64 %10, !dbg !738
  %11 = load i64, ptr %arrayidx13, align 8, !dbg !738
  %tobool.not = icmp eq i64 %11, 0, !dbg !738
  br i1 %tobool.not, label %if.then, label %for.inc, !dbg !739

if.then:                                          ; preds = %land.lhs.true
  store i64 1, ptr %arrayidx13, align 8, !dbg !740
  %12 = load i64, ptr %n_nz, align 8, !dbg !742
  %inc = add nsw i64 %12, 1, !dbg !742
  store i64 %inc, ptr %n_nz, align 8, !dbg !742
  %arrayidx15 = getelementptr inbounds i64, ptr %nz, i64 %12, !dbg !743
  store i64 %10, ptr %arrayidx15, align 8, !dbg !744
  %.pre = load i64, ptr %arrayidx6, align 8, !dbg !728
  br label %for.inc, !dbg !745

for.inc:                                          ; preds = %for.body8, %land.lhs.true, %if.then
  %13 = phi i64 [ %8, %for.body8 ], [ %8, %land.lhs.true ], [ %.pre, %if.then ], !dbg !728
  %inc16 = add nsw i64 %i.0177, 1, !dbg !746
  call void @llvm.dbg.value(metadata i64 %inc16, metadata !709, metadata !DIExpression()), !dbg !717
  %cmp7 = icmp slt i64 %inc16, %13, !dbg !730
  br i1 %cmp7, label %for.body8, label %for.inc17.loopexit, !dbg !731, !llvm.loop !747

for.inc17.loopexit:                               ; preds = %for.inc
  %.pre200 = load ptr, ptr @node, align 8, !dbg !719
  br label %for.inc17, !dbg !749

for.inc17:                                        ; preds = %for.inc17.loopexit, %for.body
  %14 = phi ptr [ %.pre200, %for.inc17.loopexit ], [ %4, %for.body ], !dbg !719
  %inc18 = add nsw i64 %current.0181, 1, !dbg !749
  call void @llvm.dbg.value(metadata i64 %inc18, metadata !711, metadata !DIExpression()), !dbg !717
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 %super, !dbg !719
  %15 = load i64, ptr %arrayidx, align 8, !dbg !719
  %add = add nsw i64 %15, %super, !dbg !750
  %cmp = icmp slt i64 %inc18, %add, !dbg !722
  br i1 %cmp, label %for.body, label %for.end19, !dbg !723, !llvm.loop !751

for.end19:                                        ; preds = %for.inc17, %entry
  %arrayidx20 = getelementptr inbounds i64, ptr %firstchild, i64 %super, !dbg !753
  %16 = load i64, ptr %arrayidx20, align 8, !dbg !753
  call void @llvm.dbg.value(metadata i64 %16, metadata !713, metadata !DIExpression()), !dbg !717
  %add22 = add nsw i64 %super, 1
  %arrayidx23 = getelementptr inbounds i64, ptr %firstchild, i64 %add22
  %17 = load i64, ptr %arrayidx23, align 8, !dbg !755
  %cmp24194 = icmp slt i64 %16, %17, !dbg !757
  br i1 %cmp24194, label %for.body25, label %for.cond97.preheader, !dbg !758

for.cond97.preheader:                             ; preds = %for.inc94, %for.end19
  call void @llvm.dbg.value(metadata i64 0, metadata !709, metadata !DIExpression()), !dbg !717
  %18 = load i64, ptr %n_nz, align 8, !dbg !759
  %cmp98196 = icmp sgt i64 %18, 0, !dbg !762
  br i1 %cmp98196, label %for.body99, label %for.end104, !dbg !763

for.body25:                                       ; preds = %for.end19, %for.inc94
  %c.0195 = phi i64 [ %inc95, %for.inc94 ], [ %16, %for.end19 ]
  call void @llvm.dbg.value(metadata i64 %c.0195, metadata !713, metadata !DIExpression()), !dbg !717
  %arrayidx26 = getelementptr inbounds i64, ptr %child, i64 %c.0195, !dbg !764
  %19 = load i64, ptr %arrayidx26, align 8, !dbg !764
  call void @llvm.dbg.value(metadata i64 %19, metadata !714, metadata !DIExpression()), !dbg !717
  %20 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !766
  %arrayidx27 = getelementptr inbounds i64, ptr %20, i64 %19, !dbg !768
  %21 = load i64, ptr %arrayidx27, align 8, !dbg !768
  %22 = tail call i64 @llvm.smin.i64(i64 %21, i64 0), !dbg !769
  %spec.select = add nsw i64 %22, %19, !dbg !769
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !714, metadata !DIExpression()), !dbg !717
  %23 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !770
  %arrayidx33 = getelementptr inbounds i64, ptr %23, i64 %spec.select, !dbg !772
  %24 = load i64, ptr %arrayidx33, align 8, !dbg !772
  %tobool34.not = icmp eq i64 %24, 0, !dbg !772
  %25 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !773
  %arrayidx55 = getelementptr inbounds i64, ptr %25, i64 %spec.select, !dbg !773
  %26 = load i64, ptr %arrayidx55, align 8, !dbg !773
  call void @llvm.dbg.value(metadata i64 %26, metadata !709, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i64 %26, metadata !709, metadata !DIExpression()), !dbg !717
  %add57 = add nsw i64 %spec.select, 1
  %arrayidx58190 = getelementptr inbounds i64, ptr %25, i64 %add57, !dbg !773
  %27 = load i64, ptr %arrayidx58190, align 8, !dbg !773
  %cmp59191 = icmp slt i64 %26, %27, !dbg !773
  br i1 %tobool34.not, label %if.else, label %if.then35, !dbg !774

if.then35:                                        ; preds = %for.body25
  br i1 %cmp59191, label %for.body41.preheader, label %for.inc94, !dbg !775

for.body41.preheader:                             ; preds = %if.then35
  %.pre202 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !778
  br label %for.body41, !dbg !775

for.body41:                                       ; preds = %for.body41.preheader, %for.inc52
  %28 = phi ptr [ %33, %for.inc52 ], [ %25, %for.body41.preheader ]
  %29 = phi ptr [ %34, %for.inc52 ], [ %.pre202, %for.body41.preheader ], !dbg !778
  %i.1184 = phi i64 [ %inc53, %for.inc52 ], [ %26, %for.body41.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1184, metadata !709, metadata !DIExpression()), !dbg !717
  %arrayidx42 = getelementptr inbounds i64, ptr %29, i64 %i.1184, !dbg !781
  %30 = load i64, ptr %arrayidx42, align 8, !dbg !781
  call void @llvm.dbg.value(metadata i64 %30, metadata !715, metadata !DIExpression()), !dbg !717
  %cmp43.not = icmp slt i64 %30, %super, !dbg !782
  br i1 %cmp43.not, label %for.inc52, label %land.lhs.true44, !dbg !784

land.lhs.true44:                                  ; preds = %for.body41
  %arrayidx45 = getelementptr inbounds i64, ptr %structure, i64 %30, !dbg !785
  %31 = load i64, ptr %arrayidx45, align 8, !dbg !785
  %tobool46.not = icmp eq i64 %31, 0, !dbg !785
  br i1 %tobool46.not, label %if.then47, label %for.inc52, !dbg !786

if.then47:                                        ; preds = %land.lhs.true44
  store i64 1, ptr %arrayidx45, align 8, !dbg !787
  %32 = load i64, ptr %n_nz, align 8, !dbg !789
  %inc49 = add nsw i64 %32, 1, !dbg !789
  store i64 %inc49, ptr %n_nz, align 8, !dbg !789
  %arrayidx50 = getelementptr inbounds i64, ptr %nz, i64 %32, !dbg !790
  store i64 %30, ptr %arrayidx50, align 8, !dbg !791
  %.pre201 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !778
  %.pre203 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !792
  br label %for.inc52, !dbg !793

for.inc52:                                        ; preds = %for.body41, %land.lhs.true44, %if.then47
  %33 = phi ptr [ %28, %for.body41 ], [ %28, %land.lhs.true44 ], [ %.pre203, %if.then47 ], !dbg !792
  %34 = phi ptr [ %29, %for.body41 ], [ %29, %land.lhs.true44 ], [ %.pre201, %if.then47 ]
  %inc53 = add nsw i64 %i.1184, 1, !dbg !794
  call void @llvm.dbg.value(metadata i64 %inc53, metadata !709, metadata !DIExpression()), !dbg !717
  %arrayidx39 = getelementptr inbounds i64, ptr %33, i64 %add57, !dbg !795
  %35 = load i64, ptr %arrayidx39, align 8, !dbg !795
  %cmp40 = icmp slt i64 %inc53, %35, !dbg !796
  br i1 %cmp40, label %for.body41, label %for.inc94, !dbg !775, !llvm.loop !797

if.else:                                          ; preds = %for.body25
  br i1 %cmp59191, label %for.cond61.preheader.preheader, label %for.inc94, !dbg !799

for.cond61.preheader.preheader:                   ; preds = %if.else
  %.pre204 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !802
  br label %for.cond61.preheader, !dbg !799

for.cond61.preheader:                             ; preds = %for.cond61.preheader.preheader, %for.inc90
  %36 = phi ptr [ %52, %for.inc90 ], [ %25, %for.cond61.preheader.preheader ]
  %37 = phi ptr [ %53, %for.inc90 ], [ %.pre204, %for.cond61.preheader.preheader ]
  %38 = phi ptr [ %54, %for.inc90 ], [ %.pre204, %for.cond61.preheader.preheader ], !dbg !802
  %i.2192 = phi i64 [ %inc91, %for.inc90 ], [ %26, %for.cond61.preheader.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.2192, metadata !709, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i64 0, metadata !712, metadata !DIExpression()), !dbg !717
  %arrayidx62185 = getelementptr inbounds %union.Entry, ptr %38, i64 %i.2192, !dbg !802
  %39 = load ptr, ptr %arrayidx62185, align 8, !dbg !802
  %length186 = getelementptr inbounds %struct.Block, ptr %39, i64 0, i32 5, !dbg !807
  %40 = load i64, ptr %length186, align 8, !dbg !807
  %cmp63187 = icmp sgt i64 %40, 0, !dbg !808
  br i1 %cmp63187, label %for.body64, label %for.inc90, !dbg !809

for.body64:                                       ; preds = %for.cond61.preheader, %for.inc87
  %41 = phi ptr [ %49, %for.inc87 ], [ %37, %for.cond61.preheader ]
  %42 = phi ptr [ %50, %for.inc87 ], [ %39, %for.cond61.preheader ]
  %bl.0188 = phi i64 [ %inc88, %for.inc87 ], [ 0, %for.cond61.preheader ]
  call void @llvm.dbg.value(metadata i64 %bl.0188, metadata !712, metadata !DIExpression()), !dbg !717
  %structure66 = getelementptr inbounds %struct.Block, ptr %42, i64 0, i32 8, !dbg !810
  %43 = load ptr, ptr %structure66, align 8, !dbg !810
  %tobool67.not = icmp eq ptr %43, null, !dbg !813
  %44 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !814
  %arrayidx75 = getelementptr inbounds i64, ptr %44, i64 %i.2192, !dbg !814
  %45 = load i64, ptr %arrayidx75, align 8, !dbg !814
  br i1 %tobool67.not, label %if.else74, label %if.then68, !dbg !815

if.then68:                                        ; preds = %for.body64
  %arrayidx72 = getelementptr inbounds i64, ptr %43, i64 %bl.0188, !dbg !816
  %46 = load i64, ptr %arrayidx72, align 8, !dbg !816
  %add73 = add nsw i64 %46, %45, !dbg !817
  call void @llvm.dbg.value(metadata i64 %add73, metadata !715, metadata !DIExpression()), !dbg !717
  br label %if.end77, !dbg !818

if.else74:                                        ; preds = %for.body64
  %add76 = add nsw i64 %45, %bl.0188, !dbg !819
  call void @llvm.dbg.value(metadata i64 %add76, metadata !715, metadata !DIExpression()), !dbg !717
  br label %if.end77

if.end77:                                         ; preds = %if.else74, %if.then68
  %row.0 = phi i64 [ %add73, %if.then68 ], [ %add76, %if.else74 ], !dbg !814
  call void @llvm.dbg.value(metadata i64 %row.0, metadata !715, metadata !DIExpression()), !dbg !717
  %cmp78.not = icmp slt i64 %row.0, %super, !dbg !820
  br i1 %cmp78.not, label %for.inc87, label %land.lhs.true79, !dbg !822

land.lhs.true79:                                  ; preds = %if.end77
  %arrayidx80 = getelementptr inbounds i64, ptr %structure, i64 %row.0, !dbg !823
  %47 = load i64, ptr %arrayidx80, align 8, !dbg !823
  %tobool81.not = icmp eq i64 %47, 0, !dbg !823
  br i1 %tobool81.not, label %if.then82, label %for.inc87, !dbg !824

if.then82:                                        ; preds = %land.lhs.true79
  store i64 1, ptr %arrayidx80, align 8, !dbg !825
  %48 = load i64, ptr %n_nz, align 8, !dbg !827
  %inc84 = add nsw i64 %48, 1, !dbg !827
  store i64 %inc84, ptr %n_nz, align 8, !dbg !827
  %arrayidx85 = getelementptr inbounds i64, ptr %nz, i64 %48, !dbg !828
  store i64 %row.0, ptr %arrayidx85, align 8, !dbg !829
  %.pre205 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !802
  br label %for.inc87, !dbg !830

for.inc87:                                        ; preds = %if.end77, %land.lhs.true79, %if.then82
  %49 = phi ptr [ %41, %if.end77 ], [ %41, %land.lhs.true79 ], [ %.pre205, %if.then82 ], !dbg !802
  %inc88 = add nuw nsw i64 %bl.0188, 1, !dbg !831
  call void @llvm.dbg.value(metadata i64 %inc88, metadata !712, metadata !DIExpression()), !dbg !717
  %arrayidx62 = getelementptr inbounds %union.Entry, ptr %49, i64 %i.2192, !dbg !802
  %50 = load ptr, ptr %arrayidx62, align 8, !dbg !802
  %length = getelementptr inbounds %struct.Block, ptr %50, i64 0, i32 5, !dbg !807
  %51 = load i64, ptr %length, align 8, !dbg !807
  %cmp63 = icmp slt i64 %inc88, %51, !dbg !808
  br i1 %cmp63, label %for.body64, label %for.inc90.loopexit, !dbg !809, !llvm.loop !832

for.inc90.loopexit:                               ; preds = %for.inc87
  %.pre206 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !834
  br label %for.inc90, !dbg !835

for.inc90:                                        ; preds = %for.inc90.loopexit, %for.cond61.preheader
  %52 = phi ptr [ %.pre206, %for.inc90.loopexit ], [ %36, %for.cond61.preheader ], !dbg !834
  %53 = phi ptr [ %49, %for.inc90.loopexit ], [ %37, %for.cond61.preheader ]
  %54 = phi ptr [ %49, %for.inc90.loopexit ], [ %38, %for.cond61.preheader ]
  %inc91 = add nsw i64 %i.2192, 1, !dbg !835
  call void @llvm.dbg.value(metadata i64 %inc91, metadata !709, metadata !DIExpression()), !dbg !717
  %arrayidx58 = getelementptr inbounds i64, ptr %52, i64 %add57, !dbg !836
  %55 = load i64, ptr %arrayidx58, align 8, !dbg !836
  %cmp59 = icmp slt i64 %inc91, %55, !dbg !837
  br i1 %cmp59, label %for.cond61.preheader, label %for.inc94, !dbg !799, !llvm.loop !838

for.inc94:                                        ; preds = %for.inc52, %for.inc90, %if.then35, %if.else
  %inc95 = add nsw i64 %c.0195, 1, !dbg !840
  call void @llvm.dbg.value(metadata i64 %inc95, metadata !713, metadata !DIExpression()), !dbg !717
  %56 = load i64, ptr %arrayidx23, align 8, !dbg !755
  %cmp24 = icmp slt i64 %inc95, %56, !dbg !757
  br i1 %cmp24, label %for.body25, label %for.cond97.preheader, !dbg !758, !llvm.loop !841

for.body99:                                       ; preds = %for.cond97.preheader, %for.body99
  %i.3197 = phi i64 [ %inc103, %for.body99 ], [ 0, %for.cond97.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.3197, metadata !709, metadata !DIExpression()), !dbg !717
  %arrayidx100 = getelementptr inbounds i64, ptr %nz, i64 %i.3197, !dbg !843
  %57 = load i64, ptr %arrayidx100, align 8, !dbg !843
  %arrayidx101 = getelementptr inbounds i64, ptr %structure, i64 %57, !dbg !844
  store i64 0, ptr %arrayidx101, align 8, !dbg !845
  %inc103 = add nuw nsw i64 %i.3197, 1, !dbg !846
  call void @llvm.dbg.value(metadata i64 %inc103, metadata !709, metadata !DIExpression()), !dbg !717
  %58 = load i64, ptr %n_nz, align 8, !dbg !759
  %cmp98 = icmp slt i64 %inc103, %58, !dbg !762
  br i1 %cmp98, label %for.body99, label %for.end104, !dbg !763, !llvm.loop !847

for.end104:                                       ; preds = %for.body99, %for.cond97.preheader
  %.lcssa = phi i64 [ %18, %for.cond97.preheader ], [ %58, %for.body99 ], !dbg !759
  tail call void @InsSort(ptr noundef %nz, i64 noundef %.lcssa), !dbg !849
  %59 = load i64, ptr %n_nz, align 8, !dbg !850
  tail call void @CheckColLength(i64 noundef %super, i64 noundef %59), !dbg !851
  ret void, !dbg !852
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FindDomStructure(i64 noundef %super, ptr nocapture noundef readonly %nz, i64 noundef %n_nz) local_unnamed_addr #0 !dbg !853 {
entry:
  call void @llvm.dbg.value(metadata i64 %super, metadata !857, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.value(metadata ptr %nz, metadata !858, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.value(metadata i64 %n_nz, metadata !859, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.value(metadata i64 %super, metadata !860, metadata !DIExpression()), !dbg !862
  %0 = load ptr, ptr @node, align 8, !dbg !863
  %arrayidx41 = getelementptr inbounds i64, ptr %0, i64 %super, !dbg !863
  %1 = load i64, ptr %arrayidx41, align 8, !dbg !863
  %cmp43 = icmp sgt i64 %1, 0, !dbg !866
  br i1 %cmp43, label %for.body, label %for.end21, !dbg !867

for.cond.loopexit:                                ; preds = %for.body12.for.body12_crit_edge, %for.body12.preheader, %for.cond10.preheader
  call void @llvm.dbg.value(metadata i64 %add4, metadata !860, metadata !DIExpression()), !dbg !862
  %2 = load ptr, ptr @node, align 8, !dbg !863
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %super, !dbg !863
  %3 = load i64, ptr %arrayidx, align 8, !dbg !863
  %add = add nsw i64 %3, %super, !dbg !868
  %cmp = icmp slt i64 %add4, %add, !dbg !866
  br i1 %cmp, label %for.body, label %for.end21, !dbg !867, !llvm.loop !869

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %col.044 = phi i64 [ %add4, %for.cond.loopexit ], [ %super, %entry ]
  call void @llvm.dbg.value(metadata i64 %col.044, metadata !860, metadata !DIExpression()), !dbg !862
  %4 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !871
  %arrayidx1 = getelementptr inbounds i64, ptr %4, i64 %col.044, !dbg !873
  %5 = load i64, ptr %arrayidx1, align 8, !dbg !873
  %sub = sub nsw i64 %col.044, %super, !dbg !874
  %add2 = sub i64 %n_nz, %sub, !dbg !875
  %sub3 = add i64 %add2, %5, !dbg !876
  %add4 = add nsw i64 %col.044, 1, !dbg !877
  %arrayidx5 = getelementptr inbounds i64, ptr %4, i64 %add4, !dbg !878
  store i64 %sub3, ptr %arrayidx5, align 8, !dbg !879
  %6 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !880
  %arrayidx7 = getelementptr inbounds i64, ptr %6, i64 %add4, !dbg !882
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !882
  %8 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 5), align 8, !dbg !883
  %cmp8 = icmp sgt i64 %7, %8, !dbg !884
  br i1 %cmp8, label %if.then, label %for.cond10.preheader, !dbg !885

for.cond10.preheader:                             ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %sub, metadata !861, metadata !DIExpression()), !dbg !862
  %cmp1139 = icmp slt i64 %sub, %n_nz, !dbg !886
  br i1 %cmp1139, label %for.body12.preheader, label %for.cond.loopexit, !dbg !889

for.body12.preheader:                             ; preds = %for.cond10.preheader
  call void @llvm.dbg.value(metadata i64 %sub, metadata !861, metadata !DIExpression()), !dbg !862
  %arrayidx1345 = getelementptr inbounds i64, ptr %nz, i64 %sub, !dbg !890
  %9 = load i64, ptr %arrayidx1345, align 8, !dbg !890
  %10 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !891
  %arrayidx1446 = getelementptr inbounds i64, ptr %6, i64 %col.044, !dbg !892
  %11 = load i64, ptr %arrayidx1446, align 8, !dbg !892
  %arrayidx1848 = getelementptr inbounds i64, ptr %10, i64 %11, !dbg !893
  store i64 %9, ptr %arrayidx1848, align 8, !dbg !894
  %inc49 = add nsw i64 %sub, 1, !dbg !895
  call void @llvm.dbg.value(metadata i64 %inc49, metadata !861, metadata !DIExpression()), !dbg !862
  %cmp1150 = icmp slt i64 %inc49, %n_nz, !dbg !886
  br i1 %cmp1150, label %for.body12.for.body12_crit_edge, label %for.cond.loopexit, !dbg !889, !llvm.loop !896

if.then:                                          ; preds = %for.body
  %puts = tail call i32 @puts(ptr nonnull @str.15), !dbg !898
  tail call void @exit(i32 noundef -1) #22, !dbg !900
  unreachable, !dbg !900

for.body12.for.body12_crit_edge:                  ; preds = %for.body12.preheader, %for.body12.for.body12_crit_edge
  %inc51 = phi i64 [ %inc, %for.body12.for.body12_crit_edge ], [ %inc49, %for.body12.preheader ]
  %.pre = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !901
  call void @llvm.dbg.value(metadata i64 %inc51, metadata !861, metadata !DIExpression()), !dbg !862
  %arrayidx13 = getelementptr inbounds i64, ptr %nz, i64 %inc51, !dbg !890
  %12 = load i64, ptr %arrayidx13, align 8, !dbg !890
  %13 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !891
  %arrayidx14 = getelementptr inbounds i64, ptr %.pre, i64 %col.044, !dbg !892
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !892
  %add15 = sub i64 %inc51, %sub, !dbg !902
  %sub17 = add i64 %add15, %14, !dbg !903
  %arrayidx18 = getelementptr inbounds i64, ptr %13, i64 %sub17, !dbg !893
  store i64 %12, ptr %arrayidx18, align 8, !dbg !894
  %inc = add nsw i64 %inc51, 1, !dbg !895
  call void @llvm.dbg.value(metadata i64 %inc, metadata !861, metadata !DIExpression()), !dbg !862
  %cmp11 = icmp slt i64 %inc, %n_nz, !dbg !886
  br i1 %cmp11, label %for.body12.for.body12_crit_edge, label %for.cond.loopexit, !dbg !889, !llvm.loop !896

for.end21:                                        ; preds = %for.cond.loopexit, %entry
  ret void, !dbg !904
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FindBlStructure(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M, i64 noundef %super, ptr nocapture noundef readonly %PERM, ptr nocapture noundef readonly %INVP, ptr nocapture noundef readonly %firstchild, ptr nocapture noundef readonly %child, ptr nocapture noundef %structure, ptr nocapture noundef %nz) local_unnamed_addr #0 !dbg !905 {
entry:
  call void @llvm.dbg.declare(metadata ptr %M, metadata !909, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i64 %super, metadata !910, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %PERM, metadata !911, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %INVP, metadata !912, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %firstchild, metadata !913, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %child, metadata !914, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %structure, metadata !915, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %nz, metadata !916, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 0, metadata !923, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %super, metadata !920, metadata !DIExpression()), !dbg !925
  %0 = load ptr, ptr @node, align 8, !dbg !926
  %arrayidx159 = getelementptr inbounds i64, ptr %0, i64 %super, !dbg !926
  %1 = load i64, ptr %arrayidx159, align 8, !dbg !926
  %cmp161 = icmp sgt i64 %1, 0, !dbg !929
  br i1 %cmp161, label %for.body.lr.ph, label %for.end25, !dbg !930

for.body.lr.ph:                                   ; preds = %entry
  %col2 = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 2
  %2 = load ptr, ptr %col2, align 8
  %row = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 4
  %3 = load ptr, ptr %row, align 8
  br label %for.body, !dbg !930

for.body:                                         ; preds = %for.body.lr.ph, %for.inc23
  %4 = phi ptr [ %0, %for.body.lr.ph ], [ %17, %for.inc23 ]
  %n_nz.0163 = phi i64 [ 0, %for.body.lr.ph ], [ %n_nz.1.lcssa, %for.inc23 ]
  %col.0162 = phi i64 [ %super, %for.body.lr.ph ], [ %inc24, %for.inc23 ]
  call void @llvm.dbg.value(metadata i64 %n_nz.0163, metadata !923, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %col.0162, metadata !920, metadata !DIExpression()), !dbg !925
  %arrayidx1 = getelementptr inbounds i64, ptr %PERM, i64 %col.0162, !dbg !931
  %5 = load i64, ptr %arrayidx1, align 8, !dbg !931
  call void @llvm.dbg.value(metadata i64 %5, metadata !917, metadata !DIExpression()), !dbg !925
  %arrayidx3 = getelementptr inbounds i64, ptr %2, i64 %5, !dbg !933
  %6 = load i64, ptr %arrayidx3, align 8, !dbg !933
  call void @llvm.dbg.value(metadata i64 %6, metadata !918, metadata !DIExpression()), !dbg !925
  %add6 = add nsw i64 %5, 1
  %arrayidx7 = getelementptr inbounds i64, ptr %2, i64 %add6
  call void @llvm.dbg.value(metadata i64 %n_nz.0163, metadata !923, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %6, metadata !918, metadata !DIExpression()), !dbg !925
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !935
  %cmp8156 = icmp slt i64 %6, %7, !dbg !937
  br i1 %cmp8156, label %for.body9.preheader, label %for.inc23, !dbg !938

for.body9.preheader:                              ; preds = %for.body
  %.pre180 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !939
  br label %for.body9, !dbg !938

for.body9:                                        ; preds = %for.body9.preheader, %for.inc
  %8 = phi i64 [ %15, %for.inc ], [ %7, %for.body9.preheader ]
  %9 = phi ptr [ %16, %for.inc ], [ %.pre180, %for.body9.preheader ], !dbg !939
  %n_nz.1158 = phi i64 [ %n_nz.2, %for.inc ], [ %n_nz.0163, %for.body9.preheader ]
  %i.0157 = phi i64 [ %inc22, %for.inc ], [ %6, %for.body9.preheader ]
  call void @llvm.dbg.value(metadata i64 %n_nz.1158, metadata !923, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %i.0157, metadata !918, metadata !DIExpression()), !dbg !925
  %arrayidx10 = getelementptr inbounds i64, ptr %3, i64 %i.0157, !dbg !942
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !942
  %arrayidx11 = getelementptr inbounds i64, ptr %INVP, i64 %10, !dbg !943
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !943
  call void @llvm.dbg.value(metadata i64 %11, metadata !922, metadata !DIExpression()), !dbg !925
  %arrayidx12 = getelementptr inbounds i64, ptr %9, i64 %11, !dbg !944
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !944
  %13 = tail call i64 @llvm.smin.i64(i64 %12, i64 0), !dbg !945
  %spec.select = add nsw i64 %13, %11, !dbg !945
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !922, metadata !DIExpression()), !dbg !925
  %cmp16.not = icmp slt i64 %spec.select, %super, !dbg !946
  br i1 %cmp16.not, label %for.inc, label %land.lhs.true, !dbg !948

land.lhs.true:                                    ; preds = %for.body9
  %arrayidx17 = getelementptr inbounds i64, ptr %structure, i64 %spec.select, !dbg !949
  %14 = load i64, ptr %arrayidx17, align 8, !dbg !949
  %tobool.not = icmp eq i64 %14, 0, !dbg !949
  br i1 %tobool.not, label %if.then18, label %for.inc, !dbg !950

if.then18:                                        ; preds = %land.lhs.true
  store i64 1, ptr %arrayidx17, align 8, !dbg !951
  %inc = add nsw i64 %n_nz.1158, 1, !dbg !953
  call void @llvm.dbg.value(metadata i64 %inc, metadata !923, metadata !DIExpression()), !dbg !925
  %arrayidx20 = getelementptr inbounds i64, ptr %nz, i64 %n_nz.1158, !dbg !954
  store i64 %spec.select, ptr %arrayidx20, align 8, !dbg !955
  %.pre = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !939
  %.pre181 = load i64, ptr %arrayidx7, align 8, !dbg !935
  br label %for.inc, !dbg !956

for.inc:                                          ; preds = %for.body9, %land.lhs.true, %if.then18
  %15 = phi i64 [ %8, %land.lhs.true ], [ %.pre181, %if.then18 ], [ %8, %for.body9 ], !dbg !935
  %16 = phi ptr [ %9, %land.lhs.true ], [ %.pre, %if.then18 ], [ %9, %for.body9 ]
  %n_nz.2 = phi i64 [ %n_nz.1158, %land.lhs.true ], [ %inc, %if.then18 ], [ %n_nz.1158, %for.body9 ], !dbg !925
  call void @llvm.dbg.value(metadata i64 %n_nz.2, metadata !923, metadata !DIExpression()), !dbg !925
  %inc22 = add nsw i64 %i.0157, 1, !dbg !957
  call void @llvm.dbg.value(metadata i64 %inc22, metadata !918, metadata !DIExpression()), !dbg !925
  %cmp8 = icmp slt i64 %inc22, %15, !dbg !937
  br i1 %cmp8, label %for.body9, label %for.inc23.loopexit, !dbg !938, !llvm.loop !958

for.inc23.loopexit:                               ; preds = %for.inc
  %.pre182 = load ptr, ptr @node, align 8, !dbg !926
  br label %for.inc23, !dbg !960

for.inc23:                                        ; preds = %for.inc23.loopexit, %for.body
  %17 = phi ptr [ %4, %for.body ], [ %.pre182, %for.inc23.loopexit ], !dbg !926
  %n_nz.1.lcssa = phi i64 [ %n_nz.0163, %for.body ], [ %n_nz.2, %for.inc23.loopexit ], !dbg !961
  %inc24 = add nsw i64 %col.0162, 1, !dbg !960
  call void @llvm.dbg.value(metadata i64 %n_nz.1.lcssa, metadata !923, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %inc24, metadata !920, metadata !DIExpression()), !dbg !925
  %arrayidx = getelementptr inbounds i64, ptr %17, i64 %super, !dbg !926
  %18 = load i64, ptr %arrayidx, align 8, !dbg !926
  %add = add nsw i64 %18, %super, !dbg !962
  %cmp = icmp slt i64 %inc24, %add, !dbg !929
  br i1 %cmp, label %for.body, label %for.end25, !dbg !930, !llvm.loop !963

for.end25:                                        ; preds = %for.inc23, %entry
  %n_nz.0.lcssa = phi i64 [ 0, %entry ], [ %n_nz.1.lcssa, %for.inc23 ], !dbg !961
  %arrayidx26 = getelementptr inbounds i64, ptr %firstchild, i64 %super, !dbg !965
  %19 = load i64, ptr %arrayidx26, align 8, !dbg !965
  call void @llvm.dbg.value(metadata i64 %19, metadata !919, metadata !DIExpression()), !dbg !925
  %add28 = add nsw i64 %super, 1
  %arrayidx29 = getelementptr inbounds i64, ptr %firstchild, i64 %add28
  call void @llvm.dbg.value(metadata i64 %n_nz.0.lcssa, metadata !923, metadata !DIExpression()), !dbg !925
  %20 = load i64, ptr %arrayidx29, align 8, !dbg !967
  %cmp30170 = icmp slt i64 %19, %20, !dbg !969
  br i1 %cmp30170, label %for.body31.preheader, label %for.cond67.preheader, !dbg !970

for.body31.preheader:                             ; preds = %for.end25
  %.pre183 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !971
  %.pre191 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !974
  br label %for.body31, !dbg !970

for.cond67.preheader:                             ; preds = %for.inc64, %for.end25
  %n_nz.3.lcssa = phi i64 [ %n_nz.0.lcssa, %for.end25 ], [ %n_nz.4.lcssa, %for.inc64 ], !dbg !961
  call void @llvm.dbg.value(metadata i64 0, metadata !918, metadata !DIExpression()), !dbg !925
  %cmp68175 = icmp sgt i64 %n_nz.3.lcssa, 0, !dbg !976
  br i1 %cmp68175, label %for.body69, label %for.end74, !dbg !979

for.body31:                                       ; preds = %for.body31.preheader, %for.inc64
  %.pre187 = phi ptr [ %.pre187192, %for.inc64 ], [ %.pre191, %for.body31.preheader ]
  %21 = phi ptr [ %41, %for.inc64 ], [ %.pre191, %for.body31.preheader ], !dbg !974
  %22 = phi i64 [ %42, %for.inc64 ], [ %20, %for.body31.preheader ]
  %23 = phi ptr [ %43, %for.inc64 ], [ %.pre183, %for.body31.preheader ]
  %24 = phi ptr [ %44, %for.inc64 ], [ %.pre183, %for.body31.preheader ], !dbg !971
  %n_nz.3172 = phi i64 [ %n_nz.4.lcssa, %for.inc64 ], [ %n_nz.0.lcssa, %for.body31.preheader ]
  %c.0171 = phi i64 [ %inc65, %for.inc64 ], [ %19, %for.body31.preheader ]
  call void @llvm.dbg.value(metadata i64 %n_nz.3172, metadata !923, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %c.0171, metadata !919, metadata !DIExpression()), !dbg !925
  %arrayidx32 = getelementptr inbounds i64, ptr %child, i64 %c.0171, !dbg !980
  %25 = load i64, ptr %arrayidx32, align 8, !dbg !980
  call void @llvm.dbg.value(metadata i64 %25, metadata !921, metadata !DIExpression()), !dbg !925
  %arrayidx33 = getelementptr inbounds i64, ptr %21, i64 %25, !dbg !981
  %26 = load i64, ptr %arrayidx33, align 8, !dbg !981
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 0), !dbg !982
  %spec.select154 = add nsw i64 %27, %25, !dbg !982
  call void @llvm.dbg.value(metadata i64 %spec.select154, metadata !921, metadata !DIExpression()), !dbg !925
  %arrayidx39 = getelementptr inbounds i64, ptr %24, i64 %spec.select154, !dbg !983
  %28 = load i64, ptr %arrayidx39, align 8, !dbg !983
  call void @llvm.dbg.value(metadata i64 %28, metadata !918, metadata !DIExpression()), !dbg !925
  %add41 = add nsw i64 %spec.select154, 1
  %arrayidx42165 = getelementptr inbounds i64, ptr %24, i64 %add41, !dbg !984
  %29 = load i64, ptr %arrayidx42165, align 8, !dbg !984
  %cmp43166 = icmp slt i64 %28, %29, !dbg !986
  br i1 %cmp43166, label %for.body44.preheader, label %for.inc64, !dbg !987

for.body44.preheader:                             ; preds = %for.body31
  %.pre185 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !988
  br label %for.body44, !dbg !987

for.body44:                                       ; preds = %for.body44.preheader, %for.inc61
  %.pre187194 = phi ptr [ %.pre187193, %for.inc61 ], [ %.pre187, %for.body44.preheader ]
  %30 = phi ptr [ %37, %for.inc61 ], [ %23, %for.body44.preheader ]
  %31 = phi ptr [ %38, %for.inc61 ], [ %.pre187, %for.body44.preheader ], !dbg !990
  %32 = phi ptr [ %39, %for.inc61 ], [ %.pre185, %for.body44.preheader ], !dbg !988
  %n_nz.4168 = phi i64 [ %n_nz.5, %for.inc61 ], [ %n_nz.3172, %for.body44.preheader ]
  %i.1167 = phi i64 [ %inc62, %for.inc61 ], [ %28, %for.body44.preheader ]
  call void @llvm.dbg.value(metadata i64 %n_nz.4168, metadata !923, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %i.1167, metadata !918, metadata !DIExpression()), !dbg !925
  %arrayidx45 = getelementptr inbounds i64, ptr %32, i64 %i.1167, !dbg !992
  %33 = load i64, ptr %arrayidx45, align 8, !dbg !992
  call void @llvm.dbg.value(metadata i64 %33, metadata !922, metadata !DIExpression()), !dbg !925
  %arrayidx46 = getelementptr inbounds i64, ptr %31, i64 %33, !dbg !993
  %34 = load i64, ptr %arrayidx46, align 8, !dbg !993
  %35 = tail call i64 @llvm.smin.i64(i64 %34, i64 0), !dbg !994
  %spec.select155 = add nsw i64 %35, %33, !dbg !994
  call void @llvm.dbg.value(metadata i64 %spec.select155, metadata !922, metadata !DIExpression()), !dbg !925
  %cmp52.not = icmp slt i64 %spec.select155, %super, !dbg !995
  br i1 %cmp52.not, label %for.inc61, label %land.lhs.true53, !dbg !997

land.lhs.true53:                                  ; preds = %for.body44
  %arrayidx54 = getelementptr inbounds i64, ptr %structure, i64 %spec.select155, !dbg !998
  %36 = load i64, ptr %arrayidx54, align 8, !dbg !998
  %tobool55.not = icmp eq i64 %36, 0, !dbg !998
  br i1 %tobool55.not, label %if.then56, label %for.inc61, !dbg !999

if.then56:                                        ; preds = %land.lhs.true53
  store i64 1, ptr %arrayidx54, align 8, !dbg !1000
  %inc58 = add nsw i64 %n_nz.4168, 1, !dbg !1002
  call void @llvm.dbg.value(metadata i64 %inc58, metadata !923, metadata !DIExpression()), !dbg !925
  %arrayidx59 = getelementptr inbounds i64, ptr %nz, i64 %n_nz.4168, !dbg !1003
  store i64 %spec.select155, ptr %arrayidx59, align 8, !dbg !1004
  %.pre184 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !988
  %.pre186 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !990
  %.pre188 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1005
  br label %for.inc61, !dbg !1006

for.inc61:                                        ; preds = %for.body44, %land.lhs.true53, %if.then56
  %.pre187193 = phi ptr [ %.pre187194, %land.lhs.true53 ], [ %.pre186, %if.then56 ], [ %.pre187194, %for.body44 ]
  %37 = phi ptr [ %30, %land.lhs.true53 ], [ %.pre188, %if.then56 ], [ %30, %for.body44 ], !dbg !1005
  %38 = phi ptr [ %31, %land.lhs.true53 ], [ %.pre186, %if.then56 ], [ %31, %for.body44 ]
  %39 = phi ptr [ %32, %land.lhs.true53 ], [ %.pre184, %if.then56 ], [ %32, %for.body44 ]
  %n_nz.5 = phi i64 [ %n_nz.4168, %land.lhs.true53 ], [ %inc58, %if.then56 ], [ %n_nz.4168, %for.body44 ], !dbg !925
  call void @llvm.dbg.value(metadata i64 %n_nz.5, metadata !923, metadata !DIExpression()), !dbg !925
  %inc62 = add nsw i64 %i.1167, 1, !dbg !1007
  call void @llvm.dbg.value(metadata i64 %inc62, metadata !918, metadata !DIExpression()), !dbg !925
  %arrayidx42 = getelementptr inbounds i64, ptr %37, i64 %add41, !dbg !984
  %40 = load i64, ptr %arrayidx42, align 8, !dbg !984
  %cmp43 = icmp slt i64 %inc62, %40, !dbg !986
  br i1 %cmp43, label %for.body44, label %for.inc64.loopexit, !dbg !987, !llvm.loop !1008

for.inc64.loopexit:                               ; preds = %for.inc61
  %.pre189 = load i64, ptr %arrayidx29, align 8, !dbg !967
  br label %for.inc64, !dbg !1010

for.inc64:                                        ; preds = %for.inc64.loopexit, %for.body31
  %.pre187192 = phi ptr [ %.pre187, %for.body31 ], [ %.pre187193, %for.inc64.loopexit ]
  %41 = phi ptr [ %21, %for.body31 ], [ %38, %for.inc64.loopexit ]
  %42 = phi i64 [ %22, %for.body31 ], [ %.pre189, %for.inc64.loopexit ], !dbg !967
  %43 = phi ptr [ %23, %for.body31 ], [ %37, %for.inc64.loopexit ]
  %44 = phi ptr [ %24, %for.body31 ], [ %37, %for.inc64.loopexit ]
  %n_nz.4.lcssa = phi i64 [ %n_nz.3172, %for.body31 ], [ %n_nz.5, %for.inc64.loopexit ], !dbg !961
  %inc65 = add nsw i64 %c.0171, 1, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %n_nz.4.lcssa, metadata !923, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %inc65, metadata !919, metadata !DIExpression()), !dbg !925
  %cmp30 = icmp slt i64 %inc65, %42, !dbg !969
  br i1 %cmp30, label %for.body31, label %for.cond67.preheader, !dbg !970, !llvm.loop !1011

for.body69:                                       ; preds = %for.cond67.preheader, %for.body69
  %i.2176 = phi i64 [ %inc73, %for.body69 ], [ 0, %for.cond67.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.2176, metadata !918, metadata !DIExpression()), !dbg !925
  %arrayidx70 = getelementptr inbounds i64, ptr %nz, i64 %i.2176, !dbg !1013
  %45 = load i64, ptr %arrayidx70, align 8, !dbg !1013
  %arrayidx71 = getelementptr inbounds i64, ptr %structure, i64 %45, !dbg !1014
  store i64 0, ptr %arrayidx71, align 8, !dbg !1015
  %inc73 = add nuw nsw i64 %i.2176, 1, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %inc73, metadata !918, metadata !DIExpression()), !dbg !925
  %exitcond.not = icmp eq i64 %inc73, %n_nz.3.lcssa, !dbg !976
  br i1 %exitcond.not, label %for.end74, label %for.body69, !dbg !979, !llvm.loop !1017

for.end74:                                        ; preds = %for.body69, %for.cond67.preheader
  tail call void @InsSort(ptr noundef %nz, i64 noundef %n_nz.3.lcssa), !dbg !1019
  %46 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1020
  %arrayidx75 = getelementptr inbounds i64, ptr %46, i64 %super, !dbg !1021
  %47 = load i64, ptr %arrayidx75, align 8, !dbg !1021
  %add76 = add nsw i64 %47, %n_nz.3.lcssa, !dbg !1022
  %arrayidx78 = getelementptr inbounds i64, ptr %46, i64 %add28, !dbg !1023
  store i64 %add76, ptr %arrayidx78, align 8, !dbg !1024
  %48 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1025
  %arrayidx80 = getelementptr inbounds i64, ptr %48, i64 %add28, !dbg !1027
  %49 = load i64, ptr %arrayidx80, align 8, !dbg !1027
  %50 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 5), align 8, !dbg !1028
  %cmp81 = icmp sgt i64 %49, %50, !dbg !1029
  br i1 %cmp81, label %if.then82, label %for.cond84.preheader, !dbg !1030

for.cond84.preheader:                             ; preds = %for.end74
  call void @llvm.dbg.value(metadata i64 0, metadata !918, metadata !DIExpression()), !dbg !925
  br i1 %cmp68175, label %for.body86.preheader, label %for.end93, !dbg !1031

for.body86.preheader:                             ; preds = %for.cond84.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !918, metadata !DIExpression()), !dbg !925
  %51 = load i64, ptr %nz, align 8, !dbg !1033
  %52 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !1035
  %arrayidx88198 = getelementptr inbounds i64, ptr %48, i64 %super, !dbg !1036
  %53 = load i64, ptr %arrayidx88198, align 8, !dbg !1036
  %arrayidx90199 = getelementptr inbounds i64, ptr %52, i64 %53, !dbg !1037
  store i64 %51, ptr %arrayidx90199, align 8, !dbg !1038
  call void @llvm.dbg.value(metadata i64 1, metadata !918, metadata !DIExpression()), !dbg !925
  %exitcond179.not200 = icmp eq i64 %n_nz.3.lcssa, 1, !dbg !1039
  br i1 %exitcond179.not200, label %for.end93, label %for.body86.for.body86_crit_edge, !dbg !1031, !llvm.loop !1040

if.then82:                                        ; preds = %for.end74
  %puts = tail call i32 @puts(ptr nonnull @str.15), !dbg !1042
  tail call void @exit(i32 noundef -1) #22, !dbg !1044
  unreachable, !dbg !1044

for.body86.for.body86_crit_edge:                  ; preds = %for.body86.preheader, %for.body86.for.body86_crit_edge
  %inc92201 = phi i64 [ %inc92, %for.body86.for.body86_crit_edge ], [ 1, %for.body86.preheader ]
  %.pre190 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %inc92201, metadata !918, metadata !DIExpression()), !dbg !925
  %arrayidx87 = getelementptr inbounds i64, ptr %nz, i64 %inc92201, !dbg !1033
  %54 = load i64, ptr %arrayidx87, align 8, !dbg !1033
  %55 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !1035
  %arrayidx88 = getelementptr inbounds i64, ptr %.pre190, i64 %super, !dbg !1036
  %56 = load i64, ptr %arrayidx88, align 8, !dbg !1036
  %add89 = add nsw i64 %56, %inc92201, !dbg !1046
  %arrayidx90 = getelementptr inbounds i64, ptr %55, i64 %add89, !dbg !1037
  store i64 %54, ptr %arrayidx90, align 8, !dbg !1038
  %inc92 = add nuw nsw i64 %inc92201, 1, !dbg !1047
  call void @llvm.dbg.value(metadata i64 %inc92, metadata !918, metadata !DIExpression()), !dbg !925
  %exitcond179.not = icmp eq i64 %inc92, %n_nz.3.lcssa, !dbg !1039
  br i1 %exitcond179.not, label %for.end93, label %for.body86.for.body86_crit_edge, !dbg !1031, !llvm.loop !1040

for.end93:                                        ; preds = %for.body86.for.body86_crit_edge, %for.body86.preheader, %for.cond84.preheader
  ret void, !dbg !1048
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FindDummyDomainStructure(i64 noundef %which_domain) local_unnamed_addr #0 !dbg !1049 {
entry:
  call void @llvm.dbg.value(metadata i64 %which_domain, metadata !1051, metadata !DIExpression()), !dbg !1056
  %0 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 11), align 8, !dbg !1057
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 %which_domain, !dbg !1058
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1058
  call void @llvm.dbg.value(metadata i64 %1, metadata !1052, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 -1, metadata !1055, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i64 -1, metadata !1054, metadata !DIExpression()), !dbg !1056
  %2 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1059
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 %1, !dbg !1060
  %3 = load i64, ptr %arrayidx1, align 8, !dbg !1060
  %add = add nsw i64 %3, 1, !dbg !1061
  call void @llvm.dbg.value(metadata i64 %add, metadata !1053, metadata !DIExpression()), !dbg !1056
  %4 = load i64, ptr @LB, align 8, !dbg !1062
  %add2 = add nsw i64 %4, %which_domain, !dbg !1063
  %arrayidx3 = getelementptr inbounds i64, ptr %2, i64 %add2, !dbg !1064
  %5 = load i64, ptr %arrayidx3, align 8, !dbg !1064
  %add5 = add nsw i64 %add2, 1, !dbg !1065
  %arrayidx6 = getelementptr inbounds i64, ptr %2, i64 %add5, !dbg !1066
  store i64 %5, ptr %arrayidx6, align 8, !dbg !1067
  %add7 = add nsw i64 %1, 1
  call void @llvm.dbg.value(metadata i64 %add, metadata !1053, metadata !DIExpression()), !dbg !1056
  %6 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1068
  %arrayidx866 = getelementptr inbounds i64, ptr %6, i64 %add7, !dbg !1069
  %7 = load i64, ptr %arrayidx866, align 8, !dbg !1069
  %cmp67 = icmp slt i64 %add, %7, !dbg !1070
  %add16 = add i64 %which_domain, 1
  br i1 %cmp67, label %while.body.lr.ph, label %while.end33, !dbg !1071

while.body.lr.ph:                                 ; preds = %entry
  %.pre = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !1072
  br label %while.body, !dbg !1071

while.body:                                       ; preds = %while.body.lr.ph, %while.end
  %8 = phi ptr [ %.pre, %while.body.lr.ph ], [ %20, %while.end ], !dbg !1072
  %9 = phi ptr [ %6, %while.body.lr.ph ], [ %22, %while.end ]
  %row.068 = phi i64 [ %add, %while.body.lr.ph ], [ %row.1.lcssa, %while.end ]
  call void @llvm.dbg.value(metadata i64 %row.068, metadata !1053, metadata !DIExpression()), !dbg !1056
  %arrayidx9 = getelementptr inbounds i64, ptr %8, i64 %row.068, !dbg !1074
  %10 = load i64, ptr %arrayidx9, align 8, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %10, metadata !1054, metadata !DIExpression()), !dbg !1056
  %11 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !1075
  %arrayidx10 = getelementptr inbounds i64, ptr %11, i64 %10, !dbg !1077
  %12 = load i64, ptr %arrayidx10, align 8, !dbg !1077
  %13 = tail call i64 @llvm.smin.i64(i64 %12, i64 0), !dbg !1078
  %spec.select = add nsw i64 %13, %10, !dbg !1078
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1054, metadata !DIExpression()), !dbg !1056
  %arrayidx14 = getelementptr inbounds i64, ptr %11, i64 %spec.select, !dbg !1079
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !1079
  %add15 = add nsw i64 %spec.select, %14, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %add15, metadata !1055, metadata !DIExpression()), !dbg !1056
  %15 = load i64, ptr @LB, align 8, !dbg !1081
  %add17 = add i64 %add16, %15, !dbg !1082
  %arrayidx18 = getelementptr inbounds i64, ptr %9, i64 %add17, !dbg !1083
  %16 = load i64, ptr %arrayidx18, align 8, !dbg !1083
  %arrayidx19 = getelementptr inbounds i64, ptr %8, i64 %16, !dbg !1084
  store i64 %spec.select, ptr %arrayidx19, align 8, !dbg !1085
  %17 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1086
  %18 = load i64, ptr @LB, align 8, !dbg !1087
  %add21 = add i64 %add16, %18, !dbg !1088
  %arrayidx22 = getelementptr inbounds i64, ptr %17, i64 %add21, !dbg !1089
  %19 = load i64, ptr %arrayidx22, align 8, !dbg !1090
  %inc = add nsw i64 %19, 1, !dbg !1090
  store i64 %inc, ptr %arrayidx22, align 8, !dbg !1090
  %20 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8
  call void @llvm.dbg.value(metadata i64 %row.068, metadata !1053, metadata !DIExpression()), !dbg !1056
  %arrayidx2460 = getelementptr inbounds i64, ptr %20, i64 %row.068, !dbg !1091
  %21 = load i64, ptr %arrayidx2460, align 8, !dbg !1091
  %cmp25.not61 = icmp sge i64 %21, %spec.select, !dbg !1092
  %cmp2762 = icmp slt i64 %21, %add15
  %or.cond63 = select i1 %cmp25.not61, i1 %cmp2762, i1 false, !dbg !1093
  %22 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %22, i64 %add7
  %23 = load i64, ptr %arrayidx29, align 8
  br i1 %or.cond63, label %land.rhs, label %while.end, !dbg !1093

land.rhs:                                         ; preds = %while.body, %while.body31
  %row.164 = phi i64 [ %inc32, %while.body31 ], [ %row.068, %while.body ]
  call void @llvm.dbg.value(metadata i64 %row.164, metadata !1053, metadata !DIExpression()), !dbg !1056
  %cmp30 = icmp slt i64 %row.164, %23, !dbg !1094
  br i1 %cmp30, label %while.body31, label %while.end33, !dbg !1095

while.body31:                                     ; preds = %land.rhs
  %inc32 = add nsw i64 %row.164, 1, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %inc32, metadata !1053, metadata !DIExpression()), !dbg !1056
  %arrayidx24 = getelementptr inbounds i64, ptr %20, i64 %inc32, !dbg !1091
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !1091
  %cmp25.not = icmp sge i64 %24, %spec.select, !dbg !1092
  %cmp27 = icmp slt i64 %24, %add15
  %or.cond = select i1 %cmp25.not, i1 %cmp27, i1 false, !dbg !1093
  br i1 %or.cond, label %land.rhs, label %while.end, !dbg !1093, !llvm.loop !1097

while.end:                                        ; preds = %while.body31, %while.body
  %row.1.lcssa = phi i64 [ %row.068, %while.body ], [ %inc32, %while.body31 ], !dbg !1056
  call void @llvm.dbg.value(metadata i64 %row.1.lcssa, metadata !1053, metadata !DIExpression()), !dbg !1056
  %cmp = icmp slt i64 %row.1.lcssa, %23, !dbg !1070
  br i1 %cmp, label %while.body, label %while.end33, !dbg !1071, !llvm.loop !1098

while.end33:                                      ; preds = %while.end, %land.rhs, %entry
  %.lcssa = phi ptr [ %6, %entry ], [ %22, %land.rhs ], [ %22, %while.end ], !dbg !1068
  %25 = load i64, ptr @LB, align 8, !dbg !1100
  %add35 = add i64 %add16, %25, !dbg !1102
  %arrayidx36 = getelementptr inbounds i64, ptr %.lcssa, i64 %add35, !dbg !1103
  %26 = load i64, ptr %arrayidx36, align 8, !dbg !1103
  %27 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 5), align 8, !dbg !1104
  %cmp37 = icmp sgt i64 %26, %27, !dbg !1105
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !1106

if.then38:                                        ; preds = %while.end33
  %puts = tail call i32 @puts(ptr nonnull @str.16), !dbg !1107
  tail call void @exit(i32 noundef -1) #22, !dbg !1109
  unreachable, !dbg !1109

if.end39:                                         ; preds = %while.end33
  ret void, !dbg !1110
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #9

declare !dbg !1111 void @PlaceDomains(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind uwtable
define dso_local void @ComputeBlockParents(ptr nocapture noundef readonly %T) local_unnamed_addr #0 !dbg !1112 {
entry:
  call void @llvm.dbg.value(metadata ptr %T, metadata !1114, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 0, metadata !1115, metadata !DIExpression()), !dbg !1118
  %0 = load i64, ptr @LB, align 8, !dbg !1119
  %cmp92 = icmp sgt i64 %0, 0, !dbg !1122
  br i1 %cmp92, label %for.body, label %for.cond36.preheader, !dbg !1123

for.cond36.preheader:                             ; preds = %for.inc32, %entry
  %1 = phi i64 [ %0, %entry ], [ %24, %for.inc32 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !1115, metadata !DIExpression()), !dbg !1118
  %2 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !1124
  %cmp3798 = icmp sgt i64 %2, 0, !dbg !1127
  br i1 %cmp3798, label %for.body38.preheader, label %for.end59, !dbg !1128

for.body38.preheader:                             ; preds = %for.cond36.preheader
  %.pre102 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1129
  br label %for.body38, !dbg !1128

for.body:                                         ; preds = %entry, %for.inc32
  %3 = phi i64 [ %24, %for.inc32 ], [ %0, %entry ]
  %b.093 = phi i64 [ %add34, %for.inc32 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %b.093, metadata !1115, metadata !DIExpression()), !dbg !1118
  %4 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !1131
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %b.093, !dbg !1133
  %5 = load i64, ptr %arrayidx, align 8, !dbg !1133
  %tobool.not = icmp eq i64 %5, 0, !dbg !1133
  br i1 %tobool.not, label %if.then, label %for.inc32, !dbg !1134

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1135
  %arrayidx1 = getelementptr inbounds i64, ptr %6, i64 %b.093, !dbg !1138
  %7 = load i64, ptr %arrayidx1, align 8, !dbg !1138
  call void @llvm.dbg.value(metadata i64 %7, metadata !1116, metadata !DIExpression()), !dbg !1118
  %add = add nsw i64 %b.093, 1
  %arrayidx388 = getelementptr inbounds i64, ptr %6, i64 %add, !dbg !1139
  %8 = load i64, ptr %arrayidx388, align 8, !dbg !1139
  %cmp489 = icmp slt i64 %7, %8, !dbg !1141
  br i1 %cmp489, label %for.body5.lr.ph, label %for.inc32, !dbg !1142

for.body5.lr.ph:                                  ; preds = %if.then
  %add7 = add i64 %b.093, -1
  br label %for.body5, !dbg !1142

for.body5:                                        ; preds = %for.inc, %for.body5.lr.ph
  %9 = phi i64 [ %3, %for.body5.lr.ph ], [ %.pre, %for.inc ], !dbg !1143
  %i.090 = phi i64 [ %7, %for.body5.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.090, metadata !1116, metadata !DIExpression()), !dbg !1118
  %10 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !1146
  %arrayidx6 = getelementptr inbounds i64, ptr %10, i64 %b.093, !dbg !1147
  %11 = load i64, ptr %arrayidx6, align 8, !dbg !1147
  %sub = add i64 %add7, %11, !dbg !1148
  %arrayidx8 = getelementptr inbounds i64, ptr %T, i64 %sub, !dbg !1149
  %12 = load i64, ptr %arrayidx8, align 8, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %12, metadata !1117, metadata !DIExpression()), !dbg !1118
  %cmp9 = icmp eq i64 %12, %9, !dbg !1150
  %13 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1151
  %arrayidx11 = getelementptr inbounds %union.Entry, ptr %13, i64 %i.090, !dbg !1151
  %14 = load ptr, ptr %arrayidx11, align 8, !dbg !1151
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !1152

if.then10:                                        ; preds = %for.body5
  %parent = getelementptr inbounds %struct.Block, ptr %14, i64 0, i32 6, !dbg !1153
  store i64 -1, ptr %parent, align 8, !dbg !1154
  br label %for.inc, !dbg !1155

if.else:                                          ; preds = %for.body5
  %15 = load i64, ptr %14, align 8, !dbg !1156
  %j = getelementptr inbounds %struct.Block, ptr %14, i64 0, i32 1, !dbg !1158
  %16 = load i64, ptr %j, align 8, !dbg !1158
  %cmp15.not = icmp sgt i64 %15, %16, !dbg !1159
  br i1 %cmp15.not, label %if.else19, label %if.then16, !dbg !1160

if.then16:                                        ; preds = %if.else
  %parent18 = getelementptr inbounds %struct.Block, ptr %14, i64 0, i32 6, !dbg !1161
  store i64 -1, ptr %parent18, align 8, !dbg !1162
  br label %for.inc, !dbg !1163

if.else19:                                        ; preds = %if.else
  %call = tail call i64 @FindBlock(i64 noundef %15, i64 noundef %12) #20, !dbg !1164
  %17 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1166
  %arrayidx22 = getelementptr inbounds %union.Entry, ptr %17, i64 %i.090, !dbg !1166
  %18 = load ptr, ptr %arrayidx22, align 8, !dbg !1166
  %parent23 = getelementptr inbounds %struct.Block, ptr %18, i64 0, i32 6, !dbg !1167
  store i64 %call, ptr %parent23, align 8, !dbg !1168
  %19 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1169
  %arrayidx24 = getelementptr inbounds %union.Entry, ptr %19, i64 %i.090, !dbg !1169
  %20 = load ptr, ptr %arrayidx24, align 8, !dbg !1169
  %parent25 = getelementptr inbounds %struct.Block, ptr %20, i64 0, i32 6, !dbg !1171
  %21 = load i64, ptr %parent25, align 8, !dbg !1171
  %cmp26 = icmp eq i64 %21, -1, !dbg !1172
  br i1 %cmp26, label %if.then27, label %for.inc, !dbg !1173

if.then27:                                        ; preds = %if.else19
  %puts = tail call i32 @puts(ptr nonnull @str.17), !dbg !1174
  br label %for.inc, !dbg !1174

for.inc:                                          ; preds = %if.then10, %if.else19, %if.then27, %if.then16
  %inc = add nsw i64 %i.090, 1, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1116, metadata !DIExpression()), !dbg !1118
  %22 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1176
  %arrayidx3 = getelementptr inbounds i64, ptr %22, i64 %add, !dbg !1139
  %23 = load i64, ptr %arrayidx3, align 8, !dbg !1139
  %cmp4 = icmp slt i64 %inc, %23, !dbg !1141
  %.pre = load i64, ptr @LB, align 8, !dbg !1177
  br i1 %cmp4, label %for.body5, label %for.inc32, !dbg !1142, !llvm.loop !1178

for.inc32:                                        ; preds = %for.inc, %if.then, %for.body
  %24 = phi i64 [ %3, %if.then ], [ %3, %for.body ], [ %.pre, %for.inc ], !dbg !1119
  %25 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !1180
  %arrayidx33 = getelementptr inbounds i64, ptr %25, i64 %b.093, !dbg !1181
  %26 = load i64, ptr %arrayidx33, align 8, !dbg !1181
  %add34 = add nsw i64 %26, %b.093, !dbg !1182
  call void @llvm.dbg.value(metadata i64 %add34, metadata !1115, metadata !DIExpression()), !dbg !1118
  %cmp = icmp slt i64 %add34, %24, !dbg !1122
  br i1 %cmp, label %for.body, label %for.cond36.preheader, !dbg !1123, !llvm.loop !1183

for.body38:                                       ; preds = %for.body38.preheader, %for.inc57
  %27 = phi i64 [ %43, %for.inc57 ], [ %2, %for.body38.preheader ]
  %28 = phi i64 [ %44, %for.inc57 ], [ %1, %for.body38.preheader ], !dbg !1185
  %29 = phi ptr [ %45, %for.inc57 ], [ %.pre102, %for.body38.preheader ], !dbg !1129
  %b.199 = phi i64 [ %add42, %for.inc57 ], [ 0, %for.body38.preheader ]
  call void @llvm.dbg.value(metadata i64 %b.199, metadata !1115, metadata !DIExpression()), !dbg !1118
  %add39 = add nsw i64 %28, %b.199, !dbg !1186
  %arrayidx40 = getelementptr inbounds i64, ptr %29, i64 %add39, !dbg !1187
  %30 = load i64, ptr %arrayidx40, align 8, !dbg !1187
  call void @llvm.dbg.value(metadata i64 %30, metadata !1116, metadata !DIExpression()), !dbg !1118
  %add42 = add nuw nsw i64 %b.199, 1
  %add4394 = add i64 %add42, %28, !dbg !1188
  %arrayidx4495 = getelementptr inbounds i64, ptr %29, i64 %add4394, !dbg !1190
  %31 = load i64, ptr %arrayidx4495, align 8, !dbg !1190
  %cmp4596 = icmp slt i64 %30, %31, !dbg !1191
  br i1 %cmp4596, label %for.body46, label %for.inc57, !dbg !1192

for.body46:                                       ; preds = %for.body38, %for.body46
  %i.197 = phi i64 [ %inc55, %for.body46 ], [ %30, %for.body38 ]
  call void @llvm.dbg.value(metadata i64 %i.197, metadata !1116, metadata !DIExpression()), !dbg !1118
  %32 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 11), align 8, !dbg !1193
  %arrayidx47 = getelementptr inbounds i64, ptr %32, i64 %b.199, !dbg !1195
  %33 = load i64, ptr %arrayidx47, align 8, !dbg !1195
  %arrayidx48 = getelementptr inbounds i64, ptr %T, i64 %33, !dbg !1196
  %34 = load i64, ptr %arrayidx48, align 8, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %34, metadata !1117, metadata !DIExpression()), !dbg !1118
  %35 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1197
  %arrayidx49 = getelementptr inbounds %union.Entry, ptr %35, i64 %i.197, !dbg !1197
  %36 = load ptr, ptr %arrayidx49, align 8, !dbg !1197
  %37 = load i64, ptr %36, align 8, !dbg !1198
  %call51 = tail call i64 @FindBlock(i64 noundef %37, i64 noundef %34) #20, !dbg !1199
  %38 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1200
  %arrayidx52 = getelementptr inbounds %union.Entry, ptr %38, i64 %i.197, !dbg !1200
  %39 = load ptr, ptr %arrayidx52, align 8, !dbg !1200
  %parent53 = getelementptr inbounds %struct.Block, ptr %39, i64 0, i32 6, !dbg !1201
  store i64 %call51, ptr %parent53, align 8, !dbg !1202
  %inc55 = add nsw i64 %i.197, 1, !dbg !1203
  call void @llvm.dbg.value(metadata i64 %inc55, metadata !1116, metadata !DIExpression()), !dbg !1118
  %40 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1204
  %41 = load i64, ptr @LB, align 8, !dbg !1205
  %add43 = add i64 %add42, %41, !dbg !1188
  %arrayidx44 = getelementptr inbounds i64, ptr %40, i64 %add43, !dbg !1190
  %42 = load i64, ptr %arrayidx44, align 8, !dbg !1190
  %cmp45 = icmp slt i64 %inc55, %42, !dbg !1191
  br i1 %cmp45, label %for.body46, label %for.inc57.loopexit, !dbg !1192, !llvm.loop !1206

for.inc57.loopexit:                               ; preds = %for.body46
  %.pre103 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !1124
  br label %for.inc57, !dbg !1208

for.inc57:                                        ; preds = %for.inc57.loopexit, %for.body38
  %43 = phi i64 [ %.pre103, %for.inc57.loopexit ], [ %27, %for.body38 ], !dbg !1124
  %44 = phi i64 [ %41, %for.inc57.loopexit ], [ %28, %for.body38 ]
  %45 = phi ptr [ %40, %for.inc57.loopexit ], [ %29, %for.body38 ]
  call void @llvm.dbg.value(metadata i64 %add42, metadata !1115, metadata !DIExpression()), !dbg !1118
  %cmp37 = icmp slt i64 %add42, %43, !dbg !1127
  br i1 %cmp37, label %for.body38, label %for.end59, !dbg !1128, !llvm.loop !1209

for.end59:                                        ; preds = %for.inc57, %for.cond36.preheader
  ret void, !dbg !1211
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1212 i64 @FindBlock(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @FillInStructure(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M, ptr nocapture noundef readonly %firstchild, ptr nocapture noundef readonly %child, ptr nocapture noundef readonly %PERM, ptr nocapture noundef readonly %INVP) local_unnamed_addr #0 !dbg !1213 {
entry:
  %n_nz = alloca i64, align 8
  call void @llvm.dbg.declare(metadata ptr %M, metadata !1217, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata ptr %firstchild, metadata !1218, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr %child, metadata !1219, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr %PERM, metadata !1220, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr %INVP, metadata !1221, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n_nz) #20, !dbg !1231
  %0 = load i64, ptr %M, align 8, !dbg !1232
  %mul = shl i64 %0, 3, !dbg !1233
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #21, !dbg !1234
  call void @llvm.dbg.value(metadata ptr %call, metadata !1226, metadata !DIExpression()), !dbg !1230
  %call3 = tail call noalias ptr @malloc(i64 noundef %mul) #21, !dbg !1235
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1227, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i64 0, metadata !1222, metadata !DIExpression()), !dbg !1230
  %cmp80 = icmp sgt i64 %0, 0, !dbg !1236
  br i1 %cmp80, label %for.body.preheader, label %for.cond5.preheader, !dbg !1239

for.body.preheader:                               ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %call, i8 0, i64 %mul, i1 false), !dbg !1240
  call void @llvm.dbg.value(metadata i32 undef, metadata !1222, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i32 undef, metadata !1222, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1230
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.body.preheader, %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1223, metadata !DIExpression()), !dbg !1230
  %1 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !1241
  %cmp687 = icmp sgt i64 %1, 0, !dbg !1244
  br i1 %cmp687, label %for.body7, label %for.cond31.preheader, !dbg !1245

for.cond31.preheader:                             ; preds = %for.end21, %for.cond5.preheader
  %sub2686.lcssa = phi i64 [ undef, %for.cond5.preheader ], [ %sub26, %for.end21 ]
  store i64 %sub2686.lcssa, ptr %n_nz, align 8, !dbg !1246
  call void @llvm.dbg.value(metadata i64 0, metadata !1225, metadata !DIExpression()), !dbg !1230
  %2 = load i64, ptr @LB, align 8, !dbg !1248
  %cmp3293 = icmp sgt i64 %2, 0, !dbg !1251
  br i1 %cmp3293, label %for.body33, label %for.end47, !dbg !1252

for.body7:                                        ; preds = %for.cond5.preheader, %for.end21
  %j.088 = phi i64 [ %inc29, %for.end21 ], [ 0, %for.cond5.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.088, metadata !1223, metadata !DIExpression()), !dbg !1230
  %3 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 11), align 8, !dbg !1253
  %arrayidx8 = getelementptr inbounds i64, ptr %3, i64 %j.088, !dbg !1254
  %4 = load i64, ptr %arrayidx8, align 8, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %4, metadata !1224, metadata !DIExpression()), !dbg !1230
  %5 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1255
  %arrayidx9 = getelementptr inbounds i64, ptr %5, i64 %4, !dbg !1257
  %6 = load i64, ptr %arrayidx9, align 8, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %6, metadata !1222, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1230
  %add11 = add nsw i64 %4, 1
  %arrayidx12 = getelementptr inbounds i64, ptr %5, i64 %add11
  %7 = load i64, ptr %arrayidx12, align 8
  %i.182 = add nsw i64 %6, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %i.182, metadata !1222, metadata !DIExpression()), !dbg !1230
  %cmp1383 = icmp slt i64 %i.182, %7, !dbg !1259
  br i1 %cmp1383, label %for.body14.lr.ph, label %for.end21, !dbg !1261

for.body14.lr.ph:                                 ; preds = %for.body7
  %8 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8
  %uglygep = getelementptr i8, ptr %8, i64 8, !dbg !1261
  %9 = shl i64 %6, 3, !dbg !1261
  %uglygep97 = getelementptr i8, ptr %uglygep, i64 %9, !dbg !1261
  %10 = xor i64 %6, -1, !dbg !1261
  %11 = add i64 %7, %10, !dbg !1261
  %12 = shl nuw i64 %11, 3, !dbg !1261
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call3, ptr align 8 %uglygep97, i64 %12, i1 false), !dbg !1262
  call void @llvm.dbg.value(metadata i32 undef, metadata !1222, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1230
  br label %for.end21, !dbg !1263

for.end21:                                        ; preds = %for.body14.lr.ph, %for.body7
  %13 = xor i64 %6, -1, !dbg !1263
  %sub26 = add i64 %7, %13, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %sub26, metadata !1228, metadata !DIExpression()), !dbg !1230
  %14 = load i64, ptr @LB, align 8, !dbg !1264
  %add27 = add nsw i64 %14, %j.088, !dbg !1265
  tail call void @FindDetailedStructure(i64 noundef %add27, ptr noundef %call, ptr noundef %call3, i64 noundef %sub26), !dbg !1266
  %inc29 = add nuw nsw i64 %j.088, 1, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %inc29, metadata !1223, metadata !DIExpression()), !dbg !1230
  %15 = load i64, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 12), align 8, !dbg !1241
  %cmp6 = icmp slt i64 %inc29, %15, !dbg !1244
  br i1 %cmp6, label %for.body7, label %for.cond31.preheader, !dbg !1245, !llvm.loop !1268

for.body33:                                       ; preds = %for.cond31.preheader, %for.inc44
  %super.094 = phi i64 [ %add46, %for.inc44 ], [ 0, %for.cond31.preheader ]
  call void @llvm.dbg.value(metadata i64 %super.094, metadata !1225, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr %n_nz, metadata !1228, metadata !DIExpression(DW_OP_deref)), !dbg !1230
  call void @FindSuperStructure(ptr noundef nonnull byval(%struct.SMatrix) align 8 %M, i64 noundef %super.094, ptr noundef %PERM, ptr noundef %INVP, ptr noundef %firstchild, ptr noundef %child, ptr noundef %call, ptr noundef %call3, ptr noundef nonnull %n_nz), !dbg !1270
  %16 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !1272
  %arrayidx34 = getelementptr inbounds i64, ptr %16, i64 %super.094, !dbg !1274
  %17 = load i64, ptr %arrayidx34, align 8, !dbg !1274
  %tobool.not = icmp eq i64 %17, 0, !dbg !1274
  %18 = load ptr, ptr @node, align 8, !dbg !1275
  %arrayidx3689 = getelementptr inbounds i64, ptr %18, i64 %super.094
  %19 = load i64, ptr %arrayidx3689, align 8, !dbg !1275
  %cmp3891 = icmp sgt i64 %19, 0
  %or.cond = select i1 %tobool.not, i1 %cmp3891, i1 false, !dbg !1276
  call void @llvm.dbg.value(metadata i64 %super.094, metadata !1223, metadata !DIExpression()), !dbg !1230
  br i1 %or.cond, label %for.body39.lr.ph, label %for.inc44, !dbg !1276

for.body39.lr.ph:                                 ; preds = %for.body33
  %20 = load i64, ptr %n_nz, align 8
  br label %for.body39, !dbg !1277

for.body39:                                       ; preds = %for.body39.lr.ph, %for.body39
  %j.192 = phi i64 [ %super.094, %for.body39.lr.ph ], [ %add42, %for.body39 ]
  call void @llvm.dbg.value(metadata i64 %j.192, metadata !1223, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %20, metadata !1228, metadata !DIExpression()), !dbg !1230
  tail call void @FindDetailedStructure(i64 noundef %j.192, ptr noundef %call, ptr noundef %call3, i64 noundef %20), !dbg !1279
  %21 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !1282
  %arrayidx41 = getelementptr inbounds i64, ptr %21, i64 %j.192, !dbg !1283
  %22 = load i64, ptr %arrayidx41, align 8, !dbg !1283
  %add42 = add nsw i64 %22, %j.192, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %add42, metadata !1223, metadata !DIExpression()), !dbg !1230
  %23 = load ptr, ptr @node, align 8, !dbg !1285
  %arrayidx36 = getelementptr inbounds i64, ptr %23, i64 %super.094, !dbg !1285
  %24 = load i64, ptr %arrayidx36, align 8, !dbg !1285
  %add37 = add nsw i64 %24, %super.094, !dbg !1286
  %cmp38 = icmp slt i64 %add42, %add37, !dbg !1287
  br i1 %cmp38, label %for.body39, label %for.inc44, !dbg !1277, !llvm.loop !1288

for.inc44:                                        ; preds = %for.body39, %for.body33
  %25 = phi i64 [ %19, %for.body33 ], [ %24, %for.body39 ], !dbg !1290
  %add46 = add nsw i64 %25, %super.094, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %add46, metadata !1225, metadata !DIExpression()), !dbg !1230
  %26 = load i64, ptr @LB, align 8, !dbg !1248
  %cmp32 = icmp slt i64 %add46, %26, !dbg !1251
  br i1 %cmp32, label %for.body33, label %for.end47, !dbg !1252, !llvm.loop !1292

for.end47:                                        ; preds = %for.inc44, %for.cond31.preheader
  tail call void @free(ptr noundef %call) #20, !dbg !1294
  tail call void @free(ptr noundef %call3) #20, !dbg !1295
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n_nz) #20, !dbg !1296
  ret void, !dbg !1296
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FindDetailedStructure(i64 noundef %col, ptr nocapture noundef %structure, ptr nocapture noundef readonly %nz, i64 noundef %n_nz) local_unnamed_addr #0 !dbg !1297 {
entry:
  call void @llvm.dbg.value(metadata i64 %col, metadata !1301, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %structure, metadata !1302, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %nz, metadata !1303, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %n_nz, metadata !1304, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 0, metadata !1305, metadata !DIExpression()), !dbg !1310
  %cmp100 = icmp sgt i64 %n_nz, 0, !dbg !1311
  br i1 %cmp100, label %for.body, label %for.end, !dbg !1314

for.body:                                         ; preds = %entry, %for.body
  %i.0101 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.0101, metadata !1305, metadata !DIExpression()), !dbg !1310
  %arrayidx = getelementptr inbounds i64, ptr %nz, i64 %i.0101, !dbg !1315
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1315
  %arrayidx1 = getelementptr inbounds i64, ptr %structure, i64 %0, !dbg !1316
  store i64 1, ptr %arrayidx1, align 8, !dbg !1317
  %inc = add nuw nsw i64 %i.0101, 1, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1305, metadata !DIExpression()), !dbg !1310
  %exitcond.not = icmp eq i64 %inc, %n_nz, !dbg !1311
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1314, !llvm.loop !1319

for.end:                                          ; preds = %for.body, %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1321
  %arrayidx2 = getelementptr inbounds i64, ptr %1, i64 %col, !dbg !1323
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1323
  call void @llvm.dbg.value(metadata i64 %2, metadata !1305, metadata !DIExpression()), !dbg !1310
  %add = add nsw i64 %col, 1
  %arrayidx4110 = getelementptr inbounds i64, ptr %1, i64 %add, !dbg !1324
  %3 = load i64, ptr %arrayidx4110, align 8, !dbg !1324
  %cmp5111 = icmp slt i64 %2, %3, !dbg !1326
  br i1 %cmp5111, label %for.body6.preheader, label %for.cond55.preheader, !dbg !1327

for.body6.preheader:                              ; preds = %for.end
  %.pre = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8
  br label %for.body6, !dbg !1327

for.cond55.preheader:                             ; preds = %for.inc52, %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1305, metadata !DIExpression()), !dbg !1310
  br i1 %cmp100, label %for.body57, label %for.end62, !dbg !1328

for.body6:                                        ; preds = %for.body6.preheader, %for.inc52
  %4 = phi ptr [ %30, %for.inc52 ], [ %.pre, %for.body6.preheader ]
  %i.1112 = phi i64 [ %inc53, %for.inc52 ], [ %2, %for.body6.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1112, metadata !1305, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 0, metadata !1308, metadata !DIExpression()), !dbg !1310
  %5 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !1330
  %arrayidx7 = getelementptr inbounds i64, ptr %5, i64 %i.1112, !dbg !1332
  %6 = load i64, ptr %arrayidx7, align 8, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %6, metadata !1307, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 0, metadata !1306, metadata !DIExpression()), !dbg !1310
  %arrayidx9 = getelementptr inbounds i64, ptr %4, i64 %6
  %7 = load i64, ptr %arrayidx9, align 8
  %cmp10102 = icmp sgt i64 %7, 0, !dbg !1333
  br i1 %cmp10102, label %for.body11, label %for.end17, !dbg !1336

for.body11:                                       ; preds = %for.body6, %for.body11
  %n.0104 = phi i64 [ %spec.select, %for.body11 ], [ 0, %for.body6 ]
  %j.0103 = phi i64 [ %inc16, %for.body11 ], [ 0, %for.body6 ]
  call void @llvm.dbg.value(metadata i64 %n.0104, metadata !1308, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %j.0103, metadata !1306, metadata !DIExpression()), !dbg !1310
  %add12 = add nsw i64 %j.0103, %6, !dbg !1337
  %arrayidx13 = getelementptr inbounds i64, ptr %structure, i64 %add12, !dbg !1339
  %8 = load i64, ptr %arrayidx13, align 8, !dbg !1339
  %tobool.not = icmp ne i64 %8, 0, !dbg !1339
  %inc14 = zext i1 %tobool.not to i64, !dbg !1340
  %spec.select = add nuw nsw i64 %n.0104, %inc14, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1308, metadata !DIExpression()), !dbg !1310
  %inc16 = add nuw nsw i64 %j.0103, 1, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %inc16, metadata !1306, metadata !DIExpression()), !dbg !1310
  %exitcond116.not = icmp eq i64 %inc16, %7, !dbg !1333
  br i1 %exitcond116.not, label %for.end17, label %for.body11, !dbg !1336, !llvm.loop !1342

for.end17:                                        ; preds = %for.body11, %for.body6
  %n.0.lcssa = phi i64 [ 0, %for.body6 ], [ %spec.select, %for.body11 ], !dbg !1344
  %9 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1345
  %arrayidx18 = getelementptr inbounds %union.Entry, ptr %9, i64 %i.1112, !dbg !1345
  %10 = load ptr, ptr %arrayidx18, align 8, !dbg !1345
  %length = getelementptr inbounds %struct.Block, ptr %10, i64 0, i32 5, !dbg !1346
  store i64 %n.0.lcssa, ptr %length, align 8, !dbg !1347
  %11 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !1348
  %arrayidx19 = getelementptr inbounds i64, ptr %11, i64 %6, !dbg !1350
  %12 = load i64, ptr %arrayidx19, align 8, !dbg !1350
  %cmp20 = icmp eq i64 %n.0.lcssa, %12, !dbg !1351
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !1352

if.then21:                                        ; preds = %for.end17
  %13 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1353
  %arrayidx22 = getelementptr inbounds %union.Entry, ptr %13, i64 %i.1112, !dbg !1353
  %14 = load ptr, ptr %arrayidx22, align 8, !dbg !1353
  %structure23 = getelementptr inbounds %struct.Block, ptr %14, i64 0, i32 8, !dbg !1355
  store ptr null, ptr %structure23, align 8, !dbg !1356
  br label %for.inc52, !dbg !1357

if.else:                                          ; preds = %for.end17
  %call = tail call i64 @EmbeddedOwner(i64 noundef %i.1112), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %call, metadata !1309, metadata !DIExpression()), !dbg !1310
  %cmp24 = icmp slt i64 %call, 0, !dbg !1360
  br i1 %cmp24, label %if.then25, label %if.end31, !dbg !1362

if.then25:                                        ; preds = %if.else
  %15 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1363
  %arrayidx26 = getelementptr inbounds %union.Entry, ptr %15, i64 %i.1112, !dbg !1363
  %16 = load ptr, ptr %arrayidx26, align 8, !dbg !1363
  %17 = load i64, ptr %16, align 8, !dbg !1363
  %j29 = getelementptr inbounds %struct.Block, ptr %16, i64 0, i32 1, !dbg !1364
  %18 = load i64, ptr %j29, align 8, !dbg !1364
  %call30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i64 noundef %17, i64 noundef %18, i64 noundef %call), !dbg !1365
  br label %if.end31, !dbg !1365

if.end31:                                         ; preds = %if.then25, %if.else
  %mul = shl i64 %n.0.lcssa, 3, !dbg !1366
  %call32 = tail call ptr @MyMalloc(i64 noundef %mul, i64 noundef %call) #20, !dbg !1367
  %19 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1368
  %arrayidx33 = getelementptr inbounds %union.Entry, ptr %19, i64 %i.1112, !dbg !1368
  %20 = load ptr, ptr %arrayidx33, align 8, !dbg !1368
  %structure34 = getelementptr inbounds %struct.Block, ptr %20, i64 0, i32 8, !dbg !1369
  store ptr %call32, ptr %structure34, align 8, !dbg !1370
  call void @llvm.dbg.value(metadata i64 0, metadata !1308, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 0, metadata !1306, metadata !DIExpression()), !dbg !1310
  %21 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !1371
  %arrayidx36105 = getelementptr inbounds i64, ptr %21, i64 %6, !dbg !1374
  %22 = load i64, ptr %arrayidx36105, align 8, !dbg !1374
  %cmp37106 = icmp sgt i64 %22, 0, !dbg !1375
  br i1 %cmp37106, label %for.body38, label %for.inc52, !dbg !1376

for.body38:                                       ; preds = %if.end31, %for.inc48
  %23 = phi ptr [ %28, %for.inc48 ], [ %21, %if.end31 ]
  %n.2109 = phi i64 [ %n.3, %for.inc48 ], [ 0, %if.end31 ]
  %j.1107 = phi i64 [ %inc49, %for.inc48 ], [ 0, %if.end31 ]
  call void @llvm.dbg.value(metadata i64 %n.2109, metadata !1308, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %j.1107, metadata !1306, metadata !DIExpression()), !dbg !1310
  %add39 = add nsw i64 %j.1107, %6, !dbg !1377
  %arrayidx40 = getelementptr inbounds i64, ptr %structure, i64 %add39, !dbg !1379
  %24 = load i64, ptr %arrayidx40, align 8, !dbg !1379
  %tobool41.not = icmp eq i64 %24, 0, !dbg !1379
  br i1 %tobool41.not, label %for.inc48, label %if.then42, !dbg !1380

if.then42:                                        ; preds = %for.body38
  %25 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1381
  %arrayidx43 = getelementptr inbounds %union.Entry, ptr %25, i64 %i.1112, !dbg !1381
  %26 = load ptr, ptr %arrayidx43, align 8, !dbg !1381
  %structure44 = getelementptr inbounds %struct.Block, ptr %26, i64 0, i32 8, !dbg !1382
  %27 = load ptr, ptr %structure44, align 8, !dbg !1382
  %inc45 = add nsw i64 %n.2109, 1, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %inc45, metadata !1308, metadata !DIExpression()), !dbg !1310
  %arrayidx46 = getelementptr inbounds i64, ptr %27, i64 %n.2109, !dbg !1381
  store i64 %j.1107, ptr %arrayidx46, align 8, !dbg !1384
  %.pre118 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !1371
  br label %for.inc48, !dbg !1381

for.inc48:                                        ; preds = %for.body38, %if.then42
  %28 = phi ptr [ %.pre118, %if.then42 ], [ %23, %for.body38 ], !dbg !1371
  %n.3 = phi i64 [ %inc45, %if.then42 ], [ %n.2109, %for.body38 ], !dbg !1385
  call void @llvm.dbg.value(metadata i64 %n.3, metadata !1308, metadata !DIExpression()), !dbg !1310
  %inc49 = add nuw nsw i64 %j.1107, 1, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %inc49, metadata !1306, metadata !DIExpression()), !dbg !1310
  %arrayidx36 = getelementptr inbounds i64, ptr %28, i64 %6, !dbg !1374
  %29 = load i64, ptr %arrayidx36, align 8, !dbg !1374
  %cmp37 = icmp slt i64 %inc49, %29, !dbg !1375
  br i1 %cmp37, label %for.body38, label %for.inc52, !dbg !1376, !llvm.loop !1387

for.inc52:                                        ; preds = %for.inc48, %if.end31, %if.then21
  %30 = phi ptr [ %21, %if.end31 ], [ %11, %if.then21 ], [ %28, %for.inc48 ]
  %inc53 = add nsw i64 %i.1112, 1, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %inc53, metadata !1305, metadata !DIExpression()), !dbg !1310
  %31 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1390
  %arrayidx4 = getelementptr inbounds i64, ptr %31, i64 %add, !dbg !1324
  %32 = load i64, ptr %arrayidx4, align 8, !dbg !1324
  %cmp5 = icmp slt i64 %inc53, %32, !dbg !1326
  br i1 %cmp5, label %for.body6, label %for.cond55.preheader, !dbg !1327, !llvm.loop !1391

for.body57:                                       ; preds = %for.cond55.preheader, %for.body57
  %i.2115 = phi i64 [ %inc61, %for.body57 ], [ 0, %for.cond55.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.2115, metadata !1305, metadata !DIExpression()), !dbg !1310
  %arrayidx58 = getelementptr inbounds i64, ptr %nz, i64 %i.2115, !dbg !1393
  %33 = load i64, ptr %arrayidx58, align 8, !dbg !1393
  %arrayidx59 = getelementptr inbounds i64, ptr %structure, i64 %33, !dbg !1395
  store i64 0, ptr %arrayidx59, align 8, !dbg !1396
  %inc61 = add nuw nsw i64 %i.2115, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %inc61, metadata !1305, metadata !DIExpression()), !dbg !1310
  %exitcond117.not = icmp eq i64 %inc61, %n_nz, !dbg !1398
  br i1 %exitcond117.not, label %for.end62, label %for.body57, !dbg !1328, !llvm.loop !1399

for.end62:                                        ; preds = %for.body57, %for.cond55.preheader
  ret void, !dbg !1401
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FillInNZ(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M, ptr nocapture noundef readonly %PERM, ptr nocapture noundef readonly %INVP) local_unnamed_addr #0 !dbg !1402 {
entry:
  call void @llvm.dbg.declare(metadata ptr %M, metadata !1406, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata ptr %PERM, metadata !1407, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata ptr %INVP, metadata !1408, metadata !DIExpression()), !dbg !1412
  %0 = load i64, ptr %M, align 8, !dbg !1413
  %mul = shl i64 %0, 3, !dbg !1414
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #21, !dbg !1415
  call void @llvm.dbg.value(metadata ptr %call, metadata !1410, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 0, metadata !1409, metadata !DIExpression()), !dbg !1412
  %cmp16 = icmp sgt i64 %0, 0, !dbg !1416
  br i1 %cmp16, label %for.body.preheader, label %for.cond2.preheader, !dbg !1419

for.body.preheader:                               ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %call, i8 0, i64 %mul, i1 false), !dbg !1420
  call void @llvm.dbg.value(metadata i32 undef, metadata !1409, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32 undef, metadata !1409, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1412
  br label %for.cond2.preheader, !dbg !1421

for.cond2.preheader:                              ; preds = %for.body.preheader, %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1409, metadata !DIExpression()), !dbg !1412
  %1 = load i64, ptr @LB, align 8, !dbg !1421
  %cmp318 = icmp sgt i64 %1, 0, !dbg !1424
  br i1 %cmp318, label %for.body4, label %for.end7, !dbg !1425

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %j.119 = phi i64 [ %add, %for.body4 ], [ 0, %for.cond2.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.119, metadata !1409, metadata !DIExpression()), !dbg !1412
  tail call void @FillIn(ptr noundef nonnull byval(%struct.SMatrix) align 8 %M, i64 noundef %j.119, ptr noundef %PERM, ptr noundef %INVP, ptr noundef %call), !dbg !1426
  %2 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !1427
  %arrayidx6 = getelementptr inbounds i64, ptr %2, i64 %j.119, !dbg !1428
  %3 = load i64, ptr %arrayidx6, align 8, !dbg !1428
  %add = add nsw i64 %3, %j.119, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %add, metadata !1409, metadata !DIExpression()), !dbg !1412
  %4 = load i64, ptr @LB, align 8, !dbg !1421
  %cmp3 = icmp slt i64 %add, %4, !dbg !1424
  br i1 %cmp3, label %for.body4, label %for.end7, !dbg !1425, !llvm.loop !1430

for.end7:                                         ; preds = %for.body4, %for.cond2.preheader
  tail call void @free(ptr noundef %call) #20, !dbg !1432
  ret void, !dbg !1433
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FillIn(ptr nocapture noundef readonly byval(%struct.SMatrix) align 8 %M, i64 noundef %col, ptr nocapture noundef readonly %PERM, ptr nocapture noundef readonly %INVP, ptr nocapture noundef %scatter) local_unnamed_addr #0 !dbg !1434 {
entry:
  call void @llvm.dbg.declare(metadata ptr %M, metadata !1438, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %col, metadata !1439, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata ptr %PERM, metadata !1440, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata ptr %INVP, metadata !1441, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata ptr %scatter, metadata !1442, metadata !DIExpression()), !dbg !1449
  %arrayidx = getelementptr inbounds i64, ptr %PERM, i64 %col, !dbg !1450
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %0, metadata !1447, metadata !DIExpression()), !dbg !1449
  %1 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !1451
  %arrayidx1 = getelementptr inbounds i64, ptr %1, i64 %col, !dbg !1453
  %2 = load i64, ptr %arrayidx1, align 8, !dbg !1453
  %tobool.not = icmp eq i64 %2, 0, !dbg !1453
  br i1 %tobool.not, label %for.cond35.preheader, label %if.then, !dbg !1454

for.cond35.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1445, metadata !DIExpression()), !dbg !1449
  %3 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !1455
  %arrayidx36195 = getelementptr inbounds i64, ptr %3, i64 %col, !dbg !1459
  %4 = load i64, ptr %arrayidx36195, align 8, !dbg !1459
  %cmp37196 = icmp sgt i64 %4, 0, !dbg !1460
  br i1 %cmp37196, label %for.body38.lr.ph, label %if.end110, !dbg !1461

for.body38.lr.ph:                                 ; preds = %for.cond35.preheader
  %col41 = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 2
  %5 = load ptr, ptr %col41, align 8
  %row49 = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 4
  %6 = load ptr, ptr %row49, align 8
  %nz55 = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 5
  %7 = load ptr, ptr %nz55, align 8
  %tobool56.not = icmp eq ptr %7, null
  %add73 = add nsw i64 %col, 1
  br label %for.body38, !dbg !1461

if.then:                                          ; preds = %entry
  %col2 = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 2, !dbg !1462
  %8 = load ptr, ptr %col2, align 8, !dbg !1462
  %arrayidx3 = getelementptr inbounds i64, ptr %8, i64 %0, !dbg !1465
  %9 = load i64, ptr %arrayidx3, align 8, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %9, metadata !1443, metadata !DIExpression()), !dbg !1449
  %add = add nsw i64 %0, 1
  %arrayidx5 = getelementptr inbounds i64, ptr %8, i64 %add
  call void @llvm.dbg.value(metadata i64 %9, metadata !1443, metadata !DIExpression()), !dbg !1449
  %10 = load i64, ptr %arrayidx5, align 8, !dbg !1466
  %cmp177 = icmp slt i64 %9, %10, !dbg !1468
  br i1 %cmp177, label %for.body.lr.ph, label %for.end, !dbg !1469

for.body.lr.ph:                                   ; preds = %if.then
  %row6 = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 4
  %11 = load ptr, ptr %row6, align 8
  %nz = getelementptr inbounds %struct.SMatrix, ptr %M, i64 0, i32 5
  %12 = load ptr, ptr %nz, align 8
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %for.body.us, label %for.body, !dbg !1470

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %13 = phi i64 [ %16, %for.inc.us ], [ %10, %for.body.lr.ph ]
  %i.0178.us = phi i64 [ %inc.us, %for.inc.us ], [ %9, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.0178.us, metadata !1443, metadata !DIExpression()), !dbg !1449
  %arrayidx7.us = getelementptr inbounds i64, ptr %11, i64 %i.0178.us, !dbg !1474
  %14 = load i64, ptr %arrayidx7.us, align 8, !dbg !1474
  %arrayidx8.us = getelementptr inbounds i64, ptr %INVP, i64 %14, !dbg !1475
  %15 = load i64, ptr %arrayidx8.us, align 8, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %15, metadata !1446, metadata !DIExpression()), !dbg !1449
  %cmp9.not.us = icmp slt i64 %15, %col, !dbg !1476
  br i1 %cmp9.not.us, label %for.inc.us, label %if.then10.us, !dbg !1477

if.then10.us:                                     ; preds = %for.body.us
  %call.us = tail call double @Value(i64 noundef %14, i64 noundef %0) #20, !dbg !1478
  %arrayidx18.us = getelementptr inbounds double, ptr %scatter, i64 %15, !dbg !1480
  store double %call.us, ptr %arrayidx18.us, align 8, !dbg !1481
  %.pre202 = load i64, ptr %arrayidx5, align 8, !dbg !1466
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then10.us, %for.body.us
  %16 = phi i64 [ %.pre202, %if.then10.us ], [ %13, %for.body.us ], !dbg !1466
  %inc.us = add nsw i64 %i.0178.us, 1, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1443, metadata !DIExpression()), !dbg !1449
  %cmp.us = icmp slt i64 %inc.us, %16, !dbg !1468
  br i1 %cmp.us, label %for.body.us, label %for.end, !dbg !1469, !llvm.loop !1483

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %17 = phi i64 [ %21, %for.inc ], [ %10, %for.body.lr.ph ]
  %i.0178 = phi i64 [ %inc, %for.inc ], [ %9, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.0178, metadata !1443, metadata !DIExpression()), !dbg !1449
  %arrayidx7 = getelementptr inbounds i64, ptr %11, i64 %i.0178, !dbg !1474
  %18 = load i64, ptr %arrayidx7, align 8, !dbg !1474
  %arrayidx8 = getelementptr inbounds i64, ptr %INVP, i64 %18, !dbg !1475
  %19 = load i64, ptr %arrayidx8, align 8, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %19, metadata !1446, metadata !DIExpression()), !dbg !1449
  %cmp9.not = icmp slt i64 %19, %col, !dbg !1476
  br i1 %cmp9.not, label %for.inc, label %if.then10, !dbg !1477

if.then10:                                        ; preds = %for.body
  %arrayidx14 = getelementptr inbounds double, ptr %12, i64 %i.0178, !dbg !1485
  %20 = load double, ptr %arrayidx14, align 8, !dbg !1485
  %arrayidx15 = getelementptr inbounds double, ptr %scatter, i64 %19, !dbg !1486
  store double %20, ptr %arrayidx15, align 8, !dbg !1487
  %.pre = load i64, ptr %arrayidx5, align 8, !dbg !1466
  br label %for.inc, !dbg !1486

for.inc:                                          ; preds = %for.body, %if.then10
  %21 = phi i64 [ %17, %for.body ], [ %.pre, %if.then10 ], !dbg !1466
  %inc = add nsw i64 %i.0178, 1, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1443, metadata !DIExpression()), !dbg !1449
  %cmp = icmp slt i64 %inc, %21, !dbg !1468
  br i1 %cmp, label %for.body, label %for.end, !dbg !1469, !llvm.loop !1483

for.end:                                          ; preds = %for.inc, %for.inc.us, %if.then
  %22 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1488
  %arrayidx20 = getelementptr inbounds i64, ptr %22, i64 %col, !dbg !1490
  %23 = load i64, ptr %arrayidx20, align 8, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %23, metadata !1443, metadata !DIExpression()), !dbg !1449
  %add22 = add nsw i64 %col, 1
  %arrayidx23180 = getelementptr inbounds i64, ptr %22, i64 %add22, !dbg !1491
  %24 = load i64, ptr %arrayidx23180, align 8, !dbg !1491
  %cmp24181 = icmp slt i64 %23, %24, !dbg !1493
  br i1 %cmp24181, label %for.body25, label %if.end110, !dbg !1494

for.body25:                                       ; preds = %for.end, %for.body25
  %i.1182 = phi i64 [ %inc32, %for.body25 ], [ %23, %for.end ]
  call void @llvm.dbg.value(metadata i64 %i.1182, metadata !1443, metadata !DIExpression()), !dbg !1449
  %25 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !1495
  %arrayidx26 = getelementptr inbounds i64, ptr %25, i64 %i.1182, !dbg !1497
  %26 = load i64, ptr %arrayidx26, align 8, !dbg !1497
  %arrayidx27 = getelementptr inbounds double, ptr %scatter, i64 %26, !dbg !1498
  %27 = load double, ptr %arrayidx27, align 8, !dbg !1498
  %28 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1499
  %arrayidx28 = getelementptr inbounds %union.Entry, ptr %28, i64 %i.1182, !dbg !1500
  store double %27, ptr %arrayidx28, align 8, !dbg !1501
  %29 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !1502
  %arrayidx29 = getelementptr inbounds i64, ptr %29, i64 %i.1182, !dbg !1503
  %30 = load i64, ptr %arrayidx29, align 8, !dbg !1503
  %arrayidx30 = getelementptr inbounds double, ptr %scatter, i64 %30, !dbg !1504
  store double 0.000000e+00, ptr %arrayidx30, align 8, !dbg !1505
  %inc32 = add nsw i64 %i.1182, 1, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %inc32, metadata !1443, metadata !DIExpression()), !dbg !1449
  %31 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1507
  %arrayidx23 = getelementptr inbounds i64, ptr %31, i64 %add22, !dbg !1491
  %32 = load i64, ptr %arrayidx23, align 8, !dbg !1491
  %cmp24 = icmp slt i64 %inc32, %32, !dbg !1493
  br i1 %cmp24, label %for.body25, label %if.end110, !dbg !1494, !llvm.loop !1508

for.body38:                                       ; preds = %for.body38.lr.ph, %for.inc107
  %j1.0197 = phi i64 [ 0, %for.body38.lr.ph ], [ %inc108, %for.inc107 ]
  call void @llvm.dbg.value(metadata i64 %j1.0197, metadata !1445, metadata !DIExpression()), !dbg !1449
  %add39 = add nsw i64 %j1.0197, %col, !dbg !1510
  %arrayidx40 = getelementptr inbounds i64, ptr %PERM, i64 %add39, !dbg !1512
  %33 = load i64, ptr %arrayidx40, align 8, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %33, metadata !1447, metadata !DIExpression()), !dbg !1449
  %arrayidx42 = getelementptr inbounds i64, ptr %5, i64 %33, !dbg !1513
  %34 = load i64, ptr %arrayidx42, align 8, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %34, metadata !1443, metadata !DIExpression()), !dbg !1449
  %add45 = add nsw i64 %33, 1
  %arrayidx46 = getelementptr inbounds i64, ptr %5, i64 %add45
  %35 = load i64, ptr %arrayidx46, align 8, !dbg !1515
  %cmp47183 = icmp slt i64 %34, %35, !dbg !1517
  br i1 %cmp47183, label %for.body48.lr.ph, label %for.end70, !dbg !1518

for.body48.lr.ph:                                 ; preds = %for.body38
  br i1 %tobool56.not, label %for.body48.us, label %for.body48, !dbg !1519

for.body48.us:                                    ; preds = %for.body48.lr.ph, %for.inc68.us
  %36 = phi i64 [ %39, %for.inc68.us ], [ %35, %for.body48.lr.ph ]
  %i.2184.us = phi i64 [ %inc69.us, %for.inc68.us ], [ %34, %for.body48.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.2184.us, metadata !1443, metadata !DIExpression()), !dbg !1449
  %arrayidx50.us = getelementptr inbounds i64, ptr %6, i64 %i.2184.us, !dbg !1523
  %37 = load i64, ptr %arrayidx50.us, align 8, !dbg !1523
  %arrayidx51.us = getelementptr inbounds i64, ptr %INVP, i64 %37, !dbg !1524
  %38 = load i64, ptr %arrayidx51.us, align 8, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %38, metadata !1446, metadata !DIExpression()), !dbg !1449
  %cmp53.not.us = icmp slt i64 %38, %add39, !dbg !1525
  br i1 %cmp53.not.us, label %for.inc68.us, label %if.then54.us, !dbg !1526

if.then54.us:                                     ; preds = %for.body48.us
  %call64.us = tail call double @Value(i64 noundef %37, i64 noundef %33) #20, !dbg !1527
  %arrayidx65.us = getelementptr inbounds double, ptr %scatter, i64 %38, !dbg !1529
  store double %call64.us, ptr %arrayidx65.us, align 8, !dbg !1530
  %.pre204 = load i64, ptr %arrayidx46, align 8, !dbg !1515
  br label %for.inc68.us

for.inc68.us:                                     ; preds = %if.then54.us, %for.body48.us
  %39 = phi i64 [ %.pre204, %if.then54.us ], [ %36, %for.body48.us ], !dbg !1515
  %inc69.us = add nsw i64 %i.2184.us, 1, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %inc69.us, metadata !1443, metadata !DIExpression()), !dbg !1449
  %cmp47.us = icmp slt i64 %inc69.us, %39, !dbg !1517
  br i1 %cmp47.us, label %for.body48.us, label %for.end70, !dbg !1518, !llvm.loop !1532

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc68
  %40 = phi i64 [ %44, %for.inc68 ], [ %35, %for.body48.lr.ph ]
  %i.2184 = phi i64 [ %inc69, %for.inc68 ], [ %34, %for.body48.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.2184, metadata !1443, metadata !DIExpression()), !dbg !1449
  %arrayidx50 = getelementptr inbounds i64, ptr %6, i64 %i.2184, !dbg !1523
  %41 = load i64, ptr %arrayidx50, align 8, !dbg !1523
  %arrayidx51 = getelementptr inbounds i64, ptr %INVP, i64 %41, !dbg !1524
  %42 = load i64, ptr %arrayidx51, align 8, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %42, metadata !1446, metadata !DIExpression()), !dbg !1449
  %cmp53.not = icmp slt i64 %42, %add39, !dbg !1525
  br i1 %cmp53.not, label %for.inc68, label %if.then54, !dbg !1526

if.then54:                                        ; preds = %for.body48
  %arrayidx59 = getelementptr inbounds double, ptr %7, i64 %i.2184, !dbg !1534
  %43 = load double, ptr %arrayidx59, align 8, !dbg !1534
  %arrayidx60 = getelementptr inbounds double, ptr %scatter, i64 %42, !dbg !1535
  store double %43, ptr %arrayidx60, align 8, !dbg !1536
  %.pre203 = load i64, ptr %arrayidx46, align 8, !dbg !1515
  br label %for.inc68, !dbg !1535

for.inc68:                                        ; preds = %for.body48, %if.then54
  %44 = phi i64 [ %40, %for.body48 ], [ %.pre203, %if.then54 ], !dbg !1515
  %inc69 = add nsw i64 %i.2184, 1, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %inc69, metadata !1443, metadata !DIExpression()), !dbg !1449
  %cmp47 = icmp slt i64 %inc69, %44, !dbg !1517
  br i1 %cmp47, label %for.body48, label %for.end70, !dbg !1518, !llvm.loop !1532

for.end70:                                        ; preds = %for.inc68, %for.inc68.us, %for.body38
  %45 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1537
  %arrayidx71 = getelementptr inbounds i64, ptr %45, i64 %col, !dbg !1539
  %46 = load i64, ptr %arrayidx71, align 8, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %46, metadata !1444, metadata !DIExpression()), !dbg !1449
  %arrayidx74191 = getelementptr inbounds i64, ptr %45, i64 %add73, !dbg !1540
  %47 = load i64, ptr %arrayidx74191, align 8, !dbg !1540
  %cmp75192 = icmp slt i64 %46, %47, !dbg !1542
  br i1 %cmp75192, label %for.cond77.preheader.preheader, label %for.inc107, !dbg !1543

for.cond77.preheader.preheader:                   ; preds = %for.end70
  %.pre205 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1544
  br label %for.cond77.preheader, !dbg !1543

for.cond77.preheader:                             ; preds = %for.cond77.preheader.preheader, %for.inc104
  %48 = phi ptr [ %63, %for.inc104 ], [ %45, %for.cond77.preheader.preheader ]
  %49 = phi ptr [ %64, %for.inc104 ], [ %.pre205, %for.cond77.preheader.preheader ], !dbg !1544
  %b.0193 = phi i64 [ %inc105, %for.inc104 ], [ %46, %for.cond77.preheader.preheader ]
  call void @llvm.dbg.value(metadata i64 %b.0193, metadata !1444, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 0, metadata !1443, metadata !DIExpression()), !dbg !1449
  %arrayidx78186 = getelementptr inbounds %union.Entry, ptr %49, i64 %b.0193, !dbg !1544
  %50 = load ptr, ptr %arrayidx78186, align 8, !dbg !1544
  %length187 = getelementptr inbounds %struct.Block, ptr %50, i64 0, i32 5, !dbg !1548
  %51 = load i64, ptr %length187, align 8, !dbg !1548
  %cmp79188 = icmp sgt i64 %51, 0, !dbg !1549
  br i1 %cmp79188, label %for.body80, label %for.inc104, !dbg !1550

for.body80:                                       ; preds = %for.cond77.preheader, %if.end92
  %52 = phi i64 [ %62, %if.end92 ], [ %51, %for.cond77.preheader ]
  %53 = phi ptr [ %61, %if.end92 ], [ %50, %for.cond77.preheader ]
  %i.3189 = phi i64 [ %inc102, %if.end92 ], [ 0, %for.cond77.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.3189, metadata !1443, metadata !DIExpression()), !dbg !1449
  %structure = getelementptr inbounds %struct.Block, ptr %53, i64 0, i32 8, !dbg !1551
  %54 = load ptr, ptr %structure, align 8, !dbg !1551
  %tobool82.not = icmp eq ptr %54, null, !dbg !1554
  %55 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 2), align 8, !dbg !1555
  %arrayidx90 = getelementptr inbounds i64, ptr %55, i64 %b.0193, !dbg !1555
  %56 = load i64, ptr %arrayidx90, align 8, !dbg !1555
  br i1 %tobool82.not, label %if.else89, label %if.then83, !dbg !1556

if.then83:                                        ; preds = %for.body80
  %arrayidx87 = getelementptr inbounds i64, ptr %54, i64 %i.3189, !dbg !1557
  %57 = load i64, ptr %arrayidx87, align 8, !dbg !1557
  %add88 = add nsw i64 %57, %56, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %add88, metadata !1446, metadata !DIExpression()), !dbg !1449
  br label %if.end92, !dbg !1559

if.else89:                                        ; preds = %for.body80
  %add91 = add nsw i64 %56, %i.3189, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %add91, metadata !1446, metadata !DIExpression()), !dbg !1449
  br label %if.end92

if.end92:                                         ; preds = %if.else89, %if.then83
  %row.0 = phi i64 [ %add88, %if.then83 ], [ %add91, %if.else89 ], !dbg !1555
  call void @llvm.dbg.value(metadata i64 %row.0, metadata !1446, metadata !DIExpression()), !dbg !1449
  %arrayidx93 = getelementptr inbounds double, ptr %scatter, i64 %row.0, !dbg !1561
  %58 = load double, ptr %arrayidx93, align 8, !dbg !1561
  %nz95 = getelementptr inbounds %struct.Block, ptr %53, i64 0, i32 10, !dbg !1562
  %59 = load ptr, ptr %nz95, align 8, !dbg !1562
  %mul = mul nsw i64 %52, %j1.0197, !dbg !1563
  %add98 = add nsw i64 %mul, %i.3189, !dbg !1564
  %arrayidx99 = getelementptr inbounds double, ptr %59, i64 %add98, !dbg !1565
  store double %58, ptr %arrayidx99, align 8, !dbg !1566
  store double 0.000000e+00, ptr %arrayidx93, align 8, !dbg !1567
  %inc102 = add nuw nsw i64 %i.3189, 1, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %inc102, metadata !1443, metadata !DIExpression()), !dbg !1449
  %60 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1544
  %arrayidx78 = getelementptr inbounds %union.Entry, ptr %60, i64 %b.0193, !dbg !1544
  %61 = load ptr, ptr %arrayidx78, align 8, !dbg !1544
  %length = getelementptr inbounds %struct.Block, ptr %61, i64 0, i32 5, !dbg !1548
  %62 = load i64, ptr %length, align 8, !dbg !1548
  %cmp79 = icmp slt i64 %inc102, %62, !dbg !1549
  br i1 %cmp79, label %for.body80, label %for.inc104.loopexit, !dbg !1550, !llvm.loop !1569

for.inc104.loopexit:                              ; preds = %if.end92
  %.pre206 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1571
  br label %for.inc104, !dbg !1572

for.inc104:                                       ; preds = %for.inc104.loopexit, %for.cond77.preheader
  %63 = phi ptr [ %.pre206, %for.inc104.loopexit ], [ %48, %for.cond77.preheader ], !dbg !1571
  %64 = phi ptr [ %60, %for.inc104.loopexit ], [ %49, %for.cond77.preheader ]
  %inc105 = add nsw i64 %b.0193, 1, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %inc105, metadata !1444, metadata !DIExpression()), !dbg !1449
  %arrayidx74 = getelementptr inbounds i64, ptr %63, i64 %add73, !dbg !1540
  %65 = load i64, ptr %arrayidx74, align 8, !dbg !1540
  %cmp75 = icmp slt i64 %inc105, %65, !dbg !1542
  br i1 %cmp75, label %for.cond77.preheader, label %for.inc107, !dbg !1543, !llvm.loop !1573

for.inc107:                                       ; preds = %for.inc104, %for.end70
  %inc108 = add nuw nsw i64 %j1.0197, 1, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %inc108, metadata !1445, metadata !DIExpression()), !dbg !1449
  %66 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !1455
  %arrayidx36 = getelementptr inbounds i64, ptr %66, i64 %col, !dbg !1459
  %67 = load i64, ptr %arrayidx36, align 8, !dbg !1459
  %cmp37 = icmp slt i64 %inc108, %67, !dbg !1460
  br i1 %cmp37, label %for.body38, label %if.end110, !dbg !1461, !llvm.loop !1576

if.end110:                                        ; preds = %for.body25, %for.inc107, %for.end, %for.cond35.preheader
  ret void, !dbg !1578
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @CheckColLength(i64 noundef %col, i64 noundef %n_nz) local_unnamed_addr #5 !dbg !1579 {
entry:
  call void @llvm.dbg.value(metadata i64 %col, metadata !1583, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %n_nz, metadata !1584, metadata !DIExpression()), !dbg !1585
  %0 = load ptr, ptr @nz, align 8, !dbg !1586
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 %col, !dbg !1586
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1586
  %cmp.not = icmp eq i64 %1, %n_nz, !dbg !1588
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1589

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %col, i64 noundef %n_nz, i64 noundef %1), !dbg !1590
  br label %if.end, !dbg !1590

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1591
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local void @InsSort(ptr nocapture noundef %nz, i64 noundef %n) local_unnamed_addr #11 !dbg !1592 {
entry:
  call void @llvm.dbg.value(metadata ptr %nz, metadata !1596, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %n, metadata !1597, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 1, metadata !1598, metadata !DIExpression()), !dbg !1601
  %cmp26 = icmp sgt i64 %n, 1, !dbg !1602
  br i1 %cmp26, label %while.cond.preheader, label %for.end, !dbg !1605

while.cond.preheader:                             ; preds = %entry, %for.inc
  %i.027 = phi i64 [ %inc, %for.inc ], [ 1, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.027, metadata !1598, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %i.027, metadata !1599, metadata !DIExpression()), !dbg !1601
  %arrayidx2.phi.trans.insert = getelementptr inbounds i64, ptr %nz, i64 %i.027
  %.pre = load i64, ptr %arrayidx2.phi.trans.insert, align 8, !dbg !1606
  br label %land.rhs, !dbg !1608

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %j.025 = phi i64 [ %i.027, %while.cond.preheader ], [ %sub, %while.body ]
  call void @llvm.dbg.value(metadata i64 %j.025, metadata !1599, metadata !DIExpression()), !dbg !1601
  %sub = add nsw i64 %j.025, -1, !dbg !1609
  %arrayidx = getelementptr inbounds i64, ptr %nz, i64 %sub, !dbg !1610
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1610
  %cmp3 = icmp sgt i64 %0, %.pre, !dbg !1611
  br i1 %cmp3, label %while.body, label %for.inc, !dbg !1612

while.body:                                       ; preds = %land.rhs
  %arrayidx2 = getelementptr inbounds i64, ptr %nz, i64 %j.025, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %.pre, metadata !1600, metadata !DIExpression()), !dbg !1601
  store i64 %0, ptr %arrayidx2, align 8, !dbg !1613
  store i64 %.pre, ptr %arrayidx, align 8, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1599, metadata !DIExpression()), !dbg !1601
  %cmp1 = icmp sgt i64 %j.025, 1, !dbg !1616
  br i1 %cmp1, label %land.rhs, label %for.inc, !dbg !1608, !llvm.loop !1617

for.inc:                                          ; preds = %land.rhs, %while.body
  %inc = add nuw nsw i64 %i.027, 1, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1598, metadata !DIExpression()), !dbg !1601
  %exitcond.not = icmp eq i64 %inc, %n, !dbg !1602
  br i1 %exitcond.not, label %for.end, label %while.cond.preheader, !dbg !1605, !llvm.loop !1620

for.end:                                          ; preds = %for.inc, %entry
  ret void, !dbg !1622
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @EmbeddedOwner(i64 noundef %block) local_unnamed_addr #12 !dbg !1623 {
entry:
  call void @llvm.dbg.value(metadata i64 %block, metadata !1627, metadata !DIExpression()), !dbg !1630
  %0 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 8), align 8, !dbg !1631
  %1 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 7), align 8, !dbg !1632
  %2 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1633
  %arrayidx = getelementptr inbounds %union.Entry, ptr %2, i64 %block, !dbg !1633
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1633
  %4 = load i64, ptr %3, align 8, !dbg !1633
  %arrayidx1 = getelementptr inbounds i64, ptr %1, i64 %4, !dbg !1634
  %5 = load i64, ptr %arrayidx1, align 8, !dbg !1634
  %arrayidx2 = getelementptr inbounds i64, ptr %0, i64 %5, !dbg !1635
  %6 = load i64, ptr %arrayidx2, align 8, !dbg !1635
  %7 = load i64, ptr @P_dimi, align 8, !dbg !1636
  %rem = srem i64 %6, %7, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %rem, metadata !1628, metadata !DIExpression()), !dbg !1630
  %8 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 9), align 8, !dbg !1638
  %j = getelementptr inbounds %struct.Block, ptr %3, i64 0, i32 1, !dbg !1639
  %9 = load i64, ptr %j, align 8, !dbg !1639
  %arrayidx4 = getelementptr inbounds i64, ptr %1, i64 %9, !dbg !1640
  %10 = load i64, ptr %arrayidx4, align 8, !dbg !1640
  %arrayidx5 = getelementptr inbounds i64, ptr %8, i64 %10, !dbg !1641
  %11 = load i64, ptr %arrayidx5, align 8, !dbg !1641
  %12 = load i64, ptr @P_dimj, align 8, !dbg !1642
  %rem6 = srem i64 %11, %12, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %rem6, metadata !1629, metadata !DIExpression()), !dbg !1630
  %mul = mul nsw i64 %rem6, %7, !dbg !1644
  %add = add nsw i64 %mul, %rem, !dbg !1645
  ret i64 %add, !dbg !1646
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AllocateNZ() local_unnamed_addr #0 !dbg !1647 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1655
  %0 = load i64, ptr @LB, align 8, !dbg !1656
  %cmp44 = icmp sgt i64 %0, 0, !dbg !1659
  br i1 %cmp44, label %for.body, label %for.end23, !dbg !1660

for.body:                                         ; preds = %entry, %for.inc20
  %1 = phi i64 [ %20, %for.inc20 ], [ %0, %entry ]
  %j.045 = phi i64 [ %add22, %for.inc20 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %j.045, metadata !1652, metadata !DIExpression()), !dbg !1655
  %2 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 10), align 8, !dbg !1661
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %j.045, !dbg !1663
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1663
  %tobool.not = icmp eq i64 %3, 0, !dbg !1663
  br i1 %tobool.not, label %if.then, label %for.inc20, !dbg !1664

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1665
  %arrayidx1 = getelementptr inbounds i64, ptr %4, i64 %j.045, !dbg !1668
  %5 = load i64, ptr %arrayidx1, align 8, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %5, metadata !1653, metadata !DIExpression()), !dbg !1655
  %add = add nsw i64 %j.045, 1
  call void @llvm.dbg.value(metadata i64 %5, metadata !1653, metadata !DIExpression()), !dbg !1655
  %arrayidx340 = getelementptr inbounds i64, ptr %4, i64 %add, !dbg !1669
  %6 = load i64, ptr %arrayidx340, align 8, !dbg !1669
  %cmp441 = icmp slt i64 %5, %6, !dbg !1671
  br i1 %cmp441, label %for.body5, label %for.inc20, !dbg !1672

for.body5:                                        ; preds = %if.then, %for.inc17
  %b.042 = phi i64 [ %inc18, %for.inc17 ], [ %5, %if.then ]
  call void @llvm.dbg.value(metadata i64 %b.042, metadata !1653, metadata !DIExpression()), !dbg !1655
  %7 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !1673
  %arrayidx6 = getelementptr inbounds i64, ptr %7, i64 %j.045, !dbg !1675
  %8 = load i64, ptr %arrayidx6, align 8, !dbg !1675
  %9 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1676
  %arrayidx7 = getelementptr inbounds %union.Entry, ptr %9, i64 %b.042, !dbg !1676
  %10 = load ptr, ptr %arrayidx7, align 8, !dbg !1676
  %length = getelementptr inbounds %struct.Block, ptr %10, i64 0, i32 5, !dbg !1677
  %11 = load i64, ptr %length, align 8, !dbg !1677
  %mul = mul nsw i64 %11, %8, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %mul, metadata !1654, metadata !DIExpression()), !dbg !1655
  %mul8 = shl i64 %mul, 3, !dbg !1679
  %owner = getelementptr inbounds %struct.Block, ptr %10, i64 0, i32 2, !dbg !1680
  %12 = load i64, ptr %owner, align 8, !dbg !1680
  %call = tail call ptr @MyMalloc(i64 noundef %mul8, i64 noundef %12) #20, !dbg !1681
  %13 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1682
  %arrayidx10 = getelementptr inbounds %union.Entry, ptr %13, i64 %b.042, !dbg !1682
  %14 = load ptr, ptr %arrayidx10, align 8, !dbg !1682
  %nz = getelementptr inbounds %struct.Block, ptr %14, i64 0, i32 10, !dbg !1683
  store ptr %call, ptr %nz, align 8, !dbg !1684
  call void @llvm.dbg.value(metadata i64 0, metadata !1651, metadata !DIExpression()), !dbg !1655
  %cmp1238 = icmp sgt i64 %mul, 0, !dbg !1685
  br i1 %cmp1238, label %for.body13, label %for.inc17, !dbg !1688

for.body13:                                       ; preds = %for.body5, %for.body13
  %i.039 = phi i64 [ %inc, %for.body13 ], [ 0, %for.body5 ]
  call void @llvm.dbg.value(metadata i64 %i.039, metadata !1651, metadata !DIExpression()), !dbg !1655
  %15 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 17), align 8, !dbg !1689
  %arrayidx14 = getelementptr inbounds %union.Entry, ptr %15, i64 %b.042, !dbg !1689
  %16 = load ptr, ptr %arrayidx14, align 8, !dbg !1689
  %nz15 = getelementptr inbounds %struct.Block, ptr %16, i64 0, i32 10, !dbg !1690
  %17 = load ptr, ptr %nz15, align 8, !dbg !1690
  %arrayidx16 = getelementptr inbounds double, ptr %17, i64 %i.039, !dbg !1689
  store double 0.000000e+00, ptr %arrayidx16, align 8, !dbg !1691
  %inc = add nuw nsw i64 %i.039, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1651, metadata !DIExpression()), !dbg !1655
  %exitcond.not = icmp eq i64 %inc, %mul, !dbg !1685
  br i1 %exitcond.not, label %for.inc17, label %for.body13, !dbg !1688, !llvm.loop !1693

for.inc17:                                        ; preds = %for.body13, %for.body5
  %inc18 = add nsw i64 %b.042, 1, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %inc18, metadata !1653, metadata !DIExpression()), !dbg !1655
  %18 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 1), align 8, !dbg !1696
  %arrayidx3 = getelementptr inbounds i64, ptr %18, i64 %add, !dbg !1669
  %19 = load i64, ptr %arrayidx3, align 8, !dbg !1669
  %cmp4 = icmp slt i64 %inc18, %19, !dbg !1671
  br i1 %cmp4, label %for.body5, label %for.inc20.loopexit, !dbg !1672, !llvm.loop !1697

for.inc20.loopexit:                               ; preds = %for.inc17
  %.pre = load i64, ptr @LB, align 8, !dbg !1656
  br label %for.inc20, !dbg !1699

for.inc20:                                        ; preds = %for.inc20.loopexit, %if.then, %for.body
  %20 = phi i64 [ %.pre, %for.inc20.loopexit ], [ %1, %if.then ], [ %1, %for.body ], !dbg !1656
  %21 = load ptr, ptr getelementptr inbounds (%struct.BMatrix, ptr @LB, i64 0, i32 6), align 8, !dbg !1699
  %arrayidx21 = getelementptr inbounds i64, ptr %21, i64 %j.045, !dbg !1700
  %22 = load i64, ptr %arrayidx21, align 8, !dbg !1700
  %add22 = add nsw i64 %22, %j.045, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %add22, metadata !1652, metadata !DIExpression()), !dbg !1655
  %cmp = icmp slt i64 %add22, %20, !dbg !1659
  br i1 %cmp, label %for.body, label %for.end23, !dbg !1660, !llvm.loop !1702

for.end23:                                        ; preds = %for.inc20, %entry
  ret void, !dbg !1704
}

declare !dbg !1705 double @Value(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @BlDepth(i64 noundef %col) local_unnamed_addr #13 !dbg !1708 {
entry:
  call void @llvm.dbg.value(metadata i64 %col, metadata !1710, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 0, metadata !1712, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %col, metadata !1711, metadata !DIExpression()), !dbg !1713
  %0 = load ptr, ptr @T, align 8
  br label %while.cond, !dbg !1714

while.cond:                                       ; preds = %while.cond, %entry
  %current.0 = phi i64 [ %col, %entry ], [ %1, %while.cond ], !dbg !1713
  %depth.0 = phi i64 [ 0, %entry ], [ %inc, %while.cond ], !dbg !1713
  call void @llvm.dbg.value(metadata i64 %depth.0, metadata !1712, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %current.0, metadata !1711, metadata !DIExpression()), !dbg !1713
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 %current.0, !dbg !1715
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1715
  %cmp.not = icmp eq i64 %1, %current.0, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %1, metadata !1711, metadata !DIExpression()), !dbg !1713
  %inc = add nuw nsw i64 %depth.0, 1, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1712, metadata !DIExpression()), !dbg !1713
  br i1 %cmp.not, label %while.end, label %while.cond, !dbg !1714, !llvm.loop !1719

while.end:                                        ; preds = %while.cond
  ret i64 %depth.0, !dbg !1721
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local void @SortByKey(i64 noundef %n, ptr nocapture noundef %blocks, ptr nocapture noundef %keys) local_unnamed_addr #11 !dbg !1722 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !1726, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata ptr %blocks, metadata !1727, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata ptr %keys, metadata !1728, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i64 0, metadata !1729, metadata !DIExpression()), !dbg !1733
  %cmp36 = icmp sgt i64 %n, 0, !dbg !1734
  br i1 %cmp36, label %for.body, label %for.end, !dbg !1737

for.body:                                         ; preds = %entry, %while.end
  %i.037 = phi i64 [ %inc, %while.end ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.037, metadata !1729, metadata !DIExpression()), !dbg !1733
  %arrayidx = getelementptr inbounds i64, ptr %blocks, i64 %i.037, !dbg !1738
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %0, metadata !1731, metadata !DIExpression()), !dbg !1733
  %arrayidx1 = getelementptr inbounds i64, ptr %keys, i64 %i.037, !dbg !1740
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %1, metadata !1732, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i64 %i.037, metadata !1730, metadata !DIExpression()), !dbg !1733
  %cmp233.not = icmp eq i64 %i.037, 0, !dbg !1741
  br i1 %cmp233.not, label %while.end, label %land.rhs, !dbg !1742

land.rhs:                                         ; preds = %for.body, %while.body
  %j.034 = phi i64 [ %sub, %while.body ], [ %i.037, %for.body ]
  call void @llvm.dbg.value(metadata i64 %j.034, metadata !1730, metadata !DIExpression()), !dbg !1733
  %sub = add nsw i64 %j.034, -1, !dbg !1743
  %arrayidx3 = getelementptr inbounds i64, ptr %keys, i64 %sub, !dbg !1744
  %2 = load i64, ptr %arrayidx3, align 8, !dbg !1744
  %cmp4 = icmp sgt i64 %2, %1, !dbg !1745
  br i1 %cmp4, label %while.body, label %while.end, !dbg !1746

while.body:                                       ; preds = %land.rhs
  %arrayidx6 = getelementptr inbounds i64, ptr %blocks, i64 %sub, !dbg !1747
  %3 = load i64, ptr %arrayidx6, align 8, !dbg !1747
  %arrayidx7 = getelementptr inbounds i64, ptr %blocks, i64 %j.034, !dbg !1749
  store i64 %3, ptr %arrayidx7, align 8, !dbg !1750
  %4 = load i64, ptr %arrayidx3, align 8, !dbg !1751
  %arrayidx10 = getelementptr inbounds i64, ptr %keys, i64 %j.034, !dbg !1752
  store i64 %4, ptr %arrayidx10, align 8, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1730, metadata !DIExpression()), !dbg !1733
  %cmp2 = icmp sgt i64 %j.034, 1, !dbg !1741
  br i1 %cmp2, label %land.rhs, label %while.end, !dbg !1742, !llvm.loop !1754

while.end:                                        ; preds = %land.rhs, %while.body, %for.body
  %j.0.lcssa = phi i64 [ 0, %for.body ], [ 0, %while.body ], [ %j.034, %land.rhs ], !dbg !1756
  %arrayidx11 = getelementptr inbounds i64, ptr %blocks, i64 %j.0.lcssa, !dbg !1757
  store i64 %0, ptr %arrayidx11, align 8, !dbg !1758
  %arrayidx12 = getelementptr inbounds i64, ptr %keys, i64 %j.0.lcssa, !dbg !1759
  store i64 %1, ptr %arrayidx12, align 8, !dbg !1760
  %inc = add nuw nsw i64 %i.037, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1729, metadata !DIExpression()), !dbg !1733
  %exitcond.not = icmp eq i64 %inc, %n, !dbg !1734
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1737, !llvm.loop !1762

for.end:                                          ; preds = %while.end, %entry
  ret void, !dbg !1764
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nofree nounwind }
attributes #17 = { argmemonly nofree nounwind willreturn writeonly }
attributes #18 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) }
attributes #19 = { argmemonly nofree nounwind willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "LB", scope: !2, file: !3, line: 43, type: !43, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "block2.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "ff30868f2ad86316aeca3263664443a0")
!4 = !{!5, !8, !10, !16, !6, !9, !7}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Entry", file: !12, line: 49, baseType: !13)
!12 = !DIFile(filename: "./matrix.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "f19fdb19034f8f693c291706633e8f13")
!13 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !12, line: 46, size: 64, elements: !14)
!14 = !{!15, !37}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !13, file: !12, line: 47, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Block", file: !12, line: 44, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 36, size: 768, elements: !19)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !18, file: !12, line: 37, baseType: !9, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !18, file: !12, line: 37, baseType: !9, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !18, file: !12, line: 37, baseType: !9, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !18, file: !12, line: 37, baseType: !9, size: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nmod", scope: !18, file: !12, line: 37, baseType: !9, size: 64, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !18, file: !12, line: 38, baseType: !9, size: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !18, file: !12, line: 39, baseType: !9, size: 64, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !18, file: !12, line: 40, baseType: !7, size: 64, offset: 448)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !18, file: !12, line: 41, baseType: !8, size: 64, offset: 512)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "relative", scope: !18, file: !12, line: 41, baseType: !8, size: 64, offset: 576)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !18, file: !12, line: 42, baseType: !6, size: 64, offset: 640)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !18, file: !12, line: 43, baseType: !32, size: 64, offset: 704)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Pair", file: !12, line: 31, size: 128, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !33, file: !12, line: 32, baseType: !9, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !33, file: !12, line: 33, baseType: !32, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !13, file: !12, line: 48, baseType: !7, size: 64)
!38 = !{!0, !39, !41}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "P_dimi", scope: !2, file: !3, line: 45, type: !9, isLocal: false, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "P_dimj", scope: !2, file: !3, line: 45, type: !9, isLocal: false, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "BMatrix", file: !12, line: 58, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 51, size: 1152, elements: !45)
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !44, file: !12, line: 52, baseType: !9, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !44, file: !12, line: 52, baseType: !8, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "row", scope: !44, file: !12, line: 52, baseType: !8, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "n_blocks", scope: !44, file: !12, line: 52, baseType: !9, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "n_entries", scope: !44, file: !12, line: 52, baseType: !9, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "entries_allocated", scope: !44, file: !12, line: 52, baseType: !9, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "partition_size", scope: !44, file: !12, line: 53, baseType: !8, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "renumbering", scope: !44, file: !12, line: 53, baseType: !8, size: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "mapI", scope: !44, file: !12, line: 53, baseType: !8, size: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "mapJ", scope: !44, file: !12, line: 53, baseType: !8, size: 64, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !44, file: !12, line: 54, baseType: !8, size: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "domains", scope: !44, file: !12, line: 54, baseType: !8, size: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "n_domains", scope: !44, file: !12, line: 54, baseType: !9, size: 64, offset: 768)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "proc_domains", scope: !44, file: !12, line: 54, baseType: !8, size: 64, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "n_partitions", scope: !44, file: !12, line: 55, baseType: !9, size: 64, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "max_partition", scope: !44, file: !12, line: 55, baseType: !9, size: 64, offset: 960)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "proc_domain_storage", scope: !44, file: !12, line: 56, baseType: !5, size: 64, offset: 1024)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !44, file: !12, line: 57, baseType: !10, size: 64, offset: 1088)
!64 = !{i32 7, !"Dwarf Version", i32 5}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 4}
!67 = !{i32 7, !"PIC Level", i32 2}
!68 = !{i32 7, !"PIE Level", i32 2}
!69 = !{i32 7, !"uwtable", i32 2}
!70 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!71 = distinct !DISubprogram(name: "CreateBlockedMatrix2", scope: !3, file: !3, line: 49, type: !72, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74, !9, !8, !8, !8, !8, !8, !8, !8}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "SMatrix", file: !12, line: 29, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 26, size: 384, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !75, file: !12, line: 27, baseType: !9, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !75, file: !12, line: 27, baseType: !9, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !75, file: !12, line: 27, baseType: !8, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "startrow", scope: !75, file: !12, line: 27, baseType: !8, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "row", scope: !75, file: !12, line: 27, baseType: !8, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !75, file: !12, line: 28, baseType: !6, size: 64, offset: 320)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!84 = !DILocalVariable(name: "M", arg: 1, scope: !71, file: !3, line: 49, type: !74)
!85 = !DILocalVariable(name: "block_ub", arg: 2, scope: !71, file: !3, line: 49, type: !9)
!86 = !DILocalVariable(name: "T", arg: 3, scope: !71, file: !3, line: 49, type: !8)
!87 = !DILocalVariable(name: "firstchild", arg: 4, scope: !71, file: !3, line: 49, type: !8)
!88 = !DILocalVariable(name: "child", arg: 5, scope: !71, file: !3, line: 49, type: !8)
!89 = !DILocalVariable(name: "PERM", arg: 6, scope: !71, file: !3, line: 49, type: !8)
!90 = !DILocalVariable(name: "INVP", arg: 7, scope: !71, file: !3, line: 49, type: !8)
!91 = !DILocalVariable(name: "domain", arg: 8, scope: !71, file: !3, line: 49, type: !8)
!92 = !DILocalVariable(name: "partition", arg: 9, scope: !71, file: !3, line: 49, type: !8)
!93 = !DILocalVariable(name: "i", scope: !71, file: !3, line: 51, type: !9)
!94 = !DILocalVariable(name: "j", scope: !71, file: !3, line: 51, type: !9)
!95 = !DILocalVariable(name: "k", scope: !71, file: !3, line: 51, type: !9)
!96 = !DILocalVariable(name: "p", scope: !71, file: !3, line: 51, type: !9)
!97 = !DILocalVariable(name: "which", scope: !71, file: !3, line: 51, type: !9)
!98 = !DILocalVariable(name: "super", scope: !71, file: !3, line: 51, type: !9)
!99 = !DILocalVariable(name: "n_nz", scope: !71, file: !3, line: 51, type: !9)
!100 = !DILocalVariable(name: "structure", scope: !71, file: !3, line: 52, type: !8)
!101 = !DILocalVariable(name: "nz", scope: !71, file: !3, line: 52, type: !8)
!102 = !DILocalVariable(name: "blocks", scope: !71, file: !3, line: 53, type: !16)
!103 = !DILocalVariable(name: "num_partitions", scope: !71, file: !3, line: 56, type: !9)
!104 = !DILocalVariable(name: "piece_size", scope: !71, file: !3, line: 56, type: !9)
!105 = !DILocalVariable(name: "piece", scope: !71, file: !3, line: 56, type: !9)
!106 = !DILocalVariable(name: "current", scope: !71, file: !3, line: 56, type: !9)
!107 = !DILocation(line: 49, column: 35, scope: !71)
!108 = !DILocation(line: 0, scope: !71)
!109 = !DILocation(line: 51, column: 3, scope: !71)
!110 = !DILocation(line: 58, column: 12, scope: !71)
!111 = !DILocation(line: 58, column: 8, scope: !71)
!112 = !DILocation(line: 59, column: 13, scope: !71)
!113 = !DILocation(line: 60, column: 16, scope: !71)
!114 = !DILocation(line: 60, column: 14, scope: !71)
!115 = !DILocation(line: 61, column: 21, scope: !71)
!116 = !DILocation(line: 61, column: 19, scope: !71)
!117 = !DILocation(line: 62, column: 31, scope: !71)
!118 = !DILocation(line: 62, column: 18, scope: !71)
!119 = !DILocation(line: 62, column: 16, scope: !71)
!120 = !DILocation(line: 63, column: 34, scope: !71)
!121 = !DILocation(line: 63, column: 24, scope: !71)
!122 = !DILocation(line: 65, column: 61, scope: !71)
!123 = !DILocation(line: 65, column: 40, scope: !71)
!124 = !DILocation(line: 65, column: 26, scope: !71)
!125 = !DILocation(line: 67, column: 18, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !3, line: 67, column: 3)
!127 = distinct !DILexicalBlock(scope: !71, file: !3, line: 67, column: 3)
!128 = !DILocation(line: 67, column: 14, scope: !126)
!129 = !DILocation(line: 67, column: 3, scope: !127)
!130 = !DILocation(line: 68, column: 31, scope: !126)
!131 = distinct !{!131, !129, !132, !133, !134}
!132 = !DILocation(line: 68, column: 33, scope: !127)
!133 = !{!"llvm.loop.mustprogress"}
!134 = !{!"llvm.loop.unroll.disable"}
!135 = !DILocation(line: 68, column: 8, scope: !126)
!136 = !DILocation(line: 68, column: 5, scope: !126)
!137 = !DILocation(line: 67, column: 30, scope: !126)
!138 = !DILocation(line: 71, column: 45, scope: !71)
!139 = !DILocation(line: 71, column: 46, scope: !71)
!140 = !DILocation(line: 71, column: 62, scope: !71)
!141 = !DILocation(line: 71, column: 32, scope: !71)
!142 = !DILocation(line: 71, column: 21, scope: !71)
!143 = !DILocation(line: 73, column: 34, scope: !71)
!144 = !DILocation(line: 73, column: 39, scope: !71)
!145 = !DILocation(line: 73, column: 35, scope: !71)
!146 = !DILocation(line: 73, column: 51, scope: !71)
!147 = !DILocation(line: 73, column: 21, scope: !71)
!148 = !DILocation(line: 73, column: 10, scope: !71)
!149 = !DILocation(line: 75, column: 34, scope: !71)
!150 = !DILocation(line: 75, column: 51, scope: !71)
!151 = !DILocation(line: 75, column: 24, scope: !71)
!152 = !DILocation(line: 75, column: 12, scope: !71)
!153 = !DILocation(line: 76, column: 3, scope: !71)
!154 = !DILocation(line: 77, column: 31, scope: !71)
!155 = !DILocation(line: 77, column: 48, scope: !71)
!156 = !DILocation(line: 77, column: 21, scope: !71)
!157 = !DILocation(line: 77, column: 10, scope: !71)
!158 = !DILocation(line: 78, column: 3, scope: !71)
!159 = !DILocation(line: 80, column: 25, scope: !71)
!160 = !DILocation(line: 80, column: 3, scope: !71)
!161 = !DILocation(line: 84, column: 16, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 84, column: 5)
!163 = distinct !DILexicalBlock(scope: !71, file: !3, line: 84, column: 5)
!164 = !DILocation(line: 84, column: 5, scope: !163)
!165 = !DILocation(line: 101, column: 48, scope: !71)
!166 = !DILocation(line: 102, column: 3, scope: !71)
!167 = !DILocation(line: 85, column: 15, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !3, line: 85, column: 11)
!169 = distinct !DILexicalBlock(scope: !162, file: !3, line: 84, column: 34)
!170 = !DILocation(line: 85, column: 12, scope: !168)
!171 = !DILocation(line: 85, column: 11, scope: !169)
!172 = !DILocation(line: 86, column: 37, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !3, line: 85, column: 26)
!174 = !DILocation(line: 86, column: 46, scope: !173)
!175 = !DILocation(line: 86, column: 19, scope: !173)
!176 = !DILocation(line: 88, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 88, column: 2)
!178 = distinct !DILexicalBlock(scope: !173, file: !3, line: 88, column: 2)
!179 = !DILocation(line: 88, column: 2, scope: !178)
!180 = distinct !{!180, !179, !181, !133, !134}
!181 = !DILocation(line: 95, column: 2, scope: !178)
!182 = !DILocation(line: 89, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !177, file: !3, line: 88, column: 47)
!184 = !DILocation(line: 89, column: 31, scope: !183)
!185 = !DILocation(line: 89, column: 24, scope: !183)
!186 = !DILocation(line: 89, column: 34, scope: !183)
!187 = !DILocation(line: 90, column: 13, scope: !183)
!188 = !DILocation(line: 90, column: 19, scope: !183)
!189 = !DILocation(line: 89, column: 50, scope: !183)
!190 = !DILocation(line: 91, column: 21, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !3, line: 91, column: 4)
!192 = distinct !DILexicalBlock(scope: !183, file: !3, line: 91, column: 4)
!193 = !DILocation(line: 91, column: 4, scope: !192)
!194 = !DILocation(line: 92, column: 6, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !3, line: 91, column: 47)
!196 = !DILocation(line: 92, column: 19, scope: !195)
!197 = !DILocation(line: 91, column: 43, scope: !191)
!198 = distinct !{!198, !193, !199, !133, !134}
!199 = !DILocation(line: 93, column: 4, scope: !192)
!200 = !DILocation(line: 84, column: 25, scope: !162)
!201 = !DILocation(line: 84, column: 23, scope: !162)
!202 = distinct !{!202, !164, !203, !133, !134}
!203 = !DILocation(line: 97, column: 5, scope: !163)
!204 = !DILocation(line: 122, column: 18, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 122, column: 3)
!206 = distinct !DILexicalBlock(scope: !71, file: !3, line: 122, column: 3)
!207 = !DILocation(line: 122, column: 14, scope: !205)
!208 = !DILocation(line: 122, column: 3, scope: !206)
!209 = !DILocation(line: 103, column: 12, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 103, column: 9)
!211 = distinct !DILexicalBlock(scope: !71, file: !3, line: 102, column: 19)
!212 = !DILocation(line: 103, column: 9, scope: !210)
!213 = !DILocation(line: 103, column: 9, scope: !211)
!214 = !DILocation(line: 104, column: 10, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !3, line: 103, column: 23)
!216 = !DILocation(line: 104, column: 7, scope: !215)
!217 = !DILocation(line: 104, column: 28, scope: !215)
!218 = !DILocation(line: 105, column: 8, scope: !215)
!219 = !DILocation(line: 106, column: 5, scope: !215)
!220 = !DILocation(line: 0, scope: !221)
!221 = distinct !DILexicalBlock(scope: !210, file: !3, line: 107, column: 10)
!222 = !DILocation(line: 109, column: 14, scope: !221)
!223 = !DILocation(line: 109, column: 27, scope: !221)
!224 = !DILocation(line: 109, column: 32, scope: !221)
!225 = !DILocation(line: 110, column: 3, scope: !221)
!226 = distinct !{!226, !227, !225, !133, !134}
!227 = !DILocation(line: 109, column: 7, scope: !221)
!228 = !DILocation(line: 111, column: 31, scope: !221)
!229 = !DILocation(line: 111, column: 10, scope: !221)
!230 = !DILocation(line: 111, column: 7, scope: !221)
!231 = !DILocation(line: 111, column: 28, scope: !221)
!232 = !DILocation(line: 0, scope: !233)
!233 = distinct !DILexicalBlock(scope: !221, file: !3, line: 112, column: 7)
!234 = !DILocation(line: 112, column: 20, scope: !235)
!235 = distinct !DILexicalBlock(scope: !233, file: !3, line: 112, column: 7)
!236 = !DILocation(line: 112, column: 7, scope: !233)
!237 = !DILocation(line: 113, column: 26, scope: !235)
!238 = !DILocation(line: 113, column: 5, scope: !235)
!239 = !DILocation(line: 113, column: 2, scope: !235)
!240 = !DILocation(line: 113, column: 23, scope: !235)
!241 = distinct !{!241, !236, !242, !133, !134}
!242 = !DILocation(line: 113, column: 27, scope: !233)
!243 = !DILocation(line: 115, column: 14, scope: !244)
!244 = distinct !DILexicalBlock(scope: !221, file: !3, line: 115, column: 11)
!245 = !DILocation(line: 115, column: 11, scope: !244)
!246 = !DILocation(line: 115, column: 37, scope: !244)
!247 = !DILocation(line: 115, column: 32, scope: !244)
!248 = !DILocation(line: 115, column: 11, scope: !221)
!249 = !DILocation(line: 116, column: 26, scope: !244)
!250 = !DILocation(line: 116, column: 9, scope: !244)
!251 = !DILocation(line: 117, column: 22, scope: !221)
!252 = !DILocation(line: 0, scope: !210)
!253 = !DILocation(line: 102, column: 12, scope: !71)
!254 = distinct !{!254, !166, !255, !133, !134}
!255 = !DILocation(line: 121, column: 3, scope: !71)
!256 = !DILocation(line: 123, column: 8, scope: !205)
!257 = !DILocation(line: 123, column: 26, scope: !205)
!258 = !DILocation(line: 123, column: 27, scope: !205)
!259 = !DILocation(line: 123, column: 5, scope: !205)
!260 = !DILocation(line: 123, column: 31, scope: !205)
!261 = !DILocation(line: 122, column: 30, scope: !205)
!262 = distinct !{!262, !208, !263, !133, !134}
!263 = !DILocation(line: 123, column: 33, scope: !206)
!264 = !DILocation(line: 124, column: 10, scope: !265)
!265 = distinct !DILexicalBlock(scope: !71, file: !3, line: 124, column: 7)
!266 = !DILocation(line: 124, column: 23, scope: !265)
!267 = !DILocation(line: 124, column: 7, scope: !71)
!268 = !DILocation(line: 125, column: 21, scope: !265)
!269 = !DILocation(line: 125, column: 5, scope: !265)
!270 = !DILocation(line: 128, column: 42, scope: !71)
!271 = !DILocation(line: 128, column: 43, scope: !71)
!272 = !DILocation(line: 128, column: 57, scope: !71)
!273 = !DILocation(line: 128, column: 29, scope: !71)
!274 = !DILocation(line: 128, column: 18, scope: !71)
!275 = !DILocation(line: 130, column: 3, scope: !71)
!276 = !DILocation(line: 131, column: 18, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 131, column: 3)
!278 = distinct !DILexicalBlock(scope: !71, file: !3, line: 131, column: 3)
!279 = !DILocation(line: 131, column: 14, scope: !277)
!280 = !DILocation(line: 131, column: 3, scope: !278)
!281 = !DILocation(line: 132, column: 35, scope: !277)
!282 = !DILocation(line: 132, column: 31, scope: !277)
!283 = !DILocation(line: 132, column: 8, scope: !277)
!284 = !DILocation(line: 132, column: 23, scope: !277)
!285 = !DILocation(line: 132, column: 24, scope: !277)
!286 = !DILocation(line: 132, column: 5, scope: !277)
!287 = !DILocation(line: 132, column: 28, scope: !277)
!288 = !DILocation(line: 131, column: 30, scope: !277)
!289 = distinct !{!289, !280, !290, !133, !134}
!290 = !DILocation(line: 132, column: 35, scope: !278)
!291 = !DILocation(line: 135, column: 34, scope: !71)
!292 = !DILocation(line: 135, column: 46, scope: !71)
!293 = !DILocation(line: 135, column: 22, scope: !71)
!294 = !DILocation(line: 135, column: 11, scope: !71)
!295 = !DILocation(line: 136, column: 34, scope: !71)
!296 = !DILocation(line: 136, column: 46, scope: !71)
!297 = !DILocation(line: 136, column: 22, scope: !71)
!298 = !DILocation(line: 136, column: 11, scope: !71)
!299 = !DILocation(line: 137, column: 18, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 137, column: 3)
!301 = distinct !DILexicalBlock(scope: !71, file: !3, line: 137, column: 3)
!302 = !DILocation(line: 137, column: 14, scope: !300)
!303 = !DILocation(line: 137, column: 3, scope: !301)
!304 = !DILocation(line: 138, column: 29, scope: !300)
!305 = !DILocation(line: 138, column: 8, scope: !300)
!306 = !DILocation(line: 138, column: 16, scope: !300)
!307 = distinct !{!307, !303, !308, !133, !134}
!308 = !DILocation(line: 138, column: 31, scope: !301)
!309 = !DILocation(line: 138, column: 21, scope: !300)
!310 = !DILocation(line: 138, column: 18, scope: !300)
!311 = !DILocation(line: 138, column: 5, scope: !300)
!312 = !DILocation(line: 137, column: 33, scope: !300)
!313 = !DILocation(line: 139, column: 3, scope: !71)
!314 = !DILocation(line: 141, column: 3, scope: !71)
!315 = !DILocation(line: 141, column: 45, scope: !71)
!316 = !DILocation(line: 141, column: 23, scope: !71)
!317 = !DILocation(line: 142, column: 3, scope: !71)
!318 = !DILocation(line: 142, column: 48, scope: !71)
!319 = !DILocation(line: 142, column: 23, scope: !71)
!320 = !DILocation(line: 143, column: 33, scope: !71)
!321 = !DILocation(line: 143, column: 3, scope: !71)
!322 = !DILocation(line: 145, column: 34, scope: !71)
!323 = !DILocation(line: 145, column: 24, scope: !71)
!324 = !DILocation(line: 146, column: 17, scope: !71)
!325 = !DILocation(line: 147, column: 3, scope: !326)
!326 = distinct !DILexicalBlock(scope: !71, file: !3, line: 147, column: 3)
!327 = !DILocation(line: 148, column: 18, scope: !328)
!328 = distinct !DILexicalBlock(scope: !326, file: !3, line: 147, column: 3)
!329 = !DILocation(line: 151, column: 6, scope: !71)
!330 = !DILocation(line: 151, column: 13, scope: !71)
!331 = !DILocation(line: 153, column: 26, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !3, line: 153, column: 3)
!333 = distinct !DILexicalBlock(scope: !71, file: !3, line: 153, column: 3)
!334 = !DILocation(line: 153, column: 22, scope: !332)
!335 = !DILocation(line: 153, column: 3, scope: !333)
!336 = !DILocation(line: 170, column: 18, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 170, column: 3)
!338 = distinct !DILexicalBlock(scope: !71, file: !3, line: 170, column: 3)
!339 = !DILocation(line: 170, column: 14, scope: !337)
!340 = !DILocation(line: 170, column: 3, scope: !338)
!341 = !DILocation(line: 154, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !332, file: !3, line: 154, column: 9)
!343 = !DILocation(line: 154, column: 9, scope: !332)
!344 = !DILocation(line: 160, column: 29, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 160, column: 7)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 160, column: 7)
!347 = distinct !DILexicalBlock(scope: !342, file: !3, line: 159, column: 10)
!348 = !DILocation(line: 160, column: 22, scope: !345)
!349 = !DILocation(line: 160, column: 7, scope: !346)
!350 = !DILocation(line: 155, column: 7, scope: !351)
!351 = distinct !DILexicalBlock(scope: !342, file: !3, line: 154, column: 24)
!352 = !DILocation(line: 157, column: 35, scope: !351)
!353 = !DILocation(line: 157, column: 7, scope: !351)
!354 = !DILocation(line: 153, column: 36, scope: !332)
!355 = !DILocation(line: 158, column: 5, scope: !351)
!356 = !DILocation(line: 165, column: 17, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !3, line: 165, column: 2)
!358 = distinct !DILexicalBlock(scope: !359, file: !3, line: 165, column: 2)
!359 = distinct !DILexicalBlock(scope: !345, file: !3, line: 160, column: 67)
!360 = !DILocation(line: 160, column: 28, scope: !345)
!361 = distinct !{!361, !349, !362, !133, !134}
!362 = !DILocation(line: 167, column: 7, scope: !346)
!363 = !DILocation(line: 161, column: 2, scope: !359)
!364 = !DILocation(line: 165, column: 21, scope: !357)
!365 = !DILocation(line: 165, column: 18, scope: !357)
!366 = !DILocation(line: 165, column: 15, scope: !357)
!367 = !DILocation(line: 165, column: 2, scope: !358)
!368 = !DILocation(line: 165, column: 10, scope: !358)
!369 = !DILocation(line: 166, column: 21, scope: !357)
!370 = !DILocation(line: 166, column: 18, scope: !357)
!371 = !DILocation(line: 166, column: 12, scope: !357)
!372 = !DILocation(line: 166, column: 4, scope: !357)
!373 = !DILocation(line: 166, column: 16, scope: !357)
!374 = distinct !{!374, !367, !375, !133, !134}
!375 = !DILocation(line: 166, column: 26, scope: !358)
!376 = !DILocation(line: 153, column: 34, scope: !332)
!377 = distinct !{!377, !335, !378, !133, !134}
!378 = !DILocation(line: 168, column: 5, scope: !333)
!379 = !DILocation(line: 171, column: 5, scope: !337)
!380 = !DILocation(line: 170, column: 30, scope: !337)
!381 = distinct !{!381, !340, !382, !133, !134}
!382 = !DILocation(line: 171, column: 31, scope: !338)
!383 = !DILocation(line: 173, column: 28, scope: !71)
!384 = !DILocation(line: 173, column: 21, scope: !71)
!385 = !DILocation(line: 173, column: 29, scope: !71)
!386 = !DILocation(line: 173, column: 18, scope: !71)
!387 = !DILocation(line: 173, column: 16, scope: !71)
!388 = !DILocation(line: 174, column: 3, scope: !71)
!389 = !DILocation(line: 174, column: 20, scope: !71)
!390 = !DILocation(line: 177, column: 16, scope: !71)
!391 = !DILocation(line: 177, column: 3, scope: !71)
!392 = !DILocation(line: 180, column: 15, scope: !71)
!393 = !DILocation(line: 181, column: 14, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 181, column: 3)
!395 = distinct !DILexicalBlock(scope: !71, file: !3, line: 181, column: 3)
!396 = !DILocation(line: 181, column: 3, scope: !395)
!397 = !DILocation(line: 184, column: 14, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 184, column: 3)
!399 = distinct !DILexicalBlock(scope: !71, file: !3, line: 184, column: 3)
!400 = !DILocation(line: 184, column: 3, scope: !399)
!401 = !DILocation(line: 182, column: 10, scope: !402)
!402 = distinct !DILexicalBlock(scope: !394, file: !3, line: 182, column: 9)
!403 = !DILocation(line: 182, column: 9, scope: !394)
!404 = !DILocation(line: 183, column: 31, scope: !402)
!405 = !DILocation(line: 183, column: 23, scope: !402)
!406 = !DILocation(line: 183, column: 35, scope: !402)
!407 = !DILocation(line: 183, column: 34, scope: !402)
!408 = !DILocation(line: 183, column: 19, scope: !402)
!409 = !DILocation(line: 183, column: 7, scope: !402)
!410 = !DILocation(line: 181, column: 24, scope: !394)
!411 = !DILocation(line: 181, column: 22, scope: !394)
!412 = distinct !{!412, !396, !413, !133, !134}
!413 = !DILocation(line: 183, column: 44, scope: !395)
!414 = !DILocation(line: 185, column: 17, scope: !398)
!415 = !DILocation(line: 185, column: 32, scope: !398)
!416 = !DILocation(line: 185, column: 34, scope: !398)
!417 = !DILocation(line: 185, column: 21, scope: !398)
!418 = !DILocation(line: 185, column: 38, scope: !398)
!419 = !DILocation(line: 185, column: 37, scope: !398)
!420 = !DILocation(line: 184, column: 30, scope: !398)
!421 = distinct !{!421, !400, !422, !133, !134}
!422 = !DILocation(line: 185, column: 52, scope: !399)
!423 = !DILocation(line: 187, column: 62, scope: !71)
!424 = !DILocation(line: 187, column: 45, scope: !71)
!425 = !DILocation(line: 187, column: 3, scope: !71)
!426 = !DILocation(line: 190, column: 34, scope: !71)
!427 = !DILocation(line: 190, column: 42, scope: !71)
!428 = !DILocation(line: 190, column: 22, scope: !71)
!429 = !DILocation(line: 192, column: 18, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 192, column: 3)
!431 = distinct !DILexicalBlock(scope: !71, file: !3, line: 192, column: 3)
!432 = !DILocation(line: 192, column: 14, scope: !430)
!433 = !DILocation(line: 192, column: 3, scope: !431)
!434 = !DILocation(line: 191, column: 9, scope: !71)
!435 = !DILocation(line: 208, column: 15, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 208, column: 3)
!437 = distinct !DILexicalBlock(scope: !71, file: !3, line: 208, column: 3)
!438 = !DILocation(line: 208, column: 14, scope: !436)
!439 = !DILocation(line: 208, column: 3, scope: !437)
!440 = !DILocation(line: 209, column: 15, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !3, line: 209, column: 5)
!442 = !DILocation(line: 193, column: 13, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 193, column: 9)
!444 = distinct !DILexicalBlock(scope: !430, file: !3, line: 192, column: 46)
!445 = !DILocation(line: 193, column: 10, scope: !443)
!446 = !DILocation(line: 193, column: 9, scope: !444)
!447 = !DILocation(line: 194, column: 17, scope: !448)
!448 = distinct !DILexicalBlock(scope: !443, file: !3, line: 194, column: 7)
!449 = !DILocation(line: 194, column: 14, scope: !448)
!450 = !DILocation(line: 194, column: 27, scope: !451)
!451 = distinct !DILexicalBlock(scope: !448, file: !3, line: 194, column: 7)
!452 = !DILocation(line: 194, column: 26, scope: !451)
!453 = !DILocation(line: 194, column: 7, scope: !448)
!454 = !DILocation(line: 195, column: 14, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !3, line: 194, column: 45)
!456 = !DILocation(line: 195, column: 2, scope: !455)
!457 = !DILocation(line: 195, column: 11, scope: !455)
!458 = !DILocation(line: 196, column: 26, scope: !455)
!459 = !DILocation(line: 196, column: 23, scope: !455)
!460 = !DILocation(line: 196, column: 9, scope: !455)
!461 = !DILocation(line: 196, column: 21, scope: !455)
!462 = !DILocation(line: 197, column: 9, scope: !455)
!463 = !DILocation(line: 197, column: 19, scope: !455)
!464 = !DILocation(line: 197, column: 21, scope: !455)
!465 = !DILocation(line: 198, column: 9, scope: !466)
!466 = distinct !DILexicalBlock(scope: !455, file: !3, line: 198, column: 6)
!467 = !DILocation(line: 198, column: 21, scope: !466)
!468 = !DILocation(line: 198, column: 31, scope: !466)
!469 = !DILocation(line: 198, column: 6, scope: !466)
!470 = !DILocation(line: 198, column: 34, scope: !466)
!471 = !DILocation(line: 198, column: 38, scope: !466)
!472 = !DILocation(line: 199, column: 31, scope: !466)
!473 = !DILocation(line: 199, column: 6, scope: !466)
!474 = !DILocation(line: 199, column: 34, scope: !466)
!475 = !DILocation(line: 198, column: 6, scope: !455)
!476 = !DILocation(line: 200, column: 4, scope: !477)
!477 = distinct !DILexicalBlock(scope: !466, file: !3, line: 199, column: 39)
!478 = !DILocation(line: 201, column: 4, scope: !477)
!479 = !DILocation(line: 203, column: 12, scope: !455)
!480 = !DILocation(line: 203, column: 17, scope: !455)
!481 = !DILocation(line: 204, column: 7, scope: !455)
!482 = !DILocation(line: 194, column: 41, scope: !451)
!483 = !DILocation(line: 194, column: 30, scope: !451)
!484 = distinct !{!484, !453, !485, !133, !134}
!485 = !DILocation(line: 205, column: 7, scope: !448)
!486 = !DILocation(line: 192, column: 27, scope: !430)
!487 = !DILocation(line: 192, column: 24, scope: !430)
!488 = !DILocation(line: 192, column: 22, scope: !430)
!489 = distinct !{!489, !433, !490, !133, !134}
!490 = !DILocation(line: 206, column: 3, scope: !431)
!491 = distinct !{!491, !439, !492, !133, !134}
!492 = !DILocation(line: 218, column: 7, scope: !437)
!493 = !DILocation(line: 209, column: 12, scope: !441)
!494 = !DILocation(line: 209, column: 34, scope: !495)
!495 = distinct !DILexicalBlock(scope: !441, file: !3, line: 209, column: 5)
!496 = !DILocation(line: 209, column: 33, scope: !495)
!497 = !DILocation(line: 209, column: 5, scope: !441)
!498 = !DILocation(line: 210, column: 17, scope: !499)
!499 = distinct !DILexicalBlock(scope: !495, file: !3, line: 210, column: 7)
!500 = !DILocation(line: 210, column: 24, scope: !499)
!501 = !DILocation(line: 210, column: 25, scope: !499)
!502 = !DILocation(line: 210, column: 14, scope: !499)
!503 = !DILocation(line: 210, column: 45, scope: !504)
!504 = distinct !DILexicalBlock(scope: !499, file: !3, line: 210, column: 7)
!505 = !DILocation(line: 210, column: 32, scope: !504)
!506 = !DILocation(line: 210, column: 31, scope: !504)
!507 = !DILocation(line: 210, column: 7, scope: !499)
!508 = !DILocation(line: 211, column: 14, scope: !509)
!509 = distinct !DILexicalBlock(scope: !504, file: !3, line: 210, column: 55)
!510 = !DILocation(line: 211, column: 2, scope: !509)
!511 = !DILocation(line: 211, column: 11, scope: !509)
!512 = !DILocation(line: 212, column: 19, scope: !509)
!513 = !DILocation(line: 212, column: 16, scope: !509)
!514 = !DILocation(line: 212, column: 2, scope: !509)
!515 = !DILocation(line: 212, column: 14, scope: !509)
!516 = !DILocation(line: 213, column: 26, scope: !509)
!517 = !DILocation(line: 213, column: 27, scope: !509)
!518 = !DILocation(line: 213, column: 9, scope: !509)
!519 = !DILocation(line: 213, column: 19, scope: !509)
!520 = !DILocation(line: 213, column: 21, scope: !509)
!521 = !DILocation(line: 214, column: 2, scope: !509)
!522 = !DILocation(line: 214, column: 12, scope: !509)
!523 = !DILocation(line: 214, column: 15, scope: !509)
!524 = !DILocation(line: 215, column: 2, scope: !509)
!525 = !DILocation(line: 215, column: 12, scope: !509)
!526 = !DILocation(line: 215, column: 18, scope: !509)
!527 = !DILocation(line: 216, column: 2, scope: !509)
!528 = !DILocation(line: 216, column: 12, scope: !509)
!529 = !DILocation(line: 216, column: 17, scope: !509)
!530 = !DILocation(line: 217, column: 7, scope: !509)
!531 = !DILocation(line: 210, column: 51, scope: !504)
!532 = !DILocation(line: 210, column: 35, scope: !504)
!533 = distinct !{!533, !507, !534, !133, !134}
!534 = !DILocation(line: 218, column: 7, scope: !499)
!535 = !DILocation(line: 209, column: 37, scope: !495)
!536 = !DILocation(line: 209, column: 57, scope: !495)
!537 = distinct !{!537, !497, !538, !133, !134}
!538 = !DILocation(line: 218, column: 7, scope: !441)
!539 = !DILocation(line: 220, column: 3, scope: !71)
!540 = !DILocation(line: 222, column: 1, scope: !71)
!541 = !DISubprogram(name: "MyMalloc", scope: !12, file: !12, line: 229, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!542 = !DISubroutineType(types: !543)
!543 = !{!544, !9, !9}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!546 = !{}
!547 = !DISubprogram(name: "MigrateMem", scope: !12, file: !12, line: 230, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !550, !9, !9}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!551 = distinct !DISubprogram(name: "FindMachineDimensions", scope: !3, file: !3, line: 689, type: !552, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !554)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !9}
!554 = !{!555, !556, !557}
!555 = !DILocalVariable(name: "P", arg: 1, scope: !551, file: !3, line: 689, type: !9)
!556 = !DILocalVariable(name: "try", scope: !551, file: !3, line: 691, type: !9)
!557 = !DILocalVariable(name: "div", scope: !551, file: !3, line: 691, type: !9)
!558 = !DILocation(line: 0, scope: !551)
!559 = !DILocation(line: 693, column: 24, scope: !560)
!560 = distinct !DILexicalBlock(scope: !551, file: !3, line: 693, column: 3)
!561 = !DILocation(line: 693, column: 19, scope: !560)
!562 = !DILocation(line: 693, column: 12, scope: !560)
!563 = !DILocation(line: 693, column: 40, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !3, line: 693, column: 3)
!565 = !DILocation(line: 693, column: 3, scope: !560)
!566 = !DILocation(line: 694, column: 12, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !3, line: 693, column: 51)
!568 = !DILocation(line: 695, column: 12, scope: !569)
!569 = distinct !DILexicalBlock(scope: !567, file: !3, line: 695, column: 9)
!570 = !DILocation(line: 695, column: 17, scope: !569)
!571 = !DILocation(line: 695, column: 9, scope: !567)
!572 = !DILocation(line: 693, column: 47, scope: !564)
!573 = distinct !{!573, !565, !574, !133, !134}
!574 = !DILocation(line: 697, column: 3, scope: !560)
!575 = !DILocation(line: 0, scope: !560)
!576 = !DILocation(line: 699, column: 10, scope: !551)
!577 = !DILocation(line: 699, column: 24, scope: !551)
!578 = !DILocation(line: 700, column: 3, scope: !551)
!579 = !DILocation(line: 701, column: 1, scope: !551)
!580 = distinct !DISubprogram(name: "FindNumPartitions", scope: !3, file: !3, line: 224, type: !581, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!9, !9, !9}
!583 = !{!584, !585, !586}
!584 = !DILocalVariable(name: "set_size", arg: 1, scope: !580, file: !3, line: 224, type: !9)
!585 = !DILocalVariable(name: "piece_size", arg: 2, scope: !580, file: !3, line: 224, type: !9)
!586 = !DILocalVariable(name: "num_partitions", scope: !580, file: !3, line: 226, type: !9)
!587 = !DILocation(line: 0, scope: !580)
!588 = !DILocation(line: 228, column: 20, scope: !589)
!589 = distinct !DILexicalBlock(scope: !580, file: !3, line: 228, column: 7)
!590 = !DILocation(line: 228, column: 31, scope: !589)
!591 = !DILocation(line: 228, column: 16, scope: !589)
!592 = !DILocation(line: 228, column: 7, scope: !580)
!593 = !DILocation(line: 231, column: 31, scope: !594)
!594 = distinct !DILexicalBlock(scope: !589, file: !3, line: 230, column: 8)
!595 = !DILocation(line: 231, column: 42, scope: !594)
!596 = !DILocation(line: 231, column: 45, scope: !594)
!597 = !DILocation(line: 232, column: 30, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !3, line: 232, column: 9)
!599 = !DILocation(line: 232, column: 20, scope: !598)
!600 = !DILocation(line: 233, column: 26, scope: !598)
!601 = !DILocation(line: 233, column: 10, scope: !598)
!602 = !DILocation(line: 233, column: 30, scope: !598)
!603 = !DILocation(line: 232, column: 46, scope: !598)
!604 = !DILocation(line: 232, column: 9, scope: !594)
!605 = !DILocation(line: 0, scope: !589)
!606 = !DILocation(line: 237, column: 3, scope: !580)
!607 = distinct !DISubprogram(name: "ComputePartitionNumbering", scope: !3, file: !3, line: 674, type: !608, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !610)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !8}
!610 = !{!611, !612, !613}
!611 = !DILocalVariable(name: "numbering", arg: 1, scope: !607, file: !3, line: 674, type: !8)
!612 = !DILocalVariable(name: "j", scope: !607, file: !3, line: 676, type: !9)
!613 = !DILocalVariable(name: "which", scope: !607, file: !3, line: 676, type: !9)
!614 = !DILocation(line: 0, scope: !607)
!615 = !DILocation(line: 678, column: 18, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 678, column: 3)
!617 = distinct !DILexicalBlock(scope: !607, file: !3, line: 678, column: 3)
!618 = !DILocation(line: 678, column: 14, scope: !616)
!619 = !DILocation(line: 678, column: 3, scope: !617)
!620 = !DILocation(line: 682, column: 14, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 682, column: 3)
!622 = distinct !DILexicalBlock(scope: !607, file: !3, line: 682, column: 3)
!623 = !DILocation(line: 682, column: 3, scope: !622)
!624 = !DILocation(line: 683, column: 13, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !3, line: 683, column: 9)
!626 = !DILocation(line: 679, column: 5, scope: !616)
!627 = !DILocation(line: 679, column: 18, scope: !616)
!628 = !DILocation(line: 678, column: 22, scope: !616)
!629 = distinct !{!629, !619, !630, !133, !134}
!630 = !DILocation(line: 679, column: 21, scope: !617)
!631 = !DILocation(line: 683, column: 10, scope: !625)
!632 = !DILocation(line: 683, column: 9, scope: !621)
!633 = !DILocation(line: 684, column: 27, scope: !625)
!634 = !DILocation(line: 684, column: 7, scope: !625)
!635 = !DILocation(line: 684, column: 20, scope: !625)
!636 = !DILocation(line: 682, column: 18, scope: !621)
!637 = !DILocation(line: 682, column: 27, scope: !621)
!638 = !DILocation(line: 682, column: 24, scope: !621)
!639 = !DILocation(line: 682, column: 22, scope: !621)
!640 = distinct !{!640, !623, !641, !133, !134}
!641 = !DILocation(line: 684, column: 27, scope: !622)
!642 = !DILocation(line: 685, column: 1, scope: !607)
!643 = distinct !DISubprogram(name: "DumpSizes", scope: !3, file: !3, line: 645, type: !644, scopeLine: 646, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !43, !8, !8}
!646 = !{!647, !648, !649, !650, !651, !652}
!647 = !DILocalVariable(name: "LB", arg: 1, scope: !643, file: !3, line: 645, type: !43)
!648 = !DILocalVariable(name: "domain", arg: 2, scope: !643, file: !3, line: 645, type: !8)
!649 = !DILocalVariable(name: "sizes", arg: 3, scope: !643, file: !3, line: 645, type: !8)
!650 = !DILocalVariable(name: "i", scope: !643, file: !3, line: 647, type: !9)
!651 = !DILocalVariable(name: "buckets", scope: !643, file: !3, line: 647, type: !8)
!652 = !DILocalVariable(name: "maxm", scope: !643, file: !3, line: 647, type: !9)
!653 = !DILocation(line: 645, column: 24, scope: !643)
!654 = !DILocation(line: 0, scope: !643)
!655 = !DILocation(line: 650, column: 14, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !3, line: 650, column: 3)
!657 = distinct !DILexicalBlock(scope: !643, file: !3, line: 650, column: 3)
!658 = !DILocation(line: 650, column: 3, scope: !657)
!659 = !DILocation(line: 651, column: 10, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !3, line: 651, column: 9)
!661 = !DILocation(line: 0, scope: !656)
!662 = !DILocation(line: 651, column: 20, scope: !660)
!663 = !DILocation(line: 650, column: 22, scope: !656)
!664 = distinct !{!664, !658, !665, !133, !134}
!665 = !DILocation(line: 652, column: 21, scope: !657)
!666 = !DILocation(line: 649, column: 8, scope: !643)
!667 = !DILocation(line: 654, column: 37, scope: !643)
!668 = !DILocation(line: 654, column: 22, scope: !643)
!669 = !DILocation(line: 658, column: 3, scope: !670)
!670 = distinct !DILexicalBlock(scope: !643, file: !3, line: 658, column: 3)
!671 = !DILocation(line: 659, column: 10, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 659, column: 9)
!673 = distinct !DILexicalBlock(scope: !670, file: !3, line: 658, column: 3)
!674 = !DILocation(line: 0, scope: !673)
!675 = !DILocation(line: 659, column: 9, scope: !673)
!676 = !DILocation(line: 660, column: 7, scope: !672)
!677 = !DILocation(line: 660, column: 24, scope: !672)
!678 = !DILocation(line: 658, column: 22, scope: !673)
!679 = !DILocation(line: 658, column: 14, scope: !673)
!680 = distinct !{!680, !669, !681, !133, !134}
!681 = !DILocation(line: 660, column: 24, scope: !670)
!682 = !DILocation(line: 662, column: 3, scope: !683)
!683 = distinct !DILexicalBlock(scope: !643, file: !3, line: 662, column: 3)
!684 = !DILocation(line: 663, column: 9, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 663, column: 9)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 662, column: 27)
!687 = distinct !DILexicalBlock(scope: !683, file: !3, line: 662, column: 3)
!688 = !DILocation(line: 663, column: 20, scope: !685)
!689 = !DILocation(line: 663, column: 9, scope: !686)
!690 = !DILocation(line: 666, column: 7, scope: !685)
!691 = !DILocation(line: 662, column: 23, scope: !687)
!692 = !DILocation(line: 662, column: 14, scope: !687)
!693 = distinct !{!693, !682, !694, !133, !134}
!694 = !DILocation(line: 667, column: 3, scope: !683)
!695 = !DILocation(line: 668, column: 3, scope: !643)
!696 = !DILocation(line: 670, column: 3, scope: !643)
!697 = !DILocation(line: 671, column: 1, scope: !643)
!698 = distinct !DISubprogram(name: "FindSuperStructure", scope: !3, file: !3, line: 433, type: !72, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!700 = !DILocalVariable(name: "M", arg: 1, scope: !698, file: !3, line: 433, type: !74)
!701 = !DILocalVariable(name: "super", arg: 2, scope: !698, file: !3, line: 433, type: !9)
!702 = !DILocalVariable(name: "PERM", arg: 3, scope: !698, file: !3, line: 433, type: !8)
!703 = !DILocalVariable(name: "INVP", arg: 4, scope: !698, file: !3, line: 433, type: !8)
!704 = !DILocalVariable(name: "firstchild", arg: 5, scope: !698, file: !3, line: 433, type: !8)
!705 = !DILocalVariable(name: "child", arg: 6, scope: !698, file: !3, line: 433, type: !8)
!706 = !DILocalVariable(name: "structure", arg: 7, scope: !698, file: !3, line: 433, type: !8)
!707 = !DILocalVariable(name: "nz", arg: 8, scope: !698, file: !3, line: 433, type: !8)
!708 = !DILocalVariable(name: "n_nz", arg: 9, scope: !698, file: !3, line: 433, type: !8)
!709 = !DILocalVariable(name: "i", scope: !698, file: !3, line: 435, type: !9)
!710 = !DILocalVariable(name: "truecol", scope: !698, file: !3, line: 435, type: !9)
!711 = !DILocalVariable(name: "current", scope: !698, file: !3, line: 435, type: !9)
!712 = !DILocalVariable(name: "bl", scope: !698, file: !3, line: 435, type: !9)
!713 = !DILocalVariable(name: "c", scope: !698, file: !3, line: 435, type: !9)
!714 = !DILocalVariable(name: "the_child", scope: !698, file: !3, line: 435, type: !9)
!715 = !DILocalVariable(name: "row", scope: !698, file: !3, line: 435, type: !9)
!716 = !DILocation(line: 433, column: 33, scope: !698)
!717 = !DILocation(line: 0, scope: !698)
!718 = !DILocation(line: 437, column: 9, scope: !698)
!719 = !DILocation(line: 440, column: 37, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 440, column: 3)
!721 = distinct !DILexicalBlock(scope: !698, file: !3, line: 440, column: 3)
!722 = !DILocation(line: 440, column: 30, scope: !720)
!723 = !DILocation(line: 440, column: 3, scope: !721)
!724 = !DILocation(line: 441, column: 15, scope: !725)
!725 = distinct !DILexicalBlock(scope: !720, file: !3, line: 440, column: 61)
!726 = !DILocation(line: 442, column: 12, scope: !727)
!727 = distinct !DILexicalBlock(scope: !725, file: !3, line: 442, column: 5)
!728 = !DILocation(line: 442, column: 30, scope: !729)
!729 = distinct !DILexicalBlock(scope: !727, file: !3, line: 442, column: 5)
!730 = !DILocation(line: 442, column: 29, scope: !729)
!731 = !DILocation(line: 442, column: 5, scope: !727)
!732 = !DILocation(line: 443, column: 18, scope: !733)
!733 = distinct !DILexicalBlock(scope: !729, file: !3, line: 442, column: 53)
!734 = !DILocation(line: 443, column: 13, scope: !733)
!735 = !DILocation(line: 444, column: 15, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !3, line: 444, column: 11)
!737 = !DILocation(line: 444, column: 24, scope: !736)
!738 = !DILocation(line: 444, column: 28, scope: !736)
!739 = !DILocation(line: 444, column: 11, scope: !733)
!740 = !DILocation(line: 445, column: 17, scope: !741)
!741 = distinct !DILexicalBlock(scope: !736, file: !3, line: 444, column: 44)
!742 = !DILocation(line: 446, column: 12, scope: !741)
!743 = !DILocation(line: 446, column: 2, scope: !741)
!744 = !DILocation(line: 446, column: 16, scope: !741)
!745 = !DILocation(line: 447, column: 7, scope: !741)
!746 = !DILocation(line: 442, column: 49, scope: !729)
!747 = distinct !{!747, !731, !748, !133, !134}
!748 = !DILocation(line: 448, column: 5, scope: !727)
!749 = !DILocation(line: 440, column: 57, scope: !720)
!750 = !DILocation(line: 440, column: 36, scope: !720)
!751 = distinct !{!751, !723, !752, !133, !134}
!752 = !DILocation(line: 449, column: 3, scope: !721)
!753 = !DILocation(line: 452, column: 10, scope: !754)
!754 = distinct !DILexicalBlock(scope: !698, file: !3, line: 452, column: 3)
!755 = !DILocation(line: 452, column: 31, scope: !756)
!756 = distinct !DILexicalBlock(scope: !754, file: !3, line: 452, column: 3)
!757 = !DILocation(line: 452, column: 30, scope: !756)
!758 = !DILocation(line: 452, column: 3, scope: !754)
!759 = !DILocation(line: 481, column: 15, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 481, column: 3)
!761 = distinct !DILexicalBlock(scope: !698, file: !3, line: 481, column: 3)
!762 = !DILocation(line: 481, column: 14, scope: !760)
!763 = !DILocation(line: 481, column: 3, scope: !761)
!764 = !DILocation(line: 453, column: 17, scope: !765)
!765 = distinct !DILexicalBlock(scope: !756, file: !3, line: 452, column: 57)
!766 = !DILocation(line: 454, column: 12, scope: !767)
!767 = distinct !DILexicalBlock(scope: !765, file: !3, line: 454, column: 9)
!768 = !DILocation(line: 454, column: 9, scope: !767)
!769 = !DILocation(line: 454, column: 9, scope: !765)
!770 = !DILocation(line: 456, column: 12, scope: !771)
!771 = distinct !DILexicalBlock(scope: !765, file: !3, line: 456, column: 9)
!772 = !DILocation(line: 456, column: 9, scope: !771)
!773 = !DILocation(line: 0, scope: !771)
!774 = !DILocation(line: 456, column: 9, scope: !765)
!775 = !DILocation(line: 457, column: 7, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 457, column: 7)
!777 = distinct !DILexicalBlock(scope: !771, file: !3, line: 456, column: 31)
!778 = !DILocation(line: 458, column: 18, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 457, column: 61)
!780 = distinct !DILexicalBlock(scope: !776, file: !3, line: 457, column: 7)
!781 = !DILocation(line: 458, column: 15, scope: !779)
!782 = !DILocation(line: 459, column: 17, scope: !783)
!783 = distinct !DILexicalBlock(scope: !779, file: !3, line: 459, column: 13)
!784 = !DILocation(line: 459, column: 26, scope: !783)
!785 = !DILocation(line: 459, column: 30, scope: !783)
!786 = !DILocation(line: 459, column: 13, scope: !779)
!787 = !DILocation(line: 460, column: 19, scope: !788)
!788 = distinct !DILexicalBlock(scope: !783, file: !3, line: 459, column: 46)
!789 = !DILocation(line: 461, column: 14, scope: !788)
!790 = !DILocation(line: 461, column: 4, scope: !788)
!791 = !DILocation(line: 461, column: 18, scope: !788)
!792 = !DILocation(line: 457, column: 38, scope: !780)
!793 = !DILocation(line: 462, column: 9, scope: !788)
!794 = !DILocation(line: 457, column: 57, scope: !780)
!795 = !DILocation(line: 457, column: 35, scope: !780)
!796 = !DILocation(line: 457, column: 34, scope: !780)
!797 = distinct !{!797, !775, !798, !133, !134}
!798 = !DILocation(line: 463, column: 7, scope: !776)
!799 = !DILocation(line: 466, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 466, column: 7)
!801 = distinct !DILexicalBlock(scope: !771, file: !3, line: 465, column: 10)
!802 = !DILocation(line: 467, column: 25, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 467, column: 11)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 467, column: 11)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 466, column: 61)
!806 = distinct !DILexicalBlock(scope: !800, file: !3, line: 466, column: 7)
!807 = !DILocation(line: 467, column: 35, scope: !803)
!808 = !DILocation(line: 467, column: 24, scope: !803)
!809 = !DILocation(line: 467, column: 11, scope: !804)
!810 = !DILocation(line: 468, column: 20, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 468, column: 10)
!812 = distinct !DILexicalBlock(scope: !803, file: !3, line: 467, column: 49)
!813 = !DILocation(line: 468, column: 10, scope: !811)
!814 = !DILocation(line: 0, scope: !811)
!815 = !DILocation(line: 468, column: 10, scope: !812)
!816 = !DILocation(line: 469, column: 24, scope: !811)
!817 = !DILocation(line: 469, column: 23, scope: !811)
!818 = !DILocation(line: 469, column: 8, scope: !811)
!819 = !DILocation(line: 471, column: 23, scope: !811)
!820 = !DILocation(line: 472, column: 21, scope: !821)
!821 = distinct !DILexicalBlock(scope: !812, file: !3, line: 472, column: 17)
!822 = !DILocation(line: 472, column: 30, scope: !821)
!823 = !DILocation(line: 472, column: 34, scope: !821)
!824 = !DILocation(line: 472, column: 17, scope: !812)
!825 = !DILocation(line: 473, column: 23, scope: !826)
!826 = distinct !DILexicalBlock(scope: !821, file: !3, line: 472, column: 50)
!827 = !DILocation(line: 474, column: 18, scope: !826)
!828 = !DILocation(line: 474, column: 8, scope: !826)
!829 = !DILocation(line: 474, column: 22, scope: !826)
!830 = !DILocation(line: 475, column: 13, scope: !826)
!831 = !DILocation(line: 467, column: 45, scope: !803)
!832 = distinct !{!832, !809, !833, !133, !134}
!833 = !DILocation(line: 476, column: 4, scope: !804)
!834 = !DILocation(line: 466, column: 38, scope: !806)
!835 = !DILocation(line: 466, column: 57, scope: !806)
!836 = !DILocation(line: 466, column: 35, scope: !806)
!837 = !DILocation(line: 466, column: 34, scope: !806)
!838 = distinct !{!838, !799, !839, !133, !134}
!839 = !DILocation(line: 477, column: 9, scope: !800)
!840 = !DILocation(line: 452, column: 53, scope: !756)
!841 = distinct !{!841, !758, !842, !133, !134}
!842 = !DILocation(line: 479, column: 3, scope: !754)
!843 = !DILocation(line: 482, column: 15, scope: !760)
!844 = !DILocation(line: 482, column: 5, scope: !760)
!845 = !DILocation(line: 482, column: 22, scope: !760)
!846 = !DILocation(line: 481, column: 23, scope: !760)
!847 = distinct !{!847, !763, !848, !133, !134}
!848 = !DILocation(line: 482, column: 24, scope: !761)
!849 = !DILocation(line: 484, column: 3, scope: !698)
!850 = !DILocation(line: 486, column: 25, scope: !698)
!851 = !DILocation(line: 486, column: 3, scope: !698)
!852 = !DILocation(line: 488, column: 1, scope: !698)
!853 = distinct !DISubprogram(name: "FindDomStructure", scope: !3, file: !3, line: 327, type: !854, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !9, !8, !9}
!856 = !{!857, !858, !859, !860, !861}
!857 = !DILocalVariable(name: "super", arg: 1, scope: !853, file: !3, line: 327, type: !9)
!858 = !DILocalVariable(name: "nz", arg: 2, scope: !853, file: !3, line: 327, type: !8)
!859 = !DILocalVariable(name: "n_nz", arg: 3, scope: !853, file: !3, line: 327, type: !9)
!860 = !DILocalVariable(name: "col", scope: !853, file: !3, line: 329, type: !9)
!861 = !DILocalVariable(name: "i", scope: !853, file: !3, line: 329, type: !9)
!862 = !DILocation(line: 0, scope: !853)
!863 = !DILocation(line: 331, column: 29, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 331, column: 3)
!865 = distinct !DILexicalBlock(scope: !853, file: !3, line: 331, column: 3)
!866 = !DILocation(line: 331, column: 22, scope: !864)
!867 = !DILocation(line: 331, column: 3, scope: !865)
!868 = !DILocation(line: 331, column: 28, scope: !864)
!869 = distinct !{!869, !867, !870, !133, !134}
!870 = !DILocation(line: 340, column: 3, scope: !865)
!871 = !DILocation(line: 332, column: 24, scope: !872)
!872 = distinct !DILexicalBlock(scope: !864, file: !3, line: 331, column: 49)
!873 = !DILocation(line: 332, column: 21, scope: !872)
!874 = !DILocation(line: 332, column: 46, scope: !872)
!875 = !DILocation(line: 332, column: 33, scope: !872)
!876 = !DILocation(line: 332, column: 40, scope: !872)
!877 = !DILocation(line: 332, column: 15, scope: !872)
!878 = !DILocation(line: 332, column: 5, scope: !872)
!879 = !DILocation(line: 332, column: 19, scope: !872)
!880 = !DILocation(line: 333, column: 12, scope: !881)
!881 = distinct !DILexicalBlock(scope: !872, file: !3, line: 333, column: 9)
!882 = !DILocation(line: 333, column: 9, scope: !881)
!883 = !DILocation(line: 333, column: 28, scope: !881)
!884 = !DILocation(line: 333, column: 23, scope: !881)
!885 = !DILocation(line: 333, column: 9, scope: !872)
!886 = !DILocation(line: 338, column: 24, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 338, column: 5)
!888 = distinct !DILexicalBlock(scope: !872, file: !3, line: 338, column: 5)
!889 = !DILocation(line: 338, column: 5, scope: !888)
!890 = !DILocation(line: 339, column: 43, scope: !887)
!891 = !DILocation(line: 339, column: 10, scope: !887)
!892 = !DILocation(line: 339, column: 14, scope: !887)
!893 = !DILocation(line: 339, column: 7, scope: !887)
!894 = !DILocation(line: 339, column: 41, scope: !887)
!895 = !DILocation(line: 338, column: 32, scope: !887)
!896 = distinct !{!896, !889, !897, !133, !134}
!897 = !DILocation(line: 339, column: 47, scope: !888)
!898 = !DILocation(line: 334, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !881, file: !3, line: 333, column: 47)
!900 = !DILocation(line: 335, column: 7, scope: !899)
!901 = !DILocation(line: 339, column: 17, scope: !887)
!902 = !DILocation(line: 339, column: 25, scope: !887)
!903 = !DILocation(line: 339, column: 27, scope: !887)
!904 = !DILocation(line: 341, column: 1, scope: !853)
!905 = distinct !DISubprogram(name: "FindBlStructure", scope: !3, file: !3, line: 383, type: !906, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !74, !9, !8, !8, !8, !8, !8, !8}
!908 = !{!909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923}
!909 = !DILocalVariable(name: "M", arg: 1, scope: !905, file: !3, line: 383, type: !74)
!910 = !DILocalVariable(name: "super", arg: 2, scope: !905, file: !3, line: 383, type: !9)
!911 = !DILocalVariable(name: "PERM", arg: 3, scope: !905, file: !3, line: 383, type: !8)
!912 = !DILocalVariable(name: "INVP", arg: 4, scope: !905, file: !3, line: 383, type: !8)
!913 = !DILocalVariable(name: "firstchild", arg: 5, scope: !905, file: !3, line: 383, type: !8)
!914 = !DILocalVariable(name: "child", arg: 6, scope: !905, file: !3, line: 383, type: !8)
!915 = !DILocalVariable(name: "structure", arg: 7, scope: !905, file: !3, line: 383, type: !8)
!916 = !DILocalVariable(name: "nz", arg: 8, scope: !905, file: !3, line: 383, type: !8)
!917 = !DILocalVariable(name: "truecol", scope: !905, file: !3, line: 385, type: !9)
!918 = !DILocalVariable(name: "i", scope: !905, file: !3, line: 385, type: !9)
!919 = !DILocalVariable(name: "c", scope: !905, file: !3, line: 385, type: !9)
!920 = !DILocalVariable(name: "col", scope: !905, file: !3, line: 385, type: !9)
!921 = !DILocalVariable(name: "the_child", scope: !905, file: !3, line: 385, type: !9)
!922 = !DILocalVariable(name: "bl", scope: !905, file: !3, line: 385, type: !9)
!923 = !DILocalVariable(name: "n_nz", scope: !905, file: !3, line: 385, type: !9)
!924 = !DILocation(line: 383, column: 30, scope: !905)
!925 = !DILocation(line: 0, scope: !905)
!926 = !DILocation(line: 388, column: 29, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 388, column: 3)
!928 = distinct !DILexicalBlock(scope: !905, file: !3, line: 388, column: 3)
!929 = !DILocation(line: 388, column: 22, scope: !927)
!930 = !DILocation(line: 388, column: 3, scope: !928)
!931 = !DILocation(line: 389, column: 15, scope: !932)
!932 = distinct !DILexicalBlock(scope: !927, file: !3, line: 388, column: 49)
!933 = !DILocation(line: 390, column: 12, scope: !934)
!934 = distinct !DILexicalBlock(scope: !932, file: !3, line: 390, column: 5)
!935 = !DILocation(line: 390, column: 30, scope: !936)
!936 = distinct !DILexicalBlock(scope: !934, file: !3, line: 390, column: 5)
!937 = !DILocation(line: 390, column: 29, scope: !936)
!938 = !DILocation(line: 390, column: 5, scope: !934)
!939 = !DILocation(line: 392, column: 14, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 392, column: 11)
!941 = distinct !DILexicalBlock(scope: !936, file: !3, line: 390, column: 53)
!942 = !DILocation(line: 391, column: 17, scope: !941)
!943 = !DILocation(line: 391, column: 12, scope: !941)
!944 = !DILocation(line: 392, column: 11, scope: !940)
!945 = !DILocation(line: 392, column: 11, scope: !941)
!946 = !DILocation(line: 394, column: 14, scope: !947)
!947 = distinct !DILexicalBlock(scope: !941, file: !3, line: 394, column: 11)
!948 = !DILocation(line: 394, column: 23, scope: !947)
!949 = !DILocation(line: 394, column: 27, scope: !947)
!950 = !DILocation(line: 394, column: 11, scope: !941)
!951 = !DILocation(line: 395, column: 16, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !3, line: 394, column: 42)
!953 = !DILocation(line: 396, column: 9, scope: !952)
!954 = !DILocation(line: 396, column: 2, scope: !952)
!955 = !DILocation(line: 396, column: 13, scope: !952)
!956 = !DILocation(line: 397, column: 7, scope: !952)
!957 = !DILocation(line: 390, column: 49, scope: !936)
!958 = distinct !{!958, !938, !959, !133, !134}
!959 = !DILocation(line: 398, column: 5, scope: !934)
!960 = !DILocation(line: 388, column: 45, scope: !927)
!961 = !DILocation(line: 387, column: 8, scope: !905)
!962 = !DILocation(line: 388, column: 28, scope: !927)
!963 = distinct !{!963, !930, !964, !133, !134}
!964 = !DILocation(line: 399, column: 3, scope: !928)
!965 = !DILocation(line: 401, column: 10, scope: !966)
!966 = distinct !DILexicalBlock(scope: !905, file: !3, line: 401, column: 3)
!967 = !DILocation(line: 401, column: 31, scope: !968)
!968 = distinct !DILexicalBlock(scope: !966, file: !3, line: 401, column: 3)
!969 = !DILocation(line: 401, column: 30, scope: !968)
!970 = !DILocation(line: 401, column: 3, scope: !966)
!971 = !DILocation(line: 405, column: 15, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !3, line: 405, column: 5)
!973 = distinct !DILexicalBlock(scope: !968, file: !3, line: 401, column: 57)
!974 = !DILocation(line: 403, column: 12, scope: !975)
!975 = distinct !DILexicalBlock(scope: !973, file: !3, line: 403, column: 9)
!976 = !DILocation(line: 417, column: 14, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !3, line: 417, column: 3)
!978 = distinct !DILexicalBlock(scope: !905, file: !3, line: 417, column: 3)
!979 = !DILocation(line: 417, column: 3, scope: !978)
!980 = !DILocation(line: 402, column: 17, scope: !973)
!981 = !DILocation(line: 403, column: 9, scope: !975)
!982 = !DILocation(line: 403, column: 9, scope: !973)
!983 = !DILocation(line: 405, column: 12, scope: !972)
!984 = !DILocation(line: 405, column: 33, scope: !985)
!985 = distinct !DILexicalBlock(scope: !972, file: !3, line: 405, column: 5)
!986 = !DILocation(line: 405, column: 32, scope: !985)
!987 = !DILocation(line: 405, column: 5, scope: !972)
!988 = !DILocation(line: 406, column: 15, scope: !989)
!989 = distinct !DILexicalBlock(scope: !985, file: !3, line: 405, column: 59)
!990 = !DILocation(line: 407, column: 14, scope: !991)
!991 = distinct !DILexicalBlock(scope: !989, file: !3, line: 407, column: 11)
!992 = !DILocation(line: 406, column: 12, scope: !989)
!993 = !DILocation(line: 407, column: 11, scope: !991)
!994 = !DILocation(line: 407, column: 11, scope: !989)
!995 = !DILocation(line: 409, column: 14, scope: !996)
!996 = distinct !DILexicalBlock(scope: !989, file: !3, line: 409, column: 11)
!997 = !DILocation(line: 409, column: 23, scope: !996)
!998 = !DILocation(line: 409, column: 27, scope: !996)
!999 = !DILocation(line: 409, column: 11, scope: !989)
!1000 = !DILocation(line: 410, column: 16, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !996, file: !3, line: 409, column: 42)
!1002 = !DILocation(line: 411, column: 9, scope: !1001)
!1003 = !DILocation(line: 411, column: 2, scope: !1001)
!1004 = !DILocation(line: 411, column: 13, scope: !1001)
!1005 = !DILocation(line: 405, column: 36, scope: !985)
!1006 = !DILocation(line: 412, column: 7, scope: !1001)
!1007 = !DILocation(line: 405, column: 55, scope: !985)
!1008 = distinct !{!1008, !987, !1009, !133, !134}
!1009 = !DILocation(line: 413, column: 5, scope: !972)
!1010 = !DILocation(line: 401, column: 53, scope: !968)
!1011 = distinct !{!1011, !970, !1012, !133, !134}
!1012 = !DILocation(line: 414, column: 3, scope: !966)
!1013 = !DILocation(line: 418, column: 15, scope: !977)
!1014 = !DILocation(line: 418, column: 5, scope: !977)
!1015 = !DILocation(line: 418, column: 22, scope: !977)
!1016 = !DILocation(line: 417, column: 22, scope: !977)
!1017 = distinct !{!1017, !979, !1018, !133, !134}
!1018 = !DILocation(line: 418, column: 24, scope: !978)
!1019 = !DILocation(line: 420, column: 3, scope: !905)
!1020 = !DILocation(line: 422, column: 24, scope: !905)
!1021 = !DILocation(line: 422, column: 21, scope: !905)
!1022 = !DILocation(line: 422, column: 35, scope: !905)
!1023 = !DILocation(line: 422, column: 3, scope: !905)
!1024 = !DILocation(line: 422, column: 19, scope: !905)
!1025 = !DILocation(line: 423, column: 10, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !905, file: !3, line: 423, column: 7)
!1027 = !DILocation(line: 423, column: 7, scope: !1026)
!1028 = !DILocation(line: 423, column: 28, scope: !1026)
!1029 = !DILocation(line: 423, column: 23, scope: !1026)
!1030 = !DILocation(line: 423, column: 7, scope: !905)
!1031 = !DILocation(line: 427, column: 3, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !905, file: !3, line: 427, column: 3)
!1033 = !DILocation(line: 428, column: 31, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 427, column: 3)
!1035 = !DILocation(line: 428, column: 8, scope: !1034)
!1036 = !DILocation(line: 428, column: 12, scope: !1034)
!1037 = !DILocation(line: 428, column: 5, scope: !1034)
!1038 = !DILocation(line: 428, column: 29, scope: !1034)
!1039 = !DILocation(line: 427, column: 14, scope: !1034)
!1040 = distinct !{!1040, !1031, !1041, !133, !134}
!1041 = !DILocation(line: 428, column: 35, scope: !1032)
!1042 = !DILocation(line: 424, column: 5, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 423, column: 47)
!1044 = !DILocation(line: 425, column: 5, scope: !1043)
!1045 = !DILocation(line: 428, column: 15, scope: !1034)
!1046 = !DILocation(line: 428, column: 25, scope: !1034)
!1047 = !DILocation(line: 427, column: 22, scope: !1034)
!1048 = !DILocation(line: 430, column: 1, scope: !905)
!1049 = distinct !DISubprogram(name: "FindDummyDomainStructure", scope: !3, file: !3, line: 343, type: !552, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055}
!1051 = !DILocalVariable(name: "which_domain", arg: 1, scope: !1049, file: !3, line: 343, type: !9)
!1052 = !DILocalVariable(name: "col", scope: !1049, file: !3, line: 345, type: !9)
!1053 = !DILocalVariable(name: "row", scope: !1049, file: !3, line: 345, type: !9)
!1054 = !DILocalVariable(name: "current_block", scope: !1049, file: !3, line: 345, type: !9)
!1055 = !DILocalVariable(name: "current_block_last", scope: !1049, file: !3, line: 345, type: !9)
!1056 = !DILocation(line: 0, scope: !1049)
!1057 = !DILocation(line: 347, column: 12, scope: !1049)
!1058 = !DILocation(line: 347, column: 9, scope: !1049)
!1059 = !DILocation(line: 350, column: 12, scope: !1049)
!1060 = !DILocation(line: 350, column: 9, scope: !1049)
!1061 = !DILocation(line: 350, column: 20, scope: !1049)
!1062 = !DILocation(line: 353, column: 43, scope: !1049)
!1063 = !DILocation(line: 353, column: 44, scope: !1049)
!1064 = !DILocation(line: 353, column: 33, scope: !1049)
!1065 = !DILocation(line: 353, column: 27, scope: !1049)
!1066 = !DILocation(line: 353, column: 3, scope: !1049)
!1067 = !DILocation(line: 353, column: 31, scope: !1049)
!1068 = !DILocation(line: 355, column: 19, scope: !1049)
!1069 = !DILocation(line: 355, column: 16, scope: !1049)
!1070 = !DILocation(line: 355, column: 14, scope: !1049)
!1071 = !DILocation(line: 355, column: 3, scope: !1049)
!1072 = !DILocation(line: 356, column: 24, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 355, column: 31)
!1074 = !DILocation(line: 356, column: 21, scope: !1073)
!1075 = !DILocation(line: 357, column: 12, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 357, column: 9)
!1077 = !DILocation(line: 357, column: 9, scope: !1076)
!1078 = !DILocation(line: 357, column: 9, scope: !1073)
!1079 = !DILocation(line: 359, column: 42, scope: !1073)
!1080 = !DILocation(line: 359, column: 40, scope: !1073)
!1081 = !DILocation(line: 360, column: 22, scope: !1073)
!1082 = !DILocation(line: 360, column: 36, scope: !1073)
!1083 = !DILocation(line: 360, column: 12, scope: !1073)
!1084 = !DILocation(line: 360, column: 5, scope: !1073)
!1085 = !DILocation(line: 360, column: 41, scope: !1073)
!1086 = !DILocation(line: 361, column: 8, scope: !1073)
!1087 = !DILocation(line: 361, column: 15, scope: !1073)
!1088 = !DILocation(line: 361, column: 29, scope: !1073)
!1089 = !DILocation(line: 361, column: 5, scope: !1073)
!1090 = !DILocation(line: 361, column: 32, scope: !1073)
!1091 = !DILocation(line: 362, column: 12, scope: !1073)
!1092 = !DILocation(line: 362, column: 24, scope: !1073)
!1093 = !DILocation(line: 362, column: 41, scope: !1073)
!1094 = !DILocation(line: 364, column: 9, scope: !1073)
!1095 = !DILocation(line: 362, column: 5, scope: !1073)
!1096 = !DILocation(line: 365, column: 10, scope: !1073)
!1097 = distinct !{!1097, !1095, !1096, !133, !134}
!1098 = distinct !{!1098, !1071, !1099, !133, !134}
!1099 = !DILocation(line: 366, column: 3, scope: !1049)
!1100 = !DILocation(line: 368, column: 17, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 368, column: 7)
!1102 = !DILocation(line: 368, column: 31, scope: !1101)
!1103 = !DILocation(line: 368, column: 7, scope: !1101)
!1104 = !DILocation(line: 368, column: 40, scope: !1101)
!1105 = !DILocation(line: 368, column: 35, scope: !1101)
!1106 = !DILocation(line: 368, column: 7, scope: !1049)
!1107 = !DILocation(line: 369, column: 5, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 368, column: 59)
!1109 = !DILocation(line: 370, column: 5, scope: !1108)
!1110 = !DILocation(line: 372, column: 1, scope: !1049)
!1111 = !DISubprogram(name: "PlaceDomains", scope: !12, file: !12, line: 281, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!1112 = distinct !DISubprogram(name: "ComputeBlockParents", scope: !3, file: !3, line: 241, type: !608, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1113)
!1113 = !{!1114, !1115, !1116, !1117}
!1114 = !DILocalVariable(name: "T", arg: 1, scope: !1112, file: !3, line: 241, type: !8)
!1115 = !DILocalVariable(name: "b", scope: !1112, file: !3, line: 243, type: !9)
!1116 = !DILocalVariable(name: "i", scope: !1112, file: !3, line: 243, type: !9)
!1117 = !DILocalVariable(name: "parent_col", scope: !1112, file: !3, line: 243, type: !9)
!1118 = !DILocation(line: 0, scope: !1112)
!1119 = !DILocation(line: 247, column: 18, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 247, column: 3)
!1121 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 247, column: 3)
!1122 = !DILocation(line: 247, column: 14, scope: !1120)
!1123 = !DILocation(line: 247, column: 3, scope: !1121)
!1124 = !DILocation(line: 264, column: 18, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 264, column: 3)
!1126 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 264, column: 3)
!1127 = !DILocation(line: 264, column: 14, scope: !1125)
!1128 = !DILocation(line: 264, column: 3, scope: !1126)
!1129 = !DILocation(line: 265, column: 15, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 265, column: 5)
!1131 = !DILocation(line: 248, column: 13, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 248, column: 9)
!1133 = !DILocation(line: 248, column: 10, scope: !1132)
!1134 = !DILocation(line: 248, column: 9, scope: !1120)
!1135 = !DILocation(line: 249, column: 17, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 249, column: 7)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 248, column: 24)
!1138 = !DILocation(line: 249, column: 14, scope: !1136)
!1139 = !DILocation(line: 249, column: 27, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 249, column: 7)
!1141 = !DILocation(line: 249, column: 26, scope: !1140)
!1142 = !DILocation(line: 249, column: 7, scope: !1136)
!1143 = !DILocation(line: 251, column: 23, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 251, column: 6)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 249, column: 45)
!1146 = !DILocation(line: 250, column: 22, scope: !1145)
!1147 = !DILocation(line: 250, column: 19, scope: !1145)
!1148 = !DILocation(line: 250, column: 39, scope: !1145)
!1149 = !DILocation(line: 250, column: 15, scope: !1145)
!1150 = !DILocation(line: 251, column: 17, scope: !1144)
!1151 = !DILocation(line: 0, scope: !1144)
!1152 = !DILocation(line: 251, column: 6, scope: !1145)
!1153 = !DILocation(line: 252, column: 14, scope: !1144)
!1154 = !DILocation(line: 252, column: 21, scope: !1144)
!1155 = !DILocation(line: 252, column: 4, scope: !1144)
!1156 = !DILocation(line: 253, column: 21, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 253, column: 11)
!1158 = !DILocation(line: 253, column: 36, scope: !1157)
!1159 = !DILocation(line: 253, column: 23, scope: !1157)
!1160 = !DILocation(line: 253, column: 11, scope: !1144)
!1161 = !DILocation(line: 254, column: 14, scope: !1157)
!1162 = !DILocation(line: 254, column: 21, scope: !1157)
!1163 = !DILocation(line: 254, column: 4, scope: !1157)
!1164 = !DILocation(line: 256, column: 23, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 255, column: 7)
!1166 = !DILocation(line: 256, column: 4, scope: !1165)
!1167 = !DILocation(line: 256, column: 14, scope: !1165)
!1168 = !DILocation(line: 256, column: 21, scope: !1165)
!1169 = !DILocation(line: 257, column: 8, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 257, column: 8)
!1171 = !DILocation(line: 257, column: 18, scope: !1170)
!1172 = !DILocation(line: 257, column: 25, scope: !1170)
!1173 = !DILocation(line: 257, column: 8, scope: !1165)
!1174 = !DILocation(line: 258, column: 6, scope: !1170)
!1175 = !DILocation(line: 249, column: 41, scope: !1140)
!1176 = !DILocation(line: 249, column: 30, scope: !1140)
!1177 = !DILocation(line: 0, scope: !1120)
!1178 = distinct !{!1178, !1142, !1179, !133, !134}
!1179 = !DILocation(line: 260, column: 7, scope: !1136)
!1180 = !DILocation(line: 247, column: 27, scope: !1120)
!1181 = !DILocation(line: 247, column: 24, scope: !1120)
!1182 = !DILocation(line: 247, column: 22, scope: !1120)
!1183 = distinct !{!1183, !1123, !1184, !133, !134}
!1184 = !DILocation(line: 261, column: 5, scope: !1121)
!1185 = !DILocation(line: 265, column: 22, scope: !1130)
!1186 = !DILocation(line: 265, column: 23, scope: !1130)
!1187 = !DILocation(line: 265, column: 12, scope: !1130)
!1188 = !DILocation(line: 265, column: 43, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 265, column: 5)
!1190 = !DILocation(line: 265, column: 30, scope: !1189)
!1191 = !DILocation(line: 265, column: 29, scope: !1189)
!1192 = !DILocation(line: 265, column: 5, scope: !1130)
!1193 = !DILocation(line: 266, column: 25, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 265, column: 53)
!1195 = !DILocation(line: 266, column: 22, scope: !1194)
!1196 = !DILocation(line: 266, column: 20, scope: !1194)
!1197 = !DILocation(line: 267, column: 36, scope: !1194)
!1198 = !DILocation(line: 267, column: 46, scope: !1194)
!1199 = !DILocation(line: 267, column: 26, scope: !1194)
!1200 = !DILocation(line: 267, column: 7, scope: !1194)
!1201 = !DILocation(line: 267, column: 17, scope: !1194)
!1202 = !DILocation(line: 267, column: 24, scope: !1194)
!1203 = !DILocation(line: 265, column: 49, scope: !1189)
!1204 = !DILocation(line: 265, column: 33, scope: !1189)
!1205 = !DILocation(line: 265, column: 40, scope: !1189)
!1206 = distinct !{!1206, !1192, !1207, !133, !134}
!1207 = !DILocation(line: 268, column: 5, scope: !1130)
!1208 = !DILocation(line: 264, column: 30, scope: !1125)
!1209 = distinct !{!1209, !1128, !1210, !133, !134}
!1210 = !DILocation(line: 268, column: 5, scope: !1126)
!1211 = !DILocation(line: 269, column: 1, scope: !1112)
!1212 = !DISubprogram(name: "FindBlock", scope: !12, file: !12, line: 238, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!1213 = distinct !DISubprogram(name: "FillInStructure", scope: !3, file: !3, line: 274, type: !1214, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !74, !8, !8, !8, !8}
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228}
!1217 = !DILocalVariable(name: "M", arg: 1, scope: !1213, file: !3, line: 274, type: !74)
!1218 = !DILocalVariable(name: "firstchild", arg: 2, scope: !1213, file: !3, line: 274, type: !8)
!1219 = !DILocalVariable(name: "child", arg: 3, scope: !1213, file: !3, line: 274, type: !8)
!1220 = !DILocalVariable(name: "PERM", arg: 4, scope: !1213, file: !3, line: 274, type: !8)
!1221 = !DILocalVariable(name: "INVP", arg: 5, scope: !1213, file: !3, line: 274, type: !8)
!1222 = !DILocalVariable(name: "i", scope: !1213, file: !3, line: 276, type: !9)
!1223 = !DILocalVariable(name: "j", scope: !1213, file: !3, line: 276, type: !9)
!1224 = !DILocalVariable(name: "col", scope: !1213, file: !3, line: 276, type: !9)
!1225 = !DILocalVariable(name: "super", scope: !1213, file: !3, line: 276, type: !9)
!1226 = !DILocalVariable(name: "structure", scope: !1213, file: !3, line: 277, type: !8)
!1227 = !DILocalVariable(name: "nz", scope: !1213, file: !3, line: 277, type: !8)
!1228 = !DILocalVariable(name: "n_nz", scope: !1213, file: !3, line: 277, type: !9)
!1229 = !DILocation(line: 274, column: 30, scope: !1213)
!1230 = !DILocation(line: 0, scope: !1213)
!1231 = !DILocation(line: 277, column: 3, scope: !1213)
!1232 = !DILocation(line: 280, column: 33, scope: !1213)
!1233 = !DILocation(line: 280, column: 34, scope: !1213)
!1234 = !DILocation(line: 280, column: 24, scope: !1213)
!1235 = !DILocation(line: 281, column: 17, scope: !1213)
!1236 = !DILocation(line: 282, column: 14, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 282, column: 3)
!1238 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 282, column: 3)
!1239 = !DILocation(line: 282, column: 3, scope: !1238)
!1240 = !DILocation(line: 283, column: 18, scope: !1237)
!1241 = !DILocation(line: 286, column: 18, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 286, column: 3)
!1243 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 286, column: 3)
!1244 = !DILocation(line: 286, column: 14, scope: !1242)
!1245 = !DILocation(line: 286, column: 3, scope: !1243)
!1246 = !DILocation(line: 290, column: 10, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 286, column: 34)
!1248 = !DILocation(line: 295, column: 26, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 295, column: 3)
!1250 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 295, column: 3)
!1251 = !DILocation(line: 295, column: 22, scope: !1249)
!1252 = !DILocation(line: 295, column: 3, scope: !1250)
!1253 = !DILocation(line: 287, column: 14, scope: !1247)
!1254 = !DILocation(line: 287, column: 11, scope: !1247)
!1255 = !DILocation(line: 288, column: 15, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 288, column: 5)
!1257 = !DILocation(line: 288, column: 12, scope: !1256)
!1258 = !DILocation(line: 0, scope: !1256)
!1259 = !DILocation(line: 288, column: 28, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 288, column: 5)
!1261 = !DILocation(line: 288, column: 5, scope: !1256)
!1262 = !DILocation(line: 289, column: 27, scope: !1260)
!1263 = !DILocation(line: 290, column: 37, scope: !1247)
!1264 = !DILocation(line: 291, column: 30, scope: !1247)
!1265 = !DILocation(line: 291, column: 31, scope: !1247)
!1266 = !DILocation(line: 291, column: 5, scope: !1247)
!1267 = !DILocation(line: 286, column: 30, scope: !1242)
!1268 = distinct !{!1268, !1245, !1269, !133, !134}
!1269 = !DILocation(line: 292, column: 3, scope: !1243)
!1270 = !DILocation(line: 296, column: 5, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 295, column: 49)
!1272 = !DILocation(line: 298, column: 13, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 298, column: 9)
!1274 = !DILocation(line: 298, column: 10, scope: !1273)
!1275 = !DILocation(line: 0, scope: !1249)
!1276 = !DILocation(line: 298, column: 9, scope: !1271)
!1277 = !DILocation(line: 299, column: 7, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 299, column: 7)
!1279 = !DILocation(line: 300, column: 2, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 299, column: 67)
!1281 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 299, column: 7)
!1282 = !DILocation(line: 299, column: 48, scope: !1281)
!1283 = !DILocation(line: 299, column: 45, scope: !1281)
!1284 = !DILocation(line: 299, column: 43, scope: !1281)
!1285 = !DILocation(line: 299, column: 29, scope: !1281)
!1286 = !DILocation(line: 299, column: 28, scope: !1281)
!1287 = !DILocation(line: 299, column: 22, scope: !1281)
!1288 = distinct !{!1288, !1277, !1289, !133, !134}
!1289 = !DILocation(line: 301, column: 7, scope: !1278)
!1290 = !DILocation(line: 295, column: 36, scope: !1249)
!1291 = !DILocation(line: 295, column: 34, scope: !1249)
!1292 = distinct !{!1292, !1252, !1293, !133, !134}
!1293 = !DILocation(line: 302, column: 3, scope: !1250)
!1294 = !DILocation(line: 304, column: 3, scope: !1213)
!1295 = !DILocation(line: 304, column: 20, scope: !1213)
!1296 = !DILocation(line: 306, column: 1, scope: !1213)
!1297 = distinct !DISubprogram(name: "FindDetailedStructure", scope: !3, file: !3, line: 491, type: !1298, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1300)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !9, !8, !8, !9}
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1301 = !DILocalVariable(name: "col", arg: 1, scope: !1297, file: !3, line: 491, type: !9)
!1302 = !DILocalVariable(name: "structure", arg: 2, scope: !1297, file: !3, line: 491, type: !8)
!1303 = !DILocalVariable(name: "nz", arg: 3, scope: !1297, file: !3, line: 491, type: !8)
!1304 = !DILocalVariable(name: "n_nz", arg: 4, scope: !1297, file: !3, line: 491, type: !9)
!1305 = !DILocalVariable(name: "i", scope: !1297, file: !3, line: 493, type: !9)
!1306 = !DILocalVariable(name: "j", scope: !1297, file: !3, line: 493, type: !9)
!1307 = !DILocalVariable(name: "row", scope: !1297, file: !3, line: 493, type: !9)
!1308 = !DILocalVariable(name: "n", scope: !1297, file: !3, line: 493, type: !9)
!1309 = !DILocalVariable(name: "owner", scope: !1297, file: !3, line: 493, type: !9)
!1310 = !DILocation(line: 0, scope: !1297)
!1311 = !DILocation(line: 495, column: 14, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 495, column: 3)
!1313 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 495, column: 3)
!1314 = !DILocation(line: 495, column: 3, scope: !1313)
!1315 = !DILocation(line: 496, column: 15, scope: !1312)
!1316 = !DILocation(line: 496, column: 5, scope: !1312)
!1317 = !DILocation(line: 496, column: 22, scope: !1312)
!1318 = !DILocation(line: 495, column: 22, scope: !1312)
!1319 = distinct !{!1319, !1314, !1320, !133, !134}
!1320 = !DILocation(line: 496, column: 24, scope: !1313)
!1321 = !DILocation(line: 498, column: 13, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 498, column: 3)
!1323 = !DILocation(line: 498, column: 10, scope: !1322)
!1324 = !DILocation(line: 498, column: 25, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 498, column: 3)
!1326 = !DILocation(line: 498, column: 24, scope: !1325)
!1327 = !DILocation(line: 498, column: 3, scope: !1322)
!1328 = !DILocation(line: 522, column: 3, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 522, column: 3)
!1330 = !DILocation(line: 500, column: 14, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 498, column: 45)
!1332 = !DILocation(line: 500, column: 11, scope: !1331)
!1333 = !DILocation(line: 501, column: 16, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 501, column: 5)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 501, column: 5)
!1336 = !DILocation(line: 501, column: 5, scope: !1335)
!1337 = !DILocation(line: 502, column: 24, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 502, column: 11)
!1339 = !DILocation(line: 502, column: 11, scope: !1338)
!1340 = !DILocation(line: 502, column: 11, scope: !1334)
!1341 = !DILocation(line: 501, column: 42, scope: !1334)
!1342 = distinct !{!1342, !1336, !1343, !133, !134}
!1343 = !DILocation(line: 503, column: 10, scope: !1335)
!1344 = !DILocation(line: 0, scope: !1331)
!1345 = !DILocation(line: 505, column: 5, scope: !1331)
!1346 = !DILocation(line: 505, column: 15, scope: !1331)
!1347 = !DILocation(line: 505, column: 22, scope: !1331)
!1348 = !DILocation(line: 506, column: 17, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 506, column: 9)
!1350 = !DILocation(line: 506, column: 14, scope: !1349)
!1351 = !DILocation(line: 506, column: 11, scope: !1349)
!1352 = !DILocation(line: 506, column: 9, scope: !1331)
!1353 = !DILocation(line: 507, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 506, column: 38)
!1355 = !DILocation(line: 507, column: 17, scope: !1354)
!1356 = !DILocation(line: 507, column: 27, scope: !1354)
!1357 = !DILocation(line: 508, column: 5, scope: !1354)
!1358 = !DILocation(line: 510, column: 15, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 509, column: 10)
!1360 = !DILocation(line: 511, column: 17, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 511, column: 11)
!1362 = !DILocation(line: 511, column: 11, scope: !1359)
!1363 = !DILocation(line: 512, column: 27, scope: !1361)
!1364 = !DILocation(line: 512, column: 40, scope: !1361)
!1365 = !DILocation(line: 512, column: 2, scope: !1361)
!1366 = !DILocation(line: 513, column: 48, scope: !1359)
!1367 = !DILocation(line: 513, column: 38, scope: !1359)
!1368 = !DILocation(line: 513, column: 7, scope: !1359)
!1369 = !DILocation(line: 513, column: 17, scope: !1359)
!1370 = !DILocation(line: 513, column: 27, scope: !1359)
!1371 = !DILocation(line: 515, column: 22, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 515, column: 7)
!1373 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 515, column: 7)
!1374 = !DILocation(line: 515, column: 19, scope: !1372)
!1375 = !DILocation(line: 515, column: 18, scope: !1372)
!1376 = !DILocation(line: 515, column: 7, scope: !1373)
!1377 = !DILocation(line: 516, column: 26, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 516, column: 13)
!1379 = !DILocation(line: 516, column: 13, scope: !1378)
!1380 = !DILocation(line: 516, column: 13, scope: !1372)
!1381 = !DILocation(line: 517, column: 11, scope: !1378)
!1382 = !DILocation(line: 517, column: 21, scope: !1378)
!1383 = !DILocation(line: 517, column: 32, scope: !1378)
!1384 = !DILocation(line: 517, column: 36, scope: !1378)
!1385 = !DILocation(line: 0, scope: !1359)
!1386 = !DILocation(line: 515, column: 44, scope: !1372)
!1387 = distinct !{!1387, !1376, !1388, !133, !134}
!1388 = !DILocation(line: 517, column: 38, scope: !1373)
!1389 = !DILocation(line: 498, column: 41, scope: !1325)
!1390 = !DILocation(line: 498, column: 28, scope: !1325)
!1391 = distinct !{!1391, !1327, !1392, !133, !134}
!1392 = !DILocation(line: 520, column: 3, scope: !1322)
!1393 = !DILocation(line: 523, column: 15, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 522, column: 3)
!1395 = !DILocation(line: 523, column: 5, scope: !1394)
!1396 = !DILocation(line: 523, column: 22, scope: !1394)
!1397 = !DILocation(line: 522, column: 22, scope: !1394)
!1398 = !DILocation(line: 522, column: 14, scope: !1394)
!1399 = distinct !{!1399, !1328, !1400, !133, !134}
!1400 = !DILocation(line: 523, column: 24, scope: !1329)
!1401 = !DILocation(line: 524, column: 1, scope: !1297)
!1402 = distinct !DISubprogram(name: "FillInNZ", scope: !3, file: !3, line: 310, type: !1403, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1405)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !74, !8, !8}
!1405 = !{!1406, !1407, !1408, !1409, !1410}
!1406 = !DILocalVariable(name: "M", arg: 1, scope: !1402, file: !3, line: 310, type: !74)
!1407 = !DILocalVariable(name: "PERM", arg: 2, scope: !1402, file: !3, line: 310, type: !8)
!1408 = !DILocalVariable(name: "INVP", arg: 3, scope: !1402, file: !3, line: 310, type: !8)
!1409 = !DILocalVariable(name: "j", scope: !1402, file: !3, line: 312, type: !9)
!1410 = !DILocalVariable(name: "scatter", scope: !1402, file: !3, line: 313, type: !6)
!1411 = !DILocation(line: 310, column: 23, scope: !1402)
!1412 = !DILocation(line: 0, scope: !1402)
!1413 = !DILocation(line: 315, column: 33, scope: !1402)
!1414 = !DILocation(line: 315, column: 34, scope: !1402)
!1415 = !DILocation(line: 315, column: 24, scope: !1402)
!1416 = !DILocation(line: 316, column: 14, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 316, column: 3)
!1418 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 316, column: 3)
!1419 = !DILocation(line: 316, column: 3, scope: !1418)
!1420 = !DILocation(line: 317, column: 16, scope: !1417)
!1421 = !DILocation(line: 320, column: 18, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 320, column: 3)
!1423 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 320, column: 3)
!1424 = !DILocation(line: 320, column: 14, scope: !1422)
!1425 = !DILocation(line: 320, column: 3, scope: !1423)
!1426 = !DILocation(line: 321, column: 5, scope: !1422)
!1427 = !DILocation(line: 320, column: 27, scope: !1422)
!1428 = !DILocation(line: 320, column: 24, scope: !1422)
!1429 = !DILocation(line: 320, column: 22, scope: !1422)
!1430 = distinct !{!1430, !1425, !1431, !133, !134}
!1431 = !DILocation(line: 321, column: 37, scope: !1423)
!1432 = !DILocation(line: 323, column: 3, scope: !1402)
!1433 = !DILocation(line: 324, column: 1, scope: !1402)
!1434 = distinct !DISubprogram(name: "FillIn", scope: !3, file: !3, line: 544, type: !1435, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1437)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !74, !9, !8, !8, !6}
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447}
!1438 = !DILocalVariable(name: "M", arg: 1, scope: !1434, file: !3, line: 544, type: !74)
!1439 = !DILocalVariable(name: "col", arg: 2, scope: !1434, file: !3, line: 544, type: !9)
!1440 = !DILocalVariable(name: "PERM", arg: 3, scope: !1434, file: !3, line: 544, type: !8)
!1441 = !DILocalVariable(name: "INVP", arg: 4, scope: !1434, file: !3, line: 544, type: !8)
!1442 = !DILocalVariable(name: "scatter", arg: 5, scope: !1434, file: !3, line: 544, type: !6)
!1443 = !DILocalVariable(name: "i", scope: !1434, file: !3, line: 546, type: !9)
!1444 = !DILocalVariable(name: "b", scope: !1434, file: !3, line: 546, type: !9)
!1445 = !DILocalVariable(name: "j1", scope: !1434, file: !3, line: 546, type: !9)
!1446 = !DILocalVariable(name: "row", scope: !1434, file: !3, line: 546, type: !9)
!1447 = !DILocalVariable(name: "truecol", scope: !1434, file: !3, line: 546, type: !9)
!1448 = !DILocation(line: 544, column: 21, scope: !1434)
!1449 = !DILocation(line: 0, scope: !1434)
!1450 = !DILocation(line: 548, column: 13, scope: !1434)
!1451 = !DILocation(line: 549, column: 10, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 549, column: 7)
!1453 = !DILocation(line: 549, column: 7, scope: !1452)
!1454 = !DILocation(line: 549, column: 7, scope: !1434)
!1455 = !DILocation(line: 567, column: 22, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 567, column: 5)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 567, column: 5)
!1458 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 565, column: 8)
!1459 = !DILocation(line: 567, column: 19, scope: !1456)
!1460 = !DILocation(line: 567, column: 18, scope: !1456)
!1461 = !DILocation(line: 567, column: 5, scope: !1457)
!1462 = !DILocation(line: 550, column: 14, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 550, column: 5)
!1464 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 549, column: 23)
!1465 = !DILocation(line: 550, column: 12, scope: !1463)
!1466 = !DILocation(line: 550, column: 30, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 550, column: 5)
!1468 = !DILocation(line: 550, column: 29, scope: !1467)
!1469 = !DILocation(line: 550, column: 5, scope: !1463)
!1470 = !DILocation(line: 553, column: 6, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 552, column: 23)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 552, column: 11)
!1473 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 550, column: 53)
!1474 = !DILocation(line: 551, column: 18, scope: !1473)
!1475 = !DILocation(line: 551, column: 13, scope: !1473)
!1476 = !DILocation(line: 552, column: 15, scope: !1472)
!1477 = !DILocation(line: 552, column: 11, scope: !1473)
!1478 = !DILocation(line: 556, column: 19, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 553, column: 6)
!1480 = !DILocation(line: 556, column: 4, scope: !1479)
!1481 = !DILocation(line: 556, column: 17, scope: !1479)
!1482 = !DILocation(line: 550, column: 49, scope: !1467)
!1483 = distinct !{!1483, !1469, !1484, !133, !134}
!1484 = !DILocation(line: 559, column: 5, scope: !1463)
!1485 = !DILocation(line: 554, column: 19, scope: !1479)
!1486 = !DILocation(line: 554, column: 4, scope: !1479)
!1487 = !DILocation(line: 554, column: 17, scope: !1479)
!1488 = !DILocation(line: 560, column: 15, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 560, column: 5)
!1490 = !DILocation(line: 560, column: 12, scope: !1489)
!1491 = !DILocation(line: 560, column: 27, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 560, column: 5)
!1493 = !DILocation(line: 560, column: 26, scope: !1492)
!1494 = !DILocation(line: 560, column: 5, scope: !1489)
!1495 = !DILocation(line: 561, column: 35, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 560, column: 47)
!1497 = !DILocation(line: 561, column: 32, scope: !1496)
!1498 = !DILocation(line: 561, column: 24, scope: !1496)
!1499 = !DILocation(line: 561, column: 10, scope: !1496)
!1500 = !DILocation(line: 561, column: 7, scope: !1496)
!1501 = !DILocation(line: 561, column: 22, scope: !1496)
!1502 = !DILocation(line: 562, column: 18, scope: !1496)
!1503 = !DILocation(line: 562, column: 15, scope: !1496)
!1504 = !DILocation(line: 562, column: 7, scope: !1496)
!1505 = !DILocation(line: 562, column: 26, scope: !1496)
!1506 = !DILocation(line: 560, column: 43, scope: !1492)
!1507 = !DILocation(line: 560, column: 30, scope: !1492)
!1508 = distinct !{!1508, !1494, !1509, !133, !134}
!1509 = !DILocation(line: 563, column: 7, scope: !1489)
!1510 = !DILocation(line: 568, column: 25, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 567, column: 49)
!1512 = !DILocation(line: 568, column: 17, scope: !1511)
!1513 = !DILocation(line: 569, column: 14, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 569, column: 7)
!1515 = !DILocation(line: 569, column: 32, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 569, column: 7)
!1517 = !DILocation(line: 569, column: 31, scope: !1516)
!1518 = !DILocation(line: 569, column: 7, scope: !1514)
!1519 = !DILocation(line: 572, column: 8, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 571, column: 21)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 571, column: 6)
!1522 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 569, column: 55)
!1523 = !DILocation(line: 570, column: 13, scope: !1522)
!1524 = !DILocation(line: 570, column: 8, scope: !1522)
!1525 = !DILocation(line: 571, column: 10, scope: !1521)
!1526 = !DILocation(line: 571, column: 6, scope: !1522)
!1527 = !DILocation(line: 575, column: 21, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 572, column: 8)
!1529 = !DILocation(line: 575, column: 6, scope: !1528)
!1530 = !DILocation(line: 575, column: 19, scope: !1528)
!1531 = !DILocation(line: 569, column: 51, scope: !1516)
!1532 = distinct !{!1532, !1518, !1533, !133, !134}
!1533 = !DILocation(line: 577, column: 7, scope: !1514)
!1534 = !DILocation(line: 573, column: 21, scope: !1528)
!1535 = !DILocation(line: 573, column: 6, scope: !1528)
!1536 = !DILocation(line: 573, column: 19, scope: !1528)
!1537 = !DILocation(line: 578, column: 17, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 578, column: 7)
!1539 = !DILocation(line: 578, column: 14, scope: !1538)
!1540 = !DILocation(line: 578, column: 29, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 578, column: 7)
!1542 = !DILocation(line: 578, column: 28, scope: !1541)
!1543 = !DILocation(line: 578, column: 7, scope: !1538)
!1544 = !DILocation(line: 579, column: 14, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 579, column: 2)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 579, column: 2)
!1547 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 578, column: 49)
!1548 = !DILocation(line: 579, column: 24, scope: !1545)
!1549 = !DILocation(line: 579, column: 13, scope: !1545)
!1550 = !DILocation(line: 579, column: 2, scope: !1546)
!1551 = !DILocation(line: 580, column: 18, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 580, column: 8)
!1553 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 579, column: 37)
!1554 = !DILocation(line: 580, column: 8, scope: !1552)
!1555 = !DILocation(line: 0, scope: !1552)
!1556 = !DILocation(line: 580, column: 8, scope: !1553)
!1557 = !DILocation(line: 581, column: 24, scope: !1552)
!1558 = !DILocation(line: 581, column: 22, scope: !1552)
!1559 = !DILocation(line: 581, column: 6, scope: !1552)
!1560 = !DILocation(line: 582, column: 25, scope: !1552)
!1561 = !DILocation(line: 584, column: 3, scope: !1553)
!1562 = !DILocation(line: 583, column: 14, scope: !1553)
!1563 = !DILocation(line: 583, column: 21, scope: !1553)
!1564 = !DILocation(line: 583, column: 18, scope: !1553)
!1565 = !DILocation(line: 583, column: 4, scope: !1553)
!1566 = !DILocation(line: 583, column: 40, scope: !1553)
!1567 = !DILocation(line: 585, column: 17, scope: !1553)
!1568 = !DILocation(line: 579, column: 33, scope: !1545)
!1569 = distinct !{!1569, !1550, !1570, !133, !134}
!1570 = !DILocation(line: 586, column: 2, scope: !1546)
!1571 = !DILocation(line: 578, column: 32, scope: !1541)
!1572 = !DILocation(line: 578, column: 45, scope: !1541)
!1573 = distinct !{!1573, !1543, !1574, !133, !134}
!1574 = !DILocation(line: 587, column: 7, scope: !1538)
!1575 = !DILocation(line: 567, column: 45, scope: !1456)
!1576 = distinct !{!1576, !1461, !1577, !133, !134}
!1577 = !DILocation(line: 588, column: 5, scope: !1457)
!1578 = !DILocation(line: 590, column: 1, scope: !1434)
!1579 = distinct !DISubprogram(name: "CheckColLength", scope: !3, file: !3, line: 375, type: !1580, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !9, !9}
!1582 = !{!1583, !1584}
!1583 = !DILocalVariable(name: "col", arg: 1, scope: !1579, file: !3, line: 375, type: !9)
!1584 = !DILocalVariable(name: "n_nz", arg: 2, scope: !1579, file: !3, line: 375, type: !9)
!1585 = !DILocation(line: 0, scope: !1579)
!1586 = !DILocation(line: 379, column: 15, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 379, column: 7)
!1588 = !DILocation(line: 379, column: 12, scope: !1587)
!1589 = !DILocation(line: 379, column: 7, scope: !1579)
!1590 = !DILocation(line: 380, column: 5, scope: !1587)
!1591 = !DILocation(line: 381, column: 1, scope: !1579)
!1592 = distinct !DISubprogram(name: "InsSort", scope: !3, file: !3, line: 593, type: !1593, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !8, !9}
!1595 = !{!1596, !1597, !1598, !1599, !1600}
!1596 = !DILocalVariable(name: "nz", arg: 1, scope: !1592, file: !3, line: 593, type: !8)
!1597 = !DILocalVariable(name: "n", arg: 2, scope: !1592, file: !3, line: 593, type: !9)
!1598 = !DILocalVariable(name: "i", scope: !1592, file: !3, line: 595, type: !9)
!1599 = !DILocalVariable(name: "j", scope: !1592, file: !3, line: 595, type: !9)
!1600 = !DILocalVariable(name: "tmp", scope: !1592, file: !3, line: 595, type: !9)
!1601 = !DILocation(line: 0, scope: !1592)
!1602 = !DILocation(line: 597, column: 14, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 597, column: 3)
!1604 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 597, column: 3)
!1605 = !DILocation(line: 597, column: 3, scope: !1604)
!1606 = !DILocation(line: 599, column: 29, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 597, column: 23)
!1608 = !DILocation(line: 599, column: 16, scope: !1607)
!1609 = !DILocation(line: 599, column: 23, scope: !1607)
!1610 = !DILocation(line: 599, column: 19, scope: !1607)
!1611 = !DILocation(line: 599, column: 27, scope: !1607)
!1612 = !DILocation(line: 599, column: 5, scope: !1607)
!1613 = !DILocation(line: 600, column: 26, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 599, column: 36)
!1615 = !DILocation(line: 600, column: 45, scope: !1614)
!1616 = !DILocation(line: 599, column: 13, scope: !1607)
!1617 = distinct !{!1617, !1612, !1618, !133, !134}
!1618 = !DILocation(line: 601, column: 5, scope: !1607)
!1619 = !DILocation(line: 597, column: 19, scope: !1603)
!1620 = distinct !{!1620, !1605, !1621, !133, !134}
!1621 = !DILocation(line: 602, column: 3, scope: !1604)
!1622 = !DILocation(line: 603, column: 1, scope: !1592)
!1623 = distinct !DISubprogram(name: "EmbeddedOwner", scope: !3, file: !3, line: 704, type: !1624, scopeLine: 705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1626)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!9, !9}
!1626 = !{!1627, !1628, !1629}
!1627 = !DILocalVariable(name: "block", arg: 1, scope: !1623, file: !3, line: 704, type: !9)
!1628 = !DILocalVariable(name: "row", scope: !1623, file: !3, line: 706, type: !9)
!1629 = !DILocalVariable(name: "col", scope: !1623, file: !3, line: 706, type: !9)
!1630 = !DILocation(line: 0, scope: !1623)
!1631 = !DILocation(line: 708, column: 12, scope: !1623)
!1632 = !DILocation(line: 708, column: 20, scope: !1623)
!1633 = !DILocation(line: 708, column: 32, scope: !1623)
!1634 = !DILocation(line: 708, column: 17, scope: !1623)
!1635 = !DILocation(line: 708, column: 9, scope: !1623)
!1636 = !DILocation(line: 708, column: 52, scope: !1623)
!1637 = !DILocation(line: 708, column: 50, scope: !1623)
!1638 = !DILocation(line: 709, column: 12, scope: !1623)
!1639 = !DILocation(line: 709, column: 32, scope: !1623)
!1640 = !DILocation(line: 709, column: 17, scope: !1623)
!1641 = !DILocation(line: 709, column: 9, scope: !1623)
!1642 = !DILocation(line: 709, column: 52, scope: !1623)
!1643 = !DILocation(line: 709, column: 50, scope: !1623)
!1644 = !DILocation(line: 711, column: 19, scope: !1623)
!1645 = !DILocation(line: 711, column: 14, scope: !1623)
!1646 = !DILocation(line: 711, column: 3, scope: !1623)
!1647 = distinct !DISubprogram(name: "AllocateNZ", scope: !3, file: !3, line: 527, type: !1648, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1650)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null}
!1650 = !{!1651, !1652, !1653, !1654}
!1651 = !DILocalVariable(name: "i", scope: !1647, file: !3, line: 529, type: !9)
!1652 = !DILocalVariable(name: "j", scope: !1647, file: !3, line: 529, type: !9)
!1653 = !DILocalVariable(name: "b", scope: !1647, file: !3, line: 529, type: !9)
!1654 = !DILocalVariable(name: "size", scope: !1647, file: !3, line: 529, type: !9)
!1655 = !DILocation(line: 0, scope: !1647)
!1656 = !DILocation(line: 531, column: 18, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 531, column: 3)
!1658 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 531, column: 3)
!1659 = !DILocation(line: 531, column: 14, scope: !1657)
!1660 = !DILocation(line: 531, column: 3, scope: !1658)
!1661 = !DILocation(line: 532, column: 13, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 532, column: 9)
!1663 = !DILocation(line: 532, column: 10, scope: !1662)
!1664 = !DILocation(line: 532, column: 9, scope: !1657)
!1665 = !DILocation(line: 533, column: 17, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 533, column: 7)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 532, column: 24)
!1668 = !DILocation(line: 533, column: 14, scope: !1666)
!1669 = !DILocation(line: 533, column: 27, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 533, column: 7)
!1671 = !DILocation(line: 533, column: 26, scope: !1670)
!1672 = !DILocation(line: 533, column: 7, scope: !1666)
!1673 = !DILocation(line: 534, column: 12, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 533, column: 45)
!1675 = !DILocation(line: 534, column: 9, scope: !1674)
!1676 = !DILocation(line: 534, column: 30, scope: !1674)
!1677 = !DILocation(line: 534, column: 40, scope: !1674)
!1678 = !DILocation(line: 534, column: 29, scope: !1674)
!1679 = !DILocation(line: 535, column: 41, scope: !1674)
!1680 = !DILocation(line: 535, column: 68, scope: !1674)
!1681 = !DILocation(line: 535, column: 28, scope: !1674)
!1682 = !DILocation(line: 535, column: 2, scope: !1674)
!1683 = !DILocation(line: 535, column: 12, scope: !1674)
!1684 = !DILocation(line: 535, column: 15, scope: !1674)
!1685 = !DILocation(line: 536, column: 13, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 536, column: 2)
!1687 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 536, column: 2)
!1688 = !DILocation(line: 536, column: 2, scope: !1687)
!1689 = !DILocation(line: 537, column: 4, scope: !1686)
!1690 = !DILocation(line: 537, column: 14, scope: !1686)
!1691 = !DILocation(line: 537, column: 20, scope: !1686)
!1692 = !DILocation(line: 536, column: 21, scope: !1686)
!1693 = distinct !{!1693, !1688, !1694, !133, !134}
!1694 = !DILocation(line: 537, column: 22, scope: !1687)
!1695 = !DILocation(line: 533, column: 41, scope: !1670)
!1696 = !DILocation(line: 533, column: 30, scope: !1670)
!1697 = distinct !{!1697, !1672, !1698, !133, !134}
!1698 = !DILocation(line: 538, column: 7, scope: !1666)
!1699 = !DILocation(line: 531, column: 27, scope: !1657)
!1700 = !DILocation(line: 531, column: 24, scope: !1657)
!1701 = !DILocation(line: 531, column: 22, scope: !1657)
!1702 = distinct !{!1702, !1660, !1703, !133, !134}
!1703 = !DILocation(line: 539, column: 5, scope: !1658)
!1704 = !DILocation(line: 540, column: 1, scope: !1647)
!1705 = !DISubprogram(name: "Value", scope: !12, file: !12, line: 299, type: !1706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!7, !9, !9}
!1708 = distinct !DISubprogram(name: "BlDepth", scope: !3, file: !3, line: 608, type: !1624, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1709)
!1709 = !{!1710, !1711, !1712}
!1710 = !DILocalVariable(name: "col", arg: 1, scope: !1708, file: !3, line: 608, type: !9)
!1711 = !DILocalVariable(name: "current", scope: !1708, file: !3, line: 610, type: !9)
!1712 = !DILocalVariable(name: "depth", scope: !1708, file: !3, line: 610, type: !9)
!1713 = !DILocation(line: 0, scope: !1708)
!1714 = !DILocation(line: 615, column: 3, scope: !1708)
!1715 = !DILocation(line: 615, column: 10, scope: !1708)
!1716 = !DILocation(line: 615, column: 21, scope: !1708)
!1717 = !DILocation(line: 617, column: 10, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 615, column: 33)
!1719 = distinct !{!1719, !1714, !1720, !133, !134}
!1720 = !DILocation(line: 618, column: 3, scope: !1708)
!1721 = !DILocation(line: 620, column: 3, scope: !1708)
!1722 = distinct !DISubprogram(name: "SortByKey", scope: !3, file: !3, line: 624, type: !1723, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1725)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !9, !8, !8}
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732}
!1726 = !DILocalVariable(name: "n", arg: 1, scope: !1722, file: !3, line: 624, type: !9)
!1727 = !DILocalVariable(name: "blocks", arg: 2, scope: !1722, file: !3, line: 624, type: !8)
!1728 = !DILocalVariable(name: "keys", arg: 3, scope: !1722, file: !3, line: 624, type: !8)
!1729 = !DILocalVariable(name: "i", scope: !1722, file: !3, line: 626, type: !9)
!1730 = !DILocalVariable(name: "j", scope: !1722, file: !3, line: 626, type: !9)
!1731 = !DILocalVariable(name: "blocki", scope: !1722, file: !3, line: 626, type: !9)
!1732 = !DILocalVariable(name: "keyi", scope: !1722, file: !3, line: 626, type: !9)
!1733 = !DILocation(line: 0, scope: !1722)
!1734 = !DILocation(line: 628, column: 14, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 628, column: 3)
!1736 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 628, column: 3)
!1737 = !DILocation(line: 628, column: 3, scope: !1736)
!1738 = !DILocation(line: 629, column: 14, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 628, column: 23)
!1740 = !DILocation(line: 630, column: 12, scope: !1739)
!1741 = !DILocation(line: 632, column: 15, scope: !1739)
!1742 = !DILocation(line: 632, column: 20, scope: !1739)
!1743 = !DILocation(line: 632, column: 30, scope: !1739)
!1744 = !DILocation(line: 632, column: 24, scope: !1739)
!1745 = !DILocation(line: 632, column: 34, scope: !1739)
!1746 = !DILocation(line: 632, column: 5, scope: !1739)
!1747 = !DILocation(line: 633, column: 19, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 632, column: 43)
!1749 = !DILocation(line: 633, column: 7, scope: !1748)
!1750 = !DILocation(line: 633, column: 17, scope: !1748)
!1751 = !DILocation(line: 634, column: 17, scope: !1748)
!1752 = !DILocation(line: 634, column: 7, scope: !1748)
!1753 = !DILocation(line: 634, column: 15, scope: !1748)
!1754 = distinct !{!1754, !1746, !1755, !133, !134}
!1755 = !DILocation(line: 636, column: 5, scope: !1739)
!1756 = !DILocation(line: 0, scope: !1739)
!1757 = !DILocation(line: 637, column: 5, scope: !1739)
!1758 = !DILocation(line: 637, column: 15, scope: !1739)
!1759 = !DILocation(line: 638, column: 5, scope: !1739)
!1760 = !DILocation(line: 638, column: 13, scope: !1739)
!1761 = !DILocation(line: 628, column: 19, scope: !1735)
!1762 = distinct !{!1762, !1737, !1763, !133, !134}
!1763 = !DILocation(line: 639, column: 3, scope: !1736)
!1764 = !DILocation(line: 640, column: 1, scope: !1722)
