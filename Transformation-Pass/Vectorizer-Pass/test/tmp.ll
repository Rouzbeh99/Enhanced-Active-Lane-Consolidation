; ModuleID = 'benchmarks/MCF/mcfutil.c.bc.ll'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/mcfutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"ORG_COST: %f\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"PRIMAL NETWORK SIMPLEX: \00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"artificial arc with nonzero flow, node %d (%ld)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"basis primal infeasible (%ld)\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"DUAL NETWORK SIMPLEX: \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"basis dual infeasible\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @refresh_neighbour_lists(ptr noundef %net, ptr nocapture noundef readonly %getPos) local_unnamed_addr #0 !dbg !63 {
entry:
  call void @llvm.dbg.value(metadata ptr %net, metadata !111, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata ptr %getPos, metadata !112, metadata !DIExpression()), !dbg !117
  %nodes = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 21, !dbg !118
  %0 = load ptr, ptr %nodes, align 8, !dbg !118, !tbaa !119
  call void @llvm.dbg.value(metadata ptr %0, metadata !113, metadata !DIExpression()), !dbg !117
  %stop_nodes = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 22, !dbg !126
  %1 = load ptr, ptr %stop_nodes, align 8, !dbg !126, !tbaa !128
  call void @llvm.dbg.value(metadata ptr %1, metadata !115, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata ptr %0, metadata !113, metadata !DIExpression()), !dbg !117
  %cmp32 = icmp ult ptr %0, %1, !dbg !129
  br i1 %cmp32, label %for.body, label %for.end, !dbg !131

for.body:                                         ; preds = %entry, %for.body
  %node.033 = phi ptr [ %incdec.ptr, %for.body ], [ %0, %entry ]
  call void @llvm.dbg.value(metadata ptr %node.033, metadata !113, metadata !DIExpression()), !dbg !117
  %firstout = getelementptr inbounds %struct.node, ptr %node.033, i64 0, i32 7, !dbg !132
  %incdec.ptr = getelementptr inbounds %struct.node, ptr %node.033, i64 1, !dbg !134
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !113, metadata !DIExpression()), !dbg !117
  %cmp = icmp ult ptr %incdec.ptr, %1, !dbg !129
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %firstout, i8 0, i64 16, i1 false), !dbg !135
  br i1 %cmp, label %for.body, label %for.end, !dbg !131, !llvm.loop !136

for.end:                                          ; preds = %for.body, %entry
  %arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 23, !dbg !140
  call void @llvm.dbg.value(metadata ptr undef, metadata !114, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 0, metadata !116, metadata !DIExpression()), !dbg !117
  %m = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 5
  %2 = load i64, ptr %m, align 8, !dbg !141, !tbaa !144
  %cmp234 = icmp sgt i64 %2, 0, !dbg !145
  br i1 %cmp234, label %for.body4.preheader, label %for.end14, !dbg !146

for.body4.preheader:                              ; preds = %for.end
  %3 = load ptr, ptr %arcs, align 8, !dbg !140, !tbaa !147
  call void @llvm.dbg.value(metadata ptr %3, metadata !114, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i64 0, metadata !116, metadata !DIExpression()), !dbg !117
  %tail38 = getelementptr inbounds %struct.arc, ptr %3, i64 0, i32 2, !dbg !148
  %4 = load ptr, ptr %tail38, align 8, !dbg !148, !tbaa !150
  %firstout539 = getelementptr inbounds %struct.node, ptr %4, i64 0, i32 7, !dbg !154
  %5 = load ptr, ptr %firstout539, align 8, !dbg !154, !tbaa !155
  %nextout40 = getelementptr inbounds %struct.arc, ptr %3, i64 0, i32 5, !dbg !157
  store ptr %5, ptr %nextout40, align 8, !dbg !158, !tbaa !159
  store ptr %3, ptr %firstout539, align 8, !dbg !160, !tbaa !155
  %head41 = getelementptr inbounds %struct.arc, ptr %3, i64 0, i32 3, !dbg !161
  %6 = load ptr, ptr %head41, align 8, !dbg !161, !tbaa !162
  %firstin842 = getelementptr inbounds %struct.node, ptr %6, i64 0, i32 8, !dbg !163
  %7 = load ptr, ptr %firstin842, align 8, !dbg !163, !tbaa !164
  %nextin43 = getelementptr inbounds %struct.arc, ptr %3, i64 0, i32 6, !dbg !165
  store ptr %7, ptr %nextin43, align 8, !dbg !166, !tbaa !167
  store ptr %3, ptr %firstin842, align 8, !dbg !168, !tbaa !164
  call void @llvm.dbg.value(metadata i64 1, metadata !116, metadata !DIExpression()), !dbg !117
  %call44 = tail call i64 %getPos(ptr noundef nonnull %net, i64 noundef 1) #11, !dbg !169
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %call44), metadata !114, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !117
  %8 = load i64, ptr %m, align 8, !dbg !141, !tbaa !144
  %cmp245 = icmp sgt i64 %8, 1, !dbg !145
  br i1 %cmp245, label %for.body4.for.body4_crit_edge, label %for.end14, !dbg !146, !llvm.loop !170

for.body4.for.body4_crit_edge:                    ; preds = %for.body4.preheader, %for.body4.for.body4_crit_edge
  %call47 = phi i64 [ %call, %for.body4.for.body4_crit_edge ], [ %call44, %for.body4.preheader ]
  %indvars.iv.next46 = phi i64 [ %indvars.iv.next, %for.body4.for.body4_crit_edge ], [ 1, %for.body4.preheader ]
  %9 = phi ptr [ %.pre, %for.body4.for.body4_crit_edge ], [ %3, %for.body4.preheader ]
  call void @llvm.dbg.value(metadata !DIArgList(ptr %9, i64 %call), metadata !114, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !117
  %arrayidx = getelementptr inbounds %struct.arc, ptr %9, i64 %call47, !dbg !172
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !114, metadata !DIExpression()), !dbg !117
  %.pre = load ptr, ptr %arcs, align 8, !dbg !173, !tbaa !147
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next46, metadata !116, metadata !DIExpression()), !dbg !117
  %tail = getelementptr inbounds %struct.arc, ptr %9, i64 %call47, i32 2, !dbg !148
  %10 = load ptr, ptr %tail, align 8, !dbg !148, !tbaa !150
  %firstout5 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 7, !dbg !154
  %11 = load ptr, ptr %firstout5, align 8, !dbg !154, !tbaa !155
  %nextout = getelementptr inbounds %struct.arc, ptr %9, i64 %call47, i32 5, !dbg !157
  store ptr %11, ptr %nextout, align 8, !dbg !158, !tbaa !159
  store ptr %arrayidx, ptr %firstout5, align 8, !dbg !160, !tbaa !155
  %head = getelementptr inbounds %struct.arc, ptr %9, i64 %call47, i32 3, !dbg !161
  %12 = load ptr, ptr %head, align 8, !dbg !161, !tbaa !162
  %firstin8 = getelementptr inbounds %struct.node, ptr %12, i64 0, i32 8, !dbg !163
  %13 = load ptr, ptr %firstin8, align 8, !dbg !163, !tbaa !164
  %nextin = getelementptr inbounds %struct.arc, ptr %9, i64 %call47, i32 6, !dbg !165
  store ptr %13, ptr %nextin, align 8, !dbg !166, !tbaa !167
  store ptr %arrayidx, ptr %firstin8, align 8, !dbg !168, !tbaa !164
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next46, 1, !dbg !174
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !116, metadata !DIExpression()), !dbg !117
  %call = tail call i64 %getPos(ptr noundef nonnull %net, i64 noundef %indvars.iv.next) #11, !dbg !169
  call void @llvm.dbg.value(metadata !DIArgList(ptr %.pre, i64 %call), metadata !114, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !117
  %14 = load i64, ptr %m, align 8, !dbg !141, !tbaa !144
  %cmp2 = icmp sgt i64 %14, %indvars.iv.next, !dbg !145
  br i1 %cmp2, label %for.body4.for.body4_crit_edge, label %for.end14, !dbg !146, !llvm.loop !170

for.end14:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.preheader, %for.end
  ret void, !dbg !175
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local double @flow_cost(ptr nocapture noundef readonly %net) local_unnamed_addr #1 !dbg !176 {
entry:
  call void @llvm.dbg.value(metadata ptr %net, metadata !180, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 0, metadata !183, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 0, metadata !185, metadata !DIExpression()), !dbg !186
  %arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 23, !dbg !187
  %0 = load ptr, ptr %arcs, align 8, !dbg !187, !tbaa !147
  call void @llvm.dbg.value(metadata ptr %0, metadata !181, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 0, metadata !184, metadata !DIExpression()), !dbg !186
  %m = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 5
  %1 = load i64, ptr %m, align 8, !tbaa !144
  call void @llvm.dbg.value(metadata i32 0, metadata !184, metadata !DIExpression()), !dbg !186
  %cmp105 = icmp sgt i64 %1, 0, !dbg !188
  br i1 %cmp105, label %for.body, label %for.end, !dbg !191

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !184, metadata !DIExpression()), !dbg !186
  %ident = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv, i32 4, !dbg !192
  %2 = load i16, ptr %ident, align 8, !dbg !192, !tbaa !195
  %cmp3 = icmp eq i16 %2, 2, !dbg !196
  %spec.select = zext i1 %cmp3 to i64, !dbg !197
  %3 = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv, i32 7, !dbg !198
  store i64 %spec.select, ptr %3, align 8, !dbg !199
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !200
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !184, metadata !DIExpression()), !dbg !186
  %exitcond.not = icmp eq i64 %indvars.iv.next, %1, !dbg !188
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !191, !llvm.loop !201

