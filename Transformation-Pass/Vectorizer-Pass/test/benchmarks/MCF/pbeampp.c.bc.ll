; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r/llvm-ir/505.mcf_r_bc/src/pbeampp.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/pbeampp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.basket = type { ptr, i64, i64, i64 }

@full_group_end_arc = internal unnamed_addr global ptr null, align 8, !dbg !0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @set_static_vars(ptr nocapture noundef readonly %net, ptr noundef %arcs) local_unnamed_addr #0 !dbg !62 {
entry:
  call void @llvm.dbg.value(metadata ptr %net, metadata !108, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.value(metadata ptr %arcs, metadata !109, metadata !DIExpression()), !dbg !110
  %full_groups = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 31, !dbg !111
  %0 = load i64, ptr %full_groups, align 8, !dbg !111, !tbaa !112
  %max_elems = getelementptr inbounds %struct.network, ptr %net, i64 0, i32 32, !dbg !119
  %1 = load i64, ptr %max_elems, align 8, !dbg !119, !tbaa !120
  %mul = mul nsw i64 %1, %0, !dbg !121
  %add.ptr = getelementptr inbounds %struct.arc, ptr %arcs, i64 %mul, !dbg !122
  store ptr %add.ptr, ptr @full_group_end_arc, align 8, !dbg !123, !tbaa !124
  ret void, !dbg !125
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @bea_is_dual_infeasible(ptr nocapture noundef readonly %arc, i64 noundef %red_cost) local_unnamed_addr #1 !dbg !126 {
entry:
  call void @llvm.dbg.value(metadata ptr %arc, metadata !130, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 %red_cost, metadata !131, metadata !DIExpression()), !dbg !132
  %cmp = icmp slt i64 %red_cost, 0, !dbg !133
  br i1 %cmp, label %lor.end.sink.split, label %lor.rhs, !dbg !134

lor.rhs:                                          ; preds = %entry
  %cmp3.not = icmp eq i64 %red_cost, 0, !dbg !135
  br i1 %cmp3.not, label %lor.end, label %lor.end.sink.split, !dbg !136

lor.end.sink.split:                               ; preds = %lor.rhs, %entry
  %.sink12 = phi i16 [ 1, %entry ], [ 2, %lor.rhs ]
  %ident = getelementptr inbounds %struct.arc, ptr %arc, i64 0, i32 4, !dbg !132
  %0 = load i16, ptr %ident, align 8, !dbg !132, !tbaa !137
  %cmp1 = icmp eq i16 %0, %.sink12, !dbg !132
  %phi.cast = zext i1 %cmp1 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.end.sink.split, %lor.rhs
  %.shrunk = phi i32 [ 0, %lor.rhs ], [ %phi.cast, %lor.end.sink.split ]
  ret i32 %.shrunk, !dbg !141
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @cost_compare(ptr nocapture noundef readonly %b1, ptr nocapture noundef readonly %b2) #2 !dbg !142 {
entry:
  call void @llvm.dbg.value(metadata ptr %b1, metadata !155, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata ptr %b2, metadata !156, metadata !DIExpression()), !dbg !157
  %0 = load ptr, ptr %b1, align 8, !dbg !158, !tbaa !124
  %abs_cost = getelementptr inbounds %struct.basket, ptr %0, i64 0, i32 2, !dbg !160
  %1 = load i64, ptr %abs_cost, align 8, !dbg !160, !tbaa !161
  %2 = load ptr, ptr %b2, align 8, !dbg !163, !tbaa !124
  %abs_cost1 = getelementptr inbounds %struct.basket, ptr %2, i64 0, i32 2, !dbg !164
  %3 = load i64, ptr %abs_cost1, align 8, !dbg !164, !tbaa !161
  %cmp = icmp slt i64 %1, %3, !dbg !165
  br i1 %cmp, label %return, label %if.end, !dbg !166

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i64 %1, %3, !dbg !167
  br i1 %cmp4, label %return, label %if.end6, !dbg !169

if.end6:                                          ; preds = %if.end
  %4 = load ptr, ptr %0, align 8, !dbg !170, !tbaa !172
  %5 = load i32, ptr %4, align 8, !dbg !173, !tbaa !174
  %6 = load ptr, ptr %2, align 8, !dbg !175, !tbaa !172
  %7 = load i32, ptr %6, align 8, !dbg !176, !tbaa !174
  %cmp9 = icmp sgt i32 %5, %7, !dbg !177
  %. = select i1 %cmp9, i32 1, i32 -1, !dbg !178
  br label %return, !dbg !178

return:                                           ; preds = %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ -1, %if.end ], [ %., %if.end6 ], !dbg !157
  ret i32 %retval.0, !dbg !179
}

; Function Attrs: nounwind uwtable
define dso_local ptr @primal_bea_mpp(i64 noundef %m, ptr noundef %arcs, ptr noundef readnone %stop_arcs, ptr nocapture noundef %basket_sizes, ptr noundef %perm, i32 noundef %thread, ptr nocapture noundef %end_arc, i64 noundef %step, i64 noundef %num_threads, i64 noundef %max_elems) local_unnamed_addr #3 !dbg !180 {
entry:
  call void @llvm.dbg.value(metadata i64 %m, metadata !186, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata ptr %arcs, metadata !187, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata ptr %stop_arcs, metadata !188, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata ptr %basket_sizes, metadata !189, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata ptr %perm, metadata !190, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i32 %thread, metadata !191, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata ptr %end_arc, metadata !192, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %step, metadata !193, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %num_threads, metadata !194, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %max_elems, metadata !195, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 0, metadata !200, metadata !DIExpression()), !dbg !206
  %idxprom = sext i32 %thread to i64, !dbg !207
  %arrayidx = getelementptr inbounds i64, ptr %basket_sizes, i64 %idxprom, !dbg !207
  call void @llvm.dbg.value(metadata i64 0, metadata !200, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()), !dbg !206
  br label %land.rhs, !dbg !210

