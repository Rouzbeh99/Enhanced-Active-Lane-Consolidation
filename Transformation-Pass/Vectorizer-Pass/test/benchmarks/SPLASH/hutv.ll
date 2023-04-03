; ModuleID = 'hutv.c'
source_filename = "hutv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, ptr, ptr, ptr, i64, [3 x i64], i64, [3 x double], [3 x double], i64, ptr, ptr }
%struct.voxel = type { i64, i64, ptr, ptr, i8, [7 x i8] }
%struct.ray = type { i64, i64, i64, [3 x double], [3 x double], i64, ptr, i64, [3 x i64], [5 x %struct.rayinfo], float, float }
%struct.rayinfo = type { ptr, [3 x double], i64, double, i64, double, [3 x double], [3 x i64], i64, [3 x i64], ptr }

@eps_t = dso_local local_unnamed_addr global double 1.000000e-10, align 8, !dbg !0
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"hashtable error \0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"push_down_grid: Ray origin not in voxel \0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @prn_tv_stats() local_unnamed_addr #0 !dbg !141 {
entry:
  ret void, !dbg !145
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @send_ray(ptr nocapture readnone %r, ptr nocapture readnone %v) local_unnamed_addr #0 !dbg !146 {
entry:
  call void @llvm.dbg.value(metadata ptr undef, metadata !188, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata ptr undef, metadata !189, metadata !DIExpression()), !dbg !190
  ret i64 0, !dbg !191
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @lookup_hashtable(i64 noundef %indx, ptr nocapture noundef readonly %g) local_unnamed_addr #2 !dbg !192 {
entry:
  call void @llvm.dbg.value(metadata i64 %indx, metadata !196, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata ptr %g, metadata !197, metadata !DIExpression()), !dbg !200
  %num_buckets = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 6, !dbg !201
  %0 = load i64, ptr %num_buckets, align 8, !dbg !201
  %1 = srem i64 %indx, %0, !dbg !202
  call void @llvm.dbg.value(metadata i64 %1, metadata !198, metadata !DIExpression()), !dbg !200
  %hashtable = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 1, !dbg !203
  %2 = load ptr, ptr %hashtable, align 8, !dbg !203
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %1, !dbg !204
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !204
  call void @llvm.dbg.value(metadata ptr %3, metadata !199, metadata !DIExpression()), !dbg !200
  br label %while.cond, !dbg !205

while.cond:                                       ; preds = %while.body, %entry
  %v.0 = phi ptr [ %3, %entry ], [ %5, %while.body ], !dbg !200
  call void @llvm.dbg.value(metadata ptr %v.0, metadata !199, metadata !DIExpression()), !dbg !200
  %4 = load i64, ptr %v.0, align 8, !dbg !206
  %cmp.not = icmp eq i64 %4, %indx, !dbg !207
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !205

while.body:                                       ; preds = %while.cond
  %next = getelementptr inbounds %struct.voxel, ptr %v.0, i64 0, i32 2, !dbg !208
  %5 = load ptr, ptr %next, align 8, !dbg !208
  call void @llvm.dbg.value(metadata ptr %5, metadata !199, metadata !DIExpression()), !dbg !200
  %cmp2 = icmp eq ptr %5, null, !dbg !210
  br i1 %cmp2, label %if.then, label %while.cond, !dbg !212, !llvm.loop !213

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr @stderr, align 8, !dbg !217
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 17, i64 1, ptr %6) #12, !dbg !219
  tail call void @exit(i32 noundef -1) #13, !dbg !220
  unreachable, !dbg !220

while.end:                                        ; preds = %while.cond
  ret ptr %v.0, !dbg !221
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @lookup_emptycells(i64 noundef %indx, ptr nocapture noundef readonly %g) local_unnamed_addr #5 !dbg !222 {
entry:
  call void @llvm.dbg.value(metadata i64 %indx, metadata !226, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata ptr %g, metadata !227, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64 64, metadata !231, metadata !DIExpression()), !dbg !234
  %div = sdiv i64 %indx, 64, !dbg !235
  call void @llvm.dbg.value(metadata i64 %div, metadata !229, metadata !DIExpression()), !dbg !234
  %mul.neg = mul i64 %div, -64, !dbg !236
  %sub = add i64 %mul.neg, %indx, !dbg !237
  call void @llvm.dbg.value(metadata i64 %sub, metadata !230, metadata !DIExpression()), !dbg !234
  %emptycells = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 2, !dbg !238
  %0 = load ptr, ptr %emptycells, align 8, !dbg !238
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 %div, !dbg !239
  %1 = load i64, ptr %arrayidx, align 8, !dbg !239
  call void @llvm.dbg.value(metadata i64 %1, metadata !232, metadata !DIExpression()), !dbg !234
  %shr = lshr i64 -9223372036854775808, %sub, !dbg !240
  %and = and i64 %1, %shr, !dbg !241
  call void @llvm.dbg.value(metadata i64 %and, metadata !233, metadata !DIExpression()), !dbg !234
  %cmp.not = icmp ne i64 %and, 0, !dbg !242
  %2 = zext i1 %cmp.not to i64
  call void @llvm.dbg.value(metadata i64 %2, metadata !228, metadata !DIExpression()), !dbg !234
  ret i64 %2, !dbg !243
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pop_up_a_grid(ptr noundef %r) local_unnamed_addr #2 !dbg !244 {
entry:
  call void @llvm.dbg.value(metadata ptr %r, metadata !248, metadata !DIExpression()), !dbg !250
  %ri = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 6, !dbg !251
  %0 = load ptr, ptr %ri, align 8, !dbg !251
  call void @llvm.dbg.value(metadata ptr %0, metadata !249, metadata !DIExpression()), !dbg !250
  %next = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 10, !dbg !252
  %1 = load ptr, ptr %next, align 8, !dbg !252
  store ptr %1, ptr %ri, align 8, !dbg !253
  tail call void @free_rayinfo(ptr noundef %r) #14, !dbg !254
  ret void, !dbg !255
}

declare !dbg !256 void @free_rayinfo(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @push_down_grid(ptr noundef %r, ptr nocapture noundef readonly %v) local_unnamed_addr #2 !dbg !257 {
entry:
  %t = alloca [6 x double], align 16
  call void @llvm.dbg.value(metadata ptr %r, metadata !261, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata ptr %v, metadata !262, metadata !DIExpression()), !dbg !286
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %t) #14, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %t, metadata !278, metadata !DIExpression()), !dbg !288
  %ri = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 6, !dbg !289
  %0 = load ptr, ptr %ri, align 8, !dbg !289
  call void @llvm.dbg.value(metadata ptr %0, metadata !285, metadata !DIExpression()), !dbg !286
  %cell = getelementptr inbounds %struct.voxel, ptr %v, i64 0, i32 3, !dbg !290
  %1 = load ptr, ptr %cell, align 8, !dbg !290
  call void @llvm.dbg.value(metadata ptr %1, metadata !283, metadata !DIExpression()), !dbg !286
  %call = tail call ptr @ma_rayinfo(ptr noundef %r) #14, !dbg !291
  call void @llvm.dbg.value(metadata ptr %call, metadata !284, metadata !DIExpression()), !dbg !286
  store ptr %call, ptr %ri, align 8, !dbg !292
  %next = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 10, !dbg !293
  store ptr %0, ptr %next, align 8, !dbg !294
  store ptr %1, ptr %call, align 8, !dbg !295
  %arrayidx = getelementptr inbounds %struct.grid, ptr %1, i64 0, i32 5, i64 1, !dbg !296
  %2 = load i64, ptr %arrayidx, align 8, !dbg !296
  call void @llvm.dbg.value(metadata i64 %2, metadata !263, metadata !DIExpression()), !dbg !286
  %delta = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 6, !dbg !297
  %3 = load double, ptr %delta, align 8, !dbg !298
  %conv = sitofp i64 %2 to double, !dbg !299
  %div = fdiv double %3, %conv, !dbg !300
  %delta3 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 6, !dbg !301
  store double %div, ptr %delta3, align 8, !dbg !302
  %arrayidx6 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 6, i64 1, !dbg !303
  %4 = load double, ptr %arrayidx6, align 8, !dbg !303
  %div8 = fdiv double %4, %conv, !dbg !304
  %arrayidx10 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 6, i64 1, !dbg !305
  store double %div8, ptr %arrayidx10, align 8, !dbg !306
  %arrayidx12 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 6, i64 2, !dbg !307
  %5 = load double, ptr %arrayidx12, align 8, !dbg !307
  %div14 = fdiv double %5, %conv, !dbg !308
  %arrayidx16 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 6, i64 2, !dbg !309
  store double %div14, ptr %arrayidx16, align 8, !dbg !310
  %t_in17 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 3, !dbg !311
  %6 = load double, ptr %t_in17, align 8, !dbg !311
  %cmp = fcmp ult double %6, 0.000000e+00, !dbg !313
  br i1 %cmp, label %if.else, label %if.then, !dbg !314

