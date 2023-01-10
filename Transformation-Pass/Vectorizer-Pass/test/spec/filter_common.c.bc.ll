; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/filter_common.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i64, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_filter_coder = type { i64, ptr, ptr }

@features = internal unnamed_addr constant [10 x %struct.anon] [%struct.anon { i64 4611686018427387905, i64 112, i8 0, i8 1, i8 1 }, %struct.anon { i64 33, i64 112, i8 0, i8 1, i8 1 }, %struct.anon { i64 4, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 5, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 6, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 7, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 8, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 9, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 3, i64 40, i8 1, i8 0, i8 0 }, %struct.anon { i64 -1, i64 0, i8 0, i8 0, i8 0 }], align 16, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filters_copy(ptr noundef readonly %src, ptr noundef %dest, ptr noundef %allocator) local_unnamed_addr #0 !dbg !66 {
entry:
  call void @llvm.dbg.value(metadata ptr %src, metadata !93, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata ptr %dest, metadata !94, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !95, metadata !DIExpression()), !dbg !105
  %cmp = icmp eq ptr %src, null, !dbg !106
  %cmp1 = icmp eq ptr %dest, null
  %or.cond = or i1 %cmp, %cmp1, !dbg !108
  br i1 %or.cond, label %return, label %for.cond.preheader, !dbg !108

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !97, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i32 undef, metadata !96, metadata !DIExpression()), !dbg !105
  %0 = load i64, ptr %src, align 8, !dbg !109, !tbaa !110
  %cmp2.not101 = icmp eq i64 %0, -1, !dbg !116
  br i1 %cmp2.not101, label %for.end44, label %for.body, !dbg !117

for.body:                                         ; preds = %for.cond.preheader, %for.inc42
  %1 = phi i64 [ %7, %for.inc42 ], [ %0, %for.cond.preheader ]
  %arrayidx105 = phi ptr [ %arrayidx, %for.inc42 ], [ %src, %for.cond.preheader ]
  %i.0102 = phi i64 [ %inc43, %for.inc42 ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0102, metadata !97, metadata !DIExpression()), !dbg !105
  %cmp3 = icmp eq i64 %i.0102, 4, !dbg !118
  br i1 %cmp3, label %while.body.preheader, label %if.end5, !dbg !120

if.end5:                                          ; preds = %for.body
  %arrayidx8 = getelementptr inbounds %struct.lzma_filter, ptr %dest, i64 %i.0102, !dbg !121
  store i64 %1, ptr %arrayidx8, align 8, !dbg !122, !tbaa !110
  %options = getelementptr inbounds %struct.lzma_filter, ptr %src, i64 %i.0102, i32 1, !dbg !123
  %2 = load ptr, ptr %options, align 8, !dbg !123, !tbaa !124
  %cmp11 = icmp eq ptr %2, null, !dbg !125
  br i1 %cmp11, label %if.then12, label %for.cond15.preheader, !dbg !126

for.cond15.preheader:                             ; preds = %if.end5
  %3 = load i64, ptr %arrayidx105, align 8, !tbaa !110
  call void @llvm.dbg.value(metadata i64 0, metadata !98, metadata !DIExpression()), !dbg !127
  %cmp20.not99 = icmp eq i64 %3, 4611686018427387905, !dbg !128
  br i1 %cmp20.not99, label %for.end, label %for.body21, !dbg !131

if.then12:                                        ; preds = %if.end5
  %options14 = getelementptr inbounds %struct.lzma_filter, ptr %dest, i64 %i.0102, i32 1, !dbg !132
  store ptr null, ptr %options14, align 8, !dbg !134, !tbaa !124
  br label %for.inc42, !dbg !135

for.body21:                                       ; preds = %for.cond15.preheader, %for.inc
  %j.0100 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond15.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.0100, metadata !98, metadata !DIExpression()), !dbg !127
  %exitcond = icmp eq i64 %j.0100, 9, !dbg !136
  br i1 %exitcond, label %error, label %for.inc, !dbg !139

for.inc:                                          ; preds = %for.body21
  %inc = add nuw nsw i64 %j.0100, 1, !dbg !140
  call void @llvm.dbg.value(metadata i64 %inc, metadata !98, metadata !DIExpression()), !dbg !127
  %arrayidx18 = getelementptr inbounds [10 x %struct.anon], ptr @features, i64 0, i64 %inc, !dbg !141
  %4 = load i64, ptr %arrayidx18, align 8, !dbg !142, !tbaa !143
  %cmp20.not = icmp eq i64 %3, %4, !dbg !128
  br i1 %cmp20.not, label %for.end, label %for.body21, !dbg !131, !llvm.loop !146

for.end:                                          ; preds = %for.inc, %for.cond15.preheader
  %j.0.lcssa = phi i64 [ 0, %for.cond15.preheader ], [ %inc, %for.inc ], !dbg !150
  %options_size = getelementptr inbounds [10 x %struct.anon], ptr @features, i64 0, i64 %j.0.lcssa, i32 1, !dbg !151
  %5 = load i64, ptr %options_size, align 8, !dbg !151, !tbaa !152
  %call = tail call ptr @lzma_alloc(i64 noundef %5, ptr noundef %allocator) #5, !dbg !153
  %options29 = getelementptr inbounds %struct.lzma_filter, ptr %dest, i64 %i.0102, i32 1, !dbg !154
  store ptr %call, ptr %options29, align 8, !dbg !155, !tbaa !124
  %cmp32 = icmp eq ptr %call, null, !dbg !156
  br i1 %cmp32, label %error, label %cleanup, !dbg !158

cleanup:                                          ; preds = %for.end
  %6 = load ptr, ptr %options, align 8, !dbg !159, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call, ptr align 1 %6, i64 %5, i1 false), !dbg !160
  call void @llvm.dbg.value(metadata i32 undef, metadata !96, metadata !DIExpression()), !dbg !105
  br label %for.inc42

for.inc42:                                        ; preds = %cleanup, %if.then12
  call void @llvm.dbg.value(metadata i32 undef, metadata !96, metadata !DIExpression()), !dbg !105
  %inc43 = add nuw nsw i64 %i.0102, 1, !dbg !161
  call void @llvm.dbg.value(metadata i64 %inc43, metadata !97, metadata !DIExpression()), !dbg !105
  %arrayidx = getelementptr inbounds %struct.lzma_filter, ptr %src, i64 %inc43, !dbg !162
  %7 = load i64, ptr %arrayidx, align 8, !dbg !109, !tbaa !110
  %cmp2.not = icmp eq i64 %7, -1, !dbg !116
  br i1 %cmp2.not, label %for.end44, label %for.body, !dbg !117, !llvm.loop !163

for.end44:                                        ; preds = %for.inc42, %for.cond.preheader
  %i.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %inc43, %for.inc42 ], !dbg !165
  %arrayidx45 = getelementptr inbounds %struct.lzma_filter, ptr %dest, i64 %i.0.lcssa, !dbg !166
  store i64 -1, ptr %arrayidx45, align 8, !dbg !167, !tbaa !110
  %options48 = getelementptr inbounds %struct.lzma_filter, ptr %dest, i64 %i.0.lcssa, i32 1, !dbg !168
  store ptr null, ptr %options48, align 8, !dbg !169, !tbaa !124
  br label %return, !dbg !170

