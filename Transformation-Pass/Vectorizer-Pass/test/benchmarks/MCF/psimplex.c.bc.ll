; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r/llvm-ir/505.mcf_r_bc/src/psimplex.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/psimplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basket = type { ptr, i64, i64, i64 }
%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

@perm_p = internal unnamed_addr global ptr null, align 8, !dbg !0
@basket_sizes = internal unnamed_addr global ptr null, align 8, !dbg !63
@basket = internal unnamed_addr global ptr null, align 8, !dbg !65
@opt = internal unnamed_addr global i1 false, align 8, !dbg !69
@opt_basket = internal unnamed_addr global ptr null, align 8, !dbg !60

; Function Attrs: nounwind uwtable
define dso_local void @markBaskets(i64 noundef %num_threads) local_unnamed_addr #0 !dbg !77 {
entry:
  %max = alloca ptr, align 8
  %act = alloca ptr, align 8
  call void @llvm.dbg.value(metadata i64 %num_threads, metadata !81, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max) #6, !dbg !88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %act) #6, !dbg !88
  call void @llvm.dbg.value(metadata i64 1, metadata !82, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()), !dbg !87
  %cmp431 = icmp sgt i64 %num_threads, 1
  %.pre = load ptr, ptr @perm_p, align 8
  br i1 %cmp431, label %for.body.us, label %for.body, !dbg !89

for.body.us:                                      ; preds = %entry, %if.end16.us.for.body.us_crit_edge
  %.pre41 = phi ptr [ %.pre41.pre, %if.end16.us.for.body.us_crit_edge ], [ %.pre, %entry ], !dbg !94
  %0 = phi ptr [ %12, %if.end16.us.for.body.us_crit_edge ], [ %.pre, %entry ], !dbg !97
  %max_pos.036.us = phi i64 [ %max_pos.3.us, %if.end16.us.for.body.us_crit_edge ], [ 0, %entry ]
  %i.035.us = phi i64 [ %inc20.us, %if.end16.us.for.body.us_crit_edge ], [ 1, %entry ]
  call void @llvm.dbg.value(metadata i64 %max_pos.036.us, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 %i.035.us, metadata !82, metadata !DIExpression()), !dbg !87
  %1 = load ptr, ptr %0, align 8, !dbg !97, !tbaa !99
  %2 = load ptr, ptr %1, align 8, !dbg !103, !tbaa !99
  %number.us = getelementptr inbounds %struct.basket, ptr %2, i64 0, i32 3, !dbg !104
  %3 = load i64, ptr %number.us, align 8, !dbg !104, !tbaa !105
  %cmp1.us = icmp sgt i64 %3, -1, !dbg !108
  %..us = select i1 %cmp1.us, ptr %2, ptr null
  %.max_pos.0.us = select i1 %cmp1.us, i64 0, i64 %max_pos.036.us
  store ptr %..us, ptr %max, align 8, !dbg !109, !tbaa !99
  call void @llvm.dbg.value(metadata i64 %.max_pos.0.us, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 1, metadata !83, metadata !DIExpression()), !dbg !87
  br label %for.body5.us, !dbg !89

if.end16.us:                                      ; preds = %for.cond3.for.end_crit_edge.us
  %number17.us = getelementptr inbounds %struct.basket, ptr %13, i64 0, i32 3, !dbg !110
  store i64 %i.035.us, ptr %number17.us, align 8, !dbg !111, !tbaa !105
  %arrayidx18.us = getelementptr inbounds ptr, ptr %12, i64 %max_pos.3.us, !dbg !112
  %4 = load ptr, ptr %arrayidx18.us, align 8, !dbg !113, !tbaa !99
  %incdec.ptr.us = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !113
  store ptr %incdec.ptr.us, ptr %arrayidx18.us, align 8, !dbg !113, !tbaa !99
  %inc20.us = add nuw nsw i64 %i.035.us, 1, !dbg !114
  call void @llvm.dbg.value(metadata i64 undef, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 %inc20.us, metadata !82, metadata !DIExpression()), !dbg !87
  %exitcond39.not = icmp eq i64 %inc20.us, 61, !dbg !115
  br i1 %exitcond39.not, label %cleanup, label %if.end16.us.for.body.us_crit_edge, !dbg !116, !llvm.loop !117

if.end16.us.for.body.us_crit_edge:                ; preds = %if.end16.us
  %.pre41.pre = load ptr, ptr @perm_p, align 8, !dbg !94, !tbaa !99
  br label %for.body.us, !dbg !116

for.body5.us:                                     ; preds = %for.body.us, %for.inc.us
  %5 = phi ptr [ %.pre41, %for.body.us ], [ %12, %for.inc.us ], !dbg !94
  %max_pos.234.us = phi i64 [ %.max_pos.0.us, %for.body.us ], [ %max_pos.3.us, %for.inc.us ]
  %j.032.us = phi i64 [ 1, %for.body.us ], [ %inc.us, %for.inc.us ]
  call void @llvm.dbg.value(metadata i64 %max_pos.234.us, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 %j.032.us, metadata !83, metadata !DIExpression()), !dbg !87
  %arrayidx6.us = getelementptr inbounds ptr, ptr %5, i64 %j.032.us, !dbg !94
  %6 = load ptr, ptr %arrayidx6.us, align 8, !dbg !94, !tbaa !99
  %7 = load ptr, ptr %6, align 8, !dbg !121, !tbaa !99
  call void @llvm.dbg.value(metadata ptr %7, metadata !86, metadata !DIExpression()), !dbg !87
  store ptr %7, ptr %act, align 8, !dbg !122, !tbaa !99
  %number7.us = getelementptr inbounds %struct.basket, ptr %7, i64 0, i32 3, !dbg !123
  %8 = load i64, ptr %number7.us, align 8, !dbg !123, !tbaa !105
  %cmp8.us = icmp sgt i64 %8, -1, !dbg !125
  br i1 %cmp8.us, label %if.then9.us, label %for.inc.us, !dbg !126

if.then9.us:                                      ; preds = %for.body5.us
  %9 = load ptr, ptr %max, align 8, !dbg !127, !tbaa !99
  call void @llvm.dbg.value(metadata ptr %9, metadata !85, metadata !DIExpression()), !dbg !87
  %tobool.not.us = icmp eq ptr %9, null, !dbg !127
  br i1 %tobool.not.us, label %if.then11.us, label %lor.lhs.false.us, !dbg !130

lor.lhs.false.us:                                 ; preds = %if.then9.us
  call void @llvm.dbg.value(metadata ptr %max, metadata !85, metadata !DIExpression(DW_OP_deref)), !dbg !87
  call void @llvm.dbg.value(metadata ptr %act, metadata !86, metadata !DIExpression(DW_OP_deref)), !dbg !87
  %call.us = call i32 @cost_compare(ptr noundef nonnull %act, ptr noundef nonnull %max) #6, !dbg !131
  %cmp10.us = icmp slt i32 %call.us, 0, !dbg !132
  %.pre40 = load ptr, ptr @perm_p, align 8, !dbg !94, !tbaa !99
  br i1 %cmp10.us, label %lor.lhs.false.us.if.then11.us_crit_edge, label %for.inc.us, !dbg !133

lor.lhs.false.us.if.then11.us_crit_edge:          ; preds = %lor.lhs.false.us
  %.pre42 = load ptr, ptr %act, align 8, !dbg !134, !tbaa !99
  br label %if.then11.us, !dbg !133

if.then11.us:                                     ; preds = %lor.lhs.false.us.if.then11.us_crit_edge, %if.then9.us
  %10 = phi ptr [ %.pre42, %lor.lhs.false.us.if.then11.us_crit_edge ], [ %7, %if.then9.us ], !dbg !134
  %11 = phi ptr [ %.pre40, %lor.lhs.false.us.if.then11.us_crit_edge ], [ %5, %if.then9.us ]
  call void @llvm.dbg.value(metadata ptr %10, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata ptr %10, metadata !85, metadata !DIExpression()), !dbg !87
  store ptr %10, ptr %max, align 8, !dbg !136, !tbaa !99
  call void @llvm.dbg.value(metadata i64 %j.032.us, metadata !84, metadata !DIExpression()), !dbg !87
  br label %for.inc.us, !dbg !137

for.inc.us:                                       ; preds = %if.then11.us, %lor.lhs.false.us, %for.body5.us
  %12 = phi ptr [ %11, %if.then11.us ], [ %.pre40, %lor.lhs.false.us ], [ %5, %for.body5.us ]
  %max_pos.3.us = phi i64 [ %j.032.us, %if.then11.us ], [ %max_pos.234.us, %lor.lhs.false.us ], [ %max_pos.234.us, %for.body5.us ], !dbg !138
  call void @llvm.dbg.value(metadata i64 %max_pos.3.us, metadata !84, metadata !DIExpression()), !dbg !87
  %inc.us = add nuw nsw i64 %j.032.us, 1, !dbg !139
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !83, metadata !DIExpression()), !dbg !87
  %exitcond38.not = icmp eq i64 %inc.us, %num_threads, !dbg !140
  br i1 %exitcond38.not, label %for.cond3.for.end_crit_edge.us, label %for.body5.us, !dbg !89, !llvm.loop !141

for.cond3.for.end_crit_edge.us:                   ; preds = %for.inc.us
  %13 = load ptr, ptr %max, align 8, !dbg !143, !tbaa !99
  call void @llvm.dbg.value(metadata ptr %13, metadata !85, metadata !DIExpression()), !dbg !87
  %tobool14.not.us = icmp eq ptr %13, null, !dbg !143
  br i1 %tobool14.not.us, label %cleanup, label %if.end16.us, !dbg !145