for.end:                                          ; preds = %for.body, %entry
  %nodes = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 21, !dbg !203
  %4 = load ptr, ptr %nodes, align 8, !dbg !203, !tbaa !119
  call void @llvm.dbg.value(metadata ptr %4, metadata !182, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 1, metadata !184, metadata !DIExpression()), !dbg !186
  %n = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 2
  %5 = load i64, ptr %n, align 8, !tbaa !204
  %cmp12.not108 = icmp slt i64 %5, 1, !dbg !205
  br i1 %cmp12.not108, label %for.cond25.preheader, label %for.body14, !dbg !208

for.cond25.preheader:                             ; preds = %for.body14, %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 0, metadata !184, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 0, metadata !183, metadata !DIExpression()), !dbg !186
  br i1 %cmp105, label %for.body30.lr.ph, label %for.end64, !dbg !209

for.body30.lr.ph:                                 ; preds = %for.cond25.preheader
  %bigM = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 18
  br label %for.body30, !dbg !209

for.body14:                                       ; preds = %for.end, %for.body14
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %for.body14 ], [ 1, %for.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv122, metadata !184, metadata !DIExpression()), !dbg !186
  %flow17 = getelementptr inbounds %struct.node, ptr %4, i64 %indvars.iv122, i32 10, !dbg !211
  %6 = load i64, ptr %flow17, align 8, !dbg !211, !tbaa !213
  %basic_arc = getelementptr inbounds %struct.node, ptr %4, i64 %indvars.iv122, i32 6, !dbg !214
  %7 = load ptr, ptr %basic_arc, align 8, !dbg !214, !tbaa !215
  %flow20 = getelementptr inbounds %struct.arc, ptr %7, i64 0, i32 7, !dbg !216
  store i64 %6, ptr %flow20, align 8, !dbg !217, !tbaa !218
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1, !dbg !219
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next123, metadata !184, metadata !DIExpression()), !dbg !186
  %exitcond125 = icmp eq i64 %indvars.iv122, %5, !dbg !205
  br i1 %exitcond125, label %for.cond25.preheader, label %for.body14, !dbg !208, !llvm.loop !220

for.body30:                                       ; preds = %for.inc62, %for.body30.lr.ph
  %indvars.iv126 = phi i64 [ 0, %for.body30.lr.ph ], [ %indvars.iv.next127, %for.inc62 ]
  %operational_cost.0115 = phi i64 [ 0, %for.body30.lr.ph ], [ %operational_cost.1, %for.inc62 ]
  %fleet.0112 = phi i64 [ 0, %for.body30.lr.ph ], [ %fleet.1, %for.inc62 ]
  call void @llvm.dbg.value(metadata i64 %operational_cost.0115, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 %indvars.iv126, metadata !184, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 %fleet.0112, metadata !183, metadata !DIExpression()), !dbg !186
  %flow33 = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv126, i32 7, !dbg !222
  %8 = load i64, ptr %flow33, align 8, !dbg !222, !tbaa !218
  %tobool.not = icmp eq i64 %8, 0, !dbg !226
  br i1 %tobool.not, label %for.inc62, label %if.then34, !dbg !227

if.then34:                                        ; preds = %for.body30
  %tail = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv126, i32 2, !dbg !228
  %9 = load ptr, ptr %tail, align 8, !dbg !228, !tbaa !150
  %number = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 12, !dbg !231
  %10 = load i32, ptr %number, align 8, !dbg !231, !tbaa !232
  %cmp37 = icmp slt i32 %10, 0, !dbg !233
  br i1 %cmp37, label %land.lhs.true, label %if.then44, !dbg !234

land.lhs.true:                                    ; preds = %if.then34
  %head = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv126, i32 3, !dbg !235
  %11 = load ptr, ptr %head, align 8, !dbg !235, !tbaa !162
  %number41 = getelementptr inbounds %struct.node, ptr %11, i64 0, i32 12, !dbg !236
  %12 = load i32, ptr %number41, align 8, !dbg !236, !tbaa !232
  %cmp42 = icmp sgt i32 %12, 0, !dbg !237
  br i1 %cmp42, label %for.inc62, label %if.else54, !dbg !238

if.then44:                                        ; preds = %if.then34
  %tobool49.not = icmp eq i32 %10, 0, !dbg !239
  br i1 %tobool49.not, label %if.then50, label %if.else54, !dbg !242

if.then50:                                        ; preds = %if.then44
  %cost = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv126, i32 1, !dbg !243
  %13 = load i64, ptr %cost, align 8, !dbg !243, !tbaa !245
  %14 = load i64, ptr %bigM, align 8, !dbg !246, !tbaa !247
  %sub = add i64 %13, %operational_cost.0115, !dbg !248
  %add = sub i64 %sub, %14, !dbg !249
  call void @llvm.dbg.value(metadata i64 %add, metadata !185, metadata !DIExpression()), !dbg !186
  %inc53 = add nsw i64 %fleet.0112, 1, !dbg !250
  call void @llvm.dbg.value(metadata i64 %inc53, metadata !183, metadata !DIExpression()), !dbg !186
  br label %for.inc62, !dbg !251

if.else54:                                        ; preds = %if.then44, %land.lhs.true
  %cost57 = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv126, i32 1, !dbg !252
  %15 = load i64, ptr %cost57, align 8, !dbg !252, !tbaa !245
  %add58 = add nsw i64 %15, %operational_cost.0115, !dbg !253
  call void @llvm.dbg.value(metadata i64 %add58, metadata !185, metadata !DIExpression()), !dbg !186
  br label %for.inc62

for.inc62:                                        ; preds = %if.else54, %if.then50, %land.lhs.true, %for.body30
  %fleet.1 = phi i64 [ %fleet.0112, %land.lhs.true ], [ %fleet.0112, %if.else54 ], [ %inc53, %if.then50 ], [ %fleet.0112, %for.body30 ], !dbg !186
  %operational_cost.1 = phi i64 [ %operational_cost.0115, %land.lhs.true ], [ %add58, %if.else54 ], [ %add, %if.then50 ], [ %operational_cost.0115, %for.body30 ], !dbg !186
  call void @llvm.dbg.value(metadata i64 %operational_cost.1, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i64 %fleet.1, metadata !183, metadata !DIExpression()), !dbg !186
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1, !dbg !254
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next127, metadata !184, metadata !DIExpression()), !dbg !186
  %exitcond129.not = icmp eq i64 %indvars.iv.next127, %1, !dbg !255
  br i1 %exitcond129.not, label %for.end64, label %for.body30, !dbg !209, !llvm.loop !256

for.end64:                                        ; preds = %for.inc62, %for.cond25.preheader
  %fleet.0.lcssa = phi i64 [ 0, %for.cond25.preheader ], [ %fleet.1, %for.inc62 ], !dbg !258
  %operational_cost.0.lcssa = phi i64 [ 0, %for.cond25.preheader ], [ %operational_cost.1, %for.inc62 ], !dbg !259
  %conv65 = sitofp i64 %fleet.0.lcssa to double, !dbg !260
  %bigM66 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 18, !dbg !261
  %16 = load i64, ptr %bigM66, align 8, !dbg !261, !tbaa !247
  %conv67 = sitofp i64 %16 to double, !dbg !262
  %conv68 = sitofp i64 %operational_cost.0.lcssa to double, !dbg !263
  %17 = tail call double @llvm.fmuladd.f64(double %conv65, double %conv67, double %conv68), !dbg !264
  ret double %17, !dbg !265
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @start() local_unnamed_addr #3 !dbg !266 {
entry:
  ret i64 0, !dbg !270
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @getArcPosition(ptr nocapture noundef readonly %net, i64 noundef %actArc) local_unnamed_addr #4 !dbg !271 {
entry:
  call void @llvm.dbg.value(metadata ptr %net, metadata !273, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %actArc, metadata !274, metadata !DIExpression()), !dbg !277
  %nr_group = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 30, !dbg !278
  %0 = load i64, ptr %nr_group, align 8, !dbg !278, !tbaa !279
  %rem = srem i64 %actArc, %0, !dbg !280
  call void @llvm.dbg.value(metadata i64 %rem, metadata !276, metadata !DIExpression()), !dbg !277
  %full_groups = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 31, !dbg !281
  %1 = load i64, ptr %full_groups, align 8, !dbg !281, !tbaa !283
  %cmp = icmp sgt i64 %rem, %1, !dbg !284
  %div = sdiv i64 %actArc, %0, !dbg !285
  %max_elems = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 32, !dbg !285
  %2 = load i64, ptr %max_elems, align 8, !dbg !285, !tbaa !286
  br i1 %cmp, label %if.then, label %if.else, !dbg !287

if.then:                                          ; preds = %entry
  %mul = mul nsw i64 %2, %1, !dbg !288
  %sub = sub nsw i64 %rem, %1, !dbg !290
  %sub5 = add nsw i64 %2, -1, !dbg !291
  %mul6 = mul nsw i64 %sub5, %sub, !dbg !292
  %add = add i64 %mul, %div, !dbg !293
  %add7 = add i64 %add, %mul6, !dbg !294
  call void @llvm.dbg.value(metadata i64 %add7, metadata !275, metadata !DIExpression()), !dbg !277
  br label %if.end, !dbg !295