error:                                            ; preds = %for.end, %for.body21
  %ret.3 = phi i32 [ 8, %for.body21 ], [ 5, %for.end ], !dbg !171
  call void @llvm.dbg.value(metadata i32 %ret.3, metadata !96, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.label(metadata !104), !dbg !172
  call void @llvm.dbg.value(metadata i64 %i.0102, metadata !97, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !105
  %cmp49.not107 = icmp eq i64 %i.0102, 0, !dbg !173
  br i1 %cmp49.not107, label %return, label %while.body.preheader, !dbg !174

while.body.preheader:                             ; preds = %for.body, %error
  %ret.3117 = phi i32 [ %ret.3, %error ], [ 8, %for.body ]
  %i.0102112116 = phi i64 [ %i.0102, %error ], [ 4, %for.body ]
  br label %while.body, !dbg !174

while.body:                                       ; preds = %while.body.preheader, %while.body
  %i.1108 = phi i64 [ %dec, %while.body ], [ %i.0102112116, %while.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1108, metadata !97, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !105
  %dec = add nsw i64 %i.1108, -1, !dbg !175
  call void @llvm.dbg.value(metadata i64 %dec, metadata !97, metadata !DIExpression()), !dbg !105
  %options51 = getelementptr inbounds %struct.lzma_filter, ptr %dest, i64 %dec, i32 1, !dbg !176
  %8 = load ptr, ptr %options51, align 8, !dbg !176, !tbaa !124
  tail call void @lzma_free(ptr noundef %8, ptr noundef %allocator) #5, !dbg !178
  store ptr null, ptr %options51, align 8, !dbg !179, !tbaa !124
  call void @llvm.dbg.value(metadata i64 %dec, metadata !97, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !105
  %cmp49.not = icmp eq i64 %dec, 0, !dbg !173
  br i1 %cmp49.not, label %return, label %while.body, !dbg !174, !llvm.loop !180

return:                                           ; preds = %while.body, %error, %for.end44, %entry
  %retval.1 = phi i32 [ 11, %entry ], [ 0, %for.end44 ], [ %ret.3, %error ], [ %ret.3117, %while.body ], !dbg !105
  ret i32 %retval.1, !dbg !182
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !183 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !188 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef readonly %options, ptr nocapture noundef readonly %coder_find, i1 noundef zeroext %is_encoder) local_unnamed_addr #0 !dbg !191 {
entry:
  %filters = alloca [5 x %struct.lzma_filter_info_s], align 16
  call void @llvm.dbg.value(metadata ptr %next, metadata !273, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !274, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %options, metadata !275, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %coder_find, metadata !276, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i1 %is_encoder, metadata !277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !303
  call void @llvm.dbg.value(metadata ptr %options, metadata !304, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata ptr undef, metadata !309, metadata !DIExpression()), !dbg !316
  %cmp.i = icmp eq ptr %options, null, !dbg !318
  br i1 %cmp.i, label %cleanup71, label %lor.lhs.false.i, !dbg !320

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i64, ptr %options, align 8, !dbg !321, !tbaa !110
  %cmp1.i = icmp eq i64 %0, -1, !dbg !322
  br i1 %cmp1.i, label %cleanup71, label %do.body.i, !dbg !323

do.body.i:                                        ; preds = %lor.lhs.false.i, %do.cond.i
  %1 = phi i64 [ %5, %do.cond.i ], [ %0, %lor.lhs.false.i ]
  %changes_size_count.0.i = phi i64 [ %add.i, %do.cond.i ], [ 0, %lor.lhs.false.i ], !dbg !324
  %non_last_ok.0.i = phi i8 [ %frombool.i, %do.cond.i ], [ 1, %lor.lhs.false.i ], !dbg !325
  %i.0.i = phi i64 [ %inc23.i, %do.cond.i ], [ 0, %lor.lhs.false.i ], !dbg !316
  call void @llvm.dbg.value(metadata i64 %i.0.i, metadata !313, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i8 undef, metadata !312, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i8 %non_last_ok.0.i, metadata !311, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i64 %changes_size_count.0.i, metadata !310, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i64 0, metadata !314, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i64 0, metadata !314, metadata !DIExpression()), !dbg !326
  %cmp6.not60.i = icmp eq i64 %1, 4611686018427387905, !dbg !327
  br i1 %cmp6.not60.i, label %for.end.i, label %for.body.i, !dbg !330

for.body.i:                                       ; preds = %do.body.i, %for.inc.i
  %j.061.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %do.body.i ]
  call void @llvm.dbg.value(metadata i64 %j.061.i, metadata !314, metadata !DIExpression()), !dbg !326
  %exitcond.i = icmp eq i64 %j.061.i, 9, !dbg !331
  br i1 %exitcond.i, label %cleanup71, label %for.inc.i, !dbg !333

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i64 %j.061.i, 1, !dbg !334
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !314, metadata !DIExpression()), !dbg !326
  %arrayidx4.i = getelementptr inbounds [10 x %struct.anon], ptr @features, i64 0, i64 %inc.i, !dbg !335
  %2 = load i64, ptr %arrayidx4.i, align 8, !dbg !336, !tbaa !143
  %cmp6.not.i = icmp eq i64 %1, %2, !dbg !327
  br i1 %cmp6.not.i, label %for.end.i, label %for.body.i, !dbg !330, !llvm.loop !337

for.end.i:                                        ; preds = %for.inc.i, %do.body.i
  %j.0.lcssa.i = phi i64 [ 0, %do.body.i ], [ %inc.i, %for.inc.i ], !dbg !339
  %tobool.not.i = icmp eq i8 %non_last_ok.0.i, 0, !dbg !340
  br i1 %tobool.not.i, label %cleanup71, label %do.cond.i, !dbg !342

do.cond.i:                                        ; preds = %for.end.i
  %3 = add i64 %j.0.lcssa.i, -2, !dbg !343
  %tobool16.i = icmp ult i64 %3, 7, !dbg !343
  %frombool.i = zext i1 %tobool16.i to i8, !dbg !344
  call void @llvm.dbg.value(metadata i8 %frombool.i, metadata !311, metadata !DIExpression()), !dbg !316
  %4 = icmp ult i64 %j.0.lcssa.i, 2, !dbg !345
  call void @llvm.dbg.value(metadata i1 %4, metadata !312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !316
  %conv.i = zext i1 %4 to i64, !dbg !346
  %add.i = add i64 %changes_size_count.0.i, %conv.i, !dbg !347
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !310, metadata !DIExpression()), !dbg !316
  %inc23.i = add i64 %i.0.i, 1, !dbg !348
  call void @llvm.dbg.value(metadata i64 %inc23.i, metadata !313, metadata !DIExpression()), !dbg !316
  %arrayidx24.i = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %inc23.i, !dbg !349
  %5 = load i64, ptr %arrayidx24.i, align 8, !dbg !350, !tbaa !110
  %cmp26.not.i = icmp eq i64 %5, -1, !dbg !351
  br i1 %cmp26.not.i, label %do.end.i, label %do.body.i, !dbg !352, !llvm.loop !353

do.end.i:                                         ; preds = %do.cond.i
  %cmp28.i = icmp ugt i64 %inc23.i, 4, !dbg !356
  br i1 %cmp28.i, label %cleanup71, label %lor.lhs.false30.i, !dbg !358

lor.lhs.false30.i:                                ; preds = %do.end.i
  %tobool31.not53.i = xor i1 %4, true, !dbg !359
  %cmp33.i = icmp ugt i64 %add.i, 3
  %or.cond.i = select i1 %tobool31.not53.i, i1 true, i1 %cmp33.i, !dbg !360
  br i1 %or.cond.i, label %cleanup71, label %do.end, !dbg !360

do.end:                                           ; preds = %lor.lhs.false30.i
  call void @llvm.dbg.value(metadata i32 0, metadata !279, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %filters) #5, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %filters, metadata !282, metadata !DIExpression()), !dbg !363
  %cmp2129.not = icmp eq i64 %inc23.i, 0, !dbg !364
  br i1 %is_encoder, label %for.cond.preheader, label %for.cond27.preheader, !dbg !365

for.cond27.preheader:                             ; preds = %do.end
  call void @llvm.dbg.value(metadata i64 0, metadata !296, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i64 %inc23.i, metadata !278, metadata !DIExpression()), !dbg !303
  br i1 %cmp2129.not, label %if.end60, label %for.body30.preheader, !dbg !367

for.body30.preheader:                             ; preds = %for.cond27.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !296, metadata !DIExpression()), !dbg !366
  %call34148 = tail call ptr %coder_find(i64 noundef %0) #5, !dbg !368
  call void @llvm.dbg.value(metadata ptr %call34148, metadata !299, metadata !DIExpression()), !dbg !369
  %cmp35149 = icmp eq ptr %call34148, null, !dbg !370
  br i1 %cmp35149, label %cleanup70, label %lor.lhs.false36, !dbg !372

for.cond.preheader:                               ; preds = %do.end
  call void @llvm.dbg.value(metadata i64 0, metadata !286, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i64 %inc23.i, metadata !278, metadata !DIExpression()), !dbg !303
  br i1 %cmp2129.not, label %if.end60, label %for.body.preheader, !dbg !374

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !286, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i64 %i.0.i, metadata !290, metadata !DIExpression()), !dbg !375
  %call4153 = tail call ptr %coder_find(i64 noundef %0) #5, !dbg !376
  call void @llvm.dbg.value(metadata ptr %call4153, metadata !294, metadata !DIExpression()), !dbg !375
  %cmp5154 = icmp eq ptr %call4153, null, !dbg !377
  br i1 %cmp5154, label %cleanup70, label %lor.lhs.false, !dbg !379

