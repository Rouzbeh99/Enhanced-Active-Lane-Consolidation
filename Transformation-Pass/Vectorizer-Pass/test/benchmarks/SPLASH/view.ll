; ModuleID = 'view.c'
source_filename = "view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opc_len = external local_unnamed_addr global [3 x i16], align 2
@out_diag_len = dso_local local_unnamed_addr global [3 x float] zeroinitializer, align 4, !dbg !0
@out_diag_length = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !23
@frust_len = dso_local local_unnamed_addr global i64 0, align 8, !dbg !21
@image_zlen = dso_local local_unnamed_addr global i64 0, align 8, !dbg !30
@.str = private unnamed_addr constant [35 x i8] c"MAX_OUTLEN exceeded in Ray_Trace.\0A\00", align 1
@depth_hither = external local_unnamed_addr global float, align 4
@depth_exponent = external local_unnamed_addr global float, align 4
@depth_yon = external local_unnamed_addr global float, align 4
@depth_cueing = dso_local local_unnamed_addr global [4096 x float] zeroinitializer, align 16, !dbg !25
@in_max = dso_local local_unnamed_addr global [3 x float] zeroinitializer, align 4, !dbg !32
@opc_xlen = dso_local local_unnamed_addr global i64 0, align 8, !dbg !36
@opc_xylen = dso_local local_unnamed_addr global i64 0, align 8, !dbg !38
@norm_len = external local_unnamed_addr global [3 x i16], align 2
@norm_xlen = dso_local local_unnamed_addr global i64 0, align 8, !dbg !40
@norm_xylen = dso_local local_unnamed_addr global i64 0, align 8, !dbg !42
@invmatrix = dso_local global [4 x [4 x float]] zeroinitializer, align 16, !dbg !44
@frame = external local_unnamed_addr global i64, align 8
@angle = external local_unnamed_addr global [3 x float], align 4
@out_invvertex = dso_local global [2 x [2 x [2 x [3 x float]]]] zeroinitializer, align 16, !dbg !13
@uout_invvertex = dso_local global [2 x [2 x [2 x [3 x float]]]] zeroinitializer, align 16, !dbg !19
@transformation_matrix = dso_local global [4 x [4 x float]] zeroinitializer, align 16, !dbg !8

; Function Attrs: noinline nounwind uwtable
define dso_local void @Compute_Pre_View() local_unnamed_addr #0 !dbg !53 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !57, metadata !DIExpression()), !dbg !59
  br label %for.body, !dbg !60

for.body:                                         ; preds = %entry, %for.body
  %i.0103 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.0103, metadata !57, metadata !DIExpression()), !dbg !59
  %arrayidx = getelementptr inbounds [3 x i16], ptr @opc_len, i64 0, i64 %i.0103, !dbg !62
  %0 = load i16, ptr %arrayidx, align 2, !dbg !62
  %conv = sext i16 %0 to i32, !dbg !62
  %sub = add nsw i32 %conv, -1, !dbg !64
  %conv1 = sitofp i32 %sub to float, !dbg !62
  %arrayidx2 = getelementptr inbounds [3 x float], ptr @out_diag_len, i64 0, i64 %i.0103, !dbg !65
  store float %conv1, ptr %arrayidx2, align 4, !dbg !66
  %inc = add nuw nsw i64 %i.0103, 1, !dbg !67
  call void @llvm.dbg.value(metadata i64 %inc, metadata !57, metadata !DIExpression()), !dbg !59
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !68
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !60, !llvm.loop !69

for.end:                                          ; preds = %for.body
  %1 = load float, ptr @out_diag_len, align 4, !dbg !73
  %2 = load float, ptr getelementptr inbounds ([3 x float], ptr @out_diag_len, i64 0, i64 1), align 4, !dbg !74
  %mul3 = fmul float %2, %2, !dbg !75
  %3 = tail call float @llvm.fmuladd.f32(float %1, float %1, float %mul3), !dbg !76
  %4 = load float, ptr getelementptr inbounds ([3 x float], ptr @out_diag_len, i64 0, i64 2), align 4, !dbg !77
  %5 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %3), !dbg !78
  %sqrtf = tail call float @sqrtf(float noundef %5) #4, !dbg !79
  store float %sqrtf, ptr @out_diag_length, align 4, !dbg !80
  %conv6 = fpext float %sqrtf to double, !dbg !81
  %add = fadd double %conv6, 5.000000e-01, !dbg !81
  %conv7 = fptosi double %add to i64, !dbg !81
  %add8 = add nsw i64 %conv7, 1, !dbg !82
  store i64 %add8, ptr @frust_len, align 8, !dbg !83
  store i64 %conv7, ptr @image_zlen, align 8, !dbg !84
  %cmp10 = icmp sgt i64 %conv7, 4096, !dbg !85
  br i1 %cmp10, label %if.then, label %if.end, !dbg !87

if.then:                                          ; preds = %for.end
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str) #15, !dbg !88
  %.pre = load i64, ptr @image_zlen, align 8, !dbg !89
  br label %if.end, !dbg !88

if.end:                                           ; preds = %if.then, %for.end
  %6 = phi i64 [ %.pre, %if.then ], [ %conv7, %for.end ], !dbg !89
  call void @llvm.dbg.value(metadata i64 0, metadata !58, metadata !DIExpression()), !dbg !59
  %cmp13.not104 = icmp slt i64 %6, 0, !dbg !92
  br i1 %cmp13.not104, label %for.end52, label %for.body15.preheader, !dbg !93

for.body15.preheader:                             ; preds = %if.end
  %.pre106 = load float, ptr @depth_hither, align 4, !dbg !94
  br label %for.body15, !dbg !93

for.body15:                                       ; preds = %for.body15.preheader, %cond.end46
  %7 = phi float [ %10, %cond.end46 ], [ %.pre106, %for.body15.preheader ], !dbg !94
  %8 = phi i64 [ %13, %cond.end46 ], [ %6, %for.body15.preheader ]
  %outz.0105 = phi i64 [ %inc51, %cond.end46 ], [ 0, %for.body15.preheader ]
  call void @llvm.dbg.value(metadata i64 %outz.0105, metadata !58, metadata !DIExpression()), !dbg !59
  %conv16 = fpext float %7 to double, !dbg !94
  %conv17 = sitofp i64 %outz.0105 to float, !dbg !96
  %conv18 = sitofp i64 %8 to float, !dbg !97
  %div = fdiv float %conv17, %conv18, !dbg !98
  %conv19 = fpext float %div to double, !dbg !96
  %9 = load float, ptr @depth_exponent, align 4, !dbg !99
  %conv20 = fpext float %9 to double, !dbg !99
  %call21 = tail call double @pow(double noundef %conv19, double noundef %conv20) #15, !dbg !100
  %10 = load float, ptr @depth_hither, align 4, !dbg !101
  %11 = load float, ptr @depth_yon, align 4, !dbg !102
  %sub22 = fsub float %10, %11, !dbg !103
  %conv23 = fpext float %sub22 to double, !dbg !104
  %neg = fneg double %call21, !dbg !105
  %12 = tail call double @llvm.fmuladd.f64(double %neg, double %conv23, double %conv16), !dbg !105
  %conv24 = fptrunc double %12 to float, !dbg !94
  %arrayidx25 = getelementptr inbounds [4096 x float], ptr @depth_cueing, i64 0, i64 %outz.0105, !dbg !106
  %cmp28 = fcmp ogt float %conv24, 0.000000e+00, !dbg !107
  br i1 %cmp28, label %cond.end, label %cond.end46, !dbg !107

cond.end:                                         ; preds = %for.body15
  %cmp32 = fcmp olt float %conv24, 1.000000e+00, !dbg !107
  br i1 %cmp32, label %cond.true39, label %cond.end46, !dbg !107

cond.true39:                                      ; preds = %cond.end
  %conv36 = fpext float %conv24 to double, !dbg !107
  br label %cond.end46, !dbg !107

cond.end46:                                       ; preds = %for.body15, %cond.end, %cond.true39
  %cond47 = phi double [ %conv36, %cond.true39 ], [ 1.000000e+00, %cond.end ], [ 0.000000e+00, %for.body15 ], !dbg !107
  %conv48 = fptrunc double %cond47 to float, !dbg !107
  store float %conv48, ptr %arrayidx25, align 4, !dbg !108
  %inc51 = add nuw nsw i64 %outz.0105, 1, !dbg !109
  call void @llvm.dbg.value(metadata i64 %inc51, metadata !58, metadata !DIExpression()), !dbg !59
  %13 = load i64, ptr @image_zlen, align 8, !dbg !89
  %cmp13.not.not = icmp slt i64 %outz.0105, %13, !dbg !92
  br i1 %cmp13.not.not, label %for.body15, label %for.end52, !dbg !93, !llvm.loop !110

for.end52:                                        ; preds = %cond.end46, %if.end
  %14 = load i16, ptr @opc_len, align 2, !dbg !112
  %conv53 = sext i16 %14 to i32, !dbg !112
  %sub54 = add nsw i32 %conv53, -1, !dbg !113
  %conv55 = sitofp i32 %sub54 to float, !dbg !114
  %conv56 = fpext float %conv55 to double, !dbg !114
  %sub57 = fadd double %conv56, -1.000000e-05, !dbg !115
  %sub58 = fadd double %sub57, 0xBF70101010101010, !dbg !116
  %conv59 = fptrunc double %sub58 to float, !dbg !114
  store float %conv59, ptr @in_max, align 4, !dbg !117
  %15 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @opc_len, i64 0, i64 1), align 2, !dbg !118
  %conv60 = sext i16 %15 to i32, !dbg !118
  %sub61 = add nsw i32 %conv60, -1, !dbg !119
  %conv62 = sitofp i32 %sub61 to float, !dbg !120
  %conv63 = fpext float %conv62 to double, !dbg !120
  %sub64 = fadd double %conv63, -1.000000e-05, !dbg !121
  %sub65 = fadd double %sub64, 0xBF70101010101010, !dbg !122
  %conv66 = fptrunc double %sub65 to float, !dbg !120
  store float %conv66, ptr getelementptr inbounds ([3 x float], ptr @in_max, i64 0, i64 1), align 4, !dbg !123
  %16 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @opc_len, i64 0, i64 2), align 2, !dbg !124
  %conv67 = sext i16 %16 to i32, !dbg !124
  %sub68 = add nsw i32 %conv67, -1, !dbg !125
  %conv69 = sitofp i32 %sub68 to float, !dbg !126
  %conv70 = fpext float %conv69 to double, !dbg !126
  %sub71 = fadd double %conv70, -1.000000e-05, !dbg !127
  %sub72 = fadd double %sub71, 0xBF70101010101010, !dbg !128
  %conv73 = fptrunc double %sub72 to float, !dbg !126
  store float %conv73, ptr getelementptr inbounds ([3 x float], ptr @in_max, i64 0, i64 2), align 4, !dbg !129
  %conv74 = sext i16 %14 to i64, !dbg !130
  %add75 = add nsw i64 %conv74, 1, !dbg !131
  store i64 %add75, ptr @opc_xlen, align 8, !dbg !132
  %conv78 = sext i16 %15 to i64, !dbg !133
  %mul = shl nsw i64 %conv74, 32, !dbg !134
  %add79 = mul nsw i64 %mul, %conv78, !dbg !135
  %sext = add i64 %add79, 4294967296, !dbg !135
  %conv80 = ashr exact i64 %sext, 32, !dbg !135
  store i64 %conv80, ptr @opc_xylen, align 8, !dbg !136
  %17 = load i16, ptr @norm_len, align 2, !dbg !137
  %conv81 = sext i16 %17 to i64, !dbg !137
  %add82 = add nsw i64 %conv81, 1, !dbg !138
  store i64 %add82, ptr @norm_xlen, align 8, !dbg !139
  %18 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @norm_len, i64 0, i64 1), align 2, !dbg !140
  %conv85 = sext i16 %18 to i64, !dbg !140
  %mul86 = shl nsw i64 %conv81, 32, !dbg !141
  %add87 = mul nsw i64 %mul86, %conv85, !dbg !142
  %sext100 = add i64 %add87, 4294967296, !dbg !142
  %conv88 = ashr exact i64 %sext100, 32, !dbg !142
  store i64 %conv88, ptr @norm_xylen, align 8, !dbg !143
  ret void, !dbg !144
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