land.rhs:                                         ; preds = %entry, %for.inc
  %next.0213 = phi i64 [ 0, %entry ], [ %next.1, %for.inc ]
  %i.0212 = phi i64 [ 1, %entry ], [ %inc27, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %next.0213, metadata !200, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %i.0212, metadata !196, metadata !DIExpression()), !dbg !206
  %0 = load i64, ptr %arrayidx, align 8, !dbg !207, !tbaa !211
  %cmp1.not = icmp sgt i64 %i.0212, %0, !dbg !212
  br i1 %cmp1.not, label %for.end, label %for.body, !dbg !213

for.body:                                         ; preds = %land.rhs
  %arrayidx2 = getelementptr inbounds ptr, ptr %perm, i64 %i.0212, !dbg !214
  %1 = load ptr, ptr %arrayidx2, align 8, !dbg !214, !tbaa !124
  %2 = load ptr, ptr %1, align 8, !dbg !216, !tbaa !172
  call void @llvm.dbg.value(metadata ptr %2, metadata !201, metadata !DIExpression()), !dbg !206
  %number = getelementptr inbounds %struct.basket, ptr %1, i64 0, i32 3, !dbg !217
  %3 = load i64, ptr %number, align 8, !dbg !217, !tbaa !218
  call void @llvm.dbg.value(metadata i64 %3, metadata !198, metadata !DIExpression()), !dbg !206
  %cost = getelementptr inbounds %struct.arc, ptr %2, i64 0, i32 1, !dbg !219
  %4 = load i64, ptr %cost, align 8, !dbg !219, !tbaa !220
  %tail = getelementptr inbounds %struct.arc, ptr %2, i64 0, i32 2, !dbg !221
  %5 = load ptr, ptr %tail, align 8, !dbg !221, !tbaa !222
  %6 = load i64, ptr %5, align 8, !dbg !223, !tbaa !224
  %sub = sub nsw i64 %4, %6, !dbg !226
  %head = getelementptr inbounds %struct.arc, ptr %2, i64 0, i32 3, !dbg !227
  %7 = load ptr, ptr %head, align 8, !dbg !227, !tbaa !228
  %8 = load i64, ptr %7, align 8, !dbg !229, !tbaa !224
  %add = add nsw i64 %8, %sub, !dbg !230
  call void @llvm.dbg.value(metadata i64 %add, metadata !203, metadata !DIExpression()), !dbg !206
  %cmp5 = icmp sgt i64 %3, 0, !dbg !231
  br i1 %cmp5, label %land.lhs.true, label %for.inc, !dbg !233

land.lhs.true:                                    ; preds = %for.body
  %cmp6 = icmp slt i64 %add, 0, !dbg !234
  br i1 %cmp6, label %land.lhs.true7, label %lor.lhs.false, !dbg !235

land.lhs.true7:                                   ; preds = %land.lhs.true
  %ident = getelementptr inbounds %struct.arc, ptr %2, i64 0, i32 4, !dbg !236
  %9 = load i16, ptr %ident, align 8, !dbg !236, !tbaa !137
  %cmp8 = icmp eq i16 %9, 1, !dbg !237
  br i1 %cmp8, label %if.then, label %for.inc, !dbg !238

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp10.not = icmp eq i64 %add, 0, !dbg !239
  br i1 %cmp10.not, label %for.inc, label %land.lhs.true12, !dbg !240

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %ident13 = getelementptr inbounds %struct.arc, ptr %2, i64 0, i32 4, !dbg !241
  %10 = load i16, ptr %ident13, align 8, !dbg !241, !tbaa !137
  %cmp15 = icmp eq i16 %10, 2, !dbg !242
  br i1 %cmp15, label %if.then, label %for.inc, !dbg !243

if.then:                                          ; preds = %land.lhs.true12, %land.lhs.true7
  %inc = add nsw i64 %next.0213, 1, !dbg !244
  call void @llvm.dbg.value(metadata i64 %inc, metadata !200, metadata !DIExpression()), !dbg !206
  %arrayidx17 = getelementptr inbounds ptr, ptr %perm, i64 %inc, !dbg !246
  %11 = load ptr, ptr %arrayidx17, align 8, !dbg !246, !tbaa !124
  store ptr %2, ptr %11, align 8, !dbg !247, !tbaa !172
  %12 = load ptr, ptr %arrayidx17, align 8, !dbg !248, !tbaa !124
  %cost20 = getelementptr inbounds %struct.basket, ptr %12, i64 0, i32 1, !dbg !249
  store i64 %add, ptr %cost20, align 8, !dbg !250, !tbaa !251
  %13 = tail call i64 @llvm.abs.i64(i64 %add, i1 true), !dbg !252
  %abs_cost = getelementptr inbounds %struct.basket, ptr %12, i64 0, i32 2, !dbg !253
  store i64 %13, ptr %abs_cost, align 8, !dbg !254, !tbaa !161
  %number26 = getelementptr inbounds %struct.basket, ptr %12, i64 0, i32 3, !dbg !255
  store i64 0, ptr %number26, align 8, !dbg !256, !tbaa !218
  br label %for.inc, !dbg !257

for.inc:                                          ; preds = %land.lhs.true7, %for.body, %lor.lhs.false, %land.lhs.true12, %if.then
  %next.1 = phi i64 [ %inc, %if.then ], [ %next.0213, %land.lhs.true12 ], [ %next.0213, %lor.lhs.false ], [ %next.0213, %for.body ], [ %next.0213, %land.lhs.true7 ], !dbg !258
  call void @llvm.dbg.value(metadata i64 %next.1, metadata !200, metadata !DIExpression()), !dbg !206
  %inc27 = add nuw nsw i64 %i.0212, 1, !dbg !259
  call void @llvm.dbg.value(metadata i64 %inc27, metadata !196, metadata !DIExpression()), !dbg !206
  %exitcond.not = icmp eq i64 %inc27, 61, !dbg !260
  br i1 %exitcond.not, label %for.end, label %land.rhs, !dbg !210, !llvm.loop !261

