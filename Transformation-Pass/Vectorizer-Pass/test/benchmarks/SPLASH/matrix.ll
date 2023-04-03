; ModuleID = 'matrix.c'
source_filename = "matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%f  \00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unknown rotation axis %ld.\0A\00", align 1

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local void @VecNorm(ptr nocapture noundef %V) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %V, metadata !17, metadata !DIExpression()), !dbg !19
  %0 = load double, ptr %V, align 8, !dbg !20
  %arrayidx2 = getelementptr inbounds double, ptr %V, i64 1, !dbg !20
  %1 = load double, ptr %arrayidx2, align 8, !dbg !20
  %mul4 = fmul double %1, %1, !dbg !20
  %2 = tail call double @llvm.fmuladd.f64(double %0, double %0, double %mul4), !dbg !20
  %arrayidx5 = getelementptr inbounds double, ptr %V, i64 2, !dbg !20
  %3 = load double, ptr %arrayidx5, align 8, !dbg !20
  %4 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %2), !dbg !20
  %call = tail call double @sqrt(double noundef %4) #15, !dbg !20
  call void @llvm.dbg.value(metadata double %call, metadata !18, metadata !DIExpression()), !dbg !19
  %cmp = fcmp ogt double %call, 0x3E7AD7F29ABCAF48, !dbg !21
  br i1 %cmp, label %if.then, label %if.end, !dbg !23

if.then:                                          ; preds = %entry
  %5 = load double, ptr %V, align 8, !dbg !24
  %div = fdiv double %5, %call, !dbg !24
  store double %div, ptr %V, align 8, !dbg !24
  %6 = load double, ptr %arrayidx2, align 8, !dbg !26
  %div9 = fdiv double %6, %call, !dbg !26
  store double %div9, ptr %arrayidx2, align 8, !dbg !26
  %7 = load double, ptr %arrayidx5, align 8, !dbg !27
  %div11 = fdiv double %7, %call, !dbg !27
  store double %div11, ptr %arrayidx5, align 8, !dbg !27
  br label %if.end, !dbg !28

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @VecMatMult(ptr nocapture noundef writeonly %Vt, ptr nocapture noundef readonly %M, ptr nocapture noundef readonly %V) local_unnamed_addr #4 !dbg !30 {
entry:
  %tvec = alloca [4 x double], align 16
  call void @llvm.dbg.value(metadata ptr %Vt, metadata !38, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata ptr %M, metadata !39, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata ptr %V, metadata !40, metadata !DIExpression()), !dbg !48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tvec) #15, !dbg !49
  call void @llvm.dbg.declare(metadata ptr %tvec, metadata !45, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i64 0, metadata !41, metadata !DIExpression()), !dbg !48
  br label %for.body, !dbg !51

for.body:                                         ; preds = %entry, %for.inc8
  %i.031 = phi i64 [ 0, %entry ], [ %inc9, %for.inc8 ]
  call void @llvm.dbg.value(metadata i64 %i.031, metadata !41, metadata !DIExpression()), !dbg !48
  %arrayidx = getelementptr inbounds [4 x double], ptr %tvec, i64 0, i64 %i.031, !dbg !53
  call void @llvm.dbg.value(metadata i64 0, metadata !44, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i64 0, metadata !44, metadata !DIExpression()), !dbg !48
  br label %for.body3, !dbg !56

for.body3:                                        ; preds = %for.body, %for.body3
  %j.030 = phi i64 [ 0, %for.body ], [ %inc, %for.body3 ]
  %0 = phi double [ 0.000000e+00, %for.body ], [ %3, %for.body3 ]
  call void @llvm.dbg.value(metadata i64 %j.030, metadata !44, metadata !DIExpression()), !dbg !48
  %arrayidx4 = getelementptr inbounds double, ptr %V, i64 %j.030, !dbg !58
  %1 = load double, ptr %arrayidx4, align 8, !dbg !58
  %arrayidx6 = getelementptr inbounds [4 x double], ptr %M, i64 %j.030, i64 %i.031, !dbg !60
  %2 = load double, ptr %arrayidx6, align 8, !dbg !60
  %3 = tail call double @llvm.fmuladd.f64(double %1, double %2, double %0), !dbg !61
  %inc = add nuw nsw i64 %j.030, 1, !dbg !62
  call void @llvm.dbg.value(metadata i64 %inc, metadata !44, metadata !DIExpression()), !dbg !48
  %exitcond.not = icmp eq i64 %inc, 4, !dbg !63
  br i1 %exitcond.not, label %for.inc8, label %for.body3, !dbg !56, !llvm.loop !64

for.inc8:                                         ; preds = %for.body3
  store double %3, ptr %arrayidx, align 8, !dbg !61
  %inc9 = add nuw nsw i64 %i.031, 1, !dbg !68
  call void @llvm.dbg.value(metadata i64 %inc9, metadata !41, metadata !DIExpression()), !dbg !48
  %exitcond33.not = icmp eq i64 %inc9, 4, !dbg !69
  br i1 %exitcond33.not, label %for.body13.preheader, label %for.body, !dbg !51, !llvm.loop !70

for.body13.preheader:                             ; preds = %for.inc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %Vt, ptr noundef nonnull align 16 dereferenceable(32) %tvec, i64 32, i1 false), !dbg !72
  call void @llvm.dbg.value(metadata i32 undef, metadata !41, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i32 undef, metadata !41, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tvec) #15, !dbg !75
  ret void, !dbg !75
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PrintMatrix(ptr nocapture noundef readonly %M, ptr noundef %s) local_unnamed_addr #5 !dbg !76 {
entry:
  call void @llvm.dbg.value(metadata ptr %M, metadata !83, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata ptr %s, metadata !84, metadata !DIExpression()), !dbg !87
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, ptr noundef %s), !dbg !88
  call void @llvm.dbg.value(metadata i64 0, metadata !85, metadata !DIExpression()), !dbg !87
  br label %for.body, !dbg !89

for.body:                                         ; preds = %entry, %for.end
  %i.017 = phi i64 [ 0, %entry ], [ %inc9, %for.end ]
  call void @llvm.dbg.value(metadata i64 %i.017, metadata !85, metadata !DIExpression()), !dbg !87
  %putchar = tail call i32 @putchar(i32 9), !dbg !91
  call void @llvm.dbg.value(metadata i64 0, metadata !86, metadata !DIExpression()), !dbg !87
  br label %for.body4, !dbg !94

for.body4:                                        ; preds = %for.body, %for.body4
  %j.016 = phi i64 [ 0, %for.body ], [ %inc, %for.body4 ]
  call void @llvm.dbg.value(metadata i64 %j.016, metadata !86, metadata !DIExpression()), !dbg !87
  %arrayidx5 = getelementptr inbounds [4 x double], ptr %M, i64 %i.017, i64 %j.016, !dbg !96
  %0 = load double, ptr %arrayidx5, align 8, !dbg !96
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %0), !dbg !98
  %inc = add nuw nsw i64 %j.016, 1, !dbg !99
  call void @llvm.dbg.value(metadata i64 %inc, metadata !86, metadata !DIExpression()), !dbg !87
  %exitcond.not = icmp eq i64 %inc, 4, !dbg !100
  br i1 %exitcond.not, label %for.end, label %for.body4, !dbg !94, !llvm.loop !101

for.end:                                          ; preds = %for.body4
  %putchar15 = tail call i32 @putchar(i32 10), !dbg !103
  %inc9 = add nuw nsw i64 %i.017, 1, !dbg !104
  call void @llvm.dbg.value(metadata i64 %inc9, metadata !85, metadata !DIExpression()), !dbg !87
  %exitcond18.not = icmp eq i64 %inc9, 4, !dbg !105
  br i1 %exitcond18.not, label %for.end10, label %for.body, !dbg !89, !llvm.loop !106

