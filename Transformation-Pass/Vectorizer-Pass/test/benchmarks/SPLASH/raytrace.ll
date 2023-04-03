; ModuleID = 'raytrace.c'
source_filename = "raytrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out_invvertex = external local_unnamed_addr global [2 x [2 x [2 x [3 x float]]]], align 16
@invjacobian = external local_unnamed_addr global [3 x [3 x float]], align 16
@image_zlen = external local_unnamed_addr global i64, align 8
@opc_len = external local_unnamed_addr global [3 x i16], align 2
@pyr_highest_level = external local_unnamed_addr global i64, align 8
@pyr_levels = external local_unnamed_addr global i16, align 2
@pyr_len = external local_unnamed_addr global [10 x [3 x i16]], align 16
@pyr_address = external local_unnamed_addr global [10 x ptr], align 16
@pyr_lowest_level = external local_unnamed_addr global i64, align 8
@invinvjacobian = external local_unnamed_addr global [3 x [3 x float]], align 16
@pyr_voxlen = external local_unnamed_addr global [10 x [3 x i16]], align 16
@in_max = external local_unnamed_addr global [3 x float], align 4
@opc_address = external local_unnamed_addr global ptr, align 8
@norm_address = external local_unnamed_addr global ptr, align 8
@norm_len = external local_unnamed_addr global [3 x i16], align 2
@shd_address = external local_unnamed_addr global ptr, align 8
@opc_xlen = external local_unnamed_addr global i64, align 8
@norm_xlen = external local_unnamed_addr global i64, align 8
@opc_xylen = external local_unnamed_addr global i64, align 8
@norm_xylen = external local_unnamed_addr global i64, align 8
@depth_cueing = external local_unnamed_addr global [4096 x float], align 16
@opacity_cutoff = external local_unnamed_addr global float, align 4
@opacity_epsilon = external local_unnamed_addr global float, align 4
@num_nodes = external local_unnamed_addr global i64, align 8
@obslight = external local_unnamed_addr global [3 x float], align 4
@obshighlight = external local_unnamed_addr global [3 x float], align 4
@specular_exponent = external local_unnamed_addr global float, align 4
@ambient_color = external local_unnamed_addr global float, align 4
@diffuse_color = external local_unnamed_addr global float, align 4
@specular_color = external local_unnamed_addr global float, align 4

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Trace_Ray(double noundef %0, double noundef %1, ptr nocapture noundef %pixel_address) local_unnamed_addr #0 !dbg !13 {
entry:
  %ray = alloca [2 x [3 x float]], align 16
  %foutx = fptrunc double %0 to float
  %fouty = fptrunc double %1 to float
  call void @llvm.dbg.value(metadata float %foutx, metadata !20, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %fouty, metadata !21, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata ptr %pixel_address, metadata !22, metadata !DIExpression()), !dbg !99
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ray) #6, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %ray, metadata !23, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !75, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !76, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 0, metadata !41, metadata !DIExpression()), !dbg !99
  %2 = load i64, ptr @image_zlen, align 8
  %conv = sitofp i64 %2 to float
  call void @llvm.dbg.value(metadata i64 0, metadata !41, metadata !DIExpression()), !dbg !99
  br label %for.body, !dbg !102

for.body:                                         ; preds = %entry, %for.body
  %i.01171 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.01171, metadata !41, metadata !DIExpression()), !dbg !99
  %arrayidx = getelementptr inbounds [3 x float], ptr @out_invvertex, i64 0, i64 %i.01171, !dbg !104
  %3 = load float, ptr %arrayidx, align 4, !dbg !104
  %arrayidx2 = getelementptr inbounds [3 x float], ptr @invjacobian, i64 0, i64 %i.01171, !dbg !107
  %4 = load float, ptr %arrayidx2, align 4, !dbg !107
  %5 = tail call float @llvm.fmuladd.f32(float %4, float %foutx, float %3), !dbg !108
  %arrayidx3 = getelementptr inbounds [3 x [3 x float]], ptr @invjacobian, i64 0, i64 1, i64 %i.01171, !dbg !109
  %6 = load float, ptr %arrayidx3, align 4, !dbg !109
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %fouty, float %5), !dbg !110
  %arrayidx5 = getelementptr inbounds [3 x float], ptr %ray, i64 0, i64 %i.01171, !dbg !111
  store float %7, ptr %arrayidx5, align 4, !dbg !112
  %arrayidx8 = getelementptr inbounds [3 x [3 x float]], ptr @invjacobian, i64 0, i64 2, i64 %i.01171, !dbg !113
  %8 = load float, ptr %arrayidx8, align 4, !dbg !113
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %conv, float %7), !dbg !114
  %arrayidx10 = getelementptr inbounds [2 x [3 x float]], ptr %ray, i64 0, i64 1, i64 %i.01171, !dbg !115
  store float %9, ptr %arrayidx10, align 4, !dbg !116
  %inc = add nuw nsw i64 %i.01171, 1, !dbg !117
  call void @llvm.dbg.value(metadata i64 %inc, metadata !41, metadata !DIExpression()), !dbg !99
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !118
  br i1 %exitcond.not, label %for.body14, label %for.body, !dbg !102, !llvm.loop !119

for.body14:                                       ; preds = %for.body, %for.inc122
  %ray_min.01175 = phi float [ %ray_min.1, %for.inc122 ], [ 0.000000e+00, %for.body ]
  %ray_max.01174 = phi float [ %ray_max.1, %for.inc122 ], [ 1.000000e+00, %for.body ]
  %i.11172 = phi i64 [ %inc123, %for.inc122 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata float %ray_min.01175, metadata !30, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %ray_max.01174, metadata !31, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %i.11172, metadata !41, metadata !DIExpression()), !dbg !99
  %arrayidx16 = getelementptr inbounds [2 x [3 x float]], ptr %ray, i64 0, i64 1, i64 %i.11172, !dbg !123
  %10 = load float, ptr %arrayidx16, align 4, !dbg !123
  %arrayidx18 = getelementptr inbounds [3 x float], ptr %ray, i64 0, i64 %i.11172, !dbg !123
  %11 = load float, ptr %arrayidx18, align 4, !dbg !123
  %sub = fsub float %10, %11, !dbg !123
  %cmp19 = fcmp ogt float %sub, 0.000000e+00, !dbg !123
  br i1 %cmp19, label %cond.end, label %cond.false, !dbg !123

cond.false:                                       ; preds = %for.body14
  %fneg = fneg float %sub, !dbg !123
  br label %cond.end, !dbg !123

cond.end:                                         ; preds = %for.body14, %cond.false
  %cond = phi float [ %fneg, %cond.false ], [ %sub, %for.body14 ], !dbg !123
  %conv31 = fpext float %cond to double, !dbg !123
  %cmp32 = fcmp olt double %conv31, 1.000000e-05, !dbg !128
  br i1 %cmp32, label %if.then, label %if.end, !dbg !129

if.then:                                          ; preds = %cond.end
  %cmp37 = fcmp olt float %11, 0.000000e+00, !dbg !130
  %cmp42 = fcmp olt float %10, 0.000000e+00
  %or.cond1165 = select i1 %cmp37, i1 %cmp42, i1 false, !dbg !133
  br i1 %or.cond1165, label %cleanup, label %lor.lhs.false, !dbg !133

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx46 = getelementptr inbounds [3 x i16], ptr @opc_len, i64 0, i64 %i.11172, !dbg !134
  %12 = load i16, ptr %arrayidx46, align 2, !dbg !134
  %conv47 = sext i16 %12 to i32, !dbg !134
  %sub48 = add nsw i32 %conv47, -1, !dbg !135
  %conv49 = sitofp i32 %sub48 to float, !dbg !136
  %cmp50 = fcmp ogt float %11, %conv49, !dbg !137
  %cmp59 = fcmp ogt float %10, %conv49
  %or.cond1166 = select i1 %cmp50, i1 %cmp59, i1 false, !dbg !138
  br i1 %or.cond1166, label %cleanup, label %for.inc122, !dbg !138

if.end:                                           ; preds = %cond.end
  %conv64 = fpext float %11 to double, !dbg !139
  %sub65 = fsub double 0.000000e+00, %conv64, !dbg !140
  %conv71 = fpext float %sub to double, !dbg !141
  %div = fdiv double %sub65, %conv71, !dbg !142
  %conv72 = fptrunc double %div to float, !dbg !143
  call void @llvm.dbg.value(metadata float %conv72, metadata !28, metadata !DIExpression()), !dbg !99
  %arrayidx73 = getelementptr inbounds [3 x i16], ptr @opc_len, i64 0, i64 %i.11172, !dbg !144
  %13 = load i16, ptr %arrayidx73, align 2, !dbg !144
  %conv74 = sext i16 %13 to i32, !dbg !144
  %sub75 = add nsw i32 %conv74, -1, !dbg !145
  %conv76 = sitofp i32 %sub75 to float, !dbg !146
  %sub79 = fsub float %conv76, %11, !dbg !147
  %div85 = fdiv float %sub79, %sub, !dbg !148
  call void @llvm.dbg.value(metadata float %div85, metadata !29, metadata !DIExpression()), !dbg !99
  %cmp86 = fcmp ogt float %div85, %conv72, !dbg !149
  %conv72.div85 = select i1 %cmp86, float %conv72, float %div85, !dbg !149
  %cmp92 = fcmp ogt float %conv72.div85, %ray_min.01175, !dbg !149
  br i1 %cmp92, label %cond.true94, label %cond.end102, !dbg !149

cond.true94:                                      ; preds = %if.end
  br label %cond.end102, !dbg !149

cond.end102:                                      ; preds = %if.end, %cond.true94
  %cond103 = phi float [ %conv72.div85, %cond.true94 ], [ %ray_min.01175, %if.end ], !dbg !149
  call void @llvm.dbg.value(metadata float %cond103, metadata !30, metadata !DIExpression()), !dbg !99
  %cmp104 = fcmp olt float %div85, %conv72, !dbg !150
  %conv72.div851163 = select i1 %cmp104, float %conv72, float %div85, !dbg !150
  %cmp110 = fcmp olt float %conv72.div851163, %ray_max.01174, !dbg !150
  br i1 %cmp110, label %cond.true112, label %for.inc122, !dbg !150

cond.true112:                                     ; preds = %cond.end102
  br label %for.inc122, !dbg !150

for.inc122:                                       ; preds = %cond.true112, %cond.end102, %lor.lhs.false
  %ray_max.1 = phi float [ %ray_max.01174, %lor.lhs.false ], [ %conv72.div851163, %cond.true112 ], [ %ray_max.01174, %cond.end102 ], !dbg !99
  %ray_min.1 = phi float [ %ray_min.01175, %lor.lhs.false ], [ %cond103, %cond.true112 ], [ %cond103, %cond.end102 ], !dbg !99
  call void @llvm.dbg.value(metadata float %ray_min.1, metadata !30, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %ray_max.1, metadata !31, metadata !DIExpression()), !dbg !99
  %inc123 = add nuw nsw i64 %i.11172, 1, !dbg !151
  call void @llvm.dbg.value(metadata i64 %inc123, metadata !41, metadata !DIExpression()), !dbg !99
  %exitcond1192.not = icmp eq i64 %inc123, 3, !dbg !152
  br i1 %exitcond1192.not, label %for.end124, label %for.body14, !dbg !153, !llvm.loop !154

for.end124:                                       ; preds = %for.inc122
  %mul = fmul float %ray_min.1, %conv, !dbg !156
  %conv128 = fptosi float %mul to i64, !dbg !156
  %conv129 = sitofp i64 %conv128 to float, !dbg !156
  %cmp130 = fcmp oeq float %mul, %conv129, !dbg !156
  br i1 %cmp130, label %cond.end140, label %cond.false136, !dbg !156

cond.false136:                                    ; preds = %for.end124
  %add = add nsw i64 %conv128, 1, !dbg !156
  br label %cond.end140, !dbg !156

cond.end140:                                      ; preds = %for.end124, %cond.false136
  %cond141 = phi i64 [ %add, %cond.false136 ], [ %conv128, %for.end124 ], !dbg !156
  call void @llvm.dbg.value(metadata i64 %cond141, metadata !32, metadata !DIExpression()), !dbg !99
  %mul143 = fmul float %ray_max.1, %conv, !dbg !157
  %conv144 = fptosi float %mul143 to i64, !dbg !157
  call void @llvm.dbg.value(metadata i64 %conv144, metadata !33, metadata !DIExpression()), !dbg !99
  %cmp145 = icmp sgt i64 %cond141, %conv144, !dbg !158
  br i1 %cmp145, label %cleanup, label %if.end148, !dbg !160