for.end:                                          ; preds = %for.inc, %land.rhs
  %next.0.lcssa = phi i64 [ %next.1, %for.inc ], [ %next.0213, %land.rhs ], !dbg !258
  store i64 %next.0.lcssa, ptr %arrayidx, align 8, !dbg !265, !tbaa !211
  %14 = load ptr, ptr %end_arc, align 8, !dbg !266, !tbaa !124
  call void @llvm.dbg.value(metadata ptr %14, metadata !202, metadata !DIExpression()), !dbg !206
  %15 = load ptr, ptr @full_group_end_arc, align 8, !tbaa !124
  %cmp93218 = icmp sgt i64 %num_threads, 0
  br label %NEXT, !dbg !267

NEXT:                                             ; preds = %for.end100, %for.end
  %16 = phi ptr [ %33, %for.end100 ], [ %14, %for.end ], !dbg !268
  call void @llvm.dbg.label(metadata !204), !dbg !269
  %add.ptr = getelementptr inbounds %struct.arc, ptr %16, i64 %step, !dbg !270
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !201, metadata !DIExpression()), !dbg !206
  %cmp30.not = icmp uge ptr %16, %15, !dbg !271
  %add.ptr35 = getelementptr inbounds %struct.arc, ptr %16, i64 %max_elems, !dbg !273
  %spec.select.idx = sext i1 %cmp30.not to i64, !dbg !274
  %spec.select = getelementptr %struct.arc, ptr %add.ptr35, i64 %spec.select.idx, !dbg !274
  store ptr %spec.select, ptr %end_arc, align 8, !dbg !273, !tbaa !124
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !201, metadata !DIExpression()), !dbg !206
  %cmp38215 = icmp ult ptr %add.ptr, %spec.select, !dbg !275
  br i1 %cmp38215, label %for.body40, label %for.end84, !dbg !278

for.body40:                                       ; preds = %NEXT, %for.inc82
  %17 = phi ptr [ %32, %for.inc82 ], [ %spec.select, %NEXT ]
  %arc.0216 = phi ptr [ %add.ptr83, %for.inc82 ], [ %add.ptr, %NEXT ]
  call void @llvm.dbg.value(metadata ptr %arc.0216, metadata !201, metadata !DIExpression()), !dbg !206
  %ident41 = getelementptr inbounds %struct.arc, ptr %arc.0216, i64 0, i32 4, !dbg !279
  %18 = load i16, ptr %ident41, align 8, !dbg !279, !tbaa !137
  %cmp43 = icmp sgt i16 %18, 0, !dbg !282
  br i1 %cmp43, label %if.then45, label %for.inc82, !dbg !283

if.then45:                                        ; preds = %for.body40
  %cost46 = getelementptr inbounds %struct.arc, ptr %arc.0216, i64 0, i32 1, !dbg !284
  %19 = load i64, ptr %cost46, align 8, !dbg !284, !tbaa !220
  %tail47 = getelementptr inbounds %struct.arc, ptr %arc.0216, i64 0, i32 2, !dbg !286
  %20 = load ptr, ptr %tail47, align 8, !dbg !286, !tbaa !222
  %21 = load i64, ptr %20, align 8, !dbg !287, !tbaa !224
  %sub49 = sub nsw i64 %19, %21, !dbg !288
  %head50 = getelementptr inbounds %struct.arc, ptr %arc.0216, i64 0, i32 3, !dbg !289
  %22 = load ptr, ptr %head50, align 8, !dbg !289, !tbaa !228
  %23 = load i64, ptr %22, align 8, !dbg !290, !tbaa !224
  %add52 = add nsw i64 %23, %sub49, !dbg !291
  call void @llvm.dbg.value(metadata i64 %add52, metadata !203, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata ptr %arc.0216, metadata !130, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 %add52, metadata !131, metadata !DIExpression()), !dbg !292
  %cmp.i = icmp slt i64 %add52, 0, !dbg !295
  br i1 %cmp.i, label %bea_is_dual_infeasible.exit, label %lor.rhs.i, !dbg !296

lor.rhs.i:                                        ; preds = %if.then45
  %cmp3.not.i = icmp eq i64 %add52, 0, !dbg !297
  br i1 %cmp3.not.i, label %for.inc82, label %bea_is_dual_infeasible.exit, !dbg !298

bea_is_dual_infeasible.exit:                      ; preds = %if.then45, %lor.rhs.i
  %.sink12.i = phi i16 [ 1, %if.then45 ], [ 2, %lor.rhs.i ]
  %cmp1.i.not = icmp eq i16 %18, %.sink12.i, !dbg !292
  br i1 %cmp1.i.not, label %if.then53, label %for.inc82, !dbg !299

if.then53:                                        ; preds = %bea_is_dual_infeasible.exit
  %24 = load i64, ptr %arrayidx, align 8, !dbg !300, !tbaa !211
  %inc56 = add nsw i64 %24, 1, !dbg !300
  store i64 %inc56, ptr %arrayidx, align 8, !dbg !300, !tbaa !211
  %arrayidx59 = getelementptr inbounds ptr, ptr %perm, i64 %inc56, !dbg !302
  %25 = load ptr, ptr %arrayidx59, align 8, !dbg !302, !tbaa !124
  store ptr %arc.0216, ptr %25, align 8, !dbg !303, !tbaa !172
  %26 = load ptr, ptr %arrayidx59, align 8, !dbg !304, !tbaa !124
  %cost64 = getelementptr inbounds %struct.basket, ptr %26, i64 0, i32 1, !dbg !305
  store i64 %add52, ptr %cost64, align 8, !dbg !306, !tbaa !251
  %27 = tail call i64 @llvm.abs.i64(i64 %add52, i1 true), !dbg !307
  %28 = load i64, ptr %arrayidx, align 8, !dbg !308, !tbaa !211
  %arrayidx74 = getelementptr inbounds ptr, ptr %perm, i64 %28, !dbg !309
  %29 = load ptr, ptr %arrayidx74, align 8, !dbg !309, !tbaa !124
  %abs_cost75 = getelementptr inbounds %struct.basket, ptr %29, i64 0, i32 2, !dbg !310
  store i64 %27, ptr %abs_cost75, align 8, !dbg !311, !tbaa !161
  %30 = load i64, ptr %arrayidx, align 8, !dbg !312, !tbaa !211
  %arrayidx78 = getelementptr inbounds ptr, ptr %perm, i64 %30, !dbg !313
  %31 = load ptr, ptr %arrayidx78, align 8, !dbg !313, !tbaa !124
  %number79 = getelementptr inbounds %struct.basket, ptr %31, i64 0, i32 3, !dbg !314
  store i64 0, ptr %number79, align 8, !dbg !315, !tbaa !218
  %.pre = load ptr, ptr %end_arc, align 8, !dbg !316, !tbaa !124
  br label %for.inc82, !dbg !317

