; ModuleID = 'shade.c'
source_filename = "shade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { [4 x double], [4 x double], [4 x [4 x double]], [4 x [4 x double]], [4 x [4 x double]], [3 x double], i64, double, [3 x double], i64, i64 }
%struct.display = type { i64, i64, i64, i64, double, i64, i64, i64, double, double, double, double, double, double, double, double, ptr }
%struct.ray = type { i64, i64, i64, [3 x double], [3 x double], i64, ptr, i64, [3 x i64], [5 x %struct.rayinfo], float, float }
%struct.rayinfo = type { ptr, [3 x double], i64, double, i64, double, [3 x double], [3 x i64], i64, [3 x i64], ptr }
%struct.irecord = type { double, ptr, double, double, double }
%struct.element = type { i64, ptr, ptr, %struct.bbox }
%struct.bbox = type { [3 x double], [3 x double] }
%struct.object = type { i64, [32 x i8], %struct.bbox, ptr, i64, ptr, ptr, ptr }
%struct.surf = type { [3 x double], [3 x double], double, double, double, double, double }
%struct.gmem = type { i64, i64, i64, ptr, ptr, ptr, [4096 x [256 x ptr]], %struct.anon, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, [4096 x %union.pthread_mutex_t], i64, [4096 x i64] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.light = type { [4 x double], [3 x double], i64, ptr }

@View = external local_unnamed_addr global %struct.view, align 8
@lights = external local_unnamed_addr global ptr, align 8
@nlights = external local_unnamed_addr global i64, align 8
@gm = external local_unnamed_addr global ptr, align 8
@TraversalType = external local_unnamed_addr global i64, align 8
@Display = external local_unnamed_addr global %struct.display, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @SpecularDirection(ptr noundef %R, ptr nocapture noundef readonly %N, ptr nocapture noundef readonly %I) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.declare(metadata ptr undef, metadata !21, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !28
  call void @llvm.dbg.declare(metadata ptr undef, metadata !27, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !29
  call void @llvm.dbg.value(metadata ptr %R, metadata !17, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata ptr %N, metadata !18, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata ptr %I, metadata !19, metadata !DIExpression()), !dbg !30
  %0 = load double, ptr %I, align 8, !dbg !31
  %1 = load double, ptr %N, align 8, !dbg !31
  %arrayidx2 = getelementptr inbounds double, ptr %I, i64 1, !dbg !31
  %2 = load double, ptr %arrayidx2, align 8, !dbg !31
  %arrayidx3 = getelementptr inbounds double, ptr %N, i64 1, !dbg !31
  %3 = load double, ptr %arrayidx3, align 8, !dbg !31
  %mul4 = fmul double %2, %3, !dbg !31
  %4 = tail call double @llvm.fmuladd.f64(double %0, double %1, double %mul4), !dbg !31
  %arrayidx5 = getelementptr inbounds double, ptr %I, i64 2, !dbg !31
  %5 = load double, ptr %arrayidx5, align 8, !dbg !31
  %arrayidx6 = getelementptr inbounds double, ptr %N, i64 2, !dbg !31
  %6 = load double, ptr %arrayidx6, align 8, !dbg !31
  %7 = tail call double @llvm.fmuladd.f64(double %5, double %6, double %4), !dbg !31
  call void @llvm.dbg.value(metadata double %7, metadata !20, metadata !DIExpression()), !dbg !30
  %cmp = fcmp ogt double %7, 0.000000e+00, !dbg !32
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !32

cond.false:                                       ; preds = %entry
  %fneg = fneg double %7, !dbg !32
  br label %cond.end, !dbg !32

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi double [ %fneg, %cond.false ], [ %7, %entry ], !dbg !32
  call void @llvm.dbg.value(metadata double %cond, metadata !20, metadata !DIExpression()), !dbg !30
  %div = fdiv double 1.000000e+00, %cond, !dbg !33
  call void @llvm.dbg.value(metadata double %div, metadata !20, metadata !DIExpression()), !dbg !30
  %mul = fmul double %0, %div, !dbg !34
  call void @llvm.dbg.value(metadata double %mul, metadata !27, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !30
  %mul10 = fmul double %2, %div, !dbg !34
  call void @llvm.dbg.value(metadata double %mul10, metadata !27, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !30
  %mul13 = fmul double %5, %div, !dbg !34
  call void @llvm.dbg.value(metadata double %mul13, metadata !27, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !30
  %mul16 = fmul double %1, 2.000000e+00, !dbg !36
  call void @llvm.dbg.value(metadata double %mul16, metadata !21, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !30
  %mul19 = fmul double %3, 2.000000e+00, !dbg !36
  call void @llvm.dbg.value(metadata double %mul19, metadata !21, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !30
  %mul22 = fmul double %6, 2.000000e+00, !dbg !36
  call void @llvm.dbg.value(metadata double %mul22, metadata !21, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !30
  %add = fadd double %mul16, %mul, !dbg !38
  store double %add, ptr %R, align 8, !dbg !38
  %add29 = fadd double %mul19, %mul10, !dbg !38
  %arrayidx30 = getelementptr inbounds double, ptr %R, i64 1, !dbg !38
  store double %add29, ptr %arrayidx30, align 8, !dbg !38
  %add33 = fadd double %mul22, %mul13, !dbg !38
  %arrayidx34 = getelementptr inbounds double, ptr %R, i64 2, !dbg !38
  store double %add33, ptr %arrayidx34, align 8, !dbg !38
  tail call void @VecNorm(ptr noundef nonnull %R) #7, !dbg !40
  ret void, !dbg !41
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

declare !dbg !42 void @VecNorm(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TransmissionDirection(ptr noundef %T, ptr nocapture noundef readonly %N, ptr nocapture noundef readonly %I, double noundef %kn) local_unnamed_addr #0 !dbg !46 {
entry:
  call void @llvm.dbg.declare(metadata ptr undef, metadata !56, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !62
  call void @llvm.dbg.declare(metadata ptr undef, metadata !57, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !63
  call void @llvm.dbg.value(metadata ptr %T, metadata !52, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata ptr %N, metadata !53, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata ptr %I, metadata !54, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata double %kn, metadata !55, metadata !DIExpression()), !dbg !64
  %0 = load double, ptr %I, align 8, !dbg !65
  %1 = load double, ptr %N, align 8, !dbg !65
  %arrayidx2 = getelementptr inbounds double, ptr %I, i64 1, !dbg !65
  %2 = load double, ptr %arrayidx2, align 8, !dbg !65
  %arrayidx3 = getelementptr inbounds double, ptr %N, i64 1, !dbg !65
  %3 = load double, ptr %arrayidx3, align 8, !dbg !65
  %mul4 = fmul double %2, %3, !dbg !65
  %4 = tail call double @llvm.fmuladd.f64(double %0, double %1, double %mul4), !dbg !65
  %arrayidx5 = getelementptr inbounds double, ptr %I, i64 2, !dbg !65
  %5 = load double, ptr %arrayidx5, align 8, !dbg !65
  %arrayidx6 = getelementptr inbounds double, ptr %N, i64 2, !dbg !65
  %6 = load double, ptr %arrayidx6, align 8, !dbg !65
  %7 = tail call double @llvm.fmuladd.f64(double %5, double %6, double %4), !dbg !65
  call void @llvm.dbg.value(metadata double %7, metadata !58, metadata !DIExpression()), !dbg !64
  %cmp = fcmp ogt double %7, 0.000000e+00, !dbg !66
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !66

cond.false:                                       ; preds = %entry
  %fneg = fneg double %7, !dbg !66
  br label %cond.end, !dbg !66

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi double [ %fneg, %cond.false ], [ %7, %entry ], !dbg !66
  call void @llvm.dbg.value(metadata double %cond, metadata !58, metadata !DIExpression()), !dbg !64
  %div = fdiv double 1.000000e+00, %cond, !dbg !67
  call void @llvm.dbg.value(metadata double %div, metadata !58, metadata !DIExpression()), !dbg !64
  %mul = fmul double %0, %div, !dbg !68
  call void @llvm.dbg.value(metadata double %mul, metadata !56, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !64
  %mul10 = fmul double %2, %div, !dbg !68
  call void @llvm.dbg.value(metadata double %mul10, metadata !56, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !64
  %mul13 = fmul double %5, %div, !dbg !68
  call void @llvm.dbg.value(metadata double %mul13, metadata !56, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !64
  %add = fadd double %1, %mul, !dbg !70
  call void @llvm.dbg.value(metadata double %add, metadata !57, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !64
  %add20 = fadd double %3, %mul10, !dbg !70
  call void @llvm.dbg.value(metadata double %add20, metadata !57, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !64
  %add24 = fadd double %6, %mul13, !dbg !70
  call void @llvm.dbg.value(metadata double %add24, metadata !57, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !64
  %mul31 = fmul double %mul10, %mul10, !dbg !72
  %8 = tail call double @llvm.fmuladd.f64(double %mul, double %mul, double %mul31), !dbg !72
  %9 = tail call double @llvm.fmuladd.f64(double %mul13, double %mul13, double %8), !dbg !72
  call void @llvm.dbg.value(metadata double %9, metadata !60, metadata !DIExpression()), !dbg !64
  %mul40 = fmul double %add20, %add20, !dbg !73
  %10 = tail call double @llvm.fmuladd.f64(double %add, double %add, double %mul40), !dbg !73
  %11 = tail call double @llvm.fmuladd.f64(double %add24, double %add24, double %10), !dbg !73
  call void @llvm.dbg.value(metadata double %11, metadata !61, metadata !DIExpression()), !dbg !64
  %mul44 = fmul double %kn, %kn, !dbg !74
  %neg = fneg double %11, !dbg !75
  %12 = tail call double @llvm.fmuladd.f64(double %mul44, double %9, double %neg), !dbg !75
  call void @llvm.dbg.value(metadata double %12, metadata !59, metadata !DIExpression()), !dbg !64
  %cmp46 = fcmp ogt double %12, 0x3E7AD7F29ABCAF48, !dbg !76
  br i1 %cmp46, label %if.then, label %cleanup, !dbg !78

if.then:                                          ; preds = %cond.end
  %call = tail call double @sqrt(double noundef %12) #7, !dbg !79
  %div47 = fdiv double 1.000000e+00, %call, !dbg !81
  call void @llvm.dbg.value(metadata double %div47, metadata !59, metadata !DIExpression()), !dbg !64
  %mul49 = fmul double %add, %div47, !dbg !82
  call void @llvm.dbg.value(metadata double %mul49, metadata !57, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !64
  %mul52 = fmul double %add20, %div47, !dbg !82
  call void @llvm.dbg.value(metadata double %mul52, metadata !57, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !64
  %mul55 = fmul double %add24, %div47, !dbg !82
  call void @llvm.dbg.value(metadata double %mul55, metadata !57, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !64
  %13 = load double, ptr %N, align 8, !dbg !84
  %sub = fsub double %mul49, %13, !dbg !84
  store double %sub, ptr %T, align 8, !dbg !84
  %14 = load double, ptr %arrayidx3, align 8, !dbg !84
  %sub62 = fsub double %mul52, %14, !dbg !84
  %arrayidx63 = getelementptr inbounds double, ptr %T, i64 1, !dbg !84
  store double %sub62, ptr %arrayidx63, align 8, !dbg !84
  %15 = load double, ptr %arrayidx6, align 8, !dbg !84
  %sub66 = fsub double %mul55, %15, !dbg !84
  %arrayidx67 = getelementptr inbounds double, ptr %T, i64 2, !dbg !84
  store double %sub66, ptr %arrayidx67, align 8, !dbg !84
  tail call void @VecNorm(ptr noundef nonnull %T) #7, !dbg !86
  br label %cleanup, !dbg !87

cleanup:                                          ; preds = %cond.end, %if.then
  %retval.0 = phi i64 [ 1, %if.then ], [ 0, %cond.end ], !dbg !64
  ret i64 %retval.0, !dbg !88
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Shade(ptr nocapture noundef readonly %iP, ptr nocapture noundef readonly %N, ptr nocapture noundef readonly %ray, ptr nocapture noundef readonly %hit, i64 noundef %pid) local_unnamed_addr #0 !dbg !89 {
entry:
  %Lvec = alloca [3 x double], align 16
  %Hvec = alloca [3 x double], align 16
  %shad_ray = alloca %struct.ray, align 8
  %secondary_ray = alloca %struct.ray, align 8
  %col = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata ptr %iP, metadata !263, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata ptr %N, metadata !264, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata ptr %ray, metadata !265, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata ptr %hit, metadata !266, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 %pid, metadata !267, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %Lvec) #7, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %Lvec, metadata !268, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %Hvec) #7, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %Hvec, metadata !269, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 888, ptr nonnull %shad_ray) #7, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %shad_ray, metadata !271, metadata !DIExpression()), !dbg !302
  call void @llvm.lifetime.start.p0(i64 888, ptr nonnull %secondary_ray) #7, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %secondary_ray, metadata !272, metadata !DIExpression()), !dbg !304
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %col) #7, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %col, metadata !274, metadata !DIExpression()), !dbg !306
  %pelem = getelementptr inbounds %struct.irecord, ptr %hit, i64 0, i32 1, !dbg !307
  %0 = load ptr, ptr %pelem, align 8, !dbg !307
  %parent = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 1, !dbg !308
  %1 = load ptr, ptr %parent, align 8, !dbg !308
  call void @llvm.dbg.value(metadata ptr %1, metadata !279, metadata !DIExpression()), !dbg !296
  %surf = getelementptr inbounds %struct.object, ptr %1, i64 0, i32 6, !dbg !309
  %2 = load ptr, ptr %surf, align 8, !dbg !309
  call void @llvm.dbg.value(metadata ptr %2, metadata !282, metadata !DIExpression()), !dbg !296
  %3 = load double, ptr %2, align 8, !dbg !310
  call void @llvm.dbg.value(metadata double %3, metadata !273, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !296
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1, !dbg !310
  %4 = load double, ptr %arrayidx3, align 8, !dbg !310
  call void @llvm.dbg.value(metadata double %4, metadata !273, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !296
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2, !dbg !310
  %5 = load double, ptr %arrayidx6, align 8, !dbg !310
  call void @llvm.dbg.value(metadata double %5, metadata !273, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !296
  %6 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8), align 8, !dbg !312
  %mul = fmul double %3, %6, !dbg !313
  store double %mul, ptr %col, align 16, !dbg !314
  %7 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8, i64 1), align 8, !dbg !315
  %mul11 = fmul double %4, %7, !dbg !316
  %arrayidx12 = getelementptr inbounds [3 x double], ptr %col, i64 0, i64 1, !dbg !317
  store double %mul11, ptr %arrayidx12, align 8, !dbg !318
  %8 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 8, i64 2), align 8, !dbg !319
  %mul14 = fmul double %5, %8, !dbg !320
  %arrayidx15 = getelementptr inbounds [3 x double], ptr %col, i64 0, i64 2, !dbg !321
  store double %mul14, ptr %arrayidx15, align 16, !dbg !322
  %9 = load double, ptr %iP, align 8, !dbg !323
  %P = getelementptr inbounds %struct.ray, ptr %shad_ray, i64 0, i32 3, !dbg !323
  store double %9, ptr %P, align 8, !dbg !323
  %arrayidx18 = getelementptr inbounds double, ptr %iP, i64 1, !dbg !323
  %10 = load double, ptr %arrayidx18, align 8, !dbg !323
  %arrayidx20 = getelementptr inbounds %struct.ray, ptr %shad_ray, i64 0, i32 3, i64 1, !dbg !323
  store double %10, ptr %arrayidx20, align 8, !dbg !323
  %arrayidx21 = getelementptr inbounds double, ptr %iP, i64 2, !dbg !323
  %11 = load double, ptr %arrayidx21, align 8, !dbg !323
  %arrayidx23 = getelementptr inbounds %struct.ray, ptr %shad_ray, i64 0, i32 3, i64 2, !dbg !323
  store double %11, ptr %arrayidx23, align 8, !dbg !323
  %D = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 4, !dbg !325
  %12 = load double, ptr %D, align 8, !dbg !325
  call void @llvm.dbg.value(metadata double undef, metadata !270, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !296
  %arrayidx27 = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 4, i64 1, !dbg !325
  %13 = load double, ptr %arrayidx27, align 8, !dbg !325
  call void @llvm.dbg.value(metadata double undef, metadata !270, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !296
  %arrayidx31 = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 4, i64 2, !dbg !325
  %14 = load double, ptr %arrayidx31, align 8, !dbg !325
  call void @llvm.dbg.value(metadata double undef, metadata !270, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !296
  call void @llvm.dbg.value(metadata ptr undef, metadata !286, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 0, metadata !283, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata ptr undef, metadata !286, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double undef, metadata !285, metadata !DIExpression()), !dbg !296
  %15 = load i64, ptr @nlights, align 8, !dbg !327
  %cmp321 = icmp sgt i64 %15, 0, !dbg !330
  br i1 %cmp321, label %for.body.lr.ph, label %for.end, !dbg !331

for.body.lr.ph:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata ptr undef, metadata !286, metadata !DIExpression()), !dbg !296
  %arrayidx41 = getelementptr inbounds [3 x double], ptr %Lvec, i64 0, i64 1
  %arrayidx46 = getelementptr inbounds [3 x double], ptr %Lvec, i64 0, i64 2
  %D57 = getelementptr inbounds %struct.ray, ptr %shad_ray, i64 0, i32 4
  %arrayidx61 = getelementptr inbounds %struct.ray, ptr %shad_ray, i64 0, i32 4, i64 1
  %arrayidx64 = getelementptr inbounds %struct.ray, ptr %shad_ray, i64 0, i32 4, i64 2
  %arrayidx71 = getelementptr inbounds double, ptr %N, i64 1
  %arrayidx74 = getelementptr inbounds double, ptr %N, i64 2
  %kspec = getelementptr inbounds %struct.surf, ptr %2, i64 0, i32 3
  %arrayidx116 = getelementptr inbounds [3 x double], ptr %Hvec, i64 0, i64 1
  %arrayidx120 = getelementptr inbounds [3 x double], ptr %Hvec, i64 0, i64 2
  %kspecn = getelementptr inbounds %struct.surf, ptr %2, i64 0, i32 6
  br label %for.body, !dbg !331

for.body:                                         ; preds = %if.end151.for.body_crit_edge, %for.body.lr.ph
  %16 = phi double [ %11, %for.body.lr.ph ], [ %.pre327, %if.end151.for.body_crit_edge ], !dbg !332
  %17 = phi double [ %10, %for.body.lr.ph ], [ %.pre326, %if.end151.for.body_crit_edge ], !dbg !332
  %18 = phi double [ %9, %for.body.lr.ph ], [ %.pre, %if.end151.for.body_crit_edge ], !dbg !332
  %lptr.0324.in = phi ptr [ @lights, %for.body.lr.ph ], [ %next, %if.end151.for.body_crit_edge ]
  %shadtrans.0323 = phi double [ undef, %for.body.lr.ph ], [ %shadtrans.2, %if.end151.for.body_crit_edge ]
  %i.0322 = phi i64 [ 0, %for.body.lr.ph ], [ %inc152, %if.end151.for.body_crit_edge ]
  %lptr.0324 = load ptr, ptr %lptr.0324.in, align 8, !dbg !296
  call void @llvm.dbg.value(metadata double %shadtrans.0323, metadata !285, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 %i.0322, metadata !283, metadata !DIExpression()), !dbg !296
  %19 = load double, ptr %lptr.0324, align 8, !dbg !332
  %sub = fsub double %19, %18, !dbg !332
  store double %sub, ptr %Lvec, align 16, !dbg !332
  %arrayidx38 = getelementptr inbounds [4 x double], ptr %lptr.0324, i64 0, i64 1, !dbg !332
  %20 = load double, ptr %arrayidx38, align 8, !dbg !332
  %sub40 = fsub double %20, %17, !dbg !332
  store double %sub40, ptr %arrayidx41, align 8, !dbg !332
  %arrayidx43 = getelementptr inbounds [4 x double], ptr %lptr.0324, i64 0, i64 2, !dbg !332
  %21 = load double, ptr %arrayidx43, align 8, !dbg !332
  %sub45 = fsub double %21, %16, !dbg !332
  store double %sub45, ptr %arrayidx46, align 16, !dbg !332
  %mul52 = fmul double %sub40, %sub40, !dbg !335
  %22 = call double @llvm.fmuladd.f64(double %sub, double %sub, double %mul52), !dbg !335
  %23 = call double @llvm.fmuladd.f64(double %sub45, double %sub45, double %22), !dbg !335
  %call = call double @sqrt(double noundef %23) #7, !dbg !335
  call void @llvm.dbg.value(metadata double %call, metadata !284, metadata !DIExpression()), !dbg !296
  call void @VecNorm(ptr noundef nonnull %Lvec) #7, !dbg !336
  %24 = load double, ptr %Lvec, align 16, !dbg !337
  store double %24, ptr %D57, align 8, !dbg !337
  %25 = load double, ptr %arrayidx41, align 8, !dbg !337
  store double %25, ptr %arrayidx61, align 8, !dbg !337
  %26 = load double, ptr %arrayidx46, align 16, !dbg !337
  store double %26, ptr %arrayidx64, align 8, !dbg !337
  %27 = load ptr, ptr @gm, align 8, !dbg !339
  %ridlock = getelementptr inbounds %struct.gmem, ptr %27, i64 0, i32 9, !dbg !341
  %call65 = call i32 @pthread_mutex_lock(ptr noundef nonnull %ridlock) #7, !dbg !342
  %28 = load ptr, ptr @gm, align 8, !dbg !343
  %rid = getelementptr inbounds %struct.gmem, ptr %28, i64 0, i32 2, !dbg !344
  %29 = load i64, ptr %rid, align 8, !dbg !345
  %inc = add nsw i64 %29, 1, !dbg !345
  store i64 %inc, ptr %rid, align 8, !dbg !345
  store i64 %29, ptr %shad_ray, align 8, !dbg !346
  %ridlock66 = getelementptr inbounds %struct.gmem, ptr %28, i64 0, i32 9, !dbg !347
  %call67 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %ridlock66) #7, !dbg !349
  %30 = load double, ptr %N, align 8, !dbg !350
  %31 = load double, ptr %Lvec, align 16, !dbg !350
  %32 = load double, ptr %arrayidx71, align 8, !dbg !350
  %33 = load double, ptr %arrayidx41, align 8, !dbg !350
  %mul73 = fmul double %32, %33, !dbg !350
  %34 = call double @llvm.fmuladd.f64(double %30, double %31, double %mul73), !dbg !350
  %35 = load double, ptr %arrayidx74, align 8, !dbg !350
  %36 = load double, ptr %arrayidx46, align 16, !dbg !350
  %37 = call double @llvm.fmuladd.f64(double %35, double %36, double %34), !dbg !350
  call void @llvm.dbg.value(metadata double %37, metadata !275, metadata !DIExpression()), !dbg !296
  %cmp77 = fcmp ogt double %37, 0.000000e+00, !dbg !351
  br i1 %cmp77, label %if.then, label %if.end151, !dbg !353

if.then:                                          ; preds = %for.body
  %38 = load i64, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 9), align 8, !dbg !354
  %tobool.not = icmp eq i64 %38, 0, !dbg !357
  br i1 %tobool.not, label %if.then86, label %land.lhs.true, !dbg !358

land.lhs.true:                                    ; preds = %if.then
  %shadow = getelementptr inbounds %struct.light, ptr %lptr.0324, i64 0, i32 2, !dbg !359
  %39 = load i64, ptr %shadow, align 8, !dbg !359
  %tobool78.not = icmp eq i64 %39, 0, !dbg !360
  br i1 %tobool78.not, label %if.then79, label %if.then86, !dbg !361

if.then79:                                        ; preds = %land.lhs.true
  %40 = load i64, ptr @TraversalType, align 8, !dbg !362
  switch i64 %40, label %if.end [
    i64 0, label %sw.bb
    i64 1, label %sw.bb82
  ], !dbg !364

sw.bb:                                            ; preds = %if.then79
  %41 = load ptr, ptr %pelem, align 8, !dbg !365
  %call81 = call double @ShadowIntersect(ptr noundef nonnull %shad_ray, double noundef %call, ptr noundef %41) #7, !dbg !367
  call void @llvm.dbg.value(metadata double %call81, metadata !285, metadata !DIExpression()), !dbg !296
  br label %if.end, !dbg !368

sw.bb82:                                          ; preds = %if.then79
  %42 = load ptr, ptr %pelem, align 8, !dbg !369
  %call84 = call double @HuniformShadowIntersect(ptr noundef nonnull %shad_ray, double noundef %call, ptr noundef %42, i64 noundef %pid) #7, !dbg !370
  call void @llvm.dbg.value(metadata double %call84, metadata !285, metadata !DIExpression()), !dbg !296
  br label %if.end, !dbg !371

if.end:                                           ; preds = %sw.bb, %sw.bb82, %if.then79
  %shadtrans.1 = phi double [ %shadtrans.0323, %if.then79 ], [ %call84, %sw.bb82 ], [ %call81, %sw.bb ]
  call void @llvm.dbg.value(metadata double %shadtrans.1, metadata !285, metadata !DIExpression()), !dbg !296
  %cmp85 = fcmp ogt double %shadtrans.1, 0.000000e+00, !dbg !372
  br i1 %cmp85, label %if.then86, label %if.end151, !dbg !374

if.then86:                                        ; preds = %if.then, %land.lhs.true, %if.end
  %shadtrans.1319 = phi double [ %shadtrans.1, %if.end ], [ 1.000000e+00, %land.lhs.true ], [ 1.000000e+00, %if.then ]
  %43 = load ptr, ptr %surf, align 8, !dbg !375
  %kdiff = getelementptr inbounds %struct.surf, ptr %43, i64 0, i32 2, !dbg !377
  %44 = load double, ptr %kdiff, align 8, !dbg !377
  %mul88 = fmul double %37, %44, !dbg !378
  %mul89 = fmul double %shadtrans.1319, %mul88, !dbg !379
  call void @llvm.dbg.value(metadata double %mul89, metadata !276, metadata !DIExpression()), !dbg !296
  %col91 = getelementptr inbounds %struct.light, ptr %lptr.0324, i64 0, i32 1, !dbg !380
  %45 = load double, ptr %col91, align 8, !dbg !381
  %mul93 = fmul double %3, %45, !dbg !382
  %46 = load double, ptr %col, align 16, !dbg !383
  %47 = call double @llvm.fmuladd.f64(double %mul93, double %mul89, double %46), !dbg !383
  store double %47, ptr %col, align 16, !dbg !383
  %arrayidx98 = getelementptr inbounds %struct.light, ptr %lptr.0324, i64 0, i32 1, i64 1, !dbg !384
  %48 = load double, ptr %arrayidx98, align 8, !dbg !384
  %mul99 = fmul double %4, %48, !dbg !385
  %49 = load double, ptr %arrayidx12, align 8, !dbg !386
  %50 = call double @llvm.fmuladd.f64(double %mul99, double %mul89, double %49), !dbg !386
  store double %50, ptr %arrayidx12, align 8, !dbg !386
  %arrayidx104 = getelementptr inbounds %struct.light, ptr %lptr.0324, i64 0, i32 1, i64 2, !dbg !387
  %51 = load double, ptr %arrayidx104, align 8, !dbg !387
  %mul105 = fmul double %5, %51, !dbg !388
  %52 = load double, ptr %arrayidx15, align 16, !dbg !389
  %53 = call double @llvm.fmuladd.f64(double %mul105, double %mul89, double %52), !dbg !389
  store double %53, ptr %arrayidx15, align 16, !dbg !389
  %54 = load double, ptr %kspec, align 8, !dbg !390
  %cmp108 = fcmp ogt double %54, 0.000000e+00, !dbg !392
  br i1 %cmp108, label %if.then109, label %if.end151, !dbg !393

if.then109:                                       ; preds = %if.then86
  %55 = load double, ptr %Lvec, align 16, !dbg !394
  %add = fsub double %55, %12, !dbg !394
  store double %add, ptr %Hvec, align 16, !dbg !394
  %56 = load double, ptr %arrayidx41, align 8, !dbg !394
  %add115 = fsub double %56, %13, !dbg !394
  store double %add115, ptr %arrayidx116, align 8, !dbg !394
  %57 = load double, ptr %arrayidx46, align 16, !dbg !394
  %add119 = fsub double %57, %14, !dbg !394
  store double %add119, ptr %arrayidx120, align 16, !dbg !394
  call void @VecNorm(ptr noundef nonnull %Hvec) #7, !dbg !397
  %58 = load double, ptr %N, align 8, !dbg !398
  %59 = load double, ptr %Hvec, align 16, !dbg !398
  %60 = load double, ptr %arrayidx71, align 8, !dbg !398
  %61 = load double, ptr %arrayidx116, align 8, !dbg !398
  %mul127 = fmul double %60, %61, !dbg !398
  %62 = call double @llvm.fmuladd.f64(double %58, double %59, double %mul127), !dbg !398
  %63 = load double, ptr %arrayidx74, align 8, !dbg !398
  %64 = load double, ptr %arrayidx120, align 16, !dbg !398
  %65 = call double @llvm.fmuladd.f64(double %63, double %64, double %62), !dbg !398
  call void @llvm.dbg.value(metadata double %65, metadata !277, metadata !DIExpression()), !dbg !296
  %cmp131 = fcmp ogt double %65, 0.000000e+00, !dbg !399
  br i1 %cmp131, label %if.then132, label %if.end151, !dbg !401

if.then132:                                       ; preds = %if.then109
  %66 = load double, ptr %kspecn, align 8, !dbg !402
  %call133 = call double @pow(double noundef %65, double noundef %66) #7, !dbg !404
  call void @llvm.dbg.value(metadata double %call133, metadata !278, metadata !DIExpression()), !dbg !296
  %67 = load double, ptr %kspec, align 8, !dbg !405
  %mul135 = fmul double %call133, %67, !dbg !406
  call void @llvm.dbg.value(metadata double %mul135, metadata !278, metadata !DIExpression()), !dbg !296
  %68 = load double, ptr %col91, align 8, !dbg !407
  %69 = load double, ptr %col, align 16, !dbg !408
  %70 = call double @llvm.fmuladd.f64(double %68, double %mul135, double %69), !dbg !408
  store double %70, ptr %col, align 16, !dbg !408
  %71 = load double, ptr %arrayidx98, align 8, !dbg !409
  %72 = load double, ptr %arrayidx12, align 8, !dbg !410
  %73 = call double @llvm.fmuladd.f64(double %71, double %mul135, double %72), !dbg !410
  store double %73, ptr %arrayidx12, align 8, !dbg !410
  %74 = load double, ptr %arrayidx104, align 8, !dbg !411
  %75 = load double, ptr %arrayidx15, align 16, !dbg !412
  %76 = call double @llvm.fmuladd.f64(double %74, double %mul135, double %75), !dbg !412
  store double %76, ptr %arrayidx15, align 16, !dbg !412
  br label %if.end151, !dbg !413

if.end151:                                        ; preds = %if.end, %if.then109, %if.then132, %if.then86, %for.body
  %shadtrans.2 = phi double [ %shadtrans.1319, %if.then132 ], [ %shadtrans.1319, %if.then109 ], [ %shadtrans.1319, %if.then86 ], [ %shadtrans.1, %if.end ], [ %shadtrans.0323, %for.body ]
  call void @llvm.dbg.value(metadata double %shadtrans.2, metadata !285, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata ptr undef, metadata !286, metadata !DIExpression()), !dbg !296
  %inc152 = add nuw nsw i64 %i.0322, 1, !dbg !414
  call void @llvm.dbg.value(metadata i64 %inc152, metadata !283, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata ptr undef, metadata !286, metadata !DIExpression()), !dbg !296
  %77 = load i64, ptr @nlights, align 8, !dbg !327
  %cmp = icmp slt i64 %inc152, %77, !dbg !330
  br i1 %cmp, label %if.end151.for.body_crit_edge, label %for.end.loopexit, !dbg !331, !llvm.loop !415

if.end151.for.body_crit_edge:                     ; preds = %if.end151
  %next = getelementptr inbounds %struct.light, ptr %lptr.0324, i64 0, i32 3, !dbg !419
  %.pre = load double, ptr %iP, align 8, !dbg !332
  %.pre326 = load double, ptr %arrayidx18, align 8, !dbg !332
  %.pre327 = load double, ptr %arrayidx21, align 8, !dbg !332
  br label %for.body, !dbg !331

for.end.loopexit:                                 ; preds = %if.end151
  %.pre328 = load double, ptr %col, align 16, !dbg !420
  %.pre329 = load double, ptr %arrayidx12, align 8, !dbg !420
  %.pre330 = load double, ptr %arrayidx15, align 16, !dbg !420
  br label %for.end, !dbg !420

for.end:                                          ; preds = %for.end.loopexit, %entry
  %78 = phi double [ %.pre330, %for.end.loopexit ], [ %mul14, %entry ], !dbg !420
  %79 = phi double [ %.pre329, %for.end.loopexit ], [ %mul11, %entry ], !dbg !420
  %80 = phi double [ %.pre328, %for.end.loopexit ], [ %mul, %entry ], !dbg !420
  %weight = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 10, !dbg !420
  %81 = load float, ptr %weight, align 8, !dbg !420
  %conv = fpext float %81 to double, !dbg !420
  %mul154 = fmul double %80, %conv, !dbg !420
  store double %mul154, ptr %col, align 16, !dbg !420
  %mul159 = fmul double %79, %conv, !dbg !420
  store double %mul159, ptr %arrayidx12, align 8, !dbg !420
  %mul164 = fmul double %78, %conv, !dbg !420
  store double %mul164, ptr %arrayidx15, align 16, !dbg !420
  %x = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 1, !dbg !422
  %82 = load i64, ptr %x, align 8, !dbg !422
  %y = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 2, !dbg !423
  %83 = load i64, ptr %y, align 8, !dbg !423
  call void @AddPixelColor(ptr noundef nonnull %col, i64 noundef %82, i64 noundef %83) #7, !dbg !424
  %level = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 5, !dbg !425
  %84 = load i64, ptr %level, align 8, !dbg !425
  %add167 = add nsw i64 %84, 1, !dbg !427
  %85 = load i64, ptr @Display, align 8, !dbg !428
  %cmp168 = icmp slt i64 %add167, %85, !dbg !429
  br i1 %cmp168, label %if.then170, label %if.end246, !dbg !430

if.then170:                                       ; preds = %for.end
  %86 = load double, ptr %iP, align 8, !dbg !431
  %P172 = getelementptr inbounds %struct.ray, ptr %secondary_ray, i64 0, i32 3, !dbg !431
  store double %86, ptr %P172, align 8, !dbg !431
  %87 = load double, ptr %arrayidx18, align 8, !dbg !431
  %arrayidx176 = getelementptr inbounds %struct.ray, ptr %secondary_ray, i64 0, i32 3, i64 1, !dbg !431
  store double %87, ptr %arrayidx176, align 8, !dbg !431
  %88 = load double, ptr %arrayidx21, align 8, !dbg !431
  %arrayidx179 = getelementptr inbounds %struct.ray, ptr %secondary_ray, i64 0, i32 3, i64 2, !dbg !431
  store double %88, ptr %arrayidx179, align 8, !dbg !431
  %89 = load ptr, ptr %surf, align 8, !dbg !434
  %kspec181 = getelementptr inbounds %struct.surf, ptr %89, i64 0, i32 3, !dbg !435
  %90 = load double, ptr %kspec181, align 8, !dbg !435
  %91 = load float, ptr %weight, align 8, !dbg !436
  %conv183 = fpext float %91 to double, !dbg !437
  %mul184 = fmul double %90, %conv183, !dbg !438
  %conv185 = fptrunc double %mul184 to float, !dbg !439
  %weight186 = getelementptr inbounds %struct.ray, ptr %secondary_ray, i64 0, i32 10, !dbg !440
  store float %conv185, ptr %weight186, align 8, !dbg !441
  %conv188 = fpext float %conv185 to double, !dbg !442
  %92 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 8), align 8, !dbg !444
  %cmp189 = fcmp olt double %92, %conv188, !dbg !445
  br i1 %cmp189, label %if.then191, label %if.end210, !dbg !446

if.then191:                                       ; preds = %if.then170
  %D192 = getelementptr inbounds %struct.ray, ptr %secondary_ray, i64 0, i32 4, !dbg !447
  call void @SpecularDirection(ptr noundef nonnull %D192, ptr noundef %N, ptr noundef nonnull %D), !dbg !449
  %93 = load i64, ptr %level, align 8, !dbg !450
  %add197 = add nsw i64 %93, 1, !dbg !451
  %level198 = getelementptr inbounds %struct.ray, ptr %secondary_ray, i64 0, i32 5, !dbg !452
  store i64 %add197, ptr %level198, align 8, !dbg !453
  %94 = load ptr, ptr @gm, align 8, !dbg !454
  %ridlock199 = getelementptr inbounds %struct.gmem, ptr %94, i64 0, i32 9, !dbg !456
  %call200 = call i32 @pthread_mutex_lock(ptr noundef nonnull %ridlock199) #7, !dbg !457
  %95 = load ptr, ptr @gm, align 8, !dbg !458
  %rid201 = getelementptr inbounds %struct.gmem, ptr %95, i64 0, i32 2, !dbg !459
  %96 = load i64, ptr %rid201, align 8, !dbg !460
  %inc202 = add nsw i64 %96, 1, !dbg !460
  store i64 %inc202, ptr %rid201, align 8, !dbg !460
  store i64 %96, ptr %secondary_ray, align 8, !dbg !461
  %ridlock204 = getelementptr inbounds %struct.gmem, ptr %95, i64 0, i32 9, !dbg !462
  %call205 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %ridlock204) #7, !dbg !464
  %97 = load i64, ptr %x, align 8, !dbg !465
  %x207 = getelementptr inbounds %struct.ray, ptr %secondary_ray, i64 0, i32 1, !dbg !466
  store i64 %97, ptr %x207, align 8, !dbg !467
  %98 = load i64, ptr %y, align 8, !dbg !468
  %y209 = getelementptr inbounds %struct.ray, ptr %secondary_ray, i64 0, i32 2, !dbg !469
  store i64 %98, ptr %y209, align 8, !dbg !470
  call void @PushRayTreeStack(ptr noundef nonnull %secondary_ray, i64 noundef %pid) #7, !dbg !471
  %.pre331 = load float, ptr %weight, align 8, !dbg !472
  %.pre332 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 8), align 8, !dbg !473
  %.pre333 = fpext float %.pre331 to double, !dbg !475
  br label %if.end210, !dbg !476

if.end210:                                        ; preds = %if.then191, %if.then170
  %conv213.pre-phi = phi double [ %.pre333, %if.then191 ], [ %conv183, %if.then170 ], !dbg !475
  %99 = phi double [ %.pre332, %if.then191 ], [ %92, %if.then170 ], !dbg !473
  %100 = load ptr, ptr %surf, align 8, !dbg !477
  %ktran = getelementptr inbounds %struct.surf, ptr %100, i64 0, i32 4, !dbg !478
  %101 = load double, ptr %ktran, align 8, !dbg !478
  %mul214 = fmul double %101, %conv213.pre-phi, !dbg !479
  %conv215 = fptrunc double %mul214 to float, !dbg !480
  store float %conv215, ptr %weight186, align 8, !dbg !481
  %conv218 = fpext float %conv215 to double, !dbg !482
  %cmp219 = fcmp olt double %99, %conv218, !dbg !483
  br i1 %cmp219, label %if.then221, label %if.end246, !dbg !484

if.then221:                                       ; preds = %if.end210
  %D222 = getelementptr inbounds %struct.ray, ptr %secondary_ray, i64 0, i32 4, !dbg !485
  %102 = load ptr, ptr %surf, align 8, !dbg !488
  %refrindex = getelementptr inbounds %struct.surf, ptr %102, i64 0, i32 5, !dbg !489
  %103 = load double, ptr %refrindex, align 8, !dbg !489
  %call227 = call i64 @TransmissionDirection(ptr noundef nonnull %D222, ptr noundef %N, ptr noundef nonnull %D, double noundef %103), !dbg !490
  %tobool228.not = icmp eq i64 %call227, 0, !dbg !490
  br i1 %tobool228.not, label %if.end246, label %if.then229, !dbg !491

if.then229:                                       ; preds = %if.then221
  %104 = load i64, ptr %level, align 8, !dbg !492
  %add231 = add nsw i64 %104, 1, !dbg !494
  %level232 = getelementptr inbounds %struct.ray, ptr %secondary_ray, i64 0, i32 5, !dbg !495
  store i64 %add231, ptr %level232, align 8, !dbg !496
  %105 = load ptr, ptr @gm, align 8, !dbg !497
  %ridlock233 = getelementptr inbounds %struct.gmem, ptr %105, i64 0, i32 9, !dbg !499
  %call234 = call i32 @pthread_mutex_lock(ptr noundef nonnull %ridlock233) #7, !dbg !500
  %106 = load ptr, ptr @gm, align 8, !dbg !501
  %rid235 = getelementptr inbounds %struct.gmem, ptr %106, i64 0, i32 2, !dbg !502
  %107 = load i64, ptr %rid235, align 8, !dbg !503
  %inc236 = add nsw i64 %107, 1, !dbg !503
  store i64 %inc236, ptr %rid235, align 8, !dbg !503
  store i64 %107, ptr %secondary_ray, align 8, !dbg !504
  %ridlock238 = getelementptr inbounds %struct.gmem, ptr %106, i64 0, i32 9, !dbg !505
  %call239 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %ridlock238) #7, !dbg !507
  %108 = load i64, ptr %x, align 8, !dbg !508
  %x241 = getelementptr inbounds %struct.ray, ptr %secondary_ray, i64 0, i32 1, !dbg !509
  store i64 %108, ptr %x241, align 8, !dbg !510
  %109 = load i64, ptr %y, align 8, !dbg !511
  %y243 = getelementptr inbounds %struct.ray, ptr %secondary_ray, i64 0, i32 2, !dbg !512
  store i64 %109, ptr %y243, align 8, !dbg !513
  call void @PushRayTreeStack(ptr noundef nonnull %secondary_ray, i64 noundef %pid) #7, !dbg !514
  br label %if.end246, !dbg !515

if.end246:                                        ; preds = %if.end210, %if.then229, %if.then221, %for.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %col) #7, !dbg !516
  call void @llvm.lifetime.end.p0(i64 888, ptr nonnull %secondary_ray) #7, !dbg !516
  call void @llvm.lifetime.end.p0(i64 888, ptr nonnull %shad_ray) #7, !dbg !516
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %Hvec) #7, !dbg !516
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %Lvec) #7, !dbg !516
  ret void, !dbg !516
}

; Function Attrs: nounwind
declare !dbg !517 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !553 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare !dbg !554 double @ShadowIntersect(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !557 double @HuniformShadowIntersect(ptr noundef, double noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

declare !dbg !560 void @AddPixelColor(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !563 void @PushRayTreeStack(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "shade.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "dda91ea118dffc73e83e7b457eb538e6")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "SpecularDirection", scope: !1, file: !1, line: 53, type: !10, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !14, line: 310, baseType: !15)
!14 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!15 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!16 = !{!17, !18, !19, !20, !21, !27}
!17 = !DILocalVariable(name: "R", arg: 1, scope: !9, file: !1, line: 53, type: !12)
!18 = !DILocalVariable(name: "N", arg: 2, scope: !9, file: !1, line: 53, type: !12)
!19 = !DILocalVariable(name: "I", arg: 3, scope: !9, file: !1, line: 53, type: !12)
!20 = !DILocalVariable(name: "I_dot_N", scope: !9, file: !1, line: 55, type: !13)
!21 = !DILocalVariable(name: "N2", scope: !9, file: !1, line: 56, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT", file: !14, line: 318, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC4", file: !14, line: 315, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 4)
!27 = !DILocalVariable(name: "vprime", scope: !9, file: !1, line: 57, type: !22)
!28 = !DILocation(line: 56, column: 8, scope: !9)
!29 = !DILocation(line: 57, column: 8, scope: !9)
!30 = !DILocation(line: 0, scope: !9)
!31 = !DILocation(line: 61, column: 12, scope: !9)
!32 = !DILocation(line: 62, column: 12, scope: !9)
!33 = !DILocation(line: 63, column: 15, scope: !9)
!34 = !DILocation(line: 65, column: 2, scope: !35)
!35 = distinct !DILexicalBlock(scope: !9, file: !1, line: 65, column: 2)
!36 = !DILocation(line: 66, column: 2, scope: !37)
!37 = distinct !DILexicalBlock(scope: !9, file: !1, line: 66, column: 2)
!38 = !DILocation(line: 68, column: 2, scope: !39)
!39 = distinct !DILexicalBlock(scope: !9, file: !1, line: 68, column: 2)
!40 = !DILocation(line: 69, column: 2, scope: !9)
!41 = !DILocation(line: 70, column: 2, scope: !9)
!42 = !DISubprogram(name: "VecNorm", scope: !14, file: !14, line: 892, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !12}
!45 = !{}
!46 = distinct !DISubprogram(name: "TransmissionDirection", scope: !1, file: !1, line: 89, type: !47, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !51)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !12, !12, !12, !13}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOL", file: !14, line: 299, baseType: !50)
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!52 = !DILocalVariable(name: "T", arg: 1, scope: !46, file: !1, line: 89, type: !12)
!53 = !DILocalVariable(name: "N", arg: 2, scope: !46, file: !1, line: 89, type: !12)
!54 = !DILocalVariable(name: "I", arg: 3, scope: !46, file: !1, line: 89, type: !12)
!55 = !DILocalVariable(name: "kn", arg: 4, scope: !46, file: !1, line: 89, type: !13)
!56 = !DILocalVariable(name: "vprime", scope: !46, file: !1, line: 91, type: !22)
!57 = !DILocalVariable(name: "vplusn", scope: !46, file: !1, line: 92, type: !22)
!58 = !DILocalVariable(name: "I_dot_N", scope: !46, file: !1, line: 93, type: !13)
!59 = !DILocalVariable(name: "kf", scope: !46, file: !1, line: 94, type: !13)
!60 = !DILocalVariable(name: "vprime_sq", scope: !46, file: !1, line: 95, type: !13)
!61 = !DILocalVariable(name: "vplusn_sq", scope: !46, file: !1, line: 96, type: !13)
!62 = !DILocation(line: 91, column: 8, scope: !46)
!63 = !DILocation(line: 92, column: 8, scope: !46)
!64 = !DILocation(line: 0, scope: !46)
!65 = !DILocation(line: 100, column: 12, scope: !46)
!66 = !DILocation(line: 101, column: 12, scope: !46)
!67 = !DILocation(line: 102, column: 15, scope: !46)
!68 = !DILocation(line: 104, column: 2, scope: !69)
!69 = distinct !DILexicalBlock(scope: !46, file: !1, line: 104, column: 2)
!70 = !DILocation(line: 105, column: 2, scope: !71)
!71 = distinct !DILexicalBlock(scope: !46, file: !1, line: 105, column: 2)
!72 = !DILocation(line: 107, column: 14, scope: !46)
!73 = !DILocation(line: 108, column: 14, scope: !46)
!74 = !DILocation(line: 110, column: 9, scope: !46)
!75 = !DILocation(line: 110, column: 23, scope: !46)
!76 = !DILocation(line: 112, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !46, file: !1, line: 112, column: 6)
!78 = !DILocation(line: 112, column: 6, scope: !46)
!79 = !DILocation(line: 114, column: 12, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !1, line: 113, column: 3)
!81 = !DILocation(line: 114, column: 11, scope: !80)
!82 = !DILocation(line: 116, column: 3, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !1, line: 116, column: 3)
!84 = !DILocation(line: 117, column: 3, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 117, column: 3)
!86 = !DILocation(line: 118, column: 3, scope: !80)
!87 = !DILocation(line: 123, column: 2, scope: !46)
!88 = !DILocation(line: 124, column: 2, scope: !46)
!89 = distinct !DISubprogram(name: "Shade", scope: !1, file: !1, line: 144, type: !90, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !262)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !12, !12, !92, !253, !100}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAY", file: !14, line: 625, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ray", file: !14, line: 611, size: 7104, elements: !95)
!95 = !{!96, !99, !101, !102, !107, !108, !109, !243, !244, !245, !249, !252}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !94, file: !14, line: 613, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !14, line: 301, baseType: !98)
!98 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !94, file: !14, line: 614, baseType: !100, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !14, line: 297, baseType: !98)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !94, file: !14, line: 614, baseType: !100, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !94, file: !14, line: 615, baseType: !103, size: 192, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !14, line: 314, baseType: !104)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 3)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !94, file: !14, line: 616, baseType: !103, size: 192, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !94, file: !14, line: 617, baseType: !100, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !94, file: !14, line: 618, baseType: !110, size: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAYINFO", file: !14, line: 603, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rayinfo", file: !14, line: 582, size: 1216, elements: !113)
!113 = !{!114, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "grid", scope: !112, file: !14, line: 584, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRID", file: !14, line: 572, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "grid", file: !14, line: 539, size: 1152, elements: !118)
!118 = !{!119, !120, !139, !142, !206, !207, !209, !210, !211, !212, !213, !230}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !117, file: !14, line: 541, baseType: !100, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "hashtable", scope: !117, file: !14, line: 542, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOXEL", file: !14, line: 405, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "voxel", file: !14, line: 394, size: 320, elements: !125)
!125 = !{!126, !127, !128, !130, !134, !135}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !124, file: !14, line: 396, baseType: !100, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !124, file: !14, line: 397, baseType: !100, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !14, line: 398, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cell", scope: !124, file: !14, line: 399, baseType: !131, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !14, line: 287, baseType: !133)
!133 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "celltype", scope: !124, file: !14, line: 400, baseType: !132, size: 8, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !124, file: !14, line: 403, baseType: !136, size: 56, offset: 264)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 56, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 7)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "emptycells", scope: !117, file: !14, line: 548, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !14, line: 298, baseType: !50)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "pepa", scope: !117, file: !14, line: 555, baseType: !143, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELEMENT", file: !14, line: 481, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "element", file: !14, line: 474, size: 576, elements: !147)
!147 = !{!148, !149, !204, !205}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !146, file: !14, line: 476, baseType: !100, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !146, file: !14, line: 477, baseType: !150, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !14, line: 488, size: 1024, elements: !152)
!152 = !{!153, !154, !158, !164, !165, !166, !190, !203}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !151, file: !14, line: 490, baseType: !100, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !14, line: 491, baseType: !155, size: 256, offset: 64)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !151, file: !14, line: 492, baseType: !159, size: 384, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !14, line: 418, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !14, line: 413, size: 384, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !160, file: !14, line: 415, baseType: !104, size: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !160, file: !14, line: 416, baseType: !104, size: 192, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !151, file: !14, line: 493, baseType: !144, size: 64, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !151, file: !14, line: 494, baseType: !100, size: 64, offset: 768)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !151, file: !14, line: 495, baseType: !167, size: 64, offset: 832)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROCS", file: !14, line: 340, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pprocs", file: !14, line: 327, size: 640, elements: !170)
!170 = !{!171, !175, !179, !180, !181, !182, !186, !187, !188, !189}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !14, line: 329, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!131, null}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !169, file: !14, line: 330, baseType: !176, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{null, null}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !169, file: !14, line: 331, baseType: !176, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "binread", scope: !169, file: !14, line: 332, baseType: !176, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "transform", scope: !169, file: !14, line: 333, baseType: !176, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "intersect", scope: !169, file: !14, line: 334, baseType: !183, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!100, null}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pe_intersect", scope: !169, file: !14, line: 335, baseType: !183, size: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !169, file: !14, line: 336, baseType: !176, size: 64, offset: 448)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !169, file: !14, line: 337, baseType: !176, size: 64, offset: 512)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !169, file: !14, line: 338, baseType: !176, size: 64, offset: 576)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "surf", scope: !151, file: !14, line: 496, baseType: !191, size: 64, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "SURF", file: !14, line: 357, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "surf", file: !14, line: 347, size: 704, elements: !194)
!194 = !{!195, !197, !198, !199, !200, !201, !202}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "fcolor", scope: !193, file: !14, line: 349, baseType: !196, size: 192)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !14, line: 319, baseType: !103)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "bcolor", scope: !193, file: !14, line: 350, baseType: !196, size: 192, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "kdiff", scope: !193, file: !14, line: 351, baseType: !13, size: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "kspec", scope: !193, file: !14, line: 352, baseType: !13, size: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ktran", scope: !193, file: !14, line: 353, baseType: !13, size: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "refrindex", scope: !193, file: !14, line: 354, baseType: !13, size: 64, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "kspecn", scope: !193, file: !14, line: 355, baseType: !13, size: 64, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !14, line: 497, baseType: !150, size: 64, offset: 960)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !146, file: !14, line: 478, baseType: !131, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !146, file: !14, line: 479, baseType: !159, size: 384, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "num_prims", scope: !117, file: !14, line: 556, baseType: !100, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc", scope: !117, file: !14, line: 558, baseType: !208, size: 192, offset: 320)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 192, elements: !105)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !117, file: !14, line: 562, baseType: !100, size: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !117, file: !14, line: 563, baseType: !104, size: 192, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "cellsize", scope: !117, file: !14, line: 564, baseType: !104, size: 192, offset: 768)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "subdiv_level", scope: !117, file: !14, line: 566, baseType: !100, size: 64, offset: 960)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "bintree", scope: !117, file: !14, line: 569, baseType: !214, size: 64, offset: 1024)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "BTNODE", file: !14, line: 535, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btnode", file: !14, line: 522, size: 960, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !216, file: !14, line: 524, baseType: !143, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !216, file: !14, line: 525, baseType: !104, size: 192, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "nprims", scope: !216, file: !14, line: 527, baseType: !100, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !216, file: !14, line: 528, baseType: !208, size: 192, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !216, file: !14, line: 529, baseType: !208, size: 192, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !216, file: !14, line: 531, baseType: !100, size: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "totalPrimsAllocated", scope: !216, file: !14, line: 532, baseType: !100, size: 64, offset: 768)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !216, file: !14, line: 533, baseType: !226, size: 128, offset: 832)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 128, elements: !228)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!228 = !{!229}
!229 = !DISubrange(count: 2)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !14, line: 570, baseType: !231, size: 64, offset: 1088)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !112, file: !14, line: 585, baseType: !104, size: 192, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "entry_plane", scope: !112, file: !14, line: 587, baseType: !100, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "t_in", scope: !112, file: !14, line: 589, baseType: !13, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "exit_plane", scope: !112, file: !14, line: 591, baseType: !100, size: 64, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "t_out", scope: !112, file: !14, line: 593, baseType: !13, size: 64, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !112, file: !14, line: 595, baseType: !104, size: 192, offset: 512)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "index3D", scope: !112, file: !14, line: 596, baseType: !208, size: 192, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "index1D", scope: !112, file: !14, line: 597, baseType: !100, size: 64, offset: 896)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc1D", scope: !112, file: !14, line: 600, baseType: !208, size: 192, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !14, line: 601, baseType: !242, size: 64, offset: 1152)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ri_indx", scope: !94, file: !14, line: 619, baseType: !100, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc3D", scope: !94, file: !14, line: 620, baseType: !208, size: 192, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rinfo", scope: !94, file: !14, line: 621, baseType: !246, size: 6080, offset: 960)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 6080, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 5)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !94, file: !14, line: 622, baseType: !250, size: 32, offset: 7040)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "R32", file: !14, line: 307, baseType: !251)
!251 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !94, file: !14, line: 623, baseType: !250, size: 32, offset: 7072)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRECORD", file: !14, line: 514, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irecord", file: !14, line: 506, size: 320, elements: !256)
!256 = !{!257, !258, !259, !260, !261}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !255, file: !14, line: 508, baseType: !13, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !255, file: !14, line: 509, baseType: !144, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "b1", scope: !255, file: !14, line: 510, baseType: !13, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "b2", scope: !255, file: !14, line: 511, baseType: !13, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "b3", scope: !255, file: !14, line: 512, baseType: !13, size: 64, offset: 256)
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !282, !283, !284, !285, !286}
!263 = !DILocalVariable(name: "iP", arg: 1, scope: !89, file: !1, line: 144, type: !12)
!264 = !DILocalVariable(name: "N", arg: 2, scope: !89, file: !1, line: 144, type: !12)
!265 = !DILocalVariable(name: "ray", arg: 3, scope: !89, file: !1, line: 144, type: !92)
!266 = !DILocalVariable(name: "hit", arg: 4, scope: !89, file: !1, line: 144, type: !253)
!267 = !DILocalVariable(name: "pid", arg: 5, scope: !89, file: !1, line: 144, type: !100)
!268 = !DILocalVariable(name: "Lvec", scope: !89, file: !1, line: 146, type: !103)
!269 = !DILocalVariable(name: "Hvec", scope: !89, file: !1, line: 147, type: !103)
!270 = !DILocalVariable(name: "Evec", scope: !89, file: !1, line: 148, type: !103)
!271 = !DILocalVariable(name: "shad_ray", scope: !89, file: !1, line: 149, type: !93)
!272 = !DILocalVariable(name: "secondary_ray", scope: !89, file: !1, line: 150, type: !93)
!273 = !DILocalVariable(name: "surfcol", scope: !89, file: !1, line: 151, type: !196)
!274 = !DILocalVariable(name: "col", scope: !89, file: !1, line: 152, type: !196)
!275 = !DILocalVariable(name: "NdotL", scope: !89, file: !1, line: 153, type: !13)
!276 = !DILocalVariable(name: "Diff", scope: !89, file: !1, line: 154, type: !13)
!277 = !DILocalVariable(name: "NdotH", scope: !89, file: !1, line: 155, type: !13)
!278 = !DILocalVariable(name: "spec", scope: !89, file: !1, line: 156, type: !13)
!279 = !DILocalVariable(name: "po", scope: !89, file: !1, line: 157, type: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "OBJECT", file: !14, line: 499, baseType: !151)
!282 = !DILocalVariable(name: "s", scope: !89, file: !1, line: 158, type: !191)
!283 = !DILocalVariable(name: "i", scope: !89, file: !1, line: 159, type: !100)
!284 = !DILocalVariable(name: "lightlen", scope: !89, file: !1, line: 160, type: !13)
!285 = !DILocalVariable(name: "shadtrans", scope: !89, file: !1, line: 161, type: !13)
!286 = !DILocalVariable(name: "lptr", scope: !89, file: !1, line: 162, type: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIGHT", file: !14, line: 372, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "light", file: !14, line: 365, size: 576, elements: !290)
!290 = !{!291, !292, !293, !294}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !289, file: !14, line: 367, baseType: !23, size: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !289, file: !14, line: 368, baseType: !196, size: 192, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !289, file: !14, line: 369, baseType: !49, size: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !14, line: 370, baseType: !295, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!296 = !DILocation(line: 0, scope: !89)
!297 = !DILocation(line: 146, column: 2, scope: !89)
!298 = !DILocation(line: 146, column: 7, scope: !89)
!299 = !DILocation(line: 147, column: 2, scope: !89)
!300 = !DILocation(line: 147, column: 7, scope: !89)
!301 = !DILocation(line: 149, column: 2, scope: !89)
!302 = !DILocation(line: 149, column: 6, scope: !89)
!303 = !DILocation(line: 150, column: 2, scope: !89)
!304 = !DILocation(line: 150, column: 6, scope: !89)
!305 = !DILocation(line: 152, column: 2, scope: !89)
!306 = !DILocation(line: 152, column: 8, scope: !89)
!307 = !DILocation(line: 166, column: 12, scope: !89)
!308 = !DILocation(line: 166, column: 19, scope: !89)
!309 = !DILocation(line: 167, column: 11, scope: !89)
!310 = !DILocation(line: 168, column: 2, scope: !311)
!311 = distinct !DILexicalBlock(scope: !89, file: !1, line: 168, column: 2)
!312 = !DILocation(line: 172, column: 11, scope: !89)
!313 = !DILocation(line: 172, column: 27, scope: !89)
!314 = !DILocation(line: 172, column: 9, scope: !89)
!315 = !DILocation(line: 173, column: 11, scope: !89)
!316 = !DILocation(line: 173, column: 27, scope: !89)
!317 = !DILocation(line: 173, column: 2, scope: !89)
!318 = !DILocation(line: 173, column: 9, scope: !89)
!319 = !DILocation(line: 174, column: 11, scope: !89)
!320 = !DILocation(line: 174, column: 27, scope: !89)
!321 = !DILocation(line: 174, column: 2, scope: !89)
!322 = !DILocation(line: 174, column: 9, scope: !89)
!323 = !DILocation(line: 178, column: 2, scope: !324)
!324 = distinct !DILexicalBlock(scope: !89, file: !1, line: 178, column: 2)
!325 = !DILocation(line: 179, column: 2, scope: !326)
!326 = distinct !DILexicalBlock(scope: !89, file: !1, line: 179, column: 2)
!327 = !DILocation(line: 184, column: 18, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 184, column: 2)
!329 = distinct !DILexicalBlock(scope: !89, file: !1, line: 184, column: 2)
!330 = !DILocation(line: 184, column: 16, scope: !328)
!331 = !DILocation(line: 184, column: 2, scope: !329)
!332 = !DILocation(line: 186, column: 3, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !1, line: 186, column: 3)
!334 = distinct !DILexicalBlock(scope: !328, file: !1, line: 185, column: 3)
!335 = !DILocation(line: 187, column: 14, scope: !334)
!336 = !DILocation(line: 188, column: 3, scope: !334)
!337 = !DILocation(line: 189, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !1, line: 189, column: 3)
!339 = !DILocation(line: 191, column: 25, scope: !340)
!340 = distinct !DILexicalBlock(scope: !334, file: !1, line: 191, column: 3)
!341 = !DILocation(line: 191, column: 29, scope: !340)
!342 = !DILocation(line: 191, column: 4, scope: !340)
!343 = !DILocation(line: 192, column: 17, scope: !334)
!344 = !DILocation(line: 192, column: 21, scope: !334)
!345 = !DILocation(line: 192, column: 24, scope: !334)
!346 = !DILocation(line: 192, column: 15, scope: !334)
!347 = !DILocation(line: 193, column: 31, scope: !348)
!348 = distinct !DILexicalBlock(scope: !334, file: !1, line: 193, column: 3)
!349 = !DILocation(line: 193, column: 4, scope: !348)
!350 = !DILocation(line: 195, column: 11, scope: !334)
!351 = !DILocation(line: 197, column: 13, scope: !352)
!352 = distinct !DILexicalBlock(scope: !334, file: !1, line: 197, column: 7)
!353 = !DILocation(line: 197, column: 7, scope: !334)
!354 = !DILocation(line: 201, column: 13, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 201, column: 8)
!356 = distinct !DILexicalBlock(scope: !352, file: !1, line: 198, column: 4)
!357 = !DILocation(line: 201, column: 8, scope: !355)
!358 = !DILocation(line: 201, column: 18, scope: !355)
!359 = !DILocation(line: 201, column: 28, scope: !355)
!360 = !DILocation(line: 201, column: 22, scope: !355)
!361 = !DILocation(line: 201, column: 8, scope: !356)
!362 = !DILocation(line: 203, column: 13, scope: !363)
!363 = distinct !DILexicalBlock(scope: !355, file: !1, line: 202, column: 5)
!364 = !DILocation(line: 203, column: 5, scope: !363)
!365 = !DILocation(line: 206, column: 61, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !1, line: 204, column: 6)
!367 = !DILocation(line: 206, column: 19, scope: !366)
!368 = !DILocation(line: 207, column: 7, scope: !366)
!369 = !DILocation(line: 210, column: 69, scope: !366)
!370 = !DILocation(line: 210, column: 19, scope: !366)
!371 = !DILocation(line: 211, column: 7, scope: !366)
!372 = !DILocation(line: 219, column: 18, scope: !373)
!373 = distinct !DILexicalBlock(scope: !356, file: !1, line: 219, column: 8)
!374 = !DILocation(line: 219, column: 8, scope: !356)
!375 = !DILocation(line: 221, column: 16, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !1, line: 220, column: 5)
!377 = !DILocation(line: 221, column: 22, scope: !376)
!378 = !DILocation(line: 221, column: 28, scope: !376)
!379 = !DILocation(line: 221, column: 36, scope: !376)
!380 = !DILocation(line: 223, column: 34, scope: !376)
!381 = !DILocation(line: 223, column: 28, scope: !376)
!382 = !DILocation(line: 223, column: 26, scope: !376)
!383 = !DILocation(line: 223, column: 12, scope: !376)
!384 = !DILocation(line: 224, column: 28, scope: !376)
!385 = !DILocation(line: 224, column: 26, scope: !376)
!386 = !DILocation(line: 224, column: 12, scope: !376)
!387 = !DILocation(line: 225, column: 28, scope: !376)
!388 = !DILocation(line: 225, column: 26, scope: !376)
!389 = !DILocation(line: 225, column: 12, scope: !376)
!390 = !DILocation(line: 229, column: 12, scope: !391)
!391 = distinct !DILexicalBlock(scope: !376, file: !1, line: 229, column: 9)
!392 = !DILocation(line: 229, column: 18, scope: !391)
!393 = !DILocation(line: 229, column: 9, scope: !376)
!394 = !DILocation(line: 231, column: 6, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 231, column: 6)
!396 = distinct !DILexicalBlock(scope: !391, file: !1, line: 230, column: 6)
!397 = !DILocation(line: 232, column: 6, scope: !396)
!398 = !DILocation(line: 233, column: 14, scope: !396)
!399 = !DILocation(line: 235, column: 16, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 235, column: 10)
!401 = !DILocation(line: 235, column: 10, scope: !396)
!402 = !DILocation(line: 237, column: 29, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !1, line: 236, column: 7)
!404 = !DILocation(line: 237, column: 15, scope: !403)
!405 = !DILocation(line: 238, column: 18, scope: !403)
!406 = !DILocation(line: 238, column: 12, scope: !403)
!407 = !DILocation(line: 240, column: 17, scope: !403)
!408 = !DILocation(line: 240, column: 14, scope: !403)
!409 = !DILocation(line: 241, column: 17, scope: !403)
!410 = !DILocation(line: 241, column: 14, scope: !403)
!411 = !DILocation(line: 242, column: 17, scope: !403)
!412 = !DILocation(line: 242, column: 14, scope: !403)
!413 = !DILocation(line: 243, column: 7, scope: !403)
!414 = !DILocation(line: 184, column: 28, scope: !328)
!415 = distinct !{!415, !331, !416, !417, !418}
!416 = !DILocation(line: 249, column: 3, scope: !329)
!417 = !{!"llvm.loop.mustprogress"}
!418 = !{!"llvm.loop.unroll.disable"}
!419 = !DILocation(line: 248, column: 16, scope: !334)
!420 = !DILocation(line: 253, column: 2, scope: !421)
!421 = distinct !DILexicalBlock(scope: !89, file: !1, line: 253, column: 2)
!422 = !DILocation(line: 254, column: 26, scope: !89)
!423 = !DILocation(line: 254, column: 34, scope: !89)
!424 = !DILocation(line: 254, column: 2, scope: !89)
!425 = !DILocation(line: 258, column: 12, scope: !426)
!426 = distinct !DILexicalBlock(scope: !89, file: !1, line: 258, column: 6)
!427 = !DILocation(line: 258, column: 19, scope: !426)
!428 = !DILocation(line: 258, column: 33, scope: !426)
!429 = !DILocation(line: 258, column: 23, scope: !426)
!430 = !DILocation(line: 258, column: 6, scope: !89)
!431 = !DILocation(line: 260, column: 3, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 260, column: 3)
!433 = distinct !DILexicalBlock(scope: !426, file: !1, line: 259, column: 3)
!434 = !DILocation(line: 263, column: 30, scope: !433)
!435 = !DILocation(line: 263, column: 36, scope: !433)
!436 = !DILocation(line: 263, column: 49, scope: !433)
!437 = !DILocation(line: 263, column: 44, scope: !433)
!438 = !DILocation(line: 263, column: 42, scope: !433)
!439 = !DILocation(line: 263, column: 26, scope: !433)
!440 = !DILocation(line: 263, column: 17, scope: !433)
!441 = !DILocation(line: 263, column: 24, scope: !433)
!442 = !DILocation(line: 265, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !433, file: !1, line: 265, column: 7)
!444 = !DILocation(line: 265, column: 38, scope: !443)
!445 = !DILocation(line: 265, column: 28, scope: !443)
!446 = !DILocation(line: 265, column: 7, scope: !433)
!447 = !DILocation(line: 267, column: 36, scope: !448)
!448 = distinct !DILexicalBlock(scope: !443, file: !1, line: 266, column: 4)
!449 = !DILocation(line: 267, column: 4, scope: !448)
!450 = !DILocation(line: 268, column: 31, scope: !448)
!451 = !DILocation(line: 268, column: 37, scope: !448)
!452 = !DILocation(line: 268, column: 18, scope: !448)
!453 = !DILocation(line: 268, column: 24, scope: !448)
!454 = !DILocation(line: 270, column: 26, scope: !455)
!455 = distinct !DILexicalBlock(scope: !448, file: !1, line: 270, column: 4)
!456 = !DILocation(line: 270, column: 30, scope: !455)
!457 = !DILocation(line: 270, column: 5, scope: !455)
!458 = !DILocation(line: 271, column: 23, scope: !448)
!459 = !DILocation(line: 271, column: 27, scope: !448)
!460 = !DILocation(line: 271, column: 30, scope: !448)
!461 = !DILocation(line: 271, column: 21, scope: !448)
!462 = !DILocation(line: 272, column: 32, scope: !463)
!463 = distinct !DILexicalBlock(scope: !448, file: !1, line: 272, column: 4)
!464 = !DILocation(line: 272, column: 5, scope: !463)
!465 = !DILocation(line: 274, column: 27, scope: !448)
!466 = !DILocation(line: 274, column: 18, scope: !448)
!467 = !DILocation(line: 274, column: 20, scope: !448)
!468 = !DILocation(line: 275, column: 27, scope: !448)
!469 = !DILocation(line: 275, column: 18, scope: !448)
!470 = !DILocation(line: 275, column: 20, scope: !448)
!471 = !DILocation(line: 277, column: 4, scope: !448)
!472 = !DILocation(line: 282, column: 49, scope: !433)
!473 = !DILocation(line: 284, column: 38, scope: !474)
!474 = distinct !DILexicalBlock(scope: !433, file: !1, line: 284, column: 7)
!475 = !DILocation(line: 282, column: 44, scope: !433)
!476 = !DILocation(line: 279, column: 4, scope: !448)
!477 = !DILocation(line: 282, column: 30, scope: !433)
!478 = !DILocation(line: 282, column: 36, scope: !433)
!479 = !DILocation(line: 282, column: 42, scope: !433)
!480 = !DILocation(line: 282, column: 26, scope: !433)
!481 = !DILocation(line: 282, column: 24, scope: !433)
!482 = !DILocation(line: 284, column: 7, scope: !474)
!483 = !DILocation(line: 284, column: 28, scope: !474)
!484 = !DILocation(line: 284, column: 7, scope: !433)
!485 = !DILocation(line: 286, column: 44, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !1, line: 286, column: 8)
!487 = distinct !DILexicalBlock(scope: !474, file: !1, line: 285, column: 4)
!488 = !DILocation(line: 286, column: 62, scope: !486)
!489 = !DILocation(line: 286, column: 68, scope: !486)
!490 = !DILocation(line: 286, column: 8, scope: !486)
!491 = !DILocation(line: 286, column: 8, scope: !487)
!492 = !DILocation(line: 288, column: 32, scope: !493)
!493 = distinct !DILexicalBlock(scope: !486, file: !1, line: 287, column: 5)
!494 = !DILocation(line: 288, column: 38, scope: !493)
!495 = !DILocation(line: 288, column: 19, scope: !493)
!496 = !DILocation(line: 288, column: 25, scope: !493)
!497 = !DILocation(line: 290, column: 27, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !1, line: 290, column: 5)
!499 = !DILocation(line: 290, column: 31, scope: !498)
!500 = !DILocation(line: 290, column: 6, scope: !498)
!501 = !DILocation(line: 291, column: 24, scope: !493)
!502 = !DILocation(line: 291, column: 28, scope: !493)
!503 = !DILocation(line: 291, column: 31, scope: !493)
!504 = !DILocation(line: 291, column: 22, scope: !493)
!505 = !DILocation(line: 292, column: 33, scope: !506)
!506 = distinct !DILexicalBlock(scope: !493, file: !1, line: 292, column: 5)
!507 = !DILocation(line: 292, column: 6, scope: !506)
!508 = !DILocation(line: 294, column: 28, scope: !493)
!509 = !DILocation(line: 294, column: 19, scope: !493)
!510 = !DILocation(line: 294, column: 21, scope: !493)
!511 = !DILocation(line: 295, column: 28, scope: !493)
!512 = !DILocation(line: 295, column: 19, scope: !493)
!513 = !DILocation(line: 295, column: 21, scope: !493)
!514 = !DILocation(line: 297, column: 5, scope: !493)
!515 = !DILocation(line: 299, column: 5, scope: !493)
!516 = !DILocation(line: 302, column: 2, scope: !89)
!517 = !DISubprogram(name: "pthread_mutex_lock", scope: !518, file: !518, line: 738, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!518 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!519 = !DISubroutineType(types: !520)
!520 = !{!521, !522}
!521 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !524, line: 72, baseType: !525)
!524 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!525 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !524, line: 67, size: 320, elements: !526)
!526 = !{!527, !548, !552}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !525, file: !524, line: 69, baseType: !528, size: 320)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !529, line: 22, size: 320, elements: !530)
!529 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!530 = !{!531, !532, !534, !535, !536, !537, !539, !540}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !528, file: !529, line: 24, baseType: !521, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !528, file: !529, line: 25, baseType: !533, size: 32, offset: 32)
!533 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !528, file: !529, line: 26, baseType: !521, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !528, file: !529, line: 28, baseType: !533, size: 32, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !528, file: !529, line: 32, baseType: !521, size: 32, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !528, file: !529, line: 34, baseType: !538, size: 16, offset: 160)
!538 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !528, file: !529, line: 35, baseType: !538, size: 16, offset: 176)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !528, file: !529, line: 36, baseType: !541, size: 128, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !542, line: 53, baseType: !543)
!542 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !542, line: 49, size: 128, elements: !544)
!544 = !{!545, !547}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !543, file: !542, line: 51, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !543, file: !542, line: 52, baseType: !546, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !525, file: !524, line: 70, baseType: !549, size: 320)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 320, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 40)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !525, file: !524, line: 71, baseType: !98, size: 64)
!553 = !DISubprogram(name: "pthread_mutex_unlock", scope: !518, file: !518, line: 756, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!554 = !DISubprogram(name: "ShadowIntersect", scope: !14, file: !14, line: 884, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!555 = !DISubroutineType(types: !556)
!556 = !{!13, !92, !13, !144}
!557 = !DISubprogram(name: "HuniformShadowIntersect", scope: !14, file: !14, line: 866, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!558 = !DISubroutineType(types: !559)
!559 = !{!13, !92, !13, !144, !100}
!560 = !DISubprogram(name: "AddPixelColor", scope: !14, file: !14, line: 844, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !12, !100, !100}
!563 = !DISubprogram(name: "PushRayTreeStack", scope: !14, file: !14, line: 938, type: !564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !92, !100}