if.else:                                          ; preds = %entry
  %mul11 = mul nsw i64 %2, %rem, !dbg !296
  %add12 = add nsw i64 %mul11, %div, !dbg !298
  call void @llvm.dbg.value(metadata i64 %add12, metadata !275, metadata !DIExpression()), !dbg !277
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %result.0 = phi i64 [ %add7, %if.then ], [ %add12, %if.else ], !dbg !285
  call void @llvm.dbg.value(metadata i64 %result.0, metadata !275, metadata !DIExpression()), !dbg !277
  ret i64 %result.0, !dbg !299
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @getOriginalArcPosition(ptr nocapture noundef readnone %net, i64 noundef returned %actArc) local_unnamed_addr #3 !dbg !300 {
entry:
  call void @llvm.dbg.value(metadata ptr %net, metadata !302, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i64 %actArc, metadata !303, metadata !DIExpression()), !dbg !304
  ret i64 %actArc, !dbg !305
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @flow_org_cost(ptr nocapture noundef readonly %net) local_unnamed_addr #5 !dbg !306 {
entry:
  call void @llvm.dbg.value(metadata ptr %net, metadata !308, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i64 0, metadata !312, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !314
  %arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 23, !dbg !315
  %0 = load ptr, ptr %arcs, align 8, !dbg !315, !tbaa !147
  call void @llvm.dbg.value(metadata ptr %0, metadata !309, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !314
  %m = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 5
  %1 = load i64, ptr %m, align 8, !tbaa !144
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !314
  %cmp112 = icmp sgt i64 %1, 0, !dbg !316
  br i1 %cmp112, label %for.body, label %for.end, !dbg !319

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !311, metadata !DIExpression()), !dbg !314
  %ident = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv, i32 4, !dbg !320
  %2 = load i16, ptr %ident, align 8, !dbg !320, !tbaa !195
  %cmp3 = icmp eq i16 %2, 2, !dbg !323
  %spec.select = zext i1 %cmp3 to i64, !dbg !324
  %3 = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv, i32 7, !dbg !325
  store i64 %spec.select, ptr %3, align 8, !dbg !326
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !327
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !311, metadata !DIExpression()), !dbg !314
  %exitcond.not = icmp eq i64 %indvars.iv.next, %1, !dbg !316
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !319, !llvm.loop !328

for.end:                                          ; preds = %for.body, %entry
  %nodes = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 21, !dbg !330
  %4 = load ptr, ptr %nodes, align 8, !dbg !330, !tbaa !119
  call void @llvm.dbg.value(metadata ptr %4, metadata !310, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !314
  %n = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 2
  %5 = load i64, ptr %n, align 8, !tbaa !204
  %cmp12115 = icmp sgt i64 %5, 0, !dbg !331
  br i1 %cmp12115, label %for.body14, label %for.cond25.preheader, !dbg !334

for.cond25.preheader:                             ; preds = %for.body14, %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i64 0, metadata !312, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !314
  br i1 %cmp112, label %for.body30.lr.ph, label %for.end64, !dbg !335

for.body30.lr.ph:                                 ; preds = %for.cond25.preheader
  %bigM = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 18
  br label %for.body30, !dbg !335

for.body14:                                       ; preds = %for.end, %for.body14
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.body14 ], [ 0, %for.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv129, metadata !311, metadata !DIExpression()), !dbg !314
  %flow17 = getelementptr inbounds %struct.node, ptr %4, i64 %indvars.iv129, i32 10, !dbg !337
  %6 = load i64, ptr %flow17, align 8, !dbg !337, !tbaa !213
  %basic_arc = getelementptr inbounds %struct.node, ptr %4, i64 %indvars.iv129, i32 6, !dbg !338
  %7 = load ptr, ptr %basic_arc, align 8, !dbg !338, !tbaa !215
  %flow20 = getelementptr inbounds %struct.arc, ptr %7, i64 0, i32 7, !dbg !339
  store i64 %6, ptr %flow20, align 8, !dbg !340, !tbaa !218
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1, !dbg !341
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next130, metadata !311, metadata !DIExpression()), !dbg !314
  %exitcond132.not = icmp eq i64 %indvars.iv.next130, %5, !dbg !331
  br i1 %exitcond132.not, label %for.cond25.preheader, label %for.body14, !dbg !334, !llvm.loop !342

for.body30:                                       ; preds = %for.inc62, %for.body30.lr.ph
  %indvars.iv133 = phi i64 [ 0, %for.body30.lr.ph ], [ %indvars.iv.next134, %for.inc62 ]
  %operational_cost.0122 = phi i64 [ 0, %for.body30.lr.ph ], [ %operational_cost.1, %for.inc62 ]
  %fleet.0120 = phi i64 [ 0, %for.body30.lr.ph ], [ %fleet.1, %for.inc62 ]
  call void @llvm.dbg.value(metadata i64 %operational_cost.0122, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i64 %fleet.0120, metadata !312, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i64 %indvars.iv133, metadata !311, metadata !DIExpression()), !dbg !314
  %flow33 = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv133, i32 7, !dbg !344
  %8 = load i64, ptr %flow33, align 8, !dbg !344, !tbaa !218
  %tobool.not = icmp eq i64 %8, 0, !dbg !348
  br i1 %tobool.not, label %for.inc62, label %if.then34, !dbg !349

if.then34:                                        ; preds = %for.body30
  %tail = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv133, i32 2, !dbg !350
  %9 = load ptr, ptr %tail, align 8, !dbg !350, !tbaa !150
  %number = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 12, !dbg !353
  %10 = load i32, ptr %number, align 8, !dbg !353, !tbaa !232
  %cmp37 = icmp slt i32 %10, 0, !dbg !354
  br i1 %cmp37, label %land.lhs.true, label %if.then44, !dbg !355

land.lhs.true:                                    ; preds = %if.then34
  %head = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv133, i32 3, !dbg !356
  %11 = load ptr, ptr %head, align 8, !dbg !356, !tbaa !162
  %number41 = getelementptr inbounds %struct.node, ptr %11, i64 0, i32 12, !dbg !357
  %12 = load i32, ptr %number41, align 8, !dbg !357, !tbaa !232
  %cmp42 = icmp sgt i32 %12, 0, !dbg !358
  br i1 %cmp42, label %for.inc62, label %if.else54, !dbg !359

if.then44:                                        ; preds = %if.then34
  %tobool49.not = icmp eq i32 %10, 0, !dbg !360
  br i1 %tobool49.not, label %if.then50, label %if.else54, !dbg !363

if.then50:                                        ; preds = %if.then44
  %org_cost = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv133, i32 8, !dbg !364
  %13 = load i64, ptr %org_cost, align 8, !dbg !364, !tbaa !366
  %14 = load i64, ptr %bigM, align 8, !dbg !367, !tbaa !247
  %sub = add i64 %13, %operational_cost.0122, !dbg !368
  %add = sub i64 %sub, %14, !dbg !369
  call void @llvm.dbg.value(metadata i64 %add, metadata !313, metadata !DIExpression()), !dbg !314
  %inc53 = add nsw i64 %fleet.0120, 1, !dbg !370
  call void @llvm.dbg.value(metadata i64 %inc53, metadata !312, metadata !DIExpression()), !dbg !314
  br label %for.inc62, !dbg !371

if.else54:                                        ; preds = %if.then44, %land.lhs.true
  %org_cost57 = getelementptr inbounds %struct.arc, ptr %0, i64 %indvars.iv133, i32 8, !dbg !372
  %15 = load i64, ptr %org_cost57, align 8, !dbg !372, !tbaa !366
  %add58 = add nsw i64 %15, %operational_cost.0122, !dbg !373
  call void @llvm.dbg.value(metadata i64 %add58, metadata !313, metadata !DIExpression()), !dbg !314
  br label %for.inc62

for.inc62:                                        ; preds = %if.else54, %if.then50, %land.lhs.true, %for.body30
  %fleet.1 = phi i64 [ %fleet.0120, %land.lhs.true ], [ %fleet.0120, %if.else54 ], [ %inc53, %if.then50 ], [ %fleet.0120, %for.body30 ], !dbg !314
  %operational_cost.1 = phi i64 [ %operational_cost.0122, %land.lhs.true ], [ %add58, %if.else54 ], [ %add, %if.then50 ], [ %operational_cost.0122, %for.body30 ], !dbg !314
  call void @llvm.dbg.value(metadata i64 %operational_cost.1, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i64 %fleet.1, metadata !312, metadata !DIExpression()), !dbg !314
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1, !dbg !374
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next134, metadata !311, metadata !DIExpression()), !dbg !314
  %exitcond136.not = icmp eq i64 %indvars.iv.next134, %1, !dbg !375
  br i1 %exitcond136.not, label %for.end64, label %for.body30, !dbg !335, !llvm.loop !376

