; ModuleID = 'geo.c'
source_filename = "geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { [4 x double], [4 x double], [4 x [4 x double]], [4 x [4 x double]], [4 x [4 x double]], [3 x double], i64, double, [3 x double], i64, i64 }
%struct.pprocs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gmem = type { i64, i64, i64, ptr, ptr, ptr, [4096 x [256 x ptr]], %struct.anon, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, [4096 x %union.pthread_mutex_t], i64, [4096 x i64] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.object = type { i64, [32 x i8], %struct.bbox, ptr, i64, ptr, ptr, ptr }
%struct.bbox = type { [3 x double], [3 x double] }
%struct.element = type { i64, ptr, ptr, %struct.bbox }
%struct.surf = type { [3 x double], [3 x double], double, double, double, double, double }

@gm = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"Object  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\09color  %f %f %f %f %f %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\09coeffs %f %f %f %f %f\0A\00", align 1
@TraversalType = external local_unnamed_addr global i64, align 8
@ModelNorm = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unable to open model file %s.\0A\00", align 1
@prim_obj_cnt = external local_unnamed_addr global i64, align 8
@prim_elem_cnt = external local_unnamed_addr global i64, align 8
@View = external global %struct.view, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"Incorrect comment in geometry file.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Invalid object definition %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"geo.c\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%lf %lf %lf %lf %lf %lf\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"%lf %lf %lf %lf %lf\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"%ld %ld %ld %ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%c %ld\00", align 1
@SphProcs = internal global %struct.pprocs { ptr @SphName, ptr @SphPrint, ptr @SphRead, ptr null, ptr @SphTransform, ptr @SphIntersect, ptr @SphPeIntersect, ptr @SphNormal, ptr @SphDataNormalize, ptr @SphBoundBox }, align 8, !dbg !0
@PolyProcs = internal global %struct.pprocs { ptr @PolyName, ptr @PolyPrint, ptr @PolyRead, ptr null, ptr @PolyTransform, ptr @PolyIntersect, ptr @PolyPeIntersect, ptr @PolyNormal, ptr @PolyDataNormalize, ptr @PolyBoundBox }, align 8, !dbg !7
@TriProcs = internal global %struct.pprocs { ptr @TriName, ptr @TriPrint, ptr @TriRead, ptr null, ptr @TriTransform, ptr @TriIntersect, ptr @TriPeIntersect, ptr @TriNormal, ptr @TriDataNormalize, ptr @TriBoundBox }, align 8, !dbg !37
@.str.19 = private unnamed_addr constant [30 x i8] c"Invalid primitive type '%c'.\0A\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Code for cylinders and quadrics not implemented yet.\00", align 1
@str.20 = private unnamed_addr constant [25 x i8] c"Object primitive opcode.\00", align 1
@str.21 = private unnamed_addr constant [49 x i8] c"Texture and/or flag information not all present.\00", align 1
@str.22 = private unnamed_addr constant [39 x i8] c"Object surface coefficients incorrect.\00", align 1
@str.23 = private unnamed_addr constant [24 x i8] c"Object color incorrect.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @MakeElementArray(ptr nocapture noundef %totalElements) local_unnamed_addr #0 !dbg !46 {
entry:
  call void @llvm.dbg.value(metadata ptr %totalElements, metadata !98, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i64 0, metadata !103, metadata !DIExpression()), !dbg !105
  %0 = load ptr, ptr @gm, align 8, !dbg !106
  %modelroot = getelementptr inbounds %struct.gmem, ptr %0, i64 0, i32 3, !dbg !107
  %1 = load ptr, ptr %modelroot, align 8, !dbg !107
  call void @llvm.dbg.value(metadata ptr %1, metadata !100, metadata !DIExpression()), !dbg !105
  store i64 0, ptr %totalElements, align 8, !dbg !108
  call void @llvm.dbg.value(metadata ptr %1, metadata !100, metadata !DIExpression()), !dbg !105
  %tobool.not20 = icmp eq ptr %1, null, !dbg !109
  br i1 %tobool.not20, label %while.end, label %while.body, !dbg !109

while.body:                                       ; preds = %entry, %while.body
  %2 = phi i64 [ %add, %while.body ], [ 0, %entry ], !dbg !110
  %po.021 = phi ptr [ %4, %while.body ], [ %1, %entry ]
  call void @llvm.dbg.value(metadata ptr %po.021, metadata !100, metadata !DIExpression()), !dbg !105
  %numelements = getelementptr inbounds %struct.object, ptr %po.021, i64 0, i32 4, !dbg !112
  %3 = load i64, ptr %numelements, align 8, !dbg !112
  %add = add nsw i64 %2, %3, !dbg !110
  store i64 %add, ptr %totalElements, align 8, !dbg !110
  %next = getelementptr inbounds %struct.object, ptr %po.021, i64 0, i32 7, !dbg !113
  %4 = load ptr, ptr %next, align 8, !dbg !113
  call void @llvm.dbg.value(metadata ptr %4, metadata !100, metadata !DIExpression()), !dbg !105
  %tobool.not = icmp eq ptr %4, null, !dbg !109
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !109, !llvm.loop !114

while.end:                                        ; preds = %while.body, %entry
  %5 = phi i64 [ 0, %entry ], [ %add, %while.body ], !dbg !118
  %6 = load ptr, ptr @gm, align 8, !dbg !119
  %modelroot1 = getelementptr inbounds %struct.gmem, ptr %6, i64 0, i32 3, !dbg !120
  %7 = load ptr, ptr %modelroot1, align 8, !dbg !120
  call void @llvm.dbg.value(metadata ptr %7, metadata !100, metadata !DIExpression()), !dbg !105
  %call = tail call ptr @ObjectMalloc(i64 noundef 7, i64 noundef %5) #10, !dbg !121
  call void @llvm.dbg.value(metadata ptr %call, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i64 0, metadata !103, metadata !DIExpression()), !dbg !105
  %tobool3.not25 = icmp eq ptr %7, null, !dbg !122
  br i1 %tobool3.not25, label %while.end8, label %for.cond.preheader, !dbg !122

for.cond.preheader:                               ; preds = %while.end, %for.end
  %currArrayPosition.028 = phi i64 [ %currArrayPosition.1.lcssa, %for.end ], [ 0, %while.end ]
  %po.126 = phi ptr [ %11, %for.end ], [ %7, %while.end ]
  call void @llvm.dbg.value(metadata i64 %currArrayPosition.028, metadata !103, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata ptr %po.126, metadata !100, metadata !DIExpression()), !dbg !105
  %numelements5 = getelementptr inbounds %struct.object, ptr %po.126, i64 0, i32 4
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression()), !dbg !105
  %8 = load i64, ptr %numelements5, align 8, !dbg !123
  %cmp22 = icmp sgt i64 %8, 0, !dbg !127
  br i1 %cmp22, label %for.body.lr.ph, label %for.end, !dbg !128

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pelem = getelementptr inbounds %struct.object, ptr %po.126, i64 0, i32 3
  br label %for.body, !dbg !128

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.024 = phi i64 [ 0, %for.body.lr.ph ], [ %inc6, %for.body ]
  %currArrayPosition.123 = phi i64 [ %currArrayPosition.028, %for.body.lr.ph ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.024, metadata !99, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i64 %currArrayPosition.123, metadata !103, metadata !DIExpression()), !dbg !105
  %9 = load ptr, ptr %pelem, align 8, !dbg !129
  %add.ptr = getelementptr inbounds %struct.element, ptr %9, i64 %i.024, !dbg !130
  %inc = add nsw i64 %currArrayPosition.123, 1, !dbg !131
  call void @llvm.dbg.value(metadata i64 %inc, metadata !103, metadata !DIExpression()), !dbg !105
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %currArrayPosition.123, !dbg !132
  store ptr %add.ptr, ptr %arrayidx, align 8, !dbg !133
  %inc6 = add nuw nsw i64 %i.024, 1, !dbg !134
  call void @llvm.dbg.value(metadata i64 %inc6, metadata !99, metadata !DIExpression()), !dbg !105
  %10 = load i64, ptr %numelements5, align 8, !dbg !123
  %cmp = icmp slt i64 %inc6, %10, !dbg !127
  br i1 %cmp, label %for.body, label %for.end, !dbg !128, !llvm.loop !135

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %currArrayPosition.1.lcssa = phi i64 [ %currArrayPosition.028, %for.cond.preheader ], [ %inc, %for.body ], !dbg !105
  %next7 = getelementptr inbounds %struct.object, ptr %po.126, i64 0, i32 7, !dbg !137
  %11 = load ptr, ptr %next7, align 8, !dbg !137
  call void @llvm.dbg.value(metadata i64 %currArrayPosition.1.lcssa, metadata !103, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata ptr %11, metadata !100, metadata !DIExpression()), !dbg !105
  %tobool3.not = icmp eq ptr %11, null, !dbg !122
  br i1 %tobool3.not, label %while.end8, label %for.cond.preheader, !dbg !122, !llvm.loop !138

while.end8:                                       ; preds = %for.end, %while.end
  ret ptr %call, !dbg !140
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !141 ptr @ObjectMalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintGeo(ptr noundef %po) local_unnamed_addr #0 !dbg !145 {
entry:
  call void @llvm.dbg.value(metadata ptr %po, metadata !149, metadata !DIExpression()), !dbg !150
  %tobool.not37 = icmp eq ptr %po, null, !dbg !151
  br i1 %tobool.not37, label %while.end, label %while.body, !dbg !151