lor.lhs.false:                                    ; preds = %for.body.preheader, %for.inc.for.body_crit_edge
  %call4158 = phi ptr [ %call4, %for.inc.for.body_crit_edge ], [ %call4153, %for.body.preheader ]
  %arrayidx157 = phi ptr [ %arrayidx, %for.inc.for.body_crit_edge ], [ %options, %for.body.preheader ]
  %sub3156 = phi i64 [ %sub3, %for.inc.for.body_crit_edge ], [ %i.0.i, %for.body.preheader ]
  %i.0130155 = phi i64 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0130155, metadata !286, metadata !DIExpression()), !dbg !373
  %init = getelementptr inbounds %struct.lzma_filter_coder, ptr %call4158, i64 0, i32 1, !dbg !380
  %6 = load ptr, ptr %init, align 8, !dbg !380, !tbaa !381
  %cmp6 = icmp eq ptr %6, null, !dbg !383
  br i1 %cmp6, label %cleanup70, label %for.inc, !dbg !384

for.inc:                                          ; preds = %lor.lhs.false
  %7 = load i64, ptr %arrayidx157, align 8, !dbg !385, !tbaa !110
  %arrayidx11 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %sub3156, !dbg !386
  store i64 %7, ptr %arrayidx11, align 8, !dbg !387, !tbaa !388
  %init15 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %sub3156, i32 1, !dbg !390
  store ptr %6, ptr %init15, align 8, !dbg !391, !tbaa !392
  %options17 = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %i.0130155, i32 1, !dbg !393
  %8 = load ptr, ptr %options17, align 8, !dbg !393, !tbaa !124
  %options19 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %sub3156, i32 2, !dbg !394
  store ptr %8, ptr %options19, align 8, !dbg !395, !tbaa !396
  call void @llvm.dbg.value(metadata i64 %i.0130155, metadata !286, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !373
  call void @llvm.dbg.value(metadata i64 %inc23.i, metadata !278, metadata !DIExpression()), !dbg !303
  %exitcond136.not = icmp eq i64 %i.0.i, %i.0130155, !dbg !397
  br i1 %exitcond136.not, label %if.end60, label %for.inc.for.body_crit_edge, !dbg !374, !llvm.loop !398

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %inc = add nuw i64 %i.0130155, 1, !dbg !400
  call void @llvm.dbg.value(metadata i64 %inc, metadata !286, metadata !DIExpression()), !dbg !373
  %arrayidx.phi.trans.insert = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %inc
  %.pre137 = load i64, ptr %arrayidx.phi.trans.insert, align 8, !dbg !401, !tbaa !110
  %sub3 = sub i64 %i.0.i, %inc, !dbg !402
  call void @llvm.dbg.value(metadata i64 %sub3, metadata !290, metadata !DIExpression()), !dbg !375
  %arrayidx = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %inc, !dbg !403
  %call4 = tail call ptr %coder_find(i64 noundef %.pre137) #5, !dbg !376
  call void @llvm.dbg.value(metadata ptr %call4, metadata !294, metadata !DIExpression()), !dbg !375
  %cmp5 = icmp eq ptr %call4, null, !dbg !377
  br i1 %cmp5, label %cleanup70, label %lor.lhs.false, !dbg !379

lor.lhs.false36:                                  ; preds = %for.body30.preheader, %for.inc55.for.body30_crit_edge
  %call34152 = phi ptr [ %call34, %for.inc55.for.body30_crit_edge ], [ %call34148, %for.body30.preheader ]
  %arrayidx32151 = phi ptr [ %arrayidx32, %for.inc55.for.body30_crit_edge ], [ %options, %for.body30.preheader ]
  %i26.0128150 = phi i64 [ %inc56, %for.inc55.for.body30_crit_edge ], [ 0, %for.body30.preheader ]
  call void @llvm.dbg.value(metadata i64 %i26.0128150, metadata !296, metadata !DIExpression()), !dbg !366
  %init37 = getelementptr inbounds %struct.lzma_filter_coder, ptr %call34152, i64 0, i32 1, !dbg !404
  %9 = load ptr, ptr %init37, align 8, !dbg !404, !tbaa !381
  %cmp38 = icmp eq ptr %9, null, !dbg !405
  br i1 %cmp38, label %cleanup70, label %for.inc55, !dbg !406

for.inc55:                                        ; preds = %lor.lhs.false36
  %10 = load i64, ptr %arrayidx32151, align 8, !dbg !407, !tbaa !110
  %arrayidx43 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %i26.0128150, !dbg !408
  store i64 %10, ptr %arrayidx43, align 8, !dbg !409, !tbaa !388
  %init47 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %i26.0128150, i32 1, !dbg !410
  store ptr %9, ptr %init47, align 8, !dbg !411, !tbaa !392
  %options49 = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %i26.0128150, i32 1, !dbg !412
  %11 = load ptr, ptr %options49, align 8, !dbg !412, !tbaa !124
  %options51 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %i26.0128150, i32 2, !dbg !413
  store ptr %11, ptr %options51, align 8, !dbg !414, !tbaa !396
  call void @llvm.dbg.value(metadata i64 %i26.0128150, metadata !296, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !366
  call void @llvm.dbg.value(metadata i64 %inc23.i, metadata !278, metadata !DIExpression()), !dbg !303
  %exitcond.not = icmp eq i64 %i26.0128150, %i.0.i, !dbg !415
  br i1 %exitcond.not, label %if.end60, label %for.inc55.for.body30_crit_edge, !dbg !367, !llvm.loop !416

for.inc55.for.body30_crit_edge:                   ; preds = %for.inc55
  %inc56 = add nuw i64 %i26.0128150, 1, !dbg !418
  call void @llvm.dbg.value(metadata i64 %inc56, metadata !296, metadata !DIExpression()), !dbg !366
  %arrayidx32.phi.trans.insert = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %inc56
  %.pre = load i64, ptr %arrayidx32.phi.trans.insert, align 8, !dbg !419, !tbaa !110
  %arrayidx32 = getelementptr inbounds %struct.lzma_filter, ptr %options, i64 %inc56, !dbg !420
  %call34 = tail call ptr %coder_find(i64 noundef %.pre) #5, !dbg !368
  call void @llvm.dbg.value(metadata ptr %call34, metadata !299, metadata !DIExpression()), !dbg !369
  %cmp35 = icmp eq ptr %call34, null, !dbg !370
  br i1 %cmp35, label %cleanup70, label %lor.lhs.false36, !dbg !372

if.end60:                                         ; preds = %for.inc55, %for.inc, %for.cond27.preheader, %for.cond.preheader
  call void @llvm.dbg.value(metadata i64 %inc23.i, metadata !278, metadata !DIExpression()), !dbg !303
  %arrayidx61 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %inc23.i, !dbg !421
  store i64 -1, ptr %arrayidx61, align 8, !dbg !422, !tbaa !388
  %init64 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 %inc23.i, i32 1, !dbg !423
  store ptr null, ptr %init64, align 8, !dbg !424, !tbaa !392
  %call65 = call i32 @lzma_next_filter_init(ptr noundef %next, ptr noundef %allocator, ptr noundef nonnull %filters) #5, !dbg !425
  call void @llvm.dbg.value(metadata i32 %call65, metadata !302, metadata !DIExpression()), !dbg !303
  %cmp66.not = icmp eq i32 %call65, 0, !dbg !426
  br i1 %cmp66.not, label %cleanup70, label %if.then67, !dbg !428

if.then67:                                        ; preds = %if.end60
  call void @lzma_next_end(ptr noundef %next, ptr noundef %allocator) #5, !dbg !429
  br label %cleanup70, !dbg !429

cleanup70:                                        ; preds = %for.inc55.for.body30_crit_edge, %lor.lhs.false36, %for.inc.for.body_crit_edge, %lor.lhs.false, %for.body30.preheader, %for.body.preheader, %if.end60, %if.then67
  %retval.7 = phi i32 [ %call65, %if.then67 ], [ 0, %if.end60 ], [ 8, %for.body.preheader ], [ 8, %for.body30.preheader ], [ 8, %lor.lhs.false ], [ 8, %for.inc.for.body_crit_edge ], [ 8, %lor.lhs.false36 ], [ 8, %for.inc55.for.body30_crit_edge ], !dbg !303
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %filters) #5, !dbg !430
  br label %cleanup71

cleanup71:                                        ; preds = %for.end.i, %for.body.i, %do.end.i, %lor.lhs.false30.i, %entry, %lor.lhs.false.i, %cleanup70
  %retval.8 = phi i32 [ %retval.7, %cleanup70 ], [ 8, %do.end.i ], [ 8, %lor.lhs.false30.i ], [ 11, %entry ], [ 11, %lor.lhs.false.i ], [ 8, %for.body.i ], [ 8, %for.end.i ], !dbg !303
  ret i32 %retval.8, !dbg !430
}

