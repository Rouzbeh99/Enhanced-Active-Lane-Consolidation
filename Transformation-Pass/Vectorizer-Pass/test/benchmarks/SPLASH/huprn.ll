; ModuleID = 'huprn.c'
source_filename = "huprn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voxel = type { i64, i64, ptr, ptr, i8, [7 x i8] }
%struct.grid = type { i64, ptr, ptr, ptr, i64, [3 x i64], i64, [3 x double], [3 x double], i64, ptr, ptr }
%struct.ray = type { i64, i64, i64, [3 x double], [3 x double], i64, ptr, i64, [3 x i64], [5 x %struct.rayinfo], float, float }
%struct.rayinfo = type { ptr, [3 x double], i64, double, i64, double, [3 x double], [3 x i64], i64, [3 x i64], ptr }
%struct.element = type { i64, ptr, ptr, %struct.bbox }
%struct.bbox = type { [3 x double], [3 x double] }
%struct.btnode = type { ptr, [3 x double], i64, [3 x i64], [3 x i64], i64, i64, [2 x ptr] }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"    Print Voxel  id = %ld \0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"        celltype %d \0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"        gsm_voxel \0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"        primElement index list:\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"            %ld \0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"        gsm_grid id %ld \0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"    End Voxel \0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"    Print  Grid %ld \0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"        num_prims = %ld \0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"        indx_inc[0,1,2] = %ld, %ld, %ld \0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"        num_buckets = %ld \0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"        min[0,1,2] = %lf, %lf, %lf \0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"        cellsize[0,1,2] = %lf, %lf, %lf \0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"        subdiv_level = %ld \0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"        next grid id %ld \0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"        next grid id NULL \0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"    Voxel List \0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"        Voxel %ld is empty. \0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"    End Grid \0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"    Print Ray  id %ld \0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"        origin:        ( %lf, %lf, %lf ) \0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"        direction:     ( %lf, %lf, %lf ) \0A\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"        indx_inc3D[0,1,2] = [ %ld, %ld, %ld ] \0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"        ri_indx = %ld \0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"        rayinfo: \0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"            ray is in grid %ld \0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"            d[0,1,2] = [ %lf, %lf, %lf ] \0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"            entry_plane %ld \0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"            t_in = %lf \0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"            exit_plane %ld \0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"            t_out = %lf \0A\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"            delta[0,1,2] = [ %lf, %lf, %lf ] \0A\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"            index3D[0,1,2] = [ %ld, %ld, %ld ] \0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"            index1D = %ld \0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"            indx_inc1D[0,1,2] = [ %ld, %ld, %ld ] \0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"    End Ray \0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"%s: prn_PrimElem: Null pointer.\0A\00", align 1
@ProgName = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [56 x i8] c"PrimElem: index %ld  ptr %p, PrimObj index %ld ptr %p \0A\00", align 1
@.str.38 = private unnamed_addr constant [60 x i8] c"   BBox: ( %lf, %lf, %lf ) -> \0A         ( %lf, %lf, %lf ) \0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"Bintree node: \0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"    indecies of cell: ( %ld, %ld, %ld ) \0A\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"    gridsizes: ( %ld, %ld, %ld ) \0A\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"    minimum point ( %lf, %lf, %lf ) \0A\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"    subdiv axis %ld \0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"    number of primitives %ld \0A\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"    Primitive element list: \0A\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"  %ld\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"\0A    End of bintree node \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @prn_voxel(ptr nocapture noundef readonly %v) local_unnamed_addr #0 !dbg !138 {
entry:
  call void @llvm.dbg.value(metadata ptr %v, metadata !142, metadata !DIExpression()), !dbg !147
  %0 = load ptr, ptr @stderr, align 8, !dbg !148
  %1 = load i64, ptr %v, align 8, !dbg !149
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef %1) #7, !dbg !150
  %2 = load ptr, ptr @stderr, align 8, !dbg !151
  %celltype = getelementptr inbounds %struct.voxel, ptr %v, i64 0, i32 4, !dbg !152
  %3 = load i8, ptr %celltype, align 8, !dbg !152
  %conv = sext i8 %3 to i32, !dbg !153
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %conv) #7, !dbg !154
  %4 = load i8, ptr %celltype, align 8, !dbg !155
  %cmp = icmp eq i8 %4, 2, !dbg !157
  br i1 %cmp, label %if.then, label %if.end, !dbg !158

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @stderr, align 8, !dbg !159
  %6 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 19, i64 1, ptr %5) #7, !dbg !161
  %7 = load ptr, ptr @stderr, align 8, !dbg !162
  %8 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 32, i64 1, ptr %7) #7, !dbg !163
  %cell = getelementptr inbounds %struct.voxel, ptr %v, i64 0, i32 3, !dbg !164
  %9 = load ptr, ptr %cell, align 8, !dbg !164
  call void @llvm.dbg.value(metadata ptr %9, metadata !144, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !147
  %numelements = getelementptr inbounds %struct.voxel, ptr %v, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !147
  %10 = load i64, ptr %numelements, align 8, !dbg !165
  %cmp729 = icmp sgt i64 %10, 0, !dbg !168
  br i1 %cmp729, label %for.body, label %if.endthread-pre-split, !dbg !169

for.body:                                         ; preds = %if.then, %for.body
  %i.030 = phi i64 [ %inc, %for.body ], [ 0, %if.then ]
  call void @llvm.dbg.value(metadata i64 %i.030, metadata !146, metadata !DIExpression()), !dbg !147
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %i.030, !dbg !170
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !170
  call void @llvm.dbg.value(metadata ptr %11, metadata !143, metadata !DIExpression()), !dbg !147
  %12 = load ptr, ptr @stderr, align 8, !dbg !172
  %13 = load i64, ptr %11, align 8, !dbg !173
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.4, i64 noundef %13) #7, !dbg !174
  %inc = add nuw nsw i64 %i.030, 1, !dbg !175
  call void @llvm.dbg.value(metadata i64 %inc, metadata !146, metadata !DIExpression()), !dbg !147
  %14 = load i64, ptr %numelements, align 8, !dbg !165
  %cmp7 = icmp slt i64 %inc, %14, !dbg !168
  br i1 %cmp7, label %for.body, label %if.endthread-pre-split, !dbg !169, !llvm.loop !176

if.endthread-pre-split:                           ; preds = %for.body, %if.then
  %.pr = load i8, ptr %celltype, align 8, !dbg !180
  br label %if.end, !dbg !180

if.end:                                           ; preds = %if.endthread-pre-split, %entry
  %15 = phi i8 [ %.pr, %if.endthread-pre-split ], [ %4, %entry ], !dbg !180
  %cmp12 = icmp eq i8 %15, 3, !dbg !182
  br i1 %cmp12, label %if.then14, label %if.end18, !dbg !183

if.then14:                                        ; preds = %if.end
  %cell15 = getelementptr inbounds %struct.voxel, ptr %v, i64 0, i32 3, !dbg !184
  %16 = load ptr, ptr %cell15, align 8, !dbg !184
  call void @llvm.dbg.value(metadata ptr %16, metadata !145, metadata !DIExpression()), !dbg !147
  tail call void @prn_grid(ptr noundef %16), !dbg !186
  %17 = load ptr, ptr @stderr, align 8, !dbg !187
  %18 = load i64, ptr %16, align 8, !dbg !188
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.5, i64 noundef %18) #7, !dbg !189
  br label %if.end18, !dbg !190