for.body:                                         ; preds = %entry, %if.end16
  %i.035 = phi i64 [ %inc20, %if.end16 ], [ 1, %entry ]
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !82, metadata !DIExpression()), !dbg !87
  %14 = load ptr, ptr %.pre, align 8, !dbg !97, !tbaa !99
  %15 = load ptr, ptr %14, align 8, !dbg !103, !tbaa !99
  %number = getelementptr inbounds %struct.basket, ptr %15, i64 0, i32 3, !dbg !104
  %16 = load i64, ptr %number, align 8, !dbg !104, !tbaa !105
  %cmp1 = icmp slt i64 %16, 0, !dbg !108
  call void @llvm.dbg.value(metadata i64 undef, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 1, metadata !83, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata ptr undef, metadata !85, metadata !DIExpression()), !dbg !87
  %tobool14.not45 = icmp eq ptr %15, null, !dbg !143
  %tobool14.not = select i1 %cmp1, i1 true, i1 %tobool14.not45, !dbg !143
  br i1 %tobool14.not, label %cleanup, label %if.end16, !dbg !145

if.end16:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()), !dbg !87
  %number17 = getelementptr inbounds %struct.basket, ptr %15, i64 0, i32 3, !dbg !110
  store i64 %i.035, ptr %number17, align 8, !dbg !111, !tbaa !105
  %17 = load ptr, ptr %.pre, align 8, !dbg !113, !tbaa !99
  %incdec.ptr = getelementptr inbounds ptr, ptr %17, i64 1, !dbg !113
  store ptr %incdec.ptr, ptr %.pre, align 8, !dbg !113, !tbaa !99
  %inc20 = add nuw nsw i64 %i.035, 1, !dbg !114
  call void @llvm.dbg.value(metadata i64 undef, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 %inc20, metadata !82, metadata !DIExpression()), !dbg !87
  %exitcond.not = icmp eq i64 %inc20, 61, !dbg !115
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !116, !llvm.loop !117

cleanup:                                          ; preds = %for.body, %if.end16, %for.cond3.for.end_crit_edge.us, %if.end16.us
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %act) #6, !dbg !146
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max) #6, !dbg !146
  ret void, !dbg !146
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !147 i32 @cost_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @worker(ptr nocapture noundef readonly %net, i32 noundef %thread, i32 noundef %num_threads) local_unnamed_addr #0 !dbg !152 {
entry:
  %perm = alloca [4061 x ptr], align 16
  %end_arc = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %net, metadata !198, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 %thread, metadata !199, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 %num_threads, metadata !200, metadata !DIExpression()), !dbg !212
  %arcs1 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 23, !dbg !213
  %0 = load ptr, ptr %arcs1, align 8, !dbg !213, !tbaa !214
  call void @llvm.dbg.value(metadata ptr %0, metadata !201, metadata !DIExpression()), !dbg !212
  %stop_arcs2 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 24, !dbg !217
  %1 = load ptr, ptr %stop_arcs2, align 8, !dbg !217, !tbaa !218
  call void @llvm.dbg.value(metadata ptr %1, metadata !202, metadata !DIExpression()), !dbg !212
  %m3 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 5, !dbg !219
  %2 = load i64, ptr %m3, align 8, !dbg !219, !tbaa !220
  call void @llvm.dbg.value(metadata i64 %2, metadata !203, metadata !DIExpression()), !dbg !212
  %iterations4 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 28, !dbg !221
  call void @llvm.dbg.value(metadata ptr %iterations4, metadata !204, metadata !DIExpression()), !dbg !212
  call void @llvm.lifetime.start.p0(i64 32488, ptr nonnull %perm) #6, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %perm, metadata !205, metadata !DIExpression()), !dbg !223
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end_arc) #6, !dbg !224
  call void @llvm.dbg.value(metadata ptr %0, metadata !209, metadata !DIExpression()), !dbg !212
  store ptr %0, ptr %end_arc, align 8, !dbg !225, !tbaa !99
  %3 = load ptr, ptr @basket_sizes, align 8, !dbg !226, !tbaa !99
  %idxprom = sext i32 %thread to i64, !dbg !226
  %arrayidx = getelementptr inbounds i64, ptr %3, i64 %idxprom, !dbg !226
  store i64 0, ptr %arrayidx, align 8, !dbg !227, !tbaa !228
  %div = sdiv i32 4000, %num_threads, !dbg !229
  call void @llvm.dbg.value(metadata !DIArgList(i32 %div, i32 %thread), metadata !211, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 261, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !212
  call void @llvm.dbg.value(metadata i64 1, metadata !210, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata !DIArgList(i32 %div, i32 %thread), metadata !211, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 261, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !212
  call void @llvm.dbg.value(metadata i64 1, metadata !210, metadata !DIExpression()), !dbg !212
  %cmp47 = icmp sgt i32 %div, -60, !dbg !231
  br i1 %cmp47, label %for.body.lr.ph, label %while.cond.preheader, !dbg !233

for.body.lr.ph:                                   ; preds = %entry
  %add7 = add nsw i32 %div, 261, !dbg !234
  call void @llvm.dbg.value(metadata !DIArgList(i32 %add7, i32 %thread), metadata !211, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !212
  %mul = mul nsw i32 %add7, %thread, !dbg !235
  call void @llvm.dbg.value(metadata i32 %mul, metadata !211, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !212
  %add8 = add nsw i32 %mul, 1, !dbg !236
  call void @llvm.dbg.value(metadata i32 %add8, metadata !211, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !212
  %conv = sext i32 %add8 to i64, !dbg !237
  call void @llvm.dbg.value(metadata i64 %conv, metadata !211, metadata !DIExpression()), !dbg !212
  %4 = load ptr, ptr @basket, align 8, !tbaa !99
  %5 = add nsw i32 %div, 61, !dbg !233
  %smax53 = zext i32 %5 to i64, !dbg !233
  br label %for.body, !dbg !233

while.cond.preheader:                             ; preds = %for.body, %entry
  %.b50 = load i1, ptr @opt, align 8, !dbg !238
  br i1 %.b50, label %while.end, label %while.body.lr.ph, !dbg !239

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %conv19 = sext i32 %num_threads to i64
  %max_elems = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 32
  %add.ptr = getelementptr inbounds ptr, ptr %perm, i64 1
  %cmp26 = icmp eq i32 %thread, 1
  br i1 %cmp26, label %while.body.us, label %while.body, !dbg !240

while.body.us:                                    ; preds = %while.body.lr.ph, %while.body.us.while.body.us_crit_edge
  %6 = phi ptr [ %.pre52, %while.body.us.while.body.us_crit_edge ], [ %3, %while.body.lr.ph ], !dbg !242
  %7 = load i64, ptr %iterations4, align 8, !dbg !243, !tbaa !228
  %add18.us = add nsw i64 %7, %idxprom, !dbg !244
  %rem.us = srem i64 %add18.us, %conv19, !dbg !245
  %8 = load i64, ptr %max_elems, align 8, !dbg !246, !tbaa !247
  call void @llvm.dbg.value(metadata ptr %end_arc, metadata !209, metadata !DIExpression(DW_OP_deref)), !dbg !212
  %call.us = call ptr @primal_bea_mpp(i64 noundef %2, ptr noundef %0, ptr noundef %1, ptr noundef %6, ptr noundef nonnull %perm, i32 noundef 1, ptr noundef nonnull %end_arc, i64 noundef %rem.us, i64 noundef %conv19, i64 noundef %8) #6, !dbg !248
  %9 = load ptr, ptr @opt_basket, align 8, !dbg !249, !tbaa !99
  %arrayidx22.us = getelementptr inbounds ptr, ptr %9, i64 %idxprom, !dbg !249
  store ptr %call.us, ptr %arrayidx22.us, align 8, !dbg !250, !tbaa !99
  %10 = load ptr, ptr @perm_p, align 8, !dbg !251, !tbaa !99
  %arrayidx25.us = getelementptr inbounds ptr, ptr %10, i64 %idxprom, !dbg !251
  store ptr %add.ptr, ptr %arrayidx25.us, align 8, !dbg !252, !tbaa !99
  call void @markBaskets(i64 noundef %conv19), !dbg !253
  %.b.us = load i1, ptr @opt, align 8, !dbg !238
  br i1 %.b.us, label %while.end, label %while.body.us.while.body.us_crit_edge, !dbg !239, !llvm.loop !255

while.body.us.while.body.us_crit_edge:            ; preds = %while.body.us
  %.pre52 = load ptr, ptr @basket_sizes, align 8, !dbg !242, !tbaa !99
  br label %while.body.us, !dbg !239

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %j.049 = phi i64 [ %conv, %for.body.lr.ph ], [ %inc16, %for.body ]
  %i.048 = phi i64 [ 1, %for.body.lr.ph ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %j.049, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i64 %i.048, metadata !210, metadata !DIExpression()), !dbg !212
  %arrayidx14 = getelementptr inbounds %struct.basket, ptr %4, i64 %j.049, !dbg !257
  %arrayidx15 = getelementptr inbounds [4061 x ptr], ptr %perm, i64 0, i64 %i.048, !dbg !258
  store ptr %arrayidx14, ptr %arrayidx15, align 8, !dbg !259, !tbaa !99
  %inc = add nuw nsw i64 %i.048, 1, !dbg !260
  call void @llvm.dbg.value(metadata i64 %inc, metadata !210, metadata !DIExpression()), !dbg !212
  %inc16 = add nsw i64 %j.049, 1, !dbg !261
  call void @llvm.dbg.value(metadata i64 %inc16, metadata !211, metadata !DIExpression()), !dbg !212
  %exitcond.not = icmp eq i64 %inc, %smax53, !dbg !231
  br i1 %exitcond.not, label %while.cond.preheader, label %for.body, !dbg !233, !llvm.loop !262

while.body:                                       ; preds = %while.body.lr.ph, %while.body.while.body_crit_edge
  %11 = phi ptr [ %.pre, %while.body.while.body_crit_edge ], [ %3, %while.body.lr.ph ], !dbg !242
  %12 = load i64, ptr %iterations4, align 8, !dbg !243, !tbaa !228
  %add18 = add nsw i64 %12, %idxprom, !dbg !244
  %rem = srem i64 %add18, %conv19, !dbg !245
  %13 = load i64, ptr %max_elems, align 8, !dbg !246, !tbaa !247
  call void @llvm.dbg.value(metadata ptr %end_arc, metadata !209, metadata !DIExpression(DW_OP_deref)), !dbg !212
  %call = call ptr @primal_bea_mpp(i64 noundef %2, ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef nonnull %perm, i32 noundef %thread, ptr noundef nonnull %end_arc, i64 noundef %rem, i64 noundef %conv19, i64 noundef %13) #6, !dbg !248
  %14 = load ptr, ptr @opt_basket, align 8, !dbg !249, !tbaa !99
  %arrayidx22 = getelementptr inbounds ptr, ptr %14, i64 %idxprom, !dbg !249
  store ptr %call, ptr %arrayidx22, align 8, !dbg !250, !tbaa !99
  %15 = load ptr, ptr @perm_p, align 8, !dbg !251, !tbaa !99
  %arrayidx25 = getelementptr inbounds ptr, ptr %15, i64 %idxprom, !dbg !251
  store ptr %add.ptr, ptr %arrayidx25, align 8, !dbg !252, !tbaa !99
  %.b = load i1, ptr @opt, align 8, !dbg !238
  br i1 %.b, label %while.end, label %while.body.while.body_crit_edge, !dbg !239, !llvm.loop !255

while.body.while.body_crit_edge:                  ; preds = %while.body
  %.pre = load ptr, ptr @basket_sizes, align 8, !dbg !242, !tbaa !99
  br label %while.body, !dbg !239

while.end:                                        ; preds = %while.body, %while.body.us, %while.cond.preheader
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end_arc) #6, !dbg !264
  call void @llvm.lifetime.end.p0(i64 32488, ptr nonnull %perm) #6, !dbg !264
  ret void, !dbg !264
}

declare !dbg !265 ptr @primal_bea_mpp(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @master(ptr nocapture noundef %net, i32 noundef %num_threads) local_unnamed_addr #0 !dbg !269 {
entry:
  %delta = alloca i64, align 8
  %xchange = alloca i64, align 8
  %w = alloca ptr, align 8
  %max_basket = alloca ptr, align 8
  %perm = alloca [4061 x ptr], align 16
  %end_arc = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %net, metadata !273, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 %num_threads, metadata !274, metadata !DIExpression()), !dbg !301
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %delta) #6, !dbg !302
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xchange) #6, !dbg !303
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %w) #6, !dbg !304
  %arcs1 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 23, !dbg !305
  %0 = load ptr, ptr %arcs1, align 8, !dbg !305, !tbaa !214
  call void @llvm.dbg.value(metadata ptr %0, metadata !288, metadata !DIExpression()), !dbg !301
  %stop_arcs2 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 24, !dbg !306
  %1 = load ptr, ptr %stop_arcs2, align 8, !dbg !306, !tbaa !218
  call void @llvm.dbg.value(metadata ptr %1, metadata !289, metadata !DIExpression()), !dbg !301
  %m3 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 5, !dbg !307
  %2 = load i64, ptr %m3, align 8, !dbg !307, !tbaa !220
  call void @llvm.dbg.value(metadata i64 %2, metadata !291, metadata !DIExpression()), !dbg !301
  %iterations4 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 28, !dbg !308
  call void @llvm.dbg.value(metadata ptr %iterations4, metadata !294, metadata !DIExpression()), !dbg !301
  %bound_exchanges5 = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 29, !dbg !309
  call void @llvm.dbg.value(metadata ptr %bound_exchanges5, metadata !295, metadata !DIExpression()), !dbg !301
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_basket) #6, !dbg !310
  call void @llvm.lifetime.start.p0(i64 32488, ptr nonnull %perm) #6, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %perm, metadata !297, metadata !DIExpression()), !dbg !312
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end_arc) #6, !dbg !313
  call void @llvm.dbg.value(metadata ptr %0, metadata !298, metadata !DIExpression()), !dbg !301
  store ptr %0, ptr %end_arc, align 8, !dbg !314, !tbaa !99
  %3 = load ptr, ptr @basket_sizes, align 8, !dbg !315, !tbaa !99
  store i64 0, ptr %3, align 8, !dbg !316, !tbaa !228
  call void @llvm.dbg.value(metadata i64 1, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 1, metadata !299, metadata !DIExpression()), !dbg !301
  %div = sdiv i32 4000, %num_threads
  call void @llvm.dbg.value(metadata i64 1, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 1, metadata !299, metadata !DIExpression()), !dbg !301
  %cmp154 = icmp sgt i32 %div, -60, !dbg !317
  br i1 %cmp154, label %for.body.lr.ph, label %while.cond.preheader, !dbg !320