while.body:                                       ; preds = %entry, %while.body
  %po.addr.038 = phi ptr [ %18, %while.body ], [ %po, %entry ]
  call void @llvm.dbg.value(metadata ptr %po.addr.038, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load ptr, ptr @stdout, align 8, !dbg !152
  %name = getelementptr inbounds %struct.object, ptr %po.addr.038, i64 0, i32 1, !dbg !154
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %name), !dbg !155
  %1 = load ptr, ptr @stdout, align 8, !dbg !156
  %surf = getelementptr inbounds %struct.object, ptr %po.addr.038, i64 0, i32 6, !dbg !157
  %2 = load ptr, ptr %surf, align 8, !dbg !157
  %3 = load double, ptr %2, align 8, !dbg !158
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1, !dbg !159
  %4 = load double, ptr %arrayidx3, align 8, !dbg !159
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2, !dbg !160
  %5 = load double, ptr %arrayidx6, align 8, !dbg !160
  %bcolor = getelementptr inbounds %struct.surf, ptr %2, i64 0, i32 1, !dbg !161
  %6 = load double, ptr %bcolor, align 8, !dbg !162
  %arrayidx11 = getelementptr inbounds %struct.surf, ptr %2, i64 0, i32 1, i64 1, !dbg !163
  %7 = load double, ptr %arrayidx11, align 8, !dbg !163
  %arrayidx14 = getelementptr inbounds %struct.surf, ptr %2, i64 0, i32 1, i64 2, !dbg !164
  %8 = load double, ptr %arrayidx14, align 8, !dbg !164
  %call15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.1, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8), !dbg !165
  %9 = load ptr, ptr @stdout, align 8, !dbg !166
  %10 = load ptr, ptr %surf, align 8, !dbg !167
  %kdiff = getelementptr inbounds %struct.surf, ptr %10, i64 0, i32 2, !dbg !168
  %11 = load double, ptr %kdiff, align 8, !dbg !168
  %kspec = getelementptr inbounds %struct.surf, ptr %10, i64 0, i32 3, !dbg !169
  %12 = load double, ptr %kspec, align 8, !dbg !169
  %ktran = getelementptr inbounds %struct.surf, ptr %10, i64 0, i32 4, !dbg !170
  %13 = load double, ptr %ktran, align 8, !dbg !170
  %refrindex = getelementptr inbounds %struct.surf, ptr %10, i64 0, i32 5, !dbg !171
  %14 = load double, ptr %refrindex, align 8, !dbg !171
  %kspecn = getelementptr inbounds %struct.surf, ptr %10, i64 0, i32 6, !dbg !172
  %15 = load double, ptr %kspecn, align 8, !dbg !172
  %call21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.2, double noundef %11, double noundef %12, double noundef %13, double noundef %14, double noundef %15), !dbg !173
  %procs = getelementptr inbounds %struct.object, ptr %po.addr.038, i64 0, i32 5, !dbg !174
  %16 = load ptr, ptr %procs, align 8, !dbg !174
  %print = getelementptr inbounds %struct.pprocs, ptr %16, i64 0, i32 1, !dbg !175
  %17 = load ptr, ptr %print, align 8, !dbg !175
  tail call void (ptr, ...) %17(ptr noundef nonnull %po.addr.038) #10, !dbg !176
  %next = getelementptr inbounds %struct.object, ptr %po.addr.038, i64 0, i32 7, !dbg !177
  %18 = load ptr, ptr %next, align 8, !dbg !177
  call void @llvm.dbg.value(metadata ptr %18, metadata !149, metadata !DIExpression()), !dbg !150
  %tobool.not = icmp eq ptr %18, null, !dbg !151
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !151, !llvm.loop !178

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !180
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @NormalizeGeo(ptr noundef %po, ptr nocapture readnone %model, ptr nocapture readnone %modelInvT) local_unnamed_addr #0 !dbg !181 {
entry:
  %normMat = alloca [4 x [4 x double]], align 16
  %tempMat = alloca [4 x [4 x double]], align 16
  call void @llvm.dbg.value(metadata ptr %po, metadata !189, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata ptr undef, metadata !190, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata ptr undef, metadata !191, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %normMat) #10, !dbg !209
  call void @llvm.dbg.declare(metadata ptr %normMat, metadata !203, metadata !DIExpression()), !dbg !210
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tempMat) #10, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %tempMat, metadata !207, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata ptr %po, metadata !202, metadata !DIExpression()), !dbg !208
  %0 = load i64, ptr @TraversalType, align 8, !dbg !213
  %cmp = icmp eq i64 %0, 0, !dbg !215
  %1 = load i64, ptr @ModelNorm, align 8
  %cmp1 = icmp eq i64 %1, 0
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false, !dbg !216
  br i1 %or.cond, label %if.end, label %while.cond.preheader, !dbg !216

while.cond.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %po, metadata !189, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !192, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !193, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !197, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !196, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !195, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !194, metadata !DIExpression()), !dbg !208
  %tobool.not146 = icmp eq ptr %po, null, !dbg !217
  br i1 %tobool.not146, label %while.end, label %while.body, !dbg !217

while.body:                                       ; preds = %while.cond.preheader, %cond.end63
  %po.addr.0153 = phi ptr [ %8, %cond.end63 ], [ %po, %while.cond.preheader ]
  %norm_minx.0152 = phi double [ %norm_minx.0., %cond.end63 ], [ 1.000000e+32, %while.cond.preheader ]
  %norm_miny.0151 = phi double [ %cond17, %cond.end63 ], [ 1.000000e+32, %while.cond.preheader ]
  %norm_maxz.0150 = phi double [ %cond64, %cond.end63 ], [ -1.000000e+32, %while.cond.preheader ]
  %norm_maxy.0149 = phi double [ %norm_maxy.0., %cond.end63 ], [ -1.000000e+32, %while.cond.preheader ]
  %norm_maxx.0148 = phi double [ %cond40, %cond.end63 ], [ -1.000000e+32, %while.cond.preheader ]
  %norm_minz.0147 = phi double [ %norm_minz.0., %cond.end63 ], [ 1.000000e+32, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %po.addr.0153, metadata !189, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %norm_minx.0152, metadata !192, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %norm_miny.0151, metadata !193, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %norm_maxz.0150, metadata !197, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %norm_maxy.0149, metadata !196, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %norm_maxx.0148, metadata !195, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %norm_minz.0147, metadata !194, metadata !DIExpression()), !dbg !208
  %bv = getelementptr inbounds %struct.object, ptr %po.addr.0153, i64 0, i32 2, !dbg !219
  %2 = load double, ptr %bv, align 8, !dbg !219
  %sub = fsub double %norm_minx.0152, %2, !dbg !219
  %cmp2 = fcmp olt double %sub, 0.000000e+00, !dbg !219
  %norm_minx.0. = select i1 %cmp2, double %norm_minx.0152, double %2, !dbg !219
  call void @llvm.dbg.value(metadata double %norm_minx.0., metadata !192, metadata !DIExpression()), !dbg !208
  %arrayidx8 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 1, !dbg !221
  %3 = load double, ptr %arrayidx8, align 8, !dbg !221
  %sub9 = fsub double %norm_miny.0151, %3, !dbg !221
  %cmp10 = fcmp olt double %sub9, 0.000000e+00, !dbg !221
  br i1 %cmp10, label %cond.end16, label %cond.false12, !dbg !221

cond.false12:                                     ; preds = %while.body
  br label %cond.end16, !dbg !221

cond.end16:                                       ; preds = %while.body, %cond.false12
  %cond17 = phi double [ %3, %cond.false12 ], [ %norm_miny.0151, %while.body ], !dbg !221
  call void @llvm.dbg.value(metadata double %cond17, metadata !193, metadata !DIExpression()), !dbg !208
  %arrayidx20 = getelementptr inbounds [3 x double], ptr %bv, i64 0, i64 2, !dbg !222
  %4 = load double, ptr %arrayidx20, align 8, !dbg !222
  %sub21 = fsub double %norm_minz.0147, %4, !dbg !222
  %cmp22 = fcmp olt double %sub21, 0.000000e+00, !dbg !222
  %norm_minz.0. = select i1 %cmp22, double %norm_minz.0147, double %4, !dbg !222
  call void @llvm.dbg.value(metadata double %norm_minz.0., metadata !194, metadata !DIExpression()), !dbg !208
  %dfar = getelementptr inbounds %struct.object, ptr %po.addr.0153, i64 0, i32 2, i32 1, !dbg !223
  %5 = load double, ptr %dfar, align 8, !dbg !223
  %sub32 = fsub double %norm_maxx.0148, %5, !dbg !223
  %cmp33 = fcmp ogt double %sub32, 0.000000e+00, !dbg !223
  br i1 %cmp33, label %cond.end39, label %cond.false35, !dbg !223

cond.false35:                                     ; preds = %cond.end16
  br label %cond.end39, !dbg !223

cond.end39:                                       ; preds = %cond.end16, %cond.false35
  %cond40 = phi double [ %5, %cond.false35 ], [ %norm_maxx.0148, %cond.end16 ], !dbg !223
  call void @llvm.dbg.value(metadata double %cond40, metadata !195, metadata !DIExpression()), !dbg !208
  %arrayidx43 = getelementptr inbounds %struct.object, ptr %po.addr.0153, i64 0, i32 2, i32 1, i64 1, !dbg !224
  %6 = load double, ptr %arrayidx43, align 8, !dbg !224
  %sub44 = fsub double %norm_maxy.0149, %6, !dbg !224
  %cmp45 = fcmp ogt double %sub44, 0.000000e+00, !dbg !224
  %norm_maxy.0. = select i1 %cmp45, double %norm_maxy.0149, double %6, !dbg !224
  call void @llvm.dbg.value(metadata double %norm_maxy.0., metadata !196, metadata !DIExpression()), !dbg !208
  %arrayidx55 = getelementptr inbounds %struct.object, ptr %po.addr.0153, i64 0, i32 2, i32 1, i64 2, !dbg !225
  %7 = load double, ptr %arrayidx55, align 8, !dbg !225
  %sub56 = fsub double %norm_maxz.0150, %7, !dbg !225
  %cmp57 = fcmp ogt double %sub56, 0.000000e+00, !dbg !225
  br i1 %cmp57, label %cond.end63, label %cond.false59, !dbg !225