for.end64:                                        ; preds = %for.inc62, %for.cond25.preheader
  %fleet.0.lcssa = phi i64 [ 0, %for.cond25.preheader ], [ %fleet.1, %for.inc62 ], !dbg !378
  %operational_cost.0.lcssa = phi i64 [ 0, %for.cond25.preheader ], [ %operational_cost.1, %for.inc62 ], !dbg !379
  %conv65 = sitofp i64 %fleet.0.lcssa to double, !dbg !380
  %bigM66 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 18, !dbg !381
  %16 = load i64, ptr %bigM66, align 8, !dbg !381, !tbaa !247
  %conv67 = sitofp i64 %16 to double, !dbg !382
  %conv68 = sitofp i64 %operational_cost.0.lcssa to double, !dbg !383
  %17 = tail call double @llvm.fmuladd.f64(double %conv65, double %conv67, double %conv68), !dbg !384
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %17), !dbg !385
  %18 = load i64, ptr %bigM66, align 8, !dbg !386, !tbaa !247
  %conv71 = sitofp i64 %18 to double, !dbg !387
  %19 = tail call double @llvm.fmuladd.f64(double %conv65, double %conv71, double %conv68), !dbg !388
  ret double %19, !dbg !389
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @primal_feasible(ptr nocapture noundef %net) local_unnamed_addr #5 !dbg !390 {
entry:
  call void @llvm.dbg.value(metadata ptr %net, metadata !394, metadata !DIExpression()), !dbg !401
  %dummy_arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 26, !dbg !402
  %0 = load ptr, ptr %dummy_arcs, align 8, !dbg !402, !tbaa !403
  call void @llvm.dbg.value(metadata ptr %0, metadata !397, metadata !DIExpression()), !dbg !401
  %stop_dummy1 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 27, !dbg !404
  %1 = load ptr, ptr %stop_dummy1, align 8, !dbg !404, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %1, metadata !398, metadata !DIExpression()), !dbg !401
  %nodes = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 21, !dbg !406
  %2 = load ptr, ptr %nodes, align 8, !dbg !406, !tbaa !119
  call void @llvm.dbg.value(metadata ptr %2, metadata !396, metadata !DIExpression()), !dbg !401
  %stop_nodes = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 22, !dbg !407
  %3 = load ptr, ptr %stop_nodes, align 8, !dbg !407, !tbaa !128
  call void @llvm.dbg.value(metadata ptr %3, metadata !395, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata ptr %2, metadata !396, metadata !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value)), !dbg !401
  %node.049 = getelementptr inbounds %struct.node, ptr %2, i64 1, !dbg !408
  call void @llvm.dbg.value(metadata ptr %node.049, metadata !396, metadata !DIExpression()), !dbg !401
  %cmp50 = icmp ult ptr %node.049, %3, !dbg !410
  br i1 %cmp50, label %for.body.lr.ph, label %cleanup, !dbg !412

for.body.lr.ph:                                   ; preds = %entry
  %feas_tol9 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 16
  br label %for.body, !dbg !412

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %node.052 = phi ptr [ %node.049, %for.body.lr.ph ], [ %node.0, %for.inc ]
  %.pn51 = phi ptr [ %2, %for.body.lr.ph ], [ %node.052, %for.inc ]
  %basic_arc = getelementptr inbounds %struct.node, ptr %.pn51, i64 1, i32 6, !dbg !413
  %4 = load ptr, ptr %basic_arc, align 8, !dbg !413, !tbaa !215
  call void @llvm.dbg.value(metadata ptr %4, metadata !399, metadata !DIExpression()), !dbg !401
  %flow2 = getelementptr inbounds %struct.node, ptr %.pn51, i64 1, i32 10, !dbg !415
  %5 = load i64, ptr %flow2, align 8, !dbg !415, !tbaa !213
  call void @llvm.dbg.value(metadata i64 %5, metadata !400, metadata !DIExpression()), !dbg !401
  %cmp3.not = icmp uge ptr %4, %0, !dbg !416
  %cmp4 = icmp ult ptr %4, %1
  %or.cond = select i1 %cmp3.not, i1 %cmp4, i1 false, !dbg !418
  br i1 %or.cond, label %if.then, label %if.else, !dbg !418

if.then:                                          ; preds = %for.body
  %6 = tail call i64 @llvm.abs.i64(i64 %5, i1 true), !dbg !419
  %7 = load i64, ptr %feas_tol9, align 8, !dbg !422, !tbaa !423
  %cmp6 = icmp sgt i64 %6, %7, !dbg !424
  br i1 %cmp6, label %if.then7, label %for.inc, !dbg !425

if.then7:                                         ; preds = %if.then
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1), !dbg !426
  %number = getelementptr inbounds %struct.node, ptr %.pn51, i64 1, i32 12, !dbg !428
  %8 = load i32, ptr %number, align 8, !dbg !428, !tbaa !232
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, i32 noundef %8, i64 noundef %5), !dbg !429
  br label %for.inc, !dbg !430

if.else:                                          ; preds = %for.body
  %9 = load i64, ptr %feas_tol9, align 8, !dbg !431, !tbaa !423
  %sub10 = sub nsw i64 0, %9, !dbg !434
  %cmp11 = icmp slt i64 %5, %sub10, !dbg !435
  %sub12 = add nsw i64 %5, -1
  %cmp14 = icmp sgt i64 %sub12, %9
  %or.cond48 = select i1 %cmp11, i1 true, i1 %cmp14, !dbg !436
  br i1 %or.cond48, label %if.then15, label %for.inc, !dbg !436

if.then15:                                        ; preds = %if.else
  %call16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1), !dbg !437
  %call17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i64 noundef %5), !dbg !439
  br label %cleanup, !dbg !440

for.inc:                                          ; preds = %if.else, %if.then7, %if.then
  call void @llvm.dbg.value(metadata ptr %node.052, metadata !396, metadata !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value)), !dbg !401
  %node.0 = getelementptr inbounds %struct.node, ptr %node.052, i64 1, !dbg !408
  call void @llvm.dbg.value(metadata ptr %node.0, metadata !396, metadata !DIExpression()), !dbg !401
  %cmp = icmp ult ptr %node.0, %3, !dbg !410
  br i1 %cmp, label %for.body, label %cleanup, !dbg !412, !llvm.loop !441

cleanup:                                          ; preds = %for.inc, %if.then15, %entry
  %.sink = phi i64 [ 0, %if.then15 ], [ 1, %entry ], [ 1, %for.inc ]
  %retval.0 = phi i64 [ 1, %if.then15 ], [ 0, %entry ], [ 0, %for.inc ], !dbg !401
  %feasible21 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 13, !dbg !401
  store i64 %.sink, ptr %feasible21, align 8, !dbg !401, !tbaa !443
  ret i64 %retval.0, !dbg !444
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @dual_feasible(ptr nocapture noundef readonly %net) local_unnamed_addr #5 !dbg !445 {
entry:
  call void @llvm.dbg.value(metadata ptr %net, metadata !447, metadata !DIExpression()), !dbg !453
  %stop_arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 24, !dbg !454
  %0 = load ptr, ptr %stop_arcs, align 8, !dbg !454, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %0, metadata !449, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i64 0, metadata !451, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i64 0, metadata !451, metadata !DIExpression()), !dbg !453
  %arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 23, !dbg !456
  %1 = load ptr, ptr %arcs, align 8, !dbg !456, !tbaa !147
  call void @llvm.dbg.value(metadata ptr %1, metadata !448, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i64 poison, metadata !451, metadata !DIExpression()), !dbg !453
  %cmp25 = icmp ult ptr %1, %0, !dbg !458
  br i1 %cmp25, label %for.body.lr.ph, label %cleanup, !dbg !460

for.body.lr.ph:                                   ; preds = %entry
  %feas_tol6 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 16
  br label %for.body, !dbg !460

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %arc.026 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  call void @llvm.dbg.value(metadata ptr %arc.026, metadata !448, metadata !DIExpression()), !dbg !453
  %cost = getelementptr inbounds %struct.arc, ptr %arc.026, i64 0, i32 1, !dbg !461
  %2 = load i64, ptr %cost, align 8, !dbg !461, !tbaa !245
  %tail = getelementptr inbounds %struct.arc, ptr %arc.026, i64 0, i32 2, !dbg !463
  %3 = load ptr, ptr %tail, align 8, !dbg !463, !tbaa !150
  %4 = load i64, ptr %3, align 8, !dbg !464, !tbaa !465
  %sub = sub nsw i64 %2, %4, !dbg !466
  %head = getelementptr inbounds %struct.arc, ptr %arc.026, i64 0, i32 3, !dbg !467
  %5 = load ptr, ptr %head, align 8, !dbg !467, !tbaa !162
  %6 = load i64, ptr %5, align 8, !dbg !468, !tbaa !465
  %add = add nsw i64 %6, %sub, !dbg !469
  call void @llvm.dbg.value(metadata i64 %add, metadata !450, metadata !DIExpression()), !dbg !453
  %ident = getelementptr inbounds %struct.arc, ptr %arc.026, i64 0, i32 4, !dbg !470
  %7 = load i16, ptr %ident, align 8, !dbg !470, !tbaa !195
  %conv = sext i16 %7 to i32, !dbg !471
  switch i32 %conv, label %for.inc [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ], !dbg !472

sw.bb:                                            ; preds = %for.body, %for.body
  %8 = load i64, ptr %feas_tol6, align 8, !dbg !473, !tbaa !423
  %sub2 = sub nsw i64 0, %8, !dbg !476
  %cmp3 = icmp slt i64 %add, %sub2, !dbg !477
  br i1 %cmp3, label %DUAL_INFEAS, label %for.inc, !dbg !478

sw.bb5:                                           ; preds = %for.body
  %9 = load i64, ptr %feas_tol6, align 8, !dbg !479, !tbaa !423
  %cmp7 = icmp sgt i64 %add, %9, !dbg !481
  br i1 %cmp7, label %DUAL_INFEAS, label %for.inc, !dbg !482