if.end18:                                         ; preds = %if.then14, %if.end
  %19 = load ptr, ptr @stderr, align 8, !dbg !191
  %20 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %19) #7, !dbg !192
  ret void, !dbg !193
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @prn_grid(ptr noundef %g) local_unnamed_addr #0 !dbg !194 {
entry:
  call void @llvm.dbg.value(metadata ptr %g, metadata !198, metadata !DIExpression()), !dbg !203
  %0 = load ptr, ptr @stderr, align 8, !dbg !204
  %1 = load i64, ptr %g, align 8, !dbg !205
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %1) #7, !dbg !206
  %2 = load ptr, ptr @stderr, align 8, !dbg !207
  %num_prims = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 4, !dbg !208
  %3 = load i64, ptr %num_prims, align 8, !dbg !208
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i64 noundef %3) #7, !dbg !209
  %4 = load ptr, ptr @stderr, align 8, !dbg !210
  %indx_inc = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 5, !dbg !211
  %5 = load i64, ptr %indx_inc, align 8, !dbg !212
  %arrayidx3 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 5, i64 1, !dbg !213
  %6 = load i64, ptr %arrayidx3, align 8, !dbg !213
  %arrayidx5 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 5, i64 2, !dbg !214
  %7 = load i64, ptr %arrayidx5, align 8, !dbg !214
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.9, i64 noundef %5, i64 noundef %6, i64 noundef %7) #7, !dbg !215
  %8 = load ptr, ptr @stderr, align 8, !dbg !216
  %num_buckets = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 6, !dbg !217
  %9 = load i64, ptr %num_buckets, align 8, !dbg !217
  %call7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.10, i64 noundef %9) #7, !dbg !218
  %10 = load ptr, ptr @stderr, align 8, !dbg !219
  %min = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 7, !dbg !220
  %11 = load double, ptr %min, align 8, !dbg !221
  %arrayidx10 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 7, i64 1, !dbg !222
  %12 = load double, ptr %arrayidx10, align 8, !dbg !222
  %arrayidx12 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 7, i64 2, !dbg !223
  %13 = load double, ptr %arrayidx12, align 8, !dbg !223
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.11, double noundef %11, double noundef %12, double noundef %13) #7, !dbg !224
  %14 = load ptr, ptr @stderr, align 8, !dbg !225
  %cellsize = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, !dbg !226
  %15 = load double, ptr %cellsize, align 8, !dbg !227
  %arrayidx16 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 1, !dbg !228
  %16 = load double, ptr %arrayidx16, align 8, !dbg !228
  %arrayidx18 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 2, !dbg !229
  %17 = load double, ptr %arrayidx18, align 8, !dbg !229
  %call19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.12, double noundef %15, double noundef %16, double noundef %17) #7, !dbg !230
  %18 = load ptr, ptr @stderr, align 8, !dbg !231
  %subdiv_level = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 9, !dbg !232
  %19 = load i64, ptr %subdiv_level, align 8, !dbg !232
  %call20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.13, i64 noundef %19) #7, !dbg !233
  %next = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 11, !dbg !234
  %20 = load ptr, ptr %next, align 8, !dbg !234
  %cmp.not = icmp eq ptr %20, null, !dbg !236
  %21 = load ptr, ptr @stderr, align 8, !dbg !237
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !238

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %20, metadata !201, metadata !DIExpression()), !dbg !203
  %22 = load i64, ptr %20, align 8, !dbg !239
  %call23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.14, i64 noundef %22) #7, !dbg !241
  br label %if.end, !dbg !242

if.else:                                          ; preds = %entry
  %23 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 27, i64 1, ptr %21) #7, !dbg !243
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load ptr, ptr @stderr, align 8, !dbg !244
  %25 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 16, i64 1, ptr %24) #7, !dbg !245
  %26 = load i64, ptr %arrayidx3, align 8, !dbg !246
  %27 = load i64, ptr %arrayidx5, align 8, !dbg !247
  %mul = mul i64 %27, %26, !dbg !248
  call void @llvm.dbg.value(metadata i64 %mul, metadata !200, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 0, metadata !199, metadata !DIExpression()), !dbg !203
  %cmp3061 = icmp sgt i64 %mul, 0, !dbg !249
  br i1 %cmp3061, label %for.body, label %for.end, !dbg !252

for.body:                                         ; preds = %if.end, %for.inc
  %i.062 = phi i64 [ %inc, %for.inc ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.062, metadata !199, metadata !DIExpression()), !dbg !203
  %call31 = tail call i64 @lookup_emptycells(i64 noundef %i.062, ptr noundef nonnull %g) #8, !dbg !253
  %cmp32 = icmp eq i64 %call31, 1, !dbg !256
  br i1 %cmp32, label %if.then33, label %if.else35, !dbg !257

if.then33:                                        ; preds = %for.body
  %28 = load ptr, ptr @stderr, align 8, !dbg !258
  %call34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.17, i64 noundef %i.062) #7, !dbg !259
  br label %for.inc, !dbg !259

if.else35:                                        ; preds = %for.body
  %call36 = tail call ptr @lookup_hashtable(i64 noundef %i.062, ptr noundef nonnull %g) #8, !dbg !260
  call void @llvm.dbg.value(metadata ptr %call36, metadata !202, metadata !DIExpression()), !dbg !203
  tail call void @prn_voxel(ptr noundef %call36), !dbg !262
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %if.else35
  %inc = add nuw nsw i64 %i.062, 1, !dbg !263
  call void @llvm.dbg.value(metadata i64 %inc, metadata !199, metadata !DIExpression()), !dbg !203
  %exitcond.not = icmp eq i64 %inc, %mul, !dbg !249
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !252, !llvm.loop !264

for.end:                                          ; preds = %for.inc, %if.end
  %29 = load ptr, ptr @stderr, align 8, !dbg !266
  %30 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 14, i64 1, ptr %29) #7, !dbg !267
  ret void, !dbg !268
}