for.body.lr.ph:                                   ; preds = %entry
  %4 = load ptr, ptr @basket, align 8, !tbaa !99
  %5 = add nsw i32 %div, 61, !dbg !320
  %smax172 = zext i32 %5 to i64, !dbg !320
  br label %for.body, !dbg !320

while.cond.preheader:                             ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata ptr poison, metadata !286, metadata !DIExpression()), !dbg !301
  %.b161 = load i1, ptr @opt, align 8, !dbg !321
  br i1 %.b161, label %while.end, label %while.body.lr.ph, !dbg !322

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %conv12 = sext i32 %num_threads to i64
  %max_elems = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 32
  %add.ptr = getelementptr inbounds ptr, ptr %perm, i64 1
  %cmp19157 = icmp sgt i32 %num_threads, 0
  %cmp38 = icmp eq i32 %num_threads, 1
  %feas_tol = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 16
  br label %while.body, !dbg !322

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %j.0156 = phi i64 [ 1, %for.body.lr.ph ], [ %inc11, %for.body ]
  call void @llvm.dbg.value(metadata i64 %j.0156, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %j.0156, metadata !299, metadata !DIExpression()), !dbg !301
  %arrayidx9 = getelementptr inbounds %struct.basket, ptr %4, i64 %j.0156, !dbg !323
  %arrayidx10 = getelementptr inbounds [4061 x ptr], ptr %perm, i64 0, i64 %j.0156, !dbg !324
  store ptr %arrayidx9, ptr %arrayidx10, align 8, !dbg !325, !tbaa !99
  %inc11 = add nuw nsw i64 %j.0156, 1, !dbg !326
  call void @llvm.dbg.value(metadata i64 %inc11, metadata !299, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %inc11, metadata !300, metadata !DIExpression()), !dbg !301
  %exitcond.not = icmp eq i64 %inc11, %smax172, !dbg !317
  br i1 %exitcond.not, label %while.cond.preheader, label %for.body, !dbg !320, !llvm.loop !327

while.body:                                       ; preds = %if.end99.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %.pre, %if.end99.while.body_crit_edge ], [ %3, %while.body.lr.ph ], !dbg !329
  %7 = load i64, ptr %iterations4, align 8, !dbg !331, !tbaa !228
  %rem = srem i64 %7, %conv12, !dbg !332
  %8 = load i64, ptr %max_elems, align 8, !dbg !333, !tbaa !247
  call void @llvm.dbg.value(metadata ptr %end_arc, metadata !298, metadata !DIExpression(DW_OP_deref)), !dbg !301
  %call = call ptr @primal_bea_mpp(i64 noundef %2, ptr noundef %0, ptr noundef %1, ptr noundef %6, ptr noundef nonnull %perm, i32 noundef 0, ptr noundef nonnull %end_arc, i64 noundef %rem, i64 noundef %conv12, i64 noundef %8) #6, !dbg !334
  %9 = load ptr, ptr @opt_basket, align 8, !dbg !335, !tbaa !99
  store ptr %call, ptr %9, align 8, !dbg !336, !tbaa !99
  %10 = load ptr, ptr @perm_p, align 8, !dbg !337, !tbaa !99
  store ptr %add.ptr, ptr %10, align 8, !dbg !338, !tbaa !99
  call void @llvm.dbg.value(metadata ptr null, metadata !296, metadata !DIExpression()), !dbg !301
  store ptr null, ptr %max_basket, align 8, !dbg !339, !tbaa !99
  call void @llvm.dbg.value(metadata i64 0, metadata !299, metadata !DIExpression()), !dbg !301
  br i1 %cmp19157, label %for.body21, label %if.end99.thread, !dbg !340

for.body21:                                       ; preds = %while.body, %for.inc33
  %11 = phi ptr [ %.pre168, %for.inc33 ], [ null, %while.body ], !dbg !342
  %i.1158 = phi i64 [ %inc34, %for.inc33 ], [ 0, %while.body ]
  call void @llvm.dbg.value(metadata i64 %i.1158, metadata !299, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata ptr %11, metadata !296, metadata !DIExpression()), !dbg !301
  %tobool22.not = icmp eq ptr %11, null, !dbg !342
  %12 = load ptr, ptr @opt_basket, align 8, !dbg !346, !tbaa !99
  %arrayidx23 = getelementptr inbounds ptr, ptr %12, i64 %i.1158
  %13 = load ptr, ptr %arrayidx23, align 8, !dbg !346, !tbaa !99
  %tobool24.not = icmp eq ptr %13, null, !dbg !346
  br i1 %tobool22.not, label %land.lhs.true, label %lor.lhs.false, !dbg !347

land.lhs.true:                                    ; preds = %for.body21
  br i1 %tobool24.not, label %for.inc33, label %if.then, !dbg !348

lor.lhs.false:                                    ; preds = %for.body21
  br i1 %tobool24.not, label %for.inc33, label %land.lhs.true27, !dbg !349