for.end10:                                        ; preds = %for.end
  ret void, !dbg !108
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable
define dso_local void @MatrixIdentity(ptr nocapture noundef writeonly %M) local_unnamed_addr #7 !dbg !109 {
entry:
  call void @llvm.dbg.value(metadata ptr %M, metadata !113, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i64 0, metadata !114, metadata !DIExpression()), !dbg !116
  %0 = getelementptr inbounds i8, ptr %M, i64 8, !dbg !117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 112, i1 false), !dbg !117
  call void @llvm.dbg.value(metadata i32 undef, metadata !114, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i32 undef, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i32 undef, metadata !115, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !116
  call void @llvm.dbg.value(metadata i32 undef, metadata !114, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !116
  store double 1.000000e+00, ptr %M, align 8, !dbg !122
  %arrayidx11 = getelementptr inbounds [4 x double], ptr %M, i64 1, i64 1, !dbg !123
  store double 1.000000e+00, ptr %arrayidx11, align 8, !dbg !124
  %arrayidx13 = getelementptr inbounds [4 x double], ptr %M, i64 2, i64 2, !dbg !125
  store double 1.000000e+00, ptr %arrayidx13, align 8, !dbg !126
  %arrayidx15 = getelementptr inbounds [4 x double], ptr %M, i64 3, i64 3, !dbg !127
  store double 1.000000e+00, ptr %arrayidx15, align 8, !dbg !128
  ret void, !dbg !129
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local void @MatrixCopy(ptr nocapture noundef writeonly %A, ptr nocapture noundef readonly %B) local_unnamed_addr #8 !dbg !130 {
entry:
  call void @llvm.dbg.value(metadata ptr %A, metadata !134, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata ptr %B, metadata !135, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !138
  br label %for.cond1.preheader, !dbg !139

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %i.017 = phi i64 [ 0, %entry ], [ %inc8, %for.inc7 ]
  call void @llvm.dbg.value(metadata i64 %i.017, metadata !136, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i64 0, metadata !137, metadata !DIExpression()), !dbg !138
  br label %for.body3, !dbg !141

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.016 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  call void @llvm.dbg.value(metadata i64 %j.016, metadata !137, metadata !DIExpression()), !dbg !138
  %arrayidx4 = getelementptr inbounds [4 x double], ptr %B, i64 %i.017, i64 %j.016, !dbg !144
  %0 = load double, ptr %arrayidx4, align 8, !dbg !144
  %arrayidx6 = getelementptr inbounds [4 x double], ptr %A, i64 %i.017, i64 %j.016, !dbg !146
  store double %0, ptr %arrayidx6, align 8, !dbg !147
  %inc = add nuw nsw i64 %j.016, 1, !dbg !148
  call void @llvm.dbg.value(metadata i64 %inc, metadata !137, metadata !DIExpression()), !dbg !138
  %exitcond.not = icmp eq i64 %inc, 4, !dbg !149
  br i1 %exitcond.not, label %for.inc7, label %for.body3, !dbg !141, !llvm.loop !150

for.inc7:                                         ; preds = %for.body3
  %inc8 = add nuw nsw i64 %i.017, 1, !dbg !152
  call void @llvm.dbg.value(metadata i64 %inc8, metadata !136, metadata !DIExpression()), !dbg !138
  %exitcond19.not = icmp eq i64 %inc8, 4, !dbg !153
  br i1 %exitcond19.not, label %for.end9, label %for.cond1.preheader, !dbg !139, !llvm.loop !154

for.end9:                                         ; preds = %for.inc7
  ret void, !dbg !156
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @MatrixTranspose(ptr nocapture noundef writeonly %MT, ptr nocapture noundef readonly %M) local_unnamed_addr #4 !dbg !157 {
entry:
  %tmp = alloca [4 x [4 x double]], align 16
  call void @llvm.dbg.value(metadata ptr %MT, metadata !159, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata ptr %M, metadata !160, metadata !DIExpression()), !dbg !167
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp) #15, !dbg !168
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !163, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !167
  br label %for.cond1.preheader, !dbg !170

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %i.017 = phi i64 [ 0, %entry ], [ %inc8, %for.inc7 ]
  call void @llvm.dbg.value(metadata i64 %i.017, metadata !161, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i64 0, metadata !162, metadata !DIExpression()), !dbg !167
  br label %for.body3, !dbg !172

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.016 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  call void @llvm.dbg.value(metadata i64 %j.016, metadata !162, metadata !DIExpression()), !dbg !167
  %arrayidx4 = getelementptr inbounds [4 x double], ptr %M, i64 %i.017, i64 %j.016, !dbg !175
  %0 = load double, ptr %arrayidx4, align 8, !dbg !175
  %arrayidx6 = getelementptr inbounds [4 x [4 x double]], ptr %tmp, i64 0, i64 %j.016, i64 %i.017, !dbg !177
  store double %0, ptr %arrayidx6, align 8, !dbg !178
  %inc = add nuw nsw i64 %j.016, 1, !dbg !179
  call void @llvm.dbg.value(metadata i64 %inc, metadata !162, metadata !DIExpression()), !dbg !167
  %exitcond.not = icmp eq i64 %inc, 4, !dbg !180
  br i1 %exitcond.not, label %for.inc7, label %for.body3, !dbg !172, !llvm.loop !181

for.inc7:                                         ; preds = %for.body3
  %inc8 = add nuw nsw i64 %i.017, 1, !dbg !183
  call void @llvm.dbg.value(metadata i64 %inc8, metadata !161, metadata !DIExpression()), !dbg !167
  %exitcond18.not = icmp eq i64 %inc8, 4, !dbg !184
  br i1 %exitcond18.not, label %for.end9, label %for.cond1.preheader, !dbg !170, !llvm.loop !185

for.end9:                                         ; preds = %for.inc7
  call void @MatrixCopy(ptr noundef %MT, ptr noundef nonnull %tmp), !dbg !187
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp) #15, !dbg !188
  ret void, !dbg !188
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @MatrixMult(ptr nocapture noundef writeonly %C, ptr nocapture noundef readonly %A, ptr nocapture noundef readonly %B) local_unnamed_addr #4 !dbg !189 {
entry:
  %T = alloca [4 x [4 x double]], align 16
  call void @llvm.dbg.value(metadata ptr %C, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata ptr %A, metadata !194, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata ptr %B, metadata !195, metadata !DIExpression()), !dbg !200
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %T) #15, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %T, metadata !199, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !200
  br label %for.cond1.preheader, !dbg !203

for.cond1.preheader:                              ; preds = %entry, %for.inc17
  %i.057 = phi i64 [ 0, %entry ], [ %inc18, %for.inc17 ]
  call void @llvm.dbg.value(metadata i64 %i.057, metadata !196, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 0, metadata !197, metadata !DIExpression()), !dbg !200
  br label %for.body3, !dbg !205

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc14
  %j.056 = phi i64 [ 0, %for.cond1.preheader ], [ %inc15, %for.inc14 ]
  call void @llvm.dbg.value(metadata i64 %j.056, metadata !197, metadata !DIExpression()), !dbg !200
  %arrayidx4 = getelementptr inbounds [4 x [4 x double]], ptr %T, i64 0, i64 %i.057, i64 %j.056, !dbg !208
  call void @llvm.dbg.value(metadata i64 0, metadata !198, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 0, metadata !198, metadata !DIExpression()), !dbg !200
  br label %for.body7, !dbg !211

for.body7:                                        ; preds = %for.body3, %for.body7
  %k.055 = phi i64 [ 0, %for.body3 ], [ %inc, %for.body7 ]
  %0 = phi double [ 0.000000e+00, %for.body3 ], [ %3, %for.body7 ]
  call void @llvm.dbg.value(metadata i64 %k.055, metadata !198, metadata !DIExpression()), !dbg !200
  %arrayidx9 = getelementptr inbounds [4 x double], ptr %A, i64 %i.057, i64 %k.055, !dbg !213
  %1 = load double, ptr %arrayidx9, align 8, !dbg !213
  %arrayidx11 = getelementptr inbounds [4 x double], ptr %B, i64 %k.055, i64 %j.056, !dbg !215
  %2 = load double, ptr %arrayidx11, align 8, !dbg !215
  %3 = tail call double @llvm.fmuladd.f64(double %1, double %2, double %0), !dbg !216
  %inc = add nuw nsw i64 %k.055, 1, !dbg !217
  call void @llvm.dbg.value(metadata i64 %inc, metadata !198, metadata !DIExpression()), !dbg !200
  %exitcond.not = icmp eq i64 %inc, 4, !dbg !218
  br i1 %exitcond.not, label %for.inc14, label %for.body7, !dbg !211, !llvm.loop !219

for.inc14:                                        ; preds = %for.body7
  store double %3, ptr %arrayidx4, align 8, !dbg !216
  %inc15 = add nuw nsw i64 %j.056, 1, !dbg !221
  call void @llvm.dbg.value(metadata i64 %inc15, metadata !197, metadata !DIExpression()), !dbg !200
  %exitcond60.not = icmp eq i64 %inc15, 4, !dbg !222
  br i1 %exitcond60.not, label %for.inc17, label %for.body3, !dbg !205, !llvm.loop !223

for.inc17:                                        ; preds = %for.inc14
  %inc18 = add nuw nsw i64 %i.057, 1, !dbg !225
  call void @llvm.dbg.value(metadata i64 %inc18, metadata !196, metadata !DIExpression()), !dbg !200
  %exitcond61.not = icmp eq i64 %inc18, 4, !dbg !226
  br i1 %exitcond61.not, label %for.cond23.preheader.preheader, label %for.cond1.preheader, !dbg !203, !llvm.loop !227