declare !dbg !269 i64 @lookup_emptycells(i64 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !273 ptr @lookup_hashtable(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @prn_ray(ptr nocapture noundef readonly %r) local_unnamed_addr #3 !dbg !276 {
entry:
  call void @llvm.dbg.value(metadata ptr %r, metadata !318, metadata !DIExpression()), !dbg !321
  %0 = load ptr, ptr @stderr, align 8, !dbg !322
  %1 = load i64, ptr %r, align 8, !dbg !323
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, i64 noundef %1) #7, !dbg !324
  %2 = load ptr, ptr @stderr, align 8, !dbg !325
  %P = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 3, !dbg !326
  %3 = load double, ptr %P, align 8, !dbg !327
  %arrayidx2 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 3, i64 1, !dbg !328
  %4 = load double, ptr %arrayidx2, align 8, !dbg !328
  %arrayidx4 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 3, i64 2, !dbg !329
  %5 = load double, ptr %arrayidx4, align 8, !dbg !329
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.20, double noundef %3, double noundef %4, double noundef %5) #7, !dbg !330
  %6 = load ptr, ptr @stderr, align 8, !dbg !331
  %D = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 4, !dbg !332
  %7 = load double, ptr %D, align 8, !dbg !333
  %arrayidx8 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 4, i64 1, !dbg !334
  %8 = load double, ptr %arrayidx8, align 8, !dbg !334
  %arrayidx10 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 4, i64 2, !dbg !335
  %9 = load double, ptr %arrayidx10, align 8, !dbg !335
  %call11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.21, double noundef %7, double noundef %8, double noundef %9) #7, !dbg !336
  %10 = load ptr, ptr @stderr, align 8, !dbg !337
  %indx_inc3D = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 8, !dbg !338
  %11 = load i64, ptr %indx_inc3D, align 8, !dbg !339
  %arrayidx14 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 8, i64 1, !dbg !340
  %12 = load i64, ptr %arrayidx14, align 8, !dbg !340
  %arrayidx16 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 8, i64 2, !dbg !341
  %13 = load i64, ptr %arrayidx16, align 8, !dbg !341
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.22, i64 noundef %11, i64 noundef %12, i64 noundef %13) #7, !dbg !342
  %14 = load ptr, ptr @stderr, align 8, !dbg !343
  %ri_indx = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 7, !dbg !344
  %15 = load i64, ptr %ri_indx, align 8, !dbg !344
  %call18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.23, i64 noundef %15) #7, !dbg !345
  %16 = load ptr, ptr @stderr, align 8, !dbg !346
  %17 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 18, i64 1, ptr %16) #7, !dbg !347
  %ri20 = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 6, !dbg !348
  %18 = load ptr, ptr %ri20, align 8, !dbg !348
  call void @llvm.dbg.value(metadata ptr %18, metadata !319, metadata !DIExpression()), !dbg !321
  %19 = load ptr, ptr %18, align 8, !dbg !349
  call void @llvm.dbg.value(metadata ptr %19, metadata !320, metadata !DIExpression()), !dbg !321
  %20 = load ptr, ptr @stderr, align 8, !dbg !350
  %21 = load i64, ptr %19, align 8, !dbg !351
  %call22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.25, i64 noundef %21) #7, !dbg !352
  %22 = load ptr, ptr @stderr, align 8, !dbg !353
  %d = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 1, !dbg !354
  %23 = load double, ptr %d, align 8, !dbg !355
  %arrayidx25 = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 1, i64 1, !dbg !356
  %24 = load double, ptr %arrayidx25, align 8, !dbg !356
  %arrayidx27 = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 1, i64 2, !dbg !357
  %25 = load double, ptr %arrayidx27, align 8, !dbg !357
  %call28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.26, double noundef %23, double noundef %24, double noundef %25) #7, !dbg !358
  %26 = load ptr, ptr @stderr, align 8, !dbg !359
  %entry_plane = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 2, !dbg !360
  %27 = load i64, ptr %entry_plane, align 8, !dbg !360
  %call29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.27, i64 noundef %27) #7, !dbg !361
  %28 = load ptr, ptr @stderr, align 8, !dbg !362
  %t_in = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 3, !dbg !363
  %29 = load double, ptr %t_in, align 8, !dbg !363
  %call30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.28, double noundef %29) #7, !dbg !364
  %30 = load ptr, ptr @stderr, align 8, !dbg !365
  %exit_plane = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 4, !dbg !366
  %31 = load i64, ptr %exit_plane, align 8, !dbg !366
  %call31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.29, i64 noundef %31) #7, !dbg !367
  %32 = load ptr, ptr @stderr, align 8, !dbg !368
  %t_out = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 5, !dbg !369
  %33 = load double, ptr %t_out, align 8, !dbg !369
  %call32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.30, double noundef %33) #7, !dbg !370
  %34 = load ptr, ptr @stderr, align 8, !dbg !371
  %delta = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 6, !dbg !372
  %35 = load double, ptr %delta, align 8, !dbg !373
  %arrayidx35 = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 6, i64 1, !dbg !374
  %36 = load double, ptr %arrayidx35, align 8, !dbg !374
  %arrayidx37 = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 6, i64 2, !dbg !375
  %37 = load double, ptr %arrayidx37, align 8, !dbg !375
  %call38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.31, double noundef %35, double noundef %36, double noundef %37) #7, !dbg !376
  %38 = load ptr, ptr @stderr, align 8, !dbg !377
  %index3D = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 7, !dbg !378
  %39 = load i64, ptr %index3D, align 8, !dbg !379
  %arrayidx41 = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 7, i64 1, !dbg !380
  %40 = load i64, ptr %arrayidx41, align 8, !dbg !380
  %arrayidx43 = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 7, i64 2, !dbg !381
  %41 = load i64, ptr %arrayidx43, align 8, !dbg !381
  %call44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.32, i64 noundef %39, i64 noundef %40, i64 noundef %41) #7, !dbg !382
  %42 = load ptr, ptr @stderr, align 8, !dbg !383
  %index1D = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 8, !dbg !384
  %43 = load i64, ptr %index1D, align 8, !dbg !384
  %call45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.33, i64 noundef %43) #7, !dbg !385
  %44 = load ptr, ptr @stderr, align 8, !dbg !386
  %indx_inc1D = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 9, !dbg !387
  %45 = load i64, ptr %indx_inc1D, align 8, !dbg !388
  %arrayidx48 = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 9, i64 1, !dbg !389
  %46 = load i64, ptr %arrayidx48, align 8, !dbg !389
  %arrayidx50 = getelementptr inbounds %struct.rayinfo, ptr %18, i64 0, i32 9, i64 2, !dbg !390
  %47 = load i64, ptr %arrayidx50, align 8, !dbg !390
  %call51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.34, i64 noundef %45, i64 noundef %46, i64 noundef %47) #7, !dbg !391
  %48 = load ptr, ptr @stderr, align 8, !dbg !392
  %49 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 13, i64 1, ptr %48) #7, !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @prn_PrimElem(ptr noundef %p) local_unnamed_addr #0 !dbg !395 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !399, metadata !DIExpression()), !dbg !401
  %cmp = icmp eq ptr %p, null, !dbg !402
  %0 = load ptr, ptr @stderr, align 8, !dbg !401
  br i1 %cmp, label %if.then, label %if.end, !dbg !404

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @ProgName, align 8, !dbg !405
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %1) #7, !dbg !407
  tail call void @exit(i32 noundef -1) #9, !dbg !408
  unreachable, !dbg !408

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %p, align 8, !dbg !409
  %parent = getelementptr inbounds %struct.element, ptr %p, i64 0, i32 1, !dbg !410
  %3 = load ptr, ptr %parent, align 8, !dbg !410
  %4 = load i64, ptr %3, align 8, !dbg !411
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, i64 noundef %2, ptr noundef nonnull %p, i64 noundef %4, ptr noundef nonnull %3) #7, !dbg !412
  %bv = getelementptr inbounds %struct.element, ptr %p, i64 0, i32 3, !dbg !413
  %b.sroa.0.0.copyload = load double, ptr %bv, align 8, !dbg !413
  call void @llvm.dbg.value(metadata double %b.sroa.0.0.copyload, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !401
  %b.sroa.4.0.bv.sroa_idx = getelementptr inbounds i8, ptr %bv, i64 8, !dbg !413
  %b.sroa.4.0.copyload = load double, ptr %b.sroa.4.0.bv.sroa_idx, align 8, !dbg !413
  call void @llvm.dbg.value(metadata double %b.sroa.4.0.copyload, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !401
  %b.sroa.5.0.bv.sroa_idx = getelementptr inbounds i8, ptr %bv, i64 16, !dbg !413
  %b.sroa.5.0.copyload = load double, ptr %b.sroa.5.0.bv.sroa_idx, align 8, !dbg !413
  call void @llvm.dbg.value(metadata double %b.sroa.5.0.copyload, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !401
  %b.sroa.6.0.bv.sroa_idx = getelementptr inbounds i8, ptr %bv, i64 24, !dbg !413
  %b.sroa.6.0.copyload = load double, ptr %b.sroa.6.0.bv.sroa_idx, align 8, !dbg !413
  call void @llvm.dbg.value(metadata double %b.sroa.6.0.copyload, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !401
  %b.sroa.7.0.bv.sroa_idx = getelementptr inbounds i8, ptr %bv, i64 32, !dbg !413
  %b.sroa.7.0.copyload = load double, ptr %b.sroa.7.0.bv.sroa_idx, align 8, !dbg !413
  call void @llvm.dbg.value(metadata double %b.sroa.7.0.copyload, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !401
  %b.sroa.8.0.bv.sroa_idx = getelementptr inbounds i8, ptr %bv, i64 40, !dbg !413
  %b.sroa.8.0.copyload = load double, ptr %b.sroa.8.0.bv.sroa_idx, align 8, !dbg !413
  call void @llvm.dbg.value(metadata double %b.sroa.8.0.copyload, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !401
  %5 = load ptr, ptr @stderr, align 8, !dbg !414
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.38, double noundef %b.sroa.0.0.copyload, double noundef %b.sroa.4.0.copyload, double noundef %b.sroa.5.0.copyload, double noundef %b.sroa.6.0.copyload, double noundef %b.sroa.7.0.copyload, double noundef %b.sroa.8.0.copyload) #7, !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @prn_bintree_node(ptr nocapture noundef readonly %b) local_unnamed_addr #3 !dbg !417 {
entry:
  call void @llvm.dbg.value(metadata ptr %b, metadata !421, metadata !DIExpression()), !dbg !423
  %0 = load ptr, ptr @stderr, align 8, !dbg !424
  %1 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 15, i64 1, ptr %0) #7, !dbg !425
  %2 = load ptr, ptr @stderr, align 8, !dbg !426
  %i1 = getelementptr inbounds %struct.btnode, ptr %b, i64 0, i32 4, !dbg !427
  %3 = load i64, ptr %i1, align 8, !dbg !428
  %arrayidx3 = getelementptr inbounds %struct.btnode, ptr %b, i64 0, i32 4, i64 1, !dbg !429
  %4 = load i64, ptr %arrayidx3, align 8, !dbg !429
  %arrayidx5 = getelementptr inbounds %struct.btnode, ptr %b, i64 0, i32 4, i64 2, !dbg !430
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !430
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.40, i64 noundef %3, i64 noundef %4, i64 noundef %5) #7, !dbg !431
  %6 = load ptr, ptr @stderr, align 8, !dbg !432
  %n = getelementptr inbounds %struct.btnode, ptr %b, i64 0, i32 3, !dbg !433
  %7 = load i64, ptr %n, align 8, !dbg !434
  %arrayidx9 = getelementptr inbounds %struct.btnode, ptr %b, i64 0, i32 3, i64 1, !dbg !435
  %8 = load i64, ptr %arrayidx9, align 8, !dbg !435
  %arrayidx11 = getelementptr inbounds %struct.btnode, ptr %b, i64 0, i32 3, i64 2, !dbg !436
  %9 = load i64, ptr %arrayidx11, align 8, !dbg !436
  %call12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.41, i64 noundef %7, i64 noundef %8, i64 noundef %9) #7, !dbg !437
  %10 = load ptr, ptr @stderr, align 8, !dbg !438
  %p = getelementptr inbounds %struct.btnode, ptr %b, i64 0, i32 1, !dbg !439
  %11 = load double, ptr %p, align 8, !dbg !440
  %arrayidx15 = getelementptr inbounds %struct.btnode, ptr %b, i64 0, i32 1, i64 1, !dbg !441
  %12 = load double, ptr %arrayidx15, align 8, !dbg !441
  %arrayidx17 = getelementptr inbounds %struct.btnode, ptr %b, i64 0, i32 1, i64 2, !dbg !442
  %13 = load double, ptr %arrayidx17, align 8, !dbg !442
  %call18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.42, double noundef %11, double noundef %12, double noundef %13) #7, !dbg !443
  %14 = load ptr, ptr @stderr, align 8, !dbg !444
  %axis = getelementptr inbounds %struct.btnode, ptr %b, i64 0, i32 5, !dbg !445
  %15 = load i64, ptr %axis, align 8, !dbg !445
  %call19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.43, i64 noundef %15) #7, !dbg !446
  %16 = load ptr, ptr @stderr, align 8, !dbg !447
  %nprims = getelementptr inbounds %struct.btnode, ptr %b, i64 0, i32 2, !dbg !448
  %17 = load i64, ptr %nprims, align 8, !dbg !448
  %call20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.44, i64 noundef %17) #7, !dbg !449
  %18 = load ptr, ptr @stderr, align 8, !dbg !450
  %19 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 29, i64 1, ptr %18) #7, !dbg !451
  %20 = load i64, ptr %nprims, align 8, !dbg !452
  %cmp = icmp sgt i64 %20, 0, !dbg !454
  br i1 %cmp, label %for.body, label %if.end30, !dbg !455

