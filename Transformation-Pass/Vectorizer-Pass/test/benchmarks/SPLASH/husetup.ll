; ModuleID = 'husetup.c'
source_filename = "husetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmem = type { i64, i64, i64, ptr, ptr, ptr, [4096 x [256 x ptr]], %struct.anon, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, [4096 x %union.pthread_mutex_t], i64, [4096 x i64] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.irecord = type { double, ptr, double, double, double }
%struct.ray = type { i64, i64, i64, [3 x double], [3 x double], i64, ptr, i64, [3 x i64], [5 x %struct.rayinfo], float, float }
%struct.rayinfo = type { ptr, [3 x double], i64, double, i64, double, [3 x double], [3 x i64], i64, [3 x i64], ptr }
%struct.voxel = type { i64, i64, ptr, ptr, i8, [7 x i8] }
%struct.element = type { i64, ptr, ptr, %struct.bbox }
%struct.bbox = type { [3 x double], [3 x double] }
%struct.object = type { i64, [32 x i8], %struct.bbox, ptr, i64, ptr, ptr, ptr }
%struct.pprocs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.surf = type { [3 x double], [3 x double], double, double, double, double, double }

@hu_max_prims_cell = external local_unnamed_addr global i64, align 8
@hu_gridsize = external local_unnamed_addr global i64, align 8
@hu_numbuckets = external local_unnamed_addr global i64, align 8
@hu_max_subdiv_level = external local_unnamed_addr global i64, align 8
@hu_lazy = external local_unnamed_addr global i64, align 8
@gm = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [26 x i8] c"Uniform Hierarchy built.\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @Huniform_defaults() local_unnamed_addr #0 !dbg !86 {
entry:
  store i64 2, ptr @hu_max_prims_cell, align 8, !dbg !90
  store i64 5, ptr @hu_gridsize, align 8, !dbg !91
  store i64 23, ptr @hu_numbuckets, align 8, !dbg !92
  store i64 1, ptr @hu_max_subdiv_level, align 8, !dbg !93
  store i64 0, ptr @hu_lazy, align 8, !dbg !94
  ret void, !dbg !95
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildHierarchy_Uniform() local_unnamed_addr #1 !dbg !96 {
entry:
  %num_pe = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %num_pe) #8, !dbg !155
  tail call void @init_masks() #8, !dbg !156
  call void @llvm.dbg.value(metadata ptr %num_pe, metadata !98, metadata !DIExpression(DW_OP_deref)), !dbg !157
  %call = call ptr @MakeElementArray(ptr noundef nonnull %num_pe) #8, !dbg !158
  call void @llvm.dbg.value(metadata ptr %call, metadata !154, metadata !DIExpression()), !dbg !157
  %0 = load i64, ptr %num_pe, align 8, !dbg !159
  call void @llvm.dbg.value(metadata i64 %0, metadata !98, metadata !DIExpression()), !dbg !157
  %call1 = call ptr @init_world_voxel(ptr noundef %call, i64 noundef %0) #8, !dbg !160
  call void @llvm.dbg.value(metadata ptr %call1, metadata !153, metadata !DIExpression()), !dbg !157
  %1 = load i64, ptr %num_pe, align 8, !dbg !161
  call void @llvm.dbg.value(metadata i64 %1, metadata !98, metadata !DIExpression()), !dbg !157
  %call2 = call ptr @init_world_grid(ptr noundef %call1, ptr noundef %call, i64 noundef %1) #8, !dbg !162
  %2 = load ptr, ptr @gm, align 8, !dbg !163
  %world_level_grid = getelementptr inbounds %struct.gmem, ptr %2, i64 0, i32 4, !dbg !164
  store ptr %call2, ptr %world_level_grid, align 8, !dbg !165
  call void @llvm.dbg.value(metadata ptr %call2, metadata !99, metadata !DIExpression()), !dbg !157
  %3 = load i64, ptr %num_pe, align 8, !dbg !166
  call void @llvm.dbg.value(metadata i64 %3, metadata !98, metadata !DIExpression()), !dbg !157
  %call4 = call ptr @create_grid(ptr noundef %call1, ptr noundef %call2, i64 noundef %3) #8, !dbg !167
  call void @llvm.dbg.value(metadata ptr %call4, metadata !152, metadata !DIExpression()), !dbg !157
  %4 = load ptr, ptr @stderr, align 8, !dbg !168
  %5 = call i64 @fwrite(ptr nonnull @.str, i64 25, i64 1, ptr %4) #9, !dbg !169
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %num_pe) #8, !dbg !170
  ret void, !dbg !170
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

declare !dbg !171 void @init_masks() local_unnamed_addr #4

declare !dbg !172 ptr @MakeElementArray(ptr noundef) local_unnamed_addr #4