if.then:                                          ; preds = %entry
  %entry_plane = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 2, !dbg !315
  %7 = load i64, ptr %entry_plane, align 8, !dbg !315
  %entry_plane19 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 2, !dbg !317
  store i64 %7, ptr %entry_plane19, align 8, !dbg !318
  %8 = load double, ptr %t_in17, align 8, !dbg !319
  %t_in21 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 3, !dbg !320
  store double %8, ptr %t_in21, align 8, !dbg !321
  %9 = load double, ptr %t_in17, align 8, !dbg !322
  %10 = load double, ptr @eps_t, align 8, !dbg !323
  %add = fadd double %9, %10, !dbg !324
  call void @llvm.dbg.value(metadata double %add, metadata !271, metadata !DIExpression()), !dbg !286
  br label %if.end, !dbg !325

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !271, metadata !DIExpression()), !dbg !286
  %entry_plane23 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 2, !dbg !326
  store i64 -1, ptr %entry_plane23, align 8, !dbg !328
  %11 = load double, ptr %t_in17, align 8, !dbg !329
  %t_in25 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 3, !dbg !330
  store double %11, ptr %t_in25, align 8, !dbg !331
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = phi double [ %8, %if.then ], [ %11, %if.else ]
  %13 = phi i64 [ %7, %if.then ], [ -1, %if.else ], !dbg !332
  %ti.0 = phi double [ %add, %if.then ], [ 0.000000e+00, %if.else ], !dbg !333
  call void @llvm.dbg.value(metadata double %ti.0, metadata !271, metadata !DIExpression()), !dbg !286
  %D = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 4, !dbg !334
  %14 = load double, ptr %D, align 8, !dbg !335
  %P = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 3, !dbg !336
  %15 = load double, ptr %P, align 8, !dbg !337
  %16 = tail call double @llvm.fmuladd.f64(double %ti.0, double %14, double %15), !dbg !338
  call void @llvm.dbg.value(metadata double %16, metadata !270, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !286
  %arrayidx30 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 4, i64 1, !dbg !339
  %17 = load double, ptr %arrayidx30, align 8, !dbg !339
  %arrayidx32 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 3, i64 1, !dbg !340
  %18 = load double, ptr %arrayidx32, align 8, !dbg !340
  %19 = tail call double @llvm.fmuladd.f64(double %ti.0, double %17, double %18), !dbg !341
  call void @llvm.dbg.value(metadata double %19, metadata !270, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !286
  %arrayidx35 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 4, i64 2, !dbg !342
  %20 = load double, ptr %arrayidx35, align 8, !dbg !342
  %arrayidx37 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 3, i64 2, !dbg !343
  %21 = load double, ptr %arrayidx37, align 8, !dbg !343
  %22 = tail call double @llvm.fmuladd.f64(double %ti.0, double %20, double %21), !dbg !344
  call void @llvm.dbg.value(metadata double %22, metadata !270, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !286
  %min40 = getelementptr inbounds %struct.grid, ptr %1, i64 0, i32 7, !dbg !345
  %23 = load double, ptr %min40, align 8, !dbg !346
  %sub = fsub double %16, %23, !dbg !347
  %cellsize = getelementptr inbounds %struct.grid, ptr %1, i64 0, i32 8, !dbg !348
  %24 = load double, ptr %cellsize, align 8, !dbg !349
  %div43 = fdiv double %sub, %24, !dbg !350
  %conv44 = fptosi double %div43 to i64, !dbg !351
  %index3D = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 7, !dbg !352
  %25 = tail call i64 @llvm.smax.i64(i64 %conv44, i64 0), !dbg !353
  %cmp56.not = icmp slt i64 %25, %2, !dbg !354
  %sub59 = add nsw i64 %2, -1
  %spec.select950 = select i1 %cmp56.not, i64 %25, i64 %sub59, !dbg !356
  store i64 %spec.select950, ptr %index3D, align 8, !dbg !286
  %arrayidx65 = getelementptr inbounds %struct.grid, ptr %1, i64 0, i32 7, i64 1, !dbg !357
  %26 = load double, ptr %arrayidx65, align 8, !dbg !357
  %sub66 = fsub double %19, %26, !dbg !358
  %arrayidx68 = getelementptr inbounds %struct.grid, ptr %1, i64 0, i32 8, i64 1, !dbg !359
  %27 = load double, ptr %arrayidx68, align 8, !dbg !359
  %div69 = fdiv double %sub66, %27, !dbg !360
  %conv70 = fptosi double %div69 to i64, !dbg !361
  %arrayidx72 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 7, i64 1, !dbg !362
  %28 = tail call i64 @llvm.smax.i64(i64 %conv70, i64 0), !dbg !363
  %cmp83.not = icmp slt i64 %28, %2, !dbg !364
  %spec.select953 = select i1 %cmp83.not, i64 %28, i64 %sub59, !dbg !366
  store i64 %spec.select953, ptr %arrayidx72, align 8, !dbg !286
  %arrayidx92 = getelementptr inbounds %struct.grid, ptr %1, i64 0, i32 7, i64 2, !dbg !367
  %29 = load double, ptr %arrayidx92, align 8, !dbg !367
  %sub93 = fsub double %22, %29, !dbg !368
  %arrayidx95 = getelementptr inbounds %struct.grid, ptr %1, i64 0, i32 8, i64 2, !dbg !369
  %30 = load double, ptr %arrayidx95, align 8, !dbg !369
  %div96 = fdiv double %sub93, %30, !dbg !370
  %conv97 = fptosi double %div96 to i64, !dbg !371
  %arrayidx99 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 7, i64 2, !dbg !372
  %31 = tail call i64 @llvm.smax.i64(i64 %conv97, i64 0), !dbg !373
  %cmp110.not = icmp slt i64 %31, %2, !dbg !374
  %spec.select951 = select i1 %cmp110.not, i64 %31, i64 %sub59, !dbg !376
  store i64 %spec.select951, ptr %arrayidx99, align 8, !dbg !286
  %mul = mul nsw i64 %spec.select953, %2, !dbg !377
  %add121 = add nsw i64 %mul, %spec.select950, !dbg !378
  %arrayidx125 = getelementptr inbounds %struct.grid, ptr %1, i64 0, i32 5, i64 2, !dbg !379
  %32 = load i64, ptr %arrayidx125, align 8, !dbg !379
  %mul126 = mul nsw i64 %spec.select951, %32, !dbg !380
  %add127 = add nsw i64 %add121, %mul126, !dbg !381
  %index1D = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 8, !dbg !382
  store i64 %add127, ptr %index1D, align 8, !dbg !383
  %indx_inc3D = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 8, !dbg !384
  %33 = load i64, ptr %indx_inc3D, align 8, !dbg !385
  %indx_inc1D = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 9, !dbg !386
  store i64 %33, ptr %indx_inc1D, align 8, !dbg !387
  %arrayidx131 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 8, i64 1, !dbg !388
  %34 = load i64, ptr %arrayidx131, align 8, !dbg !388
  %mul132 = mul nsw i64 %34, %2, !dbg !389
  %arrayidx134 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 9, i64 1, !dbg !390
  store i64 %mul132, ptr %arrayidx134, align 8, !dbg !391
  %arrayidx136 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 8, i64 2, !dbg !392
  %35 = load i64, ptr %arrayidx136, align 8, !dbg !392
  %36 = load i64, ptr %arrayidx125, align 8, !dbg !393
  %mul139 = mul nsw i64 %36, %35, !dbg !394
  %arrayidx141 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 9, i64 2, !dbg !395
  store i64 %mul139, ptr %arrayidx141, align 8, !dbg !396
  %entry_plane142 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 2, !dbg !332
  switch i64 %13, label %sw.epilog [
    i64 3, label %sw.bb
    i64 0, label %sw.bb144
    i64 4, label %sw.bb211
    i64 1, label %sw.bb213
    i64 5, label %sw.bb286
    i64 2, label %sw.bb288
    i64 -1, label %sw.bb361
  ], !dbg !397

sw.bb:                                            ; preds = %if.end
  store i64 0, ptr %entry_plane142, align 8, !dbg !398
  br label %sw.bb144, !dbg !400

sw.bb144:                                         ; preds = %if.end, %sw.bb
  %t_in145 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 3, !dbg !401
  %add148 = fadd double %div, %12, !dbg !402
  %d = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, !dbg !403
  store double %add148, ptr %d, align 8, !dbg !404
  %arrayidx151 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 1, i64 1, !dbg !405
  %37 = load double, ptr %arrayidx151, align 8, !dbg !405
  %sub153 = fsub double %37, %12, !dbg !406
  %call156 = tail call double @fmod(double noundef %sub153, double noundef %div8) #14, !dbg !407
  call void @llvm.dbg.value(metadata double %call156, metadata !272, metadata !DIExpression()), !dbg !286
  %38 = load double, ptr @eps_t, align 8, !dbg !408
  %cmp157 = fcmp ugt double %call156, %38, !dbg !410
  %39 = load double, ptr %t_in145, align 8, !dbg !411
  br i1 %cmp157, label %if.else166, label %if.then159, !dbg !412

if.then159:                                       ; preds = %sw.bb144
  %40 = load double, ptr %arrayidx10, align 8, !dbg !413
  %add163 = fadd double %39, %40, !dbg !414
  br label %if.end171, !dbg !415

if.else166:                                       ; preds = %sw.bb144
  %add168 = fadd double %call156, %39, !dbg !416
  br label %if.end171

if.end171:                                        ; preds = %if.else166, %if.then159
  %add163.sink = phi double [ %add168, %if.else166 ], [ %add163, %if.then159 ], !dbg !411
  %41 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, i64 1, !dbg !417
  store double %add163.sink, ptr %41, align 8, !dbg !418
  %arrayidx173 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 1, i64 2, !dbg !419
  %42 = load double, ptr %arrayidx173, align 8, !dbg !419
  %sub175 = fsub double %42, %39, !dbg !420
  %43 = load double, ptr %arrayidx16, align 8, !dbg !421
  %call178 = tail call double @fmod(double noundef %sub175, double noundef %43) #14, !dbg !422
  call void @llvm.dbg.value(metadata double %call178, metadata !273, metadata !DIExpression()), !dbg !286
  %44 = load double, ptr @eps_t, align 8, !dbg !423
  %cmp179 = fcmp ugt double %call178, %44, !dbg !425
  %45 = load double, ptr %t_in145, align 8, !dbg !426
  br i1 %cmp179, label %if.else188, label %if.then181, !dbg !427

if.then181:                                       ; preds = %if.end171
  %46 = load double, ptr %arrayidx16, align 8, !dbg !428
  %add185 = fadd double %45, %46, !dbg !429
  br label %if.end193, !dbg !430

if.else188:                                       ; preds = %if.end171
  %add190 = fadd double %call178, %45, !dbg !431
  br label %if.end193

if.end193:                                        ; preds = %if.else188, %if.then181
  %add185.sink = phi double [ %add190, %if.else188 ], [ %add185, %if.then181 ], !dbg !426
  %47 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, i64 2, !dbg !432
  store double %add185.sink, ptr %47, align 8, !dbg !433
  %48 = load double, ptr %d, align 8, !dbg !434
  %49 = load double, ptr %41, align 8, !dbg !435
  %cmp198 = fcmp ugt double %48, %49, !dbg !436
  %50 = zext i1 %cmp198 to i64
  call void @llvm.dbg.value(metadata i64 %50, metadata !264, metadata !DIExpression()), !dbg !286
  %arrayidx202 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, i64 %50, !dbg !437
  %51 = load double, ptr %arrayidx202, align 8, !dbg !437
  %cmp205 = fcmp ugt double %51, %add185.sink, !dbg !438
  br i1 %cmp205, label %sw.epilog.sink.split, label %cond.true, !dbg !437

cond.true:                                        ; preds = %if.end193
  br label %sw.epilog.sink.split, !dbg !437

sw.bb211:                                         ; preds = %if.end
  store i64 1, ptr %entry_plane142, align 8, !dbg !439
  br label %sw.bb213, !dbg !440

sw.bb213:                                         ; preds = %if.end, %sw.bb211
  %t_in214 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 3, !dbg !441
  %add217 = fadd double %div8, %12, !dbg !442
  %d218 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, !dbg !443
  %arrayidx219 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, i64 1, !dbg !444
  store double %add217, ptr %arrayidx219, align 8, !dbg !445
  %d220 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 1, !dbg !446
  %52 = load double, ptr %d220, align 8, !dbg !447
  %sub223 = fsub double %52, %12, !dbg !448
  %call226 = tail call double @fmod(double noundef %sub223, double noundef %div) #14, !dbg !449
  call void @llvm.dbg.value(metadata double %call226, metadata !272, metadata !DIExpression()), !dbg !286
  %53 = load double, ptr @eps_t, align 8, !dbg !450
  %cmp227 = fcmp ugt double %call226, %53, !dbg !452
  %54 = load double, ptr %t_in214, align 8, !dbg !453
  br i1 %cmp227, label %if.else236, label %if.then229, !dbg !454

if.then229:                                       ; preds = %sw.bb213
  %55 = load double, ptr %delta3, align 8, !dbg !455
  %add233 = fadd double %54, %55, !dbg !456
  br label %if.end241, !dbg !457

if.else236:                                       ; preds = %sw.bb213
  %add238 = fadd double %call226, %54, !dbg !458
  br label %if.end241

if.end241:                                        ; preds = %if.else236, %if.then229
  %storemerge938 = phi double [ %add238, %if.else236 ], [ %add233, %if.then229 ], !dbg !453
  store double %storemerge938, ptr %d218, align 8, !dbg !453
  %arrayidx243 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 1, i64 2, !dbg !459
  %56 = load double, ptr %arrayidx243, align 8, !dbg !459
  %sub245 = fsub double %56, %54, !dbg !460
  %57 = load double, ptr %arrayidx16, align 8, !dbg !461
  %call248 = tail call double @fmod(double noundef %sub245, double noundef %57) #14, !dbg !462
  call void @llvm.dbg.value(metadata double %call248, metadata !273, metadata !DIExpression()), !dbg !286
  %58 = load double, ptr @eps_t, align 8, !dbg !463
  %cmp249 = fcmp ugt double %call248, %58, !dbg !465
  %59 = load double, ptr %t_in214, align 8, !dbg !466
  br i1 %cmp249, label %if.else258, label %if.then251, !dbg !467

if.then251:                                       ; preds = %if.end241
  %60 = load double, ptr %arrayidx16, align 8, !dbg !468
  %add255 = fadd double %59, %60, !dbg !469
  br label %if.end263, !dbg !470

if.else258:                                       ; preds = %if.end241
  %add260 = fadd double %call248, %59, !dbg !471
  br label %if.end263

if.end263:                                        ; preds = %if.else258, %if.then251
  %add255.sink = phi double [ %add260, %if.else258 ], [ %add255, %if.then251 ], !dbg !466
  %61 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, i64 2, !dbg !472
  store double %add255.sink, ptr %61, align 8, !dbg !473
  %62 = load double, ptr %d218, align 8, !dbg !474
  %63 = load double, ptr %arrayidx219, align 8, !dbg !475
  %cmp268 = fcmp ugt double %62, %63, !dbg !476
  %64 = zext i1 %cmp268 to i64
  call void @llvm.dbg.value(metadata i64 %64, metadata !264, metadata !DIExpression()), !dbg !286
  %arrayidx273 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, i64 %64, !dbg !477
  %65 = load double, ptr %arrayidx273, align 8, !dbg !477
  %cmp276 = fcmp ugt double %65, %add255.sink, !dbg !478
  br i1 %cmp276, label %sw.epilog.sink.split, label %cond.true278, !dbg !477

cond.true278:                                     ; preds = %if.end263
  br label %sw.epilog.sink.split, !dbg !477

sw.bb286:                                         ; preds = %if.end
  store i64 2, ptr %entry_plane142, align 8, !dbg !479
  br label %sw.bb288, !dbg !480

sw.bb288:                                         ; preds = %if.end, %sw.bb286
  %t_in289 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 3, !dbg !481
  %add292 = fadd double %div14, %12, !dbg !482
  %d293 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, !dbg !483
  %arrayidx294 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, i64 2, !dbg !484
  store double %add292, ptr %arrayidx294, align 8, !dbg !485
  %d295 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 1, !dbg !486
  %66 = load double, ptr %d295, align 8, !dbg !487
  %sub298 = fsub double %66, %12, !dbg !488
  %call301 = tail call double @fmod(double noundef %sub298, double noundef %div) #14, !dbg !489
  call void @llvm.dbg.value(metadata double %call301, metadata !272, metadata !DIExpression()), !dbg !286
  %67 = load double, ptr @eps_t, align 8, !dbg !490
  %cmp302 = fcmp ugt double %call301, %67, !dbg !492
  %68 = load double, ptr %t_in289, align 8, !dbg !493
  br i1 %cmp302, label %if.else311, label %if.then304, !dbg !494

if.then304:                                       ; preds = %sw.bb288
  %69 = load double, ptr %delta3, align 8, !dbg !495
  %add308 = fadd double %68, %69, !dbg !496
  br label %if.end316, !dbg !497

if.else311:                                       ; preds = %sw.bb288
  %add313 = fadd double %call301, %68, !dbg !498
  br label %if.end316

if.end316:                                        ; preds = %if.else311, %if.then304
  %storemerge = phi double [ %add313, %if.else311 ], [ %add308, %if.then304 ], !dbg !493
  store double %storemerge, ptr %d293, align 8, !dbg !493
  %arrayidx318 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 1, i64 1, !dbg !499
  %70 = load double, ptr %arrayidx318, align 8, !dbg !499
  %sub320 = fsub double %70, %68, !dbg !500
  %71 = load double, ptr %arrayidx10, align 8, !dbg !501
  %call323 = tail call double @fmod(double noundef %sub320, double noundef %71) #14, !dbg !502
  call void @llvm.dbg.value(metadata double %call323, metadata !273, metadata !DIExpression()), !dbg !286
  %72 = load double, ptr @eps_t, align 8, !dbg !503
  %cmp324 = fcmp ugt double %call323, %72, !dbg !505
  %73 = load double, ptr %t_in289, align 8, !dbg !506
  br i1 %cmp324, label %if.else333, label %if.then326, !dbg !507

if.then326:                                       ; preds = %if.end316
  %74 = load double, ptr %arrayidx10, align 8, !dbg !508
  %add330 = fadd double %73, %74, !dbg !509
  br label %if.end338, !dbg !510

if.else333:                                       ; preds = %if.end316
  %add335 = fadd double %call323, %73, !dbg !511
  br label %if.end338

if.end338:                                        ; preds = %if.else333, %if.then326
  %add330.sink = phi double [ %add335, %if.else333 ], [ %add330, %if.then326 ], !dbg !506
  %75 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, i64 1, !dbg !512
  store double %add330.sink, ptr %75, align 8, !dbg !513
  %76 = load double, ptr %d293, align 8, !dbg !514
  %cmp343 = fcmp ugt double %76, %add330.sink, !dbg !515
  %77 = zext i1 %cmp343 to i64
  call void @llvm.dbg.value(metadata i64 %77, metadata !264, metadata !DIExpression()), !dbg !286
  %arrayidx348 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, i64 %77, !dbg !516
  %78 = load double, ptr %arrayidx348, align 8, !dbg !516
  %79 = load double, ptr %arrayidx294, align 8, !dbg !517
  %cmp351 = fcmp ugt double %78, %79, !dbg !518
  br i1 %cmp351, label %sw.epilog.sink.split, label %cond.true353, !dbg !516

cond.true353:                                     ; preds = %if.end338
  br label %sw.epilog.sink.split, !dbg !516

sw.bb361:                                         ; preds = %if.end
  %80 = load double, ptr %min40, align 8, !dbg !519
  %conv366 = sitofp i64 %spec.select950 to double, !dbg !520
  %81 = load double, ptr %cellsize, align 8, !dbg !521
  %82 = tail call double @llvm.fmuladd.f64(double %conv366, double %81, double %80), !dbg !522
  call void @llvm.dbg.value(metadata double %82, metadata !282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !286
  %83 = load double, ptr %arrayidx65, align 8, !dbg !523
  %conv375 = sitofp i64 %spec.select953 to double, !dbg !524
  %84 = load double, ptr %arrayidx68, align 8, !dbg !525
  %85 = tail call double @llvm.fmuladd.f64(double %conv375, double %84, double %83), !dbg !526
  call void @llvm.dbg.value(metadata double %85, metadata !282, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !286
  %86 = load double, ptr %arrayidx92, align 8, !dbg !527
  %conv384 = sitofp i64 %spec.select951 to double, !dbg !528
  %87 = load double, ptr %arrayidx95, align 8, !dbg !529
  %88 = tail call double @llvm.fmuladd.f64(double %conv384, double %87, double %86), !dbg !530
  call void @llvm.dbg.value(metadata double %88, metadata !282, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !286
  %89 = load double, ptr %D, align 8, !dbg !531
  %cmp391 = fcmp oeq double %89, 0.000000e+00, !dbg !533
  %90 = load double, ptr %P, align 8, !dbg !534
  br i1 %cmp391, label %if.then393, label %if.else412, !dbg !535

if.then393:                                       ; preds = %sw.bb361
  %cmp397 = fcmp ult double %90, %82, !dbg !536
  %add404 = fadd double %81, %82
  %cmp405 = fcmp ugt double %90, %add404
  %or.cond947 = select i1 %cmp397, i1 true, i1 %cmp405, !dbg !539
  br i1 %or.cond947, label %if.else409, label %if.then407, !dbg !539

if.then407:                                       ; preds = %if.then393
  store double -1.000000e+32, ptr %t, align 16, !dbg !540
  br label %if.end421, !dbg !541

if.else409:                                       ; preds = %if.then393
  store double 1.000000e+32, ptr %t, align 16, !dbg !542
  br label %if.end421

if.else412:                                       ; preds = %sw.bb361
  %sub416 = fsub double %82, %90, !dbg !543
  %div419 = fdiv double %sub416, %89, !dbg !544
  store double %div419, ptr %t, align 16, !dbg !545
  br label %if.end421

if.end421:                                        ; preds = %if.then407, %if.else409, %if.else412
  %91 = phi double [ -1.000000e+32, %if.then407 ], [ 1.000000e+32, %if.else409 ], [ %div419, %if.else412 ]
  %92 = load double, ptr %arrayidx30, align 8, !dbg !546
  %cmp424 = fcmp oeq double %92, 0.000000e+00, !dbg !548
  %93 = load double, ptr %arrayidx32, align 8, !dbg !549
  br i1 %cmp424, label %if.then426, label %if.else446, !dbg !550

if.then426:                                       ; preds = %if.end421
  %cmp430 = fcmp ult double %93, %85, !dbg !551
  %add438 = fadd double %85, %84
  %cmp439 = fcmp ugt double %93, %add438
  %or.cond963 = select i1 %cmp430, i1 true, i1 %cmp439, !dbg !554
  %.972 = select i1 %or.cond963, double 1.000000e+32, double -1.000000e+32
  br label %if.end455

if.else446:                                       ; preds = %if.end421
  %sub450 = fsub double %85, %93, !dbg !555
  %div453 = fdiv double %sub450, %92, !dbg !556
  br label %if.end455

if.end455:                                        ; preds = %if.then426, %if.else446
  %.sink = phi double [ %div453, %if.else446 ], [ %.972, %if.then426 ]
  %arrayidx442 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 1, !dbg !549
  store double %.sink, ptr %arrayidx442, align 8, !dbg !549
  %94 = load double, ptr %arrayidx35, align 8, !dbg !557
  %cmp458 = fcmp oeq double %94, 0.000000e+00, !dbg !559
  %95 = load double, ptr %arrayidx37, align 8, !dbg !560
  br i1 %cmp458, label %if.then460, label %if.else480, !dbg !561

if.then460:                                       ; preds = %if.end455
  %cmp464 = fcmp ult double %95, %88, !dbg !562
  %add472 = fadd double %88, %87
  %cmp473 = fcmp ugt double %95, %add472
  %or.cond964 = select i1 %cmp464, i1 true, i1 %cmp473, !dbg !565
  %.973 = select i1 %or.cond964, double 1.000000e+32, double -1.000000e+32
  br label %if.end489

if.else480:                                       ; preds = %if.end455
  %sub484 = fsub double %88, %95, !dbg !566
  %div487 = fdiv double %sub484, %94, !dbg !567
  br label %if.end489

if.end489:                                        ; preds = %if.then460, %if.else480
  %.sink965 = phi double [ %div487, %if.else480 ], [ %.973, %if.then460 ]
  %arrayidx476 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 2, !dbg !560
  store double %.sink965, ptr %arrayidx476, align 16, !dbg !560
  br i1 %cmp391, label %if.end526, label %if.else514, !dbg !568

if.else514:                                       ; preds = %if.end489
  %add518 = fadd double %82, %81, !dbg !569
  %sub521 = fsub double %add518, %90, !dbg !571
  %div524 = fdiv double %sub521, %89, !dbg !572
  br label %if.end526

if.end526:                                        ; preds = %if.end489, %if.else514
  %.sink967 = phi double [ %div524, %if.else514 ], [ 1.000000e+32, %if.end489 ]
  %arrayidx510 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 3, !dbg !573
  store double %.sink967, ptr %arrayidx510, align 8, !dbg !573
  br i1 %cmp424, label %if.end563, label %if.else551, !dbg !574

if.else551:                                       ; preds = %if.end526
  %add555 = fadd double %85, %84, !dbg !575
  %sub558 = fsub double %add555, %93, !dbg !577
  %div561 = fdiv double %sub558, %92, !dbg !578
  br label %if.end563

if.end563:                                        ; preds = %if.end526, %if.else551
  %.sink969 = phi double [ %div561, %if.else551 ], [ 1.000000e+32, %if.end526 ]
  %arrayidx547 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 4, !dbg !579
  store double %.sink969, ptr %arrayidx547, align 16, !dbg !579
  br i1 %cmp458, label %if.end600, label %if.else588, !dbg !580

if.else588:                                       ; preds = %if.end563
  %add592 = fadd double %88, %87, !dbg !581
  %sub595 = fsub double %add592, %95, !dbg !583
  %div598 = fdiv double %sub595, %94, !dbg !584
  br label %if.end600

if.end600:                                        ; preds = %if.end563, %if.else588
  %.sink971 = phi double [ %div598, %if.else588 ], [ 1.000000e+32, %if.end563 ]
  %arrayidx584 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 5, !dbg !585
  store double %.sink971, ptr %arrayidx584, align 8, !dbg !585
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !274, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 -1, metadata !265, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !275, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 -1, metadata !266, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 0, metadata !267, metadata !DIExpression()), !dbg !286
  br label %for.body, !dbg !586

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end600
  %96 = phi double [ %91, %if.end600 ], [ %.pre, %for.inc.for.body_crit_edge ], !dbg !588
  %i_in.0959 = phi i64 [ -1, %if.end600 ], [ %i_in.1, %for.inc.for.body_crit_edge ]
  %i_out.0958 = phi i64 [ -1, %if.end600 ], [ %i_out.1, %for.inc.for.body_crit_edge ]
  %i.0956 = phi i64 [ 0, %if.end600 ], [ %inc, %for.inc.for.body_crit_edge ]
  %t_out.0955 = phi double [ 1.000000e+32, %if.end600 ], [ %t_out.1, %for.inc.for.body_crit_edge ]
  %t_in.0954 = phi double [ -1.000000e+32, %if.end600 ], [ %t_in.1, %for.inc.for.body_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %i_in.0959, metadata !265, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 %i_out.0958, metadata !266, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 %i.0956, metadata !267, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %t_out.0955, metadata !275, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %t_in.0954, metadata !274, metadata !DIExpression()), !dbg !286
  %add604 = add nuw nsw i64 %i.0956, 3, !dbg !592
  %arrayidx605 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 %add604, !dbg !593
  %97 = load double, ptr %arrayidx605, align 8, !dbg !593
  %cmp606 = fcmp olt double %96, %97, !dbg !594
  %. = select i1 %cmp606, double %96, double %97
  %.948 = select i1 %cmp606, double %97, double %96
  %add604.i.0 = select i1 %cmp606, i64 %add604, i64 %i.0956
  call void @llvm.dbg.value(metadata i64 undef, metadata !268, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 %add604.i.0, metadata !269, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %.948, metadata !277, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %., metadata !276, metadata !DIExpression()), !dbg !286
  %arrayidx620 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, i64 %i.0956, !dbg !595
  store double %.948, ptr %arrayidx620, align 8, !dbg !596
  %cmp621 = fcmp olt double %t_in.0954, %., !dbg !597
  br i1 %cmp621, label %if.then623, label %if.end624, !dbg !599

if.then623:                                       ; preds = %for.body
  %i.0.add604 = select i1 %cmp606, i64 %i.0956, i64 %add604
  call void @llvm.dbg.value(metadata i64 %i.0.add604, metadata !268, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %., metadata !274, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 undef, metadata !265, metadata !DIExpression()), !dbg !286
  br label %if.end624, !dbg !600

if.end624:                                        ; preds = %if.then623, %for.body
  %t_in.1 = phi double [ %., %if.then623 ], [ %t_in.0954, %for.body ], !dbg !602
  %i_in.1 = phi i64 [ %i.0.add604, %if.then623 ], [ %i_in.0959, %for.body ], !dbg !602
  call void @llvm.dbg.value(metadata i64 %i_in.1, metadata !265, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %t_in.1, metadata !274, metadata !DIExpression()), !dbg !286
  %cmp625 = fcmp ogt double %t_out.0955, %.948, !dbg !603
  br i1 %cmp625, label %if.then627, label %for.inc, !dbg !605

if.then627:                                       ; preds = %if.end624
  call void @llvm.dbg.value(metadata double %.948, metadata !275, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 %add604.i.0, metadata !266, metadata !DIExpression()), !dbg !286
  br label %for.inc, !dbg !606

for.inc:                                          ; preds = %if.end624, %if.then627
  %t_out.1 = phi double [ %.948, %if.then627 ], [ %t_out.0955, %if.end624 ], !dbg !602
  %i_out.1 = phi i64 [ %add604.i.0, %if.then627 ], [ %i_out.0958, %if.end624 ], !dbg !602
  call void @llvm.dbg.value(metadata i64 %i_out.1, metadata !266, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %t_out.1, metadata !275, metadata !DIExpression()), !dbg !286
  %inc = add nuw nsw i64 %i.0956, 1, !dbg !608
  call void @llvm.dbg.value(metadata i64 %i_in.1, metadata !265, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata i64 %inc, metadata !267, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.value(metadata double %t_in.1, metadata !274, metadata !DIExpression()), !dbg !286
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !609
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge, !dbg !586, !llvm.loop !610

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %arrayidx603.phi.trans.insert = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 %inc
  %.pre = load double, ptr %arrayidx603.phi.trans.insert, align 8, !dbg !588
  br label %for.body, !dbg !586

for.end:                                          ; preds = %for.inc
  %cmp629 = fcmp ogt double %t_in.1, %t_out.1, !dbg !612
  %cmp631 = fcmp olt double %t_out.1, 0.000000e+00
  %or.cond = or i1 %cmp629, %cmp631, !dbg !614
  br i1 %or.cond, label %if.then633, label %if.end635, !dbg !614

if.then633:                                       ; preds = %for.end
  %98 = load ptr, ptr @stderr, align 8, !dbg !615
  %99 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 41, i64 1, ptr %98) #12, !dbg !617
  tail call void @exit(i32 noundef -1) #13, !dbg !618
  unreachable, !dbg !618

if.end635:                                        ; preds = %for.end
  %cmp636 = icmp sgt i64 %i_in.1, 2, !dbg !619
  %sub639 = add nsw i64 %i_in.1, -3
  %spec.select949 = select i1 %cmp636, i64 %sub639, i64 %i_in.1, !dbg !621
  call void @llvm.dbg.value(metadata i64 %spec.select949, metadata !265, metadata !DIExpression()), !dbg !286
  %cmp641 = icmp sgt i64 %i_out.1, 2, !dbg !622
  %sub644 = add nsw i64 %i_out.1, -3
  %spec.select952 = select i1 %cmp641, i64 %sub644, i64 %i_out.1, !dbg !624
  call void @llvm.dbg.value(metadata i64 %spec.select952, metadata !266, metadata !DIExpression()), !dbg !286
  store i64 %spec.select949, ptr %entry_plane142, align 8, !dbg !625
  %t_in647 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 3, !dbg !626
  store double %t_in.1, ptr %t_in647, align 8, !dbg !627
  br label %sw.epilog.sink.split, !dbg !628

sw.epilog.sink.split:                             ; preds = %cond.true353, %if.end338, %cond.true278, %if.end263, %cond.true, %if.end193, %if.end635
  %t_out.1.lcssa.sink = phi double [ %t_out.1, %if.end635 ], [ %51, %cond.true ], [ %add185.sink, %if.end193 ], [ %65, %cond.true278 ], [ %add255.sink, %if.end263 ], [ %78, %cond.true353 ], [ %79, %if.end338 ]
  %spec.select952.sink = phi i64 [ %spec.select952, %if.end635 ], [ %50, %cond.true ], [ 2, %if.end193 ], [ %64, %cond.true278 ], [ 2, %if.end263 ], [ %77, %cond.true353 ], [ 2, %if.end338 ]
  %t_out648 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 5, !dbg !602
  store double %t_out.1.lcssa.sink, ptr %t_out648, align 8, !dbg !602
  %exit_plane649 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 4, !dbg !602
  store i64 %spec.select952.sink, ptr %exit_plane649, align 8, !dbg !602
  br label %sw.epilog, !dbg !629

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %t) #14, !dbg !629
  ret void, !dbg !629
}

declare !dbg !630 ptr @ma_rayinfo(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @fmod(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local i64 @step_grid(ptr nocapture noundef readonly %r) local_unnamed_addr #8 !dbg !633 {
entry:
  call void @llvm.dbg.value(metadata ptr %r, metadata !637, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata ptr %r, metadata !642, metadata !DIExpression()), !dbg !645
  %ri = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 6, !dbg !646
  %0 = load ptr, ptr %ri, align 8, !dbg !646
  call void @llvm.dbg.value(metadata ptr %0, metadata !644, metadata !DIExpression()), !dbg !645
  %1 = load ptr, ptr %0, align 8, !dbg !647
  call void @llvm.dbg.value(metadata ptr %1, metadata !643, metadata !DIExpression()), !dbg !645
  %indx_inc = getelementptr inbounds %struct.grid, ptr %1, i64 0, i32 5, !dbg !648
  call void @llvm.dbg.value(metadata ptr %indx_inc, metadata !640, metadata !DIExpression()), !dbg !645
  %arrayidx = getelementptr inbounds i64, ptr %indx_inc, i64 1, !dbg !649
  %2 = load i64, ptr %arrayidx, align 8, !dbg !649
  call void @llvm.dbg.value(metadata i64 %2, metadata !638, metadata !DIExpression()), !dbg !645
  %t_out = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 5, !dbg !650
  %3 = load double, ptr %t_out, align 8, !dbg !650
  %t_in = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 3, !dbg !651
  store double %3, ptr %t_in, align 8, !dbg !652
  %exit_plane = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 4, !dbg !653
  %4 = load i64, ptr %exit_plane, align 8, !dbg !653
  %arrayidx1 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 8, i64 %4, !dbg !654
  %5 = load i64, ptr %arrayidx1, align 8, !dbg !654
  %arrayidx3 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 7, i64 %4, !dbg !655
  %6 = load i64, ptr %arrayidx3, align 8, !dbg !656
  %add = add nsw i64 %6, %5, !dbg !656
  store i64 %add, ptr %arrayidx3, align 8, !dbg !656
  %7 = load i64, ptr %exit_plane, align 8, !dbg !657
  %entry_plane = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 2, !dbg !658
  store i64 %7, ptr %entry_plane, align 8, !dbg !659
  %arrayidx7 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 7, i64 %7, !dbg !660
  %8 = load i64, ptr %arrayidx7, align 8, !dbg !660
  %cmp = icmp sgt i64 %8, -1, !dbg !662
  %cmp11.not = icmp slt i64 %8, %2
  %or.cond = select i1 %cmp, i1 %cmp11.not, i1 false, !dbg !663
  br i1 %or.cond, label %if.else, label %cleanup, !dbg !663

if.else:                                          ; preds = %entry
  %arrayidx13 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 6, i64 %7, !dbg !664
  %9 = load double, ptr %arrayidx13, align 8, !dbg !664
  %d = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 1, !dbg !666
  %arrayidx15 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 1, i64 %7, !dbg !667
  %10 = load double, ptr %arrayidx15, align 8, !dbg !668
  %add16 = fadd double %9, %10, !dbg !668
  store double %add16, ptr %arrayidx15, align 8, !dbg !668
  %11 = load i64, ptr %exit_plane, align 8, !dbg !669
  %arrayidx18 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 9, i64 %11, !dbg !670
  %12 = load i64, ptr %arrayidx18, align 8, !dbg !670
  %index1D = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 8, !dbg !671
  %13 = load i64, ptr %index1D, align 8, !dbg !672
  %add19 = add nsw i64 %13, %12, !dbg !672
  store i64 %add19, ptr %index1D, align 8, !dbg !672
  %14 = load double, ptr %d, align 8, !dbg !673
  %arrayidx23 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 1, i64 1, !dbg !674
  %15 = load double, ptr %arrayidx23, align 8, !dbg !674
  %cmp24 = fcmp ugt double %14, %15, !dbg !675
  %16 = zext i1 %cmp24 to i64
  call void @llvm.dbg.value(metadata i64 %16, metadata !639, metadata !DIExpression()), !dbg !645
  %arrayidx26 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 1, i64 %16, !dbg !676
  %17 = load double, ptr %arrayidx26, align 8, !dbg !676
  %arrayidx28 = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 1, i64 2, !dbg !677
  %18 = load double, ptr %arrayidx28, align 8, !dbg !677
  %cmp29 = fcmp ugt double %17, %18, !dbg !678
  br i1 %cmp29, label %cond.end, label %cond.true, !dbg !676

cond.true:                                        ; preds = %if.else
  br label %cond.end, !dbg !676

cond.end:                                         ; preds = %if.else, %cond.true
  %19 = phi double [ %17, %cond.true ], [ %18, %if.else ], !dbg !679
  %cond31 = phi i64 [ %16, %cond.true ], [ 2, %if.else ], !dbg !676
  call void @llvm.dbg.value(metadata i64 %cond31, metadata !639, metadata !DIExpression()), !dbg !645
  store double %19, ptr %t_out, align 8, !dbg !680
  store i64 %cond31, ptr %exit_plane, align 8, !dbg !681
  br label %cleanup, !dbg !682

cleanup:                                          ; preds = %entry, %cond.end
  %retval.0 = phi i64 [ %add19, %cond.end ], [ -1, %entry ], !dbg !683
  ret i64 %retval.0, !dbg !684
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @next_voxel(ptr noundef %r) local_unnamed_addr #2 !dbg !685 {
entry:
  call void @llvm.dbg.value(metadata ptr %r, metadata !687, metadata !DIExpression()), !dbg !691
  %ri = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 6, !dbg !692
  %call8 = tail call i64 @step_grid(ptr noundef %r), !dbg !694
  call void @llvm.dbg.value(metadata i64 %call8, metadata !688, metadata !DIExpression()), !dbg !691
  %cmp9 = icmp eq i64 %call8, -1, !dbg !695
  br i1 %cmp9, label %while.body, label %cleanup, !dbg !696

while.body:                                       ; preds = %entry, %if.then
  %0 = load ptr, ptr %ri, align 8, !dbg !692
  call void @llvm.dbg.value(metadata ptr %0, metadata !690, metadata !DIExpression()), !dbg !691
  %1 = load ptr, ptr %0, align 8, !dbg !697
  call void @llvm.dbg.value(metadata ptr %1, metadata !689, metadata !DIExpression()), !dbg !691
  %subdiv_level = getelementptr inbounds %struct.grid, ptr %1, i64 0, i32 9, !dbg !698
  %2 = load i64, ptr %subdiv_level, align 8, !dbg !698
  %cmp1.not = icmp eq i64 %2, 0, !dbg !700
  br i1 %cmp1.not, label %cleanup, label %if.then, !dbg !701

if.then:                                          ; preds = %while.body
  tail call void @pop_up_a_grid(ptr noundef nonnull %r), !dbg !702
  call void @llvm.dbg.value(metadata i64 undef, metadata !688, metadata !DIExpression()), !dbg !691
  %call = tail call i64 @step_grid(ptr noundef nonnull %r), !dbg !694
  call void @llvm.dbg.value(metadata i64 %call, metadata !688, metadata !DIExpression()), !dbg !691
  %cmp = icmp eq i64 %call, -1, !dbg !695
  br i1 %cmp, label %while.body, label %cleanup, !dbg !696, !llvm.loop !704

cleanup:                                          ; preds = %while.body, %if.then, %entry
  %call.lcssa = phi i64 [ %call8, %entry ], [ %call, %if.then ], [ -1, %while.body ], !dbg !694
  ret i64 %call.lcssa, !dbg !706
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @next_nonempty_voxel(ptr noundef %r) local_unnamed_addr #2 !dbg !707 {
entry:
  call void @llvm.dbg.value(metadata ptr %r, metadata !711, metadata !DIExpression()), !dbg !716
  %call = tail call i64 @next_voxel(ptr noundef %r), !dbg !717
  call void @llvm.dbg.value(metadata i64 %call, metadata !712, metadata !DIExpression()), !dbg !716
  %cmp = icmp slt i64 %call, 0, !dbg !718
  br i1 %cmp, label %cleanup, label %if.end, !dbg !720

if.end:                                           ; preds = %entry
  %ri = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 6, !dbg !721
  call void @llvm.dbg.value(metadata ptr undef, metadata !715, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.value(metadata ptr undef, metadata !714, metadata !DIExpression()), !dbg !716
  br label %while.cond, !dbg !722

while.cond:                                       ; preds = %while.body, %if.end
  %indx.0 = phi i64 [ %call, %if.end ], [ %call3, %while.body ], !dbg !716
  %gr.0.in = load ptr, ptr %ri, align 8, !dbg !716
  %gr.0 = load ptr, ptr %gr.0.in, align 8, !dbg !716
  call void @llvm.dbg.value(metadata ptr %gr.0, metadata !714, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.value(metadata i64 %indx.0, metadata !712, metadata !DIExpression()), !dbg !716
  %call1 = tail call i64 @lookup_emptycells(i64 noundef %indx.0, ptr noundef %gr.0), !dbg !723
  %cmp2 = icmp eq i64 %call1, 1, !dbg !724
  br i1 %cmp2, label %while.body, label %while.end, !dbg !722

while.body:                                       ; preds = %while.cond
  %call3 = tail call i64 @next_voxel(ptr noundef nonnull %r), !dbg !725
  call void @llvm.dbg.value(metadata i64 %call3, metadata !712, metadata !DIExpression()), !dbg !716
  %cmp4 = icmp slt i64 %call3, 0, !dbg !727
  br i1 %cmp4, label %cleanup, label %while.cond, !dbg !729, !llvm.loop !730

while.end:                                        ; preds = %while.cond
  %call9 = tail call ptr @lookup_hashtable(i64 noundef %indx.0, ptr noundef %gr.0), !dbg !732
  call void @llvm.dbg.value(metadata ptr %call9, metadata !713, metadata !DIExpression()), !dbg !716
  br label %cleanup, !dbg !733

cleanup:                                          ; preds = %while.body, %entry, %while.end
  %retval.0 = phi ptr [ %call9, %while.end ], [ null, %entry ], [ null, %while.body ], !dbg !716
  ret ptr %retval.0, !dbg !734
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @next_nonempty_leaf(ptr noundef %r, i64 noundef %step, ptr nocapture noundef writeonly %status) local_unnamed_addr #2 !dbg !735 {
entry:
  %ri = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 6
  %phi.cmp = icmp eq i64 %step, 1, !dbg !745
  call void @llvm.dbg.value(metadata ptr %r, metadata !739, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i64 undef, metadata !740, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata ptr %status, metadata !741, metadata !DIExpression()), !dbg !749
  br i1 %phi.cmp, label %if.then, label %if.else, !dbg !750

if.then:                                          ; preds = %if.end17, %entry
  %call = tail call ptr @next_nonempty_voxel(ptr noundef %r), !dbg !751
  call void @llvm.dbg.value(metadata ptr %call, metadata !743, metadata !DIExpression()), !dbg !749
  br label %if.end, !dbg !753

if.else:                                          ; preds = %entry
  %0 = load ptr, ptr %ri, align 8, !dbg !754
  call void @llvm.dbg.value(metadata ptr %0, metadata !744, metadata !DIExpression()), !dbg !749
  %index1D = getelementptr inbounds %struct.rayinfo, ptr %0, i64 0, i32 8, !dbg !756
  %1 = load i64, ptr %index1D, align 8, !dbg !756
  %2 = load ptr, ptr %0, align 8, !dbg !757
  %call1 = tail call ptr @lookup_hashtable(i64 noundef %1, ptr noundef %2), !dbg !758
  call void @llvm.dbg.value(metadata ptr %call1, metadata !743, metadata !DIExpression()), !dbg !749
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %v.0 = phi ptr [ %call, %if.then ], [ %call1, %if.else ], !dbg !759
  call void @llvm.dbg.value(metadata ptr %v.0, metadata !743, metadata !DIExpression()), !dbg !749
  %cmp2 = icmp eq ptr %v.0, null, !dbg !760
  br i1 %cmp2, label %cleanup.sink.split, label %while.cond.preheader, !dbg !762

while.cond.preheader:                             ; preds = %if.end
  %celltype.phi.trans.insert = getelementptr inbounds %struct.voxel, ptr %v.0, i64 0, i32 4
  %.pre = load i8, ptr %celltype.phi.trans.insert, align 8, !dbg !763
  br label %while.cond, !dbg !764

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %3 = phi i8 [ %.pre, %while.cond.preheader ], [ %7, %while.cond.backedge ], !dbg !763
  %v.1 = phi ptr [ %v.0, %while.cond.preheader ], [ %call26, %while.cond.backedge ], !dbg !749
  call void @llvm.dbg.value(metadata ptr %v.1, metadata !743, metadata !DIExpression()), !dbg !749
  switch i8 %3, label %cleanup [
    i8 5, label %cleanup.sink.split
    i8 3, label %if.end17
  ], !dbg !765

if.end17:                                         ; preds = %while.cond
  tail call void @push_down_grid(ptr noundef %r, ptr noundef nonnull %v.1), !dbg !766
  %4 = load ptr, ptr %ri, align 8, !dbg !767
  call void @llvm.dbg.value(metadata ptr %4, metadata !744, metadata !DIExpression()), !dbg !749
  %index1D19 = getelementptr inbounds %struct.rayinfo, ptr %4, i64 0, i32 8, !dbg !768
  %5 = load i64, ptr %index1D19, align 8, !dbg !768
  call void @llvm.dbg.value(metadata i64 %5, metadata !742, metadata !DIExpression()), !dbg !749
  %6 = load ptr, ptr %4, align 8, !dbg !769
  %call21 = tail call i64 @lookup_emptycells(i64 noundef %5, ptr noundef %6), !dbg !770
  %cmp22.not = icmp eq i64 %call21, 1, !dbg !771
  br i1 %cmp22.not, label %if.then, label %if.then24, !dbg !772

if.then24:                                        ; preds = %if.end17
  %call26 = tail call ptr @lookup_hashtable(i64 noundef %5, ptr noundef %6), !dbg !773
  call void @llvm.dbg.value(metadata ptr %call26, metadata !743, metadata !DIExpression()), !dbg !749
  %celltype27 = getelementptr inbounds %struct.voxel, ptr %call26, i64 0, i32 4, !dbg !775
  %7 = load i8, ptr %celltype27, align 8, !dbg !775
  switch i8 %7, label %cleanup [
    i8 5, label %while.cond.backedge
    i8 3, label %while.cond.backedge
    i8 4, label %cleanup.sink.split
  ], !dbg !777

while.cond.backedge:                              ; preds = %if.then24, %if.then24
  br label %while.cond, !dbg !749, !llvm.loop !778

cleanup.sink.split:                               ; preds = %if.then24, %while.cond, %if.end
  %.sink = phi i64 [ 0, %if.end ], [ 1, %while.cond ], [ 1, %if.then24 ]
  store i64 %.sink, ptr %status, align 8, !dbg !749
  br label %cleanup, !dbg !780

cleanup:                                          ; preds = %while.cond, %if.then24, %cleanup.sink.split
  %retval.0 = phi ptr [ null, %cleanup.sink.split ], [ %v.1, %while.cond ], [ %call26, %if.then24 ], !dbg !749
  ret ptr %retval.0, !dbg !780
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @init_ray(ptr noundef %r, ptr noundef %g) local_unnamed_addr #2 !dbg !781 {
entry:
  %status = alloca i64, align 8
  %t = alloca [6 x double], align 16
  call void @llvm.dbg.value(metadata ptr %r, metadata !785, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %g, metadata !786, metadata !DIExpression()), !dbg !803
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %status) #14, !dbg !804
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %t) #14, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %t, metadata !799, metadata !DIExpression()), !dbg !806
  tail call void @reset_rayinfo(ptr noundef %r) #14, !dbg !807
  %D = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 4, !dbg !808
  %0 = load double, ptr %D, align 8, !dbg !810
  %cmp = fcmp oeq double %0, 0.000000e+00, !dbg !811
  br i1 %cmp, label %if.then, label %if.else13, !dbg !812

if.then:                                          ; preds = %entry
  %P = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 3, !dbg !813
  %1 = load double, ptr %P, align 8, !dbg !816
  %min = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 7, !dbg !817
  %2 = load double, ptr %min, align 8, !dbg !818
  %cmp3 = fcmp ult double %1, %2, !dbg !819
  br i1 %cmp3, label %if.else, label %land.lhs.true, !dbg !820

land.lhs.true:                                    ; preds = %if.then
  %cellsize = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, !dbg !821
  %3 = load double, ptr %cellsize, align 8, !dbg !822
  %add = fadd double %2, %3, !dbg !823
  %cmp9 = fcmp ugt double %1, %add, !dbg !824
  br i1 %cmp9, label %if.else, label %if.then10, !dbg !825

if.then10:                                        ; preds = %land.lhs.true
  store double -1.000000e+32, ptr %t, align 16, !dbg !826
  br label %if.end21, !dbg !827

if.else:                                          ; preds = %land.lhs.true, %if.then
  store double 1.000000e+32, ptr %t, align 16, !dbg !828
  br label %if.end21

if.else13:                                        ; preds = %entry
  %min14 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 7, !dbg !829
  %4 = load double, ptr %min14, align 8, !dbg !830
  %P16 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 3, !dbg !831
  %5 = load double, ptr %P16, align 8, !dbg !832
  %sub = fsub double %4, %5, !dbg !833
  %div = fdiv double %sub, %0, !dbg !834
  store double %div, ptr %t, align 16, !dbg !835
  br label %if.end21

if.end21:                                         ; preds = %if.then10, %if.else, %if.else13
  %6 = phi double [ -1.000000e+32, %if.then10 ], [ 1.000000e+32, %if.else ], [ %div, %if.else13 ]
  %7 = phi double [ %1, %if.then10 ], [ %1, %if.else ], [ %5, %if.else13 ]
  %8 = phi double [ %2, %if.then10 ], [ %2, %if.else ], [ %4, %if.else13 ]
  %arrayidx23 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 4, i64 1, !dbg !836
  %9 = load double, ptr %arrayidx23, align 8, !dbg !836
  %cmp24 = fcmp oeq double %9, 0.000000e+00, !dbg !838
  br i1 %cmp24, label %if.then25, label %if.else45, !dbg !839

if.then25:                                        ; preds = %if.end21
  %arrayidx27 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 3, i64 1, !dbg !840
  %10 = load double, ptr %arrayidx27, align 8, !dbg !840
  %arrayidx29 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 7, i64 1, !dbg !843
  %11 = load double, ptr %arrayidx29, align 8, !dbg !843
  %cmp30 = fcmp ult double %10, %11, !dbg !844
  br i1 %cmp30, label %if.else42, label %land.lhs.true31, !dbg !845

land.lhs.true31:                                  ; preds = %if.then25
  %arrayidx37 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 1, !dbg !846
  %12 = load double, ptr %arrayidx37, align 8, !dbg !846
  %add38 = fadd double %11, %12, !dbg !847
  %cmp39 = fcmp ugt double %10, %add38, !dbg !848
  br i1 %cmp39, label %if.else42, label %if.end55, !dbg !849

if.else42:                                        ; preds = %land.lhs.true31, %if.then25
  br label %if.end55

if.else45:                                        ; preds = %if.end21
  %arrayidx47 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 7, i64 1, !dbg !850
  %13 = load double, ptr %arrayidx47, align 8, !dbg !850
  %arrayidx49 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 3, i64 1, !dbg !851
  %14 = load double, ptr %arrayidx49, align 8, !dbg !851
  %sub50 = fsub double %13, %14, !dbg !852
  %div53 = fdiv double %sub50, %9, !dbg !853
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true31, %if.else42, %if.else45
  %.sink582 = phi double [ 1.000000e+32, %if.else42 ], [ %div53, %if.else45 ], [ -1.000000e+32, %land.lhs.true31 ]
  %15 = phi double [ %10, %if.else42 ], [ %14, %if.else45 ], [ %10, %land.lhs.true31 ]
  %16 = phi double [ %11, %if.else42 ], [ %13, %if.else45 ], [ %11, %land.lhs.true31 ]
  %arrayidx41 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 1, !dbg !854
  store double %.sink582, ptr %arrayidx41, align 8, !dbg !854
  %arrayidx57 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 4, i64 2, !dbg !855
  %17 = load double, ptr %arrayidx57, align 8, !dbg !855
  %cmp58 = fcmp oeq double %17, 0.000000e+00, !dbg !857
  br i1 %cmp58, label %if.then59, label %if.else79, !dbg !858

if.then59:                                        ; preds = %if.end55
  %arrayidx61 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 3, i64 2, !dbg !859
  %18 = load double, ptr %arrayidx61, align 8, !dbg !859
  %arrayidx63 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 7, i64 2, !dbg !862
  %19 = load double, ptr %arrayidx63, align 8, !dbg !862
  %cmp64 = fcmp ult double %18, %19, !dbg !863
  br i1 %cmp64, label %if.else76, label %land.lhs.true65, !dbg !864

land.lhs.true65:                                  ; preds = %if.then59
  %arrayidx71 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 2, !dbg !865
  %20 = load double, ptr %arrayidx71, align 8, !dbg !865
  %add72 = fadd double %19, %20, !dbg !866
  %cmp73 = fcmp ugt double %18, %add72, !dbg !867
  br i1 %cmp73, label %if.else76, label %if.end89, !dbg !868

if.else76:                                        ; preds = %land.lhs.true65, %if.then59
  br label %if.end89

if.else79:                                        ; preds = %if.end55
  %arrayidx81 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 7, i64 2, !dbg !869
  %21 = load double, ptr %arrayidx81, align 8, !dbg !869
  %arrayidx83 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 3, i64 2, !dbg !870
  %22 = load double, ptr %arrayidx83, align 8, !dbg !870
  %sub84 = fsub double %21, %22, !dbg !871
  %div87 = fdiv double %sub84, %17, !dbg !872
  br label %if.end89

if.end89:                                         ; preds = %land.lhs.true65, %if.else76, %if.else79
  %.sink583 = phi double [ 1.000000e+32, %if.else76 ], [ %div87, %if.else79 ], [ -1.000000e+32, %land.lhs.true65 ]
  %23 = phi double [ %18, %if.else76 ], [ %22, %if.else79 ], [ %18, %land.lhs.true65 ]
  %24 = phi double [ %19, %if.else76 ], [ %21, %if.else79 ], [ %19, %land.lhs.true65 ]
  %arrayidx75 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 2, !dbg !873
  store double %.sink583, ptr %arrayidx75, align 16, !dbg !873
  br i1 %cmp, label %if.end126, label %if.else113, !dbg !874

if.else113:                                       ; preds = %if.end89
  %cellsize116 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, !dbg !875
  %25 = load double, ptr %cellsize116, align 8, !dbg !877
  %add118 = fadd double %8, %25, !dbg !878
  %sub121 = fsub double %add118, %7, !dbg !879
  %div124 = fdiv double %sub121, %0, !dbg !880
  br label %if.end126

if.end126:                                        ; preds = %if.end89, %if.else113
  %.sink584 = phi double [ %div124, %if.else113 ], [ 1.000000e+32, %if.end89 ]
  %arrayidx109 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 3, !dbg !881
  store double %.sink584, ptr %arrayidx109, align 8, !dbg !881
  br i1 %cmp24, label %if.end163, label %if.else150, !dbg !882

if.else150:                                       ; preds = %if.end126
  %arrayidx154 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 1, !dbg !883
  %26 = load double, ptr %arrayidx154, align 8, !dbg !883
  %add155 = fadd double %16, %26, !dbg !885
  %sub158 = fsub double %add155, %15, !dbg !886
  %div161 = fdiv double %sub158, %9, !dbg !887
  br label %if.end163

if.end163:                                        ; preds = %if.end126, %if.else150
  %.sink585 = phi double [ %div161, %if.else150 ], [ 1.000000e+32, %if.end126 ]
  %arrayidx146 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 4, !dbg !888
  store double %.sink585, ptr %arrayidx146, align 16, !dbg !888
  br i1 %cmp58, label %if.end200, label %if.else187, !dbg !889

if.else187:                                       ; preds = %if.end163
  %arrayidx191 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 2, !dbg !890
  %27 = load double, ptr %arrayidx191, align 8, !dbg !890
  %add192 = fadd double %24, %27, !dbg !892
  %sub195 = fsub double %add192, %23, !dbg !893
  %div198 = fdiv double %sub195, %17, !dbg !894
  br label %if.end200

if.end200:                                        ; preds = %if.end163, %if.else187
  %.sink586 = phi double [ %div198, %if.else187 ], [ 1.000000e+32, %if.end163 ]
  %arrayidx183 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 5, !dbg !895
  store double %.sink586, ptr %arrayidx183, align 8, !dbg !895
  call void @llvm.dbg.value(metadata double -1.000000e+32, metadata !795, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 -1, metadata !790, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double 1.000000e+32, metadata !796, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 -1, metadata !791, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 0, metadata !792, metadata !DIExpression()), !dbg !803
  br label %for.body, !dbg !896

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end200
  %28 = phi double [ %6, %if.end200 ], [ %.pre, %for.inc.for.body_crit_edge ], !dbg !898
  %i_in.0579 = phi i64 [ -1, %if.end200 ], [ %i_in.1, %for.inc.for.body_crit_edge ]
  %t_out.0578 = phi double [ 1.000000e+32, %if.end200 ], [ %t_out.1, %for.inc.for.body_crit_edge ]
  %t_in.0577 = phi double [ -1.000000e+32, %if.end200 ], [ %t_in.1, %for.inc.for.body_crit_edge ]
  %i.0575 = phi i64 [ 0, %if.end200 ], [ %inc, %for.inc.for.body_crit_edge ]
  %i_out.0574 = phi i64 [ -1, %if.end200 ], [ %i_out.1, %for.inc.for.body_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %i_in.0579, metadata !790, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %t_out.0578, metadata !796, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %t_in.0577, metadata !795, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %i.0575, metadata !792, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %i_out.0574, metadata !791, metadata !DIExpression()), !dbg !803
  %add203 = add nuw nsw i64 %i.0575, 3, !dbg !902
  %arrayidx204 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 %add203, !dbg !903
  %29 = load double, ptr %arrayidx204, align 8, !dbg !903
  %cmp205 = fcmp olt double %28, %29, !dbg !904
  %add203.i.0 = select i1 %cmp205, i64 %add203, i64 %i.0575
  %. = select i1 %cmp205, double %28, double %29
  %.572 = select i1 %cmp205, double %29, double %28
  call void @llvm.dbg.value(metadata double %.572, metadata !798, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %., metadata !797, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %add203.i.0, metadata !794, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 undef, metadata !793, metadata !DIExpression()), !dbg !803
  %cmp217 = fcmp olt double %t_in.0577, %., !dbg !905
  br i1 %cmp217, label %if.then218, label %if.end219, !dbg !907

if.then218:                                       ; preds = %for.body
  %i.0.add203 = select i1 %cmp205, i64 %i.0575, i64 %add203
  call void @llvm.dbg.value(metadata i64 %i.0.add203, metadata !793, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %., metadata !795, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 undef, metadata !790, metadata !DIExpression()), !dbg !803
  br label %if.end219, !dbg !908

if.end219:                                        ; preds = %if.then218, %for.body
  %t_in.1 = phi double [ %., %if.then218 ], [ %t_in.0577, %for.body ], !dbg !803
  %i_in.1 = phi i64 [ %i.0.add203, %if.then218 ], [ %i_in.0579, %for.body ], !dbg !803
  call void @llvm.dbg.value(metadata i64 %i_in.1, metadata !790, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %t_in.1, metadata !795, metadata !DIExpression()), !dbg !803
  %cmp220 = fcmp ogt double %t_out.0578, %.572, !dbg !910
  br i1 %cmp220, label %if.then221, label %for.inc, !dbg !912

if.then221:                                       ; preds = %if.end219
  call void @llvm.dbg.value(metadata double %.572, metadata !796, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %add203.i.0, metadata !791, metadata !DIExpression()), !dbg !803
  br label %for.inc, !dbg !913

for.inc:                                          ; preds = %if.end219, %if.then221
  %i_out.1 = phi i64 [ %add203.i.0, %if.then221 ], [ %i_out.0574, %if.end219 ], !dbg !803
  %t_out.1 = phi double [ %.572, %if.then221 ], [ %t_out.0578, %if.end219 ], !dbg !803
  call void @llvm.dbg.value(metadata double %t_out.1, metadata !796, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %i_out.1, metadata !791, metadata !DIExpression()), !dbg !803
  %inc = add nuw nsw i64 %i.0575, 1, !dbg !915
  call void @llvm.dbg.value(metadata i64 %i_in.1, metadata !790, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata double %t_in.1, metadata !795, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %inc, metadata !792, metadata !DIExpression()), !dbg !803
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !916
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge, !dbg !896, !llvm.loop !917

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %arrayidx202.phi.trans.insert = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 %inc
  %.pre = load double, ptr %arrayidx202.phi.trans.insert, align 8, !dbg !898
  br label %for.body, !dbg !896

for.end:                                          ; preds = %for.inc
  %cmp223 = fcmp oge double %t_in.1, %t_out.1, !dbg !919
  %cmp224 = fcmp olt double %t_out.1, 0.000000e+00
  %or.cond = or i1 %cmp223, %cmp224, !dbg !921
  br i1 %or.cond, label %cleanup, label %if.end226, !dbg !921

if.end226:                                        ; preds = %for.end
  %call = tail call ptr @ma_rayinfo(ptr noundef %r) #14, !dbg !922
  call void @llvm.dbg.value(metadata ptr %call, metadata !802, metadata !DIExpression()), !dbg !803
  %ri227 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 6, !dbg !923
  store ptr %call, ptr %ri227, align 8, !dbg !924
  store ptr %g, ptr %call, align 8, !dbg !925
  %30 = load double, ptr %t, align 16, !dbg !926
  %arrayidx229 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 3, !dbg !928
  %31 = load double, ptr %arrayidx229, align 8, !dbg !928
  %cmp230 = fcmp ult double %30, %31, !dbg !929
  br i1 %cmp230, label %if.else234, label %if.end238, !dbg !930

if.else234:                                       ; preds = %if.end226
  br label %if.end238

if.end238:                                        ; preds = %if.end226, %if.else234
  %.sink = phi double [ %31, %if.else234 ], [ %30, %if.end226 ], !dbg !931
  %32 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, !dbg !932
  store double %.sink, ptr %32, align 8, !dbg !933
  %arrayidx239 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 1, !dbg !934
  %33 = load double, ptr %arrayidx239, align 8, !dbg !934
  %arrayidx240 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 4, !dbg !936
  %34 = load double, ptr %arrayidx240, align 16, !dbg !936
  %cmp241 = fcmp ult double %33, %34, !dbg !937
  br i1 %cmp241, label %if.else246, label %if.end250, !dbg !938

if.else246:                                       ; preds = %if.end238
  br label %if.end250

if.end250:                                        ; preds = %if.end238, %if.else246
  %.sink580 = phi double [ %34, %if.else246 ], [ %33, %if.end238 ], !dbg !939
  %35 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, i64 1, !dbg !940
  store double %.sink580, ptr %35, align 8, !dbg !941
  %arrayidx251 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 2, !dbg !942
  %36 = load double, ptr %arrayidx251, align 16, !dbg !942
  %arrayidx252 = getelementptr inbounds [6 x double], ptr %t, i64 0, i64 5, !dbg !944
  %37 = load double, ptr %arrayidx252, align 8, !dbg !944
  %cmp253 = fcmp ult double %36, %37, !dbg !945
  br i1 %cmp253, label %if.else258, label %if.end262, !dbg !946

if.else258:                                       ; preds = %if.end250
  br label %if.end262

if.end262:                                        ; preds = %if.end250, %if.else258
  %.sink581 = phi double [ %37, %if.else258 ], [ %36, %if.end250 ], !dbg !947
  %38 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 1, i64 2, !dbg !948
  store double %.sink581, ptr %38, align 8, !dbg !949
  %cmp263 = icmp sgt i64 %i_in.1, 2, !dbg !950
  %sub265 = add nsw i64 %i_in.1, -3
  %spec.select = select i1 %cmp263, i64 %sub265, i64 %i_in.1, !dbg !952
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !790, metadata !DIExpression()), !dbg !803
  %cmp267 = icmp sgt i64 %i_out.1, 2, !dbg !953
  %sub269 = add nsw i64 %i_out.1, -3
  %spec.select573 = select i1 %cmp267, i64 %sub269, i64 %i_out.1, !dbg !955
  call void @llvm.dbg.value(metadata i64 %spec.select573, metadata !791, metadata !DIExpression()), !dbg !803
  %entry_plane = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 2, !dbg !956
  store i64 %spec.select, ptr %entry_plane, align 8, !dbg !957
  %t_in271 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 3, !dbg !958
  store double %t_in.1, ptr %t_in271, align 8, !dbg !959
  %t_out272 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 5, !dbg !960
  store double %t_out.1, ptr %t_out272, align 8, !dbg !961
  %exit_plane = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 4, !dbg !962
  store i64 %spec.select573, ptr %exit_plane, align 8, !dbg !963
  %39 = load double, ptr %D, align 8, !dbg !964
  %cmp275 = fcmp oeq double %39, 0.000000e+00, !dbg !965
  br i1 %cmp275, label %cond.end288, label %cond.false, !dbg !964

cond.false:                                       ; preds = %if.end262
  %cellsize276 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, !dbg !966
  %40 = load double, ptr %cellsize276, align 8, !dbg !967
  %cmp280 = fcmp ogt double %39, 0.000000e+00, !dbg !968
  br i1 %cmp280, label %cond.end, label %cond.false284, !dbg !968

cond.false284:                                    ; preds = %cond.false
  %fneg = fneg double %39, !dbg !968
  br label %cond.end, !dbg !968

cond.end:                                         ; preds = %cond.false, %cond.false284
  %cond = phi double [ %fneg, %cond.false284 ], [ %39, %cond.false ], !dbg !968
  %div287 = fdiv double %40, %cond, !dbg !969
  br label %cond.end288, !dbg !964

cond.end288:                                      ; preds = %if.end262, %cond.end
  %cond289 = phi double [ %div287, %cond.end ], [ 1.000000e+32, %if.end262 ], !dbg !964
  %delta = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 6, !dbg !970
  store double %cond289, ptr %delta, align 8, !dbg !971
  %41 = load double, ptr %arrayidx23, align 8, !dbg !972
  %cmp293 = fcmp oeq double %41, 0.000000e+00, !dbg !973
  br i1 %cmp293, label %cond.end311, label %cond.false295, !dbg !972

cond.false295:                                    ; preds = %cond.end288
  %arrayidx297 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 1, !dbg !974
  %42 = load double, ptr %arrayidx297, align 8, !dbg !974
  %cmp300 = fcmp ogt double %41, 0.000000e+00, !dbg !975
  br i1 %cmp300, label %cond.end308, label %cond.false304, !dbg !975

cond.false304:                                    ; preds = %cond.false295
  %fneg307 = fneg double %41, !dbg !975
  br label %cond.end308, !dbg !975

cond.end308:                                      ; preds = %cond.false295, %cond.false304
  %cond309 = phi double [ %fneg307, %cond.false304 ], [ %41, %cond.false295 ], !dbg !975
  %div310 = fdiv double %42, %cond309, !dbg !976
  br label %cond.end311, !dbg !972

cond.end311:                                      ; preds = %cond.end288, %cond.end308
  %cond312 = phi double [ %div310, %cond.end308 ], [ 1.000000e+32, %cond.end288 ], !dbg !972
  %arrayidx314 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 6, i64 1, !dbg !977
  store double %cond312, ptr %arrayidx314, align 8, !dbg !978
  %43 = load double, ptr %arrayidx57, align 8, !dbg !979
  %cmp317 = fcmp oeq double %43, 0.000000e+00, !dbg !980
  br i1 %cmp317, label %cond.end335, label %cond.false319, !dbg !979

cond.false319:                                    ; preds = %cond.end311
  %arrayidx321 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 2, !dbg !981
  %44 = load double, ptr %arrayidx321, align 8, !dbg !981
  %cmp324 = fcmp ogt double %43, 0.000000e+00, !dbg !982
  br i1 %cmp324, label %cond.end332, label %cond.false328, !dbg !982

cond.false328:                                    ; preds = %cond.false319
  %fneg331 = fneg double %43, !dbg !982
  br label %cond.end332, !dbg !982

cond.end332:                                      ; preds = %cond.false319, %cond.false328
  %cond333 = phi double [ %fneg331, %cond.false328 ], [ %43, %cond.false319 ], !dbg !982
  %div334 = fdiv double %44, %cond333, !dbg !983
  br label %cond.end335, !dbg !979

cond.end335:                                      ; preds = %cond.end311, %cond.end332
  %cond336 = phi double [ %div334, %cond.end332 ], [ 1.000000e+32, %cond.end311 ], !dbg !979
  %arrayidx338 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 6, i64 2, !dbg !984
  store double %cond336, ptr %arrayidx338, align 8, !dbg !985
  %index3D = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 7, !dbg !986
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %index3D, i8 0, i64 24, i1 false), !dbg !987
  %45 = load double, ptr %D, align 8, !dbg !988
  %cmp346 = fcmp oge double %45, 0.000000e+00, !dbg !989
  %conv = select i1 %cmp346, i64 1, i64 -1, !dbg !988
  %indx_inc3D = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 8, !dbg !990
  store i64 %conv, ptr %indx_inc3D, align 8, !dbg !991
  %46 = load double, ptr %arrayidx23, align 8, !dbg !992
  %cmp351 = fcmp oge double %46, 0.000000e+00, !dbg !993
  %conv354 = select i1 %cmp351, i64 1, i64 -1, !dbg !992
  %arrayidx356 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 8, i64 1, !dbg !994
  store i64 %conv354, ptr %arrayidx356, align 8, !dbg !995
  %47 = load double, ptr %arrayidx57, align 8, !dbg !996
  %cmp359 = fcmp oge double %47, 0.000000e+00, !dbg !997
  %conv362 = select i1 %cmp359, i64 1, i64 -1, !dbg !996
  %arrayidx364 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 8, i64 2, !dbg !998
  store i64 %conv362, ptr %arrayidx364, align 8, !dbg !999
  %index1D = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 8, !dbg !1000
  store i64 0, ptr %index1D, align 8, !dbg !1001
  %48 = load double, ptr %D, align 8, !dbg !1002
  %cmp367 = fcmp oge double %48, 0.000000e+00, !dbg !1003
  %conv370 = select i1 %cmp367, i64 1, i64 -1, !dbg !1002
  %indx_inc1D = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 9, !dbg !1004
  store i64 %conv370, ptr %indx_inc1D, align 8, !dbg !1005
  %49 = load double, ptr %arrayidx23, align 8, !dbg !1006
  %cmp374 = fcmp oge double %49, 0.000000e+00, !dbg !1007
  %conv377 = select i1 %cmp374, i64 1, i64 -1, !dbg !1006
  %arrayidx379 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 9, i64 1, !dbg !1008
  store i64 %conv377, ptr %arrayidx379, align 8, !dbg !1009
  %50 = load double, ptr %arrayidx57, align 8, !dbg !1010
  %cmp382 = fcmp oge double %50, 0.000000e+00, !dbg !1011
  %conv385 = select i1 %cmp382, i64 1, i64 -1, !dbg !1010
  %arrayidx387 = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 9, i64 2, !dbg !1012
  store i64 %conv385, ptr %arrayidx387, align 8, !dbg !1013
  %next = getelementptr inbounds %struct.rayinfo, ptr %call, i64 0, i32 10, !dbg !1014
  store ptr null, ptr %next, align 8, !dbg !1015
  call void @llvm.dbg.value(metadata ptr %status, metadata !787, metadata !DIExpression(DW_OP_deref)), !dbg !803
  %call388 = call ptr @next_nonempty_leaf(ptr noundef nonnull %r, i64 noundef 0, ptr noundef nonnull %status), !dbg !1016
  call void @llvm.dbg.value(metadata ptr %call388, metadata !800, metadata !DIExpression()), !dbg !803
  br label %cleanup, !dbg !803

cleanup:                                          ; preds = %cond.end335, %for.end
  %retval.0 = phi ptr [ null, %for.end ], [ %call388, %cond.end335 ], !dbg !803
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %t) #14, !dbg !1018
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %status) #14, !dbg !1018
  ret ptr %retval.0, !dbg !1018
}