for.body:                                         ; preds = %entry, %for.inc
  %i.049 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.049, metadata !422, metadata !DIExpression()), !dbg !423
  %21 = load ptr, ptr @stderr, align 8, !dbg !456
  %22 = load ptr, ptr %b, align 8, !dbg !460
  %arrayidx25 = getelementptr inbounds ptr, ptr %22, i64 %i.049, !dbg !461
  %23 = load ptr, ptr %arrayidx25, align 8, !dbg !461
  %24 = load i64, ptr %23, align 8, !dbg !462
  %call26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.46, i64 noundef %24) #7, !dbg !463
  %rem = and i64 %i.049, 7, !dbg !464
  %cmp27 = icmp eq i64 %rem, 7, !dbg !466
  br i1 %cmp27, label %if.then28, label %for.inc, !dbg !467

if.then28:                                        ; preds = %for.body
  %25 = load ptr, ptr @stderr, align 8, !dbg !468
  %fputc = tail call i32 @fputc(i32 10, ptr %25), !dbg !469
  br label %for.inc, !dbg !469

for.inc:                                          ; preds = %for.body, %if.then28
  %inc = add nuw nsw i64 %i.049, 1, !dbg !470
  call void @llvm.dbg.value(metadata i64 %inc, metadata !422, metadata !DIExpression()), !dbg !423
  %26 = load i64, ptr %nprims, align 8, !dbg !471
  %cmp24 = icmp slt i64 %inc, %26, !dbg !472
  br i1 %cmp24, label %for.body, label %if.end30, !dbg !473, !llvm.loop !474

if.end30:                                         ; preds = %for.inc, %entry
  %27 = load ptr, ptr @stderr, align 8, !dbg !476
  %28 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 26, i64 1, ptr %27) #7, !dbg !477
  ret void, !dbg !478
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @prn_bintree_leaves(ptr nocapture noundef readonly %root) local_unnamed_addr #3 !dbg !479 {
entry:
  call void @llvm.dbg.value(metadata ptr %root, metadata !481, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %root, metadata !482, metadata !DIExpression()), !dbg !483
  %axis6 = getelementptr inbounds %struct.btnode, ptr %root, i64 0, i32 5, !dbg !484
  %0 = load i64, ptr %axis6, align 8, !dbg !484
  %cmp7 = icmp eq i64 %0, -1, !dbg !486
  br i1 %cmp7, label %if.then, label %if.else, !dbg !487

if.then:                                          ; preds = %if.else, %entry
  %root.tr.lcssa = phi ptr [ %root, %entry ], [ %2, %if.else ]
  tail call void @prn_bintree_node(ptr noundef nonnull %root.tr.lcssa), !dbg !488
  ret void, !dbg !489