for.inc:                                          ; preds = %sw.bb5, %sw.bb, %for.body
  %incdec.ptr = getelementptr inbounds %struct.arc, ptr %arc.026, i64 1, !dbg !483
  call void @llvm.dbg.value(metadata i64 poison, metadata !451, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !448, metadata !DIExpression()), !dbg !453
  %cmp = icmp ult ptr %incdec.ptr, %0, !dbg !458
  br i1 %cmp, label %for.body, label %cleanup, !dbg !460, !llvm.loop !484

DUAL_INFEAS:                                      ; preds = %sw.bb5, %sw.bb
  call void @llvm.dbg.label(metadata !452), !dbg !486
  %10 = load ptr, ptr @stderr, align 8, !dbg !487, !tbaa !488
  %11 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 22, i64 1, ptr %10) #12, !dbg !489
  %12 = load ptr, ptr @stderr, align 8, !dbg !490, !tbaa !488
  %13 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 22, i64 1, ptr %12) #12, !dbg !491
  br label %cleanup, !dbg !492

cleanup:                                          ; preds = %for.inc, %DUAL_INFEAS, %entry
  %retval.0 = phi i64 [ 1, %DUAL_INFEAS ], [ 0, %entry ], [ 0, %for.inc ], !dbg !453
  ret i64 %retval.0, !dbg !493
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local i64 @getfree(ptr nocapture noundef %net) local_unnamed_addr #7 !dbg !494 {
entry:
  call void @llvm.dbg.value(metadata ptr %net, metadata !496, metadata !DIExpression()), !dbg !497
  %nodes = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 21, !dbg !498
  %0 = load ptr, ptr %nodes, align 8, !dbg !498, !tbaa !119
  %tobool.not = icmp eq ptr %0, null, !dbg !498
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !500

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #11, !dbg !498
  br label %if.end, !dbg !498

if.end:                                           ; preds = %if.then, %entry
  %arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 23, !dbg !501
  %1 = load ptr, ptr %arcs, align 8, !dbg !501, !tbaa !147
  %tobool2.not = icmp eq ptr %1, null, !dbg !501
  br i1 %tobool2.not, label %if.end5, label %if.then3, !dbg !503

if.then3:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %1) #11, !dbg !501
  br label %if.end5, !dbg !501

if.end5:                                          ; preds = %if.then3, %if.end
  %dummy_arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 26, !dbg !504
  %2 = load ptr, ptr %dummy_arcs, align 8, !dbg !504, !tbaa !403
  %tobool6.not = icmp eq ptr %2, null, !dbg !504
  br i1 %tobool6.not, label %if.end9, label %if.then7, !dbg !506

if.then7:                                         ; preds = %if.end5
  tail call void @free(ptr noundef nonnull %2) #11, !dbg !504
  br label %if.end9, !dbg !504

if.end9:                                          ; preds = %if.then7, %if.end5
  %sorted_arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 25, !dbg !507
  %3 = load ptr, ptr %sorted_arcs, align 8, !dbg !507, !tbaa !509
  %tobool10.not = icmp eq ptr %3, null, !dbg !507
  br i1 %tobool10.not, label %if.end13, label %if.then11, !dbg !510

if.then11:                                        ; preds = %if.end9
  tail call void @free(ptr noundef nonnull %3) #11, !dbg !507
  br label %if.end13, !dbg !507