land.lhs.true27:                                  ; preds = %lor.lhs.false
  %arrayidx25 = getelementptr inbounds ptr, ptr %12, i64 %i.1158, !dbg !350
  call void @llvm.dbg.value(metadata ptr %max_basket, metadata !296, metadata !DIExpression(DW_OP_deref)), !dbg !301
  %call29 = call i32 @cost_compare(ptr noundef nonnull %arrayidx25, ptr noundef nonnull %max_basket) #6, !dbg !351
  %cmp30 = icmp slt i32 %call29, 0, !dbg !352
  br i1 %cmp30, label %land.lhs.true27.if.then_crit_edge, label %for.inc33, !dbg !353

land.lhs.true27.if.then_crit_edge:                ; preds = %land.lhs.true27
  %.pre166 = load ptr, ptr @opt_basket, align 8, !dbg !354, !tbaa !99
  %arrayidx32.phi.trans.insert = getelementptr inbounds ptr, ptr %.pre166, i64 %i.1158
  %.pre167 = load ptr, ptr %arrayidx32.phi.trans.insert, align 8, !dbg !354, !tbaa !99
  br label %if.then, !dbg !353

if.then:                                          ; preds = %land.lhs.true27.if.then_crit_edge, %land.lhs.true
  %14 = phi ptr [ %.pre167, %land.lhs.true27.if.then_crit_edge ], [ %13, %land.lhs.true ], !dbg !354
  call void @llvm.dbg.value(metadata ptr %14, metadata !296, metadata !DIExpression()), !dbg !301
  store ptr %14, ptr %max_basket, align 8, !dbg !356, !tbaa !99
  br label %for.inc33, !dbg !357

for.inc33:                                        ; preds = %land.lhs.true, %lor.lhs.false, %land.lhs.true27, %if.then
  %inc34 = add nuw nsw i64 %i.1158, 1, !dbg !358
  call void @llvm.dbg.value(metadata i64 %inc34, metadata !299, metadata !DIExpression()), !dbg !301
  %exitcond162.not = icmp eq i64 %inc34, %conv12, !dbg !359
  %.pre168 = load ptr, ptr %max_basket, align 8, !dbg !360, !tbaa !99
  br i1 %exitcond162.not, label %for.end35, label %for.body21, !dbg !340, !llvm.loop !361

for.end35:                                        ; preds = %for.inc33
  call void @llvm.dbg.value(metadata ptr %.pre168, metadata !296, metadata !DIExpression()), !dbg !301
  %tobool36.not = icmp eq ptr %.pre168, null, !dbg !363
  br i1 %tobool36.not, label %if.end99.thread, label %if.else, !dbg !365

if.else:                                          ; preds = %for.end35
  %cost = getelementptr inbounds %struct.basket, ptr %.pre168, i64 0, i32 1, !dbg !366
  %15 = load i64, ptr %cost, align 8, !dbg !366, !tbaa !368
  call void @llvm.dbg.value(metadata i64 %15, metadata !293, metadata !DIExpression()), !dbg !301
  %16 = load ptr, ptr %.pre168, align 8, !dbg !369, !tbaa !370
  call void @llvm.dbg.value(metadata ptr %16, metadata !286, metadata !DIExpression()), !dbg !301
  br i1 %cmp38, label %if.then40, label %if.end43, !dbg !371

if.then40:                                        ; preds = %if.else
  call void @markBaskets(i64 noundef %conv12), !dbg !372
  br label %if.end43, !dbg !372

if.end43:                                         ; preds = %if.else, %if.then40
  call void @llvm.dbg.value(metadata i64 %15, metadata !293, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata ptr %16, metadata !286, metadata !DIExpression()), !dbg !301
  %cmp44.not = icmp eq i64 %15, 0, !dbg !374
  br i1 %cmp44.not, label %if.end99.thread, label %if.then46, !dbg !376

if.then46:                                        ; preds = %if.end43
  %17 = load i64, ptr %iterations4, align 8, !dbg !377, !tbaa !228
  %inc47 = add nsw i64 %17, 1, !dbg !377
  store i64 %inc47, ptr %iterations4, align 8, !dbg !377, !tbaa !228
  %cmp48 = icmp sgt i64 %15, 0, !dbg !379
  br i1 %cmp48, label %if.then50, label %if.else51, !dbg !381

if.then50:                                        ; preds = %if.then46
  %head = getelementptr inbounds %struct.arc, ptr %16, i64 0, i32 3, !dbg !382
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !301
  %tail = getelementptr inbounds %struct.arc, ptr %16, i64 0, i32 2, !dbg !384
  call void @llvm.dbg.value(metadata ptr undef, metadata !282, metadata !DIExpression()), !dbg !301
  br label %if.end54, !dbg !385

if.else51:                                        ; preds = %if.then46
  %tail52 = getelementptr inbounds %struct.arc, ptr %16, i64 0, i32 2, !dbg !386
  call void @llvm.dbg.value(metadata ptr undef, metadata !279, metadata !DIExpression()), !dbg !301
  %head53 = getelementptr inbounds %struct.arc, ptr %16, i64 0, i32 3, !dbg !388
  call void @llvm.dbg.value(metadata ptr undef, metadata !282, metadata !DIExpression()), !dbg !301
  br label %if.end54

if.end54:                                         ; preds = %if.else51, %if.then50
  %jplus.0.in = phi ptr [ %tail, %if.then50 ], [ %head53, %if.else51 ]
  %iplus.0.in = phi ptr [ %head, %if.then50 ], [ %tail52, %if.else51 ]
  %iplus.0 = load ptr, ptr %iplus.0.in, align 8, !dbg !389, !tbaa !99
  %jplus.0 = load ptr, ptr %jplus.0.in, align 8, !dbg !389, !tbaa !99
  call void @llvm.dbg.value(metadata ptr %iplus.0, metadata !279, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata ptr %jplus.0, metadata !282, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 1, metadata !275, metadata !DIExpression()), !dbg !301
  store i64 1, ptr %delta, align 8, !dbg !390, !tbaa !228
  call void @llvm.dbg.value(metadata ptr %delta, metadata !275, metadata !DIExpression(DW_OP_deref)), !dbg !301
  call void @llvm.dbg.value(metadata ptr %xchange, metadata !277, metadata !DIExpression(DW_OP_deref)), !dbg !301
  call void @llvm.dbg.value(metadata ptr %w, metadata !285, metadata !DIExpression(DW_OP_deref)), !dbg !301
  %call55 = call ptr @primal_iminus(ptr noundef nonnull %delta, ptr noundef nonnull %xchange, ptr noundef %iplus.0, ptr noundef %jplus.0, ptr noundef nonnull %w) #6, !dbg !391
  call void @llvm.dbg.value(metadata ptr %call55, metadata !283, metadata !DIExpression()), !dbg !301
  %tobool56.not = icmp eq ptr %call55, null, !dbg !392
  br i1 %tobool56.not, label %if.then57, label %if.else70, !dbg !394

if.then57:                                        ; preds = %if.end54
  %18 = load i64, ptr %bound_exchanges5, align 8, !dbg !395, !tbaa !228
  %inc58 = add nsw i64 %18, 1, !dbg !395
  store i64 %inc58, ptr %bound_exchanges5, align 8, !dbg !395, !tbaa !228
  %ident = getelementptr inbounds %struct.arc, ptr %16, i64 0, i32 4, !dbg !397
  %19 = load i16, ptr %ident, align 8, !dbg !397, !tbaa !399
  %cmp60 = icmp eq i16 %19, 2, !dbg !403
  %. = select i1 %cmp60, i16 1, i16 2
  store i16 %., ptr %ident, align 8, !dbg !404, !tbaa !399
  %20 = load i64, ptr %delta, align 8, !dbg !405, !tbaa !228
  call void @llvm.dbg.value(metadata i64 %20, metadata !275, metadata !DIExpression()), !dbg !301
  %tobool67.not = icmp eq i64 %20, 0, !dbg !405
  br i1 %tobool67.not, label %if.end99, label %if.then68, !dbg !407

if.then68:                                        ; preds = %if.then57
  %21 = load ptr, ptr %w, align 8, !dbg !408, !tbaa !99
  call void @llvm.dbg.value(metadata ptr %21, metadata !285, metadata !DIExpression()), !dbg !301
  call void @primal_update_flow(ptr noundef %iplus.0, ptr noundef %jplus.0, ptr noundef %21) #6, !dbg !409
  br label %if.end99, !dbg !409