if.else:                                          ; preds = %entry, %if.else
  %root.tr8 = phi ptr [ %2, %if.else ], [ %root, %entry ]
  call void @llvm.dbg.value(metadata ptr %root.tr8, metadata !481, metadata !DIExpression()), !dbg !483
  %btn = getelementptr inbounds %struct.btnode, ptr %root.tr8, i64 0, i32 7, !dbg !490
  %1 = load ptr, ptr %btn, align 8, !dbg !492
  tail call void @prn_bintree_leaves(ptr noundef %1), !dbg !493
  %arrayidx2 = getelementptr inbounds %struct.btnode, ptr %root.tr8, i64 0, i32 7, i64 1, !dbg !494
  %2 = load ptr, ptr %arrayidx2, align 8, !dbg !494
  call void @llvm.dbg.value(metadata ptr %2, metadata !481, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %2, metadata !482, metadata !DIExpression()), !dbg !483
  %axis = getelementptr inbounds %struct.btnode, ptr %2, i64 0, i32 5, !dbg !484
  %3 = load i64, ptr %axis, align 8, !dbg !484
  %cmp = icmp eq i64 %3, -1, !dbg !486
  br i1 %cmp, label %if.then, label %if.else, !dbg !487
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @prn_pepa_prim_list(ptr nocapture noundef readonly %pepa, i64 noundef %nprims) local_unnamed_addr #3 !dbg !495 {
entry:
  call void @llvm.dbg.value(metadata ptr %pepa, metadata !499, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i64 %nprims, metadata !500, metadata !DIExpression()), !dbg !502
  %cmp = icmp sgt i64 %nprims, 0, !dbg !503
  br i1 %cmp, label %for.body, label %if.end5, !dbg !505

for.body:                                         ; preds = %entry, %for.inc
  %i.011 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.011, metadata !501, metadata !DIExpression()), !dbg !502
  %0 = load ptr, ptr @stderr, align 8, !dbg !506
  %arrayidx = getelementptr inbounds ptr, ptr %pepa, i64 %i.011, !dbg !511
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !511
  %2 = load i64, ptr %1, align 8, !dbg !512
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %2) #7, !dbg !513
  %rem = and i64 %i.011, 7, !dbg !514
  %cmp2 = icmp eq i64 %rem, 7, !dbg !516
  br i1 %cmp2, label %if.then3, label %for.inc, !dbg !517

if.then3:                                         ; preds = %for.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !518
  %fputc = tail call i32 @fputc(i32 10, ptr %3), !dbg !519
  br label %for.inc, !dbg !519

for.inc:                                          ; preds = %for.body, %if.then3
  %inc = add nuw nsw i64 %i.011, 1, !dbg !520
  call void @llvm.dbg.value(metadata i64 %inc, metadata !501, metadata !DIExpression()), !dbg !502
  %exitcond.not = icmp eq i64 %inc, %nprims, !dbg !521
  br i1 %exitcond.not, label %if.end5, label %for.body, !dbg !522, !llvm.loop !523