for.cond23.preheader.preheader:                   ; preds = %for.inc17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %C, ptr noundef nonnull align 16 dereferenceable(128) %T, i64 128, i1 false), !dbg !229
  call void @llvm.dbg.value(metadata i32 undef, metadata !196, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 undef, metadata !197, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 undef, metadata !197, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !200
  call void @llvm.dbg.value(metadata i32 undef, metadata !196, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !200
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %T) #15, !dbg !234
  ret void, !dbg !234
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @MatrixInverse(ptr nocapture noundef %Minv, ptr nocapture noundef readonly %Mat) local_unnamed_addr #4 !dbg !235 {
entry:
  %gjmat = alloca [4 x [8 x double]], align 16
  %tbuf = alloca [8 x double], align 16
  %tmp = alloca [4 x [4 x double]], align 16
  call void @llvm.dbg.value(metadata ptr %Minv, metadata !237, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata ptr %Mat, metadata !238, metadata !DIExpression()), !dbg !255
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %gjmat) #15, !dbg !256
  call void @llvm.dbg.declare(metadata ptr %gjmat, metadata !242, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tbuf), !dbg !258
  call void @llvm.dbg.declare(metadata ptr %tbuf, metadata !247, metadata !DIExpression()), !dbg !259
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp) #15, !dbg !260
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !254, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i64 0, metadata !239, metadata !DIExpression()), !dbg !255
  br label %for.cond1.preheader, !dbg !262

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %i.0299 = phi i64 [ 0, %entry ], [ %inc8, %for.cond1.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0299, metadata !239, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i64 0, metadata !240, metadata !DIExpression()), !dbg !255
  %0 = shl nuw nsw i64 %i.0299, 6, !dbg !264
  %uglygep = getelementptr i8, ptr %gjmat, i64 %0, !dbg !264
  %1 = shl nuw nsw i64 %i.0299, 5, !dbg !264
  %uglygep327 = getelementptr i8, ptr %Mat, i64 %1, !dbg !264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %uglygep, ptr noundef nonnull align 8 dereferenceable(32) %uglygep327, i64 32, i1 false), !dbg !267
  call void @llvm.dbg.value(metadata i32 undef, metadata !240, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i32 undef, metadata !240, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !255
  %inc8 = add nuw nsw i64 %i.0299, 1, !dbg !269
  call void @llvm.dbg.value(metadata i64 %inc8, metadata !239, metadata !DIExpression()), !dbg !255
  %exitcond.not = icmp eq i64 %inc8, 4, !dbg !270
  br i1 %exitcond.not, label %for.cond13.preheader, label %for.cond1.preheader, !dbg !262, !llvm.loop !271

for.cond13.preheader:                             ; preds = %for.cond1.preheader, %for.end23
  %i.1303 = phi i64 [ %inc26, %for.end23 ], [ 4, %for.cond1.preheader ]
  %k.0302 = phi i64 [ %inc24, %for.end23 ], [ 0, %for.cond1.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1303, metadata !239, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i64 %k.0302, metadata !241, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i64 4, metadata !240, metadata !DIExpression()), !dbg !255
  br label %for.body15, !dbg !273

for.body15:                                       ; preds = %for.cond13.preheader, %for.body15
  %j.1300 = phi i64 [ 4, %for.cond13.preheader ], [ %inc22, %for.body15 ]
  call void @llvm.dbg.value(metadata i64 %j.1300, metadata !240, metadata !DIExpression()), !dbg !255
  %cmp16 = icmp eq i64 %i.1303, %j.1300, !dbg !278
  %spec.select = select i1 %cmp16, double 1.000000e+00, double 0.000000e+00, !dbg !281
  %2 = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %k.0302, i64 %j.1300, !dbg !282
  store double %spec.select, ptr %2, align 8, !dbg !283
  %inc22 = add nuw nsw i64 %j.1300, 1, !dbg !284
  call void @llvm.dbg.value(metadata i64 %inc22, metadata !240, metadata !DIExpression()), !dbg !255
  %exitcond328.not = icmp eq i64 %inc22, 8, !dbg !285
  br i1 %exitcond328.not, label %for.end23, label %for.body15, !dbg !273, !llvm.loop !286

for.end23:                                        ; preds = %for.body15
  %inc24 = add nuw nsw i64 %k.0302, 1, !dbg !288
  call void @llvm.dbg.value(metadata i64 %inc24, metadata !241, metadata !DIExpression()), !dbg !255
  %inc26 = add nuw nsw i64 %i.1303, 1, !dbg !289
  call void @llvm.dbg.value(metadata i64 %inc26, metadata !239, metadata !DIExpression()), !dbg !255
  %exitcond329.not = icmp eq i64 %inc24, 4, !dbg !290
  br i1 %exitcond329.not, label %for.body30, label %for.cond13.preheader, !dbg !291, !llvm.loop !292

for.cond28.loopexit:                              ; preds = %for.cond101.for.inc113_crit_edge.us
  call void @llvm.dbg.value(metadata i64 %add, metadata !239, metadata !DIExpression()), !dbg !255
  %exitcond335.not = icmp eq i64 %add, 3, !dbg !294
  br i1 %exitcond335.not, label %for.body125.preheader, label %for.body30, !dbg !297, !llvm.loop !298

for.body30:                                       ; preds = %for.end23, %for.cond28.loopexit
  %i.2317 = phi i64 [ %add, %for.cond28.loopexit ], [ 0, %for.end23 ]
  call void @llvm.dbg.value(metadata i64 %i.2317, metadata !239, metadata !DIExpression()), !dbg !255
  %3 = shl nuw nsw i64 %i.2317, 6, !dbg !300
  %uglygep330 = getelementptr i8, ptr %gjmat, i64 %3, !dbg !300
  %arrayidx32 = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %i.2317, i64 %i.2317, !dbg !300
  %4 = load double, ptr %arrayidx32, align 8, !dbg !300
  %cmp33 = fcmp ogt double %4, 0.000000e+00, !dbg !300
  br i1 %cmp33, label %for.body40.preheader, label %cond.false, !dbg !300

cond.false:                                       ; preds = %for.body30
  %fneg = fneg double %4, !dbg !300
  br label %for.body40.preheader, !dbg !300

for.body40.preheader:                             ; preds = %cond.false, %for.body30
  %cond = phi double [ %fneg, %cond.false ], [ %4, %for.body30 ], !dbg !300
  call void @llvm.dbg.value(metadata double %cond, metadata !250, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i64 %i.2317, metadata !252, metadata !DIExpression()), !dbg !255
  %add = add nuw nsw i64 %i.2317, 1, !dbg !302
  call void @llvm.dbg.value(metadata i64 %add, metadata !240, metadata !DIExpression()), !dbg !255
  br label %for.body40, !dbg !304

for.body40:                                       ; preds = %for.body40.preheader, %for.inc56
  %prow.0308 = phi i64 [ %prow.1, %for.inc56 ], [ %i.2317, %for.body40.preheader ]
  %pval.0307 = phi double [ %pval.1, %for.inc56 ], [ %cond, %for.body40.preheader ]
  %j.2305 = phi i64 [ %inc57, %for.inc56 ], [ %add, %for.body40.preheader ]
  call void @llvm.dbg.value(metadata i64 %prow.0308, metadata !252, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double %pval.0307, metadata !250, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i64 %j.2305, metadata !240, metadata !DIExpression()), !dbg !255
  %arrayidx42 = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %j.2305, i64 %i.2317, !dbg !305
  %5 = load double, ptr %arrayidx42, align 8, !dbg !305
  %cmp43 = fcmp ogt double %5, 0.000000e+00, !dbg !305
  br i1 %cmp43, label %cond.end51, label %cond.false47, !dbg !305

cond.false47:                                     ; preds = %for.body40
  %fneg50 = fneg double %5, !dbg !305
  br label %cond.end51, !dbg !305

cond.end51:                                       ; preds = %for.body40, %cond.false47
  %cond52 = phi double [ %fneg50, %cond.false47 ], [ %5, %for.body40 ], !dbg !305
  call void @llvm.dbg.value(metadata double %cond52, metadata !251, metadata !DIExpression()), !dbg !255
  %cmp53 = fcmp ogt double %cond52, %pval.0307, !dbg !308
  br i1 %cmp53, label %if.then54, label %for.inc56, !dbg !310

if.then54:                                        ; preds = %cond.end51
  call void @llvm.dbg.value(metadata double %cond52, metadata !250, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i64 %j.2305, metadata !252, metadata !DIExpression()), !dbg !255
  br label %for.inc56, !dbg !311

for.inc56:                                        ; preds = %cond.end51, %if.then54
  %pval.1 = phi double [ %cond52, %if.then54 ], [ %pval.0307, %cond.end51 ], !dbg !313
  %prow.1 = phi i64 [ %j.2305, %if.then54 ], [ %prow.0308, %cond.end51 ], !dbg !313
  call void @llvm.dbg.value(metadata i64 %prow.1, metadata !252, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double %pval.1, metadata !250, metadata !DIExpression()), !dbg !255
  %inc57 = add nuw nsw i64 %j.2305, 1, !dbg !314
  call void @llvm.dbg.value(metadata i64 %inc57, metadata !240, metadata !DIExpression()), !dbg !255
  %cmp39 = icmp ult i64 %j.2305, 3, !dbg !315
  br i1 %cmp39, label %for.body40, label %for.end58, !dbg !304, !llvm.loop !316

for.end58:                                        ; preds = %for.inc56
  %cmp59.not = icmp eq i64 %i.2317, %prow.1, !dbg !318
  br i1 %cmp59.not, label %for.body93.us.preheader, label %for.body63.preheader, !dbg !320

for.body63.preheader:                             ; preds = %for.end58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %tbuf, ptr noundef nonnull align 16 dereferenceable(64) %uglygep330, i64 64, i1 false), !dbg !321
  call void @llvm.dbg.value(metadata i32 undef, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !255
  br label %for.body72, !dbg !325

for.body72:                                       ; preds = %for.body63.preheader, %for.body72
  %k.2310 = phi i64 [ %inc78, %for.body72 ], [ 0, %for.body63.preheader ]
  call void @llvm.dbg.value(metadata i64 %k.2310, metadata !241, metadata !DIExpression()), !dbg !255
  %arrayidx74 = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %prow.1, i64 %k.2310, !dbg !327
  %6 = load double, ptr %arrayidx74, align 8, !dbg !327
  %arrayidx76 = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %i.2317, i64 %k.2310, !dbg !329
  store double %6, ptr %arrayidx76, align 8, !dbg !330
  %inc78 = add nuw nsw i64 %k.2310, 1, !dbg !331
  call void @llvm.dbg.value(metadata i64 %inc78, metadata !241, metadata !DIExpression()), !dbg !255
  %exitcond333.not = icmp eq i64 %inc78, 8, !dbg !332
  br i1 %exitcond333.not, label %for.body82.preheader, label %for.body72, !dbg !325, !llvm.loop !333

for.body82.preheader:                             ; preds = %for.body72
  %7 = shl nsw i64 %prow.1, 6, !dbg !335
  %uglygep334 = getelementptr i8, ptr %gjmat, i64 %7, !dbg !335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %uglygep334, ptr noundef nonnull align 16 dereferenceable(64) %tbuf, i64 64, i1 false), !dbg !337
  call void @llvm.dbg.value(metadata i32 undef, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !255
  br label %for.body93.us.preheader, !dbg !339

for.body93.us.preheader:                          ; preds = %for.end58, %for.body82.preheader
  br label %for.body93.us, !dbg !342

for.body93.us:                                    ; preds = %for.body93.us.preheader, %for.cond101.for.inc113_crit_edge.us
  %j.3315.us = phi i64 [ %inc114.us, %for.cond101.for.inc113_crit_edge.us ], [ %add, %for.body93.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.3315.us, metadata !240, metadata !DIExpression()), !dbg !255
  %arrayidx95.us = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %j.3315.us, i64 %i.2317, !dbg !343
  %8 = load double, ptr %arrayidx95.us, align 8, !dbg !343
  %9 = load double, ptr %arrayidx32, align 8, !dbg !345
  call void @llvm.dbg.value(metadata double undef, metadata !253, metadata !DIExpression()), !dbg !255
  store double 0.000000e+00, ptr %arrayidx95.us, align 8, !dbg !346
  call void @llvm.dbg.value(metadata i64 %add, metadata !241, metadata !DIExpression()), !dbg !255
  %10 = fneg double %8
  %neg.us = fdiv double %10, %9
  br label %for.body103.us, !dbg !347

for.body103.us:                                   ; preds = %for.body93.us, %for.body103.us
  %k.4313.us = phi i64 [ %add, %for.body93.us ], [ %inc111.us, %for.body103.us ]
  call void @llvm.dbg.value(metadata i64 %k.4313.us, metadata !241, metadata !DIExpression()), !dbg !255
  %arrayidx105.us = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %j.3315.us, i64 %k.4313.us, !dbg !349
  %11 = load double, ptr %arrayidx105.us, align 8, !dbg !349
  %arrayidx107.us = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %i.2317, i64 %k.4313.us, !dbg !351
  %12 = load double, ptr %arrayidx107.us, align 8, !dbg !351
  %13 = tail call double @llvm.fmuladd.f64(double %neg.us, double %12, double %11), !dbg !352
  store double %13, ptr %arrayidx105.us, align 8, !dbg !353
  %inc111.us = add nuw nsw i64 %k.4313.us, 1, !dbg !354
  call void @llvm.dbg.value(metadata i64 %inc111.us, metadata !241, metadata !DIExpression()), !dbg !255
  %cmp102.us = icmp ult i64 %k.4313.us, 7, !dbg !355
  br i1 %cmp102.us, label %for.body103.us, label %for.cond101.for.inc113_crit_edge.us, !dbg !347, !llvm.loop !356

for.cond101.for.inc113_crit_edge.us:              ; preds = %for.body103.us
  %inc114.us = add nuw nsw i64 %j.3315.us, 1, !dbg !358
  call void @llvm.dbg.value(metadata i64 %inc114.us, metadata !240, metadata !DIExpression()), !dbg !255
  %cmp92.us = icmp ult i64 %j.3315.us, 3, !dbg !339
  br i1 %cmp92.us, label %for.body93.us, label %for.cond28.loopexit, !dbg !342, !llvm.loop !359

for.cond119.loopexit:                             ; preds = %for.cond123.loopexit
  call void @llvm.dbg.value(metadata i64 %add122, metadata !239, metadata !DIExpression()), !dbg !255
  %exitcond337.not = icmp eq i64 %add122, 3, !dbg !361
  br i1 %exitcond337.not, label %for.cond156.preheader, label %for.body125.preheader, !dbg !364, !llvm.loop !365

for.body125.preheader:                            ; preds = %for.cond28.loopexit, %for.cond119.loopexit
  %i.3322 = phi i64 [ %add122, %for.cond119.loopexit ], [ 0, %for.cond28.loopexit ]
  call void @llvm.dbg.value(metadata i64 %i.3322, metadata !239, metadata !DIExpression()), !dbg !255
  %add122 = add nuw nsw i64 %i.3322, 1, !dbg !367
  call void @llvm.dbg.value(metadata i64 %add122, metadata !240, metadata !DIExpression()), !dbg !255
  br label %for.body136.lr.ph, !dbg !369

for.cond123.loopexit:                             ; preds = %for.body136
  call void @llvm.dbg.value(metadata i64 %add133, metadata !240, metadata !DIExpression()), !dbg !255
  %cmp124 = icmp ult i64 %j.4321, 3, !dbg !370
  br i1 %cmp124, label %for.body136.lr.ph, label %for.cond119.loopexit, !dbg !369, !llvm.loop !372

for.body136.lr.ph:                                ; preds = %for.cond123.loopexit, %for.body125.preheader
  %j.4321 = phi i64 [ %add133, %for.cond123.loopexit ], [ %add122, %for.body125.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.4321, metadata !240, metadata !DIExpression()), !dbg !255
  %arrayidx127 = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %i.3322, i64 %j.4321, !dbg !374
  %14 = load double, ptr %arrayidx127, align 8, !dbg !374
  %arrayidx129 = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %j.4321, i64 %j.4321, !dbg !376
  %15 = load double, ptr %arrayidx129, align 8, !dbg !376
  call void @llvm.dbg.value(metadata double undef, metadata !253, metadata !DIExpression()), !dbg !255
  store double 0.000000e+00, ptr %arrayidx127, align 8, !dbg !377
  %add133 = add nuw nsw i64 %j.4321, 1, !dbg !378
  call void @llvm.dbg.value(metadata i64 %add133, metadata !241, metadata !DIExpression()), !dbg !255
  %16 = fneg double %14
  %neg141 = fdiv double %16, %15
  br label %for.body136, !dbg !380

for.body136:                                      ; preds = %for.body136.lr.ph, %for.body136
  %k.5319 = phi i64 [ %add133, %for.body136.lr.ph ], [ %inc145, %for.body136 ]
  call void @llvm.dbg.value(metadata i64 %k.5319, metadata !241, metadata !DIExpression()), !dbg !255
  %arrayidx138 = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %i.3322, i64 %k.5319, !dbg !381
  %17 = load double, ptr %arrayidx138, align 8, !dbg !381
  %arrayidx140 = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %j.4321, i64 %k.5319, !dbg !383
  %18 = load double, ptr %arrayidx140, align 8, !dbg !383
  %19 = tail call double @llvm.fmuladd.f64(double %neg141, double %18, double %17), !dbg !384
  store double %19, ptr %arrayidx138, align 8, !dbg !385
  %inc145 = add nuw nsw i64 %k.5319, 1, !dbg !386
  call void @llvm.dbg.value(metadata i64 %inc145, metadata !241, metadata !DIExpression()), !dbg !255
  %cmp135 = icmp ult i64 %k.5319, 7, !dbg !387
  br i1 %cmp135, label %for.body136, label %for.cond123.loopexit, !dbg !380, !llvm.loop !388

for.cond156.preheader:                            ; preds = %for.cond119.loopexit, %for.inc167
  %i.4324 = phi i64 [ %inc168, %for.inc167 ], [ 0, %for.cond119.loopexit ]
  call void @llvm.dbg.value(metadata i64 %i.4324, metadata !239, metadata !DIExpression()), !dbg !255
  %arrayidx160 = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %i.4324, i64 %i.4324
  call void @llvm.dbg.value(metadata i64 4, metadata !241, metadata !DIExpression()), !dbg !255
  br label %for.body158, !dbg !390

for.body158:                                      ; preds = %for.cond156.preheader, %for.body158
  %k.6323 = phi i64 [ 4, %for.cond156.preheader ], [ %inc165, %for.body158 ]
  call void @llvm.dbg.value(metadata i64 %k.6323, metadata !241, metadata !DIExpression()), !dbg !255
  %20 = load double, ptr %arrayidx160, align 8, !dbg !394
  %arrayidx162 = getelementptr inbounds [4 x [8 x double]], ptr %gjmat, i64 0, i64 %i.4324, i64 %k.6323, !dbg !396
  %21 = load double, ptr %arrayidx162, align 8, !dbg !397
  %div163 = fdiv double %21, %20, !dbg !397
  store double %div163, ptr %arrayidx162, align 8, !dbg !397
  %inc165 = add nuw nsw i64 %k.6323, 1, !dbg !398
  call void @llvm.dbg.value(metadata i64 %inc165, metadata !241, metadata !DIExpression()), !dbg !255
  %exitcond338.not = icmp eq i64 %inc165, 8, !dbg !399
  br i1 %exitcond338.not, label %for.inc167, label %for.body158, !dbg !390, !llvm.loop !400

for.inc167:                                       ; preds = %for.body158
  %inc168 = add nuw nsw i64 %i.4324, 1, !dbg !402
  call void @llvm.dbg.value(metadata i64 %inc168, metadata !239, metadata !DIExpression()), !dbg !255
  %exitcond339.not = icmp eq i64 %inc168, 4, !dbg !403
  br i1 %exitcond339.not, label %for.cond173.preheader, label %for.cond156.preheader, !dbg !404, !llvm.loop !405

for.cond173.preheader:                            ; preds = %for.inc167, %for.cond173.preheader
  %i.5326 = phi i64 [ %inc184, %for.cond173.preheader ], [ 0, %for.inc167 ]
  call void @llvm.dbg.value(metadata i64 %i.5326, metadata !239, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i64 4, metadata !240, metadata !DIExpression()), !dbg !255
  %22 = shl nuw nsw i64 %i.5326, 5, !dbg !407
  %uglygep340 = getelementptr i8, ptr %Minv, i64 %22, !dbg !407
  %23 = shl nuw nsw i64 %i.5326, 6, !dbg !407
  %24 = or i64 %23, 32, !dbg !407
  %uglygep341 = getelementptr i8, ptr %gjmat, i64 %24, !dbg !407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %uglygep340, ptr noundef nonnull align 16 dereferenceable(32) %uglygep341, i64 32, i1 false), !dbg !411
  call void @llvm.dbg.value(metadata i32 undef, metadata !240, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !255
  %inc184 = add nuw nsw i64 %i.5326, 1, !dbg !413
  call void @llvm.dbg.value(metadata i64 %inc184, metadata !239, metadata !DIExpression()), !dbg !255
  %exitcond342.not = icmp eq i64 %inc184, 4, !dbg !414
  br i1 %exitcond342.not, label %for.end185, label %for.cond173.preheader, !dbg !415, !llvm.loop !416

for.end185:                                       ; preds = %for.cond173.preheader
  call void @MatrixMult(ptr noundef nonnull %tmp, ptr noundef %Mat, ptr noundef nonnull %Minv), !dbg !418
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp) #15, !dbg !419
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tbuf), !dbg !419
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %gjmat) #15, !dbg !419
  ret void, !dbg !419
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable
define dso_local void @Translate(ptr nocapture noundef writeonly %M, double noundef %dx, double noundef %dy, double noundef %dz) local_unnamed_addr #7 !dbg !420 {
entry:
  call void @llvm.dbg.value(metadata ptr %M, metadata !424, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata double %dx, metadata !425, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata double %dy, metadata !426, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata double %dz, metadata !427, metadata !DIExpression()), !dbg !428
  tail call void @MatrixIdentity(ptr noundef %M), !dbg !429
  %arrayidx = getelementptr inbounds [4 x double], ptr %M, i64 3, !dbg !430
  store double %dx, ptr %arrayidx, align 8, !dbg !431
  %arrayidx3 = getelementptr inbounds [4 x double], ptr %M, i64 3, i64 1, !dbg !432
  store double %dy, ptr %arrayidx3, align 8, !dbg !433
  %arrayidx5 = getelementptr inbounds [4 x double], ptr %M, i64 3, i64 2, !dbg !434
  store double %dz, ptr %arrayidx5, align 8, !dbg !435
  ret void, !dbg !436
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable
define dso_local void @Scale(ptr nocapture noundef writeonly %M, double noundef %sx, double noundef %sy, double noundef %sz) local_unnamed_addr #7 !dbg !437 {
entry:
  call void @llvm.dbg.value(metadata ptr %M, metadata !439, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata double %sx, metadata !440, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata double %sy, metadata !441, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata double %sz, metadata !442, metadata !DIExpression()), !dbg !443
  tail call void @MatrixIdentity(ptr noundef %M), !dbg !444
  store double %sx, ptr %M, align 8, !dbg !445
  %arrayidx3 = getelementptr inbounds [4 x double], ptr %M, i64 1, i64 1, !dbg !446
  store double %sy, ptr %arrayidx3, align 8, !dbg !447
  %arrayidx5 = getelementptr inbounds [4 x double], ptr %M, i64 2, i64 2, !dbg !448
  store double %sz, ptr %arrayidx5, align 8, !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Rotate(i64 noundef %axis, ptr nocapture noundef writeonly %M, double noundef %angle) local_unnamed_addr #9 !dbg !451 {