cond.false59:                                     ; preds = %cond.end39
  br label %cond.end63, !dbg !225

cond.end63:                                       ; preds = %cond.end39, %cond.false59
  %cond64 = phi double [ %7, %cond.false59 ], [ %norm_maxz.0150, %cond.end39 ], !dbg !225
  call void @llvm.dbg.value(metadata double %cond64, metadata !197, metadata !DIExpression()), !dbg !208
  %next = getelementptr inbounds %struct.object, ptr %po.addr.0153, i64 0, i32 7, !dbg !226
  %8 = load ptr, ptr %next, align 8, !dbg !226
  call void @llvm.dbg.value(metadata ptr %8, metadata !189, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %norm_minx.0., metadata !192, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %cond17, metadata !193, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %norm_maxy.0., metadata !196, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %cond40, metadata !195, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata double %norm_minz.0., metadata !194, metadata !DIExpression()), !dbg !208
  %tobool.not = icmp eq ptr %8, null, !dbg !217
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !217, !llvm.loop !227

while.end:                                        ; preds = %cond.end63, %while.cond.preheader
  %norm_minz.0.lcssa = phi double [ 1.000000e+32, %while.cond.preheader ], [ %norm_minz.0., %cond.end63 ], !dbg !229
  %norm_maxx.0.lcssa = phi double [ -1.000000e+32, %while.cond.preheader ], [ %cond40, %cond.end63 ], !dbg !229
  %norm_maxy.0.lcssa = phi double [ -1.000000e+32, %while.cond.preheader ], [ %norm_maxy.0., %cond.end63 ], !dbg !229
  %norm_maxz.0.lcssa = phi double [ -1.000000e+32, %while.cond.preheader ], [ %cond64, %cond.end63 ], !dbg !229
  %norm_miny.0.lcssa = phi double [ 1.000000e+32, %while.cond.preheader ], [ %cond17, %cond.end63 ], !dbg !229
  %norm_minx.0.lcssa = phi double [ 1.000000e+32, %while.cond.preheader ], [ %norm_minx.0., %cond.end63 ], !dbg !229
  %sub65 = fsub double %norm_minx.0.lcssa, %norm_miny.0.lcssa, !dbg !230
  %cmp66 = fcmp olt double %sub65, 0.000000e+00, !dbg !230
  %norm_minx.0.norm_miny.0 = select i1 %cmp66, double %norm_minx.0.lcssa, double %norm_miny.0.lcssa, !dbg !230
  call void @llvm.dbg.value(metadata double %norm_minx.0.norm_miny.0, metadata !198, metadata !DIExpression()), !dbg !208
  %sub71 = fsub double %norm_minx.0.norm_miny.0, %norm_minz.0.lcssa, !dbg !231
  %cmp72 = fcmp olt double %sub71, 0.000000e+00, !dbg !231
  br i1 %cmp72, label %cond.end75, label %cond.false74, !dbg !231

cond.false74:                                     ; preds = %while.end
  br label %cond.end75, !dbg !231

cond.end75:                                       ; preds = %while.end, %cond.false74
  %cond76 = phi double [ %norm_minz.0.lcssa, %cond.false74 ], [ %norm_minx.0.norm_miny.0, %while.end ], !dbg !231
  call void @llvm.dbg.value(metadata double %cond76, metadata !198, metadata !DIExpression()), !dbg !208
  %sub77 = fsub double %norm_maxx.0.lcssa, %norm_maxy.0.lcssa, !dbg !232
  %cmp78 = fcmp ogt double %sub77, 0.000000e+00, !dbg !232
  %norm_maxx.0.norm_maxy.0 = select i1 %cmp78, double %norm_maxx.0.lcssa, double %norm_maxy.0.lcssa, !dbg !232
  call void @llvm.dbg.value(metadata double %norm_maxx.0.norm_maxy.0, metadata !199, metadata !DIExpression()), !dbg !208
  %sub83 = fsub double %norm_maxx.0.norm_maxy.0, %norm_maxz.0.lcssa, !dbg !233
  %cmp84 = fcmp ogt double %sub83, 0.000000e+00, !dbg !233
  br i1 %cmp84, label %cond.end87, label %cond.false86, !dbg !233

cond.false86:                                     ; preds = %cond.end75
  br label %cond.end87, !dbg !233

cond.end87:                                       ; preds = %cond.end75, %cond.false86
  %cond88 = phi double [ %norm_maxz.0.lcssa, %cond.false86 ], [ %norm_maxx.0.norm_maxy.0, %cond.end75 ], !dbg !233
  call void @llvm.dbg.value(metadata double %cond88, metadata !199, metadata !DIExpression()), !dbg !208
  %sub89 = fsub double %cond88, %cond76, !dbg !234
  %div = fdiv double 1.000000e+00, %sub89, !dbg !235
  call void @llvm.dbg.value(metadata double %div, metadata !200, metadata !DIExpression()), !dbg !208
  %fneg = fneg double %cond76, !dbg !236
  %mul = fmul double %div, %fneg, !dbg !237
  call void @llvm.dbg.value(metadata double %mul, metadata !201, metadata !DIExpression()), !dbg !208
  call void @Scale(ptr noundef nonnull %tempMat, double noundef %div, double noundef %div, double noundef %div) #10, !dbg !238
  call void @Translate(ptr noundef nonnull %normMat, double noundef %mul, double noundef %mul, double noundef %mul) #10, !dbg !239
  call void @MatrixMult(ptr noundef nonnull %normMat, ptr noundef nonnull %tempMat, ptr noundef nonnull %normMat) #10, !dbg !240
  call void @llvm.dbg.value(metadata ptr %po, metadata !189, metadata !DIExpression()), !dbg !208
  br i1 %tobool.not146, label %if.end, label %while.body96, !dbg !241

while.body96:                                     ; preds = %cond.end87, %while.body96
  %po.addr.1160 = phi ptr [ %11, %while.body96 ], [ %po, %cond.end87 ]
  call void @llvm.dbg.value(metadata ptr %po.addr.1160, metadata !189, metadata !DIExpression()), !dbg !208
  %procs = getelementptr inbounds %struct.object, ptr %po.addr.1160, i64 0, i32 5, !dbg !242
  %9 = load ptr, ptr %procs, align 8, !dbg !242
  %normalize = getelementptr inbounds %struct.pprocs, ptr %9, i64 0, i32 8, !dbg !244
  %10 = load ptr, ptr %normalize, align 8, !dbg !244
  call void (ptr, ptr, ...) %10(ptr noundef nonnull %po.addr.1160, ptr noundef nonnull %normMat) #10, !dbg !245
  %next98 = getelementptr inbounds %struct.object, ptr %po.addr.1160, i64 0, i32 7, !dbg !246
  %11 = load ptr, ptr %next98, align 8, !dbg !246
  call void @llvm.dbg.value(metadata ptr %11, metadata !189, metadata !DIExpression()), !dbg !208
  %tobool95.not = icmp eq ptr %11, null, !dbg !241
  br i1 %tobool95.not, label %if.end, label %while.body96, !dbg !241, !llvm.loop !247

if.end:                                           ; preds = %while.body96, %cond.end87, %entry
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tempMat) #10, !dbg !249
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %normMat) #10, !dbg !249
  ret void, !dbg !249
}