if.end148:                                        ; preds = %cond.end140
  %conv149 = sitofp i64 %cond141 to float, !dbg !161
  call void @llvm.dbg.value(metadata float %conv149, metadata !48, metadata !DIExpression()), !dbg !99
  %14 = load float, ptr %ray, align 16, !dbg !162
  %15 = load float, ptr getelementptr inbounds ([3 x [3 x float]], ptr @invjacobian, i64 0, i64 2), align 8, !dbg !163
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %conv149, float %14), !dbg !164
  call void @llvm.dbg.value(metadata float %16, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  %arrayidx155 = getelementptr inbounds [3 x float], ptr %ray, i64 0, i64 1, !dbg !165
  %17 = load float, ptr %arrayidx155, align 4, !dbg !165
  %18 = load float, ptr getelementptr inbounds ([3 x [3 x float]], ptr @invjacobian, i64 0, i64 2, i64 1), align 4, !dbg !166
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %conv149, float %17), !dbg !167
  call void @llvm.dbg.value(metadata float %19, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  %arrayidx159 = getelementptr inbounds [3 x float], ptr %ray, i64 0, i64 2, !dbg !168
  %20 = load float, ptr %arrayidx159, align 8, !dbg !168
  %21 = load float, ptr getelementptr inbounds ([3 x [3 x float]], ptr @invjacobian, i64 0, i64 2, i64 2), align 16, !dbg !169
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %conv149, float %20), !dbg !170
  call void @llvm.dbg.value(metadata float %22, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !99
  %cmp162 = fcmp ogt float %15, 0.000000e+00, !dbg !171
  %conv166 = fpext float %16 to double, !dbg !171
  %. = select i1 %cmp162, double 1.000000e-05, double -1.000000e-05, !dbg !171
  %sub172 = fadd double %., %conv166, !dbg !171
  %cond175 = fptosi double %sub172 to i64, !dbg !171
  call void @llvm.dbg.value(metadata i64 %cond175, metadata !56, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !99
  %cmp177 = fcmp ogt float %18, 0.000000e+00, !dbg !172
  br i1 %cmp177, label %cond.end189, label %cond.false184, !dbg !172

cond.false184:                                    ; preds = %if.end148
  br label %cond.end189, !dbg !172

cond.end189:                                      ; preds = %if.end148, %cond.false184
  %.sink1195 = phi double [ -1.000000e-05, %cond.false184 ], [ 1.000000e-05, %if.end148 ]
  %conv186 = fpext float %19 to double, !dbg !172
  %sub187 = fadd double %.sink1195, %conv186, !dbg !172
  %cond190 = fptosi double %sub187 to i64, !dbg !172
  call void @llvm.dbg.value(metadata i64 %cond190, metadata !56, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !99
  %cmp192 = fcmp ogt float %21, 0.000000e+00, !dbg !173
  %.1200 = select i1 %cmp192, double 1.000000e-05, double -1.000000e-05, !dbg !173
  %conv201 = fpext float %22 to double, !dbg !173
  %sub202 = fadd double %.1200, %conv201, !dbg !173
  %cond205 = fptosi double %sub202 to i64, !dbg !173
  call void @llvm.dbg.value(metadata i64 %cond205, metadata !56, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !99
  %23 = load i64, ptr @pyr_highest_level, align 8, !dbg !174
  %24 = load i16, ptr @pyr_levels, align 2, !dbg !174
  %conv207 = sext i16 %24 to i64, !dbg !174
  %sub208 = add nsw i64 %conv207, -1, !dbg !174
  %25 = tail call i64 @llvm.smin.i64(i64 %23, i64 %sub208), !dbg !174
  call void @llvm.dbg.value(metadata i64 %25, metadata !50, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %25, metadata !51, metadata !DIExpression()), !dbg !99
  %26 = load i64, ptr @pyr_lowest_level, align 8
  %conv246 = fpext float %15 to double
  %cmp247 = fcmp ogt double %conv246, 1.000000e-05
  %conv311 = fpext float %18 to double
  %cmp312 = fcmp ogt double %conv311, 1.000000e-05
  %conv376 = fpext float %21 to double
  %cmp377 = fcmp ogt double %conv376, 1.000000e-05
  %cmp273 = fcmp olt double %conv246, -1.000000e-05
  %27 = load float, ptr getelementptr inbounds ([3 x [3 x float]], ptr @invinvjacobian, i64 0, i64 2), align 8
  %cmp338 = fcmp olt double %conv311, -1.000000e-05
  %28 = load float, ptr getelementptr inbounds ([3 x [3 x float]], ptr @invinvjacobian, i64 0, i64 2, i64 1), align 4
  %cmp403 = fcmp olt double %conv376, -1.000000e-05
  %29 = load float, ptr getelementptr inbounds ([3 x [3 x float]], ptr @invinvjacobian, i64 0, i64 2, i64 2), align 16
  %30 = load i16, ptr getelementptr inbounds ([10 x [3 x i16]], ptr @pyr_len, i64 0, i64 0, i64 1), align 2
  %conv599 = sext i16 %30 to i64
  %31 = load i16, ptr @pyr_len, align 16
  %conv602 = sext i16 %31 to i64
  %32 = load ptr, ptr @pyr_address, align 16
  %33 = load float, ptr @in_max, align 4
  %34 = load float, ptr getelementptr inbounds ([3 x float], ptr @in_max, i64 0, i64 1), align 4
  %35 = load float, ptr getelementptr inbounds ([3 x float], ptr @in_max, i64 0, i64 2), align 4
  %36 = load ptr, ptr @opc_address, align 8
  %37 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @opc_len, i64 0, i64 1), align 2
  %conv659 = sext i16 %37 to i64
  %38 = load i16, ptr @opc_len, align 2
  %conv662 = sext i16 %38 to i64
  %39 = load ptr, ptr @norm_address, align 8
  %40 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @norm_len, i64 0, i64 1), align 2
  %conv666 = sext i16 %40 to i64
  %41 = load i16, ptr @norm_len, align 2
  %conv669 = sext i16 %41 to i64
  %42 = load ptr, ptr @shd_address, align 8
  %43 = load i64, ptr @opc_xlen, align 8
  %44 = load i64, ptr @norm_xlen, align 8
  %45 = load i64, ptr @opc_xylen, align 8
  %46 = load i64, ptr @norm_xylen, align 8
  %47 = load float, ptr @opacity_cutoff, align 4
  %conv445 = sitofp i64 %conv144 to float
  %.pre = fptosi float %34 to i64
  %.1201 = select i1 %cmp162, double 1.000000e-05, double -1.000000e-05
  %.1202 = select i1 %cmp192, double 1.000000e-05, double -1.000000e-05
  br label %while.cond.outer, !dbg !175

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %cond.end189
  %ivoxel.sroa.0.0.ph = phi i64 [ %cond175, %cond.end189 ], [ %cond472, %while.cond.outer.backedge ]
  %ivoxel.sroa.6.0.ph = phi i64 [ %cond190, %cond.end189 ], [ %cond487, %while.cond.outer.backedge ]
  %ivoxel.sroa.10.0.ph = phi i64 [ %cond205, %cond.end189 ], [ %cond502, %while.cond.outer.backedge ]
  %voxel.sroa.0.0.ph = phi float [ %16, %cond.end189 ], [ %59, %while.cond.outer.backedge ]
  %voxel.sroa.14.0.ph = phi float [ %19, %cond.end189 ], [ %60, %while.cond.outer.backedge ]
  %voxel.sroa.26.0.ph = phi float [ %22, %cond.end189 ], [ %61, %while.cond.outer.backedge ]
  %level.0.ph = phi i64 [ %25, %cond.end189 ], [ %level.0.ph.be, %while.cond.outer.backedge ]
  %box_zmin.0.ph = phi float [ %conv149, %cond.end189 ], [ %add441, %while.cond.outer.backedge ]
  %ray_color.0.ph = phi float [ 0.000000e+00, %cond.end189 ], [ %ray_color.1, %while.cond.outer.backedge ]
  %ray_opacity.0.ph = phi float [ 0.000000e+00, %cond.end189 ], [ %ray_opacity.1, %while.cond.outer.backedge ]
  br label %while.cond, !dbg !175

while.cond:                                       ; preds = %while.cond, %while.cond.outer
  %level.0 = phi i64 [ %dec, %while.cond ], [ %level.0.ph, %while.cond.outer ], !dbg !99
  call void @llvm.dbg.value(metadata float %ray_opacity.0.ph, metadata !76, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %ray_color.0.ph, metadata !75, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %box_zmin.0.ph, metadata !48, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %level.0, metadata !51, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %voxel.sroa.26.0.ph, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !99
  call void @llvm.dbg.value(metadata float %voxel.sroa.14.0.ph, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  call void @llvm.dbg.value(metadata float %voxel.sroa.0.0.ph, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  call void @llvm.dbg.value(metadata i64 %ivoxel.sroa.10.0.ph, metadata !56, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !99
  call void @llvm.dbg.value(metadata i64 %ivoxel.sroa.6.0.ph, metadata !56, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !99
  call void @llvm.dbg.value(metadata i64 %ivoxel.sroa.0.0.ph, metadata !56, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !99
  %shr = ashr i64 %ivoxel.sroa.10.0.ph, %level.0, !dbg !176
  %arrayidx220 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %level.0, !dbg !176
  %arrayidx221 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %level.0, i64 1, !dbg !176
  %48 = load i16, ptr %arrayidx221, align 2, !dbg !176
  %conv222 = sext i16 %48 to i64, !dbg !176
  %mul223 = mul nsw i64 %shr, %conv222, !dbg !176
  %shr225 = ashr i64 %ivoxel.sroa.6.0.ph, %level.0, !dbg !176
  %add226 = add nsw i64 %mul223, %shr225, !dbg !176
  %49 = load i16, ptr %arrayidx220, align 2, !dbg !176
  %conv229 = sext i16 %49 to i64, !dbg !176
  %mul230 = mul nsw i64 %add226, %conv229, !dbg !176
  %shr232 = ashr i64 %ivoxel.sroa.0.0.ph, %level.0, !dbg !176
  %add233 = add nsw i64 %mul230, %shr232, !dbg !176
  call void @llvm.dbg.value(metadata i64 %add233, metadata !86, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %add233, metadata !87, metadata !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value)), !dbg !99
  %arrayidx234 = getelementptr inbounds [10 x ptr], ptr @pyr_address, i64 0, i64 %level.0, !dbg !176
  %50 = load ptr, ptr %arrayidx234, align 8, !dbg !176
  %shr235 = ashr i64 %add233, 3, !dbg !176
  %add.ptr = getelementptr inbounds i8, ptr %50, i64 %shr235, !dbg !176
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !88, metadata !DIExpression()), !dbg !99
  %51 = load i8, ptr %add.ptr, align 1, !dbg !176
  %conv236 = zext i8 %51 to i16, !dbg !176
  %52 = trunc i64 %add233 to i16, !dbg !176
  %sh_prom = and i16 %52, 7, !dbg !176
  %shr237 = lshr i16 %conv236, %sh_prom, !dbg !176
  %and238 = and i16 %shr237, 1, !dbg !176
  call void @llvm.dbg.value(metadata i16 %and238, metadata !59, metadata !DIExpression()), !dbg !99
  %tobool.not = icmp ne i16 %and238, 0, !dbg !177
  %cmp242 = icmp sgt i64 %level.0, %26
  %or.cond = select i1 %tobool.not, i1 %cmp242, i1 false, !dbg !179
  %dec = add nsw i64 %level.0, -1, !dbg !180
  call void @llvm.dbg.value(metadata i64 %dec, metadata !51, metadata !DIExpression()), !dbg !99
  br i1 %or.cond, label %while.cond, label %if.end245, !dbg !179, !llvm.loop !182

if.end245:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata float 0x40C387FFE0000000, metadata !53, metadata !DIExpression()), !dbg !99
  br i1 %cmp247, label %if.then249, label %if.else271, !dbg !184

if.then249:                                       ; preds = %if.end245
  %conv251 = fptosi float %voxel.sroa.0.0.ph to i64, !dbg !185
  %shr252 = ashr i64 %conv251, %level.0, !dbg !188
  %add253 = add nsw i64 %shr252, 1, !dbg !189
  %arrayidx254 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_voxlen, i64 0, i64 %level.0, !dbg !190
  %53 = load i16, ptr %arrayidx254, align 2, !dbg !190
  %conv256 = sext i16 %53 to i64, !dbg !190
  %mul257 = mul nsw i64 %add253, %conv256, !dbg !191
  %conv258 = sitofp i64 %mul257 to float, !dbg !192
  %sub260 = fsub float %conv258, %voxel.sroa.0.0.ph, !dbg !193
  %mul261 = fmul float %27, %sub260, !dbg !194
  call void @llvm.dbg.value(metadata float %mul261, metadata !52, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  %cmp264 = fcmp ogt float %mul261, 0x40C387FFE0000000, !dbg !195
  %.mul261 = select i1 %cmp264, float 0x40C387FFE0000000, float %mul261, !dbg !195
  call void @llvm.dbg.value(metadata float %.mul261, metadata !53, metadata !DIExpression()), !dbg !99
  br label %if.end310, !dbg !196

if.else271:                                       ; preds = %if.end245
  br i1 %cmp273, label %if.then275, label %if.end310, !dbg !197

if.then275:                                       ; preds = %if.else271
  %conv278 = fptosi float %voxel.sroa.0.0.ph to i64, !dbg !198
  %conv279 = sitofp i64 %conv278 to float, !dbg !198
  %cmp280 = fcmp oeq float %voxel.sroa.0.0.ph, %conv279, !dbg !198
  br i1 %cmp280, label %cond.true282, label %cond.end289, !dbg !198

cond.true282:                                     ; preds = %if.then275
  %sub285 = add nsw i64 %conv278, -1, !dbg !198
  br label %cond.end289, !dbg !198

cond.end289:                                      ; preds = %if.then275, %cond.true282
  %cond290 = phi i64 [ %sub285, %cond.true282 ], [ %conv278, %if.then275 ], !dbg !198
  %shr291 = ashr i64 %cond290, %level.0, !dbg !201
  %arrayidx292 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_voxlen, i64 0, i64 %level.0, !dbg !202
  %54 = load i16, ptr %arrayidx292, align 2, !dbg !202
  %conv294 = sext i16 %54 to i64, !dbg !202
  %mul295 = mul nsw i64 %shr291, %conv294, !dbg !203
  %conv296 = sitofp i64 %mul295 to float, !dbg !204
  %sub298 = fsub float %conv296, %voxel.sroa.0.0.ph, !dbg !205
  %mul299 = fmul float %27, %sub298, !dbg !206
  call void @llvm.dbg.value(metadata float %mul299, metadata !52, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  %cmp302 = fcmp ogt float %mul299, 0x40C387FFE0000000, !dbg !207
  %.mul299 = select i1 %cmp302, float 0x40C387FFE0000000, float %mul299, !dbg !207
  call void @llvm.dbg.value(metadata float %.mul299, metadata !53, metadata !DIExpression()), !dbg !99
  br label %if.end310, !dbg !208

if.end310:                                        ; preds = %if.else271, %cond.end289, %if.then249
  %min_jump.0 = phi float [ %.mul261, %if.then249 ], [ %.mul299, %cond.end289 ], [ 0x40C387FFE0000000, %if.else271 ], !dbg !209
  call void @llvm.dbg.value(metadata float %min_jump.0, metadata !53, metadata !DIExpression()), !dbg !99
  br i1 %cmp312, label %if.then314, label %if.else336, !dbg !210

if.then314:                                       ; preds = %if.end310
  %conv316 = fptosi float %voxel.sroa.14.0.ph to i64, !dbg !211
  %shr317 = ashr i64 %conv316, %level.0, !dbg !214
  %add318 = add nsw i64 %shr317, 1, !dbg !215
  %arrayidx320 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_voxlen, i64 0, i64 %level.0, i64 1, !dbg !216
  %55 = load i16, ptr %arrayidx320, align 2, !dbg !216
  %conv321 = sext i16 %55 to i64, !dbg !216
  %mul322 = mul nsw i64 %add318, %conv321, !dbg !217
  %conv323 = sitofp i64 %mul322 to float, !dbg !218
  %sub325 = fsub float %conv323, %voxel.sroa.14.0.ph, !dbg !219
  %mul326 = fmul float %28, %sub325, !dbg !220
  call void @llvm.dbg.value(metadata float %mul326, metadata !52, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  %cmp329 = fcmp olt float %min_jump.0, %mul326, !dbg !221
  %min_jump.0.mul326 = select i1 %cmp329, float %min_jump.0, float %mul326, !dbg !221
  call void @llvm.dbg.value(metadata float %min_jump.0.mul326, metadata !53, metadata !DIExpression()), !dbg !99
  br label %if.end375, !dbg !222

if.else336:                                       ; preds = %if.end310
  br i1 %cmp338, label %if.then340, label %if.end375, !dbg !223

if.then340:                                       ; preds = %if.else336
  %conv343 = fptosi float %voxel.sroa.14.0.ph to i64, !dbg !224
  %conv344 = sitofp i64 %conv343 to float, !dbg !224
  %cmp345 = fcmp oeq float %voxel.sroa.14.0.ph, %conv344, !dbg !224
  br i1 %cmp345, label %cond.true347, label %cond.end354, !dbg !224

cond.true347:                                     ; preds = %if.then340
  %sub350 = add nsw i64 %conv343, -1, !dbg !224
  br label %cond.end354, !dbg !224

cond.end354:                                      ; preds = %if.then340, %cond.true347
  %cond355 = phi i64 [ %sub350, %cond.true347 ], [ %conv343, %if.then340 ], !dbg !224
  %shr356 = ashr i64 %cond355, %level.0, !dbg !227
  %arrayidx358 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_voxlen, i64 0, i64 %level.0, i64 1, !dbg !228
  %56 = load i16, ptr %arrayidx358, align 2, !dbg !228
  %conv359 = sext i16 %56 to i64, !dbg !228
  %mul360 = mul nsw i64 %shr356, %conv359, !dbg !229
  %conv361 = sitofp i64 %mul360 to float, !dbg !230
  %sub363 = fsub float %conv361, %voxel.sroa.14.0.ph, !dbg !231
  %mul364 = fmul float %28, %sub363, !dbg !232
  call void @llvm.dbg.value(metadata float %mul364, metadata !52, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  %cmp367 = fcmp olt float %min_jump.0, %mul364, !dbg !233
  %min_jump.0.mul364 = select i1 %cmp367, float %min_jump.0, float %mul364, !dbg !233
  call void @llvm.dbg.value(metadata float %min_jump.0.mul364, metadata !53, metadata !DIExpression()), !dbg !99
  br label %if.end375, !dbg !234

if.end375:                                        ; preds = %if.else336, %cond.end354, %if.then314
  %min_jump.1 = phi float [ %min_jump.0.mul326, %if.then314 ], [ %min_jump.0.mul364, %cond.end354 ], [ %min_jump.0, %if.else336 ], !dbg !209
  call void @llvm.dbg.value(metadata float %min_jump.1, metadata !53, metadata !DIExpression()), !dbg !99
  br i1 %cmp377, label %if.then379, label %if.else401, !dbg !235

if.then379:                                       ; preds = %if.end375
  %conv381 = fptosi float %voxel.sroa.26.0.ph to i64, !dbg !236
  %shr382 = ashr i64 %conv381, %level.0, !dbg !239
  %add383 = add nsw i64 %shr382, 1, !dbg !240
  %arrayidx385 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_voxlen, i64 0, i64 %level.0, i64 2, !dbg !241
  %57 = load i16, ptr %arrayidx385, align 2, !dbg !241
  %conv386 = sext i16 %57 to i64, !dbg !241
  %mul387 = mul nsw i64 %add383, %conv386, !dbg !242
  %conv388 = sitofp i64 %mul387 to float, !dbg !243
  %sub390 = fsub float %conv388, %voxel.sroa.26.0.ph, !dbg !244
  %mul391 = fmul float %29, %sub390, !dbg !245
  call void @llvm.dbg.value(metadata float %mul391, metadata !52, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !99
  %cmp394 = fcmp olt float %min_jump.1, %mul391, !dbg !246
  %min_jump.1.mul391 = select i1 %cmp394, float %min_jump.1, float %mul391, !dbg !246
  call void @llvm.dbg.value(metadata float %min_jump.1.mul391, metadata !53, metadata !DIExpression()), !dbg !99
  br label %if.end440, !dbg !247

if.else401:                                       ; preds = %if.end375
  br i1 %cmp403, label %if.then405, label %if.end440, !dbg !248

if.then405:                                       ; preds = %if.else401
  %conv408 = fptosi float %voxel.sroa.26.0.ph to i64, !dbg !249
  %conv409 = sitofp i64 %conv408 to float, !dbg !249
  %cmp410 = fcmp oeq float %voxel.sroa.26.0.ph, %conv409, !dbg !249
  br i1 %cmp410, label %cond.true412, label %cond.end419, !dbg !249

cond.true412:                                     ; preds = %if.then405
  %sub415 = add nsw i64 %conv408, -1, !dbg !249
  br label %cond.end419, !dbg !249

cond.end419:                                      ; preds = %if.then405, %cond.true412
  %cond420 = phi i64 [ %sub415, %cond.true412 ], [ %conv408, %if.then405 ], !dbg !249
  %shr421 = ashr i64 %cond420, %level.0, !dbg !252
  %arrayidx423 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_voxlen, i64 0, i64 %level.0, i64 2, !dbg !253
  %58 = load i16, ptr %arrayidx423, align 2, !dbg !253
  %conv424 = sext i16 %58 to i64, !dbg !253
  %mul425 = mul nsw i64 %shr421, %conv424, !dbg !254
  %conv426 = sitofp i64 %mul425 to float, !dbg !255
  %sub428 = fsub float %conv426, %voxel.sroa.26.0.ph, !dbg !256
  %mul429 = fmul float %29, %sub428, !dbg !257
  call void @llvm.dbg.value(metadata float %mul429, metadata !52, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !99
  %cmp432 = fcmp olt float %min_jump.1, %mul429, !dbg !258
  %min_jump.1.mul429 = select i1 %cmp432, float %min_jump.1, float %mul429, !dbg !258
  call void @llvm.dbg.value(metadata float %min_jump.1.mul429, metadata !53, metadata !DIExpression()), !dbg !99
  br label %if.end440, !dbg !259

if.end440:                                        ; preds = %if.else401, %cond.end419, %if.then379
  %min_jump.2 = phi float [ %min_jump.1.mul391, %if.then379 ], [ %min_jump.1.mul429, %cond.end419 ], [ %min_jump.1, %if.else401 ], !dbg !209
  call void @llvm.dbg.value(metadata float %min_jump.2, metadata !53, metadata !DIExpression()), !dbg !99
  %add441 = fadd float %box_zmin.0.ph, %min_jump.2, !dbg !260
  call void @llvm.dbg.value(metadata float %add441, metadata !49, metadata !DIExpression()), !dbg !99
  %tobool442.not = icmp eq i16 %and238, 0, !dbg !261
  br i1 %tobool442.not, label %next_box, label %while.end550, !dbg !263

next_box:                                         ; preds = %end_of_sample, %cond.end560, %if.end440
  %ray_color.1 = phi float [ %ray_color.0.ph, %cond.end560 ], [ %ray_color.0.ph, %if.end440 ], [ %ray_color.3, %end_of_sample ], !dbg !264
  %ray_opacity.1 = phi float [ %ray_opacity.0.ph, %cond.end560 ], [ %ray_opacity.0.ph, %if.end440 ], [ %ray_opacity.3, %end_of_sample ], !dbg !265
  call void @llvm.dbg.value(metadata float %ray_opacity.1, metadata !76, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %ray_color.1, metadata !75, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.label(metadata !91), !dbg !266
  %cmp446 = fcmp ult float %add441, %conv445, !dbg !267
  br i1 %cmp446, label %if.end449, label %end_of_segment, !dbg !269

if.end449:                                        ; preds = %next_box
  call void @llvm.dbg.value(metadata float %add441, metadata !48, metadata !DIExpression()), !dbg !99
  %59 = tail call float @llvm.fmuladd.f32(float %15, float %min_jump.2, float %voxel.sroa.0.0.ph), !dbg !270
  call void @llvm.dbg.value(metadata float %59, metadata !55, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  %60 = tail call float @llvm.fmuladd.f32(float %18, float %min_jump.2, float %voxel.sroa.14.0.ph), !dbg !271
  call void @llvm.dbg.value(metadata float %60, metadata !55, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  %61 = tail call float @llvm.fmuladd.f32(float %21, float %min_jump.2, float %voxel.sroa.26.0.ph), !dbg !272
  call void @llvm.dbg.value(metadata float %61, metadata !55, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !99
  %conv463 = fpext float %59 to double, !dbg !273
  %sub469 = fadd double %.1201, %conv463, !dbg !273
  %cond472 = fptosi double %sub469 to i64, !dbg !273
  call void @llvm.dbg.value(metadata i64 %cond472, metadata !58, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !99
  br i1 %cmp177, label %cond.end486, label %cond.false481, !dbg !274

cond.false481:                                    ; preds = %if.end449
  br label %cond.end486, !dbg !274

cond.end486:                                      ; preds = %if.end449, %cond.false481
  %.sink1198 = phi double [ -1.000000e-05, %cond.false481 ], [ 1.000000e-05, %if.end449 ]
  %conv483 = fpext float %60 to double, !dbg !274
  %sub484 = fadd double %.sink1198, %conv483, !dbg !274
  %cond487 = fptosi double %sub484 to i64, !dbg !274
  call void @llvm.dbg.value(metadata i64 %cond487, metadata !58, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !99
  %conv498 = fpext float %61 to double, !dbg !275
  %sub499 = fadd double %.1202, %conv498, !dbg !275
  %cond502 = fptosi double %sub499 to i64, !dbg !275
  call void @llvm.dbg.value(metadata i64 %cond502, metadata !58, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !99
  call void @llvm.dbg.value(metadata i64 %level.0, metadata !51, metadata !DIExpression()), !dbg !99
  %cmp5051188 = icmp slt i64 %level.0, %25, !dbg !276
  br i1 %cmp5051188, label %while.body507, label %while.cond.outer.backedge, !dbg !277

while.cond.outer.backedge:                        ; preds = %lor.lhs.false525, %if.then534, %cond.end486
  %level.0.ph.be = phi i64 [ %level.0, %cond.end486 ], [ %level.11189, %lor.lhs.false525 ], [ %25, %if.then534 ]
  br label %while.cond.outer, !dbg !175, !llvm.loop !182

while.body507:                                    ; preds = %cond.end486, %if.then534
  %level.11189 = phi i64 [ %add509, %if.then534 ], [ %level.0, %cond.end486 ]
  call void @llvm.dbg.value(metadata i64 %level.11189, metadata !51, metadata !DIExpression()), !dbg !99
  %add509 = add i64 %level.11189, 1, !dbg !278
  %shr510 = ashr i64 %cond472, %add509, !dbg !281
  %shr513 = ashr i64 %ivoxel.sroa.0.0.ph, %add509, !dbg !282
  %cmp514.not = icmp eq i64 %shr510, %shr513, !dbg !283
  br i1 %cmp514.not, label %lor.lhs.false516, label %if.then534, !dbg !284

lor.lhs.false516:                                 ; preds = %while.body507
  %shr519 = ashr i64 %cond487, %add509, !dbg !285
  %shr522 = ashr i64 %ivoxel.sroa.6.0.ph, %add509, !dbg !286
  %cmp523.not = icmp eq i64 %shr519, %shr522, !dbg !287
  br i1 %cmp523.not, label %lor.lhs.false525, label %if.then534, !dbg !288

lor.lhs.false525:                                 ; preds = %lor.lhs.false516
  %shr528 = ashr i64 %cond502, %add509, !dbg !289
  %shr531 = ashr i64 %ivoxel.sroa.10.0.ph, %add509, !dbg !290
  %cmp532.not = icmp eq i64 %shr528, %shr531, !dbg !291
  br i1 %cmp532.not, label %while.cond.outer.backedge, label %if.then534, !dbg !292, !llvm.loop !182

if.then534:                                       ; preds = %lor.lhs.false525, %lor.lhs.false516, %while.body507
  call void @llvm.dbg.value(metadata i64 %add509, metadata !51, metadata !DIExpression()), !dbg !99
  %exitcond1194.not = icmp eq i64 %add509, %25, !dbg !276
  br i1 %exitcond1194.not, label %while.cond.outer.backedge, label %while.body507, !dbg !277, !llvm.loop !182

while.end550:                                     ; preds = %if.end440
  %conv551 = fptosi float %box_zmin.0.ph to i64, !dbg !293
  %conv552 = sitofp i64 %conv551 to float, !dbg !293
  %cmp553 = fcmp oeq float %box_zmin.0.ph, %conv552, !dbg !293
  br i1 %cmp553, label %cond.end560, label %cond.false557, !dbg !293

cond.false557:                                    ; preds = %while.end550
  %add559 = add nsw i64 %conv551, 1, !dbg !293
  br label %cond.end560, !dbg !293

cond.end560:                                      ; preds = %while.end550, %cond.false557
  %cond561 = phi i64 [ %add559, %cond.false557 ], [ %conv551, %while.end550 ], !dbg !293
  call void @llvm.dbg.value(metadata i64 %cond561, metadata !34, metadata !DIExpression()), !dbg !99
  %conv562 = fptosi float %add441 to i64, !dbg !294
  %62 = tail call i64 @llvm.smin.i64(i64 %conv562, i64 %conv144), !dbg !294
  call void @llvm.dbg.value(metadata i64 %62, metadata !35, metadata !DIExpression()), !dbg !99
  %cmp570 = icmp slt i64 %62, %cond561, !dbg !295
  br i1 %cmp570, label %next_box, label %if.end573, !dbg !297

if.end573:                                        ; preds = %cond.end560
  %conv576 = sitofp i64 %cond561 to float, !dbg !298
  %63 = tail call float @llvm.fmuladd.f32(float %15, float %conv576, float %14), !dbg !299
  call void @llvm.dbg.value(metadata float %63, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  %64 = tail call float @llvm.fmuladd.f32(float %18, float %conv576, float %17), !dbg !300
  call void @llvm.dbg.value(metadata float %64, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  %65 = tail call float @llvm.fmuladd.f32(float %21, float %conv576, float %20), !dbg !301
  call void @llvm.dbg.value(metadata float %65, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !99
  call void @llvm.dbg.value(metadata i64 %cond561, metadata !40, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %64, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  call void @llvm.dbg.value(metadata float %ray_opacity.0.ph, metadata !76, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %ray_color.0.ph, metadata !75, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %63, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  br label %for.body592, !dbg !302

for.body592:                                      ; preds = %if.end573, %end_of_sample
  %sample.sroa.14.01185 = phi float [ %65, %if.end573 ], [ %add810, %end_of_sample ]
  %sample.sroa.8.01183 = phi float [ %64, %if.end573 ], [ %add808, %end_of_sample ]
  %ray_opacity.21182 = phi float [ %ray_opacity.0.ph, %if.end573 ], [ %ray_opacity.3, %end_of_sample ]
  %ray_color.21181 = phi float [ %ray_color.0.ph, %if.end573 ], [ %ray_color.3, %end_of_sample ]
  %sample.sroa.0.01179 = phi float [ %63, %if.end573 ], [ %add806, %end_of_sample ]
  %outz.01177 = phi i64 [ %cond561, %if.end573 ], [ %inc812, %end_of_sample ]
  call void @llvm.dbg.value(metadata float %sample.sroa.14.01185, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !99
  call void @llvm.dbg.value(metadata float %sample.sroa.8.01183, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  call void @llvm.dbg.value(metadata float %ray_opacity.21182, metadata !76, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %ray_color.21181, metadata !75, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %sample.sroa.0.01179, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  call void @llvm.dbg.value(metadata i64 %outz.01177, metadata !40, metadata !DIExpression()), !dbg !99
  %conv594 = fptosi float %sample.sroa.0.01179 to i64, !dbg !303
  call void @llvm.dbg.value(metadata i64 %conv594, metadata !42, metadata !DIExpression()), !dbg !99
  %conv596 = fptosi float %sample.sroa.8.01183 to i64, !dbg !304
  call void @llvm.dbg.value(metadata i64 %conv596, metadata !43, metadata !DIExpression()), !dbg !99
  %conv598 = fptosi float %sample.sroa.14.01185 to i64, !dbg !305
  call void @llvm.dbg.value(metadata i64 %conv598, metadata !44, metadata !DIExpression()), !dbg !99
  %mul600 = mul nsw i64 %conv599, %conv598, !dbg !306
  %add601 = add nsw i64 %mul600, %conv596, !dbg !306
  %mul603 = mul nsw i64 %add601, %conv602, !dbg !306
  %add604 = add nsw i64 %mul603, %conv594, !dbg !306
  call void @llvm.dbg.value(metadata i64 %add604, metadata !86, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %add604, metadata !87, metadata !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value)), !dbg !99
  %shr606 = ashr i64 %add604, 3, !dbg !306
  %add.ptr607 = getelementptr inbounds i8, ptr %32, i64 %shr606, !dbg !306
  call void @llvm.dbg.value(metadata ptr %add.ptr607, metadata !88, metadata !DIExpression()), !dbg !99
  %66 = load i8, ptr %add.ptr607, align 1, !dbg !306
  %conv608 = zext i8 %66 to i16, !dbg !306
  %67 = trunc i64 %add604 to i16, !dbg !306
  %sh_prom609 = and i16 %67, 7, !dbg !306
  call void @llvm.dbg.value(metadata !DIArgList(i16 %conv608, i16 %sh_prom609), metadata !59, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !99
  %68 = shl nuw nsw i16 1, %sh_prom609, !dbg !307
  %69 = and i16 %68, %conv608, !dbg !307
  %tobool613.not = icmp eq i16 %69, 0, !dbg !307
  br i1 %tobool613.not, label %end_of_sample, label %if.end615, !dbg !309

if.end615:                                        ; preds = %for.body592
  %cmp617 = fcmp olt float %sample.sroa.0.01179, %33, !dbg !310
  %sample.sroa.0.0. = select i1 %cmp617, float %sample.sroa.0.01179, float %33, !dbg !310
  call void @llvm.dbg.value(metadata float %sample.sroa.0.0., metadata !39, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  %cmp626 = fcmp olt float %sample.sroa.8.01183, %34, !dbg !311
  br i1 %cmp626, label %cond.end631, label %cond.false630, !dbg !311

cond.false630:                                    ; preds = %if.end615
  br label %cond.end631, !dbg !311

cond.end631:                                      ; preds = %if.end615, %cond.false630
  %conv646.pre-phi = phi i64 [ %conv596, %if.end615 ], [ %.pre, %cond.false630 ], !dbg !312
  %cond632 = phi float [ %sample.sroa.8.01183, %if.end615 ], [ %34, %cond.false630 ], !dbg !311
  call void @llvm.dbg.value(metadata float %cond632, metadata !39, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  %cmp635 = fcmp olt float %sample.sroa.14.01185, %35, !dbg !313
  %sample.sroa.14.0. = select i1 %cmp635, float %sample.sroa.14.01185, float %35, !dbg !313
  call void @llvm.dbg.value(metadata float %sample.sroa.14.0., metadata !39, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !99
  %conv644 = fptosi float %sample.sroa.0.0. to i64, !dbg !314
  call void @llvm.dbg.value(metadata i64 %conv644, metadata !45, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %conv646.pre-phi, metadata !46, metadata !DIExpression()), !dbg !99
  %conv648 = fptosi float %sample.sroa.14.0. to i64, !dbg !315
  call void @llvm.dbg.value(metadata i64 %conv648, metadata !47, metadata !DIExpression()), !dbg !99
  %inc650 = add nsw i64 %conv644, 1, !dbg !316
  call void @llvm.dbg.value(metadata i64 %inc650, metadata !45, metadata !DIExpression()), !dbg !99
  %conv651 = sitofp i64 %conv644 to float, !dbg !317
  %sub652 = fsub float %sample.sroa.0.0., %conv651, !dbg !318
  call void @llvm.dbg.value(metadata float %sub652, metadata !62, metadata !DIExpression()), !dbg !99
  %conv654 = sitofp i64 %conv646.pre-phi to float, !dbg !319
  %sub655 = fsub float %cond632, %conv654, !dbg !320
  call void @llvm.dbg.value(metadata float %sub655, metadata !63, metadata !DIExpression()), !dbg !99
  %conv657 = sitofp i64 %conv648 to float, !dbg !321
  %sub658 = fsub float %sample.sroa.14.0., %conv657, !dbg !322
  call void @llvm.dbg.value(metadata float %sub658, metadata !64, metadata !DIExpression()), !dbg !99
  %mul660 = mul nsw i64 %conv648, %conv659, !dbg !323
  %add661 = add nsw i64 %mul660, %conv646.pre-phi, !dbg !323
  %mul663 = mul nsw i64 %add661, %conv662, !dbg !323
  %add.ptr664 = getelementptr inbounds i8, ptr %36, i64 %mul663, !dbg !323
  %add.ptr665 = getelementptr inbounds i8, ptr %add.ptr664, i64 %inc650, !dbg !323
  call void @llvm.dbg.value(metadata ptr %add.ptr665, metadata !77, metadata !DIExpression()), !dbg !99
  %mul667 = mul nsw i64 %conv666, %conv648, !dbg !324
  %add668 = add nsw i64 %mul667, %conv646.pre-phi, !dbg !324
  %mul670 = mul nsw i64 %add668, %conv669, !dbg !324
  %add.ptr671 = getelementptr inbounds i16, ptr %39, i64 %mul670, !dbg !324
  %add.ptr672 = getelementptr inbounds i16, ptr %add.ptr671, i64 %inc650, !dbg !324
  call void @llvm.dbg.value(metadata ptr %add.ptr672, metadata !81, metadata !DIExpression()), !dbg !99
  %conv675 = fsub float 1.000000e+00, %sub652, !dbg !325
  call void @llvm.dbg.value(metadata float %conv675, metadata !65, metadata !DIExpression()), !dbg !99
  %conv678 = fsub float 1.000000e+00, %sub655, !dbg !326
  call void @llvm.dbg.value(metadata float %conv678, metadata !66, metadata !DIExpression()), !dbg !99
  %conv681 = fsub float 1.000000e+00, %sub658, !dbg !327
  call void @llvm.dbg.value(metadata float %conv681, metadata !67, metadata !DIExpression()), !dbg !99
  %mul682 = fmul float %sub652, %conv678, !dbg !328
  %mul683 = fmul float %mul682, %conv681, !dbg !329
  call void @llvm.dbg.value(metadata float %mul683, metadata !68, metadata !DIExpression()), !dbg !99
  %incdec.ptr = getelementptr inbounds i8, ptr %add.ptr665, i64 -1, !dbg !330
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !77, metadata !DIExpression()), !dbg !99
  %70 = load i8, ptr %add.ptr665, align 1, !dbg !331
  %conv685 = uitofp i8 %70 to float, !dbg !331
  %mul686 = fmul float %mul683, %conv685, !dbg !332
  call void @llvm.dbg.value(metadata float %mul686, metadata !69, metadata !DIExpression()), !dbg !99
  %incdec.ptr687 = getelementptr inbounds i16, ptr %add.ptr672, i64 -1, !dbg !333
  call void @llvm.dbg.value(metadata ptr %incdec.ptr687, metadata !81, metadata !DIExpression()), !dbg !99
  %71 = load i16, ptr %add.ptr672, align 2, !dbg !333
  %idx.ext = sext i16 %71 to i64, !dbg !333
  %add.ptr689 = getelementptr inbounds i8, ptr %42, i64 %idx.ext, !dbg !333
  %72 = load i8, ptr %add.ptr689, align 1, !dbg !333
  %conv690 = uitofp i8 %72 to float, !dbg !333
  call void @llvm.dbg.value(metadata float %conv690, metadata !73, metadata !DIExpression()), !dbg !99
  %mul691 = fmul float %mul686, %conv690, !dbg !334
  call void @llvm.dbg.value(metadata float %mul691, metadata !71, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %mul686, metadata !70, metadata !DIExpression()), !dbg !99
  %mul692 = fmul float %conv675, %conv678, !dbg !335
  %mul693 = fmul float %mul692, %conv681, !dbg !336
  call void @llvm.dbg.value(metadata float %mul693, metadata !68, metadata !DIExpression()), !dbg !99
  %73 = load i8, ptr %incdec.ptr, align 1, !dbg !337
  %conv695 = uitofp i8 %73 to float, !dbg !337
  %mul696 = fmul float %mul693, %conv695, !dbg !338
  call void @llvm.dbg.value(metadata float %mul696, metadata !69, metadata !DIExpression()), !dbg !99
  %74 = load i16, ptr %incdec.ptr687, align 2, !dbg !339
  %idx.ext698 = sext i16 %74 to i64, !dbg !339
  %add.ptr699 = getelementptr inbounds i8, ptr %42, i64 %idx.ext698, !dbg !339
  %75 = load i8, ptr %add.ptr699, align 1, !dbg !339
  %conv700 = uitofp i8 %75 to float, !dbg !339
  call void @llvm.dbg.value(metadata float %conv700, metadata !73, metadata !DIExpression()), !dbg !99
  %76 = tail call float @llvm.fmuladd.f32(float %conv700, float %mul696, float %mul691), !dbg !340
  call void @llvm.dbg.value(metadata float %76, metadata !71, metadata !DIExpression()), !dbg !99
  %add702 = fadd float %mul686, %mul696, !dbg !341
  call void @llvm.dbg.value(metadata float %add702, metadata !70, metadata !DIExpression()), !dbg !99
  %mul703 = fmul float %sub652, %sub655, !dbg !342
  %mul704 = fmul float %mul703, %conv681, !dbg !343
  call void @llvm.dbg.value(metadata float %mul704, metadata !68, metadata !DIExpression()), !dbg !99
  %add.ptr705 = getelementptr inbounds i8, ptr %incdec.ptr, i64 %43, !dbg !344
  call void @llvm.dbg.value(metadata ptr %add.ptr705, metadata !80, metadata !DIExpression()), !dbg !99
  %add.ptr706 = getelementptr inbounds i16, ptr %incdec.ptr687, i64 %44, !dbg !345
  call void @llvm.dbg.value(metadata ptr %add.ptr706, metadata !85, metadata !DIExpression()), !dbg !99
  %incdec.ptr707 = getelementptr inbounds i8, ptr %add.ptr705, i64 -1, !dbg !346
  call void @llvm.dbg.value(metadata ptr %incdec.ptr707, metadata !80, metadata !DIExpression()), !dbg !99
  %77 = load i8, ptr %add.ptr705, align 1, !dbg !347
  %conv709 = uitofp i8 %77 to float, !dbg !347
  %mul710 = fmul float %mul704, %conv709, !dbg !348
  call void @llvm.dbg.value(metadata float %mul710, metadata !69, metadata !DIExpression()), !dbg !99
  %incdec.ptr711 = getelementptr inbounds i16, ptr %add.ptr706, i64 -1, !dbg !349
  call void @llvm.dbg.value(metadata ptr %incdec.ptr711, metadata !85, metadata !DIExpression()), !dbg !99
  %78 = load i16, ptr %add.ptr706, align 2, !dbg !349
  %idx.ext713 = sext i16 %78 to i64, !dbg !349
  %add.ptr714 = getelementptr inbounds i8, ptr %42, i64 %idx.ext713, !dbg !349
  %79 = load i8, ptr %add.ptr714, align 1, !dbg !349
  %conv715 = uitofp i8 %79 to float, !dbg !349
  call void @llvm.dbg.value(metadata float %conv715, metadata !73, metadata !DIExpression()), !dbg !99
  %80 = tail call float @llvm.fmuladd.f32(float %conv715, float %mul710, float %76), !dbg !350
  call void @llvm.dbg.value(metadata float %80, metadata !71, metadata !DIExpression()), !dbg !99
  %add717 = fadd float %add702, %mul710, !dbg !351
  call void @llvm.dbg.value(metadata float %add717, metadata !70, metadata !DIExpression()), !dbg !99
  %mul718 = fmul float %conv675, %sub655, !dbg !352
  %mul719 = fmul float %mul718, %conv681, !dbg !353
  call void @llvm.dbg.value(metadata float %mul719, metadata !68, metadata !DIExpression()), !dbg !99
  %81 = load i8, ptr %incdec.ptr707, align 1, !dbg !354
  %conv721 = uitofp i8 %81 to float, !dbg !354
  %mul722 = fmul float %mul719, %conv721, !dbg !355
  call void @llvm.dbg.value(metadata float %mul722, metadata !69, metadata !DIExpression()), !dbg !99
  %82 = load i16, ptr %incdec.ptr711, align 2, !dbg !356
  %idx.ext724 = sext i16 %82 to i64, !dbg !356
  %add.ptr725 = getelementptr inbounds i8, ptr %42, i64 %idx.ext724, !dbg !356
  %83 = load i8, ptr %add.ptr725, align 1, !dbg !356
  %conv726 = uitofp i8 %83 to float, !dbg !356
  call void @llvm.dbg.value(metadata float %conv726, metadata !73, metadata !DIExpression()), !dbg !99
  %84 = tail call float @llvm.fmuladd.f32(float %conv726, float %mul722, float %80), !dbg !357
  call void @llvm.dbg.value(metadata float %84, metadata !71, metadata !DIExpression()), !dbg !99
  %add728 = fadd float %add717, %mul722, !dbg !358
  call void @llvm.dbg.value(metadata float %add728, metadata !70, metadata !DIExpression()), !dbg !99
  %mul730 = fmul float %mul682, %sub658, !dbg !359
  call void @llvm.dbg.value(metadata float %mul730, metadata !68, metadata !DIExpression()), !dbg !99
  %add.ptr731 = getelementptr inbounds i8, ptr %incdec.ptr, i64 %45, !dbg !360
  call void @llvm.dbg.value(metadata ptr %add.ptr731, metadata !77, metadata !DIExpression()), !dbg !99
  %add.ptr732 = getelementptr inbounds i16, ptr %incdec.ptr687, i64 %46, !dbg !361
  call void @llvm.dbg.value(metadata ptr %add.ptr732, metadata !81, metadata !DIExpression()), !dbg !99
  %incdec.ptr733 = getelementptr inbounds i8, ptr %add.ptr731, i64 -1, !dbg !362
  call void @llvm.dbg.value(metadata ptr %incdec.ptr733, metadata !77, metadata !DIExpression()), !dbg !99
  %85 = load i8, ptr %add.ptr731, align 1, !dbg !363
  %conv735 = uitofp i8 %85 to float, !dbg !363
  %mul736 = fmul float %mul730, %conv735, !dbg !364
  call void @llvm.dbg.value(metadata float %mul736, metadata !69, metadata !DIExpression()), !dbg !99
  %incdec.ptr737 = getelementptr inbounds i16, ptr %add.ptr732, i64 -1, !dbg !365
  call void @llvm.dbg.value(metadata ptr %incdec.ptr737, metadata !81, metadata !DIExpression()), !dbg !99
  %86 = load i16, ptr %add.ptr732, align 2, !dbg !365
  %idx.ext739 = sext i16 %86 to i64, !dbg !365
  %add.ptr740 = getelementptr inbounds i8, ptr %42, i64 %idx.ext739, !dbg !365
  %87 = load i8, ptr %add.ptr740, align 1, !dbg !365
  %conv741 = uitofp i8 %87 to float, !dbg !365
  call void @llvm.dbg.value(metadata float %conv741, metadata !73, metadata !DIExpression()), !dbg !99
  %88 = tail call float @llvm.fmuladd.f32(float %conv741, float %mul736, float %84), !dbg !366
  call void @llvm.dbg.value(metadata float %88, metadata !71, metadata !DIExpression()), !dbg !99
  %add743 = fadd float %add728, %mul736, !dbg !367
  call void @llvm.dbg.value(metadata float %add743, metadata !70, metadata !DIExpression()), !dbg !99
  %mul745 = fmul float %mul692, %sub658, !dbg !368
  call void @llvm.dbg.value(metadata float %mul745, metadata !68, metadata !DIExpression()), !dbg !99
  %89 = load i8, ptr %incdec.ptr733, align 1, !dbg !369
  %conv747 = uitofp i8 %89 to float, !dbg !369
  %mul748 = fmul float %mul745, %conv747, !dbg !370
  call void @llvm.dbg.value(metadata float %mul748, metadata !69, metadata !DIExpression()), !dbg !99
  %90 = load i16, ptr %incdec.ptr737, align 2, !dbg !371
  %idx.ext750 = sext i16 %90 to i64, !dbg !371
  %add.ptr751 = getelementptr inbounds i8, ptr %42, i64 %idx.ext750, !dbg !371
  %91 = load i8, ptr %add.ptr751, align 1, !dbg !371
  %conv752 = uitofp i8 %91 to float, !dbg !371
  call void @llvm.dbg.value(metadata float %conv752, metadata !73, metadata !DIExpression()), !dbg !99
  %92 = tail call float @llvm.fmuladd.f32(float %conv752, float %mul748, float %88), !dbg !372
  call void @llvm.dbg.value(metadata float %92, metadata !71, metadata !DIExpression()), !dbg !99
  %add754 = fadd float %add743, %mul748, !dbg !373
  call void @llvm.dbg.value(metadata float %add754, metadata !70, metadata !DIExpression()), !dbg !99
  %mul756 = fmul float %mul703, %sub658, !dbg !374
  call void @llvm.dbg.value(metadata float %mul756, metadata !68, metadata !DIExpression()), !dbg !99
  %add.ptr757 = getelementptr inbounds i8, ptr %incdec.ptr733, i64 %43, !dbg !375
  call void @llvm.dbg.value(metadata ptr %add.ptr757, metadata !80, metadata !DIExpression()), !dbg !99
  %add.ptr758 = getelementptr inbounds i16, ptr %incdec.ptr737, i64 %44, !dbg !376
  call void @llvm.dbg.value(metadata ptr %add.ptr758, metadata !85, metadata !DIExpression()), !dbg !99
  %incdec.ptr759 = getelementptr inbounds i8, ptr %add.ptr757, i64 -1, !dbg !377
  call void @llvm.dbg.value(metadata ptr %incdec.ptr759, metadata !80, metadata !DIExpression()), !dbg !99
  %93 = load i8, ptr %add.ptr757, align 1, !dbg !378
  %conv761 = uitofp i8 %93 to float, !dbg !378
  %mul762 = fmul float %mul756, %conv761, !dbg !379
  call void @llvm.dbg.value(metadata float %mul762, metadata !69, metadata !DIExpression()), !dbg !99
  %incdec.ptr763 = getelementptr inbounds i16, ptr %add.ptr758, i64 -1, !dbg !380
  call void @llvm.dbg.value(metadata ptr %incdec.ptr763, metadata !85, metadata !DIExpression()), !dbg !99
  %94 = load i16, ptr %add.ptr758, align 2, !dbg !380
  %idx.ext765 = sext i16 %94 to i64, !dbg !380
  %add.ptr766 = getelementptr inbounds i8, ptr %42, i64 %idx.ext765, !dbg !380
  %95 = load i8, ptr %add.ptr766, align 1, !dbg !380
  %conv767 = uitofp i8 %95 to float, !dbg !380
  call void @llvm.dbg.value(metadata float %conv767, metadata !73, metadata !DIExpression()), !dbg !99
  %96 = tail call float @llvm.fmuladd.f32(float %conv767, float %mul762, float %92), !dbg !381
  call void @llvm.dbg.value(metadata float %96, metadata !71, metadata !DIExpression()), !dbg !99
  %add769 = fadd float %add754, %mul762, !dbg !382
  call void @llvm.dbg.value(metadata float %add769, metadata !70, metadata !DIExpression()), !dbg !99
  %mul771 = fmul float %mul718, %sub658, !dbg !383
  call void @llvm.dbg.value(metadata float %mul771, metadata !68, metadata !DIExpression()), !dbg !99
  %97 = load i8, ptr %incdec.ptr759, align 1, !dbg !384
  %conv773 = uitofp i8 %97 to float, !dbg !384
  %mul774 = fmul float %mul771, %conv773, !dbg !385
  call void @llvm.dbg.value(metadata float %mul774, metadata !69, metadata !DIExpression()), !dbg !99
  %98 = load i16, ptr %incdec.ptr763, align 2, !dbg !386
  %idx.ext776 = sext i16 %98 to i64, !dbg !386
  %add.ptr777 = getelementptr inbounds i8, ptr %42, i64 %idx.ext776, !dbg !386
  %99 = load i8, ptr %add.ptr777, align 1, !dbg !386
  %conv778 = uitofp i8 %99 to float, !dbg !386
  call void @llvm.dbg.value(metadata float %conv778, metadata !73, metadata !DIExpression()), !dbg !99
  %100 = tail call float @llvm.fmuladd.f32(float %conv778, float %mul774, float %96), !dbg !387
  call void @llvm.dbg.value(metadata float %100, metadata !71, metadata !DIExpression()), !dbg !99
  %add780 = fadd float %add769, %mul774, !dbg !388
  call void @llvm.dbg.value(metadata float %add780, metadata !70, metadata !DIExpression()), !dbg !99
  %conv781 = fpext float %add780 to double, !dbg !389
  %mul782 = fmul double %conv781, 0x3F70101010101010, !dbg !390
  %conv783 = fptrunc double %mul782 to float, !dbg !389
  call void @llvm.dbg.value(metadata float %conv783, metadata !74, metadata !DIExpression()), !dbg !99
  %conv784 = fpext float %100 to double, !dbg !391
  %mul785 = fmul double %conv784, 0x3F70101010101010, !dbg !392
  %conv786 = fptrunc double %mul785 to float, !dbg !391
  call void @llvm.dbg.value(metadata float %conv786, metadata !73, metadata !DIExpression()), !dbg !99
  %arrayidx787 = getelementptr inbounds [4096 x float], ptr @depth_cueing, i64 0, i64 %outz.01177, !dbg !393
  %101 = load float, ptr %arrayidx787, align 4, !dbg !393
  %mul788 = fmul float %101, %conv786, !dbg !394
  call void @llvm.dbg.value(metadata float %mul788, metadata !73, metadata !DIExpression()), !dbg !99
  %conv789 = fpext float %conv783 to double, !dbg !395
  %conv790 = fpext float %ray_opacity.21182 to double, !dbg !396
  %sub791 = fsub double 1.000000e+00, %conv790, !dbg !397
  %mul792 = fmul double %sub791, %conv789, !dbg !398
  %conv793 = fptrunc double %mul792 to float, !dbg !395
  call void @llvm.dbg.value(metadata float %conv793, metadata !72, metadata !DIExpression()), !dbg !99
  %conv794 = fpext float %mul788 to double, !dbg !399
  %conv798 = fpext float %ray_color.21181 to double, !dbg !400
  %102 = tail call double @llvm.fmuladd.f64(double %conv794, double %sub791, double %conv798), !dbg !400
  %conv799 = fptrunc double %102 to float, !dbg !400
  call void @llvm.dbg.value(metadata float %conv799, metadata !75, metadata !DIExpression()), !dbg !99
  %add800 = fadd float %ray_opacity.21182, %conv793, !dbg !401
  call void @llvm.dbg.value(metadata float %add800, metadata !76, metadata !DIExpression()), !dbg !99
  %cmp801 = fcmp ogt float %add800, %47, !dbg !402
  br i1 %cmp801, label %end_of_ray, label %end_of_sample, !dbg !404

end_of_sample:                                    ; preds = %cond.end631, %for.body592
  %ray_color.3 = phi float [ %conv799, %cond.end631 ], [ %ray_color.21181, %for.body592 ], !dbg !99
  %ray_opacity.3 = phi float [ %add800, %cond.end631 ], [ %ray_opacity.21182, %for.body592 ], !dbg !99
  call void @llvm.dbg.value(metadata float %ray_opacity.3, metadata !76, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %ray_color.3, metadata !75, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.label(metadata !93), !dbg !405
  %add806 = fadd float %15, %sample.sroa.0.01179, !dbg !406
  call void @llvm.dbg.value(metadata float %add806, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  %add808 = fadd float %18, %sample.sroa.8.01183, !dbg !407
  call void @llvm.dbg.value(metadata float %add808, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  %add810 = fadd float %21, %sample.sroa.14.01185, !dbg !408
  call void @llvm.dbg.value(metadata float %add810, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !99
  %inc812 = add i64 %outz.01177, 1, !dbg !409
  call void @llvm.dbg.value(metadata float %add808, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  call void @llvm.dbg.value(metadata float %add806, metadata !36, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  call void @llvm.dbg.value(metadata i64 %inc812, metadata !40, metadata !DIExpression()), !dbg !99
  %exitcond1193.not = icmp eq i64 %outz.01177, %62, !dbg !410
  br i1 %exitcond1193.not, label %next_box, label %for.body592, !dbg !302, !llvm.loop !411

end_of_segment:                                   ; preds = %next_box
  call void @llvm.dbg.label(metadata !97), !dbg !413
  %103 = load float, ptr @opacity_epsilon, align 4, !dbg !414
  %cmp814 = fcmp ugt float %ray_opacity.1, %103, !dbg !416
  br i1 %cmp814, label %end_of_ray, label %cleanup, !dbg !417

end_of_ray:                                       ; preds = %cond.end631, %end_of_segment
  %ray_color.4 = phi float [ %ray_color.1, %end_of_segment ], [ %conv799, %cond.end631 ], !dbg !99
  %ray_opacity.4 = phi float [ %ray_opacity.1, %end_of_segment ], [ %add800, %cond.end631 ], !dbg !99
  call void @llvm.dbg.value(metadata float %ray_opacity.4, metadata !76, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata float %ray_color.4, metadata !75, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.label(metadata !98), !dbg !418
  %conv820 = fsub float 1.000000e+00, %ray_opacity.4, !dbg !419
  call void @llvm.dbg.value(metadata float %conv820, metadata !72, metadata !DIExpression()), !dbg !99
  %104 = load i8, ptr %pixel_address, align 1, !dbg !420
  %conv822 = uitofp i8 %104 to float, !dbg !420
  %105 = tail call float @llvm.fmuladd.f32(float %conv822, float %conv820, float %ray_color.4), !dbg !421
  call void @llvm.dbg.value(metadata float %105, metadata !75, metadata !DIExpression()), !dbg !99
  %conv824 = fpext float %105 to double, !dbg !422
  %add825 = fadd double %conv824, 5.000000e-01, !dbg !422
  %conv826 = fptosi double %add825 to i64, !dbg !422
  %conv827 = trunc i64 %conv826 to i8, !dbg !422
  store i8 %conv827, ptr %pixel_address, align 1, !dbg !423
  br label %cleanup, !dbg !424

cleanup:                                          ; preds = %lor.lhs.false, %if.then, %end_of_segment, %cond.end140, %end_of_ray
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ray) #6, !dbg !424
  ret void, !dbg !424
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Pre_Shade(i64 noundef %my_node) local_unnamed_addr #3 !dbg !425 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_node, metadata !429, metadata !DIExpression()), !dbg !451
  %0 = load i64, ptr @num_nodes, align 8, !dbg !452
  %conv = sitofp i64 %0 to float, !dbg !453
  %conv2 = fdiv float 1.000000e+00, %conv, !dbg !454
  call void @llvm.dbg.value(metadata float %conv2, metadata !440, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata i64 31, metadata !434, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata float 0xBF610C8540000000, metadata !439, metadata !DIExpression()), !dbg !451
  %mul = fmul float %conv2, 6.300000e+01, !dbg !455
  %conv4 = fptosi float %mul to i64, !dbg !455
  %conv5 = sitofp i64 %conv4 to float, !dbg !455
  %cmp = fcmp oeq float %mul, %conv5, !dbg !455
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !455

cond.false:                                       ; preds = %entry
  %add = add nsw i64 %conv4, 1, !dbg !455
  br label %cond.end, !dbg !455

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %add, %cond.false ], [ %conv4, %entry ], !dbg !455
  call void @llvm.dbg.value(metadata i64 %cond, metadata !435, metadata !DIExpression()), !dbg !451
  %mul11 = mul nsw i64 %cond, %my_node, !dbg !456
  %add12 = add nsw i64 %mul11, -31, !dbg !457
  call void @llvm.dbg.value(metadata i64 %add12, metadata !436, metadata !DIExpression()), !dbg !451
  %add13 = add nsw i64 %add12, %cond, !dbg !458
  %1 = tail call i64 @llvm.smin.i64(i64 %add13, i64 32), !dbg !458
  call void @llvm.dbg.value(metadata i64 %1, metadata !437, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata i64 %add12, metadata !432, metadata !DIExpression()), !dbg !451
  %cmp23234 = icmp slt i64 %add12, %1, !dbg !459
  br i1 %cmp23234, label %for.cond26.preheader, label %for.end168, !dbg !462

for.cond26.preheader:                             ; preds = %cond.end, %for.inc166
  %znorm.0235 = phi i64 [ %inc167, %for.inc166 ], [ %add12, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %znorm.0235, metadata !432, metadata !DIExpression()), !dbg !451
  %conv30 = sitofp i64 %znorm.0235 to float
  %conv31 = fpext float %conv30 to double
  %mul32 = fmul double %conv31, 0x3FA0842108421084
  %conv33 = fptrunc double %mul32 to float
  %mul41 = fmul float %conv33, %conv33
  %conv42 = fpext float %mul41 to double
  %sub43 = fsub double 1.000000e+00, %conv42
  call void @llvm.dbg.value(metadata i64 -31, metadata !431, metadata !DIExpression()), !dbg !451
  %mul78 = mul nsw i64 %znorm.0235, 63
  br label %for.body29, !dbg !463

for.body29:                                       ; preds = %for.cond26.preheader, %for.inc
  %ynorm.0232 = phi i64 [ -31, %for.cond26.preheader ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %ynorm.0232, metadata !431, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata float %conv33, metadata !441, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !451
  %conv34 = sitofp i64 %ynorm.0232 to float, !dbg !466
  %conv35 = fpext float %conv34 to double, !dbg !466
  %mul36 = fmul double %conv35, 0x3FA0842108421084, !dbg !469
  %conv37 = fptrunc double %mul36 to float, !dbg !466
  call void @llvm.dbg.value(metadata float %conv37, metadata !441, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !451
  %mul46 = fmul float %conv37, %conv37, !dbg !470
  %conv47 = fpext float %mul46 to double, !dbg !471
  %sub48 = fsub double %sub43, %conv47, !dbg !472
  %conv49 = fptrunc double %sub48 to float, !dbg !473
  call void @llvm.dbg.value(metadata float %conv49, metadata !438, metadata !DIExpression()), !dbg !451
  %cmp50 = fcmp ogt float %conv49, 0xBF610C8540000000, !dbg !474
  br i1 %cmp50, label %if.then, label %for.inc, !dbg !476

if.then:                                          ; preds = %for.body29
  %cmp53 = fcmp ogt float %conv49, 0.000000e+00, !dbg !477
  br i1 %cmp53, label %cond.true55, label %cond.end58, !dbg !477

cond.true55:                                      ; preds = %if.then
  %conv52 = fpext float %conv49 to double, !dbg !477
  br label %cond.end58, !dbg !477

cond.end58:                                       ; preds = %if.then, %cond.true55
  %cond59 = phi double [ %conv52, %cond.true55 ], [ 0.000000e+00, %if.then ], !dbg !477
  %conv60 = fptrunc double %cond59 to float, !dbg !477
  call void @llvm.dbg.value(metadata float %conv60, metadata !438, metadata !DIExpression()), !dbg !451
  %sqrtf = tail call float @sqrtf(float noundef %conv60) #4, !dbg !479
  call void @llvm.dbg.value(metadata float %sqrtf, metadata !441, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !451
  call void @llvm.dbg.value(metadata i64 undef, metadata !430, metadata !DIExpression()), !dbg !451
  %2 = load float, ptr getelementptr inbounds ([3 x float], ptr @obslight, i64 0, i64 2), align 4, !dbg !480
  %3 = load float, ptr getelementptr inbounds ([3 x float], ptr @obslight, i64 0, i64 1), align 4, !dbg !481
  %mul69 = fmul float %3, %conv37, !dbg !482
  %4 = tail call float @llvm.fmuladd.f32(float %conv33, float %2, float %mul69), !dbg !483
  call void @llvm.dbg.value(metadata float %4, metadata !446, metadata !DIExpression()), !dbg !451
  %5 = load float, ptr @obslight, align 4, !dbg !484
  %mul71 = fmul float %sqrtf, %5, !dbg !485
  call void @llvm.dbg.value(metadata float %mul71, metadata !447, metadata !DIExpression()), !dbg !451
  %6 = load float, ptr getelementptr inbounds ([3 x float], ptr @obshighlight, i64 0, i64 2), align 4, !dbg !486
  %7 = load float, ptr getelementptr inbounds ([3 x float], ptr @obshighlight, i64 0, i64 1), align 4, !dbg !487
  %mul75 = fmul float %7, %conv37, !dbg !488
  %8 = tail call float @llvm.fmuladd.f32(float %conv33, float %6, float %mul75), !dbg !489
  call void @llvm.dbg.value(metadata float %8, metadata !448, metadata !DIExpression()), !dbg !451
  %9 = load float, ptr @obshighlight, align 4, !dbg !490
  %mul77 = fmul float %sqrtf, %9, !dbg !491
  call void @llvm.dbg.value(metadata float %mul77, metadata !449, metadata !DIExpression()), !dbg !451
  %add79 = add nsw i64 %ynorm.0232, %mul78, !dbg !492
  %mul80 = shl nsw i64 %add79, 1, !dbg !493
  %add81 = add nsw i64 %mul80, 3968, !dbg !494
  call void @llvm.dbg.value(metadata i64 %add81, metadata !433, metadata !DIExpression()), !dbg !451
  %add82 = fadd float %4, %mul71, !dbg !495
  call void @llvm.dbg.value(metadata float %add82, metadata !442, metadata !DIExpression()), !dbg !451
  %cmp84 = fcmp ogt float %add82, 0.000000e+00, !dbg !496
  br i1 %cmp84, label %cond.true86, label %cond.end89, !dbg !496

cond.true86:                                      ; preds = %cond.end58
  %conv83 = fpext float %add82 to double, !dbg !496
  br label %cond.end89, !dbg !496

cond.end89:                                       ; preds = %cond.end58, %cond.true86
  %cond90 = phi double [ %conv83, %cond.true86 ], [ 0.000000e+00, %cond.end58 ], !dbg !496
  %conv91 = fptrunc double %cond90 to float, !dbg !496
  call void @llvm.dbg.value(metadata float %conv91, metadata !443, metadata !DIExpression()), !dbg !451
  %add92 = fadd float %8, %mul77, !dbg !497
  call void @llvm.dbg.value(metadata float %add92, metadata !442, metadata !DIExpression()), !dbg !451
  %cmp94 = fcmp ogt float %add92, 0.000000e+00, !dbg !498
  br i1 %cmp94, label %cond.true96, label %cond.end99, !dbg !498

cond.true96:                                      ; preds = %cond.end89
  %conv93 = fpext float %add92 to double, !dbg !498
  br label %cond.end99, !dbg !498

cond.end99:                                       ; preds = %cond.end89, %cond.true96
  %cond100 = phi double [ %conv93, %cond.true96 ], [ 0.000000e+00, %cond.end89 ], !dbg !498
  %conv101 = fptrunc double %cond100 to float, !dbg !498
  call void @llvm.dbg.value(metadata float %conv101, metadata !444, metadata !DIExpression()), !dbg !451
  %conv102 = fpext float %conv101 to double, !dbg !499
  %10 = load float, ptr @specular_exponent, align 4, !dbg !500
  %conv103 = fpext float %10 to double, !dbg !500
  %call104 = tail call double @pow(double noundef %conv102, double noundef %conv103) #6, !dbg !501
  %conv105 = fptrunc double %call104 to float, !dbg !501
  call void @llvm.dbg.value(metadata float %conv105, metadata !444, metadata !DIExpression()), !dbg !451
  %11 = load float, ptr @ambient_color, align 4, !dbg !502
  %12 = load float, ptr @diffuse_color, align 4, !dbg !503
  %13 = tail call float @llvm.fmuladd.f32(float %conv91, float %12, float %11), !dbg !504
  %14 = load float, ptr @specular_color, align 4, !dbg !505
  %15 = tail call float @llvm.fmuladd.f32(float %conv105, float %14, float %13), !dbg !506
  call void @llvm.dbg.value(metadata float %15, metadata !445, metadata !DIExpression()), !dbg !451
  %cmp108 = fcmp olt float %15, 2.550000e+02, !dbg !507
  br i1 %cmp108, label %cond.true110, label %cond.end112, !dbg !507

cond.true110:                                     ; preds = %cond.end99
  br label %cond.end112, !dbg !507

cond.end112:                                      ; preds = %cond.end99, %cond.true110
  %cond113 = phi float [ %15, %cond.true110 ], [ 2.550000e+02, %cond.end99 ], !dbg !507
  %conv114 = fpext float %cond113 to double, !dbg !507
  %add115 = fadd double %conv114, 5.000000e-01, !dbg !507
  %conv116 = fptosi double %add115 to i64, !dbg !507
  %conv117 = sitofp i64 %conv116 to float, !dbg !507
  call void @llvm.dbg.value(metadata float %conv117, metadata !445, metadata !DIExpression()), !dbg !451
  %conv118 = fptosi float %conv117 to i64, !dbg !508
  call void @llvm.dbg.value(metadata i64 %conv118, metadata !450, metadata !DIExpression()), !dbg !451
  %conv119 = trunc i64 %conv118 to i8, !dbg !509
  %16 = load ptr, ptr @shd_address, align 8, !dbg !510
  %add120 = add nsw i64 %mul80, 3969, !dbg !510
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %add120, !dbg !510
  store i8 %conv119, ptr %add.ptr, align 1, !dbg !511
  %cmp123 = fcmp ogt float %sqrtf, 0.000000e+00, !dbg !512
  br i1 %cmp123, label %if.then125, label %if.end, !dbg !514

if.then125:                                       ; preds = %cond.end112
  %sub126 = fsub float %4, %mul71, !dbg !515
  call void @llvm.dbg.value(metadata float %sub126, metadata !442, metadata !DIExpression()), !dbg !451
  %cmp128 = fcmp ogt float %sub126, 0.000000e+00, !dbg !517
  br i1 %cmp128, label %cond.true130, label %cond.end133, !dbg !517

cond.true130:                                     ; preds = %if.then125
  %conv127 = fpext float %sub126 to double, !dbg !517
  br label %cond.end133, !dbg !517

cond.end133:                                      ; preds = %if.then125, %cond.true130
  %cond134 = phi double [ %conv127, %cond.true130 ], [ 0.000000e+00, %if.then125 ], !dbg !517
  %conv135 = fptrunc double %cond134 to float, !dbg !517
  call void @llvm.dbg.value(metadata float %conv135, metadata !443, metadata !DIExpression()), !dbg !451
  %sub136 = fsub float %8, %mul77, !dbg !518
  call void @llvm.dbg.value(metadata float %sub136, metadata !442, metadata !DIExpression()), !dbg !451
  %cmp138 = fcmp ogt float %sub136, 0.000000e+00, !dbg !519
  br i1 %cmp138, label %cond.true140, label %cond.end143, !dbg !519

cond.true140:                                     ; preds = %cond.end133
  %conv137 = fpext float %sub136 to double, !dbg !519
  br label %cond.end143, !dbg !519

cond.end143:                                      ; preds = %cond.end133, %cond.true140
  %cond144 = phi double [ %conv137, %cond.true140 ], [ 0.000000e+00, %cond.end133 ], !dbg !519
  %conv145 = fptrunc double %cond144 to float, !dbg !519
  call void @llvm.dbg.value(metadata float %conv145, metadata !444, metadata !DIExpression()), !dbg !451
  %conv146 = fpext float %conv145 to double, !dbg !520
  %17 = load float, ptr @specular_exponent, align 4, !dbg !521
  %conv147 = fpext float %17 to double, !dbg !521
  %call148 = tail call double @pow(double noundef %conv146, double noundef %conv147) #6, !dbg !522
  %conv149 = fptrunc double %call148 to float, !dbg !522
  call void @llvm.dbg.value(metadata float %conv149, metadata !444, metadata !DIExpression()), !dbg !451
  %18 = load float, ptr @ambient_color, align 4, !dbg !523
  %19 = load float, ptr @diffuse_color, align 4, !dbg !524
  %20 = tail call float @llvm.fmuladd.f32(float %conv135, float %19, float %18), !dbg !525
  %21 = load float, ptr @specular_color, align 4, !dbg !526
  %22 = tail call float @llvm.fmuladd.f32(float %conv149, float %21, float %20), !dbg !527
  call void @llvm.dbg.value(metadata float %22, metadata !445, metadata !DIExpression()), !dbg !451
  %cmp152 = fcmp olt float %22, 2.550000e+02, !dbg !528
  br i1 %cmp152, label %cond.true154, label %cond.end156, !dbg !528

cond.true154:                                     ; preds = %cond.end143
  br label %cond.end156, !dbg !528

cond.end156:                                      ; preds = %cond.end143, %cond.true154
  %cond157 = phi float [ %22, %cond.true154 ], [ 2.550000e+02, %cond.end143 ], !dbg !528
  %conv158 = fpext float %cond157 to double, !dbg !528
  %add159 = fadd double %conv158, 5.000000e-01, !dbg !528
  %conv160 = fptosi double %add159 to i64, !dbg !528
  %conv161 = sitofp i64 %conv160 to float, !dbg !528
  call void @llvm.dbg.value(metadata float %conv161, metadata !445, metadata !DIExpression()), !dbg !451
  %.pre = fptosi float %conv161 to i64, !dbg !529
  %.pre236 = trunc i64 %.pre to i8, !dbg !530
  br label %if.end, !dbg !531

if.end:                                           ; preds = %cond.end156, %cond.end112
  %conv163.pre-phi = phi i8 [ %.pre236, %cond.end156 ], [ %conv119, %cond.end112 ], !dbg !530
  call void @llvm.dbg.value(metadata float undef, metadata !445, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata i64 undef, metadata !450, metadata !DIExpression()), !dbg !451
  %23 = load ptr, ptr @shd_address, align 8, !dbg !532
  %add.ptr164 = getelementptr inbounds i8, ptr %23, i64 %add81, !dbg !532
  store i8 %conv163.pre-phi, ptr %add.ptr164, align 1, !dbg !533
  br label %for.inc, !dbg !534

for.inc:                                          ; preds = %for.body29, %if.end
  %inc = add nsw i64 %ynorm.0232, 1, !dbg !535
  call void @llvm.dbg.value(metadata i64 %inc, metadata !431, metadata !DIExpression()), !dbg !451
  %exitcond.not = icmp eq i64 %inc, 32, !dbg !536
  br i1 %exitcond.not, label %for.inc166, label %for.body29, !dbg !463, !llvm.loop !537

for.inc166:                                       ; preds = %for.inc
  %inc167 = add nsw i64 %znorm.0235, 1, !dbg !539
  call void @llvm.dbg.value(metadata i64 %inc167, metadata !432, metadata !DIExpression()), !dbg !451
  %cmp23 = icmp slt i64 %inc167, %1, !dbg !459
  br i1 %cmp23, label %for.cond26.preheader, label %for.end168, !dbg !462, !llvm.loop !540

for.end168:                                       ; preds = %for.inc166, %cond.end
  call void @llvm.dbg.value(metadata i64 7879, metadata !433, metadata !DIExpression()), !dbg !451
  %24 = load float, ptr @ambient_color, align 4, !dbg !542
  %conv174 = fptosi float %24 to i64, !dbg !543
  call void @llvm.dbg.value(metadata i64 %conv174, metadata !450, metadata !DIExpression()), !dbg !451
  %conv175 = trunc i64 %conv174 to i8, !dbg !544
  %25 = load ptr, ptr @shd_address, align 8, !dbg !545
  %add.ptr176 = getelementptr inbounds i8, ptr %25, i64 7879, !dbg !545
  store i8 %conv175, ptr %add.ptr176, align 1, !dbg !546
  ret void, !dbg !547
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "raytrace.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "2337982906e2f5754541634a4afb3618")
!2 = !{!3, !4, !5}
!3 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!4 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!13 = distinct !DISubprogram(name: "Trace_Ray", scope: !1, file: !1, line: 58, type: !14, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !3, !3, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIXEL", file: !18, line: 30, baseType: !5)
!18 = !DIFile(filename: "./my_types.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "1c0e36810bc34cd72ba4bfe4a2cdcc97")
!19 = !{!20, !21, !22, !23, !28, !29, !30, !31, !32, !33, !34, !35, !36, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !58, !59, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !80, !81, !85, !86, !87, !88, !91, !93, !97, !98}
!20 = !DILocalVariable(name: "foutx", arg: 1, scope: !13, file: !1, line: 59, type: !3)
!21 = !DILocalVariable(name: "fouty", arg: 2, scope: !13, file: !1, line: 59, type: !3)
!22 = !DILocalVariable(name: "pixel_address", arg: 3, scope: !13, file: !1, line: 60, type: !16)
!23 = !DILocalVariable(name: "ray", scope: !13, file: !1, line: 62, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 192, elements: !25)
!25 = !{!26, !27}
!26 = !DISubrange(count: 2)
!27 = !DISubrange(count: 3)
!28 = !DILocalVariable(name: "rmin", scope: !13, file: !1, line: 66, type: !3)
!29 = !DILocalVariable(name: "rmax", scope: !13, file: !1, line: 66, type: !3)
!30 = !DILocalVariable(name: "ray_min", scope: !13, file: !1, line: 70, type: !3)
!31 = !DILocalVariable(name: "ray_max", scope: !13, file: !1, line: 70, type: !3)
!32 = !DILocalVariable(name: "segment_zmin", scope: !13, file: !1, line: 74, type: !4)
!33 = !DILocalVariable(name: "segment_zmax", scope: !13, file: !1, line: 75, type: !4)
!34 = !DILocalVariable(name: "span_zmin", scope: !13, file: !1, line: 76, type: !4)
!35 = !DILocalVariable(name: "span_zmax", scope: !13, file: !1, line: 77, type: !4)
!36 = !DILocalVariable(name: "sample", scope: !13, file: !1, line: 78, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 96, elements: !38)
!38 = !{!27}
!39 = !DILocalVariable(name: "sample2", scope: !13, file: !1, line: 79, type: !37)
!40 = !DILocalVariable(name: "outz", scope: !13, file: !1, line: 80, type: !4)
!41 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 81, type: !4)
!42 = !DILocalVariable(name: "samplex", scope: !13, file: !1, line: 81, type: !4)
!43 = !DILocalVariable(name: "sampley", scope: !13, file: !1, line: 81, type: !4)
!44 = !DILocalVariable(name: "samplez", scope: !13, file: !1, line: 81, type: !4)
!45 = !DILocalVariable(name: "sample2x", scope: !13, file: !1, line: 82, type: !4)
!46 = !DILocalVariable(name: "sample2y", scope: !13, file: !1, line: 82, type: !4)
!47 = !DILocalVariable(name: "sample2z", scope: !13, file: !1, line: 82, type: !4)
!48 = !DILocalVariable(name: "box_zmin", scope: !13, file: !1, line: 84, type: !3)
!49 = !DILocalVariable(name: "box_zmax", scope: !13, file: !1, line: 84, type: !3)
!50 = !DILocalVariable(name: "starting_level", scope: !13, file: !1, line: 85, type: !4)
!51 = !DILocalVariable(name: "level", scope: !13, file: !1, line: 85, type: !4)
!52 = !DILocalVariable(name: "jump", scope: !13, file: !1, line: 86, type: !37)
!53 = !DILocalVariable(name: "min_jump", scope: !13, file: !1, line: 86, type: !3)
!54 = !DILocalVariable(name: "voxel", scope: !13, file: !1, line: 87, type: !37)
!55 = !DILocalVariable(name: "next_voxel", scope: !13, file: !1, line: 87, type: !37)
!56 = !DILocalVariable(name: "ivoxel", scope: !13, file: !1, line: 88, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !38)
!58 = !DILocalVariable(name: "next_ivoxel", scope: !13, file: !1, line: 88, type: !57)
!59 = !DILocalVariable(name: "bit", scope: !13, file: !1, line: 89, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOLEAN", file: !18, line: 34, baseType: !61)
!61 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!62 = !DILocalVariable(name: "xalpha", scope: !13, file: !1, line: 91, type: !3)
!63 = !DILocalVariable(name: "yalpha", scope: !13, file: !1, line: 91, type: !3)
!64 = !DILocalVariable(name: "zalpha", scope: !13, file: !1, line: 91, type: !3)
!65 = !DILocalVariable(name: "one_minus_xalpha", scope: !13, file: !1, line: 92, type: !3)
!66 = !DILocalVariable(name: "one_minus_yalpha", scope: !13, file: !1, line: 92, type: !3)
!67 = !DILocalVariable(name: "one_minus_zalpha", scope: !13, file: !1, line: 92, type: !3)
!68 = !DILocalVariable(name: "weight", scope: !13, file: !1, line: 93, type: !3)
!69 = !DILocalVariable(name: "wopacity", scope: !13, file: !1, line: 93, type: !3)
!70 = !DILocalVariable(name: "wopacitysum", scope: !13, file: !1, line: 93, type: !3)
!71 = !DILocalVariable(name: "wcolorsum", scope: !13, file: !1, line: 93, type: !3)
!72 = !DILocalVariable(name: "additional_opacity", scope: !13, file: !1, line: 94, type: !3)
!73 = !DILocalVariable(name: "color", scope: !13, file: !1, line: 96, type: !3)
!74 = !DILocalVariable(name: "opacity", scope: !13, file: !1, line: 97, type: !3)
!75 = !DILocalVariable(name: "ray_color", scope: !13, file: !1, line: 98, type: !3)
!76 = !DILocalVariable(name: "ray_opacity", scope: !13, file: !1, line: 98, type: !3)
!77 = !DILocalVariable(name: "local_opc_address", scope: !13, file: !1, line: 100, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "OPACITY", file: !18, line: 33, baseType: !5)
!80 = !DILocalVariable(name: "local2_opc_address", scope: !13, file: !1, line: 100, type: !78)
!81 = !DILocalVariable(name: "local_norm_address", scope: !13, file: !1, line: 101, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "NORMAL", file: !18, line: 29, baseType: !84)
!84 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!85 = !DILocalVariable(name: "local2_norm_address", scope: !13, file: !1, line: 101, type: !82)
!86 = !DILocalVariable(name: "pyr_offset1", scope: !13, file: !1, line: 103, type: !4)
!87 = !DILocalVariable(name: "pyr_offset2", scope: !13, file: !1, line: 104, type: !4)
!88 = !DILocalVariable(name: "pyr_address2", scope: !13, file: !1, line: 105, type: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !18, line: 28, baseType: !5)
!91 = !DILabel(scope: !92, name: "next_box", file: !1, line: 269)
!92 = distinct !DILexicalBlock(scope: !13, file: !1, line: 192, column: 13)
!93 = !DILabel(scope: !94, name: "end_of_sample", file: !1, line: 466)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 329, column: 49)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 329, column: 3)
!96 = distinct !DILexicalBlock(scope: !13, file: !1, line: 329, column: 3)
!97 = !DILabel(scope: !13, name: "end_of_segment", file: !1, line: 476)
!98 = !DILabel(scope: !13, name: "end_of_ray", file: !1, line: 481)
!99 = !DILocation(line: 0, scope: !13)
!100 = !DILocation(line: 62, column: 3, scope: !13)
!101 = !DILocation(line: 62, column: 9, scope: !13)
!102 = !DILocation(line: 114, column: 3, scope: !103)
!103 = distinct !DILexicalBlock(scope: !13, file: !1, line: 114, column: 3)
!104 = !DILocation(line: 115, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 114, column: 24)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 114, column: 3)
!107 = !DILocation(line: 116, column: 7, scope: !105)
!108 = !DILocation(line: 115, column: 43, scope: !105)
!109 = !DILocation(line: 117, column: 2, scope: !105)
!110 = !DILocation(line: 116, column: 31, scope: !105)
!111 = !DILocation(line: 115, column: 5, scope: !105)
!112 = !DILocation(line: 115, column: 15, scope: !105)
!113 = !DILocation(line: 118, column: 29, scope: !105)
!114 = !DILocation(line: 118, column: 27, scope: !105)
!115 = !DILocation(line: 118, column: 5, scope: !105)
!116 = !DILocation(line: 118, column: 15, scope: !105)
!117 = !DILocation(line: 114, column: 20, scope: !106)
!118 = !DILocation(line: 114, column: 14, scope: !106)
!119 = distinct !{!119, !102, !120, !121, !122}
!120 = !DILocation(line: 119, column: 3, scope: !103)
!121 = !{!"llvm.loop.mustprogress"}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = !DILocation(line: 133, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !1, line: 133, column: 9)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 132, column: 24)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 132, column: 3)
!127 = distinct !DILexicalBlock(scope: !13, file: !1, line: 132, column: 3)
!128 = !DILocation(line: 133, column: 36, scope: !124)
!129 = !DILocation(line: 133, column: 9, scope: !125)
!130 = !DILocation(line: 134, column: 22, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 134, column: 11)
!132 = distinct !DILexicalBlock(scope: !124, file: !1, line: 133, column: 45)
!133 = !DILocation(line: 134, column: 28, scope: !131)
!134 = !DILocation(line: 136, column: 25, scope: !131)
!135 = !DILocation(line: 136, column: 35, scope: !131)
!136 = !DILocation(line: 136, column: 17, scope: !131)
!137 = !DILocation(line: 136, column: 15, scope: !131)
!138 = !DILocation(line: 136, column: 39, scope: !131)
!139 = !DILocation(line: 142, column: 19, scope: !125)
!140 = !DILocation(line: 142, column: 17, scope: !125)
!141 = !DILocation(line: 142, column: 32, scope: !125)
!142 = !DILocation(line: 142, column: 30, scope: !125)
!143 = !DILocation(line: 142, column: 12, scope: !125)
!144 = !DILocation(line: 143, column: 21, scope: !125)
!145 = !DILocation(line: 143, column: 31, scope: !125)
!146 = !DILocation(line: 143, column: 13, scope: !125)
!147 = !DILocation(line: 143, column: 35, scope: !125)
!148 = !DILocation(line: 143, column: 48, scope: !125)
!149 = !DILocation(line: 144, column: 15, scope: !125)
!150 = !DILocation(line: 145, column: 15, scope: !125)
!151 = !DILocation(line: 132, column: 20, scope: !126)
!152 = !DILocation(line: 132, column: 14, scope: !126)
!153 = !DILocation(line: 132, column: 3, scope: !127)
!154 = distinct !{!154, !153, !155, !121, !122}
!155 = !DILocation(line: 146, column: 3, scope: !127)
!156 = !DILocation(line: 157, column: 18, scope: !13)
!157 = !DILocation(line: 158, column: 18, scope: !13)
!158 = !DILocation(line: 161, column: 20, scope: !159)
!159 = distinct !DILexicalBlock(scope: !13, file: !1, line: 161, column: 7)
!160 = !DILocation(line: 161, column: 7, scope: !13)
!161 = !DILocation(line: 182, column: 14, scope: !13)
!162 = !DILocation(line: 183, column: 14, scope: !13)
!163 = !DILocation(line: 183, column: 26, scope: !13)
!164 = !DILocation(line: 183, column: 24, scope: !13)
!165 = !DILocation(line: 184, column: 14, scope: !13)
!166 = !DILocation(line: 184, column: 26, scope: !13)
!167 = !DILocation(line: 184, column: 24, scope: !13)
!168 = !DILocation(line: 185, column: 14, scope: !13)
!169 = !DILocation(line: 185, column: 26, scope: !13)
!170 = !DILocation(line: 185, column: 24, scope: !13)
!171 = !DILocation(line: 186, column: 15, scope: !13)
!172 = !DILocation(line: 187, column: 15, scope: !13)
!173 = !DILocation(line: 188, column: 15, scope: !13)
!174 = !DILocation(line: 189, column: 20, scope: !13)
!175 = !DILocation(line: 192, column: 3, scope: !13)
!176 = !DILocation(line: 198, column: 11, scope: !92)
!177 = !DILocation(line: 201, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !92, file: !1, line: 201, column: 9)
!179 = !DILocation(line: 201, column: 13, scope: !178)
!180 = !DILocation(line: 206, column: 12, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !1, line: 201, column: 42)
!182 = distinct !{!182, !175, !183, !122}
!183 = !DILocation(line: 309, column: 3, scope: !13)
!184 = !DILocation(line: 218, column: 9, scope: !92)
!185 = !DILocation(line: 220, column: 5, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 218, column: 36)
!187 = distinct !DILexicalBlock(scope: !92, file: !1, line: 218, column: 9)
!188 = !DILocation(line: 220, column: 24, scope: !186)
!189 = !DILocation(line: 220, column: 32, scope: !186)
!190 = !DILocation(line: 221, column: 3, scope: !186)
!191 = !DILocation(line: 220, column: 35, scope: !186)
!192 = !DILocation(line: 220, column: 3, scope: !186)
!193 = !DILocation(line: 221, column: 23, scope: !186)
!194 = !DILocation(line: 219, column: 38, scope: !186)
!195 = !DILocation(line: 222, column: 18, scope: !186)
!196 = !DILocation(line: 223, column: 5, scope: !186)
!197 = !DILocation(line: 224, column: 14, scope: !187)
!198 = !DILocation(line: 226, column: 4, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 224, column: 42)
!200 = distinct !DILexicalBlock(scope: !187, file: !1, line: 224, column: 14)
!201 = !DILocation(line: 226, column: 22, scope: !199)
!202 = !DILocation(line: 227, column: 3, scope: !199)
!203 = !DILocation(line: 226, column: 30, scope: !199)
!204 = !DILocation(line: 226, column: 3, scope: !199)
!205 = !DILocation(line: 227, column: 23, scope: !199)
!206 = !DILocation(line: 225, column: 38, scope: !199)
!207 = !DILocation(line: 228, column: 18, scope: !199)
!208 = !DILocation(line: 229, column: 7, scope: !199)
!209 = !DILocation(line: 0, scope: !92)
!210 = !DILocation(line: 230, column: 9, scope: !92)
!211 = !DILocation(line: 232, column: 5, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 230, column: 36)
!213 = distinct !DILexicalBlock(scope: !92, file: !1, line: 230, column: 9)
!214 = !DILocation(line: 232, column: 24, scope: !212)
!215 = !DILocation(line: 232, column: 32, scope: !212)
!216 = !DILocation(line: 233, column: 3, scope: !212)
!217 = !DILocation(line: 232, column: 35, scope: !212)
!218 = !DILocation(line: 232, column: 3, scope: !212)
!219 = !DILocation(line: 233, column: 23, scope: !212)
!220 = !DILocation(line: 231, column: 38, scope: !212)
!221 = !DILocation(line: 234, column: 18, scope: !212)
!222 = !DILocation(line: 235, column: 5, scope: !212)
!223 = !DILocation(line: 236, column: 14, scope: !213)
!224 = !DILocation(line: 238, column: 4, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 236, column: 42)
!226 = distinct !DILexicalBlock(scope: !213, file: !1, line: 236, column: 14)
!227 = !DILocation(line: 238, column: 22, scope: !225)
!228 = !DILocation(line: 239, column: 3, scope: !225)
!229 = !DILocation(line: 238, column: 30, scope: !225)
!230 = !DILocation(line: 238, column: 3, scope: !225)
!231 = !DILocation(line: 239, column: 23, scope: !225)
!232 = !DILocation(line: 237, column: 38, scope: !225)
!233 = !DILocation(line: 240, column: 18, scope: !225)
!234 = !DILocation(line: 241, column: 5, scope: !225)
!235 = !DILocation(line: 242, column: 9, scope: !92)
!236 = !DILocation(line: 244, column: 5, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 242, column: 36)
!238 = distinct !DILexicalBlock(scope: !92, file: !1, line: 242, column: 9)
!239 = !DILocation(line: 244, column: 24, scope: !237)
!240 = !DILocation(line: 244, column: 32, scope: !237)
!241 = !DILocation(line: 245, column: 3, scope: !237)
!242 = !DILocation(line: 244, column: 35, scope: !237)
!243 = !DILocation(line: 244, column: 3, scope: !237)
!244 = !DILocation(line: 245, column: 23, scope: !237)
!245 = !DILocation(line: 243, column: 38, scope: !237)
!246 = !DILocation(line: 246, column: 18, scope: !237)
!247 = !DILocation(line: 247, column: 5, scope: !237)
!248 = !DILocation(line: 248, column: 14, scope: !238)
!249 = !DILocation(line: 250, column: 4, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 248, column: 42)
!251 = distinct !DILexicalBlock(scope: !238, file: !1, line: 248, column: 14)
!252 = !DILocation(line: 250, column: 22, scope: !250)
!253 = !DILocation(line: 251, column: 3, scope: !250)
!254 = !DILocation(line: 250, column: 30, scope: !250)
!255 = !DILocation(line: 250, column: 3, scope: !250)
!256 = !DILocation(line: 251, column: 23, scope: !250)
!257 = !DILocation(line: 249, column: 38, scope: !250)
!258 = !DILocation(line: 252, column: 18, scope: !250)
!259 = !DILocation(line: 253, column: 5, scope: !250)
!260 = !DILocation(line: 254, column: 25, scope: !92)
!261 = !DILocation(line: 256, column: 9, scope: !262)
!262 = distinct !DILexicalBlock(scope: !92, file: !1, line: 256, column: 9)
!263 = !DILocation(line: 256, column: 9, scope: !92)
!264 = !DILocation(line: 109, column: 13, scope: !13)
!265 = !DILocation(line: 110, column: 15, scope: !13)
!266 = !DILocation(line: 269, column: 3, scope: !92)
!267 = !DILocation(line: 270, column: 18, scope: !268)
!268 = distinct !DILexicalBlock(scope: !92, file: !1, line: 270, column: 9)
!269 = !DILocation(line: 270, column: 9, scope: !92)
!270 = !DILocation(line: 276, column: 30, scope: !92)
!271 = !DILocation(line: 277, column: 30, scope: !92)
!272 = !DILocation(line: 278, column: 30, scope: !92)
!273 = !DILocation(line: 279, column: 22, scope: !92)
!274 = !DILocation(line: 280, column: 22, scope: !92)
!275 = !DILocation(line: 281, column: 22, scope: !92)
!276 = !DILocation(line: 288, column: 18, scope: !92)
!277 = !DILocation(line: 288, column: 5, scope: !92)
!278 = !DILocation(line: 289, column: 32, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 289, column: 10)
!280 = distinct !DILexicalBlock(scope: !92, file: !1, line: 288, column: 36)
!281 = !DILocation(line: 289, column: 24, scope: !279)
!282 = !DILocation(line: 290, column: 12, scope: !279)
!283 = !DILocation(line: 289, column: 36, scope: !279)
!284 = !DILocation(line: 290, column: 24, scope: !279)
!285 = !DILocation(line: 291, column: 17, scope: !279)
!286 = !DILocation(line: 292, column: 12, scope: !279)
!287 = !DILocation(line: 291, column: 29, scope: !279)
!288 = !DILocation(line: 292, column: 24, scope: !279)
!289 = !DILocation(line: 293, column: 17, scope: !279)
!290 = !DILocation(line: 294, column: 12, scope: !279)
!291 = !DILocation(line: 293, column: 29, scope: !279)
!292 = !DILocation(line: 289, column: 10, scope: !280)
!293 = !DILocation(line: 318, column: 15, scope: !13)
!294 = !DILocation(line: 319, column: 15, scope: !13)
!295 = !DILocation(line: 322, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !13, file: !1, line: 322, column: 7)
!297 = !DILocation(line: 322, column: 7, scope: !13)
!298 = !DILocation(line: 325, column: 45, scope: !13)
!299 = !DILocation(line: 325, column: 25, scope: !13)
!300 = !DILocation(line: 326, column: 25, scope: !13)
!301 = !DILocation(line: 327, column: 25, scope: !13)
!302 = !DILocation(line: 329, column: 3, scope: !96)
!303 = !DILocation(line: 336, column: 13, scope: !94)
!304 = !DILocation(line: 337, column: 13, scope: !94)
!305 = !DILocation(line: 338, column: 13, scope: !94)
!306 = !DILocation(line: 340, column: 11, scope: !94)
!307 = !DILocation(line: 341, column: 12, scope: !308)
!308 = distinct !DILexicalBlock(scope: !94, file: !1, line: 341, column: 11)
!309 = !DILocation(line: 341, column: 11, scope: !94)
!310 = !DILocation(line: 356, column: 18, scope: !94)
!311 = !DILocation(line: 357, column: 18, scope: !94)
!312 = !DILocation(line: 361, column: 16, scope: !94)
!313 = !DILocation(line: 358, column: 18, scope: !94)
!314 = !DILocation(line: 360, column: 16, scope: !94)
!315 = !DILocation(line: 362, column: 16, scope: !94)
!316 = !DILocation(line: 364, column: 33, scope: !94)
!317 = !DILocation(line: 364, column: 25, scope: !94)
!318 = !DILocation(line: 364, column: 24, scope: !94)
!319 = !DILocation(line: 365, column: 25, scope: !94)
!320 = !DILocation(line: 365, column: 24, scope: !94)
!321 = !DILocation(line: 366, column: 25, scope: !94)
!322 = !DILocation(line: 366, column: 24, scope: !94)
!323 = !DILocation(line: 368, column: 25, scope: !94)
!324 = !DILocation(line: 369, column: 26, scope: !94)
!325 = !DILocation(line: 375, column: 24, scope: !94)
!326 = !DILocation(line: 376, column: 24, scope: !94)
!327 = !DILocation(line: 377, column: 24, scope: !94)
!328 = !DILocation(line: 379, column: 21, scope: !94)
!329 = !DILocation(line: 379, column: 40, scope: !94)
!330 = !DILocation(line: 380, column: 34, scope: !94)
!331 = !DILocation(line: 380, column: 16, scope: !94)
!332 = !DILocation(line: 380, column: 37, scope: !94)
!333 = !DILocation(line: 381, column: 13, scope: !94)
!334 = !DILocation(line: 382, column: 23, scope: !94)
!335 = !DILocation(line: 385, column: 31, scope: !94)
!336 = !DILocation(line: 385, column: 50, scope: !94)
!337 = !DILocation(line: 386, column: 16, scope: !94)
!338 = !DILocation(line: 386, column: 35, scope: !94)
!339 = !DILocation(line: 387, column: 13, scope: !94)
!340 = !DILocation(line: 388, column: 15, scope: !94)
!341 = !DILocation(line: 389, column: 17, scope: !94)
!342 = !DILocation(line: 391, column: 21, scope: !94)
!343 = !DILocation(line: 391, column: 30, scope: !94)
!344 = !DILocation(line: 392, column: 43, scope: !94)
!345 = !DILocation(line: 393, column: 45, scope: !94)
!346 = !DILocation(line: 394, column: 35, scope: !94)
!347 = !DILocation(line: 394, column: 16, scope: !94)
!348 = !DILocation(line: 394, column: 38, scope: !94)
!349 = !DILocation(line: 395, column: 13, scope: !94)
!350 = !DILocation(line: 396, column: 15, scope: !94)
!351 = !DILocation(line: 397, column: 17, scope: !94)
!352 = !DILocation(line: 399, column: 31, scope: !94)
!353 = !DILocation(line: 399, column: 40, scope: !94)
!354 = !DILocation(line: 400, column: 16, scope: !94)
!355 = !DILocation(line: 400, column: 36, scope: !94)
!356 = !DILocation(line: 401, column: 13, scope: !94)
!357 = !DILocation(line: 402, column: 15, scope: !94)
!358 = !DILocation(line: 403, column: 17, scope: !94)
!359 = !DILocation(line: 405, column: 40, scope: !94)
!360 = !DILocation(line: 406, column: 42, scope: !94)
!361 = !DILocation(line: 407, column: 44, scope: !94)
!362 = !DILocation(line: 408, column: 34, scope: !94)
!363 = !DILocation(line: 408, column: 16, scope: !94)
!364 = !DILocation(line: 408, column: 37, scope: !94)
!365 = !DILocation(line: 409, column: 13, scope: !94)
!366 = !DILocation(line: 410, column: 15, scope: !94)
!367 = !DILocation(line: 411, column: 17, scope: !94)
!368 = !DILocation(line: 413, column: 50, scope: !94)
!369 = !DILocation(line: 414, column: 16, scope: !94)
!370 = !DILocation(line: 414, column: 35, scope: !94)
!371 = !DILocation(line: 415, column: 13, scope: !94)
!372 = !DILocation(line: 416, column: 15, scope: !94)
!373 = !DILocation(line: 417, column: 17, scope: !94)
!374 = !DILocation(line: 419, column: 30, scope: !94)
!375 = !DILocation(line: 420, column: 43, scope: !94)
!376 = !DILocation(line: 421, column: 45, scope: !94)
!377 = !DILocation(line: 422, column: 35, scope: !94)
!378 = !DILocation(line: 422, column: 16, scope: !94)
!379 = !DILocation(line: 422, column: 38, scope: !94)
!380 = !DILocation(line: 423, column: 13, scope: !94)
!381 = !DILocation(line: 424, column: 15, scope: !94)
!382 = !DILocation(line: 425, column: 17, scope: !94)
!383 = !DILocation(line: 427, column: 40, scope: !94)
!384 = !DILocation(line: 428, column: 16, scope: !94)
!385 = !DILocation(line: 428, column: 36, scope: !94)
!386 = !DILocation(line: 429, column: 13, scope: !94)
!387 = !DILocation(line: 430, column: 15, scope: !94)
!388 = !DILocation(line: 431, column: 17, scope: !94)
!389 = !DILocation(line: 433, column: 15, scope: !94)
!390 = !DILocation(line: 433, column: 27, scope: !94)
!391 = !DILocation(line: 434, column: 13, scope: !94)
!392 = !DILocation(line: 434, column: 23, scope: !94)
!393 = !DILocation(line: 439, column: 14, scope: !94)
!394 = !DILocation(line: 439, column: 11, scope: !94)
!395 = !DILocation(line: 451, column: 26, scope: !94)
!396 = !DILocation(line: 451, column: 41, scope: !94)
!397 = !DILocation(line: 451, column: 40, scope: !94)
!398 = !DILocation(line: 451, column: 34, scope: !94)
!399 = !DILocation(line: 452, column: 18, scope: !94)
!400 = !DILocation(line: 452, column: 15, scope: !94)
!401 = !DILocation(line: 453, column: 17, scope: !94)
!402 = !DILocation(line: 461, column: 21, scope: !403)
!403 = distinct !DILexicalBlock(scope: !94, file: !1, line: 461, column: 9)
!404 = !DILocation(line: 461, column: 9, scope: !94)
!405 = !DILocation(line: 466, column: 3, scope: !94)
!406 = !DILocation(line: 467, column: 15, scope: !94)
!407 = !DILocation(line: 468, column: 15, scope: !94)
!408 = !DILocation(line: 469, column: 15, scope: !94)
!409 = !DILocation(line: 329, column: 45, scope: !95)
!410 = !DILocation(line: 329, column: 28, scope: !95)
!411 = distinct !{!411, !302, !412, !121, !122}
!412 = !DILocation(line: 470, column: 3, scope: !96)
!413 = !DILocation(line: 476, column: 2, scope: !13)
!414 = !DILocation(line: 479, column: 22, scope: !415)
!415 = distinct !DILexicalBlock(scope: !13, file: !1, line: 479, column: 7)
!416 = !DILocation(line: 479, column: 19, scope: !415)
!417 = !DILocation(line: 479, column: 7, scope: !13)
!418 = !DILocation(line: 481, column: 2, scope: !13)
!419 = !DILocation(line: 486, column: 24, scope: !13)
!420 = !DILocation(line: 487, column: 16, scope: !13)
!421 = !DILocation(line: 487, column: 13, scope: !13)
!422 = !DILocation(line: 488, column: 20, scope: !13)
!423 = !DILocation(line: 488, column: 18, scope: !13)
!424 = !DILocation(line: 489, column: 1, scope: !13)
!425 = distinct !DISubprogram(name: "Pre_Shade", scope: !1, file: !1, line: 492, type: !426, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !4}
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!429 = !DILocalVariable(name: "my_node", arg: 1, scope: !425, file: !1, line: 492, type: !4)
!430 = !DILocalVariable(name: "xnorm", scope: !425, file: !1, line: 494, type: !4)
!431 = !DILocalVariable(name: "ynorm", scope: !425, file: !1, line: 494, type: !4)
!432 = !DILocalVariable(name: "znorm", scope: !425, file: !1, line: 494, type: !4)
!433 = !DILocalVariable(name: "table_addr", scope: !425, file: !1, line: 494, type: !4)
!434 = !DILocalVariable(name: "norm_lshift", scope: !425, file: !1, line: 494, type: !4)
!435 = !DILocalVariable(name: "shd_table_partition", scope: !425, file: !1, line: 495, type: !4)
!436 = !DILocalVariable(name: "zstart", scope: !425, file: !1, line: 495, type: !4)
!437 = !DILocalVariable(name: "zstop", scope: !425, file: !1, line: 495, type: !4)
!438 = !DILocalVariable(name: "mag", scope: !425, file: !1, line: 496, type: !3)
!439 = !DILocalVariable(name: "error", scope: !425, file: !1, line: 496, type: !3)
!440 = !DILocalVariable(name: "inv_num_nodes", scope: !425, file: !1, line: 496, type: !3)
!441 = !DILocalVariable(name: "normal", scope: !425, file: !1, line: 497, type: !37)
!442 = !DILocalVariable(name: "dot_product", scope: !425, file: !1, line: 498, type: !3)
!443 = !DILocalVariable(name: "diffuse", scope: !425, file: !1, line: 498, type: !3)
!444 = !DILocalVariable(name: "specular", scope: !425, file: !1, line: 498, type: !3)
!445 = !DILocalVariable(name: "color", scope: !425, file: !1, line: 498, type: !3)
!446 = !DILocalVariable(name: "dpartial_product1", scope: !425, file: !1, line: 499, type: !3)
!447 = !DILocalVariable(name: "dpartial_product2", scope: !425, file: !1, line: 499, type: !3)
!448 = !DILocalVariable(name: "spartial_product1", scope: !425, file: !1, line: 500, type: !3)
!449 = !DILocalVariable(name: "spartial_product2", scope: !425, file: !1, line: 500, type: !3)
!450 = !DILocalVariable(name: "temp", scope: !425, file: !1, line: 501, type: !4)
!451 = !DILocation(line: 0, scope: !425)
!452 = !DILocation(line: 503, column: 30, scope: !425)
!453 = !DILocation(line: 503, column: 23, scope: !425)
!454 = !DILocation(line: 503, column: 19, scope: !425)
!455 = !DILocation(line: 508, column: 25, scope: !425)
!456 = !DILocation(line: 509, column: 47, scope: !425)
!457 = !DILocation(line: 509, column: 25, scope: !425)
!458 = !DILocation(line: 510, column: 11, scope: !425)
!459 = !DILocation(line: 524, column: 30, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 524, column: 3)
!461 = distinct !DILexicalBlock(scope: !425, file: !1, line: 524, column: 3)
!462 = !DILocation(line: 524, column: 3, scope: !461)
!463 = !DILocation(line: 525, column: 5, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 525, column: 5)
!465 = distinct !DILexicalBlock(scope: !460, file: !1, line: 524, column: 48)
!466 = !DILocation(line: 527, column: 19, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 525, column: 63)
!468 = distinct !DILexicalBlock(scope: !464, file: !1, line: 525, column: 5)
!469 = !DILocation(line: 527, column: 32, scope: !467)
!470 = !DILocation(line: 528, column: 53, scope: !467)
!471 = !DILocation(line: 528, column: 43, scope: !467)
!472 = !DILocation(line: 528, column: 41, scope: !467)
!473 = !DILocation(line: 528, column: 13, scope: !467)
!474 = !DILocation(line: 529, column: 15, scope: !475)
!475 = distinct !DILexicalBlock(scope: !467, file: !1, line: 529, column: 11)
!476 = !DILocation(line: 529, column: 11, scope: !467)
!477 = !DILocation(line: 530, column: 8, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !1, line: 529, column: 24)
!479 = !DILocation(line: 531, column: 14, scope: !478)
!480 = !DILocation(line: 533, column: 34, scope: !478)
!481 = !DILocation(line: 533, column: 60, scope: !478)
!482 = !DILocation(line: 533, column: 58, scope: !478)
!483 = !DILocation(line: 533, column: 46, scope: !478)
!484 = !DILocation(line: 534, column: 34, scope: !478)
!485 = !DILocation(line: 534, column: 32, scope: !478)
!486 = !DILocation(line: 535, column: 34, scope: !478)
!487 = !DILocation(line: 536, column: 16, scope: !478)
!488 = !DILocation(line: 536, column: 14, scope: !478)
!489 = !DILocation(line: 535, column: 50, scope: !478)
!490 = !DILocation(line: 537, column: 34, scope: !478)
!491 = !DILocation(line: 537, column: 32, scope: !478)
!492 = !DILocation(line: 538, column: 46, scope: !478)
!493 = !DILocation(line: 538, column: 53, scope: !478)
!494 = !DILocation(line: 538, column: 27, scope: !478)
!495 = !DILocation(line: 539, column: 34, scope: !478)
!496 = !DILocation(line: 540, column: 12, scope: !478)
!497 = !DILocation(line: 541, column: 34, scope: !478)
!498 = !DILocation(line: 542, column: 13, scope: !478)
!499 = !DILocation(line: 543, column: 17, scope: !478)
!500 = !DILocation(line: 543, column: 26, scope: !478)
!501 = !DILocation(line: 543, column: 13, scope: !478)
!502 = !DILocation(line: 544, column: 10, scope: !478)
!503 = !DILocation(line: 544, column: 34, scope: !478)
!504 = !DILocation(line: 544, column: 24, scope: !478)
!505 = !DILocation(line: 545, column: 13, scope: !478)
!506 = !DILocation(line: 544, column: 48, scope: !478)
!507 = !DILocation(line: 546, column: 10, scope: !478)
!508 = !DILocation(line: 547, column: 9, scope: !478)
!509 = !DILocation(line: 548, column: 22, scope: !478)
!510 = !DILocation(line: 548, column: 2, scope: !478)
!511 = !DILocation(line: 548, column: 20, scope: !478)
!512 = !DILocation(line: 549, column: 16, scope: !513)
!513 = distinct !DILexicalBlock(scope: !478, file: !1, line: 549, column: 6)
!514 = !DILocation(line: 549, column: 6, scope: !478)
!515 = !DILocation(line: 550, column: 36, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !1, line: 549, column: 23)
!517 = !DILocation(line: 551, column: 14, scope: !516)
!518 = !DILocation(line: 552, column: 36, scope: !516)
!519 = !DILocation(line: 553, column: 15, scope: !516)
!520 = !DILocation(line: 554, column: 19, scope: !516)
!521 = !DILocation(line: 554, column: 28, scope: !516)
!522 = !DILocation(line: 554, column: 15, scope: !516)
!523 = !DILocation(line: 555, column: 12, scope: !516)
!524 = !DILocation(line: 555, column: 36, scope: !516)
!525 = !DILocation(line: 555, column: 26, scope: !516)
!526 = !DILocation(line: 556, column: 15, scope: !516)
!527 = !DILocation(line: 555, column: 50, scope: !516)
!528 = !DILocation(line: 557, column: 12, scope: !516)
!529 = !DILocation(line: 559, column: 9, scope: !478)
!530 = !DILocation(line: 560, column: 20, scope: !478)
!531 = !DILocation(line: 558, column: 2, scope: !516)
!532 = !DILocation(line: 560, column: 2, scope: !478)
!533 = !DILocation(line: 560, column: 18, scope: !478)
!534 = !DILocation(line: 561, column: 7, scope: !478)
!535 = !DILocation(line: 525, column: 59, scope: !468)
!536 = !DILocation(line: 525, column: 38, scope: !468)
!537 = distinct !{!537, !463, !538, !121, !122}
!538 = !DILocation(line: 562, column: 5, scope: !464)
!539 = !DILocation(line: 524, column: 44, scope: !460)
!540 = distinct !{!540, !462, !541, !121, !122}
!541 = !DILocation(line: 563, column: 3, scope: !461)
!542 = !DILocation(line: 565, column: 17, scope: !425)
!543 = !DILocation(line: 565, column: 10, scope: !425)
!544 = !DILocation(line: 566, column: 21, scope: !425)
!545 = !DILocation(line: 566, column: 3, scope: !425)
!546 = !DILocation(line: 566, column: 19, scope: !425)
!547 = !DILocation(line: 567, column: 1, scope: !425)