entry:
  call void @llvm.dbg.value(metadata i64 %axis, metadata !455, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata ptr %M, metadata !456, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata double %angle, metadata !457, metadata !DIExpression()), !dbg !460
  tail call void @MatrixIdentity(ptr noundef %M), !dbg !461
  %call = tail call double @cos(double noundef %angle) #15, !dbg !462
  call void @llvm.dbg.value(metadata double %call, metadata !458, metadata !DIExpression()), !dbg !460
  %call1 = tail call double @sin(double noundef %angle) #15, !dbg !463
  call void @llvm.dbg.value(metadata double %call1, metadata !459, metadata !DIExpression()), !dbg !460
  switch i64 %axis, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb9
    i64 3, label %sw.bb19
  ], !dbg !464

sw.bb:                                            ; preds = %entry
  %arrayidx2 = getelementptr inbounds [4 x double], ptr %M, i64 1, i64 1, !dbg !465
  store double %call, ptr %arrayidx2, align 8, !dbg !467
  %arrayidx4 = getelementptr inbounds [4 x double], ptr %M, i64 1, i64 2, !dbg !468
  store double %call1, ptr %arrayidx4, align 8, !dbg !469
  %fneg = fneg double %call1, !dbg !470
  %arrayidx6 = getelementptr inbounds [4 x double], ptr %M, i64 2, i64 1, !dbg !471
  store double %fneg, ptr %arrayidx6, align 8, !dbg !472
  %arrayidx8 = getelementptr inbounds [4 x double], ptr %M, i64 2, i64 2, !dbg !473
  br label %sw.epilog, !dbg !474