declare !dbg !431 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !432 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_raw_coder_memusage(ptr nocapture noundef readonly %coder_find, ptr noundef readonly %filters) local_unnamed_addr #0 !dbg !435 {
entry:
  call void @llvm.dbg.value(metadata ptr %coder_find, metadata !439, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata ptr %filters, metadata !440, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata ptr %filters, metadata !304, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata ptr undef, metadata !309, metadata !DIExpression()), !dbg !452
  %cmp.i = icmp eq ptr %filters, null, !dbg !455
  br i1 %cmp.i, label %return, label %lor.lhs.false.i, !dbg !456

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i64, ptr %filters, align 8, !dbg !457, !tbaa !110
  %cmp1.i = icmp eq i64 %0, -1, !dbg !458
  br i1 %cmp1.i, label %return, label %do.body.i, !dbg !459

do.body.i:                                        ; preds = %lor.lhs.false.i, %do.cond.i
  %1 = phi i64 [ %5, %do.cond.i ], [ %0, %lor.lhs.false.i ]
  %changes_size_count.0.i = phi i64 [ %add.i, %do.cond.i ], [ 0, %lor.lhs.false.i ], !dbg !460
  %non_last_ok.0.i = phi i8 [ %frombool.i, %do.cond.i ], [ 1, %lor.lhs.false.i ], !dbg !461
  %i.0.i = phi i64 [ %inc23.i, %do.cond.i ], [ 0, %lor.lhs.false.i ], !dbg !452
  call void @llvm.dbg.value(metadata i64 %i.0.i, metadata !313, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i8 undef, metadata !312, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i8 %non_last_ok.0.i, metadata !311, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i64 %changes_size_count.0.i, metadata !310, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i64 0, metadata !314, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i64 0, metadata !314, metadata !DIExpression()), !dbg !462
  %cmp6.not60.i = icmp eq i64 %1, 4611686018427387905, !dbg !463
  br i1 %cmp6.not60.i, label %for.end.i, label %for.body.i, !dbg !464

for.body.i:                                       ; preds = %do.body.i, %for.inc.i
  %j.061.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %do.body.i ]
  call void @llvm.dbg.value(metadata i64 %j.061.i, metadata !314, metadata !DIExpression()), !dbg !462
  %exitcond.i = icmp eq i64 %j.061.i, 9, !dbg !465
  br i1 %exitcond.i, label %return, label %for.inc.i, !dbg !466

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i64 %j.061.i, 1, !dbg !467
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !314, metadata !DIExpression()), !dbg !462
  %arrayidx4.i = getelementptr inbounds [10 x %struct.anon], ptr @features, i64 0, i64 %inc.i, !dbg !468
  %2 = load i64, ptr %arrayidx4.i, align 8, !dbg !469, !tbaa !143
  %cmp6.not.i = icmp eq i64 %1, %2, !dbg !463
  br i1 %cmp6.not.i, label %for.end.i, label %for.body.i, !dbg !464, !llvm.loop !470

for.end.i:                                        ; preds = %for.inc.i, %do.body.i
  %j.0.lcssa.i = phi i64 [ 0, %do.body.i ], [ %inc.i, %for.inc.i ], !dbg !472
  %tobool.not.i = icmp eq i8 %non_last_ok.0.i, 0, !dbg !473
  br i1 %tobool.not.i, label %return, label %do.cond.i, !dbg !474

do.cond.i:                                        ; preds = %for.end.i
  %3 = add i64 %j.0.lcssa.i, -2, !dbg !475
  %tobool16.i = icmp ult i64 %3, 7, !dbg !475
  %frombool.i = zext i1 %tobool16.i to i8, !dbg !476
  call void @llvm.dbg.value(metadata i8 %frombool.i, metadata !311, metadata !DIExpression()), !dbg !452
  %4 = icmp ult i64 %j.0.lcssa.i, 2, !dbg !477
  call void @llvm.dbg.value(metadata i1 %4, metadata !312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !452
  %conv.i = zext i1 %4 to i64, !dbg !478
  %add.i = add i64 %changes_size_count.0.i, %conv.i, !dbg !479
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !310, metadata !DIExpression()), !dbg !452
  %inc23.i = add i64 %i.0.i, 1, !dbg !480
  call void @llvm.dbg.value(metadata i64 %inc23.i, metadata !313, metadata !DIExpression()), !dbg !452
  %arrayidx24.i = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %inc23.i, !dbg !481
  %5 = load i64, ptr %arrayidx24.i, align 8, !dbg !482, !tbaa !110
  %cmp26.not.i = icmp eq i64 %5, -1, !dbg !483
  br i1 %cmp26.not.i, label %do.end.i, label %do.body.i, !dbg !484, !llvm.loop !485

do.end.i:                                         ; preds = %do.cond.i
  %cmp28.i = icmp ugt i64 %inc23.i, 4, !dbg !488
  br i1 %cmp28.i, label %return, label %lor.lhs.false30.i, !dbg !489

lor.lhs.false30.i:                                ; preds = %do.end.i
  %tobool31.not53.i = xor i1 %4, true, !dbg !490
  %cmp33.i = icmp ugt i64 %add.i, 3
  %or.cond.i = select i1 %tobool31.not53.i, i1 true, i1 %cmp33.i, !dbg !491
  br i1 %or.cond.i, label %return, label %do.body, !dbg !491

do.body:                                          ; preds = %lor.lhs.false30.i, %do.cond
  %6 = phi i64 [ %9, %do.cond ], [ %0, %lor.lhs.false30.i ], !dbg !492
  %total.0 = phi i64 [ %total.2, %do.cond ], [ 0, %lor.lhs.false30.i ], !dbg !493
  %i.0 = phi i64 [ %inc, %do.cond ], [ 0, %lor.lhs.false30.i ], !dbg !451
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !444, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata i64 %total.0, metadata !443, metadata !DIExpression()), !dbg !451
  %call1 = tail call ptr %coder_find(i64 noundef %6) #5, !dbg !494
  call void @llvm.dbg.value(metadata ptr %call1, metadata !445, metadata !DIExpression()), !dbg !495
  %cmp2 = icmp eq ptr %call1, null, !dbg !496
  br i1 %cmp2, label %return, label %if.end4, !dbg !498

if.end4:                                          ; preds = %do.body
  %memusage = getelementptr inbounds %struct.lzma_filter_coder, ptr %call1, i64 0, i32 2, !dbg !499
  %7 = load ptr, ptr %memusage, align 8, !dbg !499, !tbaa !500
  %cmp5 = icmp eq ptr %7, null, !dbg !501
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !502

if.then6:                                         ; preds = %if.end4
  %add = add i64 %total.0, 1024, !dbg !503
  call void @llvm.dbg.value(metadata i64 %add, metadata !443, metadata !DIExpression()), !dbg !451
  br label %do.cond, !dbg !505