declare !dbg !176 ptr @init_world_voxel(ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !179 ptr @init_world_grid(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !182 ptr @create_grid(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @IntersectHuniformPrimlist(ptr nocapture noundef writeonly %intersectPrim, ptr nocapture noundef %hit, ptr nocapture noundef readonly %v, ptr noundef %r, i64 %pid) local_unnamed_addr #1 !dbg !185 {
entry:
  %newhit = alloca [2 x %struct.irecord], align 16
  call void @llvm.dbg.value(metadata ptr %intersectPrim, metadata !236, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata ptr %hit, metadata !237, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata ptr %v, metadata !238, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata ptr %r, metadata !239, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i64 undef, metadata !240, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newhit) #8, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %newhit, metadata !246, metadata !DIExpression()), !dbg !253
  %ri = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 6, !dbg !254
  %0 = load ptr, ptr %ri, align 8, !dbg !254
  %t_out1 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 5, !dbg !255
  %1 = load double, ptr %t_out1, align 8, !dbg !255
  call void @llvm.dbg.value(metadata double %1, metadata !250, metadata !DIExpression()), !dbg !251
  store double 1.000000e+32, ptr %hit, align 8, !dbg !256
  %cell = getelementptr inbounds %struct.voxel, ptr %v, i64 0, i32 3, !dbg !257
  %2 = load ptr, ptr %cell, align 8, !dbg !257
  call void @llvm.dbg.value(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !251
  %numelements = getelementptr inbounds %struct.voxel, ptr %v, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !251
  %3 = load i64, ptr %numelements, align 8, !dbg !258
  %cmp29 = icmp sgt i64 %3, 0, !dbg !261
  br i1 %cmp29, label %for.body, label %for.end, !dbg !262

for.body:                                         ; preds = %entry, %for.inc
  %i.030 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.030, metadata !249, metadata !DIExpression()), !dbg !251
  %arrayidx2 = getelementptr inbounds ptr, ptr %2, i64 %i.030, !dbg !263
  %4 = load ptr, ptr %arrayidx2, align 8, !dbg !263
  call void @llvm.dbg.value(metadata ptr %4, metadata !245, metadata !DIExpression()), !dbg !251
  %parent = getelementptr inbounds %struct.element, ptr %4, i64 0, i32 1, !dbg !265
  %5 = load ptr, ptr %parent, align 8, !dbg !265
  call void @llvm.dbg.value(metadata ptr %5, metadata !242, metadata !DIExpression()), !dbg !251
  %procs = getelementptr inbounds %struct.object, ptr %5, i64 0, i32 5, !dbg !266
  %6 = load ptr, ptr %procs, align 8, !dbg !266
  %pe_intersect = getelementptr inbounds %struct.pprocs, ptr %6, i64 0, i32 6, !dbg !267
  %7 = load ptr, ptr %pe_intersect, align 8, !dbg !267
  %call = call i64 (ptr, ptr, ptr, ...) %7(ptr noundef %r, ptr noundef %4, ptr noundef nonnull %newhit) #8, !dbg !268
  call void @llvm.dbg.value(metadata i64 %call, metadata !248, metadata !DIExpression()), !dbg !251
  %tobool.not = icmp eq i64 %call, 0, !dbg !269
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !271

if.then:                                          ; preds = %for.body
  %8 = load double, ptr %newhit, align 16, !dbg !272
  %9 = load double, ptr %hit, align 8, !dbg !274
  %cmp7 = fcmp olt double %8, %9, !dbg !275
  %cmp10 = fcmp olt double %8, %1
  %or.cond = select i1 %cmp7, i1 %cmp10, i1 false, !dbg !276
  br i1 %or.cond, label %if.then11, label %for.inc, !dbg !276

if.then11:                                        ; preds = %if.then
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %hit, ptr noundef nonnull align 16 dereferenceable(40) %newhit, i64 40, i1 false), !dbg !277
  br label %for.inc, !dbg !278

for.inc:                                          ; preds = %for.body, %if.then11, %if.then
  %inc = add nuw nsw i64 %i.030, 1, !dbg !279
  call void @llvm.dbg.value(metadata i64 %inc, metadata !249, metadata !DIExpression()), !dbg !251
  %10 = load i64, ptr %numelements, align 8, !dbg !258
  %cmp = icmp slt i64 %inc, %10, !dbg !261
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !262, !llvm.loop !280

for.end.loopexit:                                 ; preds = %for.inc
  %.pre = load double, ptr %hit, align 8, !dbg !284
  %phi.cmp = fcmp olt double %.pre, 1.000000e+32, !dbg !284
  %phi.cast = zext i1 %phi.cmp to i64, !dbg !284
  br label %for.end, !dbg !284

for.end:                                          ; preds = %for.end.loopexit, %entry
  %11 = phi i64 [ %phi.cast, %for.end.loopexit ], [ 0, %entry ]
  store i64 %11, ptr %intersectPrim, align 8, !dbg !286
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newhit) #8, !dbg !287
  ret void, !dbg !287
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local double @HuniformShadowIntersect(ptr noundef %r, double noundef %lightlength, ptr noundef readnone %pe, i64 noundef %pid) local_unnamed_addr #1 !dbg !288 {
entry:
  %status = alloca i64, align 8
  %newhit = alloca [2 x %struct.irecord], align 16
  call void @llvm.dbg.value(metadata ptr %r, metadata !292, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata double %lightlength, metadata !293, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata ptr %pe, metadata !294, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i64 %pid, metadata !295, metadata !DIExpression()), !dbg !305
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %status) #8, !dbg !306
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newhit) #8, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %newhit, metadata !303, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !299, metadata !DIExpression()), !dbg !305
  %ri = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 6, !dbg !309
  store ptr null, ptr %ri, align 8, !dbg !310
  %0 = load ptr, ptr @gm, align 8, !dbg !311
  %world_level_grid = getelementptr inbounds %struct.gmem, ptr %0, i64 0, i32 4, !dbg !312
  %1 = load ptr, ptr %world_level_grid, align 8, !dbg !312
  %call = tail call ptr @init_ray(ptr noundef %r, ptr noundef %1) #8, !dbg !313
  call void @llvm.dbg.value(metadata ptr %call, metadata !304, metadata !DIExpression()), !dbg !305
  %cmp = icmp eq ptr %call, null, !dbg !314
  br i1 %cmp, label %if.then, label %while.body.lr.ph, !dbg !316

if.then:                                          ; preds = %entry
  tail call void @reset_rayinfo(ptr noundef nonnull %r) #8, !dbg !317
  br label %cleanup, !dbg !319

while.body.lr.ph:                                 ; preds = %entry
  store double 1.000000e+32, ptr %newhit, align 16, !dbg !320
  call void @llvm.dbg.value(metadata i64 2, metadata !296, metadata !DIExpression()), !dbg !305
  store i64 2, ptr %status, align 8, !dbg !321
  call void @llvm.dbg.value(metadata ptr %call, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !299, metadata !DIExpression()), !dbg !305
  %pelem = getelementptr inbounds %struct.irecord, ptr %newhit, i64 0, i32 1
  br label %while.body, !dbg !322