declare !dbg !250 void @Scale(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare !dbg !253 void @Translate(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare !dbg !254 void @MatrixMult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadGeoFile(ptr noundef %GeoFileName) local_unnamed_addr #0 !dbg !257 {
entry:
  %dummy = alloca i64, align 8
  %primop = alloca i8, align 1
  %objstr = alloca [32 x i8], align 16
  %objname = alloca [32 x i8], align 16
  %model = alloca [4 x [4 x double]], align 16
  %modelInv = alloca [4 x [4 x double]], align 16
  %modelInvT = alloca [4 x [4 x double]], align 16
  call void @llvm.dbg.value(metadata ptr %GeoFileName, metadata !261, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy) #10, !dbg !338
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %primop) #10, !dbg !339
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %objstr) #10, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %objstr, metadata !267, metadata !DIExpression()), !dbg !341
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %objname) #10, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %objname, metadata !268, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %model) #10, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %model, metadata !331, metadata !DIExpression()), !dbg !345
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %modelInv) #10, !dbg !346
  call void @llvm.dbg.declare(metadata ptr %modelInv, metadata !332, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %modelInvT) #10, !dbg !348
  call void @llvm.dbg.declare(metadata ptr %modelInvT, metadata !333, metadata !DIExpression()), !dbg !349
  %call = tail call ptr @fopen(ptr noundef %GeoFileName, ptr noundef nonnull @.str.3), !dbg !350
  call void @llvm.dbg.value(metadata ptr %call, metadata !269, metadata !DIExpression()), !dbg !337
  %tobool.not = icmp eq ptr %call, null, !dbg !351
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !353

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, ptr noundef %GeoFileName), !dbg !354
  tail call void @exit(i32 noundef 1) #11, !dbg !356
  unreachable, !dbg !356

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !335, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata ptr null, metadata !334, metadata !DIExpression()), !dbg !337
  %0 = load ptr, ptr @gm, align 8, !dbg !357
  %modelroot = getelementptr inbounds %struct.gmem, ptr %0, i64 0, i32 3, !dbg !358
  store ptr null, ptr %modelroot, align 8, !dbg !359
  store i64 0, ptr @prim_obj_cnt, align 8, !dbg !360
  store i64 0, ptr @prim_elem_cnt, align 8, !dbg !361
  call void @MatrixCopy(ptr noundef nonnull %model, ptr noundef getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 4)) #10, !dbg !362
  call void @MatrixInverse(ptr noundef nonnull %modelInv, ptr noundef nonnull %model) #10, !dbg !363
  call void @MatrixTranspose(ptr noundef nonnull %modelInvT, ptr noundef nonnull %modelInv) #10, !dbg !364
  %call6 = call i32 @getc(ptr noundef nonnull %call), !dbg !365
  call void @llvm.dbg.value(metadata i32 %call6, metadata !265, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !337
  %sext = shl i32 %call6, 24, !dbg !367
  %cmp.not = icmp eq i32 %sext, 587202560, !dbg !368
  br i1 %cmp.not, label %while.cond, label %if.then9, !dbg !369

if.then9:                                         ; preds = %if.end
  %conv7 = ashr exact i32 %sext, 24, !dbg !367
  %call11 = call i32 @ungetc(i32 noundef %conv7, ptr noundef nonnull %call), !dbg !370
  br label %while.cond24.preheader, !dbg !370

while.cond24.preheader:                           ; preds = %while.cond, %if.then9
  br label %while.cond24, !dbg !371

while.cond:                                       ; preds = %if.end, %while.body
  %comchar.0 = phi i32 [ %call15, %while.body ], [ 0, %if.end ], !dbg !372
  call void @llvm.dbg.value(metadata i8 undef, metadata !265, metadata !DIExpression()), !dbg !337
  %sext170.mask = and i32 %comchar.0, 255, !dbg !374
  %cmp13.not = icmp eq i32 %sext170.mask, 35, !dbg !374
  br i1 %cmp13.not, label %while.cond24.preheader, label %while.body, !dbg !375

while.body:                                       ; preds = %while.cond
  %call15 = call i32 @getc(ptr noundef nonnull %call), !dbg !376
  call void @llvm.dbg.value(metadata i32 %call15, metadata !265, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !337
  %sext175.mask = and i32 %call15, 255, !dbg !378
  %cmp18 = icmp eq i32 %sext175.mask, 255, !dbg !378
  br i1 %cmp18, label %if.then20, label %while.cond, !dbg !379, !llvm.loop !380

if.then20:                                        ; preds = %while.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !382
  %2 = call i64 @fwrite(ptr nonnull @.str.5, i64 36, i64 1, ptr %1) #12, !dbg !384
  call void @exit(i32 noundef -1) #11, !dbg !385
  unreachable, !dbg !385

while.cond24:                                     ; preds = %while.cond24.preheader, %for.end
  %prev.0 = phi ptr [ %call42, %for.end ], [ null, %while.cond24.preheader ], !dbg !337
  call void @llvm.dbg.value(metadata ptr %prev.0, metadata !334, metadata !DIExpression()), !dbg !337
  %call27 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.6, ptr noundef nonnull %objstr, ptr noundef nonnull %objname) #10, !dbg !386
  call void @llvm.dbg.value(metadata i32 %call27, metadata !264, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !337
  switch i32 %call27, label %if.then38 [
    i32 -1, label %while.end114
    i32 2, label %lor.lhs.false
  ], !dbg !371

lor.lhs.false:                                    ; preds = %while.cond24
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %objstr, ptr noundef nonnull dereferenceable(7) @.str.7, i64 7), !dbg !387
  %cmp36.not = icmp eq i32 %bcmp, 0, !dbg !390
  br i1 %cmp36.not, label %if.end41, label %if.then38, !dbg !391

if.then38:                                        ; preds = %while.cond24, %lor.lhs.false
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, ptr noundef nonnull %objstr), !dbg !392
  call void @exit(i32 noundef -1) #11, !dbg !394
  unreachable, !dbg !394

if.end41:                                         ; preds = %lor.lhs.false
  %3 = load i64, ptr @prim_obj_cnt, align 8, !dbg !395
  %inc = add nsw i64 %3, 1, !dbg !395
  store i64 %inc, ptr @prim_obj_cnt, align 8, !dbg !395
  %call42 = call ptr @GlobalMalloc(i64 noundef 128, ptr noundef nonnull @.str.9) #10, !dbg !396
  call void @llvm.dbg.value(metadata ptr %call42, metadata !335, metadata !DIExpression()), !dbg !337
  %4 = load i64, ptr @prim_obj_cnt, align 8, !dbg !397
  store i64 %4, ptr %call42, align 8, !dbg !398
  %next = getelementptr inbounds %struct.object, ptr %call42, i64 0, i32 7, !dbg !399
  store ptr null, ptr %next, align 8, !dbg !400
  %name = getelementptr inbounds %struct.object, ptr %call42, i64 0, i32 1, !dbg !401
  %call45 = call ptr @strcpy(ptr noundef nonnull %name, ptr noundef nonnull %objname) #10, !dbg !402
  %5 = load ptr, ptr @gm, align 8, !dbg !403
  %modelroot46 = getelementptr inbounds %struct.gmem, ptr %5, i64 0, i32 3, !dbg !405
  %6 = load ptr, ptr %modelroot46, align 8, !dbg !405
  %cmp47 = icmp eq ptr %6, null, !dbg !406
  %next52 = getelementptr inbounds %struct.object, ptr %prev.0, i64 0, i32 7
  %spec.select = select i1 %cmp47, ptr %modelroot46, ptr %next52, !dbg !407
  store ptr %call42, ptr %spec.select, align 8, !dbg !408
  %call54 = call ptr @GlobalMalloc(i64 noundef 88, ptr noundef nonnull @.str.9) #10, !dbg !409
  call void @llvm.dbg.value(metadata ptr %call54, metadata !330, metadata !DIExpression()), !dbg !337
  %surf = getelementptr inbounds %struct.object, ptr %call42, i64 0, i32 6, !dbg !410
  store ptr %call54, ptr %surf, align 8, !dbg !411
  %arrayidx56 = getelementptr inbounds [3 x double], ptr %call54, i64 0, i64 1, !dbg !412
  %arrayidx58 = getelementptr inbounds [3 x double], ptr %call54, i64 0, i64 2, !dbg !413
  %bcolor = getelementptr inbounds %struct.surf, ptr %call54, i64 0, i32 1, !dbg !414
  %arrayidx61 = getelementptr inbounds %struct.surf, ptr %call54, i64 0, i32 1, i64 1, !dbg !415
  %arrayidx63 = getelementptr inbounds %struct.surf, ptr %call54, i64 0, i32 1, i64 2, !dbg !416
  %call64 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.10, ptr noundef %call54, ptr noundef nonnull %arrayidx56, ptr noundef nonnull %arrayidx58, ptr noundef nonnull %bcolor, ptr noundef nonnull %arrayidx61, ptr noundef nonnull %arrayidx63) #10, !dbg !417
  call void @llvm.dbg.value(metadata i32 %call64, metadata !264, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !337
  %cmp66.not = icmp eq i32 %call64, 6, !dbg !418
  br i1 %cmp66.not, label %if.end70, label %if.then68, !dbg !420

if.then68:                                        ; preds = %if.end41
  %puts174 = call i32 @puts(ptr nonnull @str.23), !dbg !421
  call void @exit(i32 noundef -1) #11, !dbg !423
  unreachable, !dbg !423

if.end70:                                         ; preds = %if.end41
  %kdiff = getelementptr inbounds %struct.surf, ptr %call54, i64 0, i32 2, !dbg !424
  %kspec = getelementptr inbounds %struct.surf, ptr %call54, i64 0, i32 3, !dbg !425
  %ktran = getelementptr inbounds %struct.surf, ptr %call54, i64 0, i32 4, !dbg !426
  %refrindex = getelementptr inbounds %struct.surf, ptr %call54, i64 0, i32 5, !dbg !427
  %kspecn = getelementptr inbounds %struct.surf, ptr %call54, i64 0, i32 6, !dbg !428
  %call71 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.12, ptr noundef nonnull %kdiff, ptr noundef nonnull %kspec, ptr noundef nonnull %ktran, ptr noundef nonnull %refrindex, ptr noundef nonnull %kspecn) #10, !dbg !429
  call void @llvm.dbg.value(metadata i32 %call71, metadata !264, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !337
  %cmp73.not = icmp eq i32 %call71, 5, !dbg !430
  br i1 %cmp73.not, label %if.end77, label %if.then75, !dbg !432

if.then75:                                        ; preds = %if.end70
  %puts173 = call i32 @puts(ptr nonnull @str.22), !dbg !433
  call void @exit(i32 noundef -1) #11, !dbg !435
  unreachable, !dbg !435

if.end77:                                         ; preds = %if.end70
  call void @llvm.dbg.value(metadata ptr %dummy, metadata !263, metadata !DIExpression(DW_OP_deref)), !dbg !337
  %call78 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.14, ptr noundef nonnull %dummy, ptr noundef nonnull %dummy, ptr noundef nonnull %dummy, ptr noundef nonnull %dummy) #10, !dbg !436
  call void @llvm.dbg.value(metadata i32 %call78, metadata !264, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !337
  %cmp80.not = icmp eq i32 %call78, 4, !dbg !437
  br i1 %cmp80.not, label %if.end84, label %if.then82, !dbg !439

if.then82:                                        ; preds = %if.end77
  %puts172 = call i32 @puts(ptr nonnull @str.21), !dbg !440
  call void @exit(i32 noundef -1) #11, !dbg !442
  unreachable, !dbg !442

if.end84:                                         ; preds = %if.end77
  %numelements = getelementptr inbounds %struct.object, ptr %call42, i64 0, i32 4, !dbg !443
  call void @llvm.dbg.value(metadata ptr %primop, metadata !266, metadata !DIExpression(DW_OP_deref)), !dbg !337
  %call85 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.16, ptr noundef nonnull %primop, ptr noundef nonnull %numelements) #10, !dbg !444
  call void @llvm.dbg.value(metadata i32 %call85, metadata !264, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !337
  %cmp87.not = icmp eq i32 %call85, 2, !dbg !445
  br i1 %cmp87.not, label %if.end91, label %if.then89, !dbg !447

if.then89:                                        ; preds = %if.end84
  %puts171 = call i32 @puts(ptr nonnull @str.20), !dbg !448
  call void @exit(i32 noundef -1) #11, !dbg !450
  unreachable, !dbg !450

if.end91:                                         ; preds = %if.end84
  %7 = load i8, ptr %primop, align 1, !dbg !451
  call void @llvm.dbg.value(metadata i8 %7, metadata !266, metadata !DIExpression()), !dbg !337
  %conv92 = sext i8 %7 to i32, !dbg !451
  switch i32 %conv92, label %sw.default [
    i32 115, label %sw.epilog
    i32 112, label %sw.bb93
    i32 116, label %sw.bb95
    i32 99, label %sw.bb97
    i32 113, label %sw.bb97
  ], !dbg !452

sw.bb93:                                          ; preds = %if.end91
  br label %sw.epilog, !dbg !453

sw.bb95:                                          ; preds = %if.end91
  br label %sw.epilog, !dbg !455

sw.bb97:                                          ; preds = %if.end91, %if.end91
  %puts = call i32 @puts(ptr nonnull @str), !dbg !456
  call void @exit(i32 noundef -1) #11, !dbg !457
  unreachable, !dbg !457

sw.default:                                       ; preds = %if.end91
  %conv92.le = sext i8 %7 to i32, !dbg !451
  %call100 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.19, i32 noundef %conv92.le), !dbg !458
  call void @exit(i32 noundef -1) #11, !dbg !459
  unreachable, !dbg !459