if.else:                                          ; preds = %if.end4
  %options = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %i.0, i32 1, !dbg !506
  %8 = load ptr, ptr %options, align 8, !dbg !506, !tbaa !124
  %call9 = tail call i64 %7(ptr noundef %8) #5, !dbg !507
  call void @llvm.dbg.value(metadata i64 %call9, metadata !447, metadata !DIExpression()), !dbg !508
  %cmp10 = icmp eq i64 %call9, -1, !dbg !509
  %add13 = add i64 %call9, %total.0
  call void @llvm.dbg.value(metadata i64 undef, metadata !443, metadata !DIExpression()), !dbg !451
  br i1 %cmp10, label %return, label %do.cond

do.cond:                                          ; preds = %if.else, %if.then6
  %total.2 = phi i64 [ %add, %if.then6 ], [ %add13, %if.else ], !dbg !451
  call void @llvm.dbg.value(metadata i64 %total.2, metadata !443, metadata !DIExpression()), !dbg !451
  %inc = add i64 %i.0, 1, !dbg !511
  call void @llvm.dbg.value(metadata i64 %inc, metadata !444, metadata !DIExpression()), !dbg !451
  %arrayidx21 = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %inc, !dbg !512
  %9 = load i64, ptr %arrayidx21, align 8, !dbg !513, !tbaa !110
  %cmp23.not = icmp eq i64 %9, -1, !dbg !514
  br i1 %cmp23.not, label %do.end, label %do.body, !dbg !515, !llvm.loop !516

do.end:                                           ; preds = %do.cond
  %add24 = add i64 %total.2, 32768, !dbg !519
  br label %return, !dbg !520