while.body:                                       ; preds = %while.body.lr.ph, %if.end23
  %v.057 = phi ptr [ %call, %while.body.lr.ph ], [ %v.1, %if.end23 ]
  %trans.056 = phi double [ 1.000000e+00, %while.body.lr.ph ], [ %trans.1.lcssa, %if.end23 ]
  call void @llvm.dbg.value(metadata ptr %v.057, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata double %trans.056, metadata !299, metadata !DIExpression()), !dbg !305
  %cell = getelementptr inbounds %struct.voxel, ptr %v.057, i64 0, i32 3, !dbg !323
  %2 = load ptr, ptr %cell, align 8, !dbg !323
  call void @llvm.dbg.value(metadata ptr %2, metadata !301, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i64 0, metadata !298, metadata !DIExpression()), !dbg !305
  %numelements = getelementptr inbounds %struct.voxel, ptr %v.057, i64 0, i32 1
  %3 = load i64, ptr %numelements, align 8, !dbg !325
  %cmp349 = icmp sgt i64 %3, 0, !dbg !328
  %cmp550 = fcmp ogt double %trans.056, 0.000000e+00
  %or.cond3251 = select i1 %cmp349, i1 %cmp550, i1 false, !dbg !329
  br i1 %or.cond3251, label %for.body, label %for.end, !dbg !329

for.body:                                         ; preds = %while.body, %for.inc
  %i.053 = phi i64 [ %inc, %for.inc ], [ 0, %while.body ]
  %trans.152 = phi double [ %trans.2, %for.inc ], [ %trans.056, %while.body ]
  call void @llvm.dbg.value(metadata i64 %i.053, metadata !298, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata double %trans.152, metadata !299, metadata !DIExpression()), !dbg !305
  %arrayidx7 = getelementptr inbounds ptr, ptr %2, i64 %i.053, !dbg !330
  %4 = load ptr, ptr %arrayidx7, align 8, !dbg !330
  call void @llvm.dbg.value(metadata ptr %4, metadata !302, metadata !DIExpression()), !dbg !305
  %parent = getelementptr inbounds %struct.element, ptr %4, i64 0, i32 1, !dbg !332
  %5 = load ptr, ptr %parent, align 8, !dbg !332
  call void @llvm.dbg.value(metadata ptr %5, metadata !300, metadata !DIExpression()), !dbg !305
  %procs = getelementptr inbounds %struct.object, ptr %5, i64 0, i32 5, !dbg !333
  %6 = load ptr, ptr %procs, align 8, !dbg !333
  %pe_intersect = getelementptr inbounds %struct.pprocs, ptr %6, i64 0, i32 6, !dbg !334
  %7 = load ptr, ptr %pe_intersect, align 8, !dbg !334
  %call8 = call i64 (ptr, ptr, ptr, ...) %7(ptr noundef %r, ptr noundef %4, ptr noundef nonnull %newhit) #8, !dbg !335
  call void @llvm.dbg.value(metadata i64 %call8, metadata !297, metadata !DIExpression()), !dbg !305
  %tobool.not = icmp eq i64 %call8, 0, !dbg !336
  br i1 %tobool.not, label %for.inc, label %land.lhs.true, !dbg !338

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %pelem, align 8, !dbg !339
  %cmp10.not = icmp ne ptr %8, %pe, !dbg !340
  %9 = load double, ptr %newhit, align 16
  %cmp14 = fcmp olt double %9, %lightlength
  %or.cond48 = select i1 %cmp10.not, i1 %cmp14, i1 false, !dbg !341
  br i1 %or.cond48, label %if.then15, label %for.inc, !dbg !341

if.then15:                                        ; preds = %land.lhs.true
  %parent18 = getelementptr inbounds %struct.element, ptr %8, i64 0, i32 1, !dbg !342
  %10 = load ptr, ptr %parent18, align 8, !dbg !342
  %surf = getelementptr inbounds %struct.object, ptr %10, i64 0, i32 6, !dbg !343
  %11 = load ptr, ptr %surf, align 8, !dbg !343
  %ktran = getelementptr inbounds %struct.surf, ptr %11, i64 0, i32 4, !dbg !344
  %12 = load double, ptr %ktran, align 8, !dbg !344
  %mul = fmul double %trans.152, %12, !dbg !345
  call void @llvm.dbg.value(metadata double %mul, metadata !299, metadata !DIExpression()), !dbg !305
  br label %for.inc, !dbg !346

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then15
  %trans.2 = phi double [ %mul, %if.then15 ], [ %trans.152, %land.lhs.true ], [ %trans.152, %for.body ], !dbg !305
  call void @llvm.dbg.value(metadata double %trans.2, metadata !299, metadata !DIExpression()), !dbg !305
  %inc = add nuw nsw i64 %i.053, 1, !dbg !347
  call void @llvm.dbg.value(metadata i64 %inc, metadata !298, metadata !DIExpression()), !dbg !305
  %13 = load i64, ptr %numelements, align 8, !dbg !325
  %cmp3 = icmp slt i64 %inc, %13, !dbg !328
  %cmp5 = fcmp ogt double %trans.2, 0.000000e+00
  %or.cond32 = select i1 %cmp3, i1 %cmp5, i1 false, !dbg !329
  br i1 %or.cond32, label %for.body, label %for.end, !dbg !329, !llvm.loop !348

for.end:                                          ; preds = %for.inc, %while.body
  %trans.1.lcssa = phi double [ %trans.056, %while.body ], [ %trans.2, %for.inc ], !dbg !305
  %cmp5.lcssa = phi i1 [ %cmp550, %while.body ], [ %cmp5, %for.inc ]
  br i1 %cmp5.lcssa, label %if.then21, label %if.end23, !dbg !351

if.then21:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr %status, metadata !296, metadata !DIExpression(DW_OP_deref)), !dbg !305
  %call22 = call ptr @next_nonempty_leaf(ptr noundef %r, i64 noundef 1, ptr noundef nonnull %status) #8, !dbg !352
  call void @llvm.dbg.value(metadata ptr %call22, metadata !304, metadata !DIExpression()), !dbg !305
  br label %if.end23, !dbg !354