sw.epilog:                                        ; preds = %if.end91, %sw.bb95, %sw.bb93
  %TriProcs.sink = phi ptr [ @TriProcs, %sw.bb95 ], [ @PolyProcs, %sw.bb93 ], [ @SphProcs, %if.end91 ]
  %procs96 = getelementptr inbounds %struct.object, ptr %call42, i64 0, i32 5, !dbg !460
  store ptr %TriProcs.sink, ptr %procs96, align 8, !dbg !460
  %8 = load i64, ptr %numelements, align 8, !dbg !461
  %mul = mul i64 %8, 72, !dbg !462
  %call102 = call ptr @GlobalMalloc(i64 noundef %mul, ptr noundef nonnull @.str.9) #10, !dbg !463
  call void @llvm.dbg.value(metadata ptr %call102, metadata !336, metadata !DIExpression()), !dbg !337
  %pelem = getelementptr inbounds %struct.object, ptr %call42, i64 0, i32 3, !dbg !464
  store ptr %call102, ptr %pelem, align 8, !dbg !465
  %9 = load i64, ptr %numelements, align 8, !dbg !466
  %10 = load i64, ptr @prim_elem_cnt, align 8, !dbg !467
  %add = add nsw i64 %10, %9, !dbg !467
  store i64 %add, ptr @prim_elem_cnt, align 8, !dbg !467
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !337
  %cmp105.not177 = icmp slt i64 %9, 1, !dbg !468
  br i1 %cmp105.not177, label %for.end, label %for.body, !dbg !471

for.body:                                         ; preds = %sw.epilog, %for.body
  %pe.0179 = phi ptr [ %incdec.ptr, %for.body ], [ %call102, %sw.epilog ]
  %i.0178 = phi i64 [ %inc108, %for.body ], [ 1, %sw.epilog ]
  call void @llvm.dbg.value(metadata ptr %pe.0179, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i64 %i.0178, metadata !262, metadata !DIExpression()), !dbg !337
  store i64 %i.0178, ptr %pe.0179, align 8, !dbg !472
  %inc108 = add nuw nsw i64 %i.0178, 1, !dbg !473
  call void @llvm.dbg.value(metadata i64 %inc108, metadata !262, metadata !DIExpression()), !dbg !337
  %incdec.ptr = getelementptr inbounds %struct.element, ptr %pe.0179, i64 1, !dbg !474
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !336, metadata !DIExpression()), !dbg !337
  %11 = load i64, ptr %numelements, align 8, !dbg !475
  %cmp105.not.not = icmp slt i64 %i.0178, %11, !dbg !468
  br i1 %cmp105.not.not, label %for.body, label %for.end, !dbg !471, !llvm.loop !476

for.end:                                          ; preds = %for.body, %sw.epilog
  %procs109 = getelementptr inbounds %struct.object, ptr %call42, i64 0, i32 5, !dbg !478
  %12 = load ptr, ptr %procs109, align 8, !dbg !478
  %read = getelementptr inbounds %struct.pprocs, ptr %12, i64 0, i32 2, !dbg !479
  %13 = load ptr, ptr %read, align 8, !dbg !479
  call void (ptr, ptr, ...) %13(ptr noundef nonnull %call42, ptr noundef nonnull %call) #10, !dbg !480
  %14 = load ptr, ptr %procs109, align 8, !dbg !481
  %transform = getelementptr inbounds %struct.pprocs, ptr %14, i64 0, i32 4, !dbg !482
  %15 = load ptr, ptr %transform, align 8, !dbg !482
  call void (ptr, ptr, ptr, ...) %15(ptr noundef nonnull %call42, ptr noundef nonnull %model, ptr noundef nonnull %modelInvT) #10, !dbg !483
  %16 = load ptr, ptr %procs109, align 8, !dbg !484
  %bbox = getelementptr inbounds %struct.pprocs, ptr %16, i64 0, i32 9, !dbg !485
  %17 = load ptr, ptr %bbox, align 8, !dbg !485
  call void (ptr, ...) %17(ptr noundef nonnull %call42) #10, !dbg !486
  call void @llvm.dbg.value(metadata ptr %call42, metadata !334, metadata !DIExpression()), !dbg !337
  br label %while.cond24, !dbg !371, !llvm.loop !487