for.inc82:                                        ; preds = %lor.rhs.i, %for.body40, %if.then53, %bea_is_dual_infeasible.exit
  %32 = phi ptr [ %17, %lor.rhs.i ], [ %17, %for.body40 ], [ %.pre, %if.then53 ], [ %17, %bea_is_dual_infeasible.exit ], !dbg !316
  %add.ptr83 = getelementptr inbounds %struct.arc, ptr %arc.0216, i64 %num_threads, !dbg !318
  call void @llvm.dbg.value(metadata ptr %add.ptr83, metadata !201, metadata !DIExpression()), !dbg !206
  %cmp38 = icmp ult ptr %add.ptr83, %32, !dbg !275
  br i1 %cmp38, label %for.body40, label %for.end84, !dbg !278, !llvm.loop !319

for.end84:                                        ; preds = %for.inc82, %NEXT
  %.lcssa = phi ptr [ %spec.select, %NEXT ], [ %32, %for.inc82 ], !dbg !316
  %cmp85.not = icmp ult ptr %.lcssa, %stop_arcs, !dbg !321
  br i1 %cmp85.not, label %if.end88, label %if.then87, !dbg !323

if.then87:                                        ; preds = %for.end84
  store ptr %arcs, ptr %end_arc, align 8, !dbg !324, !tbaa !124
  br label %if.end88, !dbg !326

if.end88:                                         ; preds = %if.then87, %for.end84
  %33 = phi ptr [ %arcs, %if.then87 ], [ %.lcssa, %for.end84 ], !dbg !327
  %cmp89.not = icmp eq ptr %33, %14, !dbg !329
  br i1 %cmp89.not, label %READY, label %for.cond92.preheader, !dbg !330

for.cond92.preheader:                             ; preds = %if.end88
  call void @llvm.dbg.value(metadata i64 0, metadata !199, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 0, metadata !197, metadata !DIExpression()), !dbg !206
  br i1 %cmp93218, label %for.body95, label %for.end100, !dbg !331

for.body95:                                       ; preds = %for.cond92.preheader, %for.body95
  %global_basket_size.0220 = phi i64 [ %add97, %for.body95 ], [ 0, %for.cond92.preheader ]
  %j.0219 = phi i64 [ %inc99, %for.body95 ], [ 0, %for.cond92.preheader ]
  call void @llvm.dbg.value(metadata i64 %global_basket_size.0220, metadata !199, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 %j.0219, metadata !197, metadata !DIExpression()), !dbg !206
  %arrayidx96 = getelementptr inbounds i64, ptr %basket_sizes, i64 %j.0219, !dbg !334
  %34 = load i64, ptr %arrayidx96, align 8, !dbg !334, !tbaa !211
  %add97 = add nsw i64 %34, %global_basket_size.0220, !dbg !337
  call void @llvm.dbg.value(metadata i64 %add97, metadata !199, metadata !DIExpression()), !dbg !206
  %inc99 = add nuw nsw i64 %j.0219, 1, !dbg !338
  call void @llvm.dbg.value(metadata i64 %inc99, metadata !197, metadata !DIExpression()), !dbg !206
  %exitcond223.not = icmp eq i64 %inc99, %num_threads, !dbg !339
  br i1 %exitcond223.not, label %for.end100, label %for.body95, !dbg !331, !llvm.loop !340

for.end100:                                       ; preds = %for.body95, %for.cond92.preheader
  %global_basket_size.0.lcssa = phi i64 [ 0, %for.cond92.preheader ], [ %add97, %for.body95 ], !dbg !342
  %cmp101 = icmp sgt i64 %global_basket_size.0.lcssa, 59, !dbg !343
  br i1 %cmp101, label %READY, label %NEXT, !dbg !345

READY:                                            ; preds = %if.end88, %for.end100
  call void @llvm.dbg.label(metadata !205), !dbg !346
  %35 = load i64, ptr %arrayidx, align 8, !dbg !347, !tbaa !211
  %add108 = add nsw i64 %35, 1, !dbg !348
  %arrayidx109 = getelementptr inbounds ptr, ptr %perm, i64 %add108, !dbg !349
  %36 = load ptr, ptr %arrayidx109, align 8, !dbg !349, !tbaa !124
  %number110 = getelementptr inbounds %struct.basket, ptr %36, i64 0, i32 3, !dbg !350
  store i64 -1, ptr %number110, align 8, !dbg !351, !tbaa !218
  %37 = load i64, ptr %arrayidx, align 8, !dbg !352, !tbaa !211
  %cmp113 = icmp eq i64 %37, 0, !dbg !354
  br i1 %cmp113, label %cleanup, label %if.end116, !dbg !355

if.end116:                                        ; preds = %READY
  %add.ptr117 = getelementptr inbounds ptr, ptr %perm, i64 1, !dbg !356
  tail call void @spec_qsort(ptr noundef nonnull %add.ptr117, i64 noundef %37, i64 noundef 8, ptr noundef nonnull @cost_compare) #6, !dbg !357
  %38 = load ptr, ptr %add.ptr117, align 8, !dbg !358, !tbaa !124
  br label %cleanup, !dbg !359

cleanup:                                          ; preds = %READY, %if.end116
  %retval.0 = phi ptr [ %38, %if.end116 ], [ null, %READY ], !dbg !206
  ret ptr %retval.0, !dbg !360
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #4