sw.bb9:                                           ; preds = %entry
  store double %call, ptr %M, align 8, !dbg !475
  %fneg12 = fneg double %call1, !dbg !476
  %arrayidx14 = getelementptr inbounds [4 x double], ptr %M, i64 0, i64 2, !dbg !477
  store double %fneg12, ptr %arrayidx14, align 8, !dbg !478
  %arrayidx15 = getelementptr inbounds [4 x double], ptr %M, i64 2, !dbg !479
  store double %call1, ptr %arrayidx15, align 8, !dbg !480
  %arrayidx18 = getelementptr inbounds [4 x double], ptr %M, i64 2, i64 2, !dbg !481
  br label %sw.epilog, !dbg !482

sw.bb19:                                          ; preds = %entry
  store double %call, ptr %M, align 8, !dbg !483
  %arrayidx23 = getelementptr inbounds [4 x double], ptr %M, i64 0, i64 1, !dbg !484
  store double %call1, ptr %arrayidx23, align 8, !dbg !485
  %fneg24 = fneg double %call1, !dbg !486
  %arrayidx25 = getelementptr inbounds [4 x double], ptr %M, i64 1, !dbg !487
  store double %fneg24, ptr %arrayidx25, align 8, !dbg !488
  %arrayidx28 = getelementptr inbounds [4 x double], ptr %M, i64 1, i64 1, !dbg !489
  br label %sw.epilog, !dbg !490