declare !dbg !1019 void @reset_rayinfo(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "eps_t", scope: !2, file: !3, line: 37, type: !59, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !133, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "hutv.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "217ce87ce8845e9ee8a23301865b3d65")
!4 = !{!5, !6, !9, !14, !60}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !7, line: 298, baseType: !8)
!7 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRID", file: !7, line: 572, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "grid", file: !7, line: 539, size: 1152, elements: !12)
!12 = !{!13, !16, !35, !37, !107, !108, !110, !111, !112, !113, !114, !131}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !11, file: !7, line: 541, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !7, line: 297, baseType: !15)
!15 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "hashtable", scope: !11, file: !7, line: 542, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOXEL", file: !7, line: 405, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "voxel", file: !7, line: 394, size: 320, elements: !21)
!21 = !{!22, !23, !24, !26, !30, !31}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !20, file: !7, line: 396, baseType: !14, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !20, file: !7, line: 397, baseType: !14, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !20, file: !7, line: 398, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cell", scope: !20, file: !7, line: 399, baseType: !27, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !7, line: 287, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "celltype", scope: !20, file: !7, line: 400, baseType: !28, size: 8, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !20, file: !7, line: 403, baseType: !32, size: 56, offset: 264)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 56, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 7)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "emptycells", scope: !11, file: !7, line: 548, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "pepa", scope: !11, file: !7, line: 555, baseType: !38, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELEMENT", file: !7, line: 481, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "element", file: !7, line: 474, size: 576, elements: !42)
!42 = !{!43, !44, !105, !106}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !41, file: !7, line: 476, baseType: !14, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !41, file: !7, line: 477, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !7, line: 488, size: 1024, elements: !47)
!47 = !{!48, !49, !53, !64, !65, !66, !90, !104}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !46, file: !7, line: 490, baseType: !14, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !46, file: !7, line: 491, baseType: !50, size: 256, offset: 64)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !46, file: !7, line: 492, baseType: !54, size: 384, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !7, line: 418, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !7, line: 413, size: 384, elements: !56)
!56 = !{!57, !63}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !55, file: !7, line: 415, baseType: !58, size: 192)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 192, elements: !61)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !7, line: 310, baseType: !60)
!60 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !55, file: !7, line: 416, baseType: !58, size: 192, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !46, file: !7, line: 493, baseType: !39, size: 64, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !46, file: !7, line: 494, baseType: !14, size: 64, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !46, file: !7, line: 495, baseType: !67, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROCS", file: !7, line: 340, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pprocs", file: !7, line: 327, size: 640, elements: !70)
!70 = !{!71, !75, !79, !80, !81, !82, !86, !87, !88, !89}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !69, file: !7, line: 329, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!27, null}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !69, file: !7, line: 330, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{null, null}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !69, file: !7, line: 331, baseType: !76, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "binread", scope: !69, file: !7, line: 332, baseType: !76, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "transform", scope: !69, file: !7, line: 333, baseType: !76, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "intersect", scope: !69, file: !7, line: 334, baseType: !83, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!14, null}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pe_intersect", scope: !69, file: !7, line: 335, baseType: !83, size: 64, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !69, file: !7, line: 336, baseType: !76, size: 64, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !69, file: !7, line: 337, baseType: !76, size: 64, offset: 512)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !69, file: !7, line: 338, baseType: !76, size: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "surf", scope: !46, file: !7, line: 496, baseType: !91, size: 64, offset: 896)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "SURF", file: !7, line: 357, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "surf", file: !7, line: 347, size: 704, elements: !94)
!94 = !{!95, !98, !99, !100, !101, !102, !103}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "fcolor", scope: !93, file: !7, line: 349, baseType: !96, size: 192)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !7, line: 319, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !7, line: 314, baseType: !58)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "bcolor", scope: !93, file: !7, line: 350, baseType: !96, size: 192, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "kdiff", scope: !93, file: !7, line: 351, baseType: !59, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "kspec", scope: !93, file: !7, line: 352, baseType: !59, size: 64, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ktran", scope: !93, file: !7, line: 353, baseType: !59, size: 64, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "refrindex", scope: !93, file: !7, line: 354, baseType: !59, size: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "kspecn", scope: !93, file: !7, line: 355, baseType: !59, size: 64, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !46, file: !7, line: 497, baseType: !45, size: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, file: !7, line: 478, baseType: !27, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !41, file: !7, line: 479, baseType: !54, size: 384, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "num_prims", scope: !11, file: !7, line: 556, baseType: !14, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc", scope: !11, file: !7, line: 558, baseType: !109, size: 192, offset: 320)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !61)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !11, file: !7, line: 562, baseType: !14, size: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !11, file: !7, line: 563, baseType: !58, size: 192, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "cellsize", scope: !11, file: !7, line: 564, baseType: !58, size: 192, offset: 768)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "subdiv_level", scope: !11, file: !7, line: 566, baseType: !14, size: 64, offset: 960)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "bintree", scope: !11, file: !7, line: 569, baseType: !115, size: 64, offset: 1024)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "BTNODE", file: !7, line: 535, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btnode", file: !7, line: 522, size: 960, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !117, file: !7, line: 524, baseType: !38, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !117, file: !7, line: 525, baseType: !58, size: 192, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "nprims", scope: !117, file: !7, line: 527, baseType: !14, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !117, file: !7, line: 528, baseType: !109, size: 192, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !117, file: !7, line: 529, baseType: !109, size: 192, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !117, file: !7, line: 531, baseType: !14, size: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "totalPrimsAllocated", scope: !117, file: !7, line: 532, baseType: !14, size: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !117, file: !7, line: 533, baseType: !127, size: 128, offset: 832)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !129)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!129 = !{!130}
!130 = !DISubrange(count: 2)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !7, line: 570, baseType: !132, size: 64, offset: 1088)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!133 = !{!0}
!134 = !{i32 7, !"Dwarf Version", i32 5}
!135 = !{i32 2, !"Debug Info Version", i32 3}
!136 = !{i32 1, !"wchar_size", i32 4}
!137 = !{i32 7, !"PIC Level", i32 2}
!138 = !{i32 7, !"PIE Level", i32 2}
!139 = !{i32 7, !"uwtable", i32 2}
!140 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!141 = distinct !DISubprogram(name: "prn_tv_stats", scope: !3, file: !3, line: 54, type: !142, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{null}
!144 = !{}
!145 = !DILocation(line: 56, column: 2, scope: !141)
!146 = distinct !DISubprogram(name: "send_ray", scope: !3, file: !3, line: 76, type: !147, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !187)
!147 = !DISubroutineType(types: !148)
!148 = !{!14, !149, !18}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAY", file: !7, line: 625, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ray", file: !7, line: 611, size: 7104, elements: !152)
!152 = !{!153, !155, !156, !157, !158, !159, !160, !177, !178, !179, !183, !186}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !151, file: !7, line: 613, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !7, line: 301, baseType: !15)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !151, file: !7, line: 614, baseType: !14, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !151, file: !7, line: 614, baseType: !14, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !151, file: !7, line: 615, baseType: !97, size: 192, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !151, file: !7, line: 616, baseType: !97, size: 192, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !151, file: !7, line: 617, baseType: !14, size: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !151, file: !7, line: 618, baseType: !161, size: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAYINFO", file: !7, line: 603, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rayinfo", file: !7, line: 582, size: 1216, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "grid", scope: !163, file: !7, line: 584, baseType: !9, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !163, file: !7, line: 585, baseType: !58, size: 192, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "entry_plane", scope: !163, file: !7, line: 587, baseType: !14, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "t_in", scope: !163, file: !7, line: 589, baseType: !59, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "exit_plane", scope: !163, file: !7, line: 591, baseType: !14, size: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "t_out", scope: !163, file: !7, line: 593, baseType: !59, size: 64, offset: 448)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !163, file: !7, line: 595, baseType: !58, size: 192, offset: 512)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "index3D", scope: !163, file: !7, line: 596, baseType: !109, size: 192, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "index1D", scope: !163, file: !7, line: 597, baseType: !14, size: 64, offset: 896)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc1D", scope: !163, file: !7, line: 600, baseType: !109, size: 192, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !7, line: 601, baseType: !176, size: 64, offset: 1152)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ri_indx", scope: !151, file: !7, line: 619, baseType: !14, size: 64, offset: 704)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc3D", scope: !151, file: !7, line: 620, baseType: !109, size: 192, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "rinfo", scope: !151, file: !7, line: 621, baseType: !180, size: 6080, offset: 960)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 6080, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 5)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !151, file: !7, line: 622, baseType: !184, size: 32, offset: 7040)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "R32", file: !7, line: 307, baseType: !185)
!185 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !151, file: !7, line: 623, baseType: !184, size: 32, offset: 7072)
!187 = !{!188, !189}
!188 = !DILocalVariable(name: "r", arg: 1, scope: !146, file: !3, line: 76, type: !149)
!189 = !DILocalVariable(name: "v", arg: 2, scope: !146, file: !3, line: 76, type: !18)
!190 = !DILocation(line: 0, scope: !146)
!191 = !DILocation(line: 78, column: 3, scope: !146)
!192 = distinct !DISubprogram(name: "lookup_hashtable", scope: !3, file: !3, line: 103, type: !193, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{!18, !14, !9}
!195 = !{!196, !197, !198, !199}
!196 = !DILocalVariable(name: "indx", arg: 1, scope: !192, file: !3, line: 103, type: !14)
!197 = !DILocalVariable(name: "g", arg: 2, scope: !192, file: !3, line: 103, type: !9)
!198 = !DILocalVariable(name: "i", scope: !192, file: !3, line: 105, type: !14)
!199 = !DILocalVariable(name: "v", scope: !192, file: !3, line: 106, type: !18)
!200 = !DILocation(line: 0, scope: !192)
!201 = !DILocation(line: 108, column: 25, scope: !192)
!202 = !DILocation(line: 108, column: 38, scope: !192)
!203 = !DILocation(line: 109, column: 9, scope: !192)
!204 = !DILocation(line: 109, column: 6, scope: !192)
!205 = !DILocation(line: 111, column: 2, scope: !192)
!206 = !DILocation(line: 111, column: 12, scope: !192)
!207 = !DILocation(line: 111, column: 15, scope: !192)
!208 = !DILocation(line: 113, column: 10, scope: !209)
!209 = distinct !DILexicalBlock(scope: !192, file: !3, line: 112, column: 3)
!210 = !DILocation(line: 114, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !209, file: !3, line: 114, column: 7)
!212 = !DILocation(line: 114, column: 7, scope: !209)
!213 = distinct !{!213, !205, !214, !215, !216}
!214 = !DILocation(line: 119, column: 3, scope: !192)
!215 = !{!"llvm.loop.mustprogress"}
!216 = !{!"llvm.loop.unroll.disable"}
!217 = !DILocation(line: 116, column: 12, scope: !218)
!218 = distinct !DILexicalBlock(scope: !211, file: !3, line: 115, column: 4)
!219 = !DILocation(line: 116, column: 4, scope: !218)
!220 = !DILocation(line: 117, column: 4, scope: !218)
!221 = !DILocation(line: 121, column: 2, scope: !192)
!222 = distinct !DISubprogram(name: "lookup_emptycells", scope: !3, file: !3, line: 144, type: !223, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{!14, !14, !9}
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233}
!226 = !DILocalVariable(name: "indx", arg: 1, scope: !222, file: !3, line: 144, type: !14)
!227 = !DILocalVariable(name: "g", arg: 2, scope: !222, file: !3, line: 144, type: !9)
!228 = !DILocalVariable(name: "i", scope: !222, file: !3, line: 146, type: !14)
!229 = !DILocalVariable(name: "w", scope: !222, file: !3, line: 146, type: !14)
!230 = !DILocalVariable(name: "r", scope: !222, file: !3, line: 146, type: !14)
!231 = !DILocalVariable(name: "num_bits", scope: !222, file: !3, line: 146, type: !14)
!232 = !DILocalVariable(name: "p", scope: !222, file: !3, line: 147, type: !6)
!233 = !DILocalVariable(name: "b", scope: !222, file: !3, line: 147, type: !6)
!234 = !DILocation(line: 0, scope: !222)
!235 = !DILocation(line: 151, column: 11, scope: !222)
!236 = !DILocation(line: 152, column: 15, scope: !222)
!237 = !DILocation(line: 152, column: 11, scope: !222)
!238 = !DILocation(line: 153, column: 9, scope: !222)
!239 = !DILocation(line: 153, column: 6, scope: !222)
!240 = !DILocation(line: 154, column: 15, scope: !222)
!241 = !DILocation(line: 154, column: 8, scope: !222)
!242 = !DILocation(line: 155, column: 8, scope: !222)
!243 = !DILocation(line: 157, column: 2, scope: !222)
!244 = distinct !DISubprogram(name: "pop_up_a_grid", scope: !3, file: !3, line: 179, type: !245, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !149}
!247 = !{!248, !249}
!248 = !DILocalVariable(name: "r", arg: 1, scope: !244, file: !3, line: 179, type: !149)
!249 = !DILocalVariable(name: "old_ri", scope: !244, file: !3, line: 181, type: !161)
!250 = !DILocation(line: 0, scope: !244)
!251 = !DILocation(line: 183, column: 14, scope: !244)
!252 = !DILocation(line: 184, column: 19, scope: !244)
!253 = !DILocation(line: 184, column: 9, scope: !244)
!254 = !DILocation(line: 186, column: 2, scope: !244)
!255 = !DILocation(line: 188, column: 2, scope: !244)
!256 = !DISubprogram(name: "free_rayinfo", scope: !7, file: !7, line: 918, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
!257 = distinct !DISubprogram(name: "push_down_grid", scope: !3, file: !3, line: 209, type: !258, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !149, !18}
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !282, !283, !284, !285}
!261 = !DILocalVariable(name: "r", arg: 1, scope: !257, file: !3, line: 209, type: !149)
!262 = !DILocalVariable(name: "v", arg: 2, scope: !257, file: !3, line: 209, type: !18)
!263 = !DILocalVariable(name: "n", scope: !257, file: !3, line: 211, type: !14)
!264 = !DILocalVariable(name: "small", scope: !257, file: !3, line: 212, type: !14)
!265 = !DILocalVariable(name: "i_in", scope: !257, file: !3, line: 213, type: !14)
!266 = !DILocalVariable(name: "i_out", scope: !257, file: !3, line: 213, type: !14)
!267 = !DILocalVariable(name: "i", scope: !257, file: !3, line: 213, type: !14)
!268 = !DILocalVariable(name: "il", scope: !257, file: !3, line: 213, type: !14)
!269 = !DILocalVariable(name: "ih", scope: !257, file: !3, line: 213, type: !14)
!270 = !DILocalVariable(name: "wc", scope: !257, file: !3, line: 214, type: !58)
!271 = !DILocalVariable(name: "ti", scope: !257, file: !3, line: 215, type: !59)
!272 = !DILocalVariable(name: "del1", scope: !257, file: !3, line: 216, type: !59)
!273 = !DILocalVariable(name: "del2", scope: !257, file: !3, line: 216, type: !59)
!274 = !DILocalVariable(name: "t_in", scope: !257, file: !3, line: 217, type: !59)
!275 = !DILocalVariable(name: "t_out", scope: !257, file: !3, line: 217, type: !59)
!276 = !DILocalVariable(name: "tl", scope: !257, file: !3, line: 217, type: !59)
!277 = !DILocalVariable(name: "th", scope: !257, file: !3, line: 217, type: !59)
!278 = !DILocalVariable(name: "t", scope: !257, file: !3, line: 218, type: !279)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 384, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 6)
!282 = !DILocalVariable(name: "min", scope: !257, file: !3, line: 218, type: !58)
!283 = !DILocalVariable(name: "new_g", scope: !257, file: !3, line: 219, type: !9)
!284 = !DILocalVariable(name: "new_ri", scope: !257, file: !3, line: 220, type: !161)
!285 = !DILocalVariable(name: "old_ri", scope: !257, file: !3, line: 221, type: !161)
!286 = !DILocation(line: 0, scope: !257)
!287 = !DILocation(line: 218, column: 2, scope: !257)
!288 = !DILocation(line: 218, column: 7, scope: !257)
!289 = !DILocation(line: 223, column: 14, scope: !257)
!290 = !DILocation(line: 224, column: 22, scope: !257)
!291 = !DILocation(line: 226, column: 11, scope: !257)
!292 = !DILocation(line: 227, column: 9, scope: !257)
!293 = !DILocation(line: 229, column: 10, scope: !257)
!294 = !DILocation(line: 229, column: 15, scope: !257)
!295 = !DILocation(line: 230, column: 15, scope: !257)
!296 = !DILocation(line: 232, column: 6, scope: !257)
!297 = !DILocation(line: 234, column: 29, scope: !257)
!298 = !DILocation(line: 234, column: 21, scope: !257)
!299 = !DILocation(line: 234, column: 38, scope: !257)
!300 = !DILocation(line: 234, column: 37, scope: !257)
!301 = !DILocation(line: 234, column: 10, scope: !257)
!302 = !DILocation(line: 234, column: 19, scope: !257)
!303 = !DILocation(line: 235, column: 21, scope: !257)
!304 = !DILocation(line: 235, column: 37, scope: !257)
!305 = !DILocation(line: 235, column: 2, scope: !257)
!306 = !DILocation(line: 235, column: 19, scope: !257)
!307 = !DILocation(line: 236, column: 21, scope: !257)
!308 = !DILocation(line: 236, column: 37, scope: !257)
!309 = !DILocation(line: 236, column: 2, scope: !257)
!310 = !DILocation(line: 236, column: 19, scope: !257)
!311 = !DILocation(line: 238, column: 14, scope: !312)
!312 = distinct !DILexicalBlock(scope: !257, file: !3, line: 238, column: 6)
!313 = !DILocation(line: 238, column: 19, scope: !312)
!314 = !DILocation(line: 238, column: 6, scope: !257)
!315 = !DILocation(line: 242, column: 33, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !3, line: 239, column: 3)
!317 = !DILocation(line: 242, column: 11, scope: !316)
!318 = !DILocation(line: 242, column: 23, scope: !316)
!319 = !DILocation(line: 243, column: 26, scope: !316)
!320 = !DILocation(line: 243, column: 11, scope: !316)
!321 = !DILocation(line: 243, column: 16, scope: !316)
!322 = !DILocation(line: 244, column: 16, scope: !316)
!323 = !DILocation(line: 244, column: 23, scope: !316)
!324 = !DILocation(line: 244, column: 21, scope: !316)
!325 = !DILocation(line: 245, column: 3, scope: !316)
!326 = !DILocation(line: 251, column: 11, scope: !327)
!327 = distinct !DILexicalBlock(scope: !312, file: !3, line: 247, column: 3)
!328 = !DILocation(line: 251, column: 23, scope: !327)
!329 = !DILocation(line: 252, column: 26, scope: !327)
!330 = !DILocation(line: 252, column: 11, scope: !327)
!331 = !DILocation(line: 252, column: 16, scope: !327)
!332 = !DILocation(line: 293, column: 18, scope: !257)
!333 = !DILocation(line: 0, scope: !312)
!334 = !DILocation(line: 255, column: 16, scope: !257)
!335 = !DILocation(line: 255, column: 13, scope: !257)
!336 = !DILocation(line: 255, column: 26, scope: !257)
!337 = !DILocation(line: 255, column: 23, scope: !257)
!338 = !DILocation(line: 255, column: 21, scope: !257)
!339 = !DILocation(line: 256, column: 13, scope: !257)
!340 = !DILocation(line: 256, column: 23, scope: !257)
!341 = !DILocation(line: 256, column: 21, scope: !257)
!342 = !DILocation(line: 257, column: 13, scope: !257)
!343 = !DILocation(line: 257, column: 23, scope: !257)
!344 = !DILocation(line: 257, column: 21, scope: !257)
!345 = !DILocation(line: 260, column: 45, scope: !257)
!346 = !DILocation(line: 260, column: 38, scope: !257)
!347 = !DILocation(line: 260, column: 36, scope: !257)
!348 = !DILocation(line: 260, column: 62, scope: !257)
!349 = !DILocation(line: 260, column: 55, scope: !257)
!350 = !DILocation(line: 260, column: 53, scope: !257)
!351 = !DILocation(line: 260, column: 23, scope: !257)
!352 = !DILocation(line: 260, column: 10, scope: !257)
!353 = !DILocation(line: 262, column: 6, scope: !257)
!354 = !DILocation(line: 265, column: 25, scope: !355)
!355 = distinct !DILexicalBlock(scope: !257, file: !3, line: 265, column: 6)
!356 = !DILocation(line: 265, column: 6, scope: !257)
!357 = !DILocation(line: 269, column: 38, scope: !257)
!358 = !DILocation(line: 269, column: 36, scope: !257)
!359 = !DILocation(line: 269, column: 55, scope: !257)
!360 = !DILocation(line: 269, column: 53, scope: !257)
!361 = !DILocation(line: 269, column: 23, scope: !257)
!362 = !DILocation(line: 269, column: 2, scope: !257)
!363 = !DILocation(line: 271, column: 6, scope: !257)
!364 = !DILocation(line: 274, column: 25, scope: !365)
!365 = distinct !DILexicalBlock(scope: !257, file: !3, line: 274, column: 6)
!366 = !DILocation(line: 274, column: 6, scope: !257)
!367 = !DILocation(line: 278, column: 38, scope: !257)
!368 = !DILocation(line: 278, column: 36, scope: !257)
!369 = !DILocation(line: 278, column: 55, scope: !257)
!370 = !DILocation(line: 278, column: 53, scope: !257)
!371 = !DILocation(line: 278, column: 23, scope: !257)
!372 = !DILocation(line: 278, column: 2, scope: !257)
!373 = !DILocation(line: 280, column: 6, scope: !257)
!374 = !DILocation(line: 283, column: 25, scope: !375)
!375 = distinct !DILexicalBlock(scope: !257, file: !3, line: 283, column: 6)
!376 = !DILocation(line: 283, column: 6, scope: !257)
!377 = !DILocation(line: 287, column: 59, scope: !257)
!378 = !DILocation(line: 287, column: 39, scope: !257)
!379 = !DILocation(line: 287, column: 83, scope: !257)
!380 = !DILocation(line: 287, column: 82, scope: !257)
!381 = !DILocation(line: 287, column: 62, scope: !257)
!382 = !DILocation(line: 287, column: 10, scope: !257)
!383 = !DILocation(line: 287, column: 18, scope: !257)
!384 = !DILocation(line: 289, column: 29, scope: !257)
!385 = !DILocation(line: 289, column: 26, scope: !257)
!386 = !DILocation(line: 289, column: 10, scope: !257)
!387 = !DILocation(line: 289, column: 24, scope: !257)
!388 = !DILocation(line: 290, column: 26, scope: !257)
!389 = !DILocation(line: 290, column: 42, scope: !257)
!390 = !DILocation(line: 290, column: 2, scope: !257)
!391 = !DILocation(line: 290, column: 24, scope: !257)
!392 = !DILocation(line: 291, column: 26, scope: !257)
!393 = !DILocation(line: 291, column: 43, scope: !257)
!394 = !DILocation(line: 291, column: 42, scope: !257)
!395 = !DILocation(line: 291, column: 2, scope: !257)
!396 = !DILocation(line: 291, column: 24, scope: !257)
!397 = !DILocation(line: 293, column: 2, scope: !257)
!398 = !DILocation(line: 296, column: 24, scope: !399)
!399 = distinct !DILexicalBlock(scope: !257, file: !3, line: 294, column: 3)
!400 = !DILocation(line: 296, column: 4, scope: !399)
!401 = !DILocation(line: 299, column: 27, scope: !399)
!402 = !DILocation(line: 299, column: 32, scope: !399)
!403 = !DILocation(line: 299, column: 12, scope: !399)
!404 = !DILocation(line: 299, column: 17, scope: !399)
!405 = !DILocation(line: 301, column: 25, scope: !399)
!406 = !DILocation(line: 301, column: 38, scope: !399)
!407 = !DILocation(line: 301, column: 11, scope: !399)
!408 = !DILocation(line: 304, column: 16, scope: !409)
!409 = distinct !DILexicalBlock(scope: !399, file: !3, line: 304, column: 8)
!410 = !DILocation(line: 304, column: 13, scope: !409)
!411 = !DILocation(line: 0, scope: !409)
!412 = !DILocation(line: 304, column: 8, scope: !399)
!413 = !DILocation(line: 305, column: 35, scope: !409)
!414 = !DILocation(line: 305, column: 33, scope: !409)
!415 = !DILocation(line: 305, column: 5, scope: !409)
!416 = !DILocation(line: 307, column: 33, scope: !409)
!417 = !DILocation(line: 307, column: 5, scope: !409)
!418 = !DILocation(line: 307, column: 18, scope: !409)
!419 = !DILocation(line: 309, column: 24, scope: !399)
!420 = !DILocation(line: 309, column: 37, scope: !399)
!421 = !DILocation(line: 310, column: 12, scope: !399)
!422 = !DILocation(line: 309, column: 10, scope: !399)
!423 = !DILocation(line: 312, column: 16, scope: !424)
!424 = distinct !DILexicalBlock(scope: !399, file: !3, line: 312, column: 8)
!425 = !DILocation(line: 312, column: 13, scope: !424)
!426 = !DILocation(line: 0, scope: !424)
!427 = !DILocation(line: 312, column: 8, scope: !399)
!428 = !DILocation(line: 313, column: 35, scope: !424)
!429 = !DILocation(line: 313, column: 33, scope: !424)
!430 = !DILocation(line: 313, column: 5, scope: !424)
!431 = !DILocation(line: 315, column: 33, scope: !424)
!432 = !DILocation(line: 315, column: 5, scope: !424)
!433 = !DILocation(line: 315, column: 18, scope: !424)
!434 = !DILocation(line: 317, column: 12, scope: !399)
!435 = !DILocation(line: 317, column: 28, scope: !399)
!436 = !DILocation(line: 317, column: 25, scope: !399)
!437 = !DILocation(line: 318, column: 12, scope: !399)
!438 = !DILocation(line: 318, column: 29, scope: !399)
!439 = !DILocation(line: 325, column: 24, scope: !399)
!440 = !DILocation(line: 325, column: 4, scope: !399)
!441 = !DILocation(line: 328, column: 27, scope: !399)
!442 = !DILocation(line: 328, column: 32, scope: !399)
!443 = !DILocation(line: 328, column: 12, scope: !399)
!444 = !DILocation(line: 328, column: 4, scope: !399)
!445 = !DILocation(line: 328, column: 17, scope: !399)
!446 = !DILocation(line: 330, column: 33, scope: !399)
!447 = !DILocation(line: 330, column: 25, scope: !399)
!448 = !DILocation(line: 330, column: 38, scope: !399)
!449 = !DILocation(line: 330, column: 11, scope: !399)
!450 = !DILocation(line: 333, column: 16, scope: !451)
!451 = distinct !DILexicalBlock(scope: !399, file: !3, line: 333, column: 8)
!452 = !DILocation(line: 333, column: 13, scope: !451)
!453 = !DILocation(line: 0, scope: !451)
!454 = !DILocation(line: 333, column: 8, scope: !399)
!455 = !DILocation(line: 334, column: 35, scope: !451)
!456 = !DILocation(line: 334, column: 33, scope: !451)
!457 = !DILocation(line: 334, column: 5, scope: !451)
!458 = !DILocation(line: 336, column: 33, scope: !451)
!459 = !DILocation(line: 338, column: 25, scope: !399)
!460 = !DILocation(line: 338, column: 38, scope: !399)
!461 = !DILocation(line: 339, column: 12, scope: !399)
!462 = !DILocation(line: 338, column: 11, scope: !399)
!463 = !DILocation(line: 341, column: 16, scope: !464)
!464 = distinct !DILexicalBlock(scope: !399, file: !3, line: 341, column: 8)
!465 = !DILocation(line: 341, column: 13, scope: !464)
!466 = !DILocation(line: 0, scope: !464)
!467 = !DILocation(line: 341, column: 8, scope: !399)
!468 = !DILocation(line: 342, column: 35, scope: !464)
!469 = !DILocation(line: 342, column: 33, scope: !464)
!470 = !DILocation(line: 342, column: 5, scope: !464)
!471 = !DILocation(line: 344, column: 33, scope: !464)
!472 = !DILocation(line: 344, column: 5, scope: !464)
!473 = !DILocation(line: 344, column: 18, scope: !464)
!474 = !DILocation(line: 346, column: 12, scope: !399)
!475 = !DILocation(line: 346, column: 28, scope: !399)
!476 = !DILocation(line: 346, column: 25, scope: !399)
!477 = !DILocation(line: 347, column: 12, scope: !399)
!478 = !DILocation(line: 347, column: 29, scope: !399)
!479 = !DILocation(line: 354, column: 24, scope: !399)
!480 = !DILocation(line: 354, column: 4, scope: !399)
!481 = !DILocation(line: 357, column: 27, scope: !399)
!482 = !DILocation(line: 357, column: 32, scope: !399)
!483 = !DILocation(line: 357, column: 12, scope: !399)
!484 = !DILocation(line: 357, column: 4, scope: !399)
!485 = !DILocation(line: 357, column: 17, scope: !399)
!486 = !DILocation(line: 359, column: 33, scope: !399)
!487 = !DILocation(line: 359, column: 25, scope: !399)
!488 = !DILocation(line: 359, column: 38, scope: !399)
!489 = !DILocation(line: 359, column: 11, scope: !399)
!490 = !DILocation(line: 362, column: 16, scope: !491)
!491 = distinct !DILexicalBlock(scope: !399, file: !3, line: 362, column: 8)
!492 = !DILocation(line: 362, column: 13, scope: !491)
!493 = !DILocation(line: 0, scope: !491)
!494 = !DILocation(line: 362, column: 8, scope: !399)
!495 = !DILocation(line: 363, column: 35, scope: !491)
!496 = !DILocation(line: 363, column: 33, scope: !491)
!497 = !DILocation(line: 363, column: 5, scope: !491)
!498 = !DILocation(line: 365, column: 33, scope: !491)
!499 = !DILocation(line: 367, column: 25, scope: !399)
!500 = !DILocation(line: 367, column: 38, scope: !399)
!501 = !DILocation(line: 368, column: 12, scope: !399)
!502 = !DILocation(line: 367, column: 11, scope: !399)
!503 = !DILocation(line: 370, column: 16, scope: !504)
!504 = distinct !DILexicalBlock(scope: !399, file: !3, line: 370, column: 8)
!505 = !DILocation(line: 370, column: 13, scope: !504)
!506 = !DILocation(line: 0, scope: !504)
!507 = !DILocation(line: 370, column: 8, scope: !399)
!508 = !DILocation(line: 371, column: 35, scope: !504)
!509 = !DILocation(line: 371, column: 33, scope: !504)
!510 = !DILocation(line: 371, column: 5, scope: !504)
!511 = !DILocation(line: 373, column: 33, scope: !504)
!512 = !DILocation(line: 373, column: 5, scope: !504)
!513 = !DILocation(line: 373, column: 18, scope: !504)
!514 = !DILocation(line: 375, column: 12, scope: !399)
!515 = !DILocation(line: 375, column: 25, scope: !399)
!516 = !DILocation(line: 376, column: 12, scope: !399)
!517 = !DILocation(line: 376, column: 32, scope: !399)
!518 = !DILocation(line: 376, column: 29, scope: !399)
!519 = !DILocation(line: 384, column: 13, scope: !399)
!520 = !DILocation(line: 384, column: 29, scope: !399)
!521 = !DILocation(line: 384, column: 48, scope: !399)
!522 = !DILocation(line: 384, column: 27, scope: !399)
!523 = !DILocation(line: 385, column: 13, scope: !399)
!524 = !DILocation(line: 385, column: 29, scope: !399)
!525 = !DILocation(line: 385, column: 48, scope: !399)
!526 = !DILocation(line: 385, column: 27, scope: !399)
!527 = !DILocation(line: 386, column: 13, scope: !399)
!528 = !DILocation(line: 386, column: 29, scope: !399)
!529 = !DILocation(line: 386, column: 48, scope: !399)
!530 = !DILocation(line: 386, column: 27, scope: !399)
!531 = !DILocation(line: 388, column: 8, scope: !532)
!532 = distinct !DILexicalBlock(scope: !399, file: !3, line: 388, column: 8)
!533 = !DILocation(line: 388, column: 16, scope: !532)
!534 = !DILocation(line: 0, scope: !532)
!535 = !DILocation(line: 388, column: 8, scope: !399)
!536 = !DILocation(line: 390, column: 17, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 390, column: 9)
!538 = distinct !DILexicalBlock(scope: !532, file: !3, line: 389, column: 5)
!539 = !DILocation(line: 390, column: 27, scope: !537)
!540 = !DILocation(line: 391, column: 11, scope: !537)
!541 = !DILocation(line: 391, column: 6, scope: !537)
!542 = !DILocation(line: 393, column: 11, scope: !537)
!543 = !DILocation(line: 396, column: 20, scope: !532)
!544 = !DILocation(line: 396, column: 31, scope: !532)
!545 = !DILocation(line: 396, column: 10, scope: !532)
!546 = !DILocation(line: 399, column: 8, scope: !547)
!547 = distinct !DILexicalBlock(scope: !399, file: !3, line: 399, column: 8)
!548 = !DILocation(line: 399, column: 16, scope: !547)
!549 = !DILocation(line: 0, scope: !547)
!550 = !DILocation(line: 399, column: 8, scope: !399)
!551 = !DILocation(line: 401, column: 17, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 401, column: 9)
!553 = distinct !DILexicalBlock(scope: !547, file: !3, line: 400, column: 5)
!554 = !DILocation(line: 401, column: 27, scope: !552)
!555 = !DILocation(line: 407, column: 20, scope: !547)
!556 = !DILocation(line: 407, column: 31, scope: !547)
!557 = !DILocation(line: 410, column: 8, scope: !558)
!558 = distinct !DILexicalBlock(scope: !399, file: !3, line: 410, column: 8)
!559 = !DILocation(line: 410, column: 16, scope: !558)
!560 = !DILocation(line: 0, scope: !558)
!561 = !DILocation(line: 410, column: 8, scope: !399)
!562 = !DILocation(line: 412, column: 17, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !3, line: 412, column: 9)
!564 = distinct !DILexicalBlock(scope: !558, file: !3, line: 411, column: 5)
!565 = !DILocation(line: 412, column: 27, scope: !563)
!566 = !DILocation(line: 418, column: 20, scope: !558)
!567 = !DILocation(line: 418, column: 31, scope: !558)
!568 = !DILocation(line: 421, column: 8, scope: !399)
!569 = !DILocation(line: 429, column: 20, scope: !570)
!570 = distinct !DILexicalBlock(scope: !399, file: !3, line: 421, column: 8)
!571 = !DILocation(line: 429, column: 41, scope: !570)
!572 = !DILocation(line: 429, column: 52, scope: !570)
!573 = !DILocation(line: 0, scope: !570)
!574 = !DILocation(line: 432, column: 8, scope: !399)
!575 = !DILocation(line: 440, column: 20, scope: !576)
!576 = distinct !DILexicalBlock(scope: !399, file: !3, line: 432, column: 8)
!577 = !DILocation(line: 440, column: 41, scope: !576)
!578 = !DILocation(line: 440, column: 52, scope: !576)
!579 = !DILocation(line: 0, scope: !576)
!580 = !DILocation(line: 442, column: 8, scope: !399)
!581 = !DILocation(line: 450, column: 20, scope: !582)
!582 = distinct !DILexicalBlock(scope: !399, file: !3, line: 442, column: 8)
!583 = !DILocation(line: 450, column: 41, scope: !582)
!584 = !DILocation(line: 450, column: 52, scope: !582)
!585 = !DILocation(line: 0, scope: !582)
!586 = !DILocation(line: 457, column: 4, scope: !587)
!587 = distinct !DILexicalBlock(scope: !399, file: !3, line: 457, column: 4)
!588 = !DILocation(line: 459, column: 9, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 459, column: 9)
!590 = distinct !DILexicalBlock(scope: !591, file: !3, line: 458, column: 5)
!591 = distinct !DILexicalBlock(scope: !587, file: !3, line: 457, column: 4)
!592 = !DILocation(line: 459, column: 20, scope: !589)
!593 = !DILocation(line: 459, column: 16, scope: !589)
!594 = !DILocation(line: 459, column: 14, scope: !589)
!595 = !DILocation(line: 474, column: 5, scope: !590)
!596 = !DILocation(line: 474, column: 18, scope: !590)
!597 = !DILocation(line: 475, column: 14, scope: !598)
!598 = distinct !DILexicalBlock(scope: !590, file: !3, line: 475, column: 9)
!599 = !DILocation(line: 475, column: 9, scope: !590)
!600 = !DILocation(line: 479, column: 6, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !3, line: 476, column: 6)
!602 = !DILocation(line: 0, scope: !399)
!603 = !DILocation(line: 481, column: 15, scope: !604)
!604 = distinct !DILexicalBlock(scope: !590, file: !3, line: 481, column: 9)
!605 = !DILocation(line: 481, column: 9, scope: !590)
!606 = !DILocation(line: 485, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !3, line: 482, column: 6)
!608 = !DILocation(line: 457, column: 24, scope: !591)
!609 = !DILocation(line: 457, column: 18, scope: !591)
!610 = distinct !{!610, !586, !611, !215, !216}
!611 = !DILocation(line: 486, column: 5, scope: !587)
!612 = !DILocation(line: 488, column: 14, scope: !613)
!613 = distinct !DILexicalBlock(scope: !399, file: !3, line: 488, column: 8)
!614 = !DILocation(line: 488, column: 23, scope: !613)
!615 = !DILocation(line: 490, column: 13, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !3, line: 489, column: 5)
!617 = !DILocation(line: 490, column: 5, scope: !616)
!618 = !DILocation(line: 491, column: 5, scope: !616)
!619 = !DILocation(line: 494, column: 13, scope: !620)
!620 = distinct !DILexicalBlock(scope: !399, file: !3, line: 494, column: 8)
!621 = !DILocation(line: 494, column: 8, scope: !399)
!622 = !DILocation(line: 497, column: 14, scope: !623)
!623 = distinct !DILexicalBlock(scope: !399, file: !3, line: 497, column: 8)
!624 = !DILocation(line: 497, column: 8, scope: !399)
!625 = !DILocation(line: 500, column: 24, scope: !399)
!626 = !DILocation(line: 501, column: 12, scope: !399)
!627 = !DILocation(line: 501, column: 21, scope: !399)
!628 = !DILocation(line: 504, column: 4, scope: !399)
!629 = !DILocation(line: 506, column: 2, scope: !257)
!630 = !DISubprogram(name: "ma_rayinfo", scope: !7, file: !7, line: 917, type: !631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
!631 = !DISubroutineType(types: !632)
!632 = !{!161, !149}
!633 = distinct !DISubprogram(name: "step_grid", scope: !3, file: !3, line: 530, type: !634, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{!14, !149}
!636 = !{!637, !638, !639, !640, !642, !643, !644}
!637 = !DILocalVariable(name: "r", arg: 1, scope: !633, file: !3, line: 530, type: !149)
!638 = !DILocalVariable(name: "n", scope: !633, file: !3, line: 532, type: !14)
!639 = !DILocalVariable(name: "small", scope: !633, file: !3, line: 533, type: !14)
!640 = !DILocalVariable(name: "indx", scope: !633, file: !3, line: 534, type: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!642 = !DILocalVariable(name: "ra", scope: !633, file: !3, line: 535, type: !149)
!643 = !DILocalVariable(name: "gr", scope: !633, file: !3, line: 536, type: !9)
!644 = !DILocalVariable(name: "rinfo", scope: !633, file: !3, line: 537, type: !161)
!645 = !DILocation(line: 0, scope: !633)
!646 = !DILocation(line: 540, column: 13, scope: !633)
!647 = !DILocation(line: 541, column: 17, scope: !633)
!648 = !DILocation(line: 542, column: 14, scope: !633)
!649 = !DILocation(line: 543, column: 10, scope: !633)
!650 = !DILocation(line: 546, column: 23, scope: !633)
!651 = !DILocation(line: 546, column: 9, scope: !633)
!652 = !DILocation(line: 546, column: 14, scope: !633)
!653 = !DILocation(line: 547, column: 60, scope: !633)
!654 = !DILocation(line: 547, column: 39, scope: !633)
!655 = !DILocation(line: 547, column: 2, scope: !633)
!656 = !DILocation(line: 547, column: 36, scope: !633)
!657 = !DILocation(line: 548, column: 30, scope: !633)
!658 = !DILocation(line: 548, column: 9, scope: !633)
!659 = !DILocation(line: 548, column: 21, scope: !633)
!660 = !DILocation(line: 550, column: 6, scope: !661)
!661 = distinct !DILexicalBlock(scope: !633, file: !3, line: 550, column: 6)
!662 = !DILocation(line: 550, column: 40, scope: !661)
!663 = !DILocation(line: 550, column: 44, scope: !661)
!664 = !DILocation(line: 560, column: 34, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !3, line: 557, column: 3)
!666 = !DILocation(line: 560, column: 10, scope: !665)
!667 = !DILocation(line: 560, column: 3, scope: !665)
!668 = !DILocation(line: 560, column: 31, scope: !665)
!669 = !DILocation(line: 561, column: 46, scope: !665)
!670 = !DILocation(line: 561, column: 21, scope: !665)
!671 = !DILocation(line: 561, column: 10, scope: !665)
!672 = !DILocation(line: 561, column: 18, scope: !665)
!673 = !DILocation(line: 565, column: 11, scope: !665)
!674 = !DILocation(line: 565, column: 26, scope: !665)
!675 = !DILocation(line: 565, column: 23, scope: !665)
!676 = !DILocation(line: 566, column: 11, scope: !665)
!677 = !DILocation(line: 566, column: 30, scope: !665)
!678 = !DILocation(line: 566, column: 27, scope: !665)
!679 = !DILocation(line: 568, column: 20, scope: !665)
!680 = !DILocation(line: 568, column: 18, scope: !665)
!681 = !DILocation(line: 569, column: 21, scope: !665)
!682 = !DILocation(line: 571, column: 3, scope: !665)
!683 = !DILocation(line: 0, scope: !661)
!684 = !DILocation(line: 573, column: 2, scope: !633)
!685 = distinct !DISubprogram(name: "next_voxel", scope: !3, file: !3, line: 597, type: !634, scopeLine: 598, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !686)
!686 = !{!687, !688, !689, !690}
!687 = !DILocalVariable(name: "r", arg: 1, scope: !685, file: !3, line: 597, type: !149)
!688 = !DILocalVariable(name: "indx", scope: !685, file: !3, line: 599, type: !14)
!689 = !DILocalVariable(name: "gr", scope: !685, file: !3, line: 600, type: !9)
!690 = !DILocalVariable(name: "rinfo", scope: !685, file: !3, line: 601, type: !161)
!691 = !DILocation(line: 0, scope: !685)
!692 = !DILocation(line: 607, column: 14, scope: !693)
!693 = distinct !DILexicalBlock(scope: !685, file: !3, line: 604, column: 3)
!694 = !DILocation(line: 603, column: 17, scope: !685)
!695 = !DILocation(line: 603, column: 31, scope: !685)
!696 = !DILocation(line: 603, column: 2, scope: !685)
!697 = !DILocation(line: 608, column: 15, scope: !693)
!698 = !DILocation(line: 610, column: 11, scope: !699)
!699 = distinct !DILexicalBlock(scope: !693, file: !3, line: 610, column: 7)
!700 = !DILocation(line: 610, column: 24, scope: !699)
!701 = !DILocation(line: 610, column: 7, scope: !693)
!702 = !DILocation(line: 612, column: 4, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !3, line: 611, column: 4)
!704 = distinct !{!704, !696, !705, !215, !216}
!705 = !DILocation(line: 622, column: 3, scope: !685)
!706 = !DILocation(line: 625, column: 2, scope: !685)
!707 = distinct !DISubprogram(name: "next_nonempty_voxel", scope: !3, file: !3, line: 650, type: !708, scopeLine: 651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!18, !149}
!710 = !{!711, !712, !713, !714, !715}
!711 = !DILocalVariable(name: "r", arg: 1, scope: !707, file: !3, line: 650, type: !149)
!712 = !DILocalVariable(name: "indx", scope: !707, file: !3, line: 652, type: !14)
!713 = !DILocalVariable(name: "v", scope: !707, file: !3, line: 653, type: !18)
!714 = !DILocalVariable(name: "gr", scope: !707, file: !3, line: 654, type: !9)
!715 = !DILocalVariable(name: "rinfo", scope: !707, file: !3, line: 655, type: !161)
!716 = !DILocation(line: 0, scope: !707)
!717 = !DILocation(line: 657, column: 9, scope: !707)
!718 = !DILocation(line: 658, column: 11, scope: !719)
!719 = distinct !DILexicalBlock(scope: !707, file: !3, line: 658, column: 6)
!720 = !DILocation(line: 658, column: 6, scope: !707)
!721 = !DILocation(line: 661, column: 13, scope: !707)
!722 = !DILocation(line: 664, column: 2, scope: !707)
!723 = !DILocation(line: 664, column: 9, scope: !707)
!724 = !DILocation(line: 664, column: 37, scope: !707)
!725 = !DILocation(line: 666, column: 10, scope: !726)
!726 = distinct !DILexicalBlock(scope: !707, file: !3, line: 665, column: 3)
!727 = !DILocation(line: 668, column: 12, scope: !728)
!728 = distinct !DILexicalBlock(scope: !726, file: !3, line: 668, column: 7)
!729 = !DILocation(line: 668, column: 7, scope: !726)
!730 = distinct !{!730, !722, !731, !215, !216}
!731 = !DILocation(line: 674, column: 3, scope: !707)
!732 = !DILocation(line: 678, column: 6, scope: !707)
!733 = !DILocation(line: 680, column: 2, scope: !707)
!734 = !DILocation(line: 681, column: 2, scope: !707)
!735 = distinct !DISubprogram(name: "next_nonempty_leaf", scope: !3, file: !3, line: 720, type: !736, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!18, !149, !14, !641}
!738 = !{!739, !740, !741, !742, !743, !744}
!739 = !DILocalVariable(name: "r", arg: 1, scope: !735, file: !3, line: 720, type: !149)
!740 = !DILocalVariable(name: "step", arg: 2, scope: !735, file: !3, line: 720, type: !14)
!741 = !DILocalVariable(name: "status", arg: 3, scope: !735, file: !3, line: 720, type: !641)
!742 = !DILocalVariable(name: "indx", scope: !735, file: !3, line: 722, type: !14)
!743 = !DILocalVariable(name: "v", scope: !735, file: !3, line: 723, type: !18)
!744 = !DILocalVariable(name: "rinfo", scope: !735, file: !3, line: 724, type: !161)
!745 = !DILocation(line: 779, column: 8, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 778, column: 4)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 758, column: 7)
!748 = distinct !DILexicalBlock(scope: !735, file: !3, line: 745, column: 3)
!749 = !DILocation(line: 0, scope: !735)
!750 = !DILocation(line: 726, column: 6, scope: !735)
!751 = !DILocation(line: 727, column: 7, scope: !752)
!752 = distinct !DILexicalBlock(scope: !735, file: !3, line: 726, column: 6)
!753 = !DILocation(line: 727, column: 3, scope: !752)
!754 = !DILocation(line: 732, column: 14, scope: !755)
!755 = distinct !DILexicalBlock(scope: !752, file: !3, line: 729, column: 3)
!756 = !DILocation(line: 733, column: 31, scope: !755)
!757 = !DILocation(line: 733, column: 47, scope: !755)
!758 = !DILocation(line: 733, column: 7, scope: !755)
!759 = !DILocation(line: 0, scope: !752)
!760 = !DILocation(line: 736, column: 8, scope: !761)
!761 = distinct !DILexicalBlock(scope: !735, file: !3, line: 736, column: 6)
!762 = !DILocation(line: 736, column: 6, scope: !735)
!763 = !DILocation(line: 744, column: 12, scope: !735)
!764 = !DILocation(line: 744, column: 2, scope: !735)
!765 = !DILocation(line: 744, column: 36, scope: !735)
!766 = !DILocation(line: 753, column: 3, scope: !748)
!767 = !DILocation(line: 755, column: 14, scope: !748)
!768 = !DILocation(line: 756, column: 18, scope: !748)
!769 = !DILocation(line: 758, column: 38, scope: !747)
!770 = !DILocation(line: 758, column: 7, scope: !747)
!771 = !DILocation(line: 758, column: 44, scope: !747)
!772 = !DILocation(line: 758, column: 7, scope: !748)
!773 = !DILocation(line: 760, column: 8, scope: !774)
!774 = distinct !DILexicalBlock(scope: !747, file: !3, line: 759, column: 4)
!775 = !DILocation(line: 761, column: 11, scope: !776)
!776 = distinct !DILexicalBlock(scope: !774, file: !3, line: 761, column: 8)
!777 = !DILocation(line: 761, column: 35, scope: !776)
!778 = distinct !{!778, !764, !779, !215, !216}
!779 = !DILocation(line: 783, column: 3, scope: !735)
!780 = !DILocation(line: 786, column: 2, scope: !735)
!781 = distinct !DISubprogram(name: "init_ray", scope: !3, file: !3, line: 808, type: !782, scopeLine: 809, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{!18, !149, !9}
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802}
!785 = !DILocalVariable(name: "r", arg: 1, scope: !781, file: !3, line: 808, type: !149)
!786 = !DILocalVariable(name: "g", arg: 2, scope: !781, file: !3, line: 808, type: !9)
!787 = !DILocalVariable(name: "status", scope: !781, file: !3, line: 810, type: !14)
!788 = !DILocalVariable(name: "indx", scope: !781, file: !3, line: 811, type: !14)
!789 = !DILocalVariable(name: "grid_id", scope: !781, file: !3, line: 811, type: !14)
!790 = !DILocalVariable(name: "i_in", scope: !781, file: !3, line: 812, type: !14)
!791 = !DILocalVariable(name: "i_out", scope: !781, file: !3, line: 812, type: !14)
!792 = !DILocalVariable(name: "i", scope: !781, file: !3, line: 812, type: !14)
!793 = !DILocalVariable(name: "il", scope: !781, file: !3, line: 812, type: !14)
!794 = !DILocalVariable(name: "ih", scope: !781, file: !3, line: 812, type: !14)
!795 = !DILocalVariable(name: "t_in", scope: !781, file: !3, line: 813, type: !59)
!796 = !DILocalVariable(name: "t_out", scope: !781, file: !3, line: 813, type: !59)
!797 = !DILocalVariable(name: "tl", scope: !781, file: !3, line: 813, type: !59)
!798 = !DILocalVariable(name: "th", scope: !781, file: !3, line: 813, type: !59)
!799 = !DILocalVariable(name: "t", scope: !781, file: !3, line: 814, type: !279)
!800 = !DILocalVariable(name: "v", scope: !781, file: !3, line: 815, type: !18)
!801 = !DILocalVariable(name: "gr", scope: !781, file: !3, line: 816, type: !9)
!802 = !DILocalVariable(name: "ri", scope: !781, file: !3, line: 817, type: !161)
!803 = !DILocation(line: 0, scope: !781)
!804 = !DILocation(line: 810, column: 2, scope: !781)
!805 = !DILocation(line: 814, column: 2, scope: !781)
!806 = !DILocation(line: 814, column: 7, scope: !781)
!807 = !DILocation(line: 819, column: 2, scope: !781)
!808 = !DILocation(line: 821, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !781, file: !3, line: 821, column: 6)
!810 = !DILocation(line: 821, column: 6, scope: !809)
!811 = !DILocation(line: 821, column: 14, scope: !809)
!812 = !DILocation(line: 821, column: 6, scope: !781)
!813 = !DILocation(line: 823, column: 10, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 823, column: 7)
!815 = distinct !DILexicalBlock(scope: !809, file: !3, line: 822, column: 3)
!816 = !DILocation(line: 823, column: 7, scope: !814)
!817 = !DILocation(line: 823, column: 21, scope: !814)
!818 = !DILocation(line: 823, column: 18, scope: !814)
!819 = !DILocation(line: 823, column: 15, scope: !814)
!820 = !DILocation(line: 823, column: 28, scope: !814)
!821 = !DILocation(line: 823, column: 57, scope: !814)
!822 = !DILocation(line: 823, column: 54, scope: !814)
!823 = !DILocation(line: 823, column: 52, scope: !814)
!824 = !DILocation(line: 823, column: 39, scope: !814)
!825 = !DILocation(line: 823, column: 7, scope: !815)
!826 = !DILocation(line: 824, column: 9, scope: !814)
!827 = !DILocation(line: 824, column: 4, scope: !814)
!828 = !DILocation(line: 826, column: 9, scope: !814)
!829 = !DILocation(line: 829, column: 14, scope: !809)
!830 = !DILocation(line: 829, column: 11, scope: !809)
!831 = !DILocation(line: 829, column: 26, scope: !809)
!832 = !DILocation(line: 829, column: 23, scope: !809)
!833 = !DILocation(line: 829, column: 21, scope: !809)
!834 = !DILocation(line: 829, column: 32, scope: !809)
!835 = !DILocation(line: 829, column: 8, scope: !809)
!836 = !DILocation(line: 832, column: 6, scope: !837)
!837 = distinct !DILexicalBlock(scope: !781, file: !3, line: 832, column: 6)
!838 = !DILocation(line: 832, column: 14, scope: !837)
!839 = !DILocation(line: 832, column: 6, scope: !781)
!840 = !DILocation(line: 834, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 834, column: 7)
!842 = distinct !DILexicalBlock(scope: !837, file: !3, line: 833, column: 3)
!843 = !DILocation(line: 834, column: 18, scope: !841)
!844 = !DILocation(line: 834, column: 15, scope: !841)
!845 = !DILocation(line: 834, column: 28, scope: !841)
!846 = !DILocation(line: 834, column: 54, scope: !841)
!847 = !DILocation(line: 834, column: 52, scope: !841)
!848 = !DILocation(line: 834, column: 39, scope: !841)
!849 = !DILocation(line: 834, column: 7, scope: !842)
!850 = !DILocation(line: 840, column: 11, scope: !837)
!851 = !DILocation(line: 840, column: 23, scope: !837)
!852 = !DILocation(line: 840, column: 21, scope: !837)
!853 = !DILocation(line: 840, column: 32, scope: !837)
!854 = !DILocation(line: 0, scope: !837)
!855 = !DILocation(line: 843, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !781, file: !3, line: 843, column: 6)
!857 = !DILocation(line: 843, column: 14, scope: !856)
!858 = !DILocation(line: 843, column: 6, scope: !781)
!859 = !DILocation(line: 845, column: 7, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 845, column: 7)
!861 = distinct !DILexicalBlock(scope: !856, file: !3, line: 844, column: 3)
!862 = !DILocation(line: 845, column: 18, scope: !860)
!863 = !DILocation(line: 845, column: 15, scope: !860)
!864 = !DILocation(line: 845, column: 28, scope: !860)
!865 = !DILocation(line: 845, column: 54, scope: !860)
!866 = !DILocation(line: 845, column: 52, scope: !860)
!867 = !DILocation(line: 845, column: 39, scope: !860)
!868 = !DILocation(line: 845, column: 7, scope: !861)
!869 = !DILocation(line: 851, column: 11, scope: !856)
!870 = !DILocation(line: 851, column: 23, scope: !856)
!871 = !DILocation(line: 851, column: 21, scope: !856)
!872 = !DILocation(line: 851, column: 32, scope: !856)
!873 = !DILocation(line: 0, scope: !856)
!874 = !DILocation(line: 854, column: 6, scope: !781)
!875 = !DILocation(line: 862, column: 26, scope: !876)
!876 = distinct !DILexicalBlock(scope: !781, file: !3, line: 854, column: 6)
!877 = !DILocation(line: 862, column: 23, scope: !876)
!878 = !DILocation(line: 862, column: 21, scope: !876)
!879 = !DILocation(line: 862, column: 38, scope: !876)
!880 = !DILocation(line: 862, column: 49, scope: !876)
!881 = !DILocation(line: 0, scope: !876)
!882 = !DILocation(line: 865, column: 6, scope: !781)
!883 = !DILocation(line: 873, column: 23, scope: !884)
!884 = distinct !DILexicalBlock(scope: !781, file: !3, line: 865, column: 6)
!885 = !DILocation(line: 873, column: 21, scope: !884)
!886 = !DILocation(line: 873, column: 38, scope: !884)
!887 = !DILocation(line: 873, column: 49, scope: !884)
!888 = !DILocation(line: 0, scope: !884)
!889 = !DILocation(line: 876, column: 6, scope: !781)
!890 = !DILocation(line: 884, column: 23, scope: !891)
!891 = distinct !DILexicalBlock(scope: !781, file: !3, line: 876, column: 6)
!892 = !DILocation(line: 884, column: 21, scope: !891)
!893 = !DILocation(line: 884, column: 38, scope: !891)
!894 = !DILocation(line: 884, column: 49, scope: !891)
!895 = !DILocation(line: 0, scope: !891)
!896 = !DILocation(line: 892, column: 2, scope: !897)
!897 = distinct !DILexicalBlock(scope: !781, file: !3, line: 892, column: 2)
!898 = !DILocation(line: 894, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 894, column: 7)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 893, column: 3)
!901 = distinct !DILexicalBlock(scope: !897, file: !3, line: 892, column: 2)
!902 = !DILocation(line: 894, column: 18, scope: !899)
!903 = !DILocation(line: 894, column: 14, scope: !899)
!904 = !DILocation(line: 894, column: 12, scope: !899)
!905 = !DILocation(line: 909, column: 12, scope: !906)
!906 = distinct !DILexicalBlock(scope: !900, file: !3, line: 909, column: 7)
!907 = !DILocation(line: 909, column: 7, scope: !900)
!908 = !DILocation(line: 913, column: 4, scope: !909)
!909 = distinct !DILexicalBlock(scope: !906, file: !3, line: 910, column: 4)
!910 = !DILocation(line: 915, column: 13, scope: !911)
!911 = distinct !DILexicalBlock(scope: !900, file: !3, line: 915, column: 7)
!912 = !DILocation(line: 915, column: 7, scope: !900)
!913 = !DILocation(line: 919, column: 4, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 916, column: 4)
!915 = !DILocation(line: 892, column: 23, scope: !901)
!916 = !DILocation(line: 892, column: 17, scope: !901)
!917 = distinct !{!917, !896, !918, !215, !216}
!918 = !DILocation(line: 920, column: 3, scope: !897)
!919 = !DILocation(line: 922, column: 11, scope: !920)
!920 = distinct !DILexicalBlock(scope: !781, file: !3, line: 922, column: 6)
!921 = !DILocation(line: 922, column: 20, scope: !920)
!922 = !DILocation(line: 927, column: 8, scope: !781)
!923 = !DILocation(line: 928, column: 5, scope: !781)
!924 = !DILocation(line: 928, column: 9, scope: !781)
!925 = !DILocation(line: 929, column: 11, scope: !781)
!926 = !DILocation(line: 934, column: 6, scope: !927)
!927 = distinct !DILexicalBlock(scope: !781, file: !3, line: 934, column: 6)
!928 = !DILocation(line: 934, column: 14, scope: !927)
!929 = !DILocation(line: 934, column: 11, scope: !927)
!930 = !DILocation(line: 934, column: 6, scope: !781)
!931 = !DILocation(line: 0, scope: !927)
!932 = !DILocation(line: 937, column: 7, scope: !927)
!933 = !DILocation(line: 937, column: 12, scope: !927)
!934 = !DILocation(line: 940, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !781, file: !3, line: 940, column: 6)
!936 = !DILocation(line: 940, column: 14, scope: !935)
!937 = !DILocation(line: 940, column: 11, scope: !935)
!938 = !DILocation(line: 940, column: 6, scope: !781)
!939 = !DILocation(line: 0, scope: !935)
!940 = !DILocation(line: 943, column: 3, scope: !935)
!941 = !DILocation(line: 943, column: 12, scope: !935)
!942 = !DILocation(line: 946, column: 6, scope: !943)
!943 = distinct !DILexicalBlock(scope: !781, file: !3, line: 946, column: 6)
!944 = !DILocation(line: 946, column: 14, scope: !943)
!945 = !DILocation(line: 946, column: 11, scope: !943)
!946 = !DILocation(line: 946, column: 6, scope: !781)
!947 = !DILocation(line: 0, scope: !943)
!948 = !DILocation(line: 949, column: 3, scope: !943)
!949 = !DILocation(line: 949, column: 12, scope: !943)
!950 = !DILocation(line: 952, column: 11, scope: !951)
!951 = distinct !DILexicalBlock(scope: !781, file: !3, line: 952, column: 6)
!952 = !DILocation(line: 952, column: 6, scope: !781)
!953 = !DILocation(line: 955, column: 12, scope: !954)
!954 = distinct !DILexicalBlock(scope: !781, file: !3, line: 955, column: 6)
!955 = !DILocation(line: 955, column: 6, scope: !781)
!956 = !DILocation(line: 959, column: 6, scope: !781)
!957 = !DILocation(line: 959, column: 18, scope: !781)
!958 = !DILocation(line: 960, column: 6, scope: !781)
!959 = !DILocation(line: 960, column: 11, scope: !781)
!960 = !DILocation(line: 961, column: 6, scope: !781)
!961 = !DILocation(line: 961, column: 12, scope: !781)
!962 = !DILocation(line: 962, column: 6, scope: !781)
!963 = !DILocation(line: 962, column: 17, scope: !781)
!964 = !DILocation(line: 964, column: 17, scope: !781)
!965 = !DILocation(line: 964, column: 25, scope: !781)
!966 = !DILocation(line: 964, column: 49, scope: !781)
!967 = !DILocation(line: 964, column: 46, scope: !781)
!968 = !DILocation(line: 964, column: 63, scope: !781)
!969 = !DILocation(line: 964, column: 61, scope: !781)
!970 = !DILocation(line: 964, column: 6, scope: !781)
!971 = !DILocation(line: 964, column: 15, scope: !781)
!972 = !DILocation(line: 965, column: 17, scope: !781)
!973 = !DILocation(line: 965, column: 25, scope: !781)
!974 = !DILocation(line: 965, column: 46, scope: !781)
!975 = !DILocation(line: 965, column: 63, scope: !781)
!976 = !DILocation(line: 965, column: 61, scope: !781)
!977 = !DILocation(line: 965, column: 2, scope: !781)
!978 = !DILocation(line: 965, column: 15, scope: !781)
!979 = !DILocation(line: 966, column: 17, scope: !781)
!980 = !DILocation(line: 966, column: 25, scope: !781)
!981 = !DILocation(line: 966, column: 46, scope: !781)
!982 = !DILocation(line: 966, column: 63, scope: !781)
!983 = !DILocation(line: 966, column: 61, scope: !781)
!984 = !DILocation(line: 966, column: 2, scope: !781)
!985 = !DILocation(line: 966, column: 15, scope: !781)
!986 = !DILocation(line: 968, column: 6, scope: !781)
!987 = !DILocation(line: 969, column: 17, scope: !781)
!988 = !DILocation(line: 972, column: 21, scope: !781)
!989 = !DILocation(line: 972, column: 29, scope: !781)
!990 = !DILocation(line: 972, column: 5, scope: !781)
!991 = !DILocation(line: 972, column: 19, scope: !781)
!992 = !DILocation(line: 973, column: 21, scope: !781)
!993 = !DILocation(line: 973, column: 29, scope: !781)
!994 = !DILocation(line: 973, column: 2, scope: !781)
!995 = !DILocation(line: 973, column: 19, scope: !781)
!996 = !DILocation(line: 974, column: 21, scope: !781)
!997 = !DILocation(line: 974, column: 29, scope: !781)
!998 = !DILocation(line: 974, column: 2, scope: !781)
!999 = !DILocation(line: 974, column: 19, scope: !781)
!1000 = !DILocation(line: 976, column: 6, scope: !781)
!1001 = !DILocation(line: 976, column: 14, scope: !781)
!1002 = !DILocation(line: 978, column: 22, scope: !781)
!1003 = !DILocation(line: 978, column: 30, scope: !781)
!1004 = !DILocation(line: 978, column: 6, scope: !781)
!1005 = !DILocation(line: 978, column: 20, scope: !781)
!1006 = !DILocation(line: 979, column: 22, scope: !781)
!1007 = !DILocation(line: 979, column: 30, scope: !781)
!1008 = !DILocation(line: 979, column: 2, scope: !781)
!1009 = !DILocation(line: 979, column: 20, scope: !781)
!1010 = !DILocation(line: 980, column: 22, scope: !781)
!1011 = !DILocation(line: 980, column: 30, scope: !781)
!1012 = !DILocation(line: 980, column: 2, scope: !781)
!1013 = !DILocation(line: 980, column: 20, scope: !781)
!1014 = !DILocation(line: 981, column: 6, scope: !781)
!1015 = !DILocation(line: 981, column: 11, scope: !781)
!1016 = !DILocation(line: 988, column: 11, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !781, file: !3, line: 988, column: 6)
!1018 = !DILocation(line: 1001, column: 2, scope: !781)
!1019 = !DISubprogram(name: "reset_rayinfo", scope: !7, file: !7, line: 919, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !144)