if.else70:                                        ; preds = %if.end54
  %22 = load i64, ptr %xchange, align 8, !dbg !410, !tbaa !228
  call void @llvm.dbg.value(metadata i64 %22, metadata !277, metadata !DIExpression()), !dbg !301
  %tobool71.not = icmp eq i64 %22, 0, !dbg !410
  %spec.select = select i1 %tobool71.not, ptr %jplus.0, ptr %iplus.0, !dbg !413
  %spec.select145 = select i1 %tobool71.not, ptr %iplus.0, ptr %jplus.0, !dbg !413
  call void @llvm.dbg.value(metadata ptr %spec.select145, metadata !279, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !282, metadata !DIExpression()), !dbg !301
  %pred = getelementptr inbounds %struct.node, ptr %call55, i64 0, i32 3, !dbg !414
  %23 = load ptr, ptr %pred, align 8, !dbg !414, !tbaa !415
  call void @llvm.dbg.value(metadata ptr %23, metadata !284, metadata !DIExpression()), !dbg !301
  %basic_arc = getelementptr inbounds %struct.node, ptr %call55, i64 0, i32 6, !dbg !417
  %24 = load ptr, ptr %basic_arc, align 8, !dbg !417, !tbaa !418
  call void @llvm.dbg.value(metadata ptr %24, metadata !287, metadata !DIExpression()), !dbg !301
  %orientation = getelementptr inbounds %struct.node, ptr %call55, i64 0, i32 1, !dbg !419
  %25 = load i32, ptr %orientation, align 8, !dbg !419, !tbaa !421
  %conv74 = sext i32 %25 to i64, !dbg !422
  %cmp75.not = icmp eq i64 %22, %conv74, !dbg !423
  %spec.select147 = select i1 %cmp75.not, i16 2, i16 1, !dbg !424
  call void @llvm.dbg.value(metadata i64 undef, metadata !292, metadata !DIExpression()), !dbg !301
  %26 = load i64, ptr %delta, align 8, !dbg !425, !tbaa !228
  call void @llvm.dbg.value(metadata i64 %26, metadata !275, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %26, metadata !275, metadata !DIExpression()), !dbg !301
  %sub = sub nsw i64 1, %26
  %spec.select173 = select i1 %cmp48, i64 %sub, i64 %26, !dbg !427
  call void @llvm.dbg.value(metadata i64 %spec.select173, metadata !276, metadata !DIExpression()), !dbg !301
  %tail85 = getelementptr inbounds %struct.arc, ptr %16, i64 0, i32 2, !dbg !428
  %27 = load ptr, ptr %tail85, align 8, !dbg !428, !tbaa !430
  %cmp86 = icmp eq ptr %27, %spec.select145, !dbg !431
  %.146 = zext i1 %cmp86 to i64
  call void @llvm.dbg.value(metadata i64 %.146, metadata !278, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %22, metadata !277, metadata !DIExpression()), !dbg !301
  %28 = zext i1 %tobool71.not to i64
  call void @llvm.dbg.value(metadata i64 %26, metadata !275, metadata !DIExpression()), !dbg !301
  %29 = load ptr, ptr %w, align 8, !dbg !432, !tbaa !99
  call void @llvm.dbg.value(metadata ptr %29, metadata !285, metadata !DIExpression()), !dbg !301
  %30 = load i64, ptr %feas_tol, align 8, !dbg !433, !tbaa !434
  call void @update_tree(i64 noundef %28, i64 noundef %.146, i64 noundef %26, i64 noundef %spec.select173, ptr noundef %spec.select145, ptr noundef %spec.select, ptr noundef nonnull %call55, ptr noundef %23, ptr noundef %29, ptr noundef %16, i64 noundef %15, i64 noundef %30) #6, !dbg !435
  %ident94 = getelementptr inbounds %struct.arc, ptr %16, i64 0, i32 4, !dbg !436
  store i16 0, ptr %ident94, align 8, !dbg !437, !tbaa !399
  %ident96 = getelementptr inbounds %struct.arc, ptr %24, i64 0, i32 4, !dbg !438
  store i16 %spec.select147, ptr %ident96, align 8, !dbg !439, !tbaa !399
  br label %if.end99

if.end99.thread:                                  ; preds = %if.end43, %for.end35, %while.body
  store i1 true, ptr @opt, align 8, !dbg !440
  call void @llvm.dbg.value(metadata ptr poison, metadata !286, metadata !DIExpression()), !dbg !301
  br label %while.end, !dbg !322

if.end99:                                         ; preds = %if.else70, %if.then68, %if.then57
  %.b.pr = load i1, ptr @opt, align 8, !dbg !321
  call void @llvm.dbg.value(metadata ptr poison, metadata !286, metadata !DIExpression()), !dbg !301
  br i1 %.b.pr, label %while.end, label %if.end99.while.body_crit_edge, !dbg !322, !llvm.loop !441

if.end99.while.body_crit_edge:                    ; preds = %if.end99
  %.pre = load ptr, ptr @basket_sizes, align 8, !dbg !329, !tbaa !99
  br label %while.body, !dbg !322

while.end:                                        ; preds = %if.end99, %if.end99.thread, %while.cond.preheader
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end_arc) #6, !dbg !443
  call void @llvm.lifetime.end.p0(i64 32488, ptr nonnull %perm) #6, !dbg !443
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_basket) #6, !dbg !443
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %w) #6, !dbg !443
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xchange) #6, !dbg !443
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %delta) #6, !dbg !443
  ret void, !dbg !443
}