declare !dbg !145 void @Error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Select_View(double noundef %0, i64 noundef %axis) local_unnamed_addr #5 !dbg !152 {
entry:
  call void @llvm.dbg.value(metadata float undef, metadata !156, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata i64 %axis, metadata !157, metadata !DIExpression()), !dbg !158
  tail call void @Load_Identity_Matrix(ptr noundef nonnull @invmatrix), !dbg !159
  %1 = load float, ptr @out_diag_len, align 4, !dbg !160
  %conv = fpext float %1 to double, !dbg !161
  %div = fmul double %conv, 5.000000e-01, !dbg !162
  %2 = load float, ptr getelementptr inbounds ([3 x float], ptr @out_diag_len, i64 0, i64 1), align 4, !dbg !163
  %conv1 = fpext float %2 to double, !dbg !164
  %div2 = fmul double %conv1, 5.000000e-01, !dbg !165
  %3 = load float, ptr getelementptr inbounds ([3 x float], ptr @out_diag_len, i64 0, i64 2), align 4, !dbg !166
  %conv3 = fpext float %3 to double, !dbg !167
  %div4 = fmul double %conv3, 5.000000e-01, !dbg !168
  tail call void @Inverse_Concatenate_Translation(ptr noundef nonnull @invmatrix, double noundef %div, double noundef %div2, double noundef %div4), !dbg !169
  tail call void @Inverse_Concatenate_Scaling(ptr noundef nonnull @invmatrix, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00), !dbg !170
  %4 = load i64, ptr @frame, align 8, !dbg !171
  %cmp.not = icmp eq i64 %4, 0, !dbg !173
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !174

if.then:                                          ; preds = %entry
  %delta_angle = fptrunc double %0 to float
  call void @llvm.dbg.value(metadata float %delta_angle, metadata !156, metadata !DIExpression()), !dbg !158
  %arrayidx = getelementptr inbounds [3 x float], ptr @angle, i64 0, i64 %axis, !dbg !175
  %5 = load float, ptr %arrayidx, align 4, !dbg !175
  %add = fadd float %5, %delta_angle, !dbg !176
  store float %add, ptr %arrayidx, align 4, !dbg !177
  br label %if.end, !dbg !178

if.end:                                           ; preds = %if.then, %entry
  %6 = load float, ptr @angle, align 4, !dbg !179
  %fneg = fneg float %6, !dbg !180
  %conv7 = fpext float %fneg to double, !dbg !180
  tail call void @Inverse_Concatenate_Rotation(ptr noundef nonnull @invmatrix, i64 noundef 1, double noundef %conv7), !dbg !181
  %7 = load float, ptr getelementptr inbounds ([3 x float], ptr @angle, i64 0, i64 1), align 4, !dbg !182
  %fneg8 = fneg float %7, !dbg !183
  %conv9 = fpext float %fneg8 to double, !dbg !183
  tail call void @Inverse_Concatenate_Rotation(ptr noundef nonnull @invmatrix, i64 noundef 2, double noundef %conv9), !dbg !184
  tail call void @Inverse_Concatenate_Rotation(ptr noundef nonnull @invmatrix, i64 noundef 1, double noundef 3.000000e+01), !dbg !185
  %8 = load float, ptr @out_diag_length, align 4, !dbg !186
  %fneg10 = fneg float %8, !dbg !187
  %conv11 = fpext float %fneg10 to double, !dbg !187
  %div12 = fmul double %conv11, 5.000000e-01, !dbg !188
  tail call void @Inverse_Concatenate_Translation(ptr noundef nonnull @invmatrix, double noundef %div12, double noundef %div12, double noundef %div12), !dbg !189
  tail call void @Load_Transformation_Matrix(ptr noundef nonnull @invmatrix), !dbg !190
  tail call void @Compute_Input_Dimensions(), !dbg !191
  tail call void @Compute_Input_Unit_Vector(), !dbg !192
  ret void, !dbg !193
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable
define dso_local void @Load_Identity_Matrix(ptr nocapture noundef writeonly %matrix) local_unnamed_addr #6 !dbg !194 {
entry:
  call void @llvm.dbg.value(metadata ptr %matrix, metadata !201, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 0, metadata !202, metadata !DIExpression()), !dbg !204
  br label %for.cond1.preheader, !dbg !205

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %i.018 = phi i64 [ 0, %entry ], [ %inc8, %for.cond1.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.018, metadata !202, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i64 0, metadata !203, metadata !DIExpression()), !dbg !204
  %0 = shl nuw nsw i64 %i.018, 4, !dbg !207
  %uglygep = getelementptr i8, ptr %matrix, i64 %0, !dbg !207
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %uglygep, i8 0, i64 16, i1 false), !dbg !211
  call void @llvm.dbg.value(metadata i32 undef, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 undef, metadata !203, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !204
  %arrayidx6 = getelementptr inbounds [4 x float], ptr %matrix, i64 %i.018, i64 %i.018, !dbg !214
  store float 1.000000e+00, ptr %arrayidx6, align 4, !dbg !215
  %inc8 = add nuw nsw i64 %i.018, 1, !dbg !216
  call void @llvm.dbg.value(metadata i64 %inc8, metadata !202, metadata !DIExpression()), !dbg !204
  %exitcond.not = icmp eq i64 %inc8, 4, !dbg !217
  br i1 %exitcond.not, label %for.end9, label %for.cond1.preheader, !dbg !205, !llvm.loop !218

for.end9:                                         ; preds = %for.cond1.preheader
  ret void, !dbg !220
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @Inverse_Concatenate_Translation(ptr nocapture noundef %matrix, double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #7 !dbg !221 {
entry:
  %translation_matrix = alloca [4 x [4 x float]], align 16
  %xoffset = fptrunc double %0 to float
  %yoffset = fptrunc double %1 to float
  %zoffset = fptrunc double %2 to float
  call void @llvm.dbg.value(metadata ptr %matrix, metadata !225, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata float %xoffset, metadata !226, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata float %yoffset, metadata !227, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata float %zoffset, metadata !228, metadata !DIExpression()), !dbg !230
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %translation_matrix) #15, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %translation_matrix, metadata !229, metadata !DIExpression()), !dbg !232
  %conv = fpext float %xoffset to double, !dbg !233
  %conv3 = fpext float %yoffset to double, !dbg !234
  %conv4 = fpext float %zoffset to double, !dbg !235
  call void @Load_Translation_Matrix(ptr noundef nonnull %translation_matrix, double noundef %conv, double noundef %conv3, double noundef %conv4), !dbg !236
  call void @Inverse_Concatenate_Transform(ptr noundef %matrix, ptr noundef nonnull %translation_matrix), !dbg !237
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %translation_matrix) #15, !dbg !238
  ret void, !dbg !238
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @Inverse_Concatenate_Scaling(ptr nocapture noundef %matrix, double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #7 !dbg !239 {
entry:
  %scaling_matrix = alloca [4 x [4 x float]], align 16
  %xscale = fptrunc double %0 to float
  %yscale = fptrunc double %1 to float
  %zscale = fptrunc double %2 to float
  call void @llvm.dbg.value(metadata ptr %matrix, metadata !241, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata float %xscale, metadata !242, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata float %yscale, metadata !243, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata float %zscale, metadata !244, metadata !DIExpression()), !dbg !246
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %scaling_matrix) #15, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %scaling_matrix, metadata !245, metadata !DIExpression()), !dbg !248
  %conv = fpext float %xscale to double, !dbg !249
  %conv3 = fpext float %yscale to double, !dbg !250
  %conv4 = fpext float %zscale to double, !dbg !251
  call void @Load_Scaling_Matrix(ptr noundef nonnull %scaling_matrix, double noundef %conv, double noundef %conv3, double noundef %conv4), !dbg !252
  call void @Inverse_Concatenate_Transform(ptr noundef %matrix, ptr noundef nonnull %scaling_matrix), !dbg !253
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %scaling_matrix) #15, !dbg !254
  ret void, !dbg !254
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Inverse_Concatenate_Rotation(ptr nocapture noundef %matrix, i64 noundef %axis, double noundef %0) local_unnamed_addr #5 !dbg !255 {
entry:
  %rotation_matrix = alloca [4 x [4 x float]], align 16
  %angle = fptrunc double %0 to float
  call void @llvm.dbg.value(metadata ptr %matrix, metadata !259, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %axis, metadata !260, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata float %angle, metadata !261, metadata !DIExpression()), !dbg !263
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rotation_matrix) #15, !dbg !264
  call void @llvm.dbg.declare(metadata ptr %rotation_matrix, metadata !262, metadata !DIExpression()), !dbg !265
  %conv = fpext float %angle to double, !dbg !266
  call void @Load_Rotation_Matrix(ptr noundef nonnull %rotation_matrix, i64 noundef %axis, double noundef %conv), !dbg !267
  call void @Inverse_Concatenate_Transform(ptr noundef %matrix, ptr noundef nonnull %rotation_matrix), !dbg !268
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rotation_matrix) #15, !dbg !269
  ret void, !dbg !269
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @Load_Transformation_Matrix(ptr nocapture noundef readonly %matrix) local_unnamed_addr #8 !dbg !270 {
entry:
  call void @llvm.dbg.value(metadata ptr %matrix, metadata !272, metadata !DIExpression()), !dbg !273
  tail call void @Copy_Matrix(ptr noundef %matrix, ptr noundef nonnull @transformation_matrix), !dbg !274
  ret void, !dbg !275
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Compute_Input_Dimensions() local_unnamed_addr #9 !dbg !276 {
entry:
  %in_invvertex = alloca [2 x [2 x [2 x [3 x float]]]], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %in_invvertex) #15, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %in_invvertex, metadata !281, metadata !DIExpression()), !dbg !283
  store float 0.000000e+00, ptr %in_invvertex, align 16, !dbg !284
  %arrayidx7 = getelementptr inbounds [3 x float], ptr %in_invvertex, i64 0, i64 1, !dbg !285
  store float 0.000000e+00, ptr %arrayidx7, align 4, !dbg !286
  %arrayidx11 = getelementptr inbounds [3 x float], ptr %in_invvertex, i64 0, i64 2, !dbg !287
  store float 0.000000e+00, ptr %arrayidx11, align 8, !dbg !288
  %0 = load i64, ptr @frust_len, align 8, !dbg !289
  %sub = add nsw i64 %0, -1, !dbg !290
  %conv = sitofp i64 %sub to float, !dbg !289
  %arrayidx14 = getelementptr inbounds [2 x [3 x float]], ptr %in_invvertex, i64 0, i64 1, !dbg !291
  store float %conv, ptr %arrayidx14, align 4, !dbg !292
  %arrayidx19 = getelementptr inbounds [2 x [3 x float]], ptr %in_invvertex, i64 0, i64 1, i64 1, !dbg !293
  store float 0.000000e+00, ptr %arrayidx19, align 16, !dbg !294
  %arrayidx23 = getelementptr inbounds [2 x [3 x float]], ptr %in_invvertex, i64 0, i64 1, i64 2, !dbg !295
  store float 0.000000e+00, ptr %arrayidx23, align 4, !dbg !296
  %arrayidx25 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %in_invvertex, i64 0, i64 1, !dbg !297
  store float 0.000000e+00, ptr %arrayidx25, align 8, !dbg !298
  %arrayidx33 = getelementptr inbounds [3 x float], ptr %arrayidx25, i64 0, i64 1, !dbg !299
  store float %conv, ptr %arrayidx33, align 4, !dbg !300
  %arrayidx37 = getelementptr inbounds [3 x float], ptr %arrayidx25, i64 0, i64 2, !dbg !301
  store float 0.000000e+00, ptr %arrayidx37, align 16, !dbg !302
  %arrayidx42 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %in_invvertex, i64 0, i64 1, i64 1, !dbg !303
  store float %conv, ptr %arrayidx42, align 4, !dbg !304
  %arrayidx49 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %in_invvertex, i64 0, i64 1, i64 1, i64 1, !dbg !305
  store float %conv, ptr %arrayidx49, align 8, !dbg !306
  %arrayidx53 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %in_invvertex, i64 0, i64 1, i64 1, i64 2, !dbg !307
  store float 0.000000e+00, ptr %arrayidx53, align 4, !dbg !308
  %arrayidx54 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %in_invvertex, i64 0, i64 1, !dbg !309
  store float 0.000000e+00, ptr %arrayidx54, align 16, !dbg !310
  %arrayidx61 = getelementptr inbounds [3 x float], ptr %arrayidx54, i64 0, i64 1, !dbg !311
  store float 0.000000e+00, ptr %arrayidx61, align 4, !dbg !312
  %arrayidx67 = getelementptr inbounds [3 x float], ptr %arrayidx54, i64 0, i64 2, !dbg !313
  store float %conv, ptr %arrayidx67, align 8, !dbg !314
  %arrayidx72 = getelementptr inbounds [2 x [3 x float]], ptr %arrayidx54, i64 0, i64 1, !dbg !315
  store float %conv, ptr %arrayidx72, align 4, !dbg !316
  %arrayidx77 = getelementptr inbounds [2 x [3 x float]], ptr %arrayidx54, i64 0, i64 1, i64 1, !dbg !317
  store float 0.000000e+00, ptr %arrayidx77, align 16, !dbg !318
  %arrayidx83 = getelementptr inbounds [2 x [3 x float]], ptr %arrayidx54, i64 0, i64 1, i64 2, !dbg !319
  store float %conv, ptr %arrayidx83, align 4, !dbg !320
  %arrayidx85 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %in_invvertex, i64 0, i64 1, i64 1, !dbg !321
  store float 0.000000e+00, ptr %arrayidx85, align 8, !dbg !322
  %arrayidx93 = getelementptr inbounds [3 x float], ptr %arrayidx85, i64 0, i64 1, !dbg !323
  store float %conv, ptr %arrayidx93, align 4, !dbg !324
  %arrayidx99 = getelementptr inbounds [3 x float], ptr %arrayidx85, i64 0, i64 2, !dbg !325
  store float %conv, ptr %arrayidx99, align 16, !dbg !326
  %arrayidx104 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %in_invvertex, i64 0, i64 1, i64 1, i64 1, !dbg !327
  store float %conv, ptr %arrayidx104, align 4, !dbg !328
  %arrayidx111 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %in_invvertex, i64 0, i64 1, i64 1, i64 1, i64 1, !dbg !329
  store float %conv, ptr %arrayidx111, align 8, !dbg !330
  %arrayidx117 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %in_invvertex, i64 0, i64 1, i64 1, i64 1, i64 2, !dbg !331
  store float %conv, ptr %arrayidx117, align 4, !dbg !332
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()), !dbg !333
  br label %for.cond119.preheader, !dbg !334