while.end114:                                     ; preds = %while.cond24
  %18 = load ptr, ptr @gm, align 8, !dbg !489
  %modelroot115 = getelementptr inbounds %struct.gmem, ptr %18, i64 0, i32 3, !dbg !490
  %19 = load ptr, ptr %modelroot115, align 8, !dbg !490
  call void @NormalizeGeo(ptr noundef %19, ptr undef, ptr undef), !dbg !491
  %call118 = call i32 @fclose(ptr noundef nonnull %call), !dbg !492
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %modelInvT) #10, !dbg !493
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %modelInv) #10, !dbg !493
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %model) #10, !dbg !493
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %objname) #10, !dbg !493
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %objstr) #10, !dbg !493
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %primop) #10, !dbg !493
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy) #10, !dbg !493
  ret void, !dbg !493
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare !dbg !494 void @MatrixCopy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !497 void @MatrixInverse(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !498 void @MatrixTranspose(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !499 noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !503 noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !506 ptr @GlobalMalloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !510 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

declare ptr @SphName() #3

declare void @SphPrint(ptr noundef) #3

declare void @SphRead(ptr noundef, ptr noundef) #3

declare void @SphTransform(ptr noundef, ptr noundef, ptr noundef) #3

declare i64 @SphIntersect(ptr noundef, ptr noundef, ptr noundef) #3

declare i64 @SphPeIntersect(ptr noundef, ptr noundef, ptr noundef) #3

declare void @SphNormal(ptr noundef, ptr noundef, ptr noundef) #3

declare void @SphDataNormalize(ptr noundef, ptr noundef) #3

declare void @SphBoundBox(ptr noundef) #3

declare ptr @PolyName() #3

declare void @PolyPrint(ptr noundef) #3

declare void @PolyRead(ptr noundef, ptr noundef) #3

declare void @PolyTransform(ptr noundef, ptr noundef, ptr noundef) #3

declare i64 @PolyIntersect(ptr noundef, ptr noundef, ptr noundef) #3

declare i64 @PolyPeIntersect(ptr noundef, ptr noundef, ptr noundef) #3

declare void @PolyNormal(ptr noundef, ptr noundef, ptr noundef) #3

declare void @PolyDataNormalize(ptr noundef, ptr noundef) #3

declare void @PolyBoundBox(ptr noundef) #3

declare ptr @TriName() #3

declare void @TriPrint(ptr noundef) #3

declare void @TriRead(ptr noundef, ptr noundef) #3

declare void @TriTransform(ptr noundef, ptr noundef, ptr noundef) #3

declare i64 @TriIntersect(ptr noundef, ptr noundef, ptr noundef) #3

declare i64 @TriPeIntersect(ptr noundef, ptr noundef, ptr noundef) #3

declare void @TriNormal(ptr noundef, ptr noundef, ptr noundef) #3

declare void @TriDataNormalize(ptr noundef, ptr noundef) #3

declare void @TriBoundBox(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "SphProcs", scope: !2, file: !3, line: 44, type: !9, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "geo.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "b085855529092886b55c23692a957480")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !37}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "PolyProcs", scope: !2, file: !3, line: 62, type: !9, isLocal: true, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROCS", file: !10, line: 340, baseType: !11)
!10 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pprocs", file: !10, line: 327, size: 640, elements: !12)
!12 = !{!13, !20, !24, !25, !26, !27, !33, !34, !35, !36}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !11, file: !10, line: 329, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, null}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !10, line: 287, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !11, file: !10, line: 330, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{null, null}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !11, file: !10, line: 331, baseType: !21, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "binread", scope: !11, file: !10, line: 332, baseType: !21, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "transform", scope: !11, file: !10, line: 333, baseType: !21, size: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "intersect", scope: !11, file: !10, line: 334, baseType: !28, size: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, null}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !10, line: 297, baseType: !32)
!32 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "pe_intersect", scope: !11, file: !10, line: 335, baseType: !28, size: 64, offset: 384)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !11, file: !10, line: 336, baseType: !21, size: 64, offset: 448)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !11, file: !10, line: 337, baseType: !21, size: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !11, file: !10, line: 338, baseType: !21, size: 64, offset: 576)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "TriProcs", scope: !2, file: !3, line: 82, type: !9, isLocal: true, isDefinition: true)
!39 = !{i32 7, !"Dwarf Version", i32 5}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{i32 7, !"PIC Level", i32 2}
!43 = !{i32 7, !"PIE Level", i32 2}
!44 = !{i32 7, !"uwtable", i32 2}
!45 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!46 = distinct !DISubprogram(name: "MakeElementArray", scope: !3, file: !3, line: 111, type: !47, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !96}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELEMENT", file: !10, line: 481, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "element", file: !10, line: 474, size: 576, elements: !53)
!53 = !{!54, !55, !94, !95}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !52, file: !10, line: 476, baseType: !31, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !52, file: !10, line: 477, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !10, line: 488, size: 1024, elements: !58)
!58 = !{!59, !60, !64, !75, !76, !77, !79, !93}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !57, file: !10, line: 490, baseType: !31, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !57, file: !10, line: 491, baseType: !61, size: 256, offset: 64)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !57, file: !10, line: 492, baseType: !65, size: 384, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !10, line: 418, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !10, line: 413, size: 384, elements: !67)
!67 = !{!68, !74}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !66, file: !10, line: 415, baseType: !69, size: 192)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 192, elements: !72)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !10, line: 310, baseType: !71)
!71 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!72 = !{!73}
!73 = !DISubrange(count: 3)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !66, file: !10, line: 416, baseType: !69, size: 192, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !57, file: !10, line: 493, baseType: !50, size: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !57, file: !10, line: 494, baseType: !31, size: 64, offset: 768)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !57, file: !10, line: 495, baseType: !78, size: 64, offset: 832)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "surf", scope: !57, file: !10, line: 496, baseType: !80, size: 64, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "SURF", file: !10, line: 357, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "surf", file: !10, line: 347, size: 704, elements: !83)
!83 = !{!84, !87, !88, !89, !90, !91, !92}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "fcolor", scope: !82, file: !10, line: 349, baseType: !85, size: 192)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !10, line: 319, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !10, line: 314, baseType: !69)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "bcolor", scope: !82, file: !10, line: 350, baseType: !85, size: 192, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "kdiff", scope: !82, file: !10, line: 351, baseType: !70, size: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "kspec", scope: !82, file: !10, line: 352, baseType: !70, size: 64, offset: 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ktran", scope: !82, file: !10, line: 353, baseType: !70, size: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "refrindex", scope: !82, file: !10, line: 354, baseType: !70, size: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "kspecn", scope: !82, file: !10, line: 355, baseType: !70, size: 64, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !57, file: !10, line: 497, baseType: !56, size: 64, offset: 960)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !52, file: !10, line: 478, baseType: !17, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !52, file: !10, line: 479, baseType: !65, size: 384, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!97 = !{!98, !99, !100, !103, !104}
!98 = !DILocalVariable(name: "totalElements", arg: 1, scope: !46, file: !3, line: 111, type: !96)
!99 = !DILocalVariable(name: "i", scope: !46, file: !3, line: 113, type: !31)
!100 = !DILocalVariable(name: "po", scope: !46, file: !3, line: 114, type: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "OBJECT", file: !10, line: 499, baseType: !57)
!103 = !DILocalVariable(name: "currArrayPosition", scope: !46, file: !3, line: 115, type: !31)
!104 = !DILocalVariable(name: "npepa", scope: !46, file: !3, line: 116, type: !49)
!105 = !DILocation(line: 0, scope: !46)
!106 = !DILocation(line: 118, column: 7, scope: !46)
!107 = !DILocation(line: 118, column: 11, scope: !46)
!108 = !DILocation(line: 119, column: 17, scope: !46)
!109 = !DILocation(line: 121, column: 2, scope: !46)
!110 = !DILocation(line: 123, column: 20, scope: !111)
!111 = distinct !DILexicalBlock(scope: !46, file: !3, line: 122, column: 3)
!112 = !DILocation(line: 123, column: 27, scope: !111)
!113 = !DILocation(line: 124, column: 12, scope: !111)
!114 = distinct !{!114, !109, !115, !116, !117}
!115 = !DILocation(line: 125, column: 3, scope: !46)
!116 = !{!"llvm.loop.mustprogress"}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = !DILocation(line: 128, column: 36, scope: !46)
!119 = !DILocation(line: 127, column: 10, scope: !46)
!120 = !DILocation(line: 127, column: 14, scope: !46)
!121 = !DILocation(line: 128, column: 10, scope: !46)
!122 = !DILocation(line: 130, column: 2, scope: !46)
!123 = !DILocation(line: 132, column: 23, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !3, line: 132, column: 3)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 132, column: 3)
!126 = distinct !DILexicalBlock(scope: !46, file: !3, line: 131, column: 3)
!127 = !DILocation(line: 132, column: 17, scope: !124)
!128 = !DILocation(line: 132, column: 3, scope: !125)
!129 = !DILocation(line: 133, column: 37, scope: !124)
!130 = !DILocation(line: 133, column: 43, scope: !124)
!131 = !DILocation(line: 133, column: 27, scope: !124)
!132 = !DILocation(line: 133, column: 4, scope: !124)
!133 = !DILocation(line: 133, column: 31, scope: !124)
!134 = !DILocation(line: 132, column: 37, scope: !124)
!135 = distinct !{!135, !128, !136, !116, !117}
!136 = !DILocation(line: 133, column: 45, scope: !125)
!137 = !DILocation(line: 135, column: 12, scope: !126)
!138 = distinct !{!138, !122, !139, !116, !117}
!139 = !DILocation(line: 136, column: 3, scope: !46)
!140 = !DILocation(line: 138, column: 2, scope: !46)
!141 = !DISubprogram(name: "ObjectMalloc", scope: !10, file: !10, line: 915, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{!5, !31, !31}
!144 = !{}
!145 = distinct !DISubprogram(name: "PrintGeo", scope: !3, file: !3, line: 155, type: !146, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !101}
!148 = !{!149}
!149 = !DILocalVariable(name: "po", arg: 1, scope: !145, file: !3, line: 155, type: !101)
!150 = !DILocation(line: 0, scope: !145)
!151 = !DILocation(line: 157, column: 2, scope: !145)
!152 = !DILocation(line: 159, column: 11, scope: !153)
!153 = distinct !DILexicalBlock(scope: !145, file: !3, line: 158, column: 3)
!154 = !DILocation(line: 159, column: 39, scope: !153)
!155 = !DILocation(line: 159, column: 3, scope: !153)
!156 = !DILocation(line: 160, column: 11, scope: !153)
!157 = !DILocation(line: 161, column: 8, scope: !153)
!158 = !DILocation(line: 161, column: 4, scope: !153)
!159 = !DILocation(line: 161, column: 25, scope: !153)
!160 = !DILocation(line: 162, column: 4, scope: !153)
!161 = !DILocation(line: 162, column: 35, scope: !153)
!162 = !DILocation(line: 162, column: 25, scope: !153)
!163 = !DILocation(line: 163, column: 4, scope: !153)
!164 = !DILocation(line: 163, column: 25, scope: !153)
!165 = !DILocation(line: 160, column: 3, scope: !153)
!166 = !DILocation(line: 165, column: 11, scope: !153)
!167 = !DILocation(line: 166, column: 8, scope: !153)
!168 = !DILocation(line: 166, column: 14, scope: !153)
!169 = !DILocation(line: 166, column: 31, scope: !153)
!170 = !DILocation(line: 166, column: 48, scope: !153)
!171 = !DILocation(line: 167, column: 14, scope: !153)
!172 = !DILocation(line: 167, column: 35, scope: !153)
!173 = !DILocation(line: 165, column: 3, scope: !153)
!174 = !DILocation(line: 169, column: 9, scope: !153)
!175 = !DILocation(line: 169, column: 16, scope: !153)
!176 = !DILocation(line: 169, column: 3, scope: !153)
!177 = !DILocation(line: 170, column: 12, scope: !153)
!178 = distinct !{!178, !151, !179, !116, !117}
!179 = !DILocation(line: 171, column: 3, scope: !145)
!180 = !DILocation(line: 172, column: 2, scope: !145)
!181 = distinct !DISubprogram(name: "NormalizeGeo", scope: !3, file: !3, line: 190, type: !182, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !188)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !101, !184, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 256, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 4)
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !207}
!189 = !DILocalVariable(name: "po", arg: 1, scope: !181, file: !3, line: 190, type: !101)
!190 = !DILocalVariable(name: "model", arg: 2, scope: !181, file: !3, line: 190, type: !184)
!191 = !DILocalVariable(name: "modelInvT", arg: 3, scope: !181, file: !3, line: 190, type: !184)
!192 = !DILocalVariable(name: "norm_minx", scope: !181, file: !3, line: 192, type: !70)
!193 = !DILocalVariable(name: "norm_miny", scope: !181, file: !3, line: 193, type: !70)
!194 = !DILocalVariable(name: "norm_minz", scope: !181, file: !3, line: 194, type: !70)
!195 = !DILocalVariable(name: "norm_maxx", scope: !181, file: !3, line: 195, type: !70)
!196 = !DILocalVariable(name: "norm_maxy", scope: !181, file: !3, line: 196, type: !70)
!197 = !DILocalVariable(name: "norm_maxz", scope: !181, file: !3, line: 197, type: !70)
!198 = !DILocalVariable(name: "scale_min", scope: !181, file: !3, line: 198, type: !70)
!199 = !DILocalVariable(name: "scale_max", scope: !181, file: !3, line: 199, type: !70)
!200 = !DILocalVariable(name: "scale", scope: !181, file: !3, line: 200, type: !70)
!201 = !DILocalVariable(name: "trans", scope: !181, file: !3, line: 201, type: !70)
!202 = !DILocalVariable(name: "poHead", scope: !181, file: !3, line: 202, type: !101)
!203 = !DILocalVariable(name: "normMat", scope: !181, file: !3, line: 203, type: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRIX", file: !10, line: 316, baseType: !205)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 1024, elements: !206)
!206 = !{!187, !187}
!207 = !DILocalVariable(name: "tempMat", scope: !181, file: !3, line: 204, type: !204)
!208 = !DILocation(line: 0, scope: !181)
!209 = !DILocation(line: 203, column: 2, scope: !181)
!210 = !DILocation(line: 203, column: 9, scope: !181)
!211 = !DILocation(line: 204, column: 2, scope: !181)
!212 = !DILocation(line: 204, column: 9, scope: !181)
!213 = !DILocation(line: 209, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !181, file: !3, line: 209, column: 6)
!215 = !DILocation(line: 209, column: 23, scope: !214)
!216 = !DILocation(line: 209, column: 34, scope: !214)
!217 = !DILocation(line: 216, column: 3, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !3, line: 210, column: 3)
!219 = !DILocation(line: 218, column: 16, scope: !220)
!220 = distinct !DILexicalBlock(scope: !218, file: !3, line: 217, column: 4)
!221 = !DILocation(line: 219, column: 16, scope: !220)
!222 = !DILocation(line: 220, column: 16, scope: !220)
!223 = !DILocation(line: 221, column: 16, scope: !220)
!224 = !DILocation(line: 222, column: 16, scope: !220)
!225 = !DILocation(line: 223, column: 16, scope: !220)
!226 = !DILocation(line: 225, column: 13, scope: !220)
!227 = distinct !{!227, !217, !228, !116, !117}
!228 = !DILocation(line: 226, column: 4, scope: !218)
!229 = !DILocation(line: 0, scope: !218)
!230 = !DILocation(line: 231, column: 15, scope: !218)
!231 = !DILocation(line: 232, column: 15, scope: !218)
!232 = !DILocation(line: 233, column: 15, scope: !218)
!233 = !DILocation(line: 234, column: 15, scope: !218)
!234 = !DILocation(line: 236, column: 26, scope: !218)
!235 = !DILocation(line: 236, column: 14, scope: !218)
!236 = !DILocation(line: 237, column: 12, scope: !218)
!237 = !DILocation(line: 237, column: 22, scope: !218)
!238 = !DILocation(line: 239, column: 3, scope: !218)
!239 = !DILocation(line: 240, column: 3, scope: !218)
!240 = !DILocation(line: 241, column: 3, scope: !218)
!241 = !DILocation(line: 248, column: 3, scope: !218)
!242 = !DILocation(line: 250, column: 10, scope: !243)
!243 = distinct !DILexicalBlock(scope: !218, file: !3, line: 249, column: 4)
!244 = !DILocation(line: 250, column: 17, scope: !243)
!245 = !DILocation(line: 250, column: 4, scope: !243)
!246 = !DILocation(line: 251, column: 13, scope: !243)
!247 = distinct !{!247, !241, !248, !116, !117}
!248 = !DILocation(line: 252, column: 4, scope: !218)
!249 = !DILocation(line: 254, column: 2, scope: !181)
!250 = !DISubprogram(name: "Scale", scope: !10, file: !10, line: 901, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !184, !70, !70, !70}
!253 = !DISubprogram(name: "Translate", scope: !10, file: !10, line: 900, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
!254 = !DISubprogram(name: "MatrixMult", scope: !10, file: !10, line: 898, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !184, !184, !184}
!257 = distinct !DISubprogram(name: "ReadGeoFile", scope: !3, file: !3, line: 279, type: !258, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !17}
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !330, !331, !332, !333, !334, !335, !336}
!261 = !DILocalVariable(name: "GeoFileName", arg: 1, scope: !257, file: !3, line: 279, type: !17)
!262 = !DILocalVariable(name: "i", scope: !257, file: !3, line: 281, type: !31)
!263 = !DILocalVariable(name: "dummy", scope: !257, file: !3, line: 282, type: !31)
!264 = !DILocalVariable(name: "stat", scope: !257, file: !3, line: 283, type: !31)
!265 = !DILocalVariable(name: "comchar", scope: !257, file: !3, line: 284, type: !18)
!266 = !DILocalVariable(name: "primop", scope: !257, file: !3, line: 285, type: !18)
!267 = !DILocalVariable(name: "objstr", scope: !257, file: !3, line: 286, type: !61)
!268 = !DILocalVariable(name: "objname", scope: !257, file: !3, line: 287, type: !61)
!269 = !DILocalVariable(name: "pf", scope: !257, file: !3, line: 288, type: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !272, line: 7, baseType: !273)
!272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !274, line: 49, size: 1728, elements: !275)
!274 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!275 = !{!276, !278, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !293, !295, !296, !297, !300, !302, !304, !308, !311, !313, !316, !319, !320, !321, !325, !326}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !273, file: !274, line: 51, baseType: !277, size: 32)
!277 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !273, file: !274, line: 54, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !273, file: !274, line: 55, baseType: !279, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !273, file: !274, line: 56, baseType: !279, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !273, file: !274, line: 57, baseType: !279, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !273, file: !274, line: 58, baseType: !279, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !273, file: !274, line: 59, baseType: !279, size: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !273, file: !274, line: 60, baseType: !279, size: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !273, file: !274, line: 61, baseType: !279, size: 64, offset: 512)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !273, file: !274, line: 64, baseType: !279, size: 64, offset: 576)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !273, file: !274, line: 65, baseType: !279, size: 64, offset: 640)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !273, file: !274, line: 66, baseType: !279, size: 64, offset: 704)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !273, file: !274, line: 68, baseType: !291, size: 64, offset: 768)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !274, line: 36, flags: DIFlagFwdDecl)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !273, file: !274, line: 70, baseType: !294, size: 64, offset: 832)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !273, file: !274, line: 72, baseType: !277, size: 32, offset: 896)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !273, file: !274, line: 73, baseType: !277, size: 32, offset: 928)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !273, file: !274, line: 74, baseType: !298, size: 64, offset: 960)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !299, line: 152, baseType: !32)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !273, file: !274, line: 77, baseType: !301, size: 16, offset: 1024)
!301 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !273, file: !274, line: 78, baseType: !303, size: 8, offset: 1040)
!303 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !273, file: !274, line: 79, baseType: !305, size: 8, offset: 1048)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 1)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !273, file: !274, line: 81, baseType: !309, size: 64, offset: 1088)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !274, line: 43, baseType: null)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !273, file: !274, line: 89, baseType: !312, size: 64, offset: 1152)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !299, line: 153, baseType: !32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !273, file: !274, line: 91, baseType: !314, size: 64, offset: 1216)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !274, line: 37, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !273, file: !274, line: 92, baseType: !317, size: 64, offset: 1280)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !274, line: 38, flags: DIFlagFwdDecl)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !273, file: !274, line: 93, baseType: !294, size: 64, offset: 1344)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !273, file: !274, line: 94, baseType: !5, size: 64, offset: 1408)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !273, file: !274, line: 95, baseType: !322, size: 64, offset: 1472)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !323, line: 46, baseType: !324)
!323 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!324 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !273, file: !274, line: 96, baseType: !277, size: 32, offset: 1536)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !273, file: !274, line: 98, baseType: !327, size: 160, offset: 1568)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 20)
!330 = !DILocalVariable(name: "ps", scope: !257, file: !3, line: 289, type: !80)
!331 = !DILocalVariable(name: "model", scope: !257, file: !3, line: 290, type: !204)
!332 = !DILocalVariable(name: "modelInv", scope: !257, file: !3, line: 291, type: !204)
!333 = !DILocalVariable(name: "modelInvT", scope: !257, file: !3, line: 292, type: !204)
!334 = !DILocalVariable(name: "prev", scope: !257, file: !3, line: 293, type: !101)
!335 = !DILocalVariable(name: "curr", scope: !257, file: !3, line: 294, type: !101)
!336 = !DILocalVariable(name: "pe", scope: !257, file: !3, line: 295, type: !50)
!337 = !DILocation(line: 0, scope: !257)
!338 = !DILocation(line: 282, column: 2, scope: !257)
!339 = !DILocation(line: 285, column: 2, scope: !257)
!340 = !DILocation(line: 286, column: 2, scope: !257)
!341 = !DILocation(line: 286, column: 8, scope: !257)
!342 = !DILocation(line: 287, column: 2, scope: !257)
!343 = !DILocation(line: 287, column: 8, scope: !257)
!344 = !DILocation(line: 290, column: 2, scope: !257)
!345 = !DILocation(line: 290, column: 10, scope: !257)
!346 = !DILocation(line: 291, column: 2, scope: !257)
!347 = !DILocation(line: 291, column: 10, scope: !257)
!348 = !DILocation(line: 292, column: 2, scope: !257)
!349 = !DILocation(line: 292, column: 10, scope: !257)
!350 = !DILocation(line: 300, column: 7, scope: !257)
!351 = !DILocation(line: 301, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !257, file: !3, line: 301, column: 6)
!353 = !DILocation(line: 301, column: 6, scope: !257)
!354 = !DILocation(line: 303, column: 3, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !3, line: 302, column: 3)
!356 = !DILocation(line: 304, column: 3, scope: !355)
!357 = !DILocation(line: 312, column: 2, scope: !257)
!358 = !DILocation(line: 312, column: 6, scope: !257)
!359 = !DILocation(line: 312, column: 16, scope: !257)
!360 = !DILocation(line: 313, column: 16, scope: !257)
!361 = !DILocation(line: 314, column: 16, scope: !257)
!362 = !DILocation(line: 319, column: 2, scope: !257)
!363 = !DILocation(line: 320, column: 2, scope: !257)
!364 = !DILocation(line: 321, column: 2, scope: !257)
!365 = !DILocation(line: 326, column: 17, scope: !366)
!366 = distinct !DILexicalBlock(scope: !257, file: !3, line: 326, column: 6)
!367 = !DILocation(line: 326, column: 6, scope: !366)
!368 = !DILocation(line: 326, column: 27, scope: !366)
!369 = !DILocation(line: 326, column: 6, scope: !257)
!370 = !DILocation(line: 327, column: 3, scope: !366)
!371 = !DILocation(line: 343, column: 2, scope: !257)
!372 = !DILocation(line: 0, scope: !373)
!373 = distinct !DILexicalBlock(scope: !366, file: !3, line: 329, column: 3)
!374 = !DILocation(line: 332, column: 18, scope: !373)
!375 = !DILocation(line: 332, column: 3, scope: !373)
!376 = !DILocation(line: 333, column: 19, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !3, line: 333, column: 8)
!378 = !DILocation(line: 333, column: 29, scope: !377)
!379 = !DILocation(line: 333, column: 8, scope: !373)
!380 = distinct !{!380, !375, !381, !116, !117}
!381 = !DILocation(line: 337, column: 5, scope: !373)
!382 = !DILocation(line: 335, column: 13, scope: !383)
!383 = distinct !DILexicalBlock(scope: !377, file: !3, line: 334, column: 5)
!384 = !DILocation(line: 335, column: 5, scope: !383)
!385 = !DILocation(line: 336, column: 5, scope: !383)
!386 = !DILocation(line: 343, column: 17, scope: !257)
!387 = !DILocation(line: 345, column: 20, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 345, column: 7)
!389 = distinct !DILexicalBlock(scope: !257, file: !3, line: 344, column: 3)
!390 = !DILocation(line: 345, column: 45, scope: !388)
!391 = !DILocation(line: 345, column: 7, scope: !389)
!392 = !DILocation(line: 347, column: 4, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !3, line: 346, column: 4)
!394 = !DILocation(line: 348, column: 4, scope: !393)
!395 = !DILocation(line: 354, column: 15, scope: !389)
!396 = !DILocation(line: 356, column: 14, scope: !389)
!397 = !DILocation(line: 357, column: 17, scope: !389)
!398 = !DILocation(line: 357, column: 15, scope: !389)
!399 = !DILocation(line: 358, column: 9, scope: !389)
!400 = !DILocation(line: 358, column: 15, scope: !389)
!401 = !DILocation(line: 360, column: 16, scope: !389)
!402 = !DILocation(line: 360, column: 3, scope: !389)
!403 = !DILocation(line: 362, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !389, file: !3, line: 362, column: 7)
!405 = !DILocation(line: 362, column: 11, scope: !404)
!406 = !DILocation(line: 362, column: 21, scope: !404)
!407 = !DILocation(line: 362, column: 7, scope: !389)
!408 = !DILocation(line: 0, scope: !404)
!409 = !DILocation(line: 370, column: 8, scope: !389)
!410 = !DILocation(line: 371, column: 9, scope: !389)
!411 = !DILocation(line: 371, column: 14, scope: !389)
!412 = !DILocation(line: 374, column: 28, scope: !389)
!413 = !DILocation(line: 374, column: 46, scope: !389)
!414 = !DILocation(line: 375, column: 14, scope: !389)
!415 = !DILocation(line: 375, column: 28, scope: !389)
!416 = !DILocation(line: 375, column: 46, scope: !389)
!417 = !DILocation(line: 373, column: 10, scope: !389)
!418 = !DILocation(line: 377, column: 12, scope: !419)
!419 = distinct !DILexicalBlock(scope: !389, file: !3, line: 377, column: 7)
!420 = !DILocation(line: 377, column: 7, scope: !389)
!421 = !DILocation(line: 379, column: 4, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !3, line: 378, column: 4)
!423 = !DILocation(line: 380, column: 4, scope: !422)
!424 = !DILocation(line: 384, column: 14, scope: !389)
!425 = !DILocation(line: 384, column: 28, scope: !389)
!426 = !DILocation(line: 384, column: 42, scope: !389)
!427 = !DILocation(line: 385, column: 14, scope: !389)
!428 = !DILocation(line: 385, column: 32, scope: !389)
!429 = !DILocation(line: 383, column: 10, scope: !389)
!430 = !DILocation(line: 387, column: 12, scope: !431)
!431 = distinct !DILexicalBlock(scope: !389, file: !3, line: 387, column: 7)
!432 = !DILocation(line: 387, column: 7, scope: !389)
!433 = !DILocation(line: 389, column: 4, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !3, line: 388, column: 4)
!435 = !DILocation(line: 390, column: 4, scope: !434)
!436 = !DILocation(line: 396, column: 10, scope: !389)
!437 = !DILocation(line: 398, column: 12, scope: !438)
!438 = distinct !DILexicalBlock(scope: !389, file: !3, line: 398, column: 7)
!439 = !DILocation(line: 398, column: 7, scope: !389)
!440 = !DILocation(line: 400, column: 4, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !3, line: 399, column: 4)
!442 = !DILocation(line: 401, column: 4, scope: !441)
!443 = !DILocation(line: 407, column: 48, scope: !389)
!444 = !DILocation(line: 407, column: 10, scope: !389)
!445 = !DILocation(line: 409, column: 12, scope: !446)
!446 = distinct !DILexicalBlock(scope: !389, file: !3, line: 409, column: 7)
!447 = !DILocation(line: 409, column: 7, scope: !389)
!448 = !DILocation(line: 411, column: 4, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !3, line: 410, column: 4)
!450 = !DILocation(line: 412, column: 4, scope: !449)
!451 = !DILocation(line: 415, column: 11, scope: !389)
!452 = !DILocation(line: 415, column: 3, scope: !389)
!453 = !DILocation(line: 423, column: 5, scope: !454)
!454 = distinct !DILexicalBlock(scope: !389, file: !3, line: 416, column: 4)
!455 = !DILocation(line: 427, column: 5, scope: !454)
!456 = !DILocation(line: 431, column: 5, scope: !454)
!457 = !DILocation(line: 432, column: 5, scope: !454)
!458 = !DILocation(line: 435, column: 5, scope: !454)
!459 = !DILocation(line: 436, column: 5, scope: !454)
!460 = !DILocation(line: 0, scope: !454)
!461 = !DILocation(line: 442, column: 43, scope: !389)
!462 = !DILocation(line: 442, column: 36, scope: !389)
!463 = !DILocation(line: 442, column: 8, scope: !389)
!464 = !DILocation(line: 443, column: 9, scope: !389)
!465 = !DILocation(line: 443, column: 15, scope: !389)
!466 = !DILocation(line: 445, column: 26, scope: !389)
!467 = !DILocation(line: 445, column: 17, scope: !389)
!468 = !DILocation(line: 447, column: 17, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 447, column: 3)
!470 = distinct !DILexicalBlock(scope: !389, file: !3, line: 447, column: 3)
!471 = !DILocation(line: 447, column: 3, scope: !470)
!472 = !DILocation(line: 448, column: 14, scope: !469)
!473 = !DILocation(line: 447, column: 40, scope: !469)
!474 = !DILocation(line: 447, column: 46, scope: !469)
!475 = !DILocation(line: 447, column: 26, scope: !469)
!476 = distinct !{!476, !471, !477, !116, !117}
!477 = !DILocation(line: 448, column: 16, scope: !470)
!478 = !DILocation(line: 453, column: 11, scope: !389)
!479 = !DILocation(line: 453, column: 18, scope: !389)
!480 = !DILocation(line: 453, column: 3, scope: !389)
!481 = !DILocation(line: 454, column: 11, scope: !389)
!482 = !DILocation(line: 454, column: 18, scope: !389)
!483 = !DILocation(line: 454, column: 3, scope: !389)
!484 = !DILocation(line: 455, column: 11, scope: !389)
!485 = !DILocation(line: 455, column: 18, scope: !389)
!486 = !DILocation(line: 455, column: 3, scope: !389)
!487 = distinct !{!487, !371, !488, !116, !117}
!488 = !DILocation(line: 458, column: 3, scope: !257)
!489 = !DILocation(line: 460, column: 15, scope: !257)
!490 = !DILocation(line: 460, column: 19, scope: !257)
!491 = !DILocation(line: 460, column: 2, scope: !257)
!492 = !DILocation(line: 461, column: 2, scope: !257)
!493 = !DILocation(line: 462, column: 2, scope: !257)
!494 = !DISubprogram(name: "MatrixCopy", scope: !10, file: !10, line: 896, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !184, !184}
!497 = !DISubprogram(name: "MatrixInverse", scope: !10, file: !10, line: 899, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
!498 = !DISubprogram(name: "MatrixTranspose", scope: !10, file: !10, line: 897, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
!499 = !DISubprogram(name: "getc", scope: !500, file: !500, line: 486, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
!500 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!501 = !DISubroutineType(types: !502)
!502 = !{!277, !270}
!503 = !DISubprogram(name: "ungetc", scope: !500, file: !500, line: 639, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
!504 = !DISubroutineType(types: !505)
!505 = !{!277, !277, !270}
!506 = !DISubprogram(name: "GlobalMalloc", scope: !10, file: !10, line: 909, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
!507 = !DISubroutineType(types: !508)
!508 = !{!5, !509, !17}
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !10, line: 298, baseType: !324)
!510 = !DISubprogram(name: "fclose", scope: !500, file: !500, line: 213, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