sw.default:                                       ; preds = %entry
  %call29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i64 noundef %axis), !dbg !491
  tail call void @exit(i32 noundef 5) #16, !dbg !492
  unreachable, !dbg !492

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb9, %sw.bb
  %arrayidx28.sink = phi ptr [ %arrayidx28, %sw.bb19 ], [ %arrayidx18, %sw.bb9 ], [ %arrayidx8, %sw.bb ]
  store double %call, ptr %arrayidx28.sink, align 8, !dbg !493
  ret void, !dbg !494
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { mustprogress nofree noinline nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "matrix.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "6f0a16e6880cc25557b5057c2075b836")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "VecNorm", scope: !1, file: !1, line: 52, type: !10, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !14, line: 310, baseType: !15)
!14 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!15 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!16 = !{!17, !18}
!17 = !DILocalVariable(name: "V", arg: 1, scope: !9, file: !1, line: 52, type: !12)
!18 = !DILocalVariable(name: "l", scope: !9, file: !1, line: 54, type: !13)
!19 = !DILocation(line: 0, scope: !9)
!20 = !DILocation(line: 56, column: 6, scope: !9)
!21 = !DILocation(line: 57, column: 8, scope: !22)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 57, column: 6)
!23 = !DILocation(line: 57, column: 6, scope: !9)
!24 = !DILocation(line: 59, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !22, file: !1, line: 58, column: 3)
!26 = !DILocation(line: 60, column: 8, scope: !25)
!27 = !DILocation(line: 61, column: 8, scope: !25)
!28 = !DILocation(line: 62, column: 3, scope: !25)
!29 = !DILocation(line: 63, column: 2, scope: !9)
!30 = distinct !DISubprogram(name: "VecMatMult", scope: !1, file: !1, line: 81, type: !31, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !12, !33, !12}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 4)
!37 = !{!38, !39, !40, !41, !44, !45}
!38 = !DILocalVariable(name: "Vt", arg: 1, scope: !30, file: !1, line: 81, type: !12)
!39 = !DILocalVariable(name: "M", arg: 2, scope: !30, file: !1, line: 81, type: !33)
!40 = !DILocalVariable(name: "V", arg: 3, scope: !30, file: !1, line: 81, type: !12)
!41 = !DILocalVariable(name: "i", scope: !30, file: !1, line: 83, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !14, line: 297, baseType: !43)
!43 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!44 = !DILocalVariable(name: "j", scope: !30, file: !1, line: 83, type: !42)
!45 = !DILocalVariable(name: "tvec", scope: !30, file: !1, line: 84, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT", file: !14, line: 318, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC4", file: !14, line: 315, baseType: !34)
!48 = !DILocation(line: 0, scope: !30)
!49 = !DILocation(line: 84, column: 2, scope: !30)
!50 = !DILocation(line: 84, column: 8, scope: !30)
!51 = !DILocation(line: 88, column: 2, scope: !52)
!52 = distinct !DILexicalBlock(scope: !30, file: !1, line: 88, column: 2)
!53 = !DILocation(line: 90, column: 3, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 89, column: 3)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 88, column: 2)
!56 = !DILocation(line: 91, column: 3, scope: !57)
!57 = distinct !DILexicalBlock(scope: !54, file: !1, line: 91, column: 3)
!58 = !DILocation(line: 92, column: 15, scope: !59)
!59 = distinct !DILexicalBlock(scope: !57, file: !1, line: 91, column: 3)
!60 = !DILocation(line: 92, column: 22, scope: !59)
!61 = !DILocation(line: 92, column: 12, scope: !59)
!62 = !DILocation(line: 91, column: 23, scope: !59)
!63 = !DILocation(line: 91, column: 17, scope: !59)
!64 = distinct !{!64, !56, !65, !66, !67}
!65 = !DILocation(line: 92, column: 28, scope: !57)
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !DILocation(line: 88, column: 22, scope: !55)
!69 = !DILocation(line: 88, column: 16, scope: !55)
!70 = distinct !{!70, !51, !71, !66, !67}
!71 = !DILocation(line: 93, column: 3, scope: !52)
!72 = !DILocation(line: 98, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 97, column: 2)
!74 = distinct !DILexicalBlock(scope: !30, file: !1, line: 97, column: 2)
!75 = !DILocation(line: 99, column: 2, scope: !30)
!76 = distinct !DISubprogram(name: "PrintMatrix", scope: !1, file: !1, line: 116, type: !77, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !33, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !14, line: 287, baseType: !81)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!82 = !{!83, !84, !85, !86}
!83 = !DILocalVariable(name: "M", arg: 1, scope: !76, file: !1, line: 116, type: !33)
!84 = !DILocalVariable(name: "s", arg: 2, scope: !76, file: !1, line: 116, type: !79)
!85 = !DILocalVariable(name: "i", scope: !76, file: !1, line: 118, type: !42)
!86 = !DILocalVariable(name: "j", scope: !76, file: !1, line: 118, type: !42)
!87 = !DILocation(line: 0, scope: !76)
!88 = !DILocation(line: 120, column: 2, scope: !76)
!89 = !DILocation(line: 122, column: 2, scope: !90)
!90 = distinct !DILexicalBlock(scope: !76, file: !1, line: 122, column: 2)
!91 = !DILocation(line: 124, column: 3, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 123, column: 3)
!93 = distinct !DILexicalBlock(scope: !90, file: !1, line: 122, column: 2)
!94 = !DILocation(line: 126, column: 3, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 126, column: 3)
!96 = !DILocation(line: 127, column: 19, scope: !97)
!97 = distinct !DILexicalBlock(scope: !95, file: !1, line: 126, column: 3)
!98 = !DILocation(line: 127, column: 4, scope: !97)
!99 = !DILocation(line: 126, column: 23, scope: !97)
!100 = !DILocation(line: 126, column: 17, scope: !97)
!101 = distinct !{!101, !94, !102, !66, !67}
!102 = !DILocation(line: 127, column: 26, scope: !95)
!103 = !DILocation(line: 129, column: 3, scope: !92)
!104 = !DILocation(line: 122, column: 22, scope: !93)
!105 = !DILocation(line: 122, column: 16, scope: !93)
!106 = distinct !{!106, !89, !107, !66, !67}
!107 = !DILocation(line: 130, column: 3, scope: !90)
!108 = !DILocation(line: 131, column: 2, scope: !76)
!109 = distinct !DISubprogram(name: "MatrixIdentity", scope: !1, file: !1, line: 147, type: !110, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !33}
!112 = !{!113, !114, !115}
!113 = !DILocalVariable(name: "M", arg: 1, scope: !109, file: !1, line: 147, type: !33)
!114 = !DILocalVariable(name: "i", scope: !109, file: !1, line: 149, type: !42)
!115 = !DILocalVariable(name: "j", scope: !109, file: !1, line: 149, type: !42)
!116 = !DILocation(line: 0, scope: !109)
!117 = !DILocation(line: 153, column: 12, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 152, column: 3)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 152, column: 3)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 151, column: 2)
!121 = distinct !DILexicalBlock(scope: !109, file: !1, line: 151, column: 2)
!122 = !DILocation(line: 155, column: 10, scope: !109)
!123 = !DILocation(line: 156, column: 2, scope: !109)
!124 = !DILocation(line: 156, column: 10, scope: !109)
!125 = !DILocation(line: 157, column: 2, scope: !109)
!126 = !DILocation(line: 157, column: 10, scope: !109)
!127 = !DILocation(line: 158, column: 2, scope: !109)
!128 = !DILocation(line: 158, column: 10, scope: !109)
!129 = !DILocation(line: 159, column: 2, scope: !109)
!130 = distinct !DISubprogram(name: "MatrixCopy", scope: !1, file: !1, line: 176, type: !131, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !33, !33}
!133 = !{!134, !135, !136, !137}
!134 = !DILocalVariable(name: "A", arg: 1, scope: !130, file: !1, line: 176, type: !33)
!135 = !DILocalVariable(name: "B", arg: 2, scope: !130, file: !1, line: 176, type: !33)
!136 = !DILocalVariable(name: "i", scope: !130, file: !1, line: 178, type: !42)
!137 = !DILocalVariable(name: "j", scope: !130, file: !1, line: 178, type: !42)
!138 = !DILocation(line: 0, scope: !130)
!139 = !DILocation(line: 180, column: 2, scope: !140)
!140 = distinct !DILexicalBlock(scope: !130, file: !1, line: 180, column: 2)
!141 = !DILocation(line: 181, column: 3, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 181, column: 3)
!143 = distinct !DILexicalBlock(scope: !140, file: !1, line: 180, column: 2)
!144 = !DILocation(line: 182, column: 14, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 181, column: 3)
!146 = !DILocation(line: 182, column: 4, scope: !145)
!147 = !DILocation(line: 182, column: 12, scope: !145)
!148 = !DILocation(line: 181, column: 23, scope: !145)
!149 = !DILocation(line: 181, column: 17, scope: !145)
!150 = distinct !{!150, !141, !151, !66, !67}
!151 = !DILocation(line: 182, column: 20, scope: !142)
!152 = !DILocation(line: 180, column: 22, scope: !143)
!153 = !DILocation(line: 180, column: 16, scope: !143)
!154 = distinct !{!154, !139, !155, !66, !67}
!155 = !DILocation(line: 182, column: 20, scope: !140)
!156 = !DILocation(line: 183, column: 2, scope: !130)
!157 = distinct !DISubprogram(name: "MatrixTranspose", scope: !1, file: !1, line: 200, type: !131, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !158)
!158 = !{!159, !160, !161, !162, !163}
!159 = !DILocalVariable(name: "MT", arg: 1, scope: !157, file: !1, line: 200, type: !33)
!160 = !DILocalVariable(name: "M", arg: 2, scope: !157, file: !1, line: 200, type: !33)
!161 = !DILocalVariable(name: "i", scope: !157, file: !1, line: 202, type: !42)
!162 = !DILocalVariable(name: "j", scope: !157, file: !1, line: 202, type: !42)
!163 = !DILocalVariable(name: "tmp", scope: !157, file: !1, line: 203, type: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRIX", file: !14, line: 316, baseType: !165)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !166)
!166 = !{!36, !36}
!167 = !DILocation(line: 0, scope: !157)
!168 = !DILocation(line: 203, column: 2, scope: !157)
!169 = !DILocation(line: 203, column: 9, scope: !157)
!170 = !DILocation(line: 205, column: 2, scope: !171)
!171 = distinct !DILexicalBlock(scope: !157, file: !1, line: 205, column: 2)
!172 = !DILocation(line: 206, column: 3, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 206, column: 3)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 205, column: 2)
!175 = !DILocation(line: 207, column: 16, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !1, line: 206, column: 3)
!177 = !DILocation(line: 207, column: 4, scope: !176)
!178 = !DILocation(line: 207, column: 14, scope: !176)
!179 = !DILocation(line: 206, column: 23, scope: !176)
!180 = !DILocation(line: 206, column: 17, scope: !176)
!181 = distinct !{!181, !172, !182, !66, !67}
!182 = !DILocation(line: 207, column: 22, scope: !173)
!183 = !DILocation(line: 205, column: 22, scope: !174)
!184 = !DILocation(line: 205, column: 16, scope: !174)
!185 = distinct !{!185, !170, !186, !66, !67}
!186 = !DILocation(line: 207, column: 22, scope: !171)
!187 = !DILocation(line: 209, column: 2, scope: !157)
!188 = !DILocation(line: 210, column: 2, scope: !157)
!189 = distinct !DISubprogram(name: "MatrixMult", scope: !1, file: !1, line: 226, type: !190, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !33, !33, !33}
!192 = !{!193, !194, !195, !196, !197, !198, !199}
!193 = !DILocalVariable(name: "C", arg: 1, scope: !189, file: !1, line: 226, type: !33)
!194 = !DILocalVariable(name: "A", arg: 2, scope: !189, file: !1, line: 226, type: !33)
!195 = !DILocalVariable(name: "B", arg: 3, scope: !189, file: !1, line: 226, type: !33)
!196 = !DILocalVariable(name: "i", scope: !189, file: !1, line: 228, type: !42)
!197 = !DILocalVariable(name: "j", scope: !189, file: !1, line: 228, type: !42)
!198 = !DILocalVariable(name: "k", scope: !189, file: !1, line: 228, type: !42)
!199 = !DILocalVariable(name: "T", scope: !189, file: !1, line: 229, type: !164)
!200 = !DILocation(line: 0, scope: !189)
!201 = !DILocation(line: 229, column: 2, scope: !189)
!202 = !DILocation(line: 229, column: 9, scope: !189)
!203 = !DILocation(line: 233, column: 2, scope: !204)
!204 = distinct !DILexicalBlock(scope: !189, file: !1, line: 233, column: 2)
!205 = !DILocation(line: 234, column: 3, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 234, column: 3)
!207 = distinct !DILexicalBlock(scope: !204, file: !1, line: 233, column: 2)
!208 = !DILocation(line: 236, column: 4, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 235, column: 4)
!210 = distinct !DILexicalBlock(scope: !206, file: !1, line: 234, column: 3)
!211 = !DILocation(line: 237, column: 4, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 237, column: 4)
!213 = !DILocation(line: 238, column: 16, scope: !214)
!214 = distinct !DILexicalBlock(scope: !212, file: !1, line: 237, column: 4)
!215 = !DILocation(line: 238, column: 26, scope: !214)
!216 = !DILocation(line: 238, column: 13, scope: !214)
!217 = !DILocation(line: 237, column: 24, scope: !214)
!218 = !DILocation(line: 237, column: 18, scope: !214)
!219 = distinct !{!219, !211, !220, !66, !67}
!220 = !DILocation(line: 238, column: 32, scope: !212)
!221 = !DILocation(line: 234, column: 23, scope: !210)
!222 = !DILocation(line: 234, column: 17, scope: !210)
!223 = distinct !{!223, !205, !224, !66, !67}
!224 = !DILocation(line: 239, column: 4, scope: !206)
!225 = !DILocation(line: 233, column: 22, scope: !207)
!226 = !DILocation(line: 233, column: 16, scope: !207)
!227 = distinct !{!227, !203, !228, !66, !67}
!228 = !DILocation(line: 239, column: 4, scope: !204)
!229 = !DILocation(line: 245, column: 12, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 244, column: 3)
!231 = distinct !DILexicalBlock(scope: !232, file: !1, line: 244, column: 3)
!232 = distinct !DILexicalBlock(scope: !233, file: !1, line: 243, column: 2)
!233 = distinct !DILexicalBlock(scope: !189, file: !1, line: 243, column: 2)
!234 = !DILocation(line: 246, column: 2, scope: !189)
!235 = distinct !DISubprogram(name: "MatrixInverse", scope: !1, file: !1, line: 263, type: !131, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !247, !250, !251, !252, !253, !254}
!237 = !DILocalVariable(name: "Minv", arg: 1, scope: !235, file: !1, line: 263, type: !33)
!238 = !DILocalVariable(name: "Mat", arg: 2, scope: !235, file: !1, line: 263, type: !33)
!239 = !DILocalVariable(name: "i", scope: !235, file: !1, line: 265, type: !42)
!240 = !DILocalVariable(name: "j", scope: !235, file: !1, line: 265, type: !42)
!241 = !DILocalVariable(name: "k", scope: !235, file: !1, line: 265, type: !42)
!242 = !DILocalVariable(name: "gjmat", scope: !235, file: !1, line: 266, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "GJMATRIX", file: !1, line: 36, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !245)
!245 = !{!36, !246}
!246 = !DISubrange(count: 8)
!247 = !DILocalVariable(name: "tbuf", scope: !235, file: !1, line: 267, type: !248)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !249)
!249 = !{!246}
!250 = !DILocalVariable(name: "pval", scope: !235, file: !1, line: 268, type: !13)
!251 = !DILocalVariable(name: "aval", scope: !235, file: !1, line: 268, type: !13)
!252 = !DILocalVariable(name: "prow", scope: !235, file: !1, line: 269, type: !42)
!253 = !DILocalVariable(name: "c", scope: !235, file: !1, line: 270, type: !13)
!254 = !DILocalVariable(name: "tmp", scope: !235, file: !1, line: 271, type: !164)
!255 = !DILocation(line: 0, scope: !235)
!256 = !DILocation(line: 266, column: 2, scope: !235)
!257 = !DILocation(line: 266, column: 11, scope: !235)
!258 = !DILocation(line: 267, column: 2, scope: !235)
!259 = !DILocation(line: 267, column: 8, scope: !235)
!260 = !DILocation(line: 271, column: 2, scope: !235)
!261 = !DILocation(line: 271, column: 10, scope: !235)
!262 = !DILocation(line: 273, column: 2, scope: !263)
!263 = distinct !DILexicalBlock(scope: !235, file: !1, line: 273, column: 2)
!264 = !DILocation(line: 274, column: 3, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 274, column: 3)
!266 = distinct !DILexicalBlock(scope: !263, file: !1, line: 273, column: 2)
!267 = !DILocation(line: 275, column: 16, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !1, line: 274, column: 3)
!269 = !DILocation(line: 273, column: 22, scope: !266)
!270 = !DILocation(line: 273, column: 16, scope: !266)
!271 = distinct !{!271, !262, !272, !66, !67}
!272 = !DILocation(line: 275, column: 26, scope: !263)
!273 = !DILocation(line: 281, column: 3, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 281, column: 3)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 280, column: 3)
!276 = distinct !DILexicalBlock(scope: !277, file: !1, line: 279, column: 2)
!277 = distinct !DILexicalBlock(scope: !235, file: !1, line: 279, column: 2)
!278 = !DILocation(line: 282, column: 10, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 282, column: 8)
!280 = distinct !DILexicalBlock(scope: !274, file: !1, line: 281, column: 3)
!281 = !DILocation(line: 282, column: 8, scope: !280)
!282 = !DILocation(line: 283, column: 5, scope: !279)
!283 = !DILocation(line: 283, column: 17, scope: !279)
!284 = !DILocation(line: 281, column: 23, scope: !280)
!285 = !DILocation(line: 281, column: 17, scope: !280)
!286 = distinct !{!286, !273, !287, !66, !67}
!287 = !DILocation(line: 285, column: 19, scope: !274)
!288 = !DILocation(line: 286, column: 4, scope: !275)
!289 = !DILocation(line: 279, column: 22, scope: !276)
!290 = !DILocation(line: 279, column: 16, scope: !276)
!291 = !DILocation(line: 279, column: 2, scope: !277)
!292 = distinct !{!292, !291, !293, !66, !67}
!293 = !DILocation(line: 287, column: 3, scope: !277)
!294 = !DILocation(line: 292, column: 16, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 292, column: 2)
!296 = distinct !DILexicalBlock(scope: !235, file: !1, line: 292, column: 2)
!297 = !DILocation(line: 292, column: 2, scope: !296)
!298 = distinct !{!298, !297, !299, !66, !67}
!299 = !DILocation(line: 327, column: 3, scope: !296)
!300 = !DILocation(line: 294, column: 10, scope: !301)
!301 = distinct !DILexicalBlock(scope: !295, file: !1, line: 293, column: 3)
!302 = !DILocation(line: 297, column: 14, scope: !303)
!303 = distinct !DILexicalBlock(scope: !301, file: !1, line: 297, column: 3)
!304 = !DILocation(line: 297, column: 3, scope: !303)
!305 = !DILocation(line: 299, column: 11, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 298, column: 4)
!307 = distinct !DILexicalBlock(scope: !303, file: !1, line: 297, column: 3)
!308 = !DILocation(line: 300, column: 13, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !1, line: 300, column: 8)
!310 = !DILocation(line: 300, column: 8, scope: !306)
!311 = !DILocation(line: 304, column: 5, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !1, line: 301, column: 5)
!313 = !DILocation(line: 0, scope: !301)
!314 = !DILocation(line: 297, column: 27, scope: !307)
!315 = !DILocation(line: 297, column: 21, scope: !307)
!316 = distinct !{!316, !304, !317, !66, !67}
!317 = !DILocation(line: 305, column: 4, scope: !303)
!318 = !DILocation(line: 307, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !301, file: !1, line: 307, column: 7)
!320 = !DILocation(line: 307, column: 7, scope: !301)
!321 = !DILocation(line: 310, column: 13, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 309, column: 4)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 309, column: 4)
!324 = distinct !DILexicalBlock(scope: !319, file: !1, line: 308, column: 4)
!325 = !DILocation(line: 312, column: 4, scope: !326)
!326 = distinct !DILexicalBlock(scope: !324, file: !1, line: 312, column: 4)
!327 = !DILocation(line: 313, column: 19, scope: !328)
!328 = distinct !DILexicalBlock(scope: !326, file: !1, line: 312, column: 4)
!329 = !DILocation(line: 313, column: 5, scope: !328)
!330 = !DILocation(line: 313, column: 17, scope: !328)
!331 = !DILocation(line: 312, column: 24, scope: !328)
!332 = !DILocation(line: 312, column: 18, scope: !328)
!333 = distinct !{!333, !325, !334, !66, !67}
!334 = !DILocation(line: 313, column: 32, scope: !326)
!335 = !DILocation(line: 315, column: 4, scope: !336)
!336 = distinct !DILexicalBlock(scope: !324, file: !1, line: 315, column: 4)
!337 = !DILocation(line: 316, column: 20, scope: !338)
!338 = distinct !DILexicalBlock(scope: !336, file: !1, line: 315, column: 4)
!339 = !DILocation(line: 319, column: 21, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 319, column: 3)
!341 = distinct !DILexicalBlock(scope: !301, file: !1, line: 319, column: 3)
!342 = !DILocation(line: 319, column: 3, scope: !341)
!343 = !DILocation(line: 321, column: 8, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !1, line: 320, column: 4)
!345 = !DILocation(line: 321, column: 22, scope: !344)
!346 = !DILocation(line: 322, column: 16, scope: !344)
!347 = !DILocation(line: 324, column: 4, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !1, line: 324, column: 4)
!349 = !DILocation(line: 325, column: 19, scope: !350)
!350 = distinct !DILexicalBlock(scope: !348, file: !1, line: 324, column: 4)
!351 = !DILocation(line: 325, column: 37, scope: !350)
!352 = !DILocation(line: 325, column: 31, scope: !350)
!353 = !DILocation(line: 325, column: 17, scope: !350)
!354 = !DILocation(line: 324, column: 28, scope: !350)
!355 = !DILocation(line: 324, column: 22, scope: !350)
!356 = distinct !{!356, !347, !357, !66, !67}
!357 = !DILocation(line: 325, column: 47, scope: !348)
!358 = !DILocation(line: 319, column: 27, scope: !340)
!359 = distinct !{!359, !342, !360, !66, !67}
!360 = !DILocation(line: 326, column: 4, scope: !341)
!361 = !DILocation(line: 332, column: 16, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 332, column: 2)
!363 = distinct !DILexicalBlock(scope: !235, file: !1, line: 332, column: 2)
!364 = !DILocation(line: 332, column: 2, scope: !363)
!365 = distinct !{!365, !364, !366, !66, !67}
!366 = !DILocation(line: 340, column: 4, scope: !363)
!367 = !DILocation(line: 333, column: 14, scope: !368)
!368 = distinct !DILexicalBlock(scope: !362, file: !1, line: 333, column: 3)
!369 = !DILocation(line: 333, column: 3, scope: !368)
!370 = !DILocation(line: 333, column: 21, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !1, line: 333, column: 3)
!372 = distinct !{!372, !369, !373, !66, !67}
!373 = !DILocation(line: 340, column: 4, scope: !368)
!374 = !DILocation(line: 335, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !1, line: 334, column: 4)
!376 = !DILocation(line: 335, column: 22, scope: !375)
!377 = !DILocation(line: 336, column: 16, scope: !375)
!378 = !DILocation(line: 338, column: 15, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !1, line: 338, column: 4)
!380 = !DILocation(line: 338, column: 4, scope: !379)
!381 = !DILocation(line: 339, column: 19, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !1, line: 338, column: 4)
!383 = !DILocation(line: 339, column: 37, scope: !382)
!384 = !DILocation(line: 339, column: 31, scope: !382)
!385 = !DILocation(line: 339, column: 17, scope: !382)
!386 = !DILocation(line: 338, column: 28, scope: !382)
!387 = !DILocation(line: 338, column: 22, scope: !382)
!388 = distinct !{!388, !380, !389, !66, !67}
!389 = !DILocation(line: 339, column: 47, scope: !379)
!390 = !DILocation(line: 344, column: 3, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 344, column: 3)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 343, column: 2)
!393 = distinct !DILexicalBlock(scope: !235, file: !1, line: 343, column: 2)
!394 = !DILocation(line: 345, column: 19, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !1, line: 344, column: 3)
!396 = !DILocation(line: 345, column: 4, scope: !395)
!397 = !DILocation(line: 345, column: 16, scope: !395)
!398 = !DILocation(line: 344, column: 23, scope: !395)
!399 = !DILocation(line: 344, column: 17, scope: !395)
!400 = distinct !{!400, !390, !401, !66, !67}
!401 = !DILocation(line: 345, column: 29, scope: !391)
!402 = !DILocation(line: 343, column: 22, scope: !392)
!403 = !DILocation(line: 343, column: 16, scope: !392)
!404 = !DILocation(line: 343, column: 2, scope: !393)
!405 = distinct !{!405, !404, !406, !66, !67}
!406 = !DILocation(line: 345, column: 29, scope: !393)
!407 = !DILocation(line: 351, column: 3, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 351, column: 3)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 350, column: 2)
!410 = distinct !DILexicalBlock(scope: !235, file: !1, line: 350, column: 2)
!411 = !DILocation(line: 352, column: 19, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 351, column: 3)
!413 = !DILocation(line: 350, column: 22, scope: !409)
!414 = !DILocation(line: 350, column: 16, scope: !409)
!415 = !DILocation(line: 350, column: 2, scope: !410)
!416 = distinct !{!416, !415, !417, !66, !67}
!417 = !DILocation(line: 352, column: 31, scope: !410)
!418 = !DILocation(line: 354, column: 2, scope: !235)
!419 = !DILocation(line: 355, column: 2, scope: !235)
!420 = distinct !DISubprogram(name: "Translate", scope: !1, file: !1, line: 372, type: !421, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !33, !13, !13, !13}
!423 = !{!424, !425, !426, !427}
!424 = !DILocalVariable(name: "M", arg: 1, scope: !420, file: !1, line: 372, type: !33)
!425 = !DILocalVariable(name: "dx", arg: 2, scope: !420, file: !1, line: 372, type: !13)
!426 = !DILocalVariable(name: "dy", arg: 3, scope: !420, file: !1, line: 372, type: !13)
!427 = !DILocalVariable(name: "dz", arg: 4, scope: !420, file: !1, line: 372, type: !13)
!428 = !DILocation(line: 0, scope: !420)
!429 = !DILocation(line: 374, column: 2, scope: !420)
!430 = !DILocation(line: 376, column: 2, scope: !420)
!431 = !DILocation(line: 376, column: 10, scope: !420)
!432 = !DILocation(line: 377, column: 2, scope: !420)
!433 = !DILocation(line: 377, column: 10, scope: !420)
!434 = !DILocation(line: 378, column: 2, scope: !420)
!435 = !DILocation(line: 378, column: 10, scope: !420)
!436 = !DILocation(line: 379, column: 2, scope: !420)
!437 = distinct !DISubprogram(name: "Scale", scope: !1, file: !1, line: 396, type: !421, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !438)
!438 = !{!439, !440, !441, !442}
!439 = !DILocalVariable(name: "M", arg: 1, scope: !437, file: !1, line: 396, type: !33)
!440 = !DILocalVariable(name: "sx", arg: 2, scope: !437, file: !1, line: 396, type: !13)
!441 = !DILocalVariable(name: "sy", arg: 3, scope: !437, file: !1, line: 396, type: !13)
!442 = !DILocalVariable(name: "sz", arg: 4, scope: !437, file: !1, line: 396, type: !13)
!443 = !DILocation(line: 0, scope: !437)
!444 = !DILocation(line: 398, column: 2, scope: !437)
!445 = !DILocation(line: 400, column: 10, scope: !437)
!446 = !DILocation(line: 401, column: 2, scope: !437)
!447 = !DILocation(line: 401, column: 10, scope: !437)
!448 = !DILocation(line: 402, column: 2, scope: !437)
!449 = !DILocation(line: 402, column: 10, scope: !437)
!450 = !DILocation(line: 403, column: 2, scope: !437)
!451 = distinct !DISubprogram(name: "Rotate", scope: !1, file: !1, line: 421, type: !452, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !42, !33, !13}
!454 = !{!455, !456, !457, !458, !459}
!455 = !DILocalVariable(name: "axis", arg: 1, scope: !451, file: !1, line: 421, type: !42)
!456 = !DILocalVariable(name: "M", arg: 2, scope: !451, file: !1, line: 421, type: !33)
!457 = !DILocalVariable(name: "angle", arg: 3, scope: !451, file: !1, line: 421, type: !13)
!458 = !DILocalVariable(name: "cosangle", scope: !451, file: !1, line: 423, type: !13)
!459 = !DILocalVariable(name: "sinangle", scope: !451, file: !1, line: 424, type: !13)
!460 = !DILocation(line: 0, scope: !451)
!461 = !DILocation(line: 426, column: 2, scope: !451)
!462 = !DILocation(line: 428, column: 13, scope: !451)
!463 = !DILocation(line: 429, column: 13, scope: !451)
!464 = !DILocation(line: 431, column: 2, scope: !451)
!465 = !DILocation(line: 434, column: 4, scope: !466)
!466 = distinct !DILexicalBlock(scope: !451, file: !1, line: 432, column: 3)
!467 = !DILocation(line: 434, column: 12, scope: !466)
!468 = !DILocation(line: 435, column: 4, scope: !466)
!469 = !DILocation(line: 435, column: 12, scope: !466)
!470 = !DILocation(line: 436, column: 14, scope: !466)
!471 = !DILocation(line: 436, column: 4, scope: !466)
!472 = !DILocation(line: 436, column: 12, scope: !466)
!473 = !DILocation(line: 437, column: 4, scope: !466)
!474 = !DILocation(line: 438, column: 4, scope: !466)
!475 = !DILocation(line: 441, column: 12, scope: !466)
!476 = !DILocation(line: 442, column: 14, scope: !466)
!477 = !DILocation(line: 442, column: 4, scope: !466)
!478 = !DILocation(line: 442, column: 12, scope: !466)
!479 = !DILocation(line: 443, column: 4, scope: !466)
!480 = !DILocation(line: 443, column: 12, scope: !466)
!481 = !DILocation(line: 444, column: 4, scope: !466)
!482 = !DILocation(line: 445, column: 4, scope: !466)
!483 = !DILocation(line: 448, column: 12, scope: !466)
!484 = !DILocation(line: 449, column: 4, scope: !466)
!485 = !DILocation(line: 449, column: 12, scope: !466)
!486 = !DILocation(line: 450, column: 14, scope: !466)
!487 = !DILocation(line: 450, column: 4, scope: !466)
!488 = !DILocation(line: 450, column: 12, scope: !466)
!489 = !DILocation(line: 451, column: 4, scope: !466)
!490 = !DILocation(line: 452, column: 4, scope: !466)
!491 = !DILocation(line: 455, column: 4, scope: !466)
!492 = !DILocation(line: 456, column: 4, scope: !466)
!493 = !DILocation(line: 0, scope: !466)
!494 = !DILocation(line: 459, column: 2, scope: !451)