for.cond119.preheader:                            ; preds = %entry, %for.inc157
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc157 ]
  %z.0183 = phi i64 [ 0, %entry ], [ 1, %for.inc157 ]
  call void @llvm.dbg.value(metadata i64 %z.0183, metadata !280, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 0, metadata !279, metadata !DIExpression()), !dbg !333
  br label %for.cond123.preheader, !dbg !336

for.cond123.preheader:                            ; preds = %for.cond119.preheader, %for.inc154
  %cmp120 = phi i1 [ true, %for.cond119.preheader ], [ false, %for.inc154 ]
  %y.0182 = phi i64 [ 0, %for.cond119.preheader ], [ 1, %for.inc154 ]
  call void @llvm.dbg.value(metadata i64 %y.0182, metadata !279, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 0, metadata !278, metadata !DIExpression()), !dbg !333
  br label %for.body126, !dbg !340

for.body126:                                      ; preds = %for.cond123.preheader, %for.body126
  %cmp124 = phi i1 [ true, %for.cond123.preheader ], [ false, %for.body126 ]
  %x.0181 = phi i64 [ 0, %for.cond123.preheader ], [ 1, %for.body126 ]
  call void @llvm.dbg.value(metadata i64 %x.0181, metadata !278, metadata !DIExpression()), !dbg !333
  %arrayidx129 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %in_invvertex, i64 0, i64 %z.0183, i64 %y.0182, i64 %x.0181, !dbg !344
  %1 = load float, ptr %arrayidx129, align 4, !dbg !344
  %conv131 = fpext float %1 to double, !dbg !344
  %arrayidx135 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %in_invvertex, i64 0, i64 %z.0183, i64 %y.0182, i64 %x.0181, i64 1, !dbg !347
  %2 = load float, ptr %arrayidx135, align 4, !dbg !347
  %conv136 = fpext float %2 to double, !dbg !347
  %arrayidx140 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %in_invvertex, i64 0, i64 %z.0183, i64 %y.0182, i64 %x.0181, i64 2, !dbg !348
  %3 = load float, ptr %arrayidx140, align 4, !dbg !348
  %conv141 = fpext float %3 to double, !dbg !348
  %arrayidx144 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr @out_invvertex, i64 0, i64 %z.0183, i64 %y.0182, i64 %x.0181, !dbg !349
  %arrayidx149 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr @out_invvertex, i64 0, i64 %z.0183, i64 %y.0182, i64 %x.0181, i64 1, !dbg !350
  %arrayidx153 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr @out_invvertex, i64 0, i64 %z.0183, i64 %y.0182, i64 %x.0181, i64 2, !dbg !351
  tail call void @Transform_Point(double noundef %conv131, double noundef %conv136, double noundef %conv141, ptr noundef nonnull %arrayidx144, ptr noundef nonnull %arrayidx149, ptr noundef nonnull %arrayidx153), !dbg !352
  call void @llvm.dbg.value(metadata i64 %x.0181, metadata !278, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !333
  br i1 %cmp124, label %for.body126, label %for.inc154, !dbg !340, !llvm.loop !353

for.inc154:                                       ; preds = %for.body126
  call void @llvm.dbg.value(metadata i64 %y.0182, metadata !279, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !333
  br i1 %cmp120, label %for.cond123.preheader, label %for.inc157, !dbg !336, !llvm.loop !355

for.inc157:                                       ; preds = %for.inc154
  call void @llvm.dbg.value(metadata i64 %z.0183, metadata !280, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !333
  br i1 %cmp, label %for.cond119.preheader, label %for.end159, !dbg !334, !llvm.loop !357

for.end159:                                       ; preds = %for.inc157
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %in_invvertex) #15, !dbg !359
  ret void, !dbg !359
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Compute_Input_Unit_Vector() local_unnamed_addr #9 !dbg !360 {
entry:
  %uin_invvertex = alloca [2 x [2 x [2 x [3 x float]]]], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %uin_invvertex) #15, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %uin_invvertex, metadata !365, metadata !DIExpression()), !dbg !367
  store float 0.000000e+00, ptr %uin_invvertex, align 16, !dbg !368
  %arrayidx7 = getelementptr inbounds [3 x float], ptr %uin_invvertex, i64 0, i64 1, !dbg !369
  store float 0.000000e+00, ptr %arrayidx7, align 4, !dbg !370
  %arrayidx11 = getelementptr inbounds [3 x float], ptr %uin_invvertex, i64 0, i64 2, !dbg !371
  store float 0.000000e+00, ptr %arrayidx11, align 8, !dbg !372
  %arrayidx14 = getelementptr inbounds [2 x [3 x float]], ptr %uin_invvertex, i64 0, i64 1, !dbg !373
  store float 1.000000e+00, ptr %arrayidx14, align 4, !dbg !374
  %arrayidx19 = getelementptr inbounds [2 x [3 x float]], ptr %uin_invvertex, i64 0, i64 1, i64 1, !dbg !375
  store float 0.000000e+00, ptr %arrayidx19, align 16, !dbg !376
  %arrayidx23 = getelementptr inbounds [2 x [3 x float]], ptr %uin_invvertex, i64 0, i64 1, i64 2, !dbg !377
  store float 0.000000e+00, ptr %arrayidx23, align 4, !dbg !378
  %arrayidx25 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %uin_invvertex, i64 0, i64 1, !dbg !379
  store float 0.000000e+00, ptr %arrayidx25, align 8, !dbg !380
  %arrayidx31 = getelementptr inbounds [3 x float], ptr %arrayidx25, i64 0, i64 1, !dbg !381
  store float 1.000000e+00, ptr %arrayidx31, align 4, !dbg !382
  %arrayidx35 = getelementptr inbounds [3 x float], ptr %arrayidx25, i64 0, i64 2, !dbg !383
  store float 0.000000e+00, ptr %arrayidx35, align 16, !dbg !384
  %arrayidx38 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %uin_invvertex, i64 0, i64 1, i64 1, !dbg !385
  store float 1.000000e+00, ptr %arrayidx38, align 4, !dbg !386
  %arrayidx43 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %uin_invvertex, i64 0, i64 1, i64 1, i64 1, !dbg !387
  store float 1.000000e+00, ptr %arrayidx43, align 8, !dbg !388
  %arrayidx47 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %uin_invvertex, i64 0, i64 1, i64 1, i64 2, !dbg !389
  store float 0.000000e+00, ptr %arrayidx47, align 4, !dbg !390
  %arrayidx48 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %uin_invvertex, i64 0, i64 1, !dbg !391
  store float 0.000000e+00, ptr %arrayidx48, align 16, !dbg !392
  %arrayidx55 = getelementptr inbounds [3 x float], ptr %arrayidx48, i64 0, i64 1, !dbg !393
  store float 0.000000e+00, ptr %arrayidx55, align 4, !dbg !394
  %arrayidx59 = getelementptr inbounds [3 x float], ptr %arrayidx48, i64 0, i64 2, !dbg !395
  store float 1.000000e+00, ptr %arrayidx59, align 8, !dbg !396
  %arrayidx62 = getelementptr inbounds [2 x [3 x float]], ptr %arrayidx48, i64 0, i64 1, !dbg !397
  store float 1.000000e+00, ptr %arrayidx62, align 4, !dbg !398
  %arrayidx67 = getelementptr inbounds [2 x [3 x float]], ptr %arrayidx48, i64 0, i64 1, i64 1, !dbg !399
  store float 0.000000e+00, ptr %arrayidx67, align 16, !dbg !400
  %arrayidx71 = getelementptr inbounds [2 x [3 x float]], ptr %arrayidx48, i64 0, i64 1, i64 2, !dbg !401
  store float 1.000000e+00, ptr %arrayidx71, align 4, !dbg !402
  %arrayidx73 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %uin_invvertex, i64 0, i64 1, i64 1, !dbg !403
  store float 0.000000e+00, ptr %arrayidx73, align 8, !dbg !404
  %arrayidx79 = getelementptr inbounds [3 x float], ptr %arrayidx73, i64 0, i64 1, !dbg !405
  store float 1.000000e+00, ptr %arrayidx79, align 4, !dbg !406
  %arrayidx83 = getelementptr inbounds [3 x float], ptr %arrayidx73, i64 0, i64 2, !dbg !407
  store float 1.000000e+00, ptr %arrayidx83, align 16, !dbg !408
  %arrayidx86 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %uin_invvertex, i64 0, i64 1, i64 1, i64 1, !dbg !409
  store float 1.000000e+00, ptr %arrayidx86, align 4, !dbg !410
  %arrayidx91 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %uin_invvertex, i64 0, i64 1, i64 1, i64 1, i64 1, !dbg !411
  store float 1.000000e+00, ptr %arrayidx91, align 8, !dbg !412
  %arrayidx95 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %uin_invvertex, i64 0, i64 1, i64 1, i64 1, i64 2, !dbg !413
  store float 1.000000e+00, ptr %arrayidx95, align 4, !dbg !414
  call void @llvm.dbg.value(metadata i64 0, metadata !364, metadata !DIExpression()), !dbg !415
  br label %for.cond96.preheader, !dbg !416

for.cond96.preheader:                             ; preds = %entry, %for.inc131
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc131 ]
  %z.0157 = phi i64 [ 0, %entry ], [ 1, %for.inc131 ]
  call void @llvm.dbg.value(metadata i64 %z.0157, metadata !364, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i64 0, metadata !363, metadata !DIExpression()), !dbg !415
  br label %for.cond99.preheader, !dbg !418

for.cond99.preheader:                             ; preds = %for.cond96.preheader, %for.inc128
  %cmp97 = phi i1 [ true, %for.cond96.preheader ], [ false, %for.inc128 ]
  %y.0156 = phi i64 [ 0, %for.cond96.preheader ], [ 1, %for.inc128 ]
  call void @llvm.dbg.value(metadata i64 %y.0156, metadata !363, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i64 0, metadata !362, metadata !DIExpression()), !dbg !415
  br label %for.body101, !dbg !422