if.end5:                                          ; preds = %for.inc, %entry
  ret void, !dbg !525
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "huprn.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "f3d1cf0964ad9d55f199fd84398d1b33")
!2 = !{!3, !78, !130}
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
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRID", file: !6, line: 572, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "grid", file: !6, line: 539, size: 1152, elements: !81)
!81 = !{!82, !83, !99, !103, !104, !105, !107, !108, !109, !110, !111, !128}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !80, file: !6, line: 541, baseType: !10, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "hashtable", scope: !80, file: !6, line: 542, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOXEL", file: !6, line: 405, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "voxel", file: !6, line: 394, size: 320, elements: !88)
!88 = !{!89, !90, !91, !93, !94, !95}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !87, file: !6, line: 396, baseType: !10, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !87, file: !6, line: 397, baseType: !10, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !6, line: 398, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "cell", scope: !87, file: !6, line: 399, baseType: !45, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "celltype", scope: !87, file: !6, line: 400, baseType: !19, size: 8, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !87, file: !6, line: 403, baseType: !96, size: 56, offset: 264)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 56, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 7)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "emptycells", scope: !80, file: !6, line: 548, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !6, line: 298, baseType: !102)
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pepa", scope: !80, file: !6, line: 555, baseType: !3, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "num_prims", scope: !80, file: !6, line: 556, baseType: !10, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc", scope: !80, file: !6, line: 558, baseType: !106, size: 192, offset: 320)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !31)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !80, file: !6, line: 562, baseType: !10, size: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !80, file: !6, line: 563, baseType: !28, size: 192, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cellsize", scope: !80, file: !6, line: 564, baseType: !28, size: 192, offset: 768)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "subdiv_level", scope: !80, file: !6, line: 566, baseType: !10, size: 64, offset: 960)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "bintree", scope: !80, file: !6, line: 569, baseType: !112, size: 64, offset: 1024)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "BTNODE", file: !6, line: 535, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btnode", file: !6, line: 522, size: 960, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !114, file: !6, line: 524, baseType: !3, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !114, file: !6, line: 525, baseType: !28, size: 192, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nprims", scope: !114, file: !6, line: 527, baseType: !10, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !114, file: !6, line: 528, baseType: !106, size: 192, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !114, file: !6, line: 529, baseType: !106, size: 192, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !114, file: !6, line: 531, baseType: !10, size: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "totalPrimsAllocated", scope: !114, file: !6, line: 532, baseType: !10, size: 64, offset: 768)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !114, file: !6, line: 533, baseType: !124, size: 128, offset: 832)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, elements: !126)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!126 = !{!127}
!127 = !DISubrange(count: 2)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !6, line: 570, baseType: !129, size: 64, offset: 1088)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !{i32 7, !"Dwarf Version", i32 5}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{i32 1, !"wchar_size", i32 4}
!134 = !{i32 7, !"PIC Level", i32 2}
!135 = !{i32 7, !"PIE Level", i32 2}
!136 = !{i32 7, !"uwtable", i32 2}
!137 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!138 = distinct !DISubprogram(name: "prn_voxel", scope: !1, file: !1, line: 34, type: !139, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !85}
!141 = !{!142, !143, !144, !145, !146}
!142 = !DILocalVariable(name: "v", arg: 1, scope: !138, file: !1, line: 34, type: !85)
!143 = !DILocalVariable(name: "pe", scope: !138, file: !1, line: 36, type: !4)
!144 = !DILocalVariable(name: "pepa", scope: !138, file: !1, line: 36, type: !3)
!145 = !DILocalVariable(name: "g", scope: !138, file: !1, line: 37, type: !78)
!146 = !DILocalVariable(name: "i", scope: !138, file: !1, line: 38, type: !10)
!147 = !DILocation(line: 0, scope: !138)
!148 = !DILocation(line: 40, column: 10, scope: !138)
!149 = !DILocation(line: 40, column: 53, scope: !138)
!150 = !DILocation(line: 40, column: 2, scope: !138)
!151 = !DILocation(line: 41, column: 10, scope: !138)
!152 = !DILocation(line: 41, column: 47, scope: !138)
!153 = !DILocation(line: 41, column: 44, scope: !138)
!154 = !DILocation(line: 41, column: 2, scope: !138)
!155 = !DILocation(line: 43, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !138, file: !1, line: 43, column: 6)
!157 = !DILocation(line: 43, column: 18, scope: !156)
!158 = !DILocation(line: 43, column: 6, scope: !138)
!159 = !DILocation(line: 45, column: 11, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 44, column: 3)
!161 = !DILocation(line: 45, column: 3, scope: !160)
!162 = !DILocation(line: 46, column: 11, scope: !160)
!163 = !DILocation(line: 46, column: 3, scope: !160)
!164 = !DILocation(line: 48, column: 24, scope: !160)
!165 = !DILocation(line: 51, column: 20, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 51, column: 3)
!167 = distinct !DILexicalBlock(scope: !160, file: !1, line: 51, column: 3)
!168 = !DILocation(line: 51, column: 15, scope: !166)
!169 = !DILocation(line: 51, column: 3, scope: !167)
!170 = !DILocation(line: 53, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !1, line: 52, column: 4)
!172 = !DILocation(line: 54, column: 12, scope: !171)
!173 = !DILocation(line: 54, column: 46, scope: !171)
!174 = !DILocation(line: 54, column: 4, scope: !171)
!175 = !DILocation(line: 51, column: 34, scope: !166)
!176 = distinct !{!176, !169, !177, !178, !179}
!177 = !DILocation(line: 55, column: 4, scope: !167)
!178 = !{!"llvm.loop.mustprogress"}
!179 = !{!"llvm.loop.unroll.disable"}
!180 = !DILocation(line: 58, column: 9, scope: !181)
!181 = distinct !DILexicalBlock(scope: !138, file: !1, line: 58, column: 6)
!182 = !DILocation(line: 58, column: 18, scope: !181)
!183 = !DILocation(line: 58, column: 6, scope: !138)
!184 = !DILocation(line: 60, column: 18, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 59, column: 3)
!186 = !DILocation(line: 61, column: 3, scope: !185)
!187 = !DILocation(line: 62, column: 11, scope: !185)
!188 = !DILocation(line: 62, column: 52, scope: !185)
!189 = !DILocation(line: 62, column: 3, scope: !185)
!190 = !DILocation(line: 63, column: 3, scope: !185)
!191 = !DILocation(line: 65, column: 10, scope: !138)
!192 = !DILocation(line: 65, column: 2, scope: !138)
!193 = !DILocation(line: 66, column: 2, scope: !138)
!194 = distinct !DISubprogram(name: "prn_grid", scope: !1, file: !1, line: 70, type: !195, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !78}
!197 = !{!198, !199, !200, !201, !202}
!198 = !DILocalVariable(name: "g", arg: 1, scope: !194, file: !1, line: 70, type: !78)
!199 = !DILocalVariable(name: "i", scope: !194, file: !1, line: 72, type: !10)
!200 = !DILocalVariable(name: "n", scope: !194, file: !1, line: 73, type: !10)
!201 = !DILocalVariable(name: "ng", scope: !194, file: !1, line: 74, type: !78)
!202 = !DILocalVariable(name: "v", scope: !194, file: !1, line: 75, type: !85)
!203 = !DILocation(line: 0, scope: !194)
!204 = !DILocation(line: 77, column: 10, scope: !194)
!205 = !DILocation(line: 77, column: 68, scope: !194)
!206 = !DILocation(line: 77, column: 2, scope: !194)
!207 = !DILocation(line: 78, column: 10, scope: !194)
!208 = !DILocation(line: 78, column: 68, scope: !194)
!209 = !DILocation(line: 78, column: 2, scope: !194)
!210 = !DILocation(line: 79, column: 10, scope: !194)
!211 = !DILocation(line: 79, column: 68, scope: !194)
!212 = !DILocation(line: 79, column: 65, scope: !194)
!213 = !DILocation(line: 79, column: 81, scope: !194)
!214 = !DILocation(line: 79, column: 97, scope: !194)
!215 = !DILocation(line: 79, column: 2, scope: !194)
!216 = !DILocation(line: 80, column: 10, scope: !194)
!217 = !DILocation(line: 80, column: 68, scope: !194)
!218 = !DILocation(line: 80, column: 2, scope: !194)
!219 = !DILocation(line: 81, column: 10, scope: !194)
!220 = !DILocation(line: 81, column: 68, scope: !194)
!221 = !DILocation(line: 81, column: 65, scope: !194)
!222 = !DILocation(line: 81, column: 76, scope: !194)
!223 = !DILocation(line: 81, column: 87, scope: !194)
!224 = !DILocation(line: 81, column: 2, scope: !194)
!225 = !DILocation(line: 82, column: 10, scope: !194)
!226 = !DILocation(line: 82, column: 68, scope: !194)
!227 = !DILocation(line: 82, column: 65, scope: !194)
!228 = !DILocation(line: 82, column: 81, scope: !194)
!229 = !DILocation(line: 82, column: 97, scope: !194)
!230 = !DILocation(line: 82, column: 2, scope: !194)
!231 = !DILocation(line: 83, column: 10, scope: !194)
!232 = !DILocation(line: 83, column: 68, scope: !194)
!233 = !DILocation(line: 83, column: 2, scope: !194)
!234 = !DILocation(line: 85, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !194, file: !1, line: 85, column: 6)
!236 = !DILocation(line: 85, column: 14, scope: !235)
!237 = !DILocation(line: 0, scope: !235)
!238 = !DILocation(line: 85, column: 6, scope: !194)
!239 = !DILocation(line: 88, column: 54, scope: !240)
!240 = distinct !DILexicalBlock(scope: !235, file: !1, line: 86, column: 3)
!241 = !DILocation(line: 88, column: 3, scope: !240)
!242 = !DILocation(line: 89, column: 3, scope: !240)
!243 = !DILocation(line: 91, column: 3, scope: !235)
!244 = !DILocation(line: 93, column: 10, scope: !194)
!245 = !DILocation(line: 93, column: 2, scope: !194)
!246 = !DILocation(line: 95, column: 6, scope: !194)
!247 = !DILocation(line: 95, column: 23, scope: !194)
!248 = !DILocation(line: 95, column: 21, scope: !194)
!249 = !DILocation(line: 97, column: 16, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 97, column: 2)
!251 = distinct !DILexicalBlock(scope: !194, file: !1, line: 97, column: 2)
!252 = !DILocation(line: 97, column: 2, scope: !251)
!253 = !DILocation(line: 99, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !1, line: 99, column: 7)
!255 = distinct !DILexicalBlock(scope: !250, file: !1, line: 98, column: 3)
!256 = !DILocation(line: 99, column: 31, scope: !254)
!257 = !DILocation(line: 99, column: 7, scope: !255)
!258 = !DILocation(line: 100, column: 12, scope: !254)
!259 = !DILocation(line: 100, column: 4, scope: !254)
!260 = !DILocation(line: 103, column: 8, scope: !261)
!261 = distinct !DILexicalBlock(scope: !254, file: !1, line: 102, column: 4)
!262 = !DILocation(line: 104, column: 4, scope: !261)
!263 = !DILocation(line: 97, column: 22, scope: !250)
!264 = distinct !{!264, !252, !265, !178, !179}
!265 = !DILocation(line: 106, column: 3, scope: !251)
!266 = !DILocation(line: 109, column: 10, scope: !194)
!267 = !DILocation(line: 109, column: 2, scope: !194)
!268 = !DILocation(line: 110, column: 2, scope: !194)
!269 = !DISubprogram(name: "lookup_emptycells", scope: !6, file: !6, line: 873, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{!10, !10, !78}
!272 = !{}
!273 = !DISubprogram(name: "lookup_hashtable", scope: !6, file: !6, line: 872, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !272)
!274 = !DISubroutineType(types: !275)
!275 = !{!85, !10, !78}
!276 = distinct !DISubprogram(name: "prn_ray", scope: !1, file: !1, line: 114, type: !277, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !317)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAY", file: !6, line: 625, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ray", file: !6, line: 611, size: 7104, elements: !282)
!282 = !{!283, !285, !286, !287, !288, !289, !290, !307, !308, !309, !313, !316}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !281, file: !6, line: 613, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !6, line: 301, baseType: !11)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !281, file: !6, line: 614, baseType: !10, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !281, file: !6, line: 614, baseType: !10, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !281, file: !6, line: 615, baseType: !68, size: 192, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !281, file: !6, line: 616, baseType: !68, size: 192, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !281, file: !6, line: 617, baseType: !10, size: 64, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !281, file: !6, line: 618, baseType: !291, size: 64, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAYINFO", file: !6, line: 603, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rayinfo", file: !6, line: 582, size: 1216, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "grid", scope: !293, file: !6, line: 584, baseType: !78, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !293, file: !6, line: 585, baseType: !28, size: 192, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "entry_plane", scope: !293, file: !6, line: 587, baseType: !10, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "t_in", scope: !293, file: !6, line: 589, baseType: !29, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "exit_plane", scope: !293, file: !6, line: 591, baseType: !10, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "t_out", scope: !293, file: !6, line: 593, baseType: !29, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !293, file: !6, line: 595, baseType: !28, size: 192, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "index3D", scope: !293, file: !6, line: 596, baseType: !106, size: 192, offset: 704)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "index1D", scope: !293, file: !6, line: 597, baseType: !10, size: 64, offset: 896)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc1D", scope: !293, file: !6, line: 600, baseType: !106, size: 192, offset: 960)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !6, line: 601, baseType: !306, size: 64, offset: 1152)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ri_indx", scope: !281, file: !6, line: 619, baseType: !10, size: 64, offset: 704)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc3D", scope: !281, file: !6, line: 620, baseType: !106, size: 192, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rinfo", scope: !281, file: !6, line: 621, baseType: !310, size: 6080, offset: 960)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 6080, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 5)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !281, file: !6, line: 622, baseType: !314, size: 32, offset: 7040)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "R32", file: !6, line: 307, baseType: !315)
!315 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !281, file: !6, line: 623, baseType: !314, size: 32, offset: 7072)
!317 = !{!318, !319, !320}
!318 = !DILocalVariable(name: "r", arg: 1, scope: !276, file: !1, line: 114, type: !279)
!319 = !DILocalVariable(name: "ri", scope: !276, file: !1, line: 116, type: !291)
!320 = !DILocalVariable(name: "g", scope: !276, file: !1, line: 117, type: !78)
!321 = !DILocation(line: 0, scope: !276)
!322 = !DILocation(line: 119, column: 10, scope: !276)
!323 = !DILocation(line: 119, column: 77, scope: !276)
!324 = !DILocation(line: 119, column: 2, scope: !276)
!325 = !DILocation(line: 120, column: 10, scope: !276)
!326 = !DILocation(line: 120, column: 77, scope: !276)
!327 = !DILocation(line: 120, column: 74, scope: !276)
!328 = !DILocation(line: 120, column: 83, scope: !276)
!329 = !DILocation(line: 120, column: 92, scope: !276)
!330 = !DILocation(line: 120, column: 2, scope: !276)
!331 = !DILocation(line: 121, column: 10, scope: !276)
!332 = !DILocation(line: 121, column: 77, scope: !276)
!333 = !DILocation(line: 121, column: 74, scope: !276)
!334 = !DILocation(line: 121, column: 83, scope: !276)
!335 = !DILocation(line: 121, column: 92, scope: !276)
!336 = !DILocation(line: 121, column: 2, scope: !276)
!337 = !DILocation(line: 122, column: 10, scope: !276)
!338 = !DILocation(line: 122, column: 77, scope: !276)
!339 = !DILocation(line: 122, column: 74, scope: !276)
!340 = !DILocation(line: 122, column: 91, scope: !276)
!341 = !DILocation(line: 122, column: 108, scope: !276)
!342 = !DILocation(line: 122, column: 2, scope: !276)
!343 = !DILocation(line: 123, column: 10, scope: !276)
!344 = !DILocation(line: 123, column: 77, scope: !276)
!345 = !DILocation(line: 123, column: 2, scope: !276)
!346 = !DILocation(line: 124, column: 10, scope: !276)
!347 = !DILocation(line: 124, column: 2, scope: !276)
!348 = !DILocation(line: 126, column: 10, scope: !276)
!349 = !DILocation(line: 127, column: 11, scope: !276)
!350 = !DILocation(line: 129, column: 10, scope: !276)
!351 = !DILocation(line: 129, column: 77, scope: !276)
!352 = !DILocation(line: 129, column: 2, scope: !276)
!353 = !DILocation(line: 130, column: 10, scope: !276)
!354 = !DILocation(line: 130, column: 78, scope: !276)
!355 = !DILocation(line: 130, column: 74, scope: !276)
!356 = !DILocation(line: 130, column: 84, scope: !276)
!357 = !DILocation(line: 130, column: 94, scope: !276)
!358 = !DILocation(line: 130, column: 2, scope: !276)
!359 = !DILocation(line: 131, column: 10, scope: !276)
!360 = !DILocation(line: 131, column: 78, scope: !276)
!361 = !DILocation(line: 131, column: 2, scope: !276)
!362 = !DILocation(line: 132, column: 10, scope: !276)
!363 = !DILocation(line: 132, column: 78, scope: !276)
!364 = !DILocation(line: 132, column: 2, scope: !276)
!365 = !DILocation(line: 133, column: 10, scope: !276)
!366 = !DILocation(line: 133, column: 78, scope: !276)
!367 = !DILocation(line: 133, column: 2, scope: !276)
!368 = !DILocation(line: 134, column: 10, scope: !276)
!369 = !DILocation(line: 134, column: 78, scope: !276)
!370 = !DILocation(line: 134, column: 2, scope: !276)
!371 = !DILocation(line: 135, column: 10, scope: !276)
!372 = !DILocation(line: 135, column: 78, scope: !276)
!373 = !DILocation(line: 135, column: 74, scope: !276)
!374 = !DILocation(line: 135, column: 88, scope: !276)
!375 = !DILocation(line: 135, column: 102, scope: !276)
!376 = !DILocation(line: 135, column: 2, scope: !276)
!377 = !DILocation(line: 136, column: 10, scope: !276)
!378 = !DILocation(line: 136, column: 78, scope: !276)
!379 = !DILocation(line: 136, column: 74, scope: !276)
!380 = !DILocation(line: 136, column: 90, scope: !276)
!381 = !DILocation(line: 136, column: 106, scope: !276)
!382 = !DILocation(line: 136, column: 2, scope: !276)
!383 = !DILocation(line: 137, column: 10, scope: !276)
!384 = !DILocation(line: 137, column: 78, scope: !276)
!385 = !DILocation(line: 137, column: 2, scope: !276)
!386 = !DILocation(line: 138, column: 10, scope: !276)
!387 = !DILocation(line: 138, column: 78, scope: !276)
!388 = !DILocation(line: 138, column: 74, scope: !276)
!389 = !DILocation(line: 138, column: 93, scope: !276)
!390 = !DILocation(line: 138, column: 112, scope: !276)
!391 = !DILocation(line: 138, column: 2, scope: !276)
!392 = !DILocation(line: 139, column: 10, scope: !276)
!393 = !DILocation(line: 139, column: 2, scope: !276)
!394 = !DILocation(line: 140, column: 2, scope: !276)
!395 = distinct !DISubprogram(name: "prn_PrimElem", scope: !1, file: !1, line: 144, type: !396, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !4}
!398 = !{!399, !400}
!399 = !DILocalVariable(name: "p", arg: 1, scope: !395, file: !1, line: 144, type: !4)
!400 = !DILocalVariable(name: "b", scope: !395, file: !1, line: 146, type: !24)
!401 = !DILocation(line: 0, scope: !395)
!402 = !DILocation(line: 148, column: 8, scope: !403)
!403 = distinct !DILexicalBlock(scope: !395, file: !1, line: 148, column: 6)
!404 = !DILocation(line: 148, column: 6, scope: !395)
!405 = !DILocation(line: 150, column: 56, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !1, line: 149, column: 3)
!407 = !DILocation(line: 150, column: 3, scope: !406)
!408 = !DILocation(line: 151, column: 3, scope: !406)
!409 = !DILocation(line: 155, column: 6, scope: !395)
!410 = !DILocation(line: 155, column: 20, scope: !395)
!411 = !DILocation(line: 155, column: 28, scope: !395)
!412 = !DILocation(line: 154, column: 2, scope: !395)
!413 = !DILocation(line: 157, column: 9, scope: !395)
!414 = !DILocation(line: 159, column: 10, scope: !395)
!415 = !DILocation(line: 159, column: 2, scope: !395)
!416 = !DILocation(line: 161, column: 2, scope: !395)
!417 = distinct !DISubprogram(name: "prn_bintree_node", scope: !1, file: !1, line: 165, type: !418, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !112}
!420 = !{!421, !422}
!421 = !DILocalVariable(name: "b", arg: 1, scope: !417, file: !1, line: 165, type: !112)
!422 = !DILocalVariable(name: "i", scope: !417, file: !1, line: 167, type: !10)
!423 = !DILocation(line: 0, scope: !417)
!424 = !DILocation(line: 169, column: 10, scope: !417)
!425 = !DILocation(line: 169, column: 2, scope: !417)
!426 = !DILocation(line: 170, column: 10, scope: !417)
!427 = !DILocation(line: 170, column: 77, scope: !417)
!428 = !DILocation(line: 170, column: 74, scope: !417)
!429 = !DILocation(line: 170, column: 83, scope: !417)
!430 = !DILocation(line: 170, column: 92, scope: !417)
!431 = !DILocation(line: 170, column: 2, scope: !417)
!432 = !DILocation(line: 171, column: 10, scope: !417)
!433 = !DILocation(line: 171, column: 77, scope: !417)
!434 = !DILocation(line: 171, column: 74, scope: !417)
!435 = !DILocation(line: 171, column: 83, scope: !417)
!436 = !DILocation(line: 171, column: 92, scope: !417)
!437 = !DILocation(line: 171, column: 2, scope: !417)
!438 = !DILocation(line: 172, column: 10, scope: !417)
!439 = !DILocation(line: 172, column: 77, scope: !417)
!440 = !DILocation(line: 172, column: 74, scope: !417)
!441 = !DILocation(line: 172, column: 83, scope: !417)
!442 = !DILocation(line: 172, column: 92, scope: !417)
!443 = !DILocation(line: 172, column: 2, scope: !417)
!444 = !DILocation(line: 173, column: 10, scope: !417)
!445 = !DILocation(line: 173, column: 77, scope: !417)
!446 = !DILocation(line: 173, column: 2, scope: !417)
!447 = !DILocation(line: 174, column: 10, scope: !417)
!448 = !DILocation(line: 174, column: 77, scope: !417)
!449 = !DILocation(line: 174, column: 2, scope: !417)
!450 = !DILocation(line: 175, column: 10, scope: !417)
!451 = !DILocation(line: 175, column: 2, scope: !417)
!452 = !DILocation(line: 177, column: 9, scope: !453)
!453 = distinct !DILexicalBlock(scope: !417, file: !1, line: 177, column: 6)
!454 = !DILocation(line: 177, column: 16, scope: !453)
!455 = !DILocation(line: 177, column: 6, scope: !417)
!456 = !DILocation(line: 180, column: 12, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 179, column: 4)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 178, column: 3)
!459 = distinct !DILexicalBlock(scope: !453, file: !1, line: 178, column: 3)
!460 = !DILocation(line: 180, column: 32, scope: !457)
!461 = !DILocation(line: 180, column: 29, scope: !457)
!462 = !DILocation(line: 180, column: 39, scope: !457)
!463 = !DILocation(line: 180, column: 4, scope: !457)
!464 = !DILocation(line: 182, column: 10, scope: !465)
!465 = distinct !DILexicalBlock(scope: !457, file: !1, line: 182, column: 8)
!466 = !DILocation(line: 182, column: 14, scope: !465)
!467 = !DILocation(line: 182, column: 8, scope: !457)
!468 = !DILocation(line: 183, column: 13, scope: !465)
!469 = !DILocation(line: 183, column: 5, scope: !465)
!470 = !DILocation(line: 178, column: 31, scope: !458)
!471 = !DILocation(line: 178, column: 22, scope: !458)
!472 = !DILocation(line: 178, column: 17, scope: !458)
!473 = !DILocation(line: 178, column: 3, scope: !459)
!474 = distinct !{!474, !473, !475, !178, !179}
!475 = !DILocation(line: 184, column: 4, scope: !459)
!476 = !DILocation(line: 186, column: 10, scope: !417)
!477 = !DILocation(line: 186, column: 2, scope: !417)
!478 = !DILocation(line: 187, column: 2, scope: !417)
!479 = distinct !DISubprogram(name: "prn_bintree_leaves", scope: !1, file: !1, line: 192, type: !418, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !480)
!480 = !{!481, !482}
!481 = !DILocalVariable(name: "root", arg: 1, scope: !479, file: !1, line: 192, type: !112)
!482 = !DILocalVariable(name: "b", scope: !479, file: !1, line: 194, type: !112)
!483 = !DILocation(line: 0, scope: !479)
!484 = !DILocation(line: 197, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !479, file: !1, line: 197, column: 6)
!486 = !DILocation(line: 197, column: 14, scope: !485)
!487 = !DILocation(line: 197, column: 6, scope: !479)
!488 = !DILocation(line: 198, column: 3, scope: !485)
!489 = !DILocation(line: 204, column: 2, scope: !479)
!490 = !DILocation(line: 201, column: 25, scope: !491)
!491 = distinct !DILexicalBlock(scope: !485, file: !1, line: 200, column: 3)
!492 = !DILocation(line: 201, column: 22, scope: !491)
!493 = !DILocation(line: 201, column: 3, scope: !491)
!494 = !DILocation(line: 202, column: 22, scope: !491)
!495 = distinct !DISubprogram(name: "prn_pepa_prim_list", scope: !1, file: !1, line: 207, type: !496, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !3, !10}
!498 = !{!499, !500, !501}
!499 = !DILocalVariable(name: "pepa", arg: 1, scope: !495, file: !1, line: 207, type: !3)
!500 = !DILocalVariable(name: "nprims", arg: 2, scope: !495, file: !1, line: 207, type: !10)
!501 = !DILocalVariable(name: "i", scope: !495, file: !1, line: 209, type: !10)
!502 = !DILocation(line: 0, scope: !495)
!503 = !DILocation(line: 211, column: 13, scope: !504)
!504 = distinct !DILexicalBlock(scope: !495, file: !1, line: 211, column: 6)
!505 = !DILocation(line: 211, column: 6, scope: !495)
!506 = !DILocation(line: 215, column: 12, scope: !507)
!507 = distinct !DILexicalBlock(scope: !508, file: !1, line: 214, column: 4)
!508 = distinct !DILexicalBlock(scope: !509, file: !1, line: 213, column: 3)
!509 = distinct !DILexicalBlock(scope: !510, file: !1, line: 213, column: 3)
!510 = distinct !DILexicalBlock(scope: !504, file: !1, line: 212, column: 3)
!511 = !DILocation(line: 215, column: 29, scope: !507)
!512 = !DILocation(line: 215, column: 38, scope: !507)
!513 = !DILocation(line: 215, column: 4, scope: !507)
!514 = !DILocation(line: 217, column: 10, scope: !515)
!515 = distinct !DILexicalBlock(scope: !507, file: !1, line: 217, column: 8)
!516 = !DILocation(line: 217, column: 14, scope: !515)
!517 = !DILocation(line: 217, column: 8, scope: !507)
!518 = !DILocation(line: 218, column: 13, scope: !515)
!519 = !DILocation(line: 218, column: 5, scope: !515)
!520 = !DILocation(line: 213, column: 28, scope: !508)
!521 = !DILocation(line: 213, column: 17, scope: !508)
!522 = !DILocation(line: 213, column: 3, scope: !509)
!523 = distinct !{!523, !522, !524, !178, !179}
!524 = !DILocation(line: 219, column: 4, scope: !509)
!525 = !DILocation(line: 221, column: 2, scope: !495)