if.end23:                                         ; preds = %if.then21, %for.end
  %v.1 = phi ptr [ %call22, %if.then21 ], [ %v.057, %for.end ], !dbg !305
  call void @llvm.dbg.value(metadata ptr %v.1, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata double %trans.1.lcssa, metadata !299, metadata !DIExpression()), !dbg !305
  %cmp1 = fcmp ogt double %trans.1.lcssa, 0.000000e+00, !dbg !355
  %14 = load i64, ptr %status, align 8
  call void @llvm.dbg.value(metadata i64 %14, metadata !296, metadata !DIExpression()), !dbg !305
  %cmp2 = icmp ne i64 %14, 0
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false, !dbg !322
  br i1 %or.cond, label %while.body, label %while.end, !dbg !322, !llvm.loop !356

while.end:                                        ; preds = %if.end23
  call void @reset_rayinfo(ptr noundef %r) #8, !dbg !359
  br label %cleanup, !dbg !360

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi double [ 1.000000e+00, %if.then ], [ %trans.1.lcssa, %while.end ], !dbg !305
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newhit) #8, !dbg !361
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %status) #8, !dbg !361
  ret double %retval.0, !dbg !361
}

declare !dbg !362 ptr @init_ray(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !365 void @reset_rayinfo(ptr noundef) local_unnamed_addr #4

declare !dbg !368 ptr @next_nonempty_leaf(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TraverseHierarchyUniform(ptr noundef %r, ptr nocapture noundef %hit, i64 noundef %pid) local_unnamed_addr #1 !dbg !371 {
entry:
  %status = alloca i64, align 8
  %intersectPrim = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %r, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %hit, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 %pid, metadata !378, metadata !DIExpression()), !dbg !382
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %status) #8, !dbg !383
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %intersectPrim) #8, !dbg !384
  %ri = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 6, !dbg !385
  store ptr null, ptr %ri, align 8, !dbg !386
  %0 = load ptr, ptr @gm, align 8, !dbg !387
  %world_level_grid = getelementptr inbounds %struct.gmem, ptr %0, i64 0, i32 4, !dbg !388
  %1 = load ptr, ptr %world_level_grid, align 8, !dbg !388
  %call = tail call ptr @init_ray(ptr noundef %r, ptr noundef %1) #8, !dbg !389
  call void @llvm.dbg.value(metadata ptr %call, metadata !381, metadata !DIExpression()), !dbg !382
  %cmp = icmp eq ptr %call, null, !dbg !390
  br i1 %cmp, label %if.then, label %while.body.preheader, !dbg !392

if.then:                                          ; preds = %entry
  tail call void @reset_rayinfo(ptr noundef nonnull %r) #8, !dbg !393
  br label %cleanup, !dbg !395

while.body.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !380, metadata !DIExpression()), !dbg !382
  store i64 0, ptr %intersectPrim, align 8, !dbg !396
  store double 1.000000e+32, ptr %hit, align 8, !dbg !397
  call void @llvm.dbg.value(metadata i64 2, metadata !379, metadata !DIExpression()), !dbg !382
  store i64 2, ptr %status, align 8, !dbg !398
  call void @llvm.dbg.value(metadata ptr %call, metadata !381, metadata !DIExpression()), !dbg !382
  br label %while.body, !dbg !399

while.body:                                       ; preds = %while.body.preheader, %if.end5
  %v.018 = phi ptr [ %call4, %if.end5 ], [ %call, %while.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %v.018, metadata !381, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %intersectPrim, metadata !380, metadata !DIExpression(DW_OP_deref)), !dbg !382
  call void @IntersectHuniformPrimlist(ptr noundef nonnull %intersectPrim, ptr noundef nonnull %hit, ptr noundef %v.018, ptr noundef %r, i64 undef), !dbg !400
  %2 = load i64, ptr %intersectPrim, align 8, !dbg !402
  call void @llvm.dbg.value(metadata i64 %2, metadata !380, metadata !DIExpression()), !dbg !382
  %tobool2.not = icmp eq i64 %2, 0, !dbg !402
  br i1 %tobool2.not, label %if.end5, label %while.end, !dbg !404

if.end5:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata ptr %status, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !382
  %call4 = call ptr @next_nonempty_leaf(ptr noundef %r, i64 noundef 1, ptr noundef nonnull %status) #8, !dbg !405
  call void @llvm.dbg.value(metadata ptr %call4, metadata !381, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 %2, metadata !380, metadata !DIExpression()), !dbg !382
  %3 = load i64, ptr %status, align 8
  call void @llvm.dbg.value(metadata i64 %3, metadata !379, metadata !DIExpression()), !dbg !382
  %cmp1.not = icmp eq i64 %3, 0
  br i1 %cmp1.not, label %while.end, label %while.body, !dbg !406, !llvm.loop !407