for.body101:                                      ; preds = %for.cond99.preheader, %for.body101
  %cmp100 = phi i1 [ true, %for.cond99.preheader ], [ false, %for.body101 ]
  %x.0155 = phi i64 [ 0, %for.cond99.preheader ], [ 1, %for.body101 ]
  call void @llvm.dbg.value(metadata i64 %x.0155, metadata !362, metadata !DIExpression()), !dbg !415
  %arrayidx104 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %uin_invvertex, i64 0, i64 %z.0157, i64 %y.0156, i64 %x.0155, !dbg !426
  %0 = load float, ptr %arrayidx104, align 4, !dbg !426
  %conv = fpext float %0 to double, !dbg !426
  %arrayidx109 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %uin_invvertex, i64 0, i64 %z.0157, i64 %y.0156, i64 %x.0155, i64 1, !dbg !429
  %1 = load float, ptr %arrayidx109, align 4, !dbg !429
  %conv110 = fpext float %1 to double, !dbg !429
  %arrayidx114 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr %uin_invvertex, i64 0, i64 %z.0157, i64 %y.0156, i64 %x.0155, i64 2, !dbg !430
  %2 = load float, ptr %arrayidx114, align 4, !dbg !430
  %conv115 = fpext float %2 to double, !dbg !430
  %arrayidx118 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr @uout_invvertex, i64 0, i64 %z.0157, i64 %y.0156, i64 %x.0155, !dbg !431
  %arrayidx123 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr @uout_invvertex, i64 0, i64 %z.0157, i64 %y.0156, i64 %x.0155, i64 1, !dbg !432
  %arrayidx127 = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr @uout_invvertex, i64 0, i64 %z.0157, i64 %y.0156, i64 %x.0155, i64 2, !dbg !433
  tail call void @Transform_Point(double noundef %conv, double noundef %conv110, double noundef %conv115, ptr noundef nonnull %arrayidx118, ptr noundef nonnull %arrayidx123, ptr noundef nonnull %arrayidx127), !dbg !434
  call void @llvm.dbg.value(metadata i64 %x.0155, metadata !362, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !415
  br i1 %cmp100, label %for.body101, label %for.inc128, !dbg !422, !llvm.loop !435

for.inc128:                                       ; preds = %for.body101
  call void @llvm.dbg.value(metadata i64 %y.0156, metadata !363, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !415
  br i1 %cmp97, label %for.cond99.preheader, label %for.inc131, !dbg !418, !llvm.loop !437

for.inc131:                                       ; preds = %for.inc128
  call void @llvm.dbg.value(metadata i64 %z.0157, metadata !364, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !415
  br i1 %cmp, label %for.cond96.preheader, label %for.end133, !dbg !416, !llvm.loop !439

for.end133:                                       ; preds = %for.inc131
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %uin_invvertex) #15, !dbg !441
  ret void, !dbg !441
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local void @Transform_Point(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %xnew, ptr nocapture noundef writeonly %ynew, ptr nocapture noundef writeonly %znew) local_unnamed_addr #10 !dbg !442 {
entry:
  %xold = fptrunc double %0 to float
  %yold = fptrunc double %1 to float
  %zold = fptrunc double %2 to float
  call void @llvm.dbg.value(metadata float %xold, metadata !447, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata float %yold, metadata !448, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata float %zold, metadata !449, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata ptr %xnew, metadata !450, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata ptr %ynew, metadata !451, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata ptr %znew, metadata !452, metadata !DIExpression()), !dbg !453
  %3 = load float, ptr @transformation_matrix, align 16, !dbg !454
  %4 = load float, ptr getelementptr inbounds ([4 x [4 x float]], ptr @transformation_matrix, i64 0, i64 1), align 16, !dbg !455
  %mul3 = fmul float %4, %yold, !dbg !456
  %5 = tail call float @llvm.fmuladd.f32(float %xold, float %3, float %mul3), !dbg !457
  %6 = load float, ptr getelementptr inbounds ([4 x [4 x float]], ptr @transformation_matrix, i64 0, i64 2), align 16, !dbg !458
  %7 = tail call float @llvm.fmuladd.f32(float %zold, float %6, float %5), !dbg !459
  %8 = load float, ptr getelementptr inbounds ([4 x [4 x float]], ptr @transformation_matrix, i64 0, i64 3), align 16, !dbg !460
  %add = fadd float %8, %7, !dbg !461
  store float %add, ptr %xnew, align 4, !dbg !462
  %9 = load float, ptr getelementptr inbounds ([4 x [4 x float]], ptr @transformation_matrix, i64 0, i64 0, i64 1), align 4, !dbg !463
  %10 = load float, ptr getelementptr inbounds ([4 x [4 x float]], ptr @transformation_matrix, i64 0, i64 1, i64 1), align 4, !dbg !464
  %mul4 = fmul float %10, %yold, !dbg !465
  %11 = tail call float @llvm.fmuladd.f32(float %xold, float %9, float %mul4), !dbg !466
  %12 = load float, ptr getelementptr inbounds ([4 x [4 x float]], ptr @transformation_matrix, i64 0, i64 2, i64 1), align 4, !dbg !467
  %13 = tail call float @llvm.fmuladd.f32(float %zold, float %12, float %11), !dbg !468
  %14 = load float, ptr getelementptr inbounds ([4 x [4 x float]], ptr @transformation_matrix, i64 0, i64 3, i64 1), align 4, !dbg !469
  %add5 = fadd float %14, %13, !dbg !470
  store float %add5, ptr %ynew, align 4, !dbg !471
  %15 = load float, ptr getelementptr inbounds ([4 x [4 x float]], ptr @transformation_matrix, i64 0, i64 0, i64 2), align 8, !dbg !472
  %16 = load float, ptr getelementptr inbounds ([4 x [4 x float]], ptr @transformation_matrix, i64 0, i64 1, i64 2), align 8, !dbg !473
  %mul6 = fmul float %16, %yold, !dbg !474
  %17 = tail call float @llvm.fmuladd.f32(float %xold, float %15, float %mul6), !dbg !475
  %18 = load float, ptr getelementptr inbounds ([4 x [4 x float]], ptr @transformation_matrix, i64 0, i64 2, i64 2), align 8, !dbg !476
  %19 = tail call float @llvm.fmuladd.f32(float %zold, float %18, float %17), !dbg !477
  %20 = load float, ptr getelementptr inbounds ([4 x [4 x float]], ptr @transformation_matrix, i64 0, i64 3, i64 2), align 8, !dbg !478
  %add7 = fadd float %20, %19, !dbg !479
  store float %add7, ptr %znew, align 4, !dbg !480
  ret void, !dbg !481
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local void @Copy_Matrix(ptr nocapture noundef readonly %input_matrix, ptr nocapture noundef writeonly %output_matrix) local_unnamed_addr #11 !dbg !482 {
entry:
  call void @llvm.dbg.value(metadata ptr %input_matrix, metadata !486, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata ptr %output_matrix, metadata !487, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i64 0, metadata !488, metadata !DIExpression()), !dbg !490
  br label %for.cond1.preheader, !dbg !491

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %i.017 = phi i64 [ 0, %entry ], [ %inc8, %for.inc7 ]
  call void @llvm.dbg.value(metadata i64 %i.017, metadata !488, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i64 0, metadata !489, metadata !DIExpression()), !dbg !490
  br label %for.body3, !dbg !493

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.016 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  call void @llvm.dbg.value(metadata i64 %j.016, metadata !489, metadata !DIExpression()), !dbg !490
  %arrayidx4 = getelementptr inbounds [4 x float], ptr %input_matrix, i64 %i.017, i64 %j.016, !dbg !497
  %0 = load float, ptr %arrayidx4, align 4, !dbg !497
  %arrayidx6 = getelementptr inbounds [4 x float], ptr %output_matrix, i64 %i.017, i64 %j.016, !dbg !500
  store float %0, ptr %arrayidx6, align 4, !dbg !501
  %inc = add nuw nsw i64 %j.016, 1, !dbg !502
  call void @llvm.dbg.value(metadata i64 %inc, metadata !489, metadata !DIExpression()), !dbg !490
  %exitcond.not = icmp eq i64 %inc, 4, !dbg !503
  br i1 %exitcond.not, label %for.inc7, label %for.body3, !dbg !493, !llvm.loop !504

for.inc7:                                         ; preds = %for.body3
  %inc8 = add nuw nsw i64 %i.017, 1, !dbg !506
  call void @llvm.dbg.value(metadata i64 %inc8, metadata !488, metadata !DIExpression()), !dbg !490
  %exitcond19.not = icmp eq i64 %inc8, 4, !dbg !507
  br i1 %exitcond19.not, label %for.end9, label %for.cond1.preheader, !dbg !491, !llvm.loop !508

for.end9:                                         ; preds = %for.inc7
  ret void, !dbg !510
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable
define dso_local void @Load_Translation_Matrix(ptr nocapture noundef writeonly %matrix, double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #6 !dbg !511 {
entry:
  %xoffset = fptrunc double %0 to float
  %yoffset = fptrunc double %1 to float
  %zoffset = fptrunc double %2 to float
  call void @llvm.dbg.value(metadata ptr %matrix, metadata !513, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata float %xoffset, metadata !514, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata float %yoffset, metadata !515, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata float %zoffset, metadata !516, metadata !DIExpression()), !dbg !517
  tail call void @Load_Identity_Matrix(ptr noundef %matrix), !dbg !518
  %arrayidx = getelementptr inbounds [4 x float], ptr %matrix, i64 3, !dbg !519
  store float %xoffset, ptr %arrayidx, align 4, !dbg !520
  %arrayidx5 = getelementptr inbounds [4 x float], ptr %matrix, i64 3, i64 1, !dbg !521
  store float %yoffset, ptr %arrayidx5, align 4, !dbg !522
  %arrayidx7 = getelementptr inbounds [4 x float], ptr %matrix, i64 3, i64 2, !dbg !523
  store float %zoffset, ptr %arrayidx7, align 4, !dbg !524
  ret void, !dbg !525
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @Inverse_Concatenate_Transform(ptr nocapture noundef %composite_matrix, ptr nocapture noundef readonly %transformation_matrix) local_unnamed_addr #7 !dbg !526 {
entry:
  %temp_matrix = alloca [4 x [4 x float]], align 16
  call void @llvm.dbg.value(metadata ptr %composite_matrix, metadata !528, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata ptr %transformation_matrix, metadata !529, metadata !DIExpression()), !dbg !531
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp_matrix) #15, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %temp_matrix, metadata !530, metadata !DIExpression()), !dbg !533
  call void @Multiply_Matrices(ptr noundef %transformation_matrix, ptr noundef %composite_matrix, ptr noundef nonnull %temp_matrix), !dbg !534
  call void @Copy_Matrix(ptr noundef nonnull %temp_matrix, ptr noundef %composite_matrix), !dbg !535
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp_matrix) #15, !dbg !536
  ret void, !dbg !536
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable
define dso_local void @Load_Scaling_Matrix(ptr nocapture noundef writeonly %matrix, double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #6 !dbg !537 {
entry:
  %xscale = fptrunc double %0 to float
  %yscale = fptrunc double %1 to float
  %zscale = fptrunc double %2 to float
  call void @llvm.dbg.value(metadata ptr %matrix, metadata !539, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata float %xscale, metadata !540, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata float %yscale, metadata !541, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata float %zscale, metadata !542, metadata !DIExpression()), !dbg !543
  tail call void @Load_Identity_Matrix(ptr noundef %matrix), !dbg !544
  store float %xscale, ptr %matrix, align 4, !dbg !545
  %arrayidx5 = getelementptr inbounds [4 x float], ptr %matrix, i64 1, i64 1, !dbg !546
  store float %yscale, ptr %arrayidx5, align 4, !dbg !547
  %arrayidx7 = getelementptr inbounds [4 x float], ptr %matrix, i64 2, i64 2, !dbg !548
  store float %zscale, ptr %arrayidx7, align 4, !dbg !549
  ret void, !dbg !550
}

; Function Attrs: nofree noinline nounwind writeonly uwtable
define dso_local void @Load_Rotation_Matrix(ptr nocapture noundef writeonly %matrix, i64 noundef %axis, double noundef %0) local_unnamed_addr #12 !dbg !551 {
entry:
  %angle = fptrunc double %0 to float
  call void @llvm.dbg.value(metadata ptr %matrix, metadata !553, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i64 %axis, metadata !554, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata float %angle, metadata !555, metadata !DIExpression()), !dbg !556
  tail call void @Load_Identity_Matrix(ptr noundef %matrix), !dbg !557
  switch i64 %axis, label %if.end90 [
    i64 1, label %if.then
    i64 2, label %if.then26
    i64 3, label %if.then59
  ], !dbg !558

if.then:                                          ; preds = %entry
  %conv = fpext float %angle to double, !dbg !559
  %div = fdiv double %conv, 1.800000e+02, !dbg !562
  %mul = fmul double %div, 0x400921FB54442D18, !dbg !563
  %call = tail call double @cos(double noundef %mul) #15, !dbg !564
  %conv1 = fptrunc double %call to float, !dbg !564
  %arrayidx2 = getelementptr inbounds [4 x float], ptr %matrix, i64 1, i64 1, !dbg !565
  store float %conv1, ptr %arrayidx2, align 4, !dbg !566
  %call6 = tail call double @sin(double noundef %mul) #15, !dbg !567
  %conv7 = fptrunc double %call6 to float, !dbg !567
  %arrayidx9 = getelementptr inbounds [4 x float], ptr %matrix, i64 1, i64 2, !dbg !568
  store float %conv7, ptr %arrayidx9, align 4, !dbg !569
  %call13 = tail call double @sin(double noundef %mul) #15, !dbg !570
  %1 = fptrunc double %call13 to float, !dbg !571
  %conv14 = fneg float %1, !dbg !571
  %arrayidx16 = getelementptr inbounds [4 x float], ptr %matrix, i64 2, i64 1, !dbg !572
  store float %conv14, ptr %arrayidx16, align 4, !dbg !573
  %call20 = tail call double @cos(double noundef %mul) #15, !dbg !574
  %conv21 = fptrunc double %call20 to float, !dbg !574
  %arrayidx23 = getelementptr inbounds [4 x float], ptr %matrix, i64 2, i64 2, !dbg !575
  store float %conv21, ptr %arrayidx23, align 4, !dbg !576
  br label %if.end90, !dbg !577

if.then26:                                        ; preds = %entry
  %conv27 = fpext float %angle to double, !dbg !578
  %div28 = fdiv double %conv27, 1.800000e+02, !dbg !581
  %mul29 = fmul double %div28, 0x400921FB54442D18, !dbg !582
  %call30 = tail call double @cos(double noundef %mul29) #15, !dbg !583
  %conv31 = fptrunc double %call30 to float, !dbg !583
  store float %conv31, ptr %matrix, align 4, !dbg !584
  %call37 = tail call double @sin(double noundef %mul29) #15, !dbg !585
  %2 = fptrunc double %call37 to float, !dbg !586
  %conv39 = fneg float %2, !dbg !586
  %arrayidx41 = getelementptr inbounds [4 x float], ptr %matrix, i64 0, i64 2, !dbg !587
  store float %conv39, ptr %arrayidx41, align 4, !dbg !588
  %call45 = tail call double @sin(double noundef %mul29) #15, !dbg !589
  %conv46 = fptrunc double %call45 to float, !dbg !589
  %arrayidx47 = getelementptr inbounds [4 x float], ptr %matrix, i64 2, !dbg !590
  store float %conv46, ptr %arrayidx47, align 4, !dbg !591
  %call52 = tail call double @cos(double noundef %mul29) #15, !dbg !592
  %conv53 = fptrunc double %call52 to float, !dbg !592
  %arrayidx55 = getelementptr inbounds [4 x float], ptr %matrix, i64 2, i64 2, !dbg !593
  store float %conv53, ptr %arrayidx55, align 4, !dbg !594
  br label %if.end90, !dbg !595

if.then59:                                        ; preds = %entry
  %conv60 = fpext float %angle to double, !dbg !596
  %div61 = fdiv double %conv60, 1.800000e+02, !dbg !599
  %mul62 = fmul double %div61, 0x400921FB54442D18, !dbg !600
  %call63 = tail call double @cos(double noundef %mul62) #15, !dbg !601
  %conv64 = fptrunc double %call63 to float, !dbg !601
  store float %conv64, ptr %matrix, align 4, !dbg !602
  %call70 = tail call double @sin(double noundef %mul62) #15, !dbg !603
  %conv71 = fptrunc double %call70 to float, !dbg !603
  %arrayidx73 = getelementptr inbounds [4 x float], ptr %matrix, i64 0, i64 1, !dbg !604
  store float %conv71, ptr %arrayidx73, align 4, !dbg !605
  %call77 = tail call double @sin(double noundef %mul62) #15, !dbg !606
  %3 = fptrunc double %call77 to float, !dbg !607
  %conv79 = fneg float %3, !dbg !607
  %arrayidx80 = getelementptr inbounds [4 x float], ptr %matrix, i64 1, !dbg !608
  store float %conv79, ptr %arrayidx80, align 4, !dbg !609
  %call85 = tail call double @cos(double noundef %mul62) #15, !dbg !610
  %conv86 = fptrunc double %call85 to float, !dbg !610
  %arrayidx88 = getelementptr inbounds [4 x float], ptr %matrix, i64 1, i64 1, !dbg !611
  store float %conv86, ptr %arrayidx88, align 4, !dbg !612
  br label %if.end90, !dbg !613

if.end90:                                         ; preds = %entry, %if.then26, %if.then59, %if.then
  ret void, !dbg !614
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @Concatenate_Transform(ptr nocapture noundef %composite_matrix, ptr nocapture noundef readonly %transformation_matrix) local_unnamed_addr #7 !dbg !615 {
entry:
  %temp_matrix = alloca [4 x [4 x float]], align 16
  call void @llvm.dbg.value(metadata ptr %composite_matrix, metadata !617, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata ptr %transformation_matrix, metadata !618, metadata !DIExpression()), !dbg !620
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp_matrix) #15, !dbg !621
  call void @llvm.dbg.declare(metadata ptr %temp_matrix, metadata !619, metadata !DIExpression()), !dbg !622
  call void @Multiply_Matrices(ptr noundef %composite_matrix, ptr noundef %transformation_matrix, ptr noundef nonnull %temp_matrix), !dbg !623
  call void @Copy_Matrix(ptr noundef nonnull %temp_matrix, ptr noundef %composite_matrix), !dbg !624
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp_matrix) #15, !dbg !625
  ret void, !dbg !625
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @Multiply_Matrices(ptr nocapture noundef readonly %input_matrix1, ptr nocapture noundef readonly %input_matrix2, ptr nocapture noundef writeonly %output_matrix) local_unnamed_addr #7 !dbg !626 {
entry:
  call void @llvm.dbg.value(metadata ptr %input_matrix1, metadata !630, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata ptr %input_matrix2, metadata !631, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata ptr %output_matrix, metadata !632, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i64 0, metadata !633, metadata !DIExpression()), !dbg !635
  br label %for.cond1.preheader, !dbg !636