declare !dbg !361 void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "full_group_end_arc", scope: !2, file: !12, line: 30, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/pbeampp.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r", checksumkind: CSK_MD5, checksum: "2fbb96f58b58aae8ef374e75283f10fa")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !9}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!11 = !{!0}
!12 = !DIFile(filename: "apps/505.mcf_r/src/pbeampp.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2fbb96f58b58aae8ef374e75283f10fa")
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_t", file: !15, line: 137, baseType: !16)
!15 = !DIFile(filename: "apps/505.mcf_r/src/defines.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "05eeb7bba098b08025cbe048b289d372")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !15, line: 168, size: 576, elements: !17)
!17 = !{!18, !19, !26, !48, !49, !51, !52, !53, !54}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !16, file: !15, line: 170, baseType: !8, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !16, file: !15, line: 171, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !15, line: 98, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !22, line: 27, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !24, line: 44, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!25 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !16, file: !15, line: 172, baseType: !27, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !15, line: 135, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !15, line: 149, size: 832, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36, !37, !40, !41, !42, !43, !45, !46, !47}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !29, file: !15, line: 151, baseType: !20, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !29, file: !15, line: 152, baseType: !8, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !29, file: !15, line: 153, baseType: !27, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !29, file: !15, line: 154, baseType: !27, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !29, file: !15, line: 155, baseType: !27, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !29, file: !15, line: 156, baseType: !27, size: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !29, file: !15, line: 157, baseType: !38, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !15, line: 138, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !29, file: !15, line: 158, baseType: !38, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !29, file: !15, line: 158, baseType: !38, size: 64, offset: 512)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !29, file: !15, line: 159, baseType: !38, size: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !29, file: !15, line: 160, baseType: !44, size: 64, offset: 640)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !15, line: 97, baseType: !21)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !29, file: !15, line: 161, baseType: !21, size: 64, offset: 704)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !29, file: !15, line: 162, baseType: !8, size: 32, offset: 768)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !29, file: !15, line: 163, baseType: !8, size: 32, offset: 800)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !16, file: !15, line: 172, baseType: !27, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !16, file: !15, line: 173, baseType: !50, size: 16, offset: 256)
!50 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !16, file: !15, line: 174, baseType: !38, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !16, file: !15, line: 174, baseType: !38, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !16, file: !15, line: 175, baseType: !44, size: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !16, file: !15, line: 176, baseType: !20, size: 64, offset: 512)
!55 = !{i32 7, !"Dwarf Version", i32 5}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = !{i32 7, !"PIC Level", i32 2}
!59 = !{i32 7, !"PIE Level", i32 2}
!60 = !{i32 7, !"uwtable", i32 2}
!61 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!62 = distinct !DISubprogram(name: "set_static_vars", scope: !12, file: !12, line: 33, type: !63, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !107)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65, !13}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !15, line: 206, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !15, line: 181, size: 5184, elements: !68)
!68 = !{!69, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !67, file: !15, line: 183, baseType: !70, size: 1600)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1600, elements: !72)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!72 = !{!73}
!73 = !DISubrange(count: 200)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !67, file: !15, line: 184, baseType: !70, size: 1600, offset: 1600)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !67, file: !15, line: 185, baseType: !21, size: 64, offset: 3200)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !67, file: !15, line: 185, baseType: !21, size: 64, offset: 3264)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !67, file: !15, line: 186, baseType: !21, size: 64, offset: 3328)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !67, file: !15, line: 186, baseType: !21, size: 64, offset: 3392)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !67, file: !15, line: 186, baseType: !21, size: 64, offset: 3456)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !67, file: !15, line: 186, baseType: !21, size: 64, offset: 3520)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "max_residual_new_m", scope: !67, file: !15, line: 187, baseType: !21, size: 64, offset: 3584)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "max_new_m", scope: !67, file: !15, line: 187, baseType: !21, size: 64, offset: 3648)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !67, file: !15, line: 189, baseType: !21, size: 64, offset: 3712)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !67, file: !15, line: 190, baseType: !21, size: 64, offset: 3776)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !67, file: !15, line: 191, baseType: !21, size: 64, offset: 3840)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !67, file: !15, line: 192, baseType: !21, size: 64, offset: 3904)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !67, file: !15, line: 193, baseType: !21, size: 64, offset: 3968)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !67, file: !15, line: 194, baseType: !21, size: 64, offset: 4032)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !67, file: !15, line: 195, baseType: !21, size: 64, offset: 4096)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !67, file: !15, line: 196, baseType: !21, size: 64, offset: 4160)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !67, file: !15, line: 197, baseType: !21, size: 64, offset: 4224)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !67, file: !15, line: 198, baseType: !93, size: 64, offset: 4288)
!93 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !67, file: !15, line: 199, baseType: !20, size: 64, offset: 4352)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !67, file: !15, line: 200, baseType: !27, size: 64, offset: 4416)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !67, file: !15, line: 200, baseType: !27, size: 64, offset: 4480)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !67, file: !15, line: 201, baseType: !38, size: 64, offset: 4544)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !67, file: !15, line: 201, baseType: !38, size: 64, offset: 4608)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sorted_arcs", scope: !67, file: !15, line: 201, baseType: !38, size: 64, offset: 4672)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !67, file: !15, line: 202, baseType: !38, size: 64, offset: 4736)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !67, file: !15, line: 202, baseType: !38, size: 64, offset: 4800)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !67, file: !15, line: 203, baseType: !21, size: 64, offset: 4864)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !67, file: !15, line: 204, baseType: !21, size: 64, offset: 4928)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_group", scope: !67, file: !15, line: 205, baseType: !21, size: 64, offset: 4992)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "full_groups", scope: !67, file: !15, line: 205, baseType: !21, size: 64, offset: 5056)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !67, file: !15, line: 205, baseType: !21, size: 64, offset: 5120)
!107 = !{!108, !109}
!108 = !DILocalVariable(name: "net", arg: 1, scope: !62, file: !12, line: 33, type: !65)
!109 = !DILocalVariable(name: "arcs", arg: 2, scope: !62, file: !12, line: 33, type: !13)
!110 = !DILocation(line: 0, scope: !62)
!111 = !DILocation(line: 40, column: 36, scope: !62)
!112 = !{!113, !116, i64 632}
!113 = !{!"network", !114, i64 0, !114, i64 200, !116, i64 400, !116, i64 408, !116, i64 416, !116, i64 424, !116, i64 432, !116, i64 440, !116, i64 448, !116, i64 456, !116, i64 464, !116, i64 472, !116, i64 480, !116, i64 488, !116, i64 496, !116, i64 504, !116, i64 512, !116, i64 520, !116, i64 528, !117, i64 536, !116, i64 544, !118, i64 552, !118, i64 560, !118, i64 568, !118, i64 576, !118, i64 584, !118, i64 592, !118, i64 600, !116, i64 608, !116, i64 616, !116, i64 624, !116, i64 632, !116, i64 640}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !{!"long", !114, i64 0}
!117 = !{!"double", !114, i64 0}
!118 = !{!"any pointer", !114, i64 0}
!119 = !DILocation(line: 40, column: 55, scope: !62)
!120 = !{!113, !116, i64 640}
!121 = !DILocation(line: 40, column: 48, scope: !62)
!122 = !DILocation(line: 40, column: 29, scope: !62)
!123 = !DILocation(line: 40, column: 22, scope: !62)
!124 = !{!118, !118, i64 0}
!125 = !DILocation(line: 41, column: 1, scope: !62)
!126 = distinct !DISubprogram(name: "bea_is_dual_infeasible", scope: !12, file: !12, line: 46, type: !127, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{!8, !13, !20}
!129 = !{!130, !131}
!130 = !DILocalVariable(name: "arc", arg: 1, scope: !126, file: !12, line: 46, type: !13)
!131 = !DILocalVariable(name: "red_cost", arg: 2, scope: !126, file: !12, line: 46, type: !20)
!132 = !DILocation(line: 0, scope: !126)
!133 = !DILocation(line: 53, column: 26, scope: !126)
!134 = !DILocation(line: 53, column: 30, scope: !126)
!135 = !DILocation(line: 54, column: 26, scope: !126)
!136 = !DILocation(line: 54, column: 30, scope: !126)
!137 = !{!138, !140, i64 32}
!138 = !{!"arc", !139, i64 0, !116, i64 8, !118, i64 16, !118, i64 24, !140, i64 32, !118, i64 40, !118, i64 48, !116, i64 56, !116, i64 64}
!139 = !{!"int", !114, i64 0}
!140 = !{!"short", !114, i64 0}
!141 = !DILocation(line: 53, column: 5, scope: !126)
!142 = distinct !DISubprogram(name: "cost_compare", scope: !12, file: !12, line: 61, type: !143, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!143 = !DISubroutineType(types: !144)
!144 = !{!8, !145, !145}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "BASKET", file: !15, line: 146, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basket", file: !15, line: 140, size: 256, elements: !149)
!149 = !{!150, !151, !152, !153}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !148, file: !15, line: 142, baseType: !13, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !148, file: !15, line: 143, baseType: !20, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "abs_cost", scope: !148, file: !15, line: 144, baseType: !20, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !148, file: !15, line: 145, baseType: !21, size: 64, offset: 192)
!154 = !{!155, !156}
!155 = !DILocalVariable(name: "b1", arg: 1, scope: !142, file: !12, line: 61, type: !145)
!156 = !DILocalVariable(name: "b2", arg: 2, scope: !142, file: !12, line: 61, type: !145)
!157 = !DILocation(line: 0, scope: !142)
!158 = !DILocation(line: 68, column: 8, scope: !159)
!159 = distinct !DILexicalBlock(scope: !142, file: !12, line: 68, column: 7)
!160 = !DILocation(line: 68, column: 14, scope: !159)
!161 = !{!162, !116, i64 16}
!162 = !{!"basket", !118, i64 0, !116, i64 8, !116, i64 16, !116, i64 24}
!163 = !DILocation(line: 68, column: 26, scope: !159)
!164 = !DILocation(line: 68, column: 32, scope: !159)
!165 = !DILocation(line: 68, column: 23, scope: !159)
!166 = !DILocation(line: 68, column: 7, scope: !142)
!167 = !DILocation(line: 70, column: 23, scope: !168)
!168 = distinct !DILexicalBlock(scope: !142, file: !12, line: 70, column: 7)
!169 = !DILocation(line: 70, column: 7, scope: !142)
!170 = !DILocation(line: 72, column: 14, scope: !171)
!171 = distinct !DILexicalBlock(scope: !142, file: !12, line: 72, column: 7)
!172 = !{!162, !118, i64 0}
!173 = !DILocation(line: 72, column: 17, scope: !171)
!174 = !{!138, !139, i64 0}
!175 = !DILocation(line: 72, column: 29, scope: !171)
!176 = !DILocation(line: 72, column: 32, scope: !171)
!177 = !DILocation(line: 72, column: 20, scope: !171)
!178 = !DILocation(line: 0, scope: !171)
!179 = !DILocation(line: 76, column: 1, scope: !142)
!180 = distinct !DISubprogram(name: "primal_bea_mpp", scope: !12, file: !12, line: 80, type: !181, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !185)
!181 = !DISubroutineType(types: !182)
!182 = !{!146, !21, !13, !13, !183, !145, !8, !184, !21, !21, !21}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!186 = !DILocalVariable(name: "m", arg: 1, scope: !180, file: !12, line: 80, type: !21)
!187 = !DILocalVariable(name: "arcs", arg: 2, scope: !180, file: !12, line: 80, type: !13)
!188 = !DILocalVariable(name: "stop_arcs", arg: 3, scope: !180, file: !12, line: 80, type: !13)
!189 = !DILocalVariable(name: "basket_sizes", arg: 4, scope: !180, file: !12, line: 81, type: !183)
!190 = !DILocalVariable(name: "perm", arg: 5, scope: !180, file: !12, line: 81, type: !145)
!191 = !DILocalVariable(name: "thread", arg: 6, scope: !180, file: !12, line: 81, type: !8)
!192 = !DILocalVariable(name: "end_arc", arg: 7, scope: !180, file: !12, line: 81, type: !184)
!193 = !DILocalVariable(name: "step", arg: 8, scope: !180, file: !12, line: 81, type: !21)
!194 = !DILocalVariable(name: "num_threads", arg: 9, scope: !180, file: !12, line: 81, type: !21)
!195 = !DILocalVariable(name: "max_elems", arg: 10, scope: !180, file: !12, line: 81, type: !21)
!196 = !DILocalVariable(name: "i", scope: !180, file: !12, line: 96, type: !21)
!197 = !DILocalVariable(name: "j", scope: !180, file: !12, line: 96, type: !21)
!198 = !DILocalVariable(name: "count", scope: !180, file: !12, line: 96, type: !21)
!199 = !DILocalVariable(name: "global_basket_size", scope: !180, file: !12, line: 96, type: !21)
!200 = !DILocalVariable(name: "next", scope: !180, file: !12, line: 96, type: !21)
!201 = !DILocalVariable(name: "arc", scope: !180, file: !12, line: 97, type: !13)
!202 = !DILocalVariable(name: "old_end_arc", scope: !180, file: !12, line: 97, type: !13)
!203 = !DILocalVariable(name: "red_cost", scope: !180, file: !12, line: 98, type: !20)
!204 = !DILabel(scope: !180, name: "NEXT", file: !12, line: 120)
!205 = !DILabel(scope: !180, name: "READY", file: !12, line: 170)
!206 = !DILocation(line: 0, scope: !180)
!207 = !DILocation(line: 100, column: 45, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !12, line: 100, column: 8)
!209 = distinct !DILexicalBlock(scope: !180, file: !12, line: 100, column: 8)
!210 = !DILocation(line: 100, column: 37, scope: !208)
!211 = !{!116, !116, i64 0}
!212 = !DILocation(line: 100, column: 42, scope: !208)
!213 = !DILocation(line: 100, column: 8, scope: !209)
!214 = !DILocation(line: 102, column: 18, scope: !215)
!215 = distinct !DILexicalBlock(scope: !208, file: !12, line: 101, column: 8)
!216 = !DILocation(line: 102, column: 27, scope: !215)
!217 = !DILocation(line: 103, column: 29, scope: !215)
!218 = !{!162, !116, i64 24}
!219 = !DILocation(line: 104, column: 28, scope: !215)
!220 = !{!138, !116, i64 8}
!221 = !DILocation(line: 104, column: 40, scope: !215)
!222 = !{!138, !118, i64 16}
!223 = !DILocation(line: 104, column: 46, scope: !215)
!224 = !{!225, !116, i64 0}
!225 = !{!"node", !116, i64 0, !139, i64 8, !118, i64 16, !118, i64 24, !118, i64 32, !118, i64 40, !118, i64 48, !118, i64 56, !118, i64 64, !118, i64 72, !116, i64 80, !116, i64 88, !139, i64 96, !139, i64 100}
!226 = !DILocation(line: 104, column: 33, scope: !215)
!227 = !DILocation(line: 104, column: 63, scope: !215)
!228 = !{!138, !118, i64 24}
!229 = !DILocation(line: 104, column: 69, scope: !215)
!230 = !DILocation(line: 104, column: 56, scope: !215)
!231 = !DILocation(line: 105, column: 22, scope: !232)
!232 = distinct !DILexicalBlock(scope: !215, file: !12, line: 105, column: 16)
!233 = !DILocation(line: 105, column: 26, scope: !232)
!234 = !DILocation(line: 105, column: 40, scope: !232)
!235 = !DILocation(line: 105, column: 44, scope: !232)
!236 = !DILocation(line: 105, column: 52, scope: !232)
!237 = !DILocation(line: 105, column: 58, scope: !232)
!238 = !DILocation(line: 106, column: 16, scope: !232)
!239 = !DILocation(line: 106, column: 29, scope: !232)
!240 = !DILocation(line: 106, column: 33, scope: !232)
!241 = !DILocation(line: 106, column: 41, scope: !232)
!242 = !DILocation(line: 106, column: 47, scope: !232)
!243 = !DILocation(line: 105, column: 16, scope: !215)
!244 = !DILocation(line: 108, column: 20, scope: !245)
!245 = distinct !DILexicalBlock(scope: !232, file: !12, line: 107, column: 12)
!246 = !DILocation(line: 109, column: 16, scope: !245)
!247 = !DILocation(line: 109, column: 30, scope: !245)
!248 = !DILocation(line: 110, column: 16, scope: !245)
!249 = !DILocation(line: 110, column: 28, scope: !245)
!250 = !DILocation(line: 110, column: 33, scope: !245)
!251 = !{!162, !116, i64 8}
!252 = !DILocation(line: 111, column: 39, scope: !245)
!253 = !DILocation(line: 111, column: 28, scope: !245)
!254 = !DILocation(line: 111, column: 37, scope: !245)
!255 = !DILocation(line: 112, column: 28, scope: !245)
!256 = !DILocation(line: 112, column: 35, scope: !245)
!257 = !DILocation(line: 113, column: 12, scope: !245)
!258 = !DILocation(line: 0, scope: !209)
!259 = !DILocation(line: 100, column: 68, scope: !208)
!260 = !DILocation(line: 100, column: 32, scope: !208)
!261 = distinct !{!261, !213, !262, !263, !264}
!262 = !DILocation(line: 114, column: 9, scope: !209)
!263 = !{!"llvm.loop.mustprogress"}
!264 = !{!"llvm.loop.unroll.disable"}
!265 = !DILocation(line: 116, column: 30, scope: !180)
!266 = !DILocation(line: 118, column: 23, scope: !180)
!267 = !DILocation(line: 118, column: 9, scope: !180)
!268 = !DILocation(line: 123, column: 11, scope: !180)
!269 = !DILocation(line: 120, column: 5, scope: !180)
!270 = !DILocation(line: 123, column: 20, scope: !180)
!271 = !DILocation(line: 125, column: 18, scope: !272)
!272 = distinct !DILexicalBlock(scope: !180, file: !12, line: 125, column: 9)
!273 = !DILocation(line: 0, scope: !272)
!274 = !DILocation(line: 125, column: 9, scope: !180)
!275 = !DILocation(line: 131, column: 20, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !12, line: 131, column: 8)
!277 = distinct !DILexicalBlock(scope: !180, file: !12, line: 131, column: 8)
!278 = !DILocation(line: 131, column: 8, scope: !277)
!279 = !DILocation(line: 132, column: 16, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !12, line: 132, column: 11)
!281 = distinct !DILexicalBlock(scope: !276, file: !12, line: 131, column: 52)
!282 = !DILocation(line: 132, column: 22, scope: !280)
!283 = !DILocation(line: 132, column: 11, scope: !281)
!284 = !DILocation(line: 135, column: 25, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !12, line: 133, column: 7)
!286 = !DILocation(line: 135, column: 37, scope: !285)
!287 = !DILocation(line: 135, column: 43, scope: !285)
!288 = !DILocation(line: 135, column: 30, scope: !285)
!289 = !DILocation(line: 135, column: 60, scope: !285)
!290 = !DILocation(line: 135, column: 66, scope: !285)
!291 = !DILocation(line: 135, column: 53, scope: !285)
!292 = !DILocation(line: 0, scope: !126, inlinedAt: !293)
!293 = distinct !DILocation(line: 136, column: 13, scope: !294)
!294 = distinct !DILexicalBlock(scope: !285, file: !12, line: 136, column: 13)
!295 = !DILocation(line: 53, column: 26, scope: !126, inlinedAt: !293)
!296 = !DILocation(line: 53, column: 30, scope: !126, inlinedAt: !293)
!297 = !DILocation(line: 54, column: 26, scope: !126, inlinedAt: !293)
!298 = !DILocation(line: 54, column: 30, scope: !126, inlinedAt: !293)
!299 = !DILocation(line: 136, column: 13, scope: !285)
!300 = !DILocation(line: 138, column: 31, scope: !301)
!301 = distinct !DILexicalBlock(scope: !294, file: !12, line: 137, column: 9)
!302 = !DILocation(line: 139, column: 11, scope: !301)
!303 = !DILocation(line: 139, column: 41, scope: !301)
!304 = !DILocation(line: 140, column: 11, scope: !301)
!305 = !DILocation(line: 140, column: 39, scope: !301)
!306 = !DILocation(line: 140, column: 44, scope: !301)
!307 = !DILocation(line: 141, column: 50, scope: !301)
!308 = !DILocation(line: 141, column: 16, scope: !301)
!309 = !DILocation(line: 141, column: 11, scope: !301)
!310 = !DILocation(line: 141, column: 39, scope: !301)
!311 = !DILocation(line: 141, column: 48, scope: !301)
!312 = !DILocation(line: 142, column: 16, scope: !301)
!313 = !DILocation(line: 142, column: 11, scope: !301)
!314 = !DILocation(line: 142, column: 39, scope: !301)
!315 = !DILocation(line: 142, column: 46, scope: !301)
!316 = !DILocation(line: 131, column: 22, scope: !276)
!317 = !DILocation(line: 143, column: 9, scope: !301)
!318 = !DILocation(line: 131, column: 36, scope: !276)
!319 = distinct !{!319, !278, !320, !263, !264}
!320 = !DILocation(line: 145, column: 8, scope: !277)
!321 = !DILocation(line: 147, column: 21, scope: !322)
!322 = distinct !DILexicalBlock(scope: !180, file: !12, line: 147, column: 12)
!323 = !DILocation(line: 147, column: 12, scope: !180)
!324 = !DILocation(line: 148, column: 21, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !12, line: 147, column: 36)
!326 = !DILocation(line: 149, column: 8, scope: !325)
!327 = !DILocation(line: 152, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !180, file: !12, line: 152, column: 9)
!329 = !DILocation(line: 152, column: 18, scope: !328)
!330 = !DILocation(line: 152, column: 9, scope: !180)
!331 = !DILocation(line: 158, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !12, line: 158, column: 7)
!333 = distinct !DILexicalBlock(scope: !328, file: !12, line: 152, column: 34)
!334 = !DILocation(line: 159, column: 29, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !12, line: 158, column: 41)
!336 = distinct !DILexicalBlock(scope: !332, file: !12, line: 158, column: 7)
!337 = !DILocation(line: 159, column: 27, scope: !335)
!338 = !DILocation(line: 158, column: 37, scope: !336)
!339 = !DILocation(line: 158, column: 21, scope: !336)
!340 = distinct !{!340, !331, !341, !263, !264}
!341 = !DILocation(line: 160, column: 7, scope: !332)
!342 = !DILocation(line: 0, scope: !333)
!343 = !DILocation(line: 161, column: 31, scope: !344)
!344 = distinct !DILexicalBlock(scope: !333, file: !12, line: 161, column: 12)
!345 = !DILocation(line: 161, column: 12, scope: !333)
!346 = !DILocation(line: 170, column: 4, scope: !180)
!347 = !DILocation(line: 172, column: 9, scope: !180)
!348 = !DILocation(line: 172, column: 30, scope: !180)
!349 = !DILocation(line: 172, column: 4, scope: !180)
!350 = !DILocation(line: 172, column: 36, scope: !180)
!351 = !DILocation(line: 172, column: 43, scope: !180)
!352 = !DILocation(line: 174, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !180, file: !12, line: 174, column: 9)
!354 = !DILocation(line: 174, column: 30, scope: !353)
!355 = !DILocation(line: 174, column: 9, scope: !180)
!356 = !DILocation(line: 179, column: 21, scope: !180)
!357 = !DILocation(line: 179, column: 5, scope: !180)
!358 = !DILocation(line: 186, column: 12, scope: !180)
!359 = !DILocation(line: 186, column: 5, scope: !180)
!360 = !DILocation(line: 188, column: 1, scope: !180)
!361 = !DISubprogram(name: "spec_qsort", scope: !362, file: !362, line: 9, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !369)
!362 = !DIFile(filename: "apps/505.mcf_r/src/spec_qsort/spec_qsort.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2040d3b0b3e021f3f0b1e71d0e28f78d")
!363 = !DISubroutineType(types: !364)
!364 = !{null, !365, !366, !366, !5}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !367, line: 46, baseType: !368)
!367 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!368 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!369 = !{}