if.end13:                                         ; preds = %if.then11, %if.end9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %nodes, i8 0, i64 56, i1 false), !dbg !511
  ret i64 0, !dbg !512
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { cold }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, globals: !50, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/mcfutil.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r", checksumkind: CSK_MD5, checksum: "9003ab32774b06979eebdca9b83b3489")
!2 = !{!3, !4, !47, !38, !49, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !6, line: 134, baseType: !7)
!6 = !DIFile(filename: "apps/505.mcf_r/src/defines.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "05eeb7bba098b08025cbe048b289d372")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !6, line: 149, size: 832, elements: !8)
!8 = !{!9, !16, !18, !21, !22, !23, !24, !40, !41, !42, !43, !44, !45, !46}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !7, file: !6, line: 151, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !6, line: 98, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !12, line: 27, baseType: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !14, line: 44, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!15 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !7, file: !6, line: 152, baseType: !17, size: 32, offset: 64)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !7, file: !6, line: 153, baseType: !19, size: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !6, line: 135, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !7, file: !6, line: 154, baseType: !19, size: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !7, file: !6, line: 155, baseType: !19, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !7, file: !6, line: 156, baseType: !19, size: 64, offset: 320)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !7, file: !6, line: 157, baseType: !25, size: 64, offset: 384)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !6, line: 138, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !6, line: 168, size: 576, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !35, !36, !37, !39}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !27, file: !6, line: 170, baseType: !17, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !27, file: !6, line: 171, baseType: !10, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !27, file: !6, line: 172, baseType: !19, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !27, file: !6, line: 172, baseType: !19, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !27, file: !6, line: 173, baseType: !34, size: 16, offset: 256)
!34 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !27, file: !6, line: 174, baseType: !25, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !27, file: !6, line: 174, baseType: !25, size: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !27, file: !6, line: 175, baseType: !38, size: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !6, line: 97, baseType: !11)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !27, file: !6, line: 176, baseType: !10, size: 64, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !7, file: !6, line: 158, baseType: !25, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !7, file: !6, line: 158, baseType: !25, size: 64, offset: 512)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !7, file: !6, line: 159, baseType: !25, size: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !7, file: !6, line: 160, baseType: !38, size: 64, offset: 640)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !7, file: !6, line: 161, baseType: !11, size: 64, offset: 704)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !7, file: !6, line: 162, baseType: !17, size: 32, offset: 768)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !7, file: !6, line: 163, baseType: !17, size: 32, offset: 800)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_t", file: !6, line: 137, baseType: !27)
!49 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!50 = !{!51, !54}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "old_group", scope: !0, file: !53, line: 121, type: !11, isLocal: true, isDefinition: true)
!53 = !DIFile(filename: "apps/505.mcf_r/src/mcfutil.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9003ab32774b06979eebdca9b83b3489")
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "old_Arc", scope: !0, file: !53, line: 122, type: !11, isLocal: true, isDefinition: true)
!56 = !{i32 7, !"Dwarf Version", i32 5}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = !{i32 7, !"PIC Level", i32 2}
!60 = !{i32 7, !"PIE Level", i32 2}
!61 = !{i32 7, !"uwtable", i32 2}
!62 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!63 = distinct !DISubprogram(name: "refresh_neighbour_lists", scope: !53, file: !53, line: 27, type: !64, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !107}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !6, line: 206, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !6, line: 181, size: 5184, elements: !69)
!69 = !{!70, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !68, file: !6, line: 183, baseType: !71, size: 1600)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1600, elements: !73)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !{!74}
!74 = !DISubrange(count: 200)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !68, file: !6, line: 184, baseType: !71, size: 1600, offset: 1600)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !68, file: !6, line: 185, baseType: !11, size: 64, offset: 3200)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !68, file: !6, line: 185, baseType: !11, size: 64, offset: 3264)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !68, file: !6, line: 186, baseType: !11, size: 64, offset: 3328)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !68, file: !6, line: 186, baseType: !11, size: 64, offset: 3392)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !68, file: !6, line: 186, baseType: !11, size: 64, offset: 3456)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !68, file: !6, line: 186, baseType: !11, size: 64, offset: 3520)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "max_residual_new_m", scope: !68, file: !6, line: 187, baseType: !11, size: 64, offset: 3584)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "max_new_m", scope: !68, file: !6, line: 187, baseType: !11, size: 64, offset: 3648)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !68, file: !6, line: 189, baseType: !11, size: 64, offset: 3712)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !68, file: !6, line: 190, baseType: !11, size: 64, offset: 3776)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !68, file: !6, line: 191, baseType: !11, size: 64, offset: 3840)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !68, file: !6, line: 192, baseType: !11, size: 64, offset: 3904)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !68, file: !6, line: 193, baseType: !11, size: 64, offset: 3968)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !68, file: !6, line: 194, baseType: !11, size: 64, offset: 4032)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !68, file: !6, line: 195, baseType: !11, size: 64, offset: 4096)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !68, file: !6, line: 196, baseType: !11, size: 64, offset: 4160)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !68, file: !6, line: 197, baseType: !11, size: 64, offset: 4224)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !68, file: !6, line: 198, baseType: !49, size: 64, offset: 4288)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !68, file: !6, line: 199, baseType: !10, size: 64, offset: 4352)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !68, file: !6, line: 200, baseType: !19, size: 64, offset: 4416)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !68, file: !6, line: 200, baseType: !19, size: 64, offset: 4480)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !68, file: !6, line: 201, baseType: !25, size: 64, offset: 4544)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !68, file: !6, line: 201, baseType: !25, size: 64, offset: 4608)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sorted_arcs", scope: !68, file: !6, line: 201, baseType: !25, size: 64, offset: 4672)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !68, file: !6, line: 202, baseType: !25, size: 64, offset: 4736)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !68, file: !6, line: 202, baseType: !25, size: 64, offset: 4800)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !68, file: !6, line: 203, baseType: !11, size: 64, offset: 4864)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !68, file: !6, line: 204, baseType: !11, size: 64, offset: 4928)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_group", scope: !68, file: !6, line: 205, baseType: !11, size: 64, offset: 4992)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "full_groups", scope: !68, file: !6, line: 205, baseType: !11, size: 64, offset: 5056)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !68, file: !6, line: 205, baseType: !11, size: 64, offset: 5120)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!11, !66, !11}
!110 = !{!111, !112, !113, !114, !115, !116}
!111 = !DILocalVariable(name: "net", arg: 1, scope: !63, file: !53, line: 27, type: !66)
!112 = !DILocalVariable(name: "getPos", arg: 2, scope: !63, file: !53, line: 27, type: !107)
!113 = !DILocalVariable(name: "node", scope: !63, file: !53, line: 33, type: !4)
!114 = !DILocalVariable(name: "arc", scope: !63, file: !53, line: 34, type: !47)
!115 = !DILocalVariable(name: "stop", scope: !63, file: !53, line: 35, type: !3)
!116 = !DILocalVariable(name: "i", scope: !63, file: !53, line: 36, type: !17)
!117 = !DILocation(line: 0, scope: !63)
!118 = !DILocation(line: 39, column: 17, scope: !63)
!119 = !{!120, !125, i64 552}
!120 = !{!"network", !121, i64 0, !121, i64 200, !123, i64 400, !123, i64 408, !123, i64 416, !123, i64 424, !123, i64 432, !123, i64 440, !123, i64 448, !123, i64 456, !123, i64 464, !123, i64 472, !123, i64 480, !123, i64 488, !123, i64 496, !123, i64 504, !123, i64 512, !123, i64 520, !123, i64 528, !124, i64 536, !123, i64 544, !125, i64 552, !125, i64 560, !125, i64 568, !125, i64 576, !125, i64 584, !125, i64 592, !125, i64 600, !123, i64 608, !123, i64 616, !123, i64 624, !123, i64 632, !123, i64 640}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !{!"long", !121, i64 0}
!124 = !{!"double", !121, i64 0}
!125 = !{!"any pointer", !121, i64 0}
!126 = !DILocation(line: 40, column: 30, scope: !127)
!127 = distinct !DILexicalBlock(scope: !63, file: !53, line: 40, column: 5)
!128 = !{!120, !125, i64 560}
!129 = !DILocation(line: 40, column: 47, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !53, line: 40, column: 5)
!131 = !DILocation(line: 40, column: 5, scope: !127)
!132 = !DILocation(line: 43, column: 15, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !53, line: 41, column: 5)
!134 = !DILocation(line: 40, column: 69, scope: !130)
!135 = !DILocation(line: 43, column: 24, scope: !133)
!136 = distinct !{!136, !131, !137, !138, !139}
!137 = !DILocation(line: 44, column: 5, scope: !127)
!138 = !{!"llvm.loop.mustprogress"}
!139 = !{!"llvm.loop.unroll.disable"}
!140 = !DILocation(line: 47, column: 16, scope: !63)
!141 = !DILocation(line: 48, column: 26, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !53, line: 48, column: 5)
!143 = distinct !DILexicalBlock(scope: !63, file: !53, line: 48, column: 5)
!144 = !{!120, !123, i64 424}
!145 = !DILocation(line: 48, column: 19, scope: !142)
!146 = !DILocation(line: 48, column: 5, scope: !143)
!147 = !{!120, !125, i64 568}
!148 = !DILocation(line: 50, column: 29, scope: !149)
!149 = distinct !DILexicalBlock(scope: !142, file: !53, line: 49, column: 5)
!150 = !{!151, !125, i64 16}
!151 = !{!"arc", !152, i64 0, !123, i64 8, !125, i64 16, !125, i64 24, !153, i64 32, !125, i64 40, !125, i64 48, !123, i64 56, !123, i64 64}
!152 = !{!"int", !121, i64 0}
!153 = !{!"short", !121, i64 0}
!154 = !DILocation(line: 50, column: 35, scope: !149)
!155 = !{!156, !125, i64 56}
!156 = !{!"node", !123, i64 0, !152, i64 8, !125, i64 16, !125, i64 24, !125, i64 32, !125, i64 40, !125, i64 48, !125, i64 56, !125, i64 64, !125, i64 72, !123, i64 80, !123, i64 88, !152, i64 96, !152, i64 100}
!157 = !DILocation(line: 50, column: 14, scope: !149)
!158 = !DILocation(line: 50, column: 22, scope: !149)
!159 = !{!151, !125, i64 40}
!160 = !DILocation(line: 51, column: 29, scope: !149)
!161 = !DILocation(line: 52, column: 28, scope: !149)
!162 = !{!151, !125, i64 24}
!163 = !DILocation(line: 52, column: 34, scope: !149)
!164 = !{!156, !125, i64 64}
!165 = !DILocation(line: 52, column: 14, scope: !149)
!166 = !DILocation(line: 52, column: 21, scope: !149)
!167 = !{!151, !125, i64 48}
!168 = !DILocation(line: 53, column: 28, scope: !149)
!169 = !DILocation(line: 48, column: 51, scope: !142)
!170 = distinct !{!170, !146, !171, !138, !139}
!171 = !DILocation(line: 54, column: 5, scope: !143)
!172 = !DILocation(line: 48, column: 41, scope: !142)
!173 = !DILocation(line: 48, column: 46, scope: !142)
!174 = !DILocation(line: 48, column: 30, scope: !142)
!175 = !DILocation(line: 57, column: 1, scope: !63)
!176 = distinct !DISubprogram(name: "flow_cost", scope: !53, file: !53, line: 61, type: !177, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !179)
!177 = !DISubroutineType(types: !178)
!178 = !{!49, !66}
!179 = !{!180, !181, !182, !183, !184, !185}
!180 = !DILocalVariable(name: "net", arg: 1, scope: !176, file: !53, line: 61, type: !66)
!181 = !DILocalVariable(name: "arc", scope: !176, file: !53, line: 67, type: !47)
!182 = !DILocalVariable(name: "node", scope: !176, file: !53, line: 68, type: !4)
!183 = !DILocalVariable(name: "fleet", scope: !176, file: !53, line: 70, type: !11)
!184 = !DILocalVariable(name: "i", scope: !176, file: !53, line: 71, type: !17)
!185 = !DILocalVariable(name: "operational_cost", scope: !176, file: !53, line: 72, type: !10)
!186 = !DILocation(line: 0, scope: !176)
!187 = !DILocation(line: 75, column: 16, scope: !176)
!188 = !DILocation(line: 79, column: 19, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !53, line: 79, column: 5)
!190 = distinct !DILexicalBlock(scope: !176, file: !53, line: 79, column: 5)
!191 = !DILocation(line: 79, column: 5, scope: !190)
!192 = !DILocation(line: 81, column: 20, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !53, line: 81, column: 13)
!194 = distinct !DILexicalBlock(scope: !189, file: !53, line: 80, column: 5)
!195 = !{!151, !153, i64 32}
!196 = !DILocation(line: 81, column: 26, scope: !193)
!197 = !DILocation(line: 81, column: 13, scope: !194)
!198 = !DILocation(line: 82, column: 20, scope: !193)
!199 = !DILocation(line: 82, column: 25, scope: !193)
!200 = !DILocation(line: 79, column: 31, scope: !189)
!201 = distinct !{!201, !191, !202, !138, !139}
!202 = !DILocation(line: 85, column: 5, scope: !190)
!203 = !DILocation(line: 87, column: 17, scope: !176)
!204 = !{!120, !123, i64 400}
!205 = !DILocation(line: 92, column: 19, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !53, line: 92, column: 5)
!207 = distinct !DILexicalBlock(scope: !176, file: !53, line: 92, column: 5)
!208 = !DILocation(line: 92, column: 5, scope: !207)
!209 = !DILocation(line: 100, column: 5, scope: !210)
!210 = distinct !DILexicalBlock(scope: !176, file: !53, line: 100, column: 5)
!211 = !DILocation(line: 93, column: 43, scope: !212)
!212 = distinct !DILexicalBlock(scope: !206, file: !53, line: 92, column: 35)
!213 = !{!156, !123, i64 80}
!214 = !DILocation(line: 93, column: 17, scope: !212)
!215 = !{!156, !125, i64 48}
!216 = !DILocation(line: 93, column: 28, scope: !212)
!217 = !DILocation(line: 93, column: 33, scope: !212)
!218 = !{!151, !123, i64 56}
!219 = !DILocation(line: 92, column: 31, scope: !206)
!220 = distinct !{!220, !208, !221, !138, !139}
!221 = !DILocation(line: 94, column: 5, scope: !207)
!222 = !DILocation(line: 102, column: 20, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !53, line: 102, column: 13)
!224 = distinct !DILexicalBlock(scope: !225, file: !53, line: 101, column: 5)
!225 = distinct !DILexicalBlock(scope: !210, file: !53, line: 100, column: 5)
!226 = !DILocation(line: 102, column: 13, scope: !223)
!227 = !DILocation(line: 102, column: 13, scope: !224)
!228 = !DILocation(line: 104, column: 26, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !53, line: 104, column: 17)
!230 = distinct !DILexicalBlock(scope: !223, file: !53, line: 103, column: 9)
!231 = !DILocation(line: 104, column: 32, scope: !229)
!232 = !{!156, !152, i64 96}
!233 = !DILocation(line: 104, column: 39, scope: !229)
!234 = !DILocation(line: 104, column: 43, scope: !229)
!235 = !DILocation(line: 104, column: 53, scope: !229)
!236 = !DILocation(line: 104, column: 59, scope: !229)
!237 = !DILocation(line: 104, column: 66, scope: !229)
!238 = !DILocation(line: 104, column: 17, scope: !230)
!239 = !DILocation(line: 106, column: 22, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !53, line: 106, column: 21)
!241 = distinct !DILexicalBlock(scope: !229, file: !53, line: 105, column: 13)
!242 = !DILocation(line: 106, column: 21, scope: !241)
!243 = !DILocation(line: 108, column: 49, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !53, line: 107, column: 17)
!245 = !{!151, !123, i64 8}
!246 = !DILocation(line: 108, column: 61, scope: !244)
!247 = !{!120, !123, i64 528}
!248 = !DILocation(line: 108, column: 54, scope: !244)
!249 = !DILocation(line: 108, column: 38, scope: !244)
!250 = !DILocation(line: 109, column: 26, scope: !244)
!251 = !DILocation(line: 110, column: 17, scope: !244)
!252 = !DILocation(line: 112, column: 48, scope: !240)
!253 = !DILocation(line: 112, column: 38, scope: !240)
!254 = !DILocation(line: 100, column: 30, scope: !225)
!255 = !DILocation(line: 100, column: 19, scope: !225)
!256 = distinct !{!256, !209, !257, !138, !139}
!257 = !DILocation(line: 116, column: 5, scope: !210)
!258 = !DILocation(line: 70, column: 10, scope: !176)
!259 = !DILocation(line: 72, column: 12, scope: !176)
!260 = !DILocation(line: 118, column: 12, scope: !176)
!261 = !DILocation(line: 118, column: 41, scope: !176)
!262 = !DILocation(line: 118, column: 28, scope: !176)
!263 = !DILocation(line: 118, column: 48, scope: !176)
!264 = !DILocation(line: 118, column: 46, scope: !176)
!265 = !DILocation(line: 118, column: 5, scope: !176)
!266 = distinct !DISubprogram(name: "start", scope: !53, file: !53, line: 125, type: !267, scopeLine: 129, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !269)
!267 = !DISubroutineType(types: !268)
!268 = !{!11}
!269 = !{}
!270 = !DILocation(line: 133, column: 5, scope: !266)
!271 = distinct !DISubprogram(name: "getArcPosition", scope: !53, file: !53, line: 137, type: !108, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !272)
!272 = !{!273, !274, !275, !276}
!273 = !DILocalVariable(name: "net", arg: 1, scope: !271, file: !53, line: 137, type: !66)
!274 = !DILocalVariable(name: "actArc", arg: 2, scope: !271, file: !53, line: 137, type: !11)
!275 = !DILocalVariable(name: "result", scope: !271, file: !53, line: 144, type: !11)
!276 = !DILocalVariable(name: "akt_group", scope: !271, file: !53, line: 144, type: !11)
!277 = !DILocation(line: 0, scope: !271)
!278 = !DILocation(line: 145, column: 29, scope: !271)
!279 = !{!120, !123, i64 624}
!280 = !DILocation(line: 145, column: 22, scope: !271)
!281 = !DILocation(line: 146, column: 24, scope: !282)
!282 = distinct !DILexicalBlock(scope: !271, file: !53, line: 146, column: 7)
!283 = !{!120, !123, i64 632}
!284 = !DILocation(line: 146, column: 17, scope: !282)
!285 = !DILocation(line: 0, scope: !282)
!286 = !{!120, !123, i64 640}
!287 = !DILocation(line: 146, column: 7, scope: !271)
!288 = !DILocation(line: 147, column: 59, scope: !289)
!289 = distinct !DILexicalBlock(scope: !282, file: !53, line: 146, column: 37)
!290 = !DILocation(line: 147, column: 89, scope: !289)
!291 = !DILocation(line: 147, column: 127, scope: !289)
!292 = !DILocation(line: 147, column: 109, scope: !289)
!293 = !DILocation(line: 147, column: 76, scope: !289)
!294 = !DILocation(line: 147, column: 39, scope: !289)
!295 = !DILocation(line: 148, column: 3, scope: !289)
!296 = !DILocation(line: 150, column: 52, scope: !297)
!297 = distinct !DILexicalBlock(scope: !282, file: !53, line: 149, column: 8)
!298 = !DILocation(line: 150, column: 39, scope: !297)
!299 = !DILocation(line: 152, column: 5, scope: !271)
!300 = distinct !DISubprogram(name: "getOriginalArcPosition", scope: !53, file: !53, line: 156, type: !108, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !301)
!301 = !{!302, !303}
!302 = !DILocalVariable(name: "net", arg: 1, scope: !300, file: !53, line: 156, type: !66)
!303 = !DILocalVariable(name: "actArc", arg: 2, scope: !300, file: !53, line: 156, type: !11)
!304 = !DILocation(line: 0, scope: !300)
!305 = !DILocation(line: 163, column: 3, scope: !300)
!306 = distinct !DISubprogram(name: "flow_org_cost", scope: !53, file: !53, line: 171, type: !177, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !307)
!307 = !{!308, !309, !310, !311, !312, !313}
!308 = !DILocalVariable(name: "net", arg: 1, scope: !306, file: !53, line: 171, type: !66)
!309 = !DILocalVariable(name: "arc", scope: !306, file: !53, line: 177, type: !47)
!310 = !DILocalVariable(name: "node", scope: !306, file: !53, line: 178, type: !4)
!311 = !DILocalVariable(name: "i", scope: !306, file: !53, line: 179, type: !17)
!312 = !DILocalVariable(name: "fleet", scope: !306, file: !53, line: 181, type: !11)
!313 = !DILocalVariable(name: "operational_cost", scope: !306, file: !53, line: 182, type: !10)
!314 = !DILocation(line: 0, scope: !306)
!315 = !DILocation(line: 184, column: 16, scope: !306)
!316 = !DILocation(line: 188, column: 19, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !53, line: 188, column: 5)
!318 = distinct !DILexicalBlock(scope: !306, file: !53, line: 188, column: 5)
!319 = !DILocation(line: 188, column: 5, scope: !318)
!320 = !DILocation(line: 190, column: 20, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !53, line: 190, column: 13)
!322 = distinct !DILexicalBlock(scope: !317, file: !53, line: 189, column: 5)
!323 = !DILocation(line: 190, column: 26, scope: !321)
!324 = !DILocation(line: 190, column: 13, scope: !322)
!325 = !DILocation(line: 191, column: 20, scope: !321)
!326 = !DILocation(line: 191, column: 25, scope: !321)
!327 = !DILocation(line: 188, column: 30, scope: !317)
!328 = distinct !{!328, !319, !329, !138, !139}
!329 = !DILocation(line: 194, column: 5, scope: !318)
!330 = !DILocation(line: 196, column: 17, scope: !306)
!331 = !DILocation(line: 200, column: 19, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !53, line: 200, column: 5)
!333 = distinct !DILexicalBlock(scope: !306, file: !53, line: 200, column: 5)
!334 = !DILocation(line: 200, column: 5, scope: !333)
!335 = !DILocation(line: 204, column: 5, scope: !336)
!336 = distinct !DILexicalBlock(scope: !306, file: !53, line: 204, column: 5)
!337 = !DILocation(line: 201, column: 43, scope: !332)
!338 = !DILocation(line: 201, column: 17, scope: !332)
!339 = !DILocation(line: 201, column: 28, scope: !332)
!340 = !DILocation(line: 201, column: 33, scope: !332)
!341 = !DILocation(line: 200, column: 30, scope: !332)
!342 = distinct !{!342, !334, !343, !138, !139}
!343 = !DILocation(line: 201, column: 43, scope: !333)
!344 = !DILocation(line: 206, column: 20, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !53, line: 206, column: 13)
!346 = distinct !DILexicalBlock(scope: !347, file: !53, line: 205, column: 5)
!347 = distinct !DILexicalBlock(scope: !336, file: !53, line: 204, column: 5)
!348 = !DILocation(line: 206, column: 13, scope: !345)
!349 = !DILocation(line: 206, column: 13, scope: !346)
!350 = !DILocation(line: 208, column: 26, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !53, line: 208, column: 17)
!352 = distinct !DILexicalBlock(scope: !345, file: !53, line: 207, column: 9)
!353 = !DILocation(line: 208, column: 32, scope: !351)
!354 = !DILocation(line: 208, column: 39, scope: !351)
!355 = !DILocation(line: 208, column: 43, scope: !351)
!356 = !DILocation(line: 208, column: 53, scope: !351)
!357 = !DILocation(line: 208, column: 59, scope: !351)
!358 = !DILocation(line: 208, column: 66, scope: !351)
!359 = !DILocation(line: 208, column: 17, scope: !352)
!360 = !DILocation(line: 210, column: 22, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !53, line: 210, column: 21)
!362 = distinct !DILexicalBlock(scope: !351, file: !53, line: 209, column: 13)
!363 = !DILocation(line: 210, column: 21, scope: !362)
!364 = !DILocation(line: 212, column: 49, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !53, line: 211, column: 17)
!366 = !{!151, !123, i64 64}
!367 = !DILocation(line: 212, column: 65, scope: !365)
!368 = !DILocation(line: 212, column: 58, scope: !365)
!369 = !DILocation(line: 212, column: 38, scope: !365)
!370 = !DILocation(line: 213, column: 26, scope: !365)
!371 = !DILocation(line: 214, column: 17, scope: !365)
!372 = !DILocation(line: 216, column: 48, scope: !361)
!373 = !DILocation(line: 216, column: 38, scope: !361)
!374 = !DILocation(line: 204, column: 30, scope: !347)
!375 = !DILocation(line: 204, column: 19, scope: !347)
!376 = distinct !{!376, !335, !377, !138, !139}
!377 = !DILocation(line: 219, column: 5, scope: !336)
!378 = !DILocation(line: 181, column: 10, scope: !306)
!379 = !DILocation(line: 182, column: 12, scope: !306)
!380 = !DILocation(line: 221, column: 24, scope: !306)
!381 = !DILocation(line: 221, column: 53, scope: !306)
!382 = !DILocation(line: 221, column: 40, scope: !306)
!383 = !DILocation(line: 221, column: 60, scope: !306)
!384 = !DILocation(line: 221, column: 58, scope: !306)
!385 = !DILocation(line: 221, column: 1, scope: !306)
!386 = !DILocation(line: 222, column: 41, scope: !306)
!387 = !DILocation(line: 222, column: 28, scope: !306)
!388 = !DILocation(line: 222, column: 46, scope: !306)
!389 = !DILocation(line: 222, column: 5, scope: !306)
!390 = distinct !DISubprogram(name: "primal_feasible", scope: !53, file: !53, line: 235, type: !391, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{!11, !66}
!393 = !{!394, !395, !396, !397, !398, !399, !400}
!394 = !DILocalVariable(name: "net", arg: 1, scope: !390, file: !53, line: 235, type: !66)
!395 = !DILocalVariable(name: "stop", scope: !390, file: !53, line: 241, type: !3)
!396 = !DILocalVariable(name: "node", scope: !390, file: !53, line: 242, type: !4)
!397 = !DILocalVariable(name: "dummy", scope: !390, file: !53, line: 243, type: !47)
!398 = !DILocalVariable(name: "stop_dummy", scope: !390, file: !53, line: 244, type: !47)
!399 = !DILocalVariable(name: "arc", scope: !390, file: !53, line: 245, type: !47)
!400 = !DILocalVariable(name: "flow", scope: !390, file: !53, line: 246, type: !38)
!401 = !DILocation(line: 0, scope: !390)
!402 = !DILocation(line: 243, column: 25, scope: !390)
!403 = !{!120, !125, i64 592}
!404 = !DILocation(line: 244, column: 30, scope: !390)
!405 = !{!120, !125, i64 600}
!406 = !DILocation(line: 249, column: 17, scope: !390)
!407 = !DILocation(line: 250, column: 25, scope: !390)
!408 = !DILocation(line: 0, scope: !409)
!409 = distinct !DILexicalBlock(scope: !390, file: !53, line: 252, column: 5)
!410 = !DILocation(line: 252, column: 23, scope: !411)
!411 = distinct !DILexicalBlock(scope: !409, file: !53, line: 252, column: 5)
!412 = !DILocation(line: 252, column: 5, scope: !409)
!413 = !DILocation(line: 254, column: 21, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !53, line: 253, column: 5)
!415 = !DILocation(line: 255, column: 22, scope: !414)
!416 = !DILocation(line: 256, column: 17, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !53, line: 256, column: 13)
!418 = !DILocation(line: 256, column: 26, scope: !417)
!419 = !DILocation(line: 258, column: 17, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !53, line: 258, column: 17)
!421 = distinct !DILexicalBlock(scope: !417, file: !53, line: 257, column: 9)
!422 = !DILocation(line: 258, column: 42, scope: !420)
!423 = !{!120, !123, i64 512}
!424 = !DILocation(line: 258, column: 27, scope: !420)
!425 = !DILocation(line: 258, column: 17, scope: !421)
!426 = !DILocation(line: 260, column: 17, scope: !427)
!427 = distinct !DILexicalBlock(scope: !420, file: !53, line: 259, column: 13)
!428 = !DILocation(line: 262, column: 31, scope: !427)
!429 = !DILocation(line: 261, column: 17, scope: !427)
!430 = !DILocation(line: 263, column: 13, scope: !427)
!431 = !DILocation(line: 267, column: 39, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !53, line: 267, column: 17)
!433 = distinct !DILexicalBlock(scope: !417, file: !53, line: 266, column: 9)
!434 = !DILocation(line: 267, column: 33, scope: !432)
!435 = !DILocation(line: 267, column: 22, scope: !432)
!436 = !DILocation(line: 268, column: 16, scope: !432)
!437 = !DILocation(line: 270, column: 17, scope: !438)
!438 = distinct !DILexicalBlock(scope: !432, file: !53, line: 269, column: 13)
!439 = !DILocation(line: 271, column: 17, scope: !438)
!440 = !DILocation(line: 273, column: 17, scope: !438)
!441 = distinct !{!441, !412, !442, !138, !139}
!442 = !DILocation(line: 276, column: 5, scope: !409)
!443 = !{!120, !123, i64 488}
!444 = !DILocation(line: 281, column: 1, scope: !390)
!445 = distinct !DISubprogram(name: "dual_feasible", scope: !53, file: !53, line: 293, type: !391, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !446)
!446 = !{!447, !448, !449, !450, !451, !452}
!447 = !DILocalVariable(name: "net", arg: 1, scope: !445, file: !53, line: 293, type: !66)
!448 = !DILocalVariable(name: "arc", scope: !445, file: !53, line: 299, type: !47)
!449 = !DILocalVariable(name: "stop", scope: !445, file: !53, line: 300, type: !47)
!450 = !DILocalVariable(name: "red_cost", scope: !445, file: !53, line: 301, type: !10)
!451 = !DILocalVariable(name: "i", scope: !445, file: !53, line: 303, type: !11)
!452 = !DILabel(scope: !445, name: "DUAL_INFEAS", file: !53, line: 353)
!453 = !DILocation(line: 0, scope: !445)
!454 = !DILocation(line: 300, column: 36, scope: !445)
!455 = !{!120, !125, i64 576}
!456 = !DILocation(line: 306, column: 27, scope: !457)
!457 = distinct !DILexicalBlock(scope: !445, file: !53, line: 306, column: 5)
!458 = !DILocation(line: 306, column: 37, scope: !459)
!459 = distinct !DILexicalBlock(scope: !457, file: !53, line: 306, column: 5)
!460 = !DILocation(line: 306, column: 5, scope: !457)
!461 = !DILocation(line: 308, column: 25, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !53, line: 307, column: 5)
!463 = !DILocation(line: 308, column: 37, scope: !462)
!464 = !DILocation(line: 308, column: 43, scope: !462)
!465 = !{!156, !123, i64 0}
!466 = !DILocation(line: 308, column: 30, scope: !462)
!467 = !DILocation(line: 309, column: 20, scope: !462)
!468 = !DILocation(line: 309, column: 26, scope: !462)
!469 = !DILocation(line: 309, column: 13, scope: !462)
!470 = !DILocation(line: 310, column: 22, scope: !462)
!471 = !DILocation(line: 310, column: 17, scope: !462)
!472 = !DILocation(line: 310, column: 9, scope: !462)
!473 = !DILocation(line: 326, column: 42, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !53, line: 326, column: 17)
!475 = distinct !DILexicalBlock(scope: !462, file: !53, line: 311, column: 9)
!476 = !DILocation(line: 326, column: 36, scope: !474)
!477 = !DILocation(line: 326, column: 26, scope: !474)
!478 = !DILocation(line: 326, column: 17, scope: !475)
!479 = !DILocation(line: 336, column: 41, scope: !480)
!480 = distinct !DILexicalBlock(scope: !475, file: !53, line: 336, column: 17)
!481 = !DILocation(line: 336, column: 26, scope: !480)
!482 = !DILocation(line: 336, column: 17, scope: !475)
!483 = !DILocation(line: 306, column: 48, scope: !459)
!484 = distinct !{!484, !460, !485, !138, !139}
!485 = !DILocation(line: 349, column: 5, scope: !457)
!486 = !DILocation(line: 353, column: 1, scope: !445)
!487 = !DILocation(line: 354, column: 14, scope: !445)
!488 = !{!125, !125, i64 0}
!489 = !DILocation(line: 354, column: 5, scope: !445)
!490 = !DILocation(line: 355, column: 14, scope: !445)
!491 = !DILocation(line: 355, column: 5, scope: !445)
!492 = !DILocation(line: 356, column: 5, scope: !445)
!493 = !DILocation(line: 357, column: 1, scope: !445)
!494 = distinct !DISubprogram(name: "getfree", scope: !53, file: !53, line: 366, type: !391, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !495)
!495 = !{!496}
!496 = !DILocalVariable(name: "net", arg: 1, scope: !494, file: !53, line: 367, type: !66)
!497 = !DILocation(line: 0, scope: !494)
!498 = !DILocation(line: 374, column: 5, scope: !499)
!499 = distinct !DILexicalBlock(scope: !494, file: !53, line: 374, column: 5)
!500 = !DILocation(line: 374, column: 5, scope: !494)
!501 = !DILocation(line: 375, column: 5, scope: !502)
!502 = distinct !DILexicalBlock(scope: !494, file: !53, line: 375, column: 5)
!503 = !DILocation(line: 375, column: 5, scope: !494)
!504 = !DILocation(line: 376, column: 5, scope: !505)
!505 = distinct !DILexicalBlock(scope: !494, file: !53, line: 376, column: 5)
!506 = !DILocation(line: 376, column: 5, scope: !494)
!507 = !DILocation(line: 377, column: 5, scope: !508)
!508 = distinct !DILexicalBlock(scope: !494, file: !53, line: 377, column: 5)
!509 = !{!120, !125, i64 584}
!510 = !DILocation(line: 377, column: 5, scope: !494)
!511 = !DILocation(line: 378, column: 16, scope: !494)
!512 = !DILocation(line: 383, column: 5, scope: !494)