for.cond1.preheader:                              ; preds = %entry, %for.inc22
  %i.044 = phi i64 [ 0, %entry ], [ %inc23, %for.inc22 ]
  call void @llvm.dbg.value(metadata i64 %i.044, metadata !633, metadata !DIExpression()), !dbg !635
  %arrayidx = getelementptr inbounds [4 x float], ptr %input_matrix1, i64 %i.044
  %arrayidx8 = getelementptr inbounds [4 x float], ptr %input_matrix1, i64 %i.044, i64 1
  %arrayidx13 = getelementptr inbounds [4 x float], ptr %input_matrix1, i64 %i.044, i64 2
  %arrayidx17 = getelementptr inbounds [4 x float], ptr %input_matrix1, i64 %i.044, i64 3
  call void @llvm.dbg.value(metadata i64 0, metadata !634, metadata !DIExpression()), !dbg !635
  br label %for.body3, !dbg !638

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.043 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  call void @llvm.dbg.value(metadata i64 %j.043, metadata !634, metadata !DIExpression()), !dbg !635
  %0 = load float, ptr %arrayidx, align 4, !dbg !642
  %arrayidx6 = getelementptr inbounds [4 x float], ptr %input_matrix2, i64 0, i64 %j.043, !dbg !645
  %1 = load float, ptr %arrayidx6, align 4, !dbg !645
  %2 = load float, ptr %arrayidx8, align 4, !dbg !646
  %arrayidx10 = getelementptr inbounds [4 x float], ptr %input_matrix2, i64 1, i64 %j.043, !dbg !647
  %3 = load float, ptr %arrayidx10, align 4, !dbg !647
  %mul11 = fmul float %2, %3, !dbg !648
  %4 = tail call float @llvm.fmuladd.f32(float %0, float %1, float %mul11), !dbg !649
  %5 = load float, ptr %arrayidx13, align 4, !dbg !650
  %arrayidx15 = getelementptr inbounds [4 x float], ptr %input_matrix2, i64 2, i64 %j.043, !dbg !651
  %6 = load float, ptr %arrayidx15, align 4, !dbg !651
  %7 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %4), !dbg !652
  %8 = load float, ptr %arrayidx17, align 4, !dbg !653
  %arrayidx19 = getelementptr inbounds [4 x float], ptr %input_matrix2, i64 3, i64 %j.043, !dbg !654
  %9 = load float, ptr %arrayidx19, align 4, !dbg !654
  %10 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %7), !dbg !655
  %arrayidx21 = getelementptr inbounds [4 x float], ptr %output_matrix, i64 %i.044, i64 %j.043, !dbg !656
  store float %10, ptr %arrayidx21, align 4, !dbg !657
  %inc = add nuw nsw i64 %j.043, 1, !dbg !658
  call void @llvm.dbg.value(metadata i64 %inc, metadata !634, metadata !DIExpression()), !dbg !635
  %exitcond.not = icmp eq i64 %inc, 4, !dbg !659
  br i1 %exitcond.not, label %for.inc22, label %for.body3, !dbg !638, !llvm.loop !660

for.inc22:                                        ; preds = %for.body3
  %inc23 = add nuw nsw i64 %i.044, 1, !dbg !662
  call void @llvm.dbg.value(metadata i64 %inc23, metadata !633, metadata !DIExpression()), !dbg !635
  %exitcond45.not = icmp eq i64 %inc23, 4, !dbg !663
  br i1 %exitcond45.not, label %for.end24, label %for.cond1.preheader, !dbg !636, !llvm.loop !664