while.end:                                        ; preds = %while.body, %if.end5
  call void @reset_rayinfo(ptr noundef %r) #8, !dbg !409
  call void @llvm.dbg.value(metadata i64 %2, metadata !380, metadata !DIExpression()), !dbg !382
  br label %cleanup, !dbg !410

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ %2, %while.end ], !dbg !382
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %intersectPrim) #8, !dbg !411
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %status) #8, !dbg !411
  ret i64 %retval.0, !dbg !411
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "husetup.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "60a02213b2e2b16886f08d2269b51a6c")
!2 = !{!3, !78}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELEMENT", file: !6, line: 481, baseType: !7)
!6 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "element", file: !6, line: 474, size: 576, elements: !8)
!8 = !{!9, !12, !76, !77}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !7, file: !6, line: 476, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !6, line: 297, baseType: !11)
!11 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !7, file: !6, line: 477, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !6, line: 488, size: 1024, elements: !15)
!15 = !{!16, !17, !23, !34, !35, !36, !61, !75}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !14, file: !6, line: 490, baseType: !10, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !6, line: 491, baseType: !18, size: 256, offset: 64)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !21)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !6, line: 287, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!22}
!22 = !DISubrange(count: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !14, file: !6, line: 492, baseType: !24, size: 384, offset: 320)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !6, line: 418, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !6, line: 413, size: 384, elements: !26)
!26 = !{!27, !33}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !25, file: !6, line: 415, baseType: !28, size: 192)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 192, elements: !31)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !6, line: 310, baseType: !30)
!30 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!31 = !{!32}
!32 = !DISubrange(count: 3)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !25, file: !6, line: 416, baseType: !28, size: 192, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !14, file: !6, line: 493, baseType: !4, size: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !14, file: !6, line: 494, baseType: !10, size: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !14, file: !6, line: 495, baseType: !37, size: 64, offset: 832)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROCS", file: !6, line: 340, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pprocs", file: !6, line: 327, size: 640, elements: !40)
!40 = !{!41, !46, !50, !51, !52, !53, !57, !58, !59, !60}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !6, line: 329, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, null}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !39, file: !6, line: 330, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, null}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !39, file: !6, line: 331, baseType: !47, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "binread", scope: !39, file: !6, line: 332, baseType: !47, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "transform", scope: !39, file: !6, line: 333, baseType: !47, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "intersect", scope: !39, file: !6, line: 334, baseType: !54, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!10, null}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pe_intersect", scope: !39, file: !6, line: 335, baseType: !54, size: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !39, file: !6, line: 336, baseType: !47, size: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !39, file: !6, line: 337, baseType: !47, size: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !39, file: !6, line: 338, baseType: !47, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "surf", scope: !14, file: !6, line: 496, baseType: !62, size: 64, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "SURF", file: !6, line: 357, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "surf", file: !6, line: 347, size: 704, elements: !65)
!65 = !{!66, !69, !70, !71, !72, !73, !74}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "fcolor", scope: !64, file: !6, line: 349, baseType: !67, size: 192)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !6, line: 319, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !6, line: 314, baseType: !28)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "bcolor", scope: !64, file: !6, line: 350, baseType: !67, size: 192, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "kdiff", scope: !64, file: !6, line: 351, baseType: !29, size: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "kspec", scope: !64, file: !6, line: 352, baseType: !29, size: 64, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ktran", scope: !64, file: !6, line: 353, baseType: !29, size: 64, offset: 512)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "refrindex", scope: !64, file: !6, line: 354, baseType: !29, size: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "kspecn", scope: !64, file: !6, line: 355, baseType: !29, size: 64, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !14, file: !6, line: 497, baseType: !13, size: 64, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 478, baseType: !45, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !7, file: !6, line: 479, baseType: !24, size: 384, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !{i32 7, !"Dwarf Version", i32 5}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{i32 1, !"wchar_size", i32 4}
!82 = !{i32 7, !"PIC Level", i32 2}
!83 = !{i32 7, !"PIE Level", i32 2}
!84 = !{i32 7, !"uwtable", i32 2}
!85 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!86 = distinct !DISubprogram(name: "Huniform_defaults", scope: !1, file: !1, line: 48, type: !87, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !89)
!87 = !DISubroutineType(types: !88)
!88 = !{null}
!89 = !{}
!90 = !DILocation(line: 50, column: 22, scope: !86)
!91 = !DILocation(line: 51, column: 18, scope: !86)
!92 = !DILocation(line: 52, column: 20, scope: !86)
!93 = !DILocation(line: 53, column: 22, scope: !86)
!94 = !DILocation(line: 54, column: 15, scope: !86)
!95 = !DILocation(line: 55, column: 2, scope: !86)
!96 = distinct !DISubprogram(name: "BuildHierarchy_Uniform", scope: !1, file: !1, line: 71, type: !87, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !97)
!97 = !{!98, !99, !152, !153, !154}
!98 = !DILocalVariable(name: "num_pe", scope: !96, file: !1, line: 73, type: !10)
!99 = !DILocalVariable(name: "g", scope: !96, file: !1, line: 74, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRID", file: !6, line: 572, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "grid", file: !6, line: 539, size: 1152, elements: !103)
!103 = !{!104, !105, !121, !125, !126, !127, !129, !130, !131, !132, !133, !150}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !102, file: !6, line: 541, baseType: !10, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "hashtable", scope: !102, file: !6, line: 542, baseType: !106, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOXEL", file: !6, line: 405, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "voxel", file: !6, line: 394, size: 320, elements: !110)
!110 = !{!111, !112, !113, !115, !116, !117}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !109, file: !6, line: 396, baseType: !10, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !109, file: !6, line: 397, baseType: !10, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !6, line: 398, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cell", scope: !109, file: !6, line: 399, baseType: !45, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "celltype", scope: !109, file: !6, line: 400, baseType: !19, size: 8, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !109, file: !6, line: 403, baseType: !118, size: 56, offset: 264)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 56, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 7)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "emptycells", scope: !102, file: !6, line: 548, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !6, line: 298, baseType: !124)
!124 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pepa", scope: !102, file: !6, line: 555, baseType: !3, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "num_prims", scope: !102, file: !6, line: 556, baseType: !10, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc", scope: !102, file: !6, line: 558, baseType: !128, size: 192, offset: 320)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !31)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !102, file: !6, line: 562, baseType: !10, size: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !102, file: !6, line: 563, baseType: !28, size: 192, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cellsize", scope: !102, file: !6, line: 564, baseType: !28, size: 192, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "subdiv_level", scope: !102, file: !6, line: 566, baseType: !10, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "bintree", scope: !102, file: !6, line: 569, baseType: !134, size: 64, offset: 1024)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "BTNODE", file: !6, line: 535, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btnode", file: !6, line: 522, size: 960, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !136, file: !6, line: 524, baseType: !3, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !136, file: !6, line: 525, baseType: !28, size: 192, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nprims", scope: !136, file: !6, line: 527, baseType: !10, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !136, file: !6, line: 528, baseType: !128, size: 192, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !136, file: !6, line: 529, baseType: !128, size: 192, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !136, file: !6, line: 531, baseType: !10, size: 64, offset: 704)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "totalPrimsAllocated", scope: !136, file: !6, line: 532, baseType: !10, size: 64, offset: 768)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !136, file: !6, line: 533, baseType: !146, size: 128, offset: 832)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, elements: !148)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!148 = !{!149}
!149 = !DISubrange(count: 2)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !6, line: 570, baseType: !151, size: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!152 = !DILocalVariable(name: "ng", scope: !96, file: !1, line: 75, type: !100)
!153 = !DILocalVariable(name: "v", scope: !96, file: !1, line: 76, type: !107)
!154 = !DILocalVariable(name: "pepa", scope: !96, file: !1, line: 77, type: !3)
!155 = !DILocation(line: 73, column: 2, scope: !96)
!156 = !DILocation(line: 79, column: 2, scope: !96)
!157 = !DILocation(line: 0, scope: !96)
!158 = !DILocation(line: 82, column: 9, scope: !96)
!159 = !DILocation(line: 84, column: 28, scope: !96)
!160 = !DILocation(line: 84, column: 6, scope: !96)
!161 = !DILocation(line: 86, column: 50, scope: !96)
!162 = !DILocation(line: 86, column: 25, scope: !96)
!163 = !DILocation(line: 86, column: 2, scope: !96)
!164 = !DILocation(line: 86, column: 6, scope: !96)
!165 = !DILocation(line: 86, column: 23, scope: !96)
!166 = !DILocation(line: 89, column: 25, scope: !96)
!167 = !DILocation(line: 89, column: 7, scope: !96)
!168 = !DILocation(line: 91, column: 10, scope: !96)
!169 = !DILocation(line: 91, column: 2, scope: !96)
!170 = !DILocation(line: 92, column: 2, scope: !96)
!171 = !DISubprogram(name: "init_masks", scope: !6, file: !6, line: 813, type: !87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!172 = !DISubprogram(name: "MakeElementArray", scope: !6, file: !6, line: 848, type: !173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!173 = !DISubroutineType(types: !174)
!174 = !{!3, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!176 = !DISubprogram(name: "init_world_voxel", scope: !6, file: !6, line: 815, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!177 = !DISubroutineType(types: !178)
!178 = !{!107, !3, !10}
!179 = !DISubprogram(name: "init_world_grid", scope: !6, file: !6, line: 814, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!180 = !DISubroutineType(types: !181)
!181 = !{!100, !107, !3, !10}
!182 = !DISubprogram(name: "create_grid", scope: !6, file: !6, line: 825, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!183 = !DISubroutineType(types: !184)
!184 = !{!100, !107, !100, !10}
!185 = distinct !DISubprogram(name: "IntersectHuniformPrimlist", scope: !1, file: !1, line: 113, type: !186, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !235)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !175, !188, !107, !197, !10}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRECORD", file: !6, line: 514, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irecord", file: !6, line: 506, size: 320, elements: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !190, file: !6, line: 508, baseType: !29, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !190, file: !6, line: 509, baseType: !4, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "b1", scope: !190, file: !6, line: 510, baseType: !29, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "b2", scope: !190, file: !6, line: 511, baseType: !29, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "b3", scope: !190, file: !6, line: 512, baseType: !29, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAY", file: !6, line: 625, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ray", file: !6, line: 611, size: 7104, elements: !200)
!200 = !{!201, !203, !204, !205, !206, !207, !208, !225, !226, !227, !231, !234}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !199, file: !6, line: 613, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !6, line: 301, baseType: !11)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !199, file: !6, line: 614, baseType: !10, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !199, file: !6, line: 614, baseType: !10, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !199, file: !6, line: 615, baseType: !68, size: 192, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !199, file: !6, line: 616, baseType: !68, size: 192, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !199, file: !6, line: 617, baseType: !10, size: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !199, file: !6, line: 618, baseType: !209, size: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAYINFO", file: !6, line: 603, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rayinfo", file: !6, line: 582, size: 1216, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "grid", scope: !211, file: !6, line: 584, baseType: !100, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !211, file: !6, line: 585, baseType: !28, size: 192, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "entry_plane", scope: !211, file: !6, line: 587, baseType: !10, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "t_in", scope: !211, file: !6, line: 589, baseType: !29, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "exit_plane", scope: !211, file: !6, line: 591, baseType: !10, size: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "t_out", scope: !211, file: !6, line: 593, baseType: !29, size: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !211, file: !6, line: 595, baseType: !28, size: 192, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "index3D", scope: !211, file: !6, line: 596, baseType: !128, size: 192, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "index1D", scope: !211, file: !6, line: 597, baseType: !10, size: 64, offset: 896)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc1D", scope: !211, file: !6, line: 600, baseType: !128, size: 192, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !6, line: 601, baseType: !224, size: 64, offset: 1152)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ri_indx", scope: !199, file: !6, line: 619, baseType: !10, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc3D", scope: !199, file: !6, line: 620, baseType: !128, size: 192, offset: 768)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rinfo", scope: !199, file: !6, line: 621, baseType: !228, size: 6080, offset: 960)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 6080, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 5)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !199, file: !6, line: 622, baseType: !232, size: 32, offset: 7040)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "R32", file: !6, line: 307, baseType: !233)
!233 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !199, file: !6, line: 623, baseType: !232, size: 32, offset: 7072)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !245, !246, !248, !249, !250}
!236 = !DILocalVariable(name: "intersectPrim", arg: 1, scope: !185, file: !1, line: 113, type: !175)
!237 = !DILocalVariable(name: "hit", arg: 2, scope: !185, file: !1, line: 113, type: !188)
!238 = !DILocalVariable(name: "v", arg: 3, scope: !185, file: !1, line: 113, type: !107)
!239 = !DILocalVariable(name: "r", arg: 4, scope: !185, file: !1, line: 113, type: !197)
!240 = !DILocalVariable(name: "pid", arg: 5, scope: !185, file: !1, line: 113, type: !10)
!241 = !DILocalVariable(name: "pptr", scope: !185, file: !1, line: 115, type: !3)
!242 = !DILocalVariable(name: "peParent", scope: !185, file: !1, line: 116, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "OBJECT", file: !6, line: 499, baseType: !14)
!245 = !DILocalVariable(name: "pe", scope: !185, file: !1, line: 117, type: !4)
!246 = !DILocalVariable(name: "newhit", scope: !185, file: !1, line: 118, type: !247)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 640, elements: !148)
!248 = !DILocalVariable(name: "hitcode", scope: !185, file: !1, line: 119, type: !10)
!249 = !DILocalVariable(name: "i", scope: !185, file: !1, line: 119, type: !10)
!250 = !DILocalVariable(name: "t_out", scope: !185, file: !1, line: 120, type: !29)
!251 = !DILocation(line: 0, scope: !185)
!252 = !DILocation(line: 118, column: 2, scope: !185)
!253 = !DILocation(line: 118, column: 10, scope: !185)
!254 = !DILocation(line: 122, column: 13, scope: !185)
!255 = !DILocation(line: 122, column: 17, scope: !185)
!256 = !DILocation(line: 123, column: 11, scope: !185)
!257 = !DILocation(line: 124, column: 23, scope: !185)
!258 = !DILocation(line: 126, column: 21, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 126, column: 2)
!260 = distinct !DILexicalBlock(scope: !185, file: !1, line: 126, column: 2)
!261 = !DILocation(line: 126, column: 16, scope: !259)
!262 = !DILocation(line: 126, column: 2, scope: !260)
!263 = !DILocation(line: 128, column: 9, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !1, line: 127, column: 3)
!265 = !DILocation(line: 129, column: 18, scope: !264)
!266 = !DILocation(line: 130, column: 26, scope: !264)
!267 = !DILocation(line: 130, column: 33, scope: !264)
!268 = !DILocation(line: 130, column: 14, scope: !264)
!269 = !DILocation(line: 132, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !264, file: !1, line: 132, column: 7)
!271 = !DILocation(line: 132, column: 7, scope: !264)
!272 = !DILocation(line: 133, column: 18, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !1, line: 133, column: 8)
!274 = !DILocation(line: 133, column: 29, scope: !273)
!275 = !DILocation(line: 133, column: 20, scope: !273)
!276 = !DILocation(line: 133, column: 31, scope: !273)
!277 = !DILocation(line: 134, column: 14, scope: !273)
!278 = !DILocation(line: 134, column: 5, scope: !273)
!279 = !DILocation(line: 126, column: 35, scope: !259)
!280 = distinct !{!280, !262, !281, !282, !283}
!281 = !DILocation(line: 135, column: 3, scope: !260)
!282 = !{!"llvm.loop.mustprogress"}
!283 = !{!"llvm.loop.unroll.disable"}
!284 = !DILocation(line: 137, column: 13, scope: !285)
!285 = distinct !DILexicalBlock(scope: !185, file: !1, line: 137, column: 6)
!286 = !DILocation(line: 0, scope: !285)
!287 = !DILocation(line: 141, column: 2, scope: !185)
!288 = distinct !DISubprogram(name: "HuniformShadowIntersect", scope: !1, file: !1, line: 161, type: !289, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{!29, !197, !29, !4, !10}
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304}
!292 = !DILocalVariable(name: "r", arg: 1, scope: !288, file: !1, line: 161, type: !197)
!293 = !DILocalVariable(name: "lightlength", arg: 2, scope: !288, file: !1, line: 161, type: !29)
!294 = !DILocalVariable(name: "pe", arg: 3, scope: !288, file: !1, line: 161, type: !4)
!295 = !DILocalVariable(name: "pid", arg: 4, scope: !288, file: !1, line: 161, type: !10)
!296 = !DILocalVariable(name: "status", scope: !288, file: !1, line: 163, type: !10)
!297 = !DILocalVariable(name: "hitcode", scope: !288, file: !1, line: 164, type: !10)
!298 = !DILocalVariable(name: "i", scope: !288, file: !1, line: 164, type: !10)
!299 = !DILocalVariable(name: "trans", scope: !288, file: !1, line: 165, type: !29)
!300 = !DILocalVariable(name: "peParent", scope: !288, file: !1, line: 166, type: !243)
!301 = !DILocalVariable(name: "pptr", scope: !288, file: !1, line: 167, type: !3)
!302 = !DILocalVariable(name: "pe2", scope: !288, file: !1, line: 168, type: !4)
!303 = !DILocalVariable(name: "newhit", scope: !288, file: !1, line: 169, type: !247)
!304 = !DILocalVariable(name: "v", scope: !288, file: !1, line: 170, type: !107)
!305 = !DILocation(line: 0, scope: !288)
!306 = !DILocation(line: 163, column: 2, scope: !288)
!307 = !DILocation(line: 169, column: 2, scope: !288)
!308 = !DILocation(line: 169, column: 10, scope: !288)
!309 = !DILocation(line: 176, column: 5, scope: !288)
!310 = !DILocation(line: 176, column: 8, scope: !288)
!311 = !DILocation(line: 177, column: 18, scope: !288)
!312 = !DILocation(line: 177, column: 22, scope: !288)
!313 = !DILocation(line: 177, column: 6, scope: !288)
!314 = !DILocation(line: 179, column: 8, scope: !315)
!315 = distinct !DILexicalBlock(scope: !288, file: !1, line: 179, column: 6)
!316 = !DILocation(line: 179, column: 6, scope: !288)
!317 = !DILocation(line: 181, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !1, line: 180, column: 3)
!319 = !DILocation(line: 182, column: 3, scope: !318)
!320 = !DILocation(line: 185, column: 14, scope: !288)
!321 = !DILocation(line: 186, column: 13, scope: !288)
!322 = !DILocation(line: 188, column: 21, scope: !288)
!323 = !DILocation(line: 192, column: 24, scope: !324)
!324 = distinct !DILexicalBlock(scope: !288, file: !1, line: 189, column: 3)
!325 = !DILocation(line: 194, column: 23, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 194, column: 3)
!327 = distinct !DILexicalBlock(scope: !324, file: !1, line: 194, column: 3)
!328 = !DILocation(line: 194, column: 18, scope: !326)
!329 = !DILocation(line: 194, column: 36, scope: !326)
!330 = !DILocation(line: 196, column: 11, scope: !331)
!331 = distinct !DILexicalBlock(scope: !326, file: !1, line: 195, column: 4)
!332 = !DILocation(line: 197, column: 20, scope: !331)
!333 = !DILocation(line: 198, column: 27, scope: !331)
!334 = !DILocation(line: 198, column: 34, scope: !331)
!335 = !DILocation(line: 198, column: 15, scope: !331)
!336 = !DILocation(line: 200, column: 8, scope: !337)
!337 = distinct !DILexicalBlock(scope: !331, file: !1, line: 200, column: 8)
!338 = !DILocation(line: 200, column: 16, scope: !337)
!339 = !DILocation(line: 200, column: 29, scope: !337)
!340 = !DILocation(line: 200, column: 35, scope: !337)
!341 = !DILocation(line: 200, column: 41, scope: !337)
!342 = !DILocation(line: 201, column: 31, scope: !337)
!343 = !DILocation(line: 201, column: 39, scope: !337)
!344 = !DILocation(line: 201, column: 45, scope: !337)
!345 = !DILocation(line: 201, column: 11, scope: !337)
!346 = !DILocation(line: 201, column: 5, scope: !337)
!347 = !DILocation(line: 194, column: 55, scope: !326)
!348 = distinct !{!348, !349, !350, !282, !283}
!349 = !DILocation(line: 194, column: 3, scope: !327)
!350 = !DILocation(line: 203, column: 4, scope: !327)
!351 = !DILocation(line: 205, column: 7, scope: !324)
!352 = !DILocation(line: 206, column: 8, scope: !353)
!353 = distinct !DILexicalBlock(scope: !324, file: !1, line: 205, column: 7)
!354 = !DILocation(line: 206, column: 4, scope: !353)
!355 = !DILocation(line: 188, column: 15, scope: !288)
!356 = distinct !{!356, !357, !358, !282, !283}
!357 = !DILocation(line: 188, column: 2, scope: !288)
!358 = !DILocation(line: 207, column: 3, scope: !288)
!359 = !DILocation(line: 209, column: 2, scope: !288)
!360 = !DILocation(line: 210, column: 2, scope: !288)
!361 = !DILocation(line: 211, column: 2, scope: !288)
!362 = !DISubprogram(name: "init_ray", scope: !6, file: !6, line: 880, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!363 = !DISubroutineType(types: !364)
!364 = !{!107, !197, !100}
!365 = !DISubprogram(name: "reset_rayinfo", scope: !6, file: !6, line: 919, type: !366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !197}
!368 = !DISubprogram(name: "next_nonempty_leaf", scope: !6, file: !6, line: 879, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!369 = !DISubroutineType(types: !370)
!370 = !{!107, !197, !10, !175}
!371 = distinct !DISubprogram(name: "TraverseHierarchyUniform", scope: !1, file: !1, line: 230, type: !372, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !197, !188, !10}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOL", file: !6, line: 299, baseType: !124)
!375 = !{!376, !377, !378, !379, !380, !381}
!376 = !DILocalVariable(name: "r", arg: 1, scope: !371, file: !1, line: 230, type: !197)
!377 = !DILocalVariable(name: "hit", arg: 2, scope: !371, file: !1, line: 230, type: !188)
!378 = !DILocalVariable(name: "pid", arg: 3, scope: !371, file: !1, line: 230, type: !10)
!379 = !DILocalVariable(name: "status", scope: !371, file: !1, line: 232, type: !10)
!380 = !DILocalVariable(name: "intersectPrim", scope: !371, file: !1, line: 233, type: !10)
!381 = !DILocalVariable(name: "v", scope: !371, file: !1, line: 234, type: !107)
!382 = !DILocation(line: 0, scope: !371)
!383 = !DILocation(line: 232, column: 2, scope: !371)
!384 = !DILocation(line: 233, column: 2, scope: !371)
!385 = !DILocation(line: 236, column: 5, scope: !371)
!386 = !DILocation(line: 236, column: 8, scope: !371)
!387 = !DILocation(line: 237, column: 18, scope: !371)
!388 = !DILocation(line: 237, column: 22, scope: !371)
!389 = !DILocation(line: 237, column: 6, scope: !371)
!390 = !DILocation(line: 239, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !371, file: !1, line: 239, column: 6)
!392 = !DILocation(line: 239, column: 6, scope: !371)
!393 = !DILocation(line: 241, column: 3, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !1, line: 240, column: 3)
!395 = !DILocation(line: 242, column: 3, scope: !394)
!396 = !DILocation(line: 245, column: 16, scope: !371)
!397 = !DILocation(line: 246, column: 16, scope: !371)
!398 = !DILocation(line: 247, column: 15, scope: !371)
!399 = !DILocation(line: 249, column: 2, scope: !371)
!400 = !DILocation(line: 251, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !371, file: !1, line: 250, column: 3)
!402 = !DILocation(line: 253, column: 8, scope: !403)
!403 = distinct !DILexicalBlock(scope: !401, file: !1, line: 253, column: 7)
!404 = !DILocation(line: 253, column: 7, scope: !401)
!405 = !DILocation(line: 254, column: 8, scope: !403)
!406 = !DILocation(line: 249, column: 24, scope: !371)
!407 = distinct !{!407, !399, !408, !282, !283}
!408 = !DILocation(line: 255, column: 3, scope: !371)
!409 = !DILocation(line: 257, column: 2, scope: !371)
!410 = !DILocation(line: 258, column: 2, scope: !371)
!411 = !DILocation(line: 259, column: 2, scope: !371)