declare !dbg !444 ptr @primal_iminus(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !450 void @primal_update_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !454 void @update_tree(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @primal_net_simplex(ptr noundef %net) local_unnamed_addr #0 !dbg !458 {
entry:
  call void @llvm.dbg.value(metadata ptr %net, metadata !462, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata i32 1, metadata !464, metadata !DIExpression()), !dbg !465
  %call = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #7, !dbg !466
  store ptr %call, ptr @perm_p, align 8, !dbg !467, !tbaa !99
  %call2 = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #7, !dbg !468
  store ptr %call2, ptr @opt_basket, align 8, !dbg !469, !tbaa !99
  %call4 = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #7, !dbg !470
  store ptr %call4, ptr @basket_sizes, align 8, !dbg !471, !tbaa !99
  %call8 = tail call noalias dereferenceable_or_null(136352) ptr @calloc(i64 noundef 4261, i64 noundef 32) #7, !dbg !472
  store ptr %call8, ptr @basket, align 8, !dbg !473, !tbaa !99
  %arcs = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 23, !dbg !474
  %0 = load ptr, ptr %arcs, align 8, !dbg !474, !tbaa !214
  tail call void @set_static_vars(ptr noundef %net, ptr noundef %0) #6, !dbg !475
  call void @llvm.dbg.value(metadata i32 0, metadata !463, metadata !DIExpression()), !dbg !465
  tail call void @master(ptr noundef %net, i32 noundef 1), !dbg !476
  %call10 = tail call i64 @primal_feasible(ptr noundef %net) #6, !dbg !479
  %call11 = tail call i64 @dual_feasible(ptr noundef %net) #6, !dbg !480
  store i1 false, ptr @opt, align 8, !dbg !481
  %1 = load ptr, ptr @perm_p, align 8, !dbg !482, !tbaa !99
  tail call void @free(ptr noundef %1) #6, !dbg !483
  %2 = load ptr, ptr @opt_basket, align 8, !dbg !484, !tbaa !99
  tail call void @free(ptr noundef %2) #6, !dbg !485
  %3 = load ptr, ptr @basket_sizes, align 8, !dbg !486, !tbaa !99
  tail call void @free(ptr noundef %3) #6, !dbg !487
  %4 = load ptr, ptr @basket, align 8, !dbg !488, !tbaa !99
  tail call void @free(ptr noundef %4) #6, !dbg !489
  ret i64 0, !dbg !490
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !491 void @set_static_vars(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !494 i64 @primal_feasible(ptr noundef) local_unnamed_addr #3

declare !dbg !496 i64 @dual_feasible(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "perm_p", scope: !2, file: !62, line: 30, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !59, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/psimplex.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r", checksumkind: CSK_MD5, checksum: "cae1ac12ce2300f66d85771ef1d03a22")
!4 = !{!5, !12, !13, !58, !14}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !6, line: 97, baseType: !7)
!6 = !DIFile(filename: "apps/505.mcf_r/src/defines.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "05eeb7bba098b08025cbe048b289d372")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !10, line: 44, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!11 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "BASKET", file: !6, line: 146, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basket", file: !6, line: 140, size: 256, elements: !17)
!17 = !{!18, !55, !56, !57}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !16, file: !6, line: 142, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_t", file: !6, line: 137, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !6, line: 168, size: 576, elements: !22)
!22 = !{!23, !25, !27, !48, !49, !51, !52, !53, !54}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !21, file: !6, line: 170, baseType: !24, size: 32)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !21, file: !6, line: 171, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !6, line: 98, baseType: !7)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !21, file: !6, line: 172, baseType: !28, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !6, line: 135, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !6, line: 149, size: 832, elements: !31)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !41, !42, !43, !44, !45, !46, !47}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !30, file: !6, line: 151, baseType: !26, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !30, file: !6, line: 152, baseType: !24, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !30, file: !6, line: 153, baseType: !28, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !30, file: !6, line: 154, baseType: !28, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !30, file: !6, line: 155, baseType: !28, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !30, file: !6, line: 156, baseType: !28, size: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !30, file: !6, line: 157, baseType: !39, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !6, line: 138, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !30, file: !6, line: 158, baseType: !39, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !30, file: !6, line: 158, baseType: !39, size: 64, offset: 512)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !30, file: !6, line: 159, baseType: !39, size: 64, offset: 576)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !30, file: !6, line: 160, baseType: !5, size: 64, offset: 640)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !30, file: !6, line: 161, baseType: !7, size: 64, offset: 704)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !30, file: !6, line: 162, baseType: !24, size: 32, offset: 768)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !30, file: !6, line: 163, baseType: !24, size: 32, offset: 800)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !21, file: !6, line: 172, baseType: !28, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !21, file: !6, line: 173, baseType: !50, size: 16, offset: 256)
!50 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !21, file: !6, line: 174, baseType: !39, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !21, file: !6, line: 174, baseType: !39, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !21, file: !6, line: 175, baseType: !5, size: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !21, file: !6, line: 176, baseType: !26, size: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !16, file: !6, line: 143, baseType: !26, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "abs_cost", scope: !16, file: !6, line: 144, baseType: !26, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !16, file: !6, line: 145, baseType: !7, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!59 = !{!60, !0, !63, !65, !67}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "opt_basket", scope: !2, file: !62, line: 29, type: !13, isLocal: true, isDefinition: true)
!62 = !DIFile(filename: "apps/505.mcf_r/src/psimplex.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cae1ac12ce2300f66d85771ef1d03a22")
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "basket_sizes", scope: !2, file: !62, line: 31, type: !58, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "basket", scope: !2, file: !62, line: 33, type: !14, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "opt", scope: !2, file: !62, line: 32, type: !7, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!70 = !{i32 7, !"Dwarf Version", i32 5}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{i32 1, !"wchar_size", i32 4}
!73 = !{i32 7, !"PIC Level", i32 2}
!74 = !{i32 7, !"PIE Level", i32 2}
!75 = !{i32 7, !"uwtable", i32 2}
!76 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!77 = distinct !DISubprogram(name: "markBaskets", scope: !62, file: !62, line: 36, type: !78, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !7}
!80 = !{!81, !82, !83, !84, !85, !86}
!81 = !DILocalVariable(name: "num_threads", arg: 1, scope: !77, file: !62, line: 36, type: !7)
!82 = !DILocalVariable(name: "i", scope: !77, file: !62, line: 42, type: !7)
!83 = !DILocalVariable(name: "j", scope: !77, file: !62, line: 42, type: !7)
!84 = !DILocalVariable(name: "max_pos", scope: !77, file: !62, line: 42, type: !7)
!85 = !DILocalVariable(name: "max", scope: !77, file: !62, line: 43, type: !14)
!86 = !DILocalVariable(name: "act", scope: !77, file: !62, line: 43, type: !14)
!87 = !DILocation(line: 0, scope: !77)
!88 = !DILocation(line: 43, column: 5, scope: !77)
!89 = !DILocation(line: 53, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !62, line: 53, column: 9)
!91 = distinct !DILexicalBlock(scope: !92, file: !62, line: 45, column: 27)
!92 = distinct !DILexicalBlock(scope: !93, file: !62, line: 45, column: 5)
!93 = distinct !DILexicalBlock(scope: !77, file: !62, line: 45, column: 5)
!94 = !DILocation(line: 54, column: 18, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !62, line: 53, column: 43)
!96 = distinct !DILexicalBlock(scope: !90, file: !62, line: 53, column: 9)
!97 = !DILocation(line: 46, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !91, file: !62, line: 46, column: 11)
!99 = !{!100, !100, i64 0}
!100 = !{!"any pointer", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !DILocation(line: 46, column: 12, scope: !98)
!104 = !DILocation(line: 46, column: 25, scope: !98)
!105 = !{!106, !107, i64 24}
!106 = !{!"basket", !100, i64 0, !107, i64 8, !107, i64 16, !107, i64 24}
!107 = !{!"long", !101, i64 0}
!108 = !DILocation(line: 46, column: 32, scope: !98)
!109 = !DILocation(line: 0, scope: !98)
!110 = !DILocation(line: 67, column: 14, scope: !91)
!111 = !DILocation(line: 67, column: 21, scope: !91)
!112 = !DILocation(line: 68, column: 10, scope: !91)
!113 = !DILocation(line: 68, column: 26, scope: !91)
!114 = !DILocation(line: 45, column: 23, scope: !92)
!115 = !DILocation(line: 45, column: 17, scope: !92)
!116 = !DILocation(line: 45, column: 5, scope: !93)
!117 = distinct !{!117, !116, !118, !119, !120}
!118 = !DILocation(line: 69, column: 5, scope: !93)
!119 = !{!"llvm.loop.mustprogress"}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = !DILocation(line: 54, column: 17, scope: !95)
!122 = !DILocation(line: 54, column: 15, scope: !95)
!123 = !DILocation(line: 55, column: 20, scope: !124)
!124 = distinct !DILexicalBlock(scope: !95, file: !62, line: 55, column: 15)
!125 = !DILocation(line: 55, column: 27, scope: !124)
!126 = !DILocation(line: 55, column: 15, scope: !95)
!127 = !DILocation(line: 56, column: 22, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !62, line: 56, column: 21)
!129 = distinct !DILexicalBlock(scope: !124, file: !62, line: 55, column: 33)
!130 = !DILocation(line: 56, column: 26, scope: !128)
!131 = !DILocation(line: 56, column: 29, scope: !128)
!132 = !DILocation(line: 56, column: 54, scope: !128)
!133 = !DILocation(line: 56, column: 21, scope: !129)
!134 = !DILocation(line: 57, column: 27, scope: !135)
!135 = distinct !DILexicalBlock(scope: !128, file: !62, line: 56, column: 59)
!136 = !DILocation(line: 57, column: 25, scope: !135)
!137 = !DILocation(line: 59, column: 17, scope: !135)
!138 = !DILocation(line: 0, scope: !91)
!139 = !DILocation(line: 53, column: 39, scope: !96)
!140 = !DILocation(line: 53, column: 23, scope: !96)
!141 = distinct !{!141, !89, !142, !119, !120}
!142 = !DILocation(line: 61, column: 9, scope: !90)
!143 = !DILocation(line: 63, column: 12, scope: !144)
!144 = distinct !DILexicalBlock(scope: !91, file: !62, line: 63, column: 11)
!145 = !DILocation(line: 63, column: 11, scope: !91)
!146 = !DILocation(line: 70, column: 1, scope: !77)
!147 = !DISubprogram(name: "cost_compare", scope: !148, file: !148, line: 33, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
!148 = !DIFile(filename: "apps/505.mcf_r/src/pbeampp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "78005d84781db2f8b424d1e0780a6648")
!149 = !DISubroutineType(types: !150)
!150 = !{!24, !13, !13}
!151 = !{}
!152 = distinct !DISubprogram(name: "worker", scope: !62, file: !62, line: 87, type: !153, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !155, !24, !24}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !6, line: 206, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !6, line: 181, size: 5184, elements: !158)
!158 = !{!159, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !157, file: !6, line: 183, baseType: !160, size: 1600)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1600, elements: !162)
!161 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!162 = !{!163}
!163 = !DISubrange(count: 200)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !157, file: !6, line: 184, baseType: !160, size: 1600, offset: 1600)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !157, file: !6, line: 185, baseType: !7, size: 64, offset: 3200)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !157, file: !6, line: 185, baseType: !7, size: 64, offset: 3264)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !157, file: !6, line: 186, baseType: !7, size: 64, offset: 3328)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !157, file: !6, line: 186, baseType: !7, size: 64, offset: 3392)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !157, file: !6, line: 186, baseType: !7, size: 64, offset: 3456)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !157, file: !6, line: 186, baseType: !7, size: 64, offset: 3520)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "max_residual_new_m", scope: !157, file: !6, line: 187, baseType: !7, size: 64, offset: 3584)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "max_new_m", scope: !157, file: !6, line: 187, baseType: !7, size: 64, offset: 3648)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !157, file: !6, line: 189, baseType: !7, size: 64, offset: 3712)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !157, file: !6, line: 190, baseType: !7, size: 64, offset: 3776)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !157, file: !6, line: 191, baseType: !7, size: 64, offset: 3840)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !157, file: !6, line: 192, baseType: !7, size: 64, offset: 3904)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !157, file: !6, line: 193, baseType: !7, size: 64, offset: 3968)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !157, file: !6, line: 194, baseType: !7, size: 64, offset: 4032)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !157, file: !6, line: 195, baseType: !7, size: 64, offset: 4096)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !157, file: !6, line: 196, baseType: !7, size: 64, offset: 4160)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !157, file: !6, line: 197, baseType: !7, size: 64, offset: 4224)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !157, file: !6, line: 198, baseType: !183, size: 64, offset: 4288)
!183 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !157, file: !6, line: 199, baseType: !26, size: 64, offset: 4352)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !157, file: !6, line: 200, baseType: !28, size: 64, offset: 4416)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !157, file: !6, line: 200, baseType: !28, size: 64, offset: 4480)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !157, file: !6, line: 201, baseType: !39, size: 64, offset: 4544)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !157, file: !6, line: 201, baseType: !39, size: 64, offset: 4608)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sorted_arcs", scope: !157, file: !6, line: 201, baseType: !39, size: 64, offset: 4672)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !157, file: !6, line: 202, baseType: !39, size: 64, offset: 4736)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !157, file: !6, line: 202, baseType: !39, size: 64, offset: 4800)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !157, file: !6, line: 203, baseType: !7, size: 64, offset: 4864)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !157, file: !6, line: 204, baseType: !7, size: 64, offset: 4928)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_group", scope: !157, file: !6, line: 205, baseType: !7, size: 64, offset: 4992)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "full_groups", scope: !157, file: !6, line: 205, baseType: !7, size: 64, offset: 5056)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !157, file: !6, line: 205, baseType: !7, size: 64, offset: 5120)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !209, !210, !211}
!198 = !DILocalVariable(name: "net", arg: 1, scope: !152, file: !62, line: 87, type: !155)
!199 = !DILocalVariable(name: "thread", arg: 2, scope: !152, file: !62, line: 87, type: !24)
!200 = !DILocalVariable(name: "num_threads", arg: 3, scope: !152, file: !62, line: 87, type: !24)
!201 = !DILocalVariable(name: "arcs", scope: !152, file: !62, line: 95, type: !19)
!202 = !DILocalVariable(name: "stop_arcs", scope: !152, file: !62, line: 96, type: !19)
!203 = !DILocalVariable(name: "m", scope: !152, file: !62, line: 97, type: !7)
!204 = !DILocalVariable(name: "iterations", scope: !152, file: !62, line: 98, type: !58)
!205 = !DILocalVariable(name: "perm", scope: !152, file: !62, line: 99, type: !206)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 259904, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 4061)
!209 = !DILocalVariable(name: "end_arc", scope: !152, file: !62, line: 100, type: !19)
!210 = !DILocalVariable(name: "i", scope: !152, file: !62, line: 101, type: !7)
!211 = !DILocalVariable(name: "j", scope: !152, file: !62, line: 101, type: !7)
!212 = !DILocation(line: 0, scope: !152)
!213 = !DILocation(line: 95, column: 39, scope: !152)
!214 = !{!215, !100, i64 568}
!215 = !{!"network", !101, i64 0, !101, i64 200, !107, i64 400, !107, i64 408, !107, i64 416, !107, i64 424, !107, i64 432, !107, i64 440, !107, i64 448, !107, i64 456, !107, i64 464, !107, i64 472, !107, i64 480, !107, i64 488, !107, i64 496, !107, i64 504, !107, i64 512, !107, i64 520, !107, i64 528, !216, i64 536, !107, i64 544, !100, i64 552, !100, i64 560, !100, i64 568, !100, i64 576, !100, i64 584, !100, i64 592, !100, i64 600, !107, i64 608, !107, i64 616, !107, i64 624, !107, i64 632, !107, i64 640}
!216 = !{!"double", !101, i64 0}
!217 = !DILocation(line: 96, column: 39, scope: !152)
!218 = !{!215, !100, i64 576}
!219 = !DILocation(line: 97, column: 26, scope: !152)
!220 = !{!215, !107, i64 424}
!221 = !DILocation(line: 98, column: 38, scope: !152)
!222 = !DILocation(line: 99, column: 3, scope: !152)
!223 = !DILocation(line: 99, column: 18, scope: !152)
!224 = !DILocation(line: 100, column: 3, scope: !152)
!225 = !DILocation(line: 100, column: 18, scope: !152)
!226 = !DILocation(line: 103, column: 3, scope: !152)
!227 = !DILocation(line: 103, column: 24, scope: !152)
!228 = !{!107, !107, i64 0}
!229 = !DILocation(line: 104, column: 23, scope: !230)
!230 = distinct !DILexicalBlock(scope: !152, file: !62, line: 104, column: 3)
!231 = !DILocation(line: 104, column: 62, scope: !232)
!232 = distinct !DILexicalBlock(scope: !230, file: !62, line: 104, column: 3)
!233 = !DILocation(line: 104, column: 3, scope: !230)
!234 = !DILocation(line: 104, column: 40, scope: !230)
!235 = !DILocation(line: 104, column: 19, scope: !230)
!236 = !DILocation(line: 104, column: 50, scope: !230)
!237 = !DILocation(line: 104, column: 12, scope: !230)
!238 = !DILocation(line: 107, column: 11, scope: !152)
!239 = !DILocation(line: 107, column: 3, scope: !152)
!240 = !DILocation(line: 113, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !152, file: !62, line: 107, column: 16)
!242 = !DILocation(line: 108, column: 62, scope: !241)
!243 = !DILocation(line: 108, column: 101, scope: !241)
!244 = !DILocation(line: 108, column: 113, scope: !241)
!245 = !DILocation(line: 108, column: 123, scope: !241)
!246 = !DILocation(line: 108, column: 156, scope: !241)
!247 = !{!215, !107, i64 640}
!248 = !DILocation(line: 108, column: 26, scope: !241)
!249 = !DILocation(line: 108, column: 5, scope: !241)
!250 = !DILocation(line: 108, column: 24, scope: !241)
!251 = !DILocation(line: 109, column: 5, scope: !241)
!252 = !DILocation(line: 109, column: 20, scope: !241)
!253 = !DILocation(line: 114, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !241, file: !62, line: 113, column: 9)
!255 = distinct !{!255, !239, !256, !119, !120}
!256 = !DILocation(line: 119, column: 3, scope: !152)
!257 = !DILocation(line: 105, column: 17, scope: !232)
!258 = !DILocation(line: 105, column: 5, scope: !232)
!259 = !DILocation(line: 105, column: 13, scope: !232)
!260 = !DILocation(line: 104, column: 84, scope: !232)
!261 = !DILocation(line: 104, column: 89, scope: !232)
!262 = distinct !{!262, !233, !263, !119, !120}
!263 = !DILocation(line: 105, column: 26, scope: !230)
!264 = !DILocation(line: 121, column: 1, scope: !152)
!265 = !DISubprogram(name: "primal_bea_mpp", scope: !148, file: !148, line: 31, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
!266 = !DISubroutineType(types: !267)
!267 = !{!14, !7, !19, !19, !58, !13, !24, !268, !7, !7, !7}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!269 = distinct !DISubprogram(name: "master", scope: !62, file: !62, line: 124, type: !270, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !155, !24}
!272 = !{!273, !274, !275, !276, !277, !278, !279, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!273 = !DILocalVariable(name: "net", arg: 1, scope: !269, file: !62, line: 124, type: !155)
!274 = !DILocalVariable(name: "num_threads", arg: 2, scope: !269, file: !62, line: 124, type: !24)
!275 = !DILocalVariable(name: "delta", scope: !269, file: !62, line: 132, type: !5)
!276 = !DILocalVariable(name: "new_flow", scope: !269, file: !62, line: 133, type: !5)
!277 = !DILocalVariable(name: "xchange", scope: !269, file: !62, line: 134, type: !7)
!278 = !DILocalVariable(name: "new_orientation", scope: !269, file: !62, line: 135, type: !7)
!279 = !DILocalVariable(name: "iplus", scope: !269, file: !62, line: 136, type: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !6, line: 134, baseType: !30)
!282 = !DILocalVariable(name: "jplus", scope: !269, file: !62, line: 137, type: !280)
!283 = !DILocalVariable(name: "iminus", scope: !269, file: !62, line: 138, type: !280)
!284 = !DILocalVariable(name: "jminus", scope: !269, file: !62, line: 139, type: !280)
!285 = !DILocalVariable(name: "w", scope: !269, file: !62, line: 140, type: !280)
!286 = !DILocalVariable(name: "bea", scope: !269, file: !62, line: 141, type: !19)
!287 = !DILocalVariable(name: "bla", scope: !269, file: !62, line: 142, type: !19)
!288 = !DILocalVariable(name: "arcs", scope: !269, file: !62, line: 143, type: !19)
!289 = !DILocalVariable(name: "stop_arcs", scope: !269, file: !62, line: 144, type: !19)
!290 = !DILocalVariable(name: "temp", scope: !269, file: !62, line: 145, type: !280)
!291 = !DILocalVariable(name: "m", scope: !269, file: !62, line: 146, type: !7)
!292 = !DILocalVariable(name: "new_set", scope: !269, file: !62, line: 147, type: !7)
!293 = !DILocalVariable(name: "red_cost_of_bea", scope: !269, file: !62, line: 148, type: !26)
!294 = !DILocalVariable(name: "iterations", scope: !269, file: !62, line: 149, type: !58)
!295 = !DILocalVariable(name: "bound_exchanges", scope: !269, file: !62, line: 150, type: !58)
!296 = !DILocalVariable(name: "max_basket", scope: !269, file: !62, line: 151, type: !14)
!297 = !DILocalVariable(name: "perm", scope: !269, file: !62, line: 152, type: !206)
!298 = !DILocalVariable(name: "end_arc", scope: !269, file: !62, line: 153, type: !19)
!299 = !DILocalVariable(name: "i", scope: !269, file: !62, line: 154, type: !7)
!300 = !DILocalVariable(name: "j", scope: !269, file: !62, line: 154, type: !7)
!301 = !DILocation(line: 0, scope: !269)
!302 = !DILocation(line: 132, column: 3, scope: !269)
!303 = !DILocation(line: 134, column: 3, scope: !269)
!304 = !DILocation(line: 140, column: 3, scope: !269)
!305 = !DILocation(line: 143, column: 39, scope: !269)
!306 = !DILocation(line: 144, column: 39, scope: !269)
!307 = !DILocation(line: 146, column: 26, scope: !269)
!308 = !DILocation(line: 149, column: 38, scope: !269)
!309 = !DILocation(line: 150, column: 43, scope: !269)
!310 = !DILocation(line: 151, column: 3, scope: !269)
!311 = !DILocation(line: 152, column: 3, scope: !269)
!312 = !DILocation(line: 152, column: 18, scope: !269)
!313 = !DILocation(line: 153, column: 3, scope: !269)
!314 = !DILocation(line: 153, column: 18, scope: !269)
!315 = !DILocation(line: 162, column: 3, scope: !269)
!316 = !DILocation(line: 162, column: 19, scope: !269)
!317 = !DILocation(line: 163, column: 22, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !62, line: 163, column: 3)
!319 = distinct !DILexicalBlock(scope: !269, file: !62, line: 163, column: 3)
!320 = !DILocation(line: 163, column: 3, scope: !319)
!321 = !DILocation(line: 169, column: 11, scope: !269)
!322 = !DILocation(line: 169, column: 3, scope: !269)
!323 = !DILocation(line: 164, column: 17, scope: !318)
!324 = !DILocation(line: 164, column: 5, scope: !318)
!325 = !DILocation(line: 164, column: 13, scope: !318)
!326 = !DILocation(line: 163, column: 50, scope: !318)
!327 = distinct !{!327, !320, !328, !119, !120}
!328 = !DILocation(line: 164, column: 26, scope: !319)
!329 = !DILocation(line: 176, column: 57, scope: !330)
!330 = distinct !DILexicalBlock(scope: !269, file: !62, line: 170, column: 3)
!331 = !DILocation(line: 176, column: 91, scope: !330)
!332 = !DILocation(line: 176, column: 104, scope: !330)
!333 = !DILocation(line: 176, column: 137, scope: !330)
!334 = !DILocation(line: 176, column: 21, scope: !330)
!335 = !DILocation(line: 176, column: 5, scope: !330)
!336 = !DILocation(line: 176, column: 19, scope: !330)
!337 = !DILocation(line: 182, column: 5, scope: !330)
!338 = !DILocation(line: 182, column: 15, scope: !330)
!339 = !DILocation(line: 187, column: 16, scope: !330)
!340 = !DILocation(line: 188, column: 5, scope: !341)
!341 = distinct !DILexicalBlock(scope: !330, file: !62, line: 188, column: 5)
!342 = !DILocation(line: 189, column: 13, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !62, line: 189, column: 11)
!344 = distinct !DILexicalBlock(scope: !345, file: !62, line: 188, column: 38)
!345 = distinct !DILexicalBlock(scope: !341, file: !62, line: 188, column: 5)
!346 = !DILocation(line: 0, scope: !343)
!347 = !DILocation(line: 189, column: 24, scope: !343)
!348 = !DILocation(line: 189, column: 42, scope: !343)
!349 = !DILocation(line: 189, column: 60, scope: !343)
!350 = !DILocation(line: 189, column: 46, scope: !343)
!351 = !DILocation(line: 189, column: 63, scope: !343)
!352 = !DILocation(line: 189, column: 105, scope: !343)
!353 = !DILocation(line: 189, column: 11, scope: !344)
!354 = !DILocation(line: 190, column: 22, scope: !355)
!355 = distinct !DILexicalBlock(scope: !343, file: !62, line: 189, column: 111)
!356 = !DILocation(line: 190, column: 20, scope: !355)
!357 = !DILocation(line: 191, column: 7, scope: !355)
!358 = !DILocation(line: 188, column: 34, scope: !345)
!359 = !DILocation(line: 188, column: 18, scope: !345)
!360 = !DILocation(line: 0, scope: !330)
!361 = distinct !{!361, !340, !362, !119, !120}
!362 = !DILocation(line: 192, column: 5, scope: !341)
!363 = !DILocation(line: 193, column: 10, scope: !364)
!364 = distinct !DILexicalBlock(scope: !330, file: !62, line: 193, column: 9)
!365 = !DILocation(line: 193, column: 9, scope: !330)
!366 = !DILocation(line: 198, column: 37, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !62, line: 197, column: 10)
!368 = !{!106, !107, i64 8}
!369 = !DILocation(line: 199, column: 25, scope: !367)
!370 = !{!106, !100, i64 0}
!371 = !DILocation(line: 201, column: 11, scope: !367)
!372 = !DILocation(line: 202, column: 11, scope: !373)
!373 = distinct !DILexicalBlock(scope: !367, file: !62, line: 201, column: 11)
!374 = !DILocation(line: 206, column: 25, scope: !375)
!375 = distinct !DILexicalBlock(scope: !330, file: !62, line: 206, column: 9)
!376 = !DILocation(line: 206, column: 9, scope: !330)
!377 = !DILocation(line: 208, column: 20, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !62, line: 207, column: 5)
!379 = !DILocation(line: 216, column: 27, scope: !380)
!380 = distinct !DILexicalBlock(scope: !378, file: !62, line: 216, column: 11)
!381 = !DILocation(line: 216, column: 11, scope: !378)
!382 = !DILocation(line: 218, column: 22, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !62, line: 217, column: 7)
!384 = !DILocation(line: 219, column: 22, scope: !383)
!385 = !DILocation(line: 220, column: 7, scope: !383)
!386 = !DILocation(line: 223, column: 22, scope: !387)
!387 = distinct !DILexicalBlock(scope: !380, file: !62, line: 222, column: 7)
!388 = !DILocation(line: 224, column: 22, scope: !387)
!389 = !DILocation(line: 0, scope: !380)
!390 = !DILocation(line: 227, column: 13, scope: !378)
!391 = !DILocation(line: 228, column: 16, scope: !378)
!392 = !DILocation(line: 231, column: 12, scope: !393)
!393 = distinct !DILexicalBlock(scope: !378, file: !62, line: 231, column: 11)
!394 = !DILocation(line: 231, column: 11, scope: !378)
!395 = !DILocation(line: 233, column: 27, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !62, line: 232, column: 7)
!397 = !DILocation(line: 235, column: 18, scope: !398)
!398 = distinct !DILexicalBlock(scope: !396, file: !62, line: 235, column: 13)
!399 = !{!400, !402, i64 32}
!400 = !{!"arc", !401, i64 0, !107, i64 8, !100, i64 16, !100, i64 24, !402, i64 32, !100, i64 40, !100, i64 48, !107, i64 56, !107, i64 64}
!401 = !{!"int", !101, i64 0}
!402 = !{!"short", !101, i64 0}
!403 = !DILocation(line: 235, column: 24, scope: !398)
!404 = !DILocation(line: 0, scope: !398)
!405 = !DILocation(line: 240, column: 13, scope: !406)
!406 = distinct !DILexicalBlock(scope: !396, file: !62, line: 240, column: 13)
!407 = !DILocation(line: 240, column: 13, scope: !396)
!408 = !DILocation(line: 241, column: 45, scope: !406)
!409 = !DILocation(line: 241, column: 11, scope: !406)
!410 = !DILocation(line: 245, column: 13, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !62, line: 245, column: 13)
!412 = distinct !DILexicalBlock(scope: !393, file: !62, line: 244, column: 7)
!413 = !DILocation(line: 245, column: 13, scope: !412)
!414 = !DILocation(line: 252, column: 26, scope: !412)
!415 = !{!416, !100, i64 24}
!416 = !{!"node", !107, i64 0, !401, i64 8, !100, i64 16, !100, i64 24, !100, i64 32, !100, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !100, i64 72, !107, i64 80, !107, i64 88, !401, i64 96, !401, i64 100}
!417 = !DILocation(line: 254, column: 23, scope: !412)
!418 = !{!416, !100, i64 48}
!419 = !DILocation(line: 256, column: 32, scope: !420)
!420 = distinct !DILexicalBlock(scope: !412, file: !62, line: 256, column: 13)
!421 = !{!416, !401, i64 8}
!422 = !DILocation(line: 256, column: 24, scope: !420)
!423 = !DILocation(line: 256, column: 21, scope: !420)
!424 = !DILocation(line: 256, column: 13, scope: !412)
!425 = !DILocation(line: 0, scope: !426)
!426 = distinct !DILexicalBlock(scope: !412, file: !62, line: 261, column: 13)
!427 = !DILocation(line: 261, column: 13, scope: !412)
!428 = !DILocation(line: 266, column: 18, scope: !429)
!429 = distinct !DILexicalBlock(scope: !412, file: !62, line: 266, column: 13)
!430 = !{!400, !100, i64 16}
!431 = !DILocation(line: 266, column: 23, scope: !429)
!432 = !DILocation(line: 273, column: 21, scope: !412)
!433 = !DILocation(line: 274, column: 26, scope: !412)
!434 = !{!215, !107, i64 512}
!435 = !DILocation(line: 271, column: 9, scope: !412)
!436 = !DILocation(line: 276, column: 14, scope: !412)
!437 = !DILocation(line: 276, column: 20, scope: !412)
!438 = !DILocation(line: 277, column: 14, scope: !412)
!439 = !DILocation(line: 277, column: 20, scope: !412)
!440 = !DILocation(line: 281, column: 11, scope: !375)
!441 = distinct !{!441, !322, !442, !119, !120}
!442 = !DILocation(line: 287, column: 3, scope: !269)
!443 = !DILocation(line: 297, column: 1, scope: !269)
!444 = !DISubprogram(name: "primal_iminus", scope: !445, file: !445, line: 31, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
!445 = !DIFile(filename: "apps/505.mcf_r/src/pbla.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1cb7a6cd19ab0abb77334507947cbc56")
!446 = !DISubroutineType(types: !447)
!447 = !{!280, !448, !58, !280, !280, !449}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!450 = !DISubprogram(name: "primal_update_flow", scope: !451, file: !451, line: 31, type: !452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
!451 = !DIFile(filename: "apps/505.mcf_r/src/pflowup.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9ffbe033b5e05b65e43e8541b4dfdc08")
!452 = !DISubroutineType(types: !453)
!453 = !{null, !280, !280, !280}
!454 = !DISubprogram(name: "update_tree", scope: !455, file: !455, line: 31, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
!455 = !DIFile(filename: "apps/505.mcf_r/src/treeup.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "98227dea2349817c2579d89641e7aaee")
!456 = !DISubroutineType(types: !457)
!457 = !{null, !7, !7, !5, !5, !280, !280, !280, !280, !280, !19, !26, !5}
!458 = distinct !DISubprogram(name: "primal_net_simplex", scope: !62, file: !62, line: 300, type: !459, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!7, !155}
!461 = !{!462, !463, !464}
!462 = !DILocalVariable(name: "net", arg: 1, scope: !458, file: !62, line: 300, type: !155)
!463 = !DILocalVariable(name: "thread", scope: !458, file: !62, line: 307, type: !24)
!464 = !DILocalVariable(name: "num_threads", scope: !458, file: !62, line: 311, type: !24)
!465 = !DILocation(line: 0, scope: !458)
!466 = !DILocation(line: 313, column: 28, scope: !458)
!467 = !DILocation(line: 313, column: 12, scope: !458)
!468 = !DILocation(line: 314, column: 29, scope: !458)
!469 = !DILocation(line: 314, column: 16, scope: !458)
!470 = !DILocation(line: 315, column: 28, scope: !458)
!471 = !DILocation(line: 315, column: 18, scope: !458)
!472 = !DILocation(line: 316, column: 24, scope: !458)
!473 = !DILocation(line: 316, column: 12, scope: !458)
!474 = !DILocation(line: 318, column: 29, scope: !458)
!475 = !DILocation(line: 318, column: 3, scope: !458)
!476 = !DILocation(line: 332, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !62, line: 331, column: 11)
!478 = distinct !DILexicalBlock(scope: !458, file: !62, line: 324, column: 3)
!479 = !DILocation(line: 337, column: 5, scope: !458)
!480 = !DILocation(line: 338, column: 5, scope: !458)
!481 = !DILocation(line: 340, column: 9, scope: !458)
!482 = !DILocation(line: 342, column: 10, scope: !458)
!483 = !DILocation(line: 342, column: 5, scope: !458)
!484 = !DILocation(line: 343, column: 10, scope: !458)
!485 = !DILocation(line: 343, column: 5, scope: !458)
!486 = !DILocation(line: 344, column: 10, scope: !458)
!487 = !DILocation(line: 344, column: 5, scope: !458)
!488 = !DILocation(line: 345, column: 10, scope: !458)
!489 = !DILocation(line: 345, column: 5, scope: !458)
!490 = !DILocation(line: 348, column: 5, scope: !458)
!491 = !DISubprogram(name: "set_static_vars", scope: !148, file: !148, line: 32, type: !492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !155, !19}
!494 = !DISubprogram(name: "primal_feasible", scope: !495, file: !495, line: 34, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
!495 = !DIFile(filename: "apps/505.mcf_r/src/mcfutil.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6fade418d230c2d9d39deb67b05e3ee3")
!496 = !DISubprogram(name: "dual_feasible", scope: !495, file: !495, line: 35, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