for.end24:                                        ; preds = %for.inc22
  ret void, !dbg !666
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #13

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "out_diag_len", scope: !2, file: !3, line: 40, type: !34, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "view.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "7da80ac3acda1e60fbfa939537920a78")
!4 = !{!5, !6}
!5 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!7 = !{!8, !13, !19, !21, !0, !23, !25, !30, !32, !36, !38, !40, !42, !44}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "transformation_matrix", scope: !2, file: !3, line: 31, type: !10, isLocal: false, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !11)
!11 = !{!12, !12}
!12 = !DISubrange(count: 4)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "out_invvertex", scope: !2, file: !3, line: 32, type: !15, isLocal: false, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 768, elements: !16)
!16 = !{!17, !17, !17, !18}
!17 = !DISubrange(count: 2)
!18 = !DISubrange(count: 3)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "uout_invvertex", scope: !2, file: !3, line: 34, type: !15, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "frust_len", scope: !2, file: !3, line: 37, type: !5, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "out_diag_length", scope: !2, file: !3, line: 41, type: !6, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "depth_cueing", scope: !2, file: !3, line: 42, type: !27, isLocal: false, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 131072, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 4096)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "image_zlen", scope: !2, file: !3, line: 43, type: !5, isLocal: false, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "in_max", scope: !2, file: !3, line: 44, type: !34, isLocal: false, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, elements: !35)
!35 = !{!18}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "opc_xlen", scope: !2, file: !3, line: 45, type: !5, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "opc_xylen", scope: !2, file: !3, line: 45, type: !5, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "norm_xlen", scope: !2, file: !3, line: 46, type: !5, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "norm_xylen", scope: !2, file: !3, line: 46, type: !5, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "invmatrix", scope: !2, file: !3, line: 48, type: !10, isLocal: false, isDefinition: true)
!46 = !{i32 7, !"Dwarf Version", i32 5}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{i32 1, !"wchar_size", i32 4}
!49 = !{i32 7, !"PIC Level", i32 2}
!50 = !{i32 7, !"PIE Level", i32 2}
!51 = !{i32 7, !"uwtable", i32 2}
!52 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!53 = distinct !DISubprogram(name: "Compute_Pre_View", scope: !3, file: !3, line: 71, type: !54, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{null}
!56 = !{!57, !58}
!57 = !DILocalVariable(name: "i", scope: !53, file: !3, line: 73, type: !5)
!58 = !DILocalVariable(name: "outz", scope: !53, file: !3, line: 73, type: !5)
!59 = !DILocation(line: 0, scope: !53)
!60 = !DILocation(line: 75, column: 5, scope: !61)
!61 = distinct !DILexicalBlock(scope: !53, file: !3, line: 75, column: 5)
!62 = !DILocation(line: 76, column: 27, scope: !63)
!63 = distinct !DILexicalBlock(scope: !61, file: !3, line: 75, column: 5)
!64 = !DILocation(line: 76, column: 37, scope: !63)
!65 = !DILocation(line: 76, column: 9, scope: !63)
!66 = !DILocation(line: 76, column: 25, scope: !63)
!67 = !DILocation(line: 75, column: 22, scope: !63)
!68 = !DILocation(line: 75, column: 16, scope: !63)
!69 = distinct !{!69, !60, !70, !71, !72}
!70 = !DILocation(line: 76, column: 38, scope: !61)
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !DILocation(line: 77, column: 23, scope: !53)
!74 = !DILocation(line: 78, column: 9, scope: !53)
!75 = !DILocation(line: 78, column: 24, scope: !53)
!76 = !DILocation(line: 77, column: 55, scope: !53)
!77 = !DILocation(line: 79, column: 13, scope: !53)
!78 = !DILocation(line: 78, column: 41, scope: !53)
!79 = !DILocation(line: 80, column: 23, scope: !53)
!80 = !DILocation(line: 80, column: 21, scope: !53)
!81 = !DILocation(line: 81, column: 17, scope: !53)
!82 = !DILocation(line: 81, column: 38, scope: !53)
!83 = !DILocation(line: 81, column: 15, scope: !53)
!84 = !DILocation(line: 82, column: 16, scope: !53)
!85 = !DILocation(line: 90, column: 20, scope: !86)
!86 = distinct !DILexicalBlock(scope: !53, file: !3, line: 90, column: 9)
!87 = !DILocation(line: 90, column: 9, scope: !53)
!88 = !DILocation(line: 91, column: 9, scope: !86)
!89 = !DILocation(line: 92, column: 24, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 92, column: 5)
!91 = distinct !DILexicalBlock(scope: !53, file: !3, line: 92, column: 5)
!92 = !DILocation(line: 92, column: 22, scope: !90)
!93 = !DILocation(line: 92, column: 5, scope: !91)
!94 = !DILocation(line: 93, column: 30, scope: !95)
!95 = distinct !DILexicalBlock(scope: !90, file: !3, line: 92, column: 44)
!96 = !DILocation(line: 94, column: 17, scope: !95)
!97 = !DILocation(line: 94, column: 31, scope: !95)
!98 = !DILocation(line: 94, column: 30, scope: !95)
!99 = !DILocation(line: 94, column: 49, scope: !95)
!100 = !DILocation(line: 94, column: 13, scope: !95)
!101 = !DILocation(line: 95, column: 18, scope: !95)
!102 = !DILocation(line: 95, column: 33, scope: !95)
!103 = !DILocation(line: 95, column: 31, scope: !95)
!104 = !DILocation(line: 95, column: 17, scope: !95)
!105 = !DILocation(line: 93, column: 43, scope: !95)
!106 = !DILocation(line: 93, column: 9, scope: !95)
!107 = !DILocation(line: 96, column: 30, scope: !95)
!108 = !DILocation(line: 96, column: 28, scope: !95)
!109 = !DILocation(line: 92, column: 40, scope: !90)
!110 = distinct !{!110, !93, !111, !71, !72}
!111 = !DILocation(line: 97, column: 5, scope: !91)
!112 = !DILocation(line: 100, column: 25, scope: !53)
!113 = !DILocation(line: 100, column: 35, scope: !53)
!114 = !DILocation(line: 100, column: 17, scope: !53)
!115 = !DILocation(line: 100, column: 38, scope: !53)
!116 = !DILocation(line: 100, column: 44, scope: !53)
!117 = !DILocation(line: 100, column: 15, scope: !53)
!118 = !DILocation(line: 101, column: 25, scope: !53)
!119 = !DILocation(line: 101, column: 35, scope: !53)
!120 = !DILocation(line: 101, column: 17, scope: !53)
!121 = !DILocation(line: 101, column: 38, scope: !53)
!122 = !DILocation(line: 101, column: 44, scope: !53)
!123 = !DILocation(line: 101, column: 15, scope: !53)
!124 = !DILocation(line: 102, column: 25, scope: !53)
!125 = !DILocation(line: 102, column: 35, scope: !53)
!126 = !DILocation(line: 102, column: 17, scope: !53)
!127 = !DILocation(line: 102, column: 38, scope: !53)
!128 = !DILocation(line: 102, column: 44, scope: !53)
!129 = !DILocation(line: 102, column: 15, scope: !53)
!130 = !DILocation(line: 105, column: 16, scope: !53)
!131 = !DILocation(line: 105, column: 27, scope: !53)
!132 = !DILocation(line: 105, column: 14, scope: !53)
!133 = !DILocation(line: 106, column: 30, scope: !53)
!134 = !DILocation(line: 106, column: 28, scope: !53)
!135 = !DILocation(line: 106, column: 17, scope: !53)
!136 = !DILocation(line: 106, column: 15, scope: !53)
!137 = !DILocation(line: 108, column: 17, scope: !53)
!138 = !DILocation(line: 108, column: 29, scope: !53)
!139 = !DILocation(line: 108, column: 15, scope: !53)
!140 = !DILocation(line: 109, column: 32, scope: !53)
!141 = !DILocation(line: 109, column: 30, scope: !53)
!142 = !DILocation(line: 109, column: 18, scope: !53)
!143 = !DILocation(line: 109, column: 16, scope: !53)
!144 = !DILocation(line: 110, column: 1, scope: !53)
!145 = !DISubprogram(name: "Error", scope: !146, file: !146, line: 187, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !151)
!146 = !DIFile(filename: "./global.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "f049690031a7f12768b0765e4f4983eb")
!147 = !DISubroutineType(types: !148)
!148 = !{null, !149, null}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!151 = !{}
!152 = distinct !DISubprogram(name: "Select_View", scope: !3, file: !3, line: 113, type: !153, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !155)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !6, !5}
!155 = !{!156, !157}
!156 = !DILocalVariable(name: "delta_angle", arg: 1, scope: !152, file: !3, line: 114, type: !6)
!157 = !DILocalVariable(name: "axis", arg: 2, scope: !152, file: !3, line: 115, type: !5)
!158 = !DILocation(line: 0, scope: !152)
!159 = !DILocation(line: 118, column: 5, scope: !152)
!160 = !DILocation(line: 124, column: 45, scope: !152)
!161 = !DILocation(line: 124, column: 37, scope: !152)
!162 = !DILocation(line: 124, column: 61, scope: !152)
!163 = !DILocation(line: 125, column: 45, scope: !152)
!164 = !DILocation(line: 125, column: 37, scope: !152)
!165 = !DILocation(line: 125, column: 61, scope: !152)
!166 = !DILocation(line: 126, column: 45, scope: !152)
!167 = !DILocation(line: 126, column: 37, scope: !152)
!168 = !DILocation(line: 126, column: 61, scope: !152)
!169 = !DILocation(line: 123, column: 5, scope: !152)
!170 = !DILocation(line: 129, column: 5, scope: !152)
!171 = !DILocation(line: 132, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !152, file: !3, line: 132, column: 9)
!173 = !DILocation(line: 132, column: 15, scope: !172)
!174 = !DILocation(line: 132, column: 9, scope: !152)
!175 = !DILocation(line: 133, column: 23, scope: !172)
!176 = !DILocation(line: 133, column: 35, scope: !172)
!177 = !DILocation(line: 133, column: 21, scope: !172)
!178 = !DILocation(line: 133, column: 9, scope: !172)
!179 = !DILocation(line: 134, column: 51, scope: !152)
!180 = !DILocation(line: 134, column: 50, scope: !152)
!181 = !DILocation(line: 134, column: 5, scope: !152)
!182 = !DILocation(line: 135, column: 51, scope: !152)
!183 = !DILocation(line: 135, column: 50, scope: !152)
!184 = !DILocation(line: 135, column: 5, scope: !152)
!185 = !DILocation(line: 137, column: 5, scope: !152)
!186 = !DILocation(line: 146, column: 38, scope: !152)
!187 = !DILocation(line: 146, column: 37, scope: !152)
!188 = !DILocation(line: 146, column: 53, scope: !152)
!189 = !DILocation(line: 145, column: 5, scope: !152)
!190 = !DILocation(line: 153, column: 5, scope: !152)
!191 = !DILocation(line: 154, column: 5, scope: !152)
!192 = !DILocation(line: 155, column: 5, scope: !152)
!193 = !DILocation(line: 156, column: 1, scope: !152)
!194 = distinct !DISubprogram(name: "Load_Identity_Matrix", scope: !3, file: !3, line: 322, type: !195, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !200)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !199)
!199 = !{!12}
!200 = !{!201, !202, !203}
!201 = !DILocalVariable(name: "matrix", arg: 1, scope: !194, file: !3, line: 323, type: !197)
!202 = !DILocalVariable(name: "i", scope: !194, file: !3, line: 325, type: !5)
!203 = !DILocalVariable(name: "j", scope: !194, file: !3, line: 325, type: !5)
!204 = !DILocation(line: 0, scope: !194)
!205 = !DILocation(line: 326, column: 2, scope: !206)
!206 = distinct !DILexicalBlock(scope: !194, file: !3, line: 326, column: 2)
!207 = !DILocation(line: 327, column: 3, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 327, column: 3)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 326, column: 22)
!210 = distinct !DILexicalBlock(scope: !206, file: !3, line: 326, column: 2)
!211 = !DILocation(line: 328, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !3, line: 327, column: 23)
!213 = distinct !DILexicalBlock(scope: !208, file: !3, line: 327, column: 3)
!214 = !DILocation(line: 330, column: 3, scope: !209)
!215 = !DILocation(line: 330, column: 16, scope: !209)
!216 = !DILocation(line: 326, column: 18, scope: !210)
!217 = !DILocation(line: 326, column: 13, scope: !210)
!218 = distinct !{!218, !205, !219, !71, !72}
!219 = !DILocation(line: 331, column: 2, scope: !206)
!220 = !DILocation(line: 332, column: 1, scope: !194)
!221 = distinct !DISubprogram(name: "Inverse_Concatenate_Translation", scope: !3, file: !3, line: 294, type: !222, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !224)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !197, !6, !6, !6}
!224 = !{!225, !226, !227, !228, !229}
!225 = !DILocalVariable(name: "matrix", arg: 1, scope: !221, file: !3, line: 295, type: !197)
!226 = !DILocalVariable(name: "xoffset", arg: 2, scope: !221, file: !3, line: 295, type: !6)
!227 = !DILocalVariable(name: "yoffset", arg: 3, scope: !221, file: !3, line: 295, type: !6)
!228 = !DILocalVariable(name: "zoffset", arg: 4, scope: !221, file: !3, line: 295, type: !6)
!229 = !DILocalVariable(name: "translation_matrix", scope: !221, file: !3, line: 297, type: !10)
!230 = !DILocation(line: 0, scope: !221)
!231 = !DILocation(line: 297, column: 2, scope: !221)
!232 = !DILocation(line: 297, column: 8, scope: !221)
!233 = !DILocation(line: 298, column: 45, scope: !221)
!234 = !DILocation(line: 298, column: 53, scope: !221)
!235 = !DILocation(line: 298, column: 61, scope: !221)
!236 = !DILocation(line: 298, column: 2, scope: !221)
!237 = !DILocation(line: 299, column: 2, scope: !221)
!238 = !DILocation(line: 300, column: 1, scope: !221)
!239 = distinct !DISubprogram(name: "Inverse_Concatenate_Scaling", scope: !3, file: !3, line: 303, type: !222, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !240)
!240 = !{!241, !242, !243, !244, !245}
!241 = !DILocalVariable(name: "matrix", arg: 1, scope: !239, file: !3, line: 304, type: !197)
!242 = !DILocalVariable(name: "xscale", arg: 2, scope: !239, file: !3, line: 304, type: !6)
!243 = !DILocalVariable(name: "yscale", arg: 3, scope: !239, file: !3, line: 304, type: !6)
!244 = !DILocalVariable(name: "zscale", arg: 4, scope: !239, file: !3, line: 304, type: !6)
!245 = !DILocalVariable(name: "scaling_matrix", scope: !239, file: !3, line: 306, type: !10)
!246 = !DILocation(line: 0, scope: !239)
!247 = !DILocation(line: 306, column: 2, scope: !239)
!248 = !DILocation(line: 306, column: 8, scope: !239)
!249 = !DILocation(line: 307, column: 37, scope: !239)
!250 = !DILocation(line: 307, column: 44, scope: !239)
!251 = !DILocation(line: 307, column: 51, scope: !239)
!252 = !DILocation(line: 307, column: 2, scope: !239)
!253 = !DILocation(line: 308, column: 2, scope: !239)
!254 = !DILocation(line: 309, column: 1, scope: !239)
!255 = distinct !DISubprogram(name: "Inverse_Concatenate_Rotation", scope: !3, file: !3, line: 312, type: !256, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !197, !5, !6}
!258 = !{!259, !260, !261, !262}
!259 = !DILocalVariable(name: "matrix", arg: 1, scope: !255, file: !3, line: 313, type: !197)
!260 = !DILocalVariable(name: "axis", arg: 2, scope: !255, file: !3, line: 314, type: !5)
!261 = !DILocalVariable(name: "angle", arg: 3, scope: !255, file: !3, line: 313, type: !6)
!262 = !DILocalVariable(name: "rotation_matrix", scope: !255, file: !3, line: 316, type: !10)
!263 = !DILocation(line: 0, scope: !255)
!264 = !DILocation(line: 316, column: 2, scope: !255)
!265 = !DILocation(line: 316, column: 8, scope: !255)
!266 = !DILocation(line: 317, column: 44, scope: !255)
!267 = !DILocation(line: 317, column: 2, scope: !255)
!268 = !DILocation(line: 318, column: 2, scope: !255)
!269 = !DILocation(line: 319, column: 1, scope: !255)
!270 = distinct !DISubprogram(name: "Load_Transformation_Matrix", scope: !3, file: !3, line: 263, type: !195, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !271)
!271 = !{!272}
!272 = !DILocalVariable(name: "matrix", arg: 1, scope: !270, file: !3, line: 264, type: !197)
!273 = !DILocation(line: 0, scope: !270)
!274 = !DILocation(line: 266, column: 2, scope: !270)
!275 = !DILocation(line: 267, column: 1, scope: !270)
!276 = distinct !DISubprogram(name: "Compute_Input_Dimensions", scope: !3, file: !3, line: 159, type: !54, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!277 = !{!278, !279, !280, !281}
!278 = !DILocalVariable(name: "x", scope: !276, file: !3, line: 161, type: !5)
!279 = !DILocalVariable(name: "y", scope: !276, file: !3, line: 161, type: !5)
!280 = !DILocalVariable(name: "z", scope: !276, file: !3, line: 161, type: !5)
!281 = !DILocalVariable(name: "in_invvertex", scope: !276, file: !3, line: 162, type: !15)
!282 = !DILocation(line: 162, column: 5, scope: !276)
!283 = !DILocation(line: 162, column: 11, scope: !276)
!284 = !DILocation(line: 164, column: 30, scope: !276)
!285 = !DILocation(line: 165, column: 5, scope: !276)
!286 = !DILocation(line: 165, column: 30, scope: !276)
!287 = !DILocation(line: 166, column: 5, scope: !276)
!288 = !DILocation(line: 166, column: 30, scope: !276)
!289 = !DILocation(line: 168, column: 32, scope: !276)
!290 = !DILocation(line: 168, column: 41, scope: !276)
!291 = !DILocation(line: 168, column: 5, scope: !276)
!292 = !DILocation(line: 168, column: 30, scope: !276)
!293 = !DILocation(line: 169, column: 5, scope: !276)
!294 = !DILocation(line: 169, column: 30, scope: !276)
!295 = !DILocation(line: 170, column: 5, scope: !276)
!296 = !DILocation(line: 170, column: 30, scope: !276)
!297 = !DILocation(line: 172, column: 5, scope: !276)
!298 = !DILocation(line: 172, column: 30, scope: !276)
!299 = !DILocation(line: 173, column: 5, scope: !276)
!300 = !DILocation(line: 173, column: 30, scope: !276)
!301 = !DILocation(line: 174, column: 5, scope: !276)
!302 = !DILocation(line: 174, column: 30, scope: !276)
!303 = !DILocation(line: 176, column: 5, scope: !276)
!304 = !DILocation(line: 176, column: 30, scope: !276)
!305 = !DILocation(line: 177, column: 5, scope: !276)
!306 = !DILocation(line: 177, column: 30, scope: !276)
!307 = !DILocation(line: 178, column: 5, scope: !276)
!308 = !DILocation(line: 178, column: 30, scope: !276)
!309 = !DILocation(line: 180, column: 5, scope: !276)
!310 = !DILocation(line: 180, column: 30, scope: !276)
!311 = !DILocation(line: 181, column: 5, scope: !276)
!312 = !DILocation(line: 181, column: 30, scope: !276)
!313 = !DILocation(line: 182, column: 5, scope: !276)
!314 = !DILocation(line: 182, column: 30, scope: !276)
!315 = !DILocation(line: 184, column: 5, scope: !276)
!316 = !DILocation(line: 184, column: 30, scope: !276)
!317 = !DILocation(line: 185, column: 5, scope: !276)
!318 = !DILocation(line: 185, column: 30, scope: !276)
!319 = !DILocation(line: 186, column: 5, scope: !276)
!320 = !DILocation(line: 186, column: 30, scope: !276)
!321 = !DILocation(line: 188, column: 5, scope: !276)
!322 = !DILocation(line: 188, column: 30, scope: !276)
!323 = !DILocation(line: 189, column: 5, scope: !276)
!324 = !DILocation(line: 189, column: 30, scope: !276)
!325 = !DILocation(line: 190, column: 5, scope: !276)
!326 = !DILocation(line: 190, column: 30, scope: !276)
!327 = !DILocation(line: 192, column: 5, scope: !276)
!328 = !DILocation(line: 192, column: 30, scope: !276)
!329 = !DILocation(line: 193, column: 5, scope: !276)
!330 = !DILocation(line: 193, column: 30, scope: !276)
!331 = !DILocation(line: 194, column: 5, scope: !276)
!332 = !DILocation(line: 194, column: 30, scope: !276)
!333 = !DILocation(line: 0, scope: !276)
!334 = !DILocation(line: 196, column: 5, scope: !335)
!335 = distinct !DILexicalBlock(scope: !276, file: !3, line: 196, column: 5)
!336 = !DILocation(line: 197, column: 9, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 197, column: 9)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 196, column: 25)
!339 = distinct !DILexicalBlock(scope: !335, file: !3, line: 196, column: 5)
!340 = !DILocation(line: 198, column: 13, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !3, line: 198, column: 13)
!342 = distinct !DILexicalBlock(scope: !343, file: !3, line: 197, column: 29)
!343 = distinct !DILexicalBlock(scope: !337, file: !3, line: 197, column: 9)
!344 = !DILocation(line: 199, column: 33, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 198, column: 33)
!346 = distinct !DILexicalBlock(scope: !341, file: !3, line: 198, column: 13)
!347 = !DILocation(line: 200, column: 33, scope: !345)
!348 = !DILocation(line: 201, column: 33, scope: !345)
!349 = !DILocation(line: 202, column: 34, scope: !345)
!350 = !DILocation(line: 203, column: 34, scope: !345)
!351 = !DILocation(line: 204, column: 34, scope: !345)
!352 = !DILocation(line: 199, column: 17, scope: !345)
!353 = distinct !{!353, !340, !354, !71, !72}
!354 = !DILocation(line: 205, column: 13, scope: !341)
!355 = distinct !{!355, !336, !356, !71, !72}
!356 = !DILocation(line: 206, column: 9, scope: !337)
!357 = distinct !{!357, !334, !358, !71, !72}
!358 = !DILocation(line: 207, column: 5, scope: !335)
!359 = !DILocation(line: 208, column: 1, scope: !276)
!360 = distinct !DISubprogram(name: "Compute_Input_Unit_Vector", scope: !3, file: !3, line: 211, type: !54, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!361 = !{!362, !363, !364, !365}
!362 = !DILocalVariable(name: "x", scope: !360, file: !3, line: 213, type: !5)
!363 = !DILocalVariable(name: "y", scope: !360, file: !3, line: 213, type: !5)
!364 = !DILocalVariable(name: "z", scope: !360, file: !3, line: 213, type: !5)
!365 = !DILocalVariable(name: "uin_invvertex", scope: !360, file: !3, line: 214, type: !15)
!366 = !DILocation(line: 214, column: 5, scope: !360)
!367 = !DILocation(line: 214, column: 11, scope: !360)
!368 = !DILocation(line: 216, column: 31, scope: !360)
!369 = !DILocation(line: 217, column: 5, scope: !360)
!370 = !DILocation(line: 217, column: 31, scope: !360)
!371 = !DILocation(line: 218, column: 5, scope: !360)
!372 = !DILocation(line: 218, column: 31, scope: !360)
!373 = !DILocation(line: 220, column: 5, scope: !360)
!374 = !DILocation(line: 220, column: 31, scope: !360)
!375 = !DILocation(line: 221, column: 5, scope: !360)
!376 = !DILocation(line: 221, column: 31, scope: !360)
!377 = !DILocation(line: 222, column: 5, scope: !360)
!378 = !DILocation(line: 222, column: 31, scope: !360)
!379 = !DILocation(line: 224, column: 5, scope: !360)
!380 = !DILocation(line: 224, column: 31, scope: !360)
!381 = !DILocation(line: 225, column: 5, scope: !360)
!382 = !DILocation(line: 225, column: 31, scope: !360)
!383 = !DILocation(line: 226, column: 5, scope: !360)
!384 = !DILocation(line: 226, column: 31, scope: !360)
!385 = !DILocation(line: 228, column: 5, scope: !360)
!386 = !DILocation(line: 228, column: 31, scope: !360)
!387 = !DILocation(line: 229, column: 5, scope: !360)
!388 = !DILocation(line: 229, column: 31, scope: !360)
!389 = !DILocation(line: 230, column: 5, scope: !360)
!390 = !DILocation(line: 230, column: 31, scope: !360)
!391 = !DILocation(line: 232, column: 5, scope: !360)
!392 = !DILocation(line: 232, column: 31, scope: !360)
!393 = !DILocation(line: 233, column: 5, scope: !360)
!394 = !DILocation(line: 233, column: 31, scope: !360)
!395 = !DILocation(line: 234, column: 5, scope: !360)
!396 = !DILocation(line: 234, column: 31, scope: !360)
!397 = !DILocation(line: 236, column: 5, scope: !360)
!398 = !DILocation(line: 236, column: 31, scope: !360)
!399 = !DILocation(line: 237, column: 5, scope: !360)
!400 = !DILocation(line: 237, column: 31, scope: !360)
!401 = !DILocation(line: 238, column: 5, scope: !360)
!402 = !DILocation(line: 238, column: 31, scope: !360)
!403 = !DILocation(line: 240, column: 5, scope: !360)
!404 = !DILocation(line: 240, column: 31, scope: !360)
!405 = !DILocation(line: 241, column: 5, scope: !360)
!406 = !DILocation(line: 241, column: 31, scope: !360)
!407 = !DILocation(line: 242, column: 5, scope: !360)
!408 = !DILocation(line: 242, column: 31, scope: !360)
!409 = !DILocation(line: 244, column: 5, scope: !360)
!410 = !DILocation(line: 244, column: 31, scope: !360)
!411 = !DILocation(line: 245, column: 5, scope: !360)
!412 = !DILocation(line: 245, column: 31, scope: !360)
!413 = !DILocation(line: 246, column: 5, scope: !360)
!414 = !DILocation(line: 246, column: 31, scope: !360)
!415 = !DILocation(line: 0, scope: !360)
!416 = !DILocation(line: 248, column: 5, scope: !417)
!417 = distinct !DILexicalBlock(scope: !360, file: !3, line: 248, column: 5)
!418 = !DILocation(line: 249, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 249, column: 9)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 248, column: 25)
!421 = distinct !DILexicalBlock(scope: !417, file: !3, line: 248, column: 5)
!422 = !DILocation(line: 250, column: 13, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !3, line: 250, column: 13)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 249, column: 29)
!425 = distinct !DILexicalBlock(scope: !419, file: !3, line: 249, column: 9)
!426 = !DILocation(line: 251, column: 33, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 250, column: 33)
!428 = distinct !DILexicalBlock(scope: !423, file: !3, line: 250, column: 13)
!429 = !DILocation(line: 252, column: 33, scope: !427)
!430 = !DILocation(line: 253, column: 33, scope: !427)
!431 = !DILocation(line: 254, column: 34, scope: !427)
!432 = !DILocation(line: 255, column: 34, scope: !427)
!433 = !DILocation(line: 256, column: 34, scope: !427)
!434 = !DILocation(line: 251, column: 17, scope: !427)
!435 = distinct !{!435, !422, !436, !71, !72}
!436 = !DILocation(line: 257, column: 13, scope: !423)
!437 = distinct !{!437, !418, !438, !71, !72}
!438 = !DILocation(line: 258, column: 9, scope: !419)
!439 = distinct !{!439, !416, !440, !71, !72}
!440 = !DILocation(line: 259, column: 5, scope: !417)
!441 = !DILocation(line: 260, column: 1, scope: !360)
!442 = distinct !DISubprogram(name: "Transform_Point", scope: !3, file: !3, line: 270, type: !443, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !446)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !6, !6, !6, !445, !445, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!446 = !{!447, !448, !449, !450, !451, !452}
!447 = !DILocalVariable(name: "xold", arg: 1, scope: !442, file: !3, line: 271, type: !6)
!448 = !DILocalVariable(name: "yold", arg: 2, scope: !442, file: !3, line: 271, type: !6)
!449 = !DILocalVariable(name: "zold", arg: 3, scope: !442, file: !3, line: 271, type: !6)
!450 = !DILocalVariable(name: "xnew", arg: 4, scope: !442, file: !3, line: 272, type: !445)
!451 = !DILocalVariable(name: "ynew", arg: 5, scope: !442, file: !3, line: 272, type: !445)
!452 = !DILocalVariable(name: "znew", arg: 6, scope: !442, file: !3, line: 272, type: !445)
!453 = !DILocation(line: 0, scope: !442)
!454 = !DILocation(line: 275, column: 13, scope: !442)
!455 = !DILocation(line: 276, column: 20, scope: !442)
!456 = !DILocation(line: 276, column: 18, scope: !442)
!457 = !DILocation(line: 275, column: 41, scope: !442)
!458 = !DILocation(line: 277, column: 24, scope: !442)
!459 = !DILocation(line: 276, column: 48, scope: !442)
!460 = !DILocation(line: 278, column: 21, scope: !442)
!461 = !DILocation(line: 277, column: 52, scope: !442)
!462 = !DILocation(line: 274, column: 8, scope: !442)
!463 = !DILocation(line: 281, column: 13, scope: !442)
!464 = !DILocation(line: 282, column: 20, scope: !442)
!465 = !DILocation(line: 282, column: 18, scope: !442)
!466 = !DILocation(line: 281, column: 41, scope: !442)
!467 = !DILocation(line: 283, column: 24, scope: !442)
!468 = !DILocation(line: 282, column: 48, scope: !442)
!469 = !DILocation(line: 284, column: 21, scope: !442)
!470 = !DILocation(line: 283, column: 52, scope: !442)
!471 = !DILocation(line: 280, column: 8, scope: !442)
!472 = !DILocation(line: 287, column: 13, scope: !442)
!473 = !DILocation(line: 288, column: 20, scope: !442)
!474 = !DILocation(line: 288, column: 18, scope: !442)
!475 = !DILocation(line: 287, column: 41, scope: !442)
!476 = !DILocation(line: 289, column: 24, scope: !442)
!477 = !DILocation(line: 288, column: 48, scope: !442)
!478 = !DILocation(line: 290, column: 21, scope: !442)
!479 = !DILocation(line: 289, column: 52, scope: !442)
!480 = !DILocation(line: 286, column: 8, scope: !442)
!481 = !DILocation(line: 291, column: 1, scope: !442)
!482 = distinct !DISubprogram(name: "Copy_Matrix", scope: !3, file: !3, line: 417, type: !483, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !197, !197}
!485 = !{!486, !487, !488, !489}
!486 = !DILocalVariable(name: "input_matrix", arg: 1, scope: !482, file: !3, line: 418, type: !197)
!487 = !DILocalVariable(name: "output_matrix", arg: 2, scope: !482, file: !3, line: 418, type: !197)
!488 = !DILocalVariable(name: "i", scope: !482, file: !3, line: 420, type: !5)
!489 = !DILocalVariable(name: "j", scope: !482, file: !3, line: 420, type: !5)
!490 = !DILocation(line: 0, scope: !482)
!491 = !DILocation(line: 421, column: 2, scope: !492)
!492 = distinct !DILexicalBlock(scope: !482, file: !3, line: 421, column: 2)
!493 = !DILocation(line: 422, column: 3, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !3, line: 422, column: 3)
!495 = distinct !DILexicalBlock(scope: !496, file: !3, line: 421, column: 22)
!496 = distinct !DILexicalBlock(scope: !492, file: !3, line: 421, column: 2)
!497 = !DILocation(line: 423, column: 26, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 422, column: 23)
!499 = distinct !DILexicalBlock(scope: !494, file: !3, line: 422, column: 3)
!500 = !DILocation(line: 423, column: 4, scope: !498)
!501 = !DILocation(line: 423, column: 24, scope: !498)
!502 = !DILocation(line: 422, column: 19, scope: !499)
!503 = !DILocation(line: 422, column: 14, scope: !499)
!504 = distinct !{!504, !493, !505, !71, !72}
!505 = !DILocation(line: 424, column: 3, scope: !494)
!506 = !DILocation(line: 421, column: 18, scope: !496)
!507 = !DILocation(line: 421, column: 13, scope: !496)
!508 = distinct !{!508, !491, !509, !71, !72}
!509 = !DILocation(line: 425, column: 2, scope: !492)
!510 = !DILocation(line: 426, column: 1, scope: !482)
!511 = distinct !DISubprogram(name: "Load_Translation_Matrix", scope: !3, file: !3, line: 334, type: !222, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!512 = !{!513, !514, !515, !516}
!513 = !DILocalVariable(name: "matrix", arg: 1, scope: !511, file: !3, line: 335, type: !197)
!514 = !DILocalVariable(name: "xoffset", arg: 2, scope: !511, file: !3, line: 335, type: !6)
!515 = !DILocalVariable(name: "yoffset", arg: 3, scope: !511, file: !3, line: 335, type: !6)
!516 = !DILocalVariable(name: "zoffset", arg: 4, scope: !511, file: !3, line: 335, type: !6)
!517 = !DILocation(line: 0, scope: !511)
!518 = !DILocation(line: 337, column: 2, scope: !511)
!519 = !DILocation(line: 338, column: 2, scope: !511)
!520 = !DILocation(line: 338, column: 15, scope: !511)
!521 = !DILocation(line: 339, column: 2, scope: !511)
!522 = !DILocation(line: 339, column: 15, scope: !511)
!523 = !DILocation(line: 340, column: 2, scope: !511)
!524 = !DILocation(line: 340, column: 15, scope: !511)
!525 = !DILocation(line: 341, column: 1, scope: !511)
!526 = distinct !DISubprogram(name: "Inverse_Concatenate_Transform", scope: !3, file: !3, line: 388, type: !483, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!527 = !{!528, !529, !530}
!528 = !DILocalVariable(name: "composite_matrix", arg: 1, scope: !526, file: !3, line: 389, type: !197)
!529 = !DILocalVariable(name: "transformation_matrix", arg: 2, scope: !526, file: !3, line: 389, type: !197)
!530 = !DILocalVariable(name: "temp_matrix", scope: !526, file: !3, line: 391, type: !10)
!531 = !DILocation(line: 0, scope: !526)
!532 = !DILocation(line: 391, column: 2, scope: !526)
!533 = !DILocation(line: 391, column: 8, scope: !526)
!534 = !DILocation(line: 392, column: 2, scope: !526)
!535 = !DILocation(line: 393, column: 2, scope: !526)
!536 = !DILocation(line: 394, column: 1, scope: !526)
!537 = distinct !DISubprogram(name: "Load_Scaling_Matrix", scope: !3, file: !3, line: 344, type: !222, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !538)
!538 = !{!539, !540, !541, !542}
!539 = !DILocalVariable(name: "matrix", arg: 1, scope: !537, file: !3, line: 345, type: !197)
!540 = !DILocalVariable(name: "xscale", arg: 2, scope: !537, file: !3, line: 345, type: !6)
!541 = !DILocalVariable(name: "yscale", arg: 3, scope: !537, file: !3, line: 345, type: !6)
!542 = !DILocalVariable(name: "zscale", arg: 4, scope: !537, file: !3, line: 345, type: !6)
!543 = !DILocation(line: 0, scope: !537)
!544 = !DILocation(line: 347, column: 2, scope: !537)
!545 = !DILocation(line: 348, column: 15, scope: !537)
!546 = !DILocation(line: 349, column: 2, scope: !537)
!547 = !DILocation(line: 349, column: 15, scope: !537)
!548 = !DILocation(line: 350, column: 2, scope: !537)
!549 = !DILocation(line: 350, column: 15, scope: !537)
!550 = !DILocation(line: 351, column: 1, scope: !537)
!551 = distinct !DISubprogram(name: "Load_Rotation_Matrix", scope: !3, file: !3, line: 354, type: !256, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !552)
!552 = !{!553, !554, !555}
!553 = !DILocalVariable(name: "matrix", arg: 1, scope: !551, file: !3, line: 355, type: !197)
!554 = !DILocalVariable(name: "axis", arg: 2, scope: !551, file: !3, line: 356, type: !5)
!555 = !DILocalVariable(name: "angle", arg: 3, scope: !551, file: !3, line: 355, type: !6)
!556 = !DILocation(line: 0, scope: !551)
!557 = !DILocation(line: 358, column: 2, scope: !551)
!558 = !DILocation(line: 359, column: 6, scope: !551)
!559 = !DILocation(line: 360, column: 22, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 359, column: 21)
!561 = distinct !DILexicalBlock(scope: !551, file: !3, line: 359, column: 6)
!562 = !DILocation(line: 360, column: 27, scope: !560)
!563 = !DILocation(line: 360, column: 33, scope: !560)
!564 = !DILocation(line: 360, column: 18, scope: !560)
!565 = !DILocation(line: 360, column: 3, scope: !560)
!566 = !DILocation(line: 360, column: 16, scope: !560)
!567 = !DILocation(line: 361, column: 18, scope: !560)
!568 = !DILocation(line: 361, column: 3, scope: !560)
!569 = !DILocation(line: 361, column: 16, scope: !560)
!570 = !DILocation(line: 362, column: 19, scope: !560)
!571 = !DILocation(line: 362, column: 18, scope: !560)
!572 = !DILocation(line: 362, column: 3, scope: !560)
!573 = !DILocation(line: 362, column: 16, scope: !560)
!574 = !DILocation(line: 363, column: 18, scope: !560)
!575 = !DILocation(line: 363, column: 3, scope: !560)
!576 = !DILocation(line: 363, column: 16, scope: !560)
!577 = !DILocation(line: 364, column: 2, scope: !560)
!578 = !DILocation(line: 366, column: 22, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 365, column: 26)
!580 = distinct !DILexicalBlock(scope: !561, file: !3, line: 365, column: 11)
!581 = !DILocation(line: 366, column: 27, scope: !579)
!582 = !DILocation(line: 366, column: 33, scope: !579)
!583 = !DILocation(line: 366, column: 18, scope: !579)
!584 = !DILocation(line: 366, column: 16, scope: !579)
!585 = !DILocation(line: 367, column: 19, scope: !579)
!586 = !DILocation(line: 367, column: 18, scope: !579)
!587 = !DILocation(line: 367, column: 3, scope: !579)
!588 = !DILocation(line: 367, column: 16, scope: !579)
!589 = !DILocation(line: 368, column: 18, scope: !579)
!590 = !DILocation(line: 368, column: 3, scope: !579)
!591 = !DILocation(line: 368, column: 16, scope: !579)
!592 = !DILocation(line: 369, column: 18, scope: !579)
!593 = !DILocation(line: 369, column: 3, scope: !579)
!594 = !DILocation(line: 369, column: 16, scope: !579)
!595 = !DILocation(line: 370, column: 2, scope: !579)
!596 = !DILocation(line: 372, column: 22, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !3, line: 371, column: 26)
!598 = distinct !DILexicalBlock(scope: !580, file: !3, line: 371, column: 11)
!599 = !DILocation(line: 372, column: 27, scope: !597)
!600 = !DILocation(line: 372, column: 33, scope: !597)
!601 = !DILocation(line: 372, column: 18, scope: !597)
!602 = !DILocation(line: 372, column: 16, scope: !597)
!603 = !DILocation(line: 373, column: 18, scope: !597)
!604 = !DILocation(line: 373, column: 3, scope: !597)
!605 = !DILocation(line: 373, column: 16, scope: !597)
!606 = !DILocation(line: 374, column: 19, scope: !597)
!607 = !DILocation(line: 374, column: 18, scope: !597)
!608 = !DILocation(line: 374, column: 3, scope: !597)
!609 = !DILocation(line: 374, column: 16, scope: !597)
!610 = !DILocation(line: 375, column: 18, scope: !597)
!611 = !DILocation(line: 375, column: 3, scope: !597)
!612 = !DILocation(line: 375, column: 16, scope: !597)
!613 = !DILocation(line: 376, column: 2, scope: !597)
!614 = !DILocation(line: 377, column: 1, scope: !551)
!615 = distinct !DISubprogram(name: "Concatenate_Transform", scope: !3, file: !3, line: 380, type: !483, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!616 = !{!617, !618, !619}
!617 = !DILocalVariable(name: "composite_matrix", arg: 1, scope: !615, file: !3, line: 381, type: !197)
!618 = !DILocalVariable(name: "transformation_matrix", arg: 2, scope: !615, file: !3, line: 381, type: !197)
!619 = !DILocalVariable(name: "temp_matrix", scope: !615, file: !3, line: 383, type: !10)
!620 = !DILocation(line: 0, scope: !615)
!621 = !DILocation(line: 383, column: 2, scope: !615)
!622 = !DILocation(line: 383, column: 8, scope: !615)
!623 = !DILocation(line: 384, column: 2, scope: !615)
!624 = !DILocation(line: 385, column: 2, scope: !615)
!625 = !DILocation(line: 386, column: 1, scope: !615)
!626 = distinct !DISubprogram(name: "Multiply_Matrices", scope: !3, file: !3, line: 397, type: !627, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !197, !197, !197}
!629 = !{!630, !631, !632, !633, !634}
!630 = !DILocalVariable(name: "input_matrix1", arg: 1, scope: !626, file: !3, line: 398, type: !197)
!631 = !DILocalVariable(name: "input_matrix2", arg: 2, scope: !626, file: !3, line: 398, type: !197)
!632 = !DILocalVariable(name: "output_matrix", arg: 3, scope: !626, file: !3, line: 398, type: !197)
!633 = !DILocalVariable(name: "i", scope: !626, file: !3, line: 400, type: !5)
!634 = !DILocalVariable(name: "j", scope: !626, file: !3, line: 400, type: !5)
!635 = !DILocation(line: 0, scope: !626)
!636 = !DILocation(line: 401, column: 2, scope: !637)
!637 = distinct !DILexicalBlock(scope: !626, file: !3, line: 401, column: 2)
!638 = !DILocation(line: 402, column: 3, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 402, column: 3)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 401, column: 22)
!641 = distinct !DILexicalBlock(scope: !637, file: !3, line: 401, column: 2)
!642 = !DILocation(line: 404, column: 8, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !3, line: 402, column: 23)
!644 = distinct !DILexicalBlock(scope: !639, file: !3, line: 402, column: 3)
!645 = !DILocation(line: 405, column: 8, scope: !643)
!646 = !DILocation(line: 406, column: 8, scope: !643)
!647 = !DILocation(line: 407, column: 8, scope: !643)
!648 = !DILocation(line: 406, column: 28, scope: !643)
!649 = !DILocation(line: 405, column: 28, scope: !643)
!650 = !DILocation(line: 408, column: 8, scope: !643)
!651 = !DILocation(line: 409, column: 8, scope: !643)
!652 = !DILocation(line: 407, column: 28, scope: !643)
!653 = !DILocation(line: 410, column: 8, scope: !643)
!654 = !DILocation(line: 411, column: 8, scope: !643)
!655 = !DILocation(line: 409, column: 28, scope: !643)
!656 = !DILocation(line: 403, column: 4, scope: !643)
!657 = !DILocation(line: 403, column: 24, scope: !643)
!658 = !DILocation(line: 402, column: 19, scope: !644)
!659 = !DILocation(line: 402, column: 14, scope: !644)
!660 = distinct !{!660, !638, !661, !71, !72}
!661 = !DILocation(line: 412, column: 3, scope: !639)
!662 = !DILocation(line: 401, column: 18, scope: !641)
!663 = !DILocation(line: 401, column: 13, scope: !641)
!664 = distinct !{!664, !636, !665, !71, !72}
!665 = !DILocation(line: 413, column: 2, scope: !637)
!666 = !DILocation(line: 414, column: 1, scope: !626)