return:                                           ; preds = %for.end.i, %for.body.i, %do.body, %if.else, %do.end.i, %lor.lhs.false30.i, %entry, %lor.lhs.false.i, %do.end
  %retval.6 = phi i64 [ %add24, %do.end ], [ -1, %lor.lhs.false.i ], [ -1, %entry ], [ -1, %lor.lhs.false30.i ], [ -1, %do.end.i ], [ -1, %if.else ], [ -1, %do.body ], [ -1, %for.body.i ], [ -1, %for.end.i ], !dbg !451
  ret i64 %retval.6, !dbg !521
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "features", scope: !2, file: !37, line: 36, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !36, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_common.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "40ce9c1355191130339ea0043a46dd45")
!4 = !{!5, !21, !27}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 57, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "LZMA_OK", value: 0)
!10 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!11 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!12 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!13 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!14 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!15 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!16 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!17 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!18 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!19 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!20 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 250, baseType: !7, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!24 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!25 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!26 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 27, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!31 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!32 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!33 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !{!0}
!37 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_common.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "40ce9c1355191130339ea0043a46dd45")
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1920, elements: !57)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 16, size: 192, elements: !41)
!41 = !{!42, !50, !53, !55, !56}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !40, file: !37, line: 18, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !44, line: 63, baseType: !45)
!44 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !46, line: 27, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !48, line: 45, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "options_size", scope: !40, file: !37, line: 21, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 46, baseType: !49)
!52 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!53 = !DIDerivedType(tag: DW_TAG_member, name: "non_last_ok", scope: !40, file: !37, line: 25, baseType: !54, size: 8, offset: 128)
!54 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "last_ok", scope: !40, file: !37, line: 29, baseType: !54, size: 8, offset: 136)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "changes_size", scope: !40, file: !37, line: 34, baseType: !54, size: 8, offset: 144)
!57 = !{!58}
!58 = !DISubrange(count: 10)
!59 = !{i32 7, !"Dwarf Version", i32 5}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{i32 7, !"PIC Level", i32 2}
!63 = !{i32 7, !"PIE Level", i32 2}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!66 = distinct !DISubprogram(name: "lzma_filters_copy", scope: !37, file: !37, line: 125, type: !67, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !92)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !70, !78, !79}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !6, line: 237, baseType: !5)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !73, line: 65, baseType: !74)
!73 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 43, size: 128, elements: !75)
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !74, file: !73, line: 54, baseType: !43, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !74, file: !73, line: 63, baseType: !35, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !6, line: 403, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 341, size: 192, elements: !82)
!82 = !{!83, !87, !91}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !81, file: !6, line: 376, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!35, !35, !51, !51}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !81, file: !6, line: 390, baseType: !88, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !35, !35}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !81, file: !6, line: 401, baseType: !35, size: 64, offset: 128)
!92 = !{!93, !94, !95, !96, !97, !98, !104}
!93 = !DILocalVariable(name: "src", arg: 1, scope: !66, file: !37, line: 125, type: !70)
!94 = !DILocalVariable(name: "dest", arg: 2, scope: !66, file: !37, line: 125, type: !78)
!95 = !DILocalVariable(name: "allocator", arg: 3, scope: !66, file: !37, line: 126, type: !79)
!96 = !DILocalVariable(name: "ret", scope: !66, file: !37, line: 131, type: !69)
!97 = !DILocalVariable(name: "i", scope: !66, file: !37, line: 132, type: !51)
!98 = !DILocalVariable(name: "j", scope: !99, file: !37, line: 154, type: !51)
!99 = distinct !DILexicalBlock(scope: !100, file: !37, line: 145, column: 10)
!100 = distinct !DILexicalBlock(scope: !101, file: !37, line: 143, column: 7)
!101 = distinct !DILexicalBlock(scope: !102, file: !37, line: 133, column: 50)
!102 = distinct !DILexicalBlock(scope: !103, file: !37, line: 133, column: 2)
!103 = distinct !DILexicalBlock(scope: !66, file: !37, line: 133, column: 2)
!104 = !DILabel(scope: !66, name: "error", file: !37, line: 182)
!105 = !DILocation(line: 0, scope: !66)
!106 = !DILocation(line: 128, column: 10, scope: !107)
!107 = distinct !DILexicalBlock(scope: !66, file: !37, line: 128, column: 6)
!108 = !DILocation(line: 128, column: 18, scope: !107)
!109 = !DILocation(line: 133, column: 21, scope: !102)
!110 = !{!111, !112, i64 0}
!111 = !{!"", !112, i64 0, !115, i64 8}
!112 = !{!"long", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !{!"any pointer", !113, i64 0}
!116 = !DILocation(line: 133, column: 24, scope: !102)
!117 = !DILocation(line: 133, column: 2, scope: !103)
!118 = !DILocation(line: 136, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !101, file: !37, line: 136, column: 7)
!120 = !DILocation(line: 136, column: 7, scope: !101)
!121 = !DILocation(line: 141, column: 3, scope: !101)
!122 = !DILocation(line: 141, column: 14, scope: !101)
!123 = !DILocation(line: 143, column: 14, scope: !100)
!124 = !{!111, !115, i64 8}
!125 = !DILocation(line: 143, column: 22, scope: !100)
!126 = !DILocation(line: 143, column: 7, scope: !101)
!127 = !DILocation(line: 0, scope: !99)
!128 = !DILocation(line: 155, column: 26, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !37, line: 155, column: 4)
!130 = distinct !DILexicalBlock(scope: !99, file: !37, line: 155, column: 4)
!131 = !DILocation(line: 155, column: 4, scope: !130)
!132 = !DILocation(line: 144, column: 12, scope: !133)
!133 = distinct !DILexicalBlock(scope: !100, file: !37, line: 143, column: 31)
!134 = !DILocation(line: 144, column: 20, scope: !133)
!135 = !DILocation(line: 145, column: 3, scope: !133)
!136 = !DILocation(line: 156, column: 24, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !37, line: 156, column: 9)
!138 = distinct !DILexicalBlock(scope: !129, file: !37, line: 155, column: 50)
!139 = !DILocation(line: 156, column: 9, scope: !138)
!140 = !DILocation(line: 155, column: 45, scope: !129)
!141 = !DILocation(line: 155, column: 29, scope: !129)
!142 = !DILocation(line: 155, column: 41, scope: !129)
!143 = !{!144, !112, i64 0}
!144 = !{!"", !112, i64 0, !112, i64 8, !145, i64 16, !145, i64 17, !145, i64 18}
!145 = !{!"_Bool", !113, i64 0}
!146 = distinct !{!146, !131, !147, !148, !149}
!147 = !DILocation(line: 160, column: 4, scope: !130)
!148 = !{!"llvm.loop.mustprogress"}
!149 = !{!"llvm.loop.unroll.disable"}
!150 = !DILocation(line: 0, scope: !130)
!151 = !DILocation(line: 163, column: 45, scope: !99)
!152 = !{!144, !112, i64 8}
!153 = !DILocation(line: 163, column: 22, scope: !99)
!154 = !DILocation(line: 163, column: 12, scope: !99)
!155 = !DILocation(line: 163, column: 20, scope: !99)
!156 = !DILocation(line: 165, column: 24, scope: !157)
!157 = distinct !DILexicalBlock(scope: !99, file: !37, line: 165, column: 8)
!158 = !DILocation(line: 165, column: 8, scope: !99)
!159 = !DILocation(line: 170, column: 35, scope: !99)
!160 = !DILocation(line: 170, column: 4, scope: !99)
!161 = !DILocation(line: 133, column: 45, scope: !102)
!162 = !DILocation(line: 133, column: 14, scope: !102)
!163 = distinct !{!163, !117, !164, !148, !149}
!164 = !DILocation(line: 173, column: 2, scope: !103)
!165 = !DILocation(line: 0, scope: !103)
!166 = !DILocation(line: 177, column: 2, scope: !66)
!167 = !DILocation(line: 177, column: 13, scope: !66)
!168 = !DILocation(line: 178, column: 10, scope: !66)
!169 = !DILocation(line: 178, column: 18, scope: !66)
!170 = !DILocation(line: 180, column: 2, scope: !66)
!171 = !DILocation(line: 0, scope: !101)
!172 = !DILocation(line: 182, column: 1, scope: !66)
!173 = !DILocation(line: 184, column: 13, scope: !66)
!174 = !DILocation(line: 184, column: 2, scope: !66)
!175 = !DILocation(line: 184, column: 10, scope: !66)
!176 = !DILocation(line: 185, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !66, file: !37, line: 184, column: 18)
!178 = !DILocation(line: 185, column: 3, scope: !177)
!179 = !DILocation(line: 186, column: 19, scope: !177)
!180 = distinct !{!180, !174, !181, !148, !149}
!181 = !DILocation(line: 187, column: 2, scope: !66)
!182 = !DILocation(line: 190, column: 1, scope: !66)
!183 = !DISubprogram(name: "lzma_alloc", scope: !184, file: !184, line: 211, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !187)
!184 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!185 = !DISubroutineType(types: !186)
!186 = !{!35, !51, !79}
!187 = !{}
!188 = !DISubprogram(name: "lzma_free", scope: !184, file: !184, line: 215, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !187)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !35, !79}
!191 = distinct !DISubprogram(name: "lzma_raw_coder_init", scope: !37, file: !37, line: 242, type: !192, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !272)
!192 = !DISubroutineType(types: !193)
!193 = !{!69, !194, !79, !70, !242, !54}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !184, line: 80, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !184, line: 124, size: 512, elements: !197)
!197 = !{!198, !201, !202, !205, !221, !226, !233, !238}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !196, file: !184, line: 126, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !184, line: 78, baseType: null)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !196, file: !184, line: 130, baseType: !43, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !196, file: !184, line: 136, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !204, line: 90, baseType: !49)
!204 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!205 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !196, file: !184, line: 139, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !184, line: 94, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!69, !199, !79, !210, !216, !51, !218, !216, !51, !220}
!210 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !46, line: 24, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !48, line: 38, baseType: !215)
!215 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!216 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !6, line: 322, baseType: !21)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !196, file: !184, line: 144, baseType: !222, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !184, line: 102, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !199, !79}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !196, file: !184, line: 148, baseType: !227, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !28, line: 55, baseType: !27)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !196, file: !184, line: 152, baseType: !234, size: 64, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!69, !199, !237, !237, !45}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !196, file: !184, line: 157, baseType: !239, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!69, !199, !79, !70, !70}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_find", file: !243, line: 35, baseType: !244)
!243 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2b3d0d0ae4b0d967ddcb9fa677c708ca")
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !43}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_coder", file: !243, line: 32, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !243, line: 20, size: 192, elements: !251)
!251 = !{!252, !253, !266}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !250, file: !243, line: 22, baseType: !43, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !250, file: !243, line: 26, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !184, line: 86, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!69, !194, !79, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !184, line: 82, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !184, line: 109, size: 192, elements: !262)
!262 = !{!263, !264, !265}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !261, file: !184, line: 112, baseType: !43, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !261, file: !184, line: 116, baseType: !254, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !261, file: !184, line: 119, baseType: !35, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !250, file: !243, line: 30, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!45, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !282, !286, !290, !294, !296, !299, !302}
!273 = !DILocalVariable(name: "next", arg: 1, scope: !191, file: !37, line: 242, type: !194)
!274 = !DILocalVariable(name: "allocator", arg: 2, scope: !191, file: !37, line: 242, type: !79)
!275 = !DILocalVariable(name: "options", arg: 3, scope: !191, file: !37, line: 243, type: !70)
!276 = !DILocalVariable(name: "coder_find", arg: 4, scope: !191, file: !37, line: 244, type: !242)
!277 = !DILocalVariable(name: "is_encoder", arg: 5, scope: !191, file: !37, line: 244, type: !54)
!278 = !DILocalVariable(name: "count", scope: !191, file: !37, line: 247, type: !51)
!279 = !DILocalVariable(name: "ret_", scope: !280, file: !37, line: 248, type: !281)
!280 = distinct !DILexicalBlock(scope: !191, file: !37, line: 248, column: 2)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!282 = !DILocalVariable(name: "filters", scope: !191, file: !37, line: 251, type: !283)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 960, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 5)
!286 = !DILocalVariable(name: "i", scope: !287, file: !37, line: 253, type: !51)
!287 = distinct !DILexicalBlock(scope: !288, file: !37, line: 253, column: 3)
!288 = distinct !DILexicalBlock(scope: !289, file: !37, line: 252, column: 18)
!289 = distinct !DILexicalBlock(scope: !191, file: !37, line: 252, column: 6)
!290 = !DILocalVariable(name: "j", scope: !291, file: !37, line: 257, type: !293)
!291 = distinct !DILexicalBlock(scope: !292, file: !37, line: 253, column: 38)
!292 = distinct !DILexicalBlock(scope: !287, file: !37, line: 253, column: 3)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!294 = !DILocalVariable(name: "fc", scope: !291, file: !37, line: 259, type: !295)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!296 = !DILocalVariable(name: "i", scope: !297, file: !37, line: 269, type: !51)
!297 = distinct !DILexicalBlock(scope: !298, file: !37, line: 269, column: 3)
!298 = distinct !DILexicalBlock(scope: !289, file: !37, line: 268, column: 9)
!299 = !DILocalVariable(name: "fc", scope: !300, file: !37, line: 270, type: !295)
!300 = distinct !DILexicalBlock(scope: !301, file: !37, line: 269, column: 38)
!301 = distinct !DILexicalBlock(scope: !297, file: !37, line: 269, column: 3)
!302 = !DILocalVariable(name: "ret", scope: !191, file: !37, line: 286, type: !281)
!303 = !DILocation(line: 0, scope: !191)
!304 = !DILocalVariable(name: "filters", arg: 1, scope: !305, file: !37, line: 194, type: !70)
!305 = distinct !DISubprogram(name: "validate_chain", scope: !37, file: !37, line: 194, type: !306, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!69, !70, !217}
!308 = !{!304, !309, !310, !311, !312, !313, !314}
!309 = !DILocalVariable(name: "count", arg: 2, scope: !305, file: !37, line: 194, type: !217)
!310 = !DILocalVariable(name: "changes_size_count", scope: !305, file: !37, line: 202, type: !51)
!311 = !DILocalVariable(name: "non_last_ok", scope: !305, file: !37, line: 205, type: !54)
!312 = !DILocalVariable(name: "last_ok", scope: !305, file: !37, line: 210, type: !54)
!313 = !DILocalVariable(name: "i", scope: !305, file: !37, line: 212, type: !51)
!314 = !DILocalVariable(name: "j", scope: !315, file: !37, line: 214, type: !51)
!315 = distinct !DILexicalBlock(scope: !305, file: !37, line: 213, column: 5)
!316 = !DILocation(line: 0, scope: !305, inlinedAt: !317)
!317 = distinct !DILocation(line: 248, column: 2, scope: !280)
!318 = !DILocation(line: 197, column: 14, scope: !319, inlinedAt: !317)
!319 = distinct !DILexicalBlock(scope: !305, file: !37, line: 197, column: 6)
!320 = !DILocation(line: 197, column: 22, scope: !319, inlinedAt: !317)
!321 = !DILocation(line: 197, column: 36, scope: !319, inlinedAt: !317)
!322 = !DILocation(line: 197, column: 39, scope: !319, inlinedAt: !317)
!323 = !DILocation(line: 197, column: 6, scope: !305, inlinedAt: !317)
!324 = !DILocation(line: 202, column: 9, scope: !305, inlinedAt: !317)
!325 = !DILocation(line: 205, column: 7, scope: !305, inlinedAt: !317)
!326 = !DILocation(line: 0, scope: !315, inlinedAt: !317)
!327 = !DILocation(line: 215, column: 29, scope: !328, inlinedAt: !317)
!328 = distinct !DILexicalBlock(scope: !329, file: !37, line: 215, column: 3)
!329 = distinct !DILexicalBlock(scope: !315, file: !37, line: 215, column: 3)
!330 = !DILocation(line: 215, column: 3, scope: !329, inlinedAt: !317)
!331 = !DILocation(line: 216, column: 23, scope: !332, inlinedAt: !317)
!332 = distinct !DILexicalBlock(scope: !328, file: !37, line: 216, column: 8)
!333 = !DILocation(line: 216, column: 8, scope: !328, inlinedAt: !317)
!334 = !DILocation(line: 215, column: 48, scope: !328, inlinedAt: !317)
!335 = !DILocation(line: 215, column: 32, scope: !328, inlinedAt: !317)
!336 = !DILocation(line: 215, column: 44, scope: !328, inlinedAt: !317)
!337 = distinct !{!337, !330, !338, !148, !149}
!338 = !DILocation(line: 217, column: 12, scope: !329, inlinedAt: !317)
!339 = !DILocation(line: 0, scope: !329, inlinedAt: !317)
!340 = !DILocation(line: 221, column: 8, scope: !341, inlinedAt: !317)
!341 = distinct !DILexicalBlock(scope: !315, file: !37, line: 221, column: 7)
!342 = !DILocation(line: 221, column: 7, scope: !315, inlinedAt: !317)
!343 = !DILocation(line: 224, column: 29, scope: !315, inlinedAt: !317)
!344 = !DILocation(line: 224, column: 15, scope: !315, inlinedAt: !317)
!345 = !DILocation(line: 225, column: 25, scope: !315, inlinedAt: !317)
!346 = !DILocation(line: 226, column: 25, scope: !315, inlinedAt: !317)
!347 = !DILocation(line: 226, column: 22, scope: !315, inlinedAt: !317)
!348 = !DILocation(line: 228, column: 19, scope: !305, inlinedAt: !317)
!349 = !DILocation(line: 228, column: 11, scope: !305, inlinedAt: !317)
!350 = !DILocation(line: 228, column: 24, scope: !305, inlinedAt: !317)
!351 = !DILocation(line: 228, column: 27, scope: !305, inlinedAt: !317)
!352 = !DILocation(line: 228, column: 2, scope: !315, inlinedAt: !317)
!353 = distinct !{!353, !354, !355, !148, !149}
!354 = !DILocation(line: 213, column: 2, scope: !305, inlinedAt: !317)
!355 = !DILocation(line: 228, column: 46, scope: !305, inlinedAt: !317)
!356 = !DILocation(line: 233, column: 8, scope: !357, inlinedAt: !317)
!357 = distinct !DILexicalBlock(scope: !305, file: !37, line: 233, column: 6)
!358 = !DILocation(line: 233, column: 27, scope: !357, inlinedAt: !317)
!359 = !DILocation(line: 233, column: 31, scope: !357, inlinedAt: !317)
!360 = !DILocation(line: 233, column: 39, scope: !357, inlinedAt: !317)
!361 = !DILocation(line: 0, scope: !280)
!362 = !DILocation(line: 251, column: 2, scope: !191)
!363 = !DILocation(line: 251, column: 19, scope: !191)
!364 = !DILocation(line: 0, scope: !289)
!365 = !DILocation(line: 252, column: 6, scope: !191)
!366 = !DILocation(line: 0, scope: !297)
!367 = !DILocation(line: 269, column: 3, scope: !297)
!368 = !DILocation(line: 271, column: 8, scope: !300)
!369 = !DILocation(line: 0, scope: !300)
!370 = !DILocation(line: 272, column: 11, scope: !371)
!371 = distinct !DILexicalBlock(scope: !300, file: !37, line: 272, column: 8)
!372 = !DILocation(line: 272, column: 19, scope: !371)
!373 = !DILocation(line: 0, scope: !287)
!374 = !DILocation(line: 253, column: 3, scope: !287)
!375 = !DILocation(line: 0, scope: !291)
!376 = !DILocation(line: 260, column: 8, scope: !291)
!377 = !DILocation(line: 261, column: 11, scope: !378)
!378 = distinct !DILexicalBlock(scope: !291, file: !37, line: 261, column: 8)
!379 = !DILocation(line: 261, column: 19, scope: !378)
!380 = !DILocation(line: 261, column: 26, scope: !378)
!381 = !{!382, !115, i64 8}
!382 = !{!"", !112, i64 0, !115, i64 8, !115, i64 16}
!383 = !DILocation(line: 261, column: 31, scope: !378)
!384 = !DILocation(line: 261, column: 8, scope: !291)
!385 = !DILocation(line: 264, column: 31, scope: !291)
!386 = !DILocation(line: 264, column: 4, scope: !291)
!387 = !DILocation(line: 264, column: 18, scope: !291)
!388 = !{!389, !112, i64 0}
!389 = !{!"lzma_filter_info_s", !112, i64 0, !115, i64 8, !115, i64 16}
!390 = !DILocation(line: 265, column: 15, scope: !291)
!391 = !DILocation(line: 265, column: 20, scope: !291)
!392 = !{!389, !115, i64 8}
!393 = !DILocation(line: 266, column: 36, scope: !291)
!394 = !DILocation(line: 266, column: 15, scope: !291)
!395 = !DILocation(line: 266, column: 23, scope: !291)
!396 = !{!389, !115, i64 16}
!397 = !DILocation(line: 253, column: 24, scope: !292)
!398 = distinct !{!398, !374, !399, !148, !149}
!399 = !DILocation(line: 267, column: 3, scope: !287)
!400 = !DILocation(line: 253, column: 33, scope: !292)
!401 = !DILocation(line: 260, column: 30, scope: !291)
!402 = !DILocation(line: 257, column: 31, scope: !291)
!403 = !DILocation(line: 260, column: 19, scope: !291)
!404 = !DILocation(line: 272, column: 26, scope: !371)
!405 = !DILocation(line: 272, column: 31, scope: !371)
!406 = !DILocation(line: 272, column: 8, scope: !300)
!407 = !DILocation(line: 275, column: 31, scope: !300)
!408 = !DILocation(line: 275, column: 4, scope: !300)
!409 = !DILocation(line: 275, column: 18, scope: !300)
!410 = !DILocation(line: 276, column: 15, scope: !300)
!411 = !DILocation(line: 276, column: 20, scope: !300)
!412 = !DILocation(line: 277, column: 36, scope: !300)
!413 = !DILocation(line: 277, column: 15, scope: !300)
!414 = !DILocation(line: 277, column: 23, scope: !300)
!415 = !DILocation(line: 269, column: 24, scope: !301)
!416 = distinct !{!416, !367, !417, !148, !149}
!417 = !DILocation(line: 278, column: 3, scope: !297)
!418 = !DILocation(line: 269, column: 33, scope: !301)
!419 = !DILocation(line: 271, column: 30, scope: !300)
!420 = !DILocation(line: 271, column: 19, scope: !300)
!421 = !DILocation(line: 282, column: 2, scope: !191)
!422 = !DILocation(line: 282, column: 20, scope: !191)
!423 = !DILocation(line: 283, column: 17, scope: !191)
!424 = !DILocation(line: 283, column: 22, scope: !191)
!425 = !DILocation(line: 286, column: 23, scope: !191)
!426 = !DILocation(line: 287, column: 10, scope: !427)
!427 = distinct !DILexicalBlock(scope: !191, file: !37, line: 287, column: 6)
!428 = !DILocation(line: 287, column: 6, scope: !191)
!429 = !DILocation(line: 288, column: 3, scope: !427)
!430 = !DILocation(line: 291, column: 1, scope: !191)
!431 = !DISubprogram(name: "lzma_next_filter_init", scope: !184, file: !184, line: 226, type: !256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !187)
!432 = !DISubprogram(name: "lzma_next_end", scope: !184, file: !184, line: 237, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !187)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !194, !79}
!435 = distinct !DISubprogram(name: "lzma_raw_coder_memusage", scope: !37, file: !37, line: 295, type: !436, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!45, !242, !70}
!438 = !{!439, !440, !441, !443, !444, !445, !447}
!439 = !DILocalVariable(name: "coder_find", arg: 1, scope: !435, file: !37, line: 295, type: !242)
!440 = !DILocalVariable(name: "filters", arg: 2, scope: !435, file: !37, line: 296, type: !70)
!441 = !DILocalVariable(name: "tmp", scope: !442, file: !37, line: 300, type: !51)
!442 = distinct !DILexicalBlock(scope: !435, file: !37, line: 299, column: 2)
!443 = !DILocalVariable(name: "total", scope: !435, file: !37, line: 305, type: !45)
!444 = !DILocalVariable(name: "i", scope: !435, file: !37, line: 306, type: !51)
!445 = !DILocalVariable(name: "fc", scope: !446, file: !37, line: 309, type: !295)
!446 = distinct !DILexicalBlock(scope: !435, file: !37, line: 308, column: 5)
!447 = !DILocalVariable(name: "usage", scope: !448, file: !37, line: 325, type: !450)
!448 = distinct !DILexicalBlock(scope: !449, file: !37, line: 322, column: 10)
!449 = distinct !DILexicalBlock(scope: !446, file: !37, line: 314, column: 7)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!451 = !DILocation(line: 0, scope: !435)
!452 = !DILocation(line: 0, scope: !305, inlinedAt: !453)
!453 = distinct !DILocation(line: 301, column: 7, scope: !454)
!454 = distinct !DILexicalBlock(scope: !442, file: !37, line: 301, column: 7)
!455 = !DILocation(line: 197, column: 14, scope: !319, inlinedAt: !453)
!456 = !DILocation(line: 197, column: 22, scope: !319, inlinedAt: !453)
!457 = !DILocation(line: 197, column: 36, scope: !319, inlinedAt: !453)
!458 = !DILocation(line: 197, column: 39, scope: !319, inlinedAt: !453)
!459 = !DILocation(line: 197, column: 6, scope: !305, inlinedAt: !453)
!460 = !DILocation(line: 202, column: 9, scope: !305, inlinedAt: !453)
!461 = !DILocation(line: 205, column: 7, scope: !305, inlinedAt: !453)
!462 = !DILocation(line: 0, scope: !315, inlinedAt: !453)
!463 = !DILocation(line: 215, column: 29, scope: !328, inlinedAt: !453)
!464 = !DILocation(line: 215, column: 3, scope: !329, inlinedAt: !453)
!465 = !DILocation(line: 216, column: 23, scope: !332, inlinedAt: !453)
!466 = !DILocation(line: 216, column: 8, scope: !328, inlinedAt: !453)
!467 = !DILocation(line: 215, column: 48, scope: !328, inlinedAt: !453)
!468 = !DILocation(line: 215, column: 32, scope: !328, inlinedAt: !453)
!469 = !DILocation(line: 215, column: 44, scope: !328, inlinedAt: !453)
!470 = distinct !{!470, !464, !471, !148, !149}
!471 = !DILocation(line: 217, column: 12, scope: !329, inlinedAt: !453)
!472 = !DILocation(line: 0, scope: !329, inlinedAt: !453)
!473 = !DILocation(line: 221, column: 8, scope: !341, inlinedAt: !453)
!474 = !DILocation(line: 221, column: 7, scope: !315, inlinedAt: !453)
!475 = !DILocation(line: 224, column: 29, scope: !315, inlinedAt: !453)
!476 = !DILocation(line: 224, column: 15, scope: !315, inlinedAt: !453)
!477 = !DILocation(line: 225, column: 25, scope: !315, inlinedAt: !453)
!478 = !DILocation(line: 226, column: 25, scope: !315, inlinedAt: !453)
!479 = !DILocation(line: 226, column: 22, scope: !315, inlinedAt: !453)
!480 = !DILocation(line: 228, column: 19, scope: !305, inlinedAt: !453)
!481 = !DILocation(line: 228, column: 11, scope: !305, inlinedAt: !453)
!482 = !DILocation(line: 228, column: 24, scope: !305, inlinedAt: !453)
!483 = !DILocation(line: 228, column: 27, scope: !305, inlinedAt: !453)
!484 = !DILocation(line: 228, column: 2, scope: !315, inlinedAt: !453)
!485 = distinct !{!485, !486, !487, !148, !149}
!486 = !DILocation(line: 213, column: 2, scope: !305, inlinedAt: !453)
!487 = !DILocation(line: 228, column: 46, scope: !305, inlinedAt: !453)
!488 = !DILocation(line: 233, column: 8, scope: !357, inlinedAt: !453)
!489 = !DILocation(line: 233, column: 27, scope: !357, inlinedAt: !453)
!490 = !DILocation(line: 233, column: 31, scope: !357, inlinedAt: !453)
!491 = !DILocation(line: 233, column: 39, scope: !357, inlinedAt: !453)
!492 = !DILocation(line: 310, column: 30, scope: !446)
!493 = !DILocation(line: 305, column: 11, scope: !435)
!494 = !DILocation(line: 310, column: 8, scope: !446)
!495 = !DILocation(line: 0, scope: !446)
!496 = !DILocation(line: 311, column: 10, scope: !497)
!497 = distinct !DILexicalBlock(scope: !446, file: !37, line: 311, column: 7)
!498 = !DILocation(line: 311, column: 7, scope: !446)
!499 = !DILocation(line: 314, column: 11, scope: !449)
!500 = !{!382, !115, i64 16}
!501 = !DILocation(line: 314, column: 20, scope: !449)
!502 = !DILocation(line: 314, column: 7, scope: !446)
!503 = !DILocation(line: 321, column: 10, scope: !504)
!504 = distinct !DILexicalBlock(scope: !449, file: !37, line: 314, column: 29)
!505 = !DILocation(line: 322, column: 3, scope: !504)
!506 = !DILocation(line: 326, column: 32, scope: !448)
!507 = !DILocation(line: 326, column: 8, scope: !448)
!508 = !DILocation(line: 0, scope: !448)
!509 = !DILocation(line: 327, column: 14, scope: !510)
!510 = distinct !DILexicalBlock(scope: !448, file: !37, line: 327, column: 8)
!511 = !DILocation(line: 332, column: 19, scope: !435)
!512 = !DILocation(line: 332, column: 11, scope: !435)
!513 = !DILocation(line: 332, column: 24, scope: !435)
!514 = !DILocation(line: 332, column: 27, scope: !435)
!515 = !DILocation(line: 332, column: 2, scope: !446)
!516 = distinct !{!516, !517, !518, !148, !149}
!517 = !DILocation(line: 308, column: 2, scope: !435)
!518 = !DILocation(line: 332, column: 46, scope: !435)
!519 = !DILocation(line: 336, column: 15, scope: !435)
!520 = !DILocation(line: 336, column: 2, scope: !435)
!521 = !DILocation(line: 337, column: 1, scope: !435)
