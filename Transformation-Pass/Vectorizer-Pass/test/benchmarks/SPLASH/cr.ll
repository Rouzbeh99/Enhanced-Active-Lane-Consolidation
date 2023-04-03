; ModuleID = 'cr.c'
source_filename = "cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, ptr, ptr, ptr, i64, [3 x i64], i64, [3 x double], [3 x double], i64, ptr, ptr }
%struct.voxel = type { i64, i64, ptr, ptr, i8, [7 x i8] }
%struct.bbox = type { [3 x double], [3 x double] }
%struct.element = type { i64, ptr, ptr, %struct.bbox }
%struct.btnode = type { ptr, [3 x double], i64, [3 x i64], [3 x i64], i64, i64, [2 x ptr] }

@gridlist = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"    Print Gridlist \0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"    End Gridlist \0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"    gridsize                             %3ld \0A\00", align 1
@hu_gridsize = external local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [48 x i8] c"    hashtable buckets                    %3ld \0A\00", align 1
@hu_numbuckets = external local_unnamed_addr global i64, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"    maximum subdivision level            %3ld \0A\00", align 1
@hu_max_subdiv_level = external local_unnamed_addr global i64, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"    maximum primitives / cell            %3ld \0A\00", align 1
@hu_max_prims_cell = external local_unnamed_addr global i64, align 8
@.str.9 = private unnamed_addr constant [48 x i8] c"    grids                                %3ld \0A\00", align 1
@grids = external local_unnamed_addr global i64, align 8
@empty_voxels = external local_unnamed_addr global i64, align 8
@nonempty_voxels = external local_unnamed_addr global i64, align 8
@nonempty_leafs = external local_unnamed_addr global i64, align 8
@.str.10 = private unnamed_addr constant [54 x i8] c"    empty voxels                    %8ld    %3ld %% \0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"    nonempty voxels                 %8ld    %3ld %% \0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"    empty leafs                     %8ld    %3ld %% \0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"    nonempty leafs                  %8ld    %3ld %% \0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"    primitives / leaf                 %6.1lf \0A\00", align 1
@prims_in_leafs = external local_unnamed_addr global i64, align 8
@empty_masks = external local_unnamed_addr global [64 x i64], align 16
@nonempty_masks = external local_unnamed_addr global [64 x i64], align 16
@.str.15 = private unnamed_addr constant [66 x i8] c"bintree_lookup: gridsizes (%ld, %ld, %ld), axis %ld & nprims %ld\0A\00", align 1
@total_cells = external local_unnamed_addr global i64, align 8
@str = private unnamed_addr constant [67 x i8] c"****** Hierarchical uniform grid data structure statistics ******\0A\00", align 1
@str.16 = private unnamed_addr constant [46 x i8] c"    Data structure evaluated as a preprocess.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @prn_gridlist() local_unnamed_addr #0 !dbg !142 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !dbg !147
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 20, i64 1, ptr %0) #13, !dbg !148
  call void @llvm.dbg.value(metadata ptr undef, metadata !146, metadata !DIExpression()), !dbg !149
  %g.04 = load ptr, ptr @gridlist, align 8, !dbg !149
  call void @llvm.dbg.value(metadata ptr %g.04, metadata !146, metadata !DIExpression()), !dbg !149
  %cmp.not5 = icmp eq ptr %g.04, null, !dbg !150
  br i1 %cmp.not5, label %while.end, label %while.body, !dbg !151

while.body:                                       ; preds = %entry, %while.body
  %g.06 = phi ptr [ %g.0, %while.body ], [ %g.04, %entry ]
  tail call void @prn_grid(ptr noundef nonnull %g.06) #14, !dbg !152
  %next = getelementptr inbounds %struct.grid, ptr %g.06, i64 0, i32 11, !dbg !154
  call void @llvm.dbg.value(metadata ptr undef, metadata !146, metadata !DIExpression()), !dbg !149
  %g.0 = load ptr, ptr %next, align 8, !dbg !149
  call void @llvm.dbg.value(metadata ptr %g.0, metadata !146, metadata !DIExpression()), !dbg !149
  %cmp.not = icmp eq ptr %g.0, null, !dbg !150
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !151, !llvm.loop !155

while.end:                                        ; preds = %while.body, %entry
  %2 = load ptr, ptr @stderr, align 8, !dbg !159
  %3 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 18, i64 1, ptr %2) #13, !dbg !160
  ret void, !dbg !161
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare !dbg !162 void @prn_grid(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @prn_ds_stats() local_unnamed_addr #5 !dbg !166 {
entry:
  %putchar = tail call i32 @putchar(i32 10), !dbg !170
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !171
  %puts26 = tail call i32 @puts(ptr nonnull @str.16), !dbg !172
  %0 = load i64, ptr @hu_gridsize, align 8, !dbg !173
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %0), !dbg !174
  %1 = load i64, ptr @hu_numbuckets, align 8, !dbg !175
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %1), !dbg !176
  %2 = load i64, ptr @hu_max_subdiv_level, align 8, !dbg !177
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %2), !dbg !178
  %3 = load i64, ptr @hu_max_prims_cell, align 8, !dbg !179
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %3), !dbg !180
  %4 = load i64, ptr @grids, align 8, !dbg !181
  %call7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %4), !dbg !182
  %5 = load i64, ptr @empty_voxels, align 8, !dbg !183
  %6 = load i64, ptr @nonempty_voxels, align 8, !dbg !184
  %add = add nsw i64 %6, %5, !dbg !185
  call void @llvm.dbg.value(metadata i64 %add, metadata !169, metadata !DIExpression()), !dbg !186
  %7 = load i64, ptr @nonempty_leafs, align 8, !dbg !187
  %add8 = add nsw i64 %7, %5, !dbg !188
  call void @llvm.dbg.value(metadata i64 %add8, metadata !168, metadata !DIExpression()), !dbg !186
  %mul = mul nsw i64 %5, 100, !dbg !189
  %div = sdiv i64 %mul, %add, !dbg !190
  %call9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i64 noundef %5, i64 noundef %div), !dbg !191
  %8 = load i64, ptr @nonempty_voxels, align 8, !dbg !192
  %mul10 = mul nsw i64 %8, 100, !dbg !193
  %div11 = sdiv i64 %mul10, %add, !dbg !194
  %call12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i64 noundef %8, i64 noundef %div11), !dbg !195
  %9 = load i64, ptr @empty_voxels, align 8, !dbg !196
  %mul13 = mul nsw i64 %9, 100, !dbg !197
  %div14 = sdiv i64 %mul13, %add8, !dbg !198
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, i64 noundef %9, i64 noundef %div14), !dbg !199
  %10 = load i64, ptr @nonempty_leafs, align 8, !dbg !200
  %mul16 = mul nsw i64 %10, 100, !dbg !201
  %div17 = sdiv i64 %mul16, %add8, !dbg !202
  %call18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13, i64 noundef %10, i64 noundef %div17), !dbg !203
  %11 = load i64, ptr @prims_in_leafs, align 8, !dbg !204
  %conv = sitofp i64 %11 to double, !dbg !205
  %conv19 = sitofp i64 %add8 to double, !dbg !206
  %div20 = fdiv double %conv, %conv19, !dbg !207
  %call21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14, double noundef %div20), !dbg !208
  %putchar27 = tail call i32 @putchar(i32 10), !dbg !209
  ret void, !dbg !210
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind writeonly uwtable
define dso_local void @init_masks() local_unnamed_addr #6 !dbg !211 {
entry:
  call void @llvm.dbg.value(metadata i64 64, metadata !213, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i64 0, metadata !214, metadata !DIExpression()), !dbg !215
  br label %for.body, !dbg !216

for.body:                                         ; preds = %entry, %for.body
  %i.08 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.08, metadata !214, metadata !DIExpression()), !dbg !215
  %shr = lshr i64 -9223372036854775808, %i.08, !dbg !218
  %arrayidx = getelementptr inbounds [64 x i64], ptr @empty_masks, i64 0, i64 %i.08, !dbg !221
  store i64 %shr, ptr %arrayidx, align 8, !dbg !222
  %neg = xor i64 %shr, -1, !dbg !223
  %arrayidx2 = getelementptr inbounds [64 x i64], ptr @nonempty_masks, i64 0, i64 %i.08, !dbg !224
  store i64 %neg, ptr %arrayidx2, align 8, !dbg !225
  %inc = add nuw nsw i64 %i.08, 1, !dbg !226
  call void @llvm.dbg.value(metadata i64 %inc, metadata !214, metadata !DIExpression()), !dbg !215
  %exitcond.not = icmp eq i64 %inc, 64, !dbg !227
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !216, !llvm.loop !228

for.end:                                          ; preds = %for.body
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @init_world_grid(ptr noundef %v, ptr noundef %pepa, i64 noundef %num_pe) local_unnamed_addr #0 !dbg !231 {
entry:
  call void @llvm.dbg.value(metadata ptr %v, metadata !235, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata ptr %pepa, metadata !236, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 %num_pe, metadata !237, metadata !DIExpression()), !dbg !242
  %call = tail call ptr @ObjectMalloc(i64 noundef 0, i64 noundef 1) #14, !dbg !243
  call void @llvm.dbg.value(metadata ptr %call, metadata !240, metadata !DIExpression()), !dbg !242
  %0 = load i64, ptr @grids, align 8, !dbg !244
  %inc = add nsw i64 %0, 1, !dbg !244
  store i64 %inc, ptr @grids, align 8, !dbg !244
  store i64 %0, ptr %call, align 8, !dbg !245
  %call1 = tail call ptr @ObjectMalloc(i64 noundef 2, i64 noundef 1) #14, !dbg !246
  call void @llvm.dbg.value(metadata ptr %call1, metadata !241, metadata !DIExpression()), !dbg !242
  %hashtable = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 1, !dbg !247
  store ptr %call1, ptr %hashtable, align 8, !dbg !248
  store ptr %v, ptr %call1, align 8, !dbg !249
  %call3 = tail call ptr @ObjectMalloc(i64 noundef 3, i64 noundef 1) #14, !dbg !250
  call void @llvm.dbg.value(metadata ptr %call3, metadata !238, metadata !DIExpression()), !dbg !242
  %emptycells = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 2, !dbg !251
  store ptr %call3, ptr %emptycells, align 8, !dbg !252
  store i64 0, ptr %call3, align 8, !dbg !253
  %indx_inc = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 5, !dbg !254
  store i64 1, ptr %indx_inc, align 8, !dbg !255
  %arrayidx8 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 5, i64 1, !dbg !256
  store i64 1, ptr %arrayidx8, align 8, !dbg !257
  %arrayidx10 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 5, i64 2, !dbg !258
  store i64 1, ptr %arrayidx10, align 8, !dbg !259
  %num_buckets = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 6, !dbg !260
  store i64 1, ptr %num_buckets, align 8, !dbg !261
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !239, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !242
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !242
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !239, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !242
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !239, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !242
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !239, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !242
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !239, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !242
  %min = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 7, !dbg !262
  %cellsize = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 8, !dbg !263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %min, i8 0, i64 24, i1 false), !dbg !264
  store double 1.000000e+00, ptr %cellsize, align 8, !dbg !265
  %arrayidx43 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 8, i64 1, !dbg !266
  store double 1.000000e+00, ptr %arrayidx43, align 8, !dbg !267
  %arrayidx50 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 8, i64 2, !dbg !268
  store double 1.000000e+00, ptr %arrayidx50, align 8, !dbg !269
  %subdiv_level = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 9, !dbg !270
  store i64 -1, ptr %subdiv_level, align 8, !dbg !271
  %num_prims = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 4, !dbg !272
  store i64 %num_pe, ptr %num_prims, align 8, !dbg !273
  %pepa51 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 3, !dbg !274
  store ptr %pepa, ptr %pepa51, align 8, !dbg !275
  %next = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 11, !dbg !276
  store ptr null, ptr %next, align 8, !dbg !277
  store ptr %call, ptr @gridlist, align 8, !dbg !278
  ret ptr %call, !dbg !279
}

declare !dbg !280 ptr @ObjectMalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @init_world_voxel(ptr noundef %pepa, i64 noundef %numelements) local_unnamed_addr #0 !dbg !283 {
entry:
  call void @llvm.dbg.value(metadata ptr %pepa, metadata !287, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %numelements, metadata !288, metadata !DIExpression()), !dbg !290
  %call = tail call ptr @ObjectMalloc(i64 noundef 1, i64 noundef 1) #14, !dbg !291
  call void @llvm.dbg.value(metadata ptr %call, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i64, ptr @nonempty_voxels, align 8, !dbg !292
  %inc = add nsw i64 %0, 1, !dbg !292
  store i64 %inc, ptr @nonempty_voxels, align 8, !dbg !292
  store i64 0, ptr %call, align 8, !dbg !293
  %cell = getelementptr inbounds %struct.voxel, ptr %call, i64 0, i32 3, !dbg !294
  store ptr %pepa, ptr %cell, align 8, !dbg !295
  %numelements1 = getelementptr inbounds %struct.voxel, ptr %call, i64 0, i32 1, !dbg !296
  store i64 %numelements, ptr %numelements1, align 8, !dbg !297
  %celltype = getelementptr inbounds %struct.voxel, ptr %call, i64 0, i32 4, !dbg !298
  store i8 2, ptr %celltype, align 8, !dbg !299
  %next = getelementptr inbounds %struct.voxel, ptr %call, i64 0, i32 2, !dbg !300
  store ptr null, ptr %next, align 8, !dbg !301
  ret ptr %call, !dbg !302
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @mark_empty(i64 noundef %index1D, ptr nocapture noundef readonly %g) local_unnamed_addr #7 !dbg !303 {
entry:
  call void @llvm.dbg.value(metadata i64 %index1D, metadata !307, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata ptr %g, metadata !308, metadata !DIExpression()), !dbg !312
  %div10 = lshr i64 %index1D, 6, !dbg !313
  call void @llvm.dbg.value(metadata i64 %div10, metadata !309, metadata !DIExpression()), !dbg !312
  %sub = and i64 %index1D, 63, !dbg !314
  call void @llvm.dbg.value(metadata i64 %sub, metadata !310, metadata !DIExpression()), !dbg !312
  %emptycells = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 2, !dbg !315
  %0 = load ptr, ptr %emptycells, align 8, !dbg !315
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 %div10, !dbg !316
  %1 = load i64, ptr %arrayidx, align 8, !dbg !316
  call void @llvm.dbg.value(metadata i64 %1, metadata !311, metadata !DIExpression()), !dbg !312
  %arrayidx2 = getelementptr inbounds [64 x i64], ptr @empty_masks, i64 0, i64 %sub, !dbg !317
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !317
  %or = or i64 %2, %1, !dbg !318
  call void @llvm.dbg.value(metadata i64 %or, metadata !311, metadata !DIExpression()), !dbg !312
  store i64 %or, ptr %arrayidx, align 8, !dbg !319
  ret void, !dbg !320
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @mark_nonempty(i64 noundef %index1D, ptr nocapture noundef readonly %g) local_unnamed_addr #7 !dbg !321 {
entry:
  call void @llvm.dbg.value(metadata i64 %index1D, metadata !323, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata ptr %g, metadata !324, metadata !DIExpression()), !dbg !328
  %div10 = lshr i64 %index1D, 6, !dbg !329
  call void @llvm.dbg.value(metadata i64 %div10, metadata !325, metadata !DIExpression()), !dbg !328
  %sub = and i64 %index1D, 63, !dbg !330
  call void @llvm.dbg.value(metadata i64 %sub, metadata !326, metadata !DIExpression()), !dbg !328
  %emptycells = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 2, !dbg !331
  %0 = load ptr, ptr %emptycells, align 8, !dbg !331
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 %div10, !dbg !332
  %1 = load i64, ptr %arrayidx, align 8, !dbg !332
  call void @llvm.dbg.value(metadata i64 %1, metadata !327, metadata !DIExpression()), !dbg !328
  %arrayidx2 = getelementptr inbounds [64 x i64], ptr @nonempty_masks, i64 0, i64 %sub, !dbg !333
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !333
  %and = and i64 %2, %1, !dbg !334
  call void @llvm.dbg.value(metadata i64 %and, metadata !327, metadata !DIExpression()), !dbg !328
  store i64 %and, ptr %arrayidx, align 8, !dbg !335
  ret void, !dbg !336
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @insert_in_hashtable(ptr noundef %v, ptr nocapture noundef readonly %g) local_unnamed_addr #7 !dbg !337 {
entry:
  call void @llvm.dbg.value(metadata ptr %v, metadata !341, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr %g, metadata !342, metadata !DIExpression()), !dbg !346
  %0 = load i64, ptr %v, align 8, !dbg !347
  %1 = load i64, ptr @hu_numbuckets, align 8, !dbg !348
  call void @llvm.dbg.value(metadata !DIArgList(i64 %0, i64 %1), metadata !343, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_div, DW_OP_stack_value)), !dbg !346
  %2 = srem i64 %0, %1, !dbg !349
  call void @llvm.dbg.value(metadata i64 %2, metadata !344, metadata !DIExpression()), !dbg !346
  %hashtable = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 1, !dbg !350
  %3 = load ptr, ptr %hashtable, align 8, !dbg !350
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %2, !dbg !351
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !351
  call void @llvm.dbg.value(metadata ptr %4, metadata !345, metadata !DIExpression()), !dbg !346
  %next = getelementptr inbounds %struct.voxel, ptr %v, i64 0, i32 2, !dbg !352
  store ptr %4, ptr %next, align 8, !dbg !353
  %5 = load ptr, ptr %hashtable, align 8, !dbg !354
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 %2, !dbg !355
  store ptr %v, ptr %arrayidx3, align 8, !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @prims_in_box2(ptr nocapture noundef readonly %pepa, i64 noundef %n_in, ptr nocapture noundef readonly byval(%struct.bbox) align 8 %b, ptr nocapture noundef %n) local_unnamed_addr #0 !dbg !358 {
entry:
  call void @llvm.dbg.value(metadata ptr %pepa, metadata !363, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i64 %n_in, metadata !364, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata ptr %b, metadata !365, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata ptr %n, metadata !366, metadata !DIExpression()), !dbg !377
  %dfar = getelementptr inbounds %struct.bbox, ptr %b, i64 0, i32 1, !dbg !379
  %0 = load double, ptr %dfar, align 8, !dbg !380
  %1 = load double, ptr %b, align 8, !dbg !381
  %sub = fsub double %0, %1, !dbg !382
  call void @llvm.dbg.value(metadata double %sub, metadata !374, metadata !DIExpression()), !dbg !377
  %arrayidx3 = getelementptr inbounds %struct.bbox, ptr %b, i64 0, i32 1, i64 1, !dbg !383
  %2 = load double, ptr %arrayidx3, align 8, !dbg !383
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %b, i64 0, i64 1, !dbg !384
  %3 = load double, ptr %arrayidx5, align 8, !dbg !384
  %sub6 = fsub double %2, %3, !dbg !385
  call void @llvm.dbg.value(metadata double %sub6, metadata !375, metadata !DIExpression()), !dbg !377
  %cmp = fcmp ogt double %sub, %sub6, !dbg !386
  %sub.sub6 = select i1 %cmp, double %sub, double %sub6, !dbg !387
  call void @llvm.dbg.value(metadata double %sub.sub6, metadata !374, metadata !DIExpression()), !dbg !377
  %arrayidx8 = getelementptr inbounds %struct.bbox, ptr %b, i64 0, i32 1, i64 2, !dbg !388
  %4 = load double, ptr %arrayidx8, align 8, !dbg !388
  %arrayidx10 = getelementptr inbounds [3 x double], ptr %b, i64 0, i64 2, !dbg !389
  %5 = load double, ptr %arrayidx10, align 8, !dbg !389
  %sub11 = fsub double %4, %5, !dbg !390
  call void @llvm.dbg.value(metadata double %sub11, metadata !375, metadata !DIExpression()), !dbg !377
  %cmp12 = fcmp ogt double %sub.sub6, %sub11, !dbg !391
  br i1 %cmp12, label %cond.end15, label %cond.false14, !dbg !392

cond.false14:                                     ; preds = %entry
  br label %cond.end15, !dbg !392

cond.end15:                                       ; preds = %entry, %cond.false14
  %cond16 = phi double [ %sub11, %cond.false14 ], [ %sub.sub6, %entry ], !dbg !392
  call void @llvm.dbg.value(metadata double %cond16, metadata !374, metadata !DIExpression()), !dbg !377
  %mul = fmul double %cond16, 0x3EB0C6F7A0B5ED8D, !dbg !393
  call void @llvm.dbg.value(metadata double %mul, metadata !376, metadata !DIExpression()), !dbg !377
  %cmp17 = icmp sgt i64 %n_in, 0, !dbg !394
  br i1 %cmp17, label %if.then, label %if.else, !dbg !396

if.then:                                          ; preds = %cond.end15
  %call = tail call ptr @ObjectMalloc(i64 noundef 7, i64 noundef %n_in) #14, !dbg !397
  call void @llvm.dbg.value(metadata ptr %call, metadata !372, metadata !DIExpression()), !dbg !377
  store i64 0, ptr %n, align 8, !dbg !398
  call void @llvm.dbg.value(metadata i64 0, metadata !370, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i64 0, metadata !369, metadata !DIExpression()), !dbg !377
  br label %for.body, !dbg !399

if.else:                                          ; preds = %cond.end15
  call void @llvm.dbg.value(metadata ptr null, metadata !372, metadata !DIExpression()), !dbg !377
  store i64 0, ptr %n, align 8, !dbg !401
  br label %cleanup, !dbg !403

for.body:                                         ; preds = %if.then, %for.inc77
  %j.0118 = phi i64 [ 0, %if.then ], [ %inc78, %for.inc77 ]
  %k.0117 = phi i64 [ 0, %if.then ], [ %k.1, %for.inc77 ]
  call void @llvm.dbg.value(metadata i64 %j.0118, metadata !369, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i64 %k.0117, metadata !370, metadata !DIExpression()), !dbg !377
  %arrayidx19 = getelementptr inbounds ptr, ptr %pepa, i64 %j.0118, !dbg !404
  %6 = load ptr, ptr %arrayidx19, align 8, !dbg !404
  call void @llvm.dbg.value(metadata ptr %6, metadata !371, metadata !DIExpression()), !dbg !377
  %bv = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 3, !dbg !407
  %bb.sroa.0.0.copyload = load double, ptr %bv, align 8, !dbg !407
  call void @llvm.dbg.value(metadata double %bb.sroa.0.0.copyload, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !377
  %bb.sroa.4.0.bv.sroa_idx = getelementptr inbounds i8, ptr %bv, i64 8, !dbg !407
  %bb.sroa.4.0.copyload = load double, ptr %bb.sroa.4.0.bv.sroa_idx, align 8, !dbg !407
  call void @llvm.dbg.value(metadata double %bb.sroa.4.0.copyload, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !377
  %bb.sroa.5.0.bv.sroa_idx = getelementptr inbounds i8, ptr %bv, i64 16, !dbg !407
  %bb.sroa.5.0.copyload = load double, ptr %bb.sroa.5.0.bv.sroa_idx, align 8, !dbg !407
  call void @llvm.dbg.value(metadata double %bb.sroa.5.0.copyload, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !377
  %bb.sroa.6.0.bv.sroa_idx = getelementptr inbounds i8, ptr %bv, i64 24, !dbg !407
  %bb.sroa.6.0.copyload = load double, ptr %bb.sroa.6.0.bv.sroa_idx, align 8, !dbg !407
  call void @llvm.dbg.value(metadata double %bb.sroa.6.0.copyload, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !377
  %bb.sroa.7.0.bv.sroa_idx = getelementptr inbounds i8, ptr %bv, i64 32, !dbg !407
  %bb.sroa.7.0.copyload = load double, ptr %bb.sroa.7.0.bv.sroa_idx, align 8, !dbg !407
  call void @llvm.dbg.value(metadata double %bb.sroa.7.0.copyload, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !377
  %bb.sroa.8.0.bv.sroa_idx = getelementptr inbounds i8, ptr %bv, i64 40, !dbg !407
  %bb.sroa.8.0.copyload = load double, ptr %bb.sroa.8.0.bv.sroa_idx, align 8, !dbg !407
  call void @llvm.dbg.value(metadata double %bb.sroa.8.0.copyload, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !377
  call void @llvm.dbg.value(metadata i64 1, metadata !367, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i64 0, metadata !368, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i64 undef, metadata !368, metadata !DIExpression()), !dbg !377
  %add = fadd double %mul, %bb.sroa.6.0.copyload, !dbg !408
  %cmp27 = fcmp ogt double %1, %add, !dbg !413
  %add34 = fadd double %mul, %bb.sroa.7.0.copyload
  %cmp35 = fcmp ogt double %3, %add34
  %or.cond = select i1 %cmp27, i1 true, i1 %cmp35, !dbg !414
  %add42 = fadd double %mul, %bb.sroa.8.0.copyload
  %cmp43 = fcmp ogt double %5, %add42
  %or.cond112 = select i1 %or.cond, i1 true, i1 %cmp43, !dbg !414
  %sub50 = fsub double %bb.sroa.0.0.copyload, %mul
  %cmp51 = fcmp olt double %0, %sub50
  %or.cond113 = select i1 %or.cond112, i1 true, i1 %cmp51, !dbg !414
  %sub58 = fsub double %bb.sroa.4.0.copyload, %mul
  %cmp59 = fcmp olt double %2, %sub58
  %or.cond114 = select i1 %or.cond113, i1 true, i1 %cmp59, !dbg !414
  %sub66 = fsub double %bb.sroa.5.0.copyload, %mul
  %cmp67 = fcmp olt double %4, %sub66
  %or.cond115 = select i1 %or.cond114, i1 true, i1 %cmp67, !dbg !414
  br i1 %or.cond115, label %for.inc77, label %if.then71, !dbg !414, !llvm.loop !415

if.then71:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 undef, metadata !368, metadata !DIExpression()), !dbg !377
  %inc73 = add nsw i64 %k.0117, 1, !dbg !418
  call void @llvm.dbg.value(metadata i64 %inc73, metadata !370, metadata !DIExpression()), !dbg !377
  %arrayidx74 = getelementptr inbounds ptr, ptr %call, i64 %k.0117, !dbg !421
  store ptr %6, ptr %arrayidx74, align 8, !dbg !422
  %7 = load i64, ptr %n, align 8, !dbg !423
  %inc75 = add nsw i64 %7, 1, !dbg !423
  store i64 %inc75, ptr %n, align 8, !dbg !423
  br label %for.inc77, !dbg !424

for.inc77:                                        ; preds = %for.body, %if.then71
  %k.1 = phi i64 [ %inc73, %if.then71 ], [ %k.0117, %for.body ], !dbg !377
  call void @llvm.dbg.value(metadata i64 %k.1, metadata !370, metadata !DIExpression()), !dbg !377
  %inc78 = add nuw nsw i64 %j.0118, 1, !dbg !425
  call void @llvm.dbg.value(metadata i64 %inc78, metadata !369, metadata !DIExpression()), !dbg !377
  %exitcond.not = icmp eq i64 %inc78, %n_in, !dbg !426
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !399, !llvm.loop !427

cleanup:                                          ; preds = %for.inc77, %if.else
  %retval.0 = phi ptr [ null, %if.else ], [ %call, %for.inc77 ], !dbg !377
  ret ptr %retval.0, !dbg !429
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @init_bintree(ptr nocapture noundef readonly %ng) local_unnamed_addr #0 !dbg !430 {
entry:
  call void @llvm.dbg.value(metadata ptr %ng, metadata !434, metadata !DIExpression()), !dbg !436
  %call = tail call ptr @ObjectMalloc(i64 noundef 6, i64 noundef 1) #14, !dbg !437
  call void @llvm.dbg.value(metadata ptr %call, metadata !435, metadata !DIExpression()), !dbg !436
  %btn1 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 7, !dbg !438
  %axis = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 5, !dbg !439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %btn1, i8 0, i64 16, i1 false), !dbg !440
  store i64 -1, ptr %axis, align 8, !dbg !441
  %min = getelementptr inbounds %struct.grid, ptr %ng, i64 0, i32 7, !dbg !442
  %0 = load double, ptr %min, align 8, !dbg !443
  %p = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 1, !dbg !444
  store double %0, ptr %p, align 8, !dbg !445
  %arrayidx7 = getelementptr inbounds %struct.grid, ptr %ng, i64 0, i32 7, i64 1, !dbg !446
  %1 = load double, ptr %arrayidx7, align 8, !dbg !446
  %arrayidx9 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 1, i64 1, !dbg !447
  store double %1, ptr %arrayidx9, align 8, !dbg !448
  %arrayidx11 = getelementptr inbounds %struct.grid, ptr %ng, i64 0, i32 7, i64 2, !dbg !449
  %2 = load double, ptr %arrayidx11, align 8, !dbg !449
  %arrayidx13 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 1, i64 2, !dbg !450
  store double %2, ptr %arrayidx13, align 8, !dbg !451
  %arrayidx14 = getelementptr inbounds %struct.grid, ptr %ng, i64 0, i32 5, i64 1, !dbg !452
  %3 = load i64, ptr %arrayidx14, align 8, !dbg !452
  %n = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 3, !dbg !453
  store i64 %3, ptr %n, align 8, !dbg !454
  %4 = load i64, ptr %arrayidx14, align 8, !dbg !455
  %arrayidx19 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 3, i64 1, !dbg !456
  store i64 %4, ptr %arrayidx19, align 8, !dbg !457
  %5 = load i64, ptr %arrayidx14, align 8, !dbg !458
  %arrayidx23 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 3, i64 2, !dbg !459
  store i64 %5, ptr %arrayidx23, align 8, !dbg !460
  %i = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 4, !dbg !461
  %num_prims = getelementptr inbounds %struct.grid, ptr %ng, i64 0, i32 4, !dbg !462
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i, i8 0, i64 24, i1 false), !dbg !463
  %6 = load i64, ptr %num_prims, align 8, !dbg !462
  %nprims = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 2, !dbg !464
  store i64 %6, ptr %nprims, align 8, !dbg !465
  %totalPrimsAllocated = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 6, !dbg !466
  store i64 %6, ptr %totalPrimsAllocated, align 8, !dbg !467
  %7 = load i64, ptr %num_prims, align 8, !dbg !468
  %cmp = icmp sgt i64 %7, 0, !dbg !470
  br i1 %cmp, label %if.then, label %if.end, !dbg !471

if.then:                                          ; preds = %entry
  %pepa = getelementptr inbounds %struct.grid, ptr %ng, i64 0, i32 3, !dbg !472
  %8 = load ptr, ptr %pepa, align 8, !dbg !472
  br label %if.end, !dbg !473

if.end:                                           ; preds = %entry, %if.then
  %storemerge = phi ptr [ %8, %if.then ], [ null, %entry ], !dbg !474
  store ptr %storemerge, ptr %call, align 8, !dbg !474
  ret ptr %call, !dbg !475
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subdiv_bintree(ptr nocapture noundef %btn, ptr nocapture noundef readonly %g) local_unnamed_addr #0 !dbg !476 {
entry:
  %b1 = alloca %struct.bbox, align 8
  %b2 = alloca %struct.bbox, align 8
  call void @llvm.dbg.value(metadata ptr %btn, metadata !480, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata ptr %g, metadata !481, metadata !DIExpression()), !dbg !490
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %b1) #14, !dbg !491
  call void @llvm.dbg.declare(metadata ptr %b1, metadata !488, metadata !DIExpression()), !dbg !492
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %b2) #14, !dbg !491
  call void @llvm.dbg.declare(metadata ptr %b2, metadata !489, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i64 0, metadata !486, metadata !DIExpression()), !dbg !490
  %n = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 3, !dbg !494
  %0 = load i64, ptr %n, align 8, !dbg !495
  call void @llvm.dbg.value(metadata i64 %0, metadata !487, metadata !DIExpression()), !dbg !490
  %arrayidx4 = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 3, i64 1, !dbg !496
  %1 = load i64, ptr %arrayidx4, align 8, !dbg !496
  %cmp = icmp slt i64 %0, %1, !dbg !498
  %spec.select = zext i1 %cmp to i64, !dbg !499
  %2 = tail call i64 @llvm.smax.i64(i64 %0, i64 %1), !dbg !499
  call void @llvm.dbg.value(metadata i64 %2, metadata !487, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !486, metadata !DIExpression()), !dbg !490
  %arrayidx8 = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 3, i64 2, !dbg !500
  %3 = load i64, ptr %arrayidx8, align 8, !dbg !500
  %cmp9 = icmp slt i64 %2, %3, !dbg !502
  %spec.select354 = select i1 %cmp9, i64 2, i64 %spec.select, !dbg !503
  call void @llvm.dbg.value(metadata i64 %spec.select354, metadata !486, metadata !DIExpression()), !dbg !490
  %axis = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 5, !dbg !504
  store i64 %spec.select354, ptr %axis, align 8, !dbg !505
  %btn14 = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 7, !dbg !506
  %arrayidx19 = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 3, i64 %spec.select354, !dbg !507
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %btn14, i8 0, i64 16, i1 false), !dbg !509
  %4 = load i64, ptr %arrayidx19, align 8, !dbg !507
  %cmp20 = icmp sgt i64 %4, 1, !dbg !510
  br i1 %cmp20, label %if.then21, label %if.end209, !dbg !511

if.then21:                                        ; preds = %entry
  %arrayidx17 = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 7, i64 1, !dbg !512
  %div355356 = lshr i64 %4, 1, !dbg !513
  call void @llvm.dbg.value(metadata i64 %div355356, metadata !484, metadata !DIExpression()), !dbg !490
  %sub = sub nsw i64 %4, %div355356, !dbg !515
  call void @llvm.dbg.value(metadata i64 %sub, metadata !485, metadata !DIExpression()), !dbg !490
  %call = tail call ptr @ObjectMalloc(i64 noundef 6, i64 noundef 1) #14, !dbg !516
  call void @llvm.dbg.value(metadata ptr %call, metadata !482, metadata !DIExpression()), !dbg !490
  %call26 = tail call ptr @ObjectMalloc(i64 noundef 6, i64 noundef 1) #14, !dbg !517
  call void @llvm.dbg.value(metadata ptr %call26, metadata !483, metadata !DIExpression()), !dbg !490
  store ptr %call, ptr %btn14, align 8, !dbg !518
  store ptr %call26, ptr %arrayidx17, align 8, !dbg !519
  %btn31 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 7, !dbg !520
  %axis35 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 5, !dbg !521
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %btn31, i8 0, i64 16, i1 false), !dbg !522
  store i64 -1, ptr %axis35, align 8, !dbg !523
  %btn36 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 7, !dbg !524
  %axis40 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 5, !dbg !525
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %btn36, i8 0, i64 16, i1 false), !dbg !526
  store i64 -1, ptr %axis40, align 8, !dbg !527
  %i = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 4, !dbg !528
  %5 = load i64, ptr %i, align 8, !dbg !529
  %i42 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 4, !dbg !530
  store i64 %5, ptr %i42, align 8, !dbg !531
  %arrayidx45 = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 4, i64 1, !dbg !532
  %6 = load i64, ptr %arrayidx45, align 8, !dbg !532
  %arrayidx47 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 4, i64 1, !dbg !533
  store i64 %6, ptr %arrayidx47, align 8, !dbg !534
  %arrayidx49 = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 4, i64 2, !dbg !535
  %7 = load i64, ptr %arrayidx49, align 8, !dbg !535
  %arrayidx51 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 4, i64 2, !dbg !536
  store i64 %7, ptr %arrayidx51, align 8, !dbg !537
  %8 = load i64, ptr %i, align 8, !dbg !538
  %i54 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 4, !dbg !539
  store i64 %8, ptr %i54, align 8, !dbg !540
  %9 = load i64, ptr %arrayidx45, align 8, !dbg !541
  %arrayidx59 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 4, i64 1, !dbg !542
  store i64 %9, ptr %arrayidx59, align 8, !dbg !543
  %10 = load i64, ptr %arrayidx49, align 8, !dbg !544
  %arrayidx63 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 4, i64 2, !dbg !545
  store i64 %10, ptr %arrayidx63, align 8, !dbg !546
  %arrayidx65 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 4, i64 %spec.select354, !dbg !547
  %11 = load i64, ptr %arrayidx65, align 8, !dbg !548
  %add = add nsw i64 %11, %div355356, !dbg !548
  store i64 %add, ptr %arrayidx65, align 8, !dbg !548
  %12 = load i64, ptr %n, align 8, !dbg !549
  %n68 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 3, !dbg !550
  store i64 %12, ptr %n68, align 8, !dbg !551
  %13 = load i64, ptr %arrayidx4, align 8, !dbg !552
  %arrayidx73 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 3, i64 1, !dbg !553
  store i64 %13, ptr %arrayidx73, align 8, !dbg !554
  %14 = load i64, ptr %arrayidx8, align 8, !dbg !555
  %arrayidx77 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 3, i64 2, !dbg !556
  store i64 %14, ptr %arrayidx77, align 8, !dbg !557
  %arrayidx79 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 3, i64 %spec.select354, !dbg !558
  store i64 %div355356, ptr %arrayidx79, align 8, !dbg !559
  %15 = load i64, ptr %n, align 8, !dbg !560
  %n82 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 3, !dbg !561
  store i64 %15, ptr %n82, align 8, !dbg !562
  %16 = load i64, ptr %arrayidx4, align 8, !dbg !563
  %arrayidx87 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 3, i64 1, !dbg !564
  store i64 %16, ptr %arrayidx87, align 8, !dbg !565
  %17 = load i64, ptr %arrayidx8, align 8, !dbg !566
  %arrayidx91 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 3, i64 2, !dbg !567
  store i64 %17, ptr %arrayidx91, align 8, !dbg !568
  %arrayidx93 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 3, i64 %spec.select354, !dbg !569
  store i64 %sub, ptr %arrayidx93, align 8, !dbg !570
  %p = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 1, !dbg !571
  %18 = load double, ptr %p, align 8, !dbg !572
  %p95 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 1, !dbg !573
  store double %18, ptr %p95, align 8, !dbg !574
  %arrayidx98 = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 1, i64 1, !dbg !575
  %19 = load double, ptr %arrayidx98, align 8, !dbg !575
  %arrayidx100 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 1, i64 1, !dbg !576
  store double %19, ptr %arrayidx100, align 8, !dbg !577
  %arrayidx102 = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 1, i64 2, !dbg !578
  %20 = load double, ptr %arrayidx102, align 8, !dbg !578
  %arrayidx104 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 1, i64 2, !dbg !579
  store double %20, ptr %arrayidx104, align 8, !dbg !580
  %21 = load double, ptr %p, align 8, !dbg !581
  %p107 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 1, !dbg !582
  store double %21, ptr %p107, align 8, !dbg !583
  %22 = load double, ptr %arrayidx98, align 8, !dbg !584
  %arrayidx112 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 1, i64 1, !dbg !585
  store double %22, ptr %arrayidx112, align 8, !dbg !586
  %23 = load double, ptr %arrayidx102, align 8, !dbg !587
  %arrayidx116 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 1, i64 2, !dbg !588
  store double %23, ptr %arrayidx116, align 8, !dbg !589
  %arrayidx118 = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 1, i64 %spec.select354, !dbg !590
  %24 = load double, ptr %arrayidx118, align 8, !dbg !590
  %conv = sitofp i64 %div355356 to double, !dbg !591
  %cellsize = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, !dbg !592
  %arrayidx119 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 %spec.select354, !dbg !593
  %25 = load double, ptr %arrayidx119, align 8, !dbg !593
  %26 = tail call double @llvm.fmuladd.f64(double %conv, double %25, double %24), !dbg !594
  %arrayidx121 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 1, i64 %spec.select354, !dbg !595
  store double %26, ptr %arrayidx121, align 8, !dbg !596
  %27 = load double, ptr %p95, align 8, !dbg !597
  store double %27, ptr %b1, align 8, !dbg !598
  %28 = load double, ptr %arrayidx100, align 8, !dbg !599
  %arrayidx128 = getelementptr inbounds [3 x double], ptr %b1, i64 0, i64 1, !dbg !600
  store double %28, ptr %arrayidx128, align 8, !dbg !601
  %29 = load double, ptr %arrayidx104, align 8, !dbg !602
  %arrayidx132 = getelementptr inbounds [3 x double], ptr %b1, i64 0, i64 2, !dbg !603
  store double %29, ptr %arrayidx132, align 8, !dbg !604
  %30 = load i64, ptr %n68, align 8, !dbg !605
  %conv137 = sitofp i64 %30 to double, !dbg !605
  %31 = load double, ptr %cellsize, align 8, !dbg !606
  %32 = tail call double @llvm.fmuladd.f64(double %conv137, double %31, double %27), !dbg !607
  %dfar = getelementptr inbounds %struct.bbox, ptr %b1, i64 0, i32 1, !dbg !608
  store double %32, ptr %dfar, align 8, !dbg !609
  %33 = load i64, ptr %arrayidx73, align 8, !dbg !610
  %conv145 = sitofp i64 %33 to double, !dbg !610
  %arrayidx147 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 1, !dbg !611
  %34 = load double, ptr %arrayidx147, align 8, !dbg !611
  %35 = tail call double @llvm.fmuladd.f64(double %conv145, double %34, double %28), !dbg !612
  %arrayidx149 = getelementptr inbounds %struct.bbox, ptr %b1, i64 0, i32 1, i64 1, !dbg !613
  store double %35, ptr %arrayidx149, align 8, !dbg !614
  %36 = load i64, ptr %arrayidx77, align 8, !dbg !615
  %conv154 = sitofp i64 %36 to double, !dbg !615
  %arrayidx156 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 2, !dbg !616
  %37 = load double, ptr %arrayidx156, align 8, !dbg !616
  %38 = tail call double @llvm.fmuladd.f64(double %conv154, double %37, double %29), !dbg !617
  %arrayidx158 = getelementptr inbounds %struct.bbox, ptr %b1, i64 0, i32 1, i64 2, !dbg !618
  store double %38, ptr %arrayidx158, align 8, !dbg !619
  %39 = load ptr, ptr %btn, align 8, !dbg !620
  %nprims = getelementptr inbounds %struct.btnode, ptr %btn, i64 0, i32 2, !dbg !621
  %40 = load i64, ptr %nprims, align 8, !dbg !621
  %nprims159 = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 2, !dbg !622
  %call160 = tail call ptr @prims_in_box2(ptr noundef %39, i64 noundef %40, ptr noundef nonnull byval(%struct.bbox) align 8 %b1, ptr noundef nonnull %nprims159), !dbg !623
  store ptr %call160, ptr %call, align 8, !dbg !624
  %41 = load i64, ptr %nprims, align 8, !dbg !625
  %totalPrimsAllocated = getelementptr inbounds %struct.btnode, ptr %call, i64 0, i32 6, !dbg !626
  store i64 %41, ptr %totalPrimsAllocated, align 8, !dbg !627
  %42 = load double, ptr %p107, align 8, !dbg !628
  store double %42, ptr %b2, align 8, !dbg !629
  %43 = load double, ptr %arrayidx112, align 8, !dbg !630
  %arrayidx170 = getelementptr inbounds [3 x double], ptr %b2, i64 0, i64 1, !dbg !631
  store double %43, ptr %arrayidx170, align 8, !dbg !632
  %44 = load double, ptr %arrayidx116, align 8, !dbg !633
  %arrayidx174 = getelementptr inbounds [3 x double], ptr %b2, i64 0, i64 2, !dbg !634
  store double %44, ptr %arrayidx174, align 8, !dbg !635
  %45 = load i64, ptr %n82, align 8, !dbg !636
  %conv179 = sitofp i64 %45 to double, !dbg !636
  %46 = load double, ptr %cellsize, align 8, !dbg !637
  %47 = tail call double @llvm.fmuladd.f64(double %conv179, double %46, double %42), !dbg !638
  %dfar182 = getelementptr inbounds %struct.bbox, ptr %b2, i64 0, i32 1, !dbg !639
  store double %47, ptr %dfar182, align 8, !dbg !640
  %48 = load i64, ptr %arrayidx87, align 8, !dbg !641
  %conv188 = sitofp i64 %48 to double, !dbg !641
  %49 = load double, ptr %arrayidx147, align 8, !dbg !642
  %50 = tail call double @llvm.fmuladd.f64(double %conv188, double %49, double %43), !dbg !643
  %arrayidx192 = getelementptr inbounds %struct.bbox, ptr %b2, i64 0, i32 1, i64 1, !dbg !644
  store double %50, ptr %arrayidx192, align 8, !dbg !645
  %51 = load i64, ptr %arrayidx91, align 8, !dbg !646
  %conv197 = sitofp i64 %51 to double, !dbg !646
  %52 = load double, ptr %arrayidx156, align 8, !dbg !647
  %53 = tail call double @llvm.fmuladd.f64(double %conv197, double %52, double %44), !dbg !648
  %arrayidx201 = getelementptr inbounds %struct.bbox, ptr %b2, i64 0, i32 1, i64 2, !dbg !649
  store double %53, ptr %arrayidx201, align 8, !dbg !650
  %54 = load ptr, ptr %btn, align 8, !dbg !651
  %55 = load i64, ptr %nprims, align 8, !dbg !652
  %nprims204 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 2, !dbg !653
  %call205 = tail call ptr @prims_in_box2(ptr noundef %54, i64 noundef %55, ptr noundef nonnull byval(%struct.bbox) align 8 %b2, ptr noundef nonnull %nprims204), !dbg !654
  store ptr %call205, ptr %call26, align 8, !dbg !655
  %56 = load i64, ptr %nprims, align 8, !dbg !656
  %totalPrimsAllocated208 = getelementptr inbounds %struct.btnode, ptr %call26, i64 0, i32 6, !dbg !657
  store i64 %56, ptr %totalPrimsAllocated208, align 8, !dbg !658
  br label %if.end209, !dbg !659

if.end209:                                        ; preds = %if.then21, %entry
  call void @llvm.dbg.value(metadata ptr undef, metadata !482, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata ptr undef, metadata !483, metadata !DIExpression()), !dbg !490
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %b2) #14, !dbg !660
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %b1) #14, !dbg !660
  ret void, !dbg !660
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @create_bintree(ptr nocapture noundef %root, ptr noundef %g) local_unnamed_addr #0 !dbg !661 {
entry:
  br label %tailrecurse, !dbg !666

tailrecurse:                                      ; preds = %if.then, %entry
  %root.tr = phi ptr [ %root, %entry ], [ %4, %if.then ]
  call void @llvm.dbg.value(metadata ptr %root.tr, metadata !663, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata ptr %g, metadata !664, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata ptr %root.tr, metadata !665, metadata !DIExpression()), !dbg !669
  %n = getelementptr inbounds %struct.btnode, ptr %root.tr, i64 0, i32 3, !dbg !670
  %0 = load i64, ptr %n, align 8, !dbg !671
  %cmp.not = icmp eq i64 %0, 1, !dbg !672
  br i1 %cmp.not, label %lor.lhs.false, label %if.then, !dbg !673

lor.lhs.false:                                    ; preds = %tailrecurse
  %arrayidx2 = getelementptr inbounds %struct.btnode, ptr %root.tr, i64 0, i32 3, i64 1, !dbg !674
  %1 = load i64, ptr %arrayidx2, align 8, !dbg !674
  %cmp3.not = icmp eq i64 %1, 1, !dbg !675
  br i1 %cmp3.not, label %lor.lhs.false4, label %if.then, !dbg !676

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr inbounds %struct.btnode, ptr %root.tr, i64 0, i32 3, i64 2, !dbg !677
  %2 = load i64, ptr %arrayidx6, align 8, !dbg !677
  %cmp7.not = icmp eq i64 %2, 1, !dbg !678
  br i1 %cmp7.not, label %if.end14, label %if.then, !dbg !679

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %tailrecurse
  tail call void @subdiv_bintree(ptr noundef nonnull %root.tr, ptr noundef %g), !dbg !680
  %btn8 = getelementptr inbounds %struct.btnode, ptr %root.tr, i64 0, i32 7, !dbg !681
  %3 = load ptr, ptr %btn8, align 8, !dbg !682
  tail call void @create_bintree(ptr noundef %3, ptr noundef %g), !dbg !683
  %arrayidx11 = getelementptr inbounds %struct.btnode, ptr %root.tr, i64 0, i32 7, i64 1, !dbg !684
  %4 = load ptr, ptr %arrayidx11, align 8, !dbg !684
  br label %tailrecurse, !dbg !666

if.end14:                                         ; preds = %lor.lhs.false4
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @bintree_lookup(ptr noundef readonly %root, i64 noundef %i, i64 noundef %j, i64 noundef %k, ptr nocapture readnone %g, ptr nocapture noundef writeonly %n) local_unnamed_addr #0 !dbg !686 {
entry:
  %ijk = alloca [3 x i64], align 16
  call void @llvm.dbg.value(metadata ptr %root, metadata !690, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i64 %i, metadata !691, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i64 %j, metadata !692, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i64 %k, metadata !693, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata ptr undef, metadata !694, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata ptr %n, metadata !695, metadata !DIExpression()), !dbg !701
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ijk) #14, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %ijk, metadata !696, metadata !DIExpression()), !dbg !703
  store i64 %i, ptr %ijk, align 16, !dbg !704
  %arrayidx1 = getelementptr inbounds [3 x i64], ptr %ijk, i64 0, i64 1, !dbg !705
  store i64 %j, ptr %arrayidx1, align 8, !dbg !706
  %arrayidx2 = getelementptr inbounds [3 x i64], ptr %ijk, i64 0, i64 2, !dbg !707
  store i64 %k, ptr %arrayidx2, align 16, !dbg !708
  call void @llvm.dbg.value(metadata ptr %root, metadata !700, metadata !DIExpression()), !dbg !701
  %cmp = icmp eq ptr %root, null, !dbg !709
  br i1 %cmp, label %if.then, label %while.cond, !dbg !711

if.then:                                          ; preds = %entry
  store i64 0, ptr %n, align 8, !dbg !712
  br label %cleanup, !dbg !714

while.cond:                                       ; preds = %entry, %if.end31
  %btn.0 = phi ptr [ %10, %if.end31 ], [ %root, %entry ], !dbg !701
  call void @llvm.dbg.value(metadata ptr %btn.0, metadata !700, metadata !DIExpression()), !dbg !701
  %n3 = getelementptr inbounds %struct.btnode, ptr %btn.0, i64 0, i32 3, !dbg !715
  %0 = load i64, ptr %n3, align 8, !dbg !716
  %cmp5.not = icmp eq i64 %0, 1, !dbg !717
  br i1 %cmp5.not, label %lor.lhs.false, label %while.body, !dbg !718

lor.lhs.false:                                    ; preds = %while.cond
  %arrayidx7 = getelementptr inbounds %struct.btnode, ptr %btn.0, i64 0, i32 3, i64 1, !dbg !719
  %1 = load i64, ptr %arrayidx7, align 8, !dbg !719
  %cmp8.not = icmp eq i64 %1, 1, !dbg !720
  br i1 %cmp8.not, label %lor.rhs, label %while.body, !dbg !721

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx10 = getelementptr inbounds %struct.btnode, ptr %btn.0, i64 0, i32 3, i64 2, !dbg !722
  %2 = load i64, ptr %arrayidx10, align 8, !dbg !722
  %cmp11.not = icmp eq i64 %2, 1, !dbg !723
  br i1 %cmp11.not, label %while.end, label %while.body, !dbg !724

while.body:                                       ; preds = %while.cond, %lor.lhs.false, %lor.rhs
  %axis = getelementptr inbounds %struct.btnode, ptr %btn.0, i64 0, i32 5, !dbg !725
  %3 = load i64, ptr %axis, align 8, !dbg !725
  %cmp12 = icmp eq i64 %3, -1, !dbg !728
  br i1 %cmp12, label %if.then13, label %if.end21, !dbg !729

if.then13:                                        ; preds = %while.body
  %4 = load ptr, ptr @stderr, align 8, !dbg !730
  %arrayidx17 = getelementptr inbounds %struct.btnode, ptr %btn.0, i64 0, i32 3, i64 1, !dbg !732
  %5 = load i64, ptr %arrayidx17, align 8, !dbg !732
  %arrayidx19 = getelementptr inbounds %struct.btnode, ptr %btn.0, i64 0, i32 3, i64 2, !dbg !733
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !733
  %nprims = getelementptr inbounds %struct.btnode, ptr %btn.0, i64 0, i32 2, !dbg !734
  %7 = load i64, ptr %nprims, align 8, !dbg !734
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.15, i64 noundef %0, i64 noundef %5, i64 noundef %6, i64 noundef -1, i64 noundef %7) #13, !dbg !735
  tail call void @exit(i32 noundef -1) #15, !dbg !736
  unreachable, !dbg !736

if.end21:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata i64 0, metadata !697, metadata !DIExpression()), !dbg !701
  %arrayidx24 = getelementptr inbounds %struct.btnode, ptr %btn.0, i64 0, i32 3, i64 %3, !dbg !737
  %8 = load i64, ptr %arrayidx24, align 8, !dbg !737
  %div = sdiv i64 %8, 2, !dbg !738
  call void @llvm.dbg.value(metadata i64 %div, metadata !698, metadata !DIExpression()), !dbg !701
  %arrayidx26 = getelementptr inbounds [3 x i64], ptr %ijk, i64 0, i64 %3, !dbg !739
  %9 = load i64, ptr %arrayidx26, align 8, !dbg !739
  %cmp27.not = icmp slt i64 %9, %div, !dbg !741
  br i1 %cmp27.not, label %if.end31, label %if.then28, !dbg !742

if.then28:                                        ; preds = %if.end21
  call void @llvm.dbg.value(metadata i64 1, metadata !697, metadata !DIExpression()), !dbg !701
  %sub = sub nsw i64 %9, %div, !dbg !743
  store i64 %sub, ptr %arrayidx26, align 8, !dbg !743
  br label %if.end31, !dbg !745

if.end31:                                         ; preds = %if.then28, %if.end21
  %child.0 = phi i64 [ 1, %if.then28 ], [ 0, %if.end21 ], !dbg !746
  call void @llvm.dbg.value(metadata i64 %child.0, metadata !697, metadata !DIExpression()), !dbg !701
  %arrayidx33 = getelementptr inbounds %struct.btnode, ptr %btn.0, i64 0, i32 7, i64 %child.0, !dbg !747
  %10 = load ptr, ptr %arrayidx33, align 8, !dbg !747
  call void @llvm.dbg.value(metadata ptr %10, metadata !700, metadata !DIExpression()), !dbg !701
  %cmp34 = icmp eq ptr %10, null, !dbg !748
  br i1 %cmp34, label %if.then35, label %while.cond, !dbg !750, !llvm.loop !751

if.then35:                                        ; preds = %if.end31
  store i64 0, ptr %n, align 8, !dbg !753
  br label %cleanup, !dbg !755

while.end:                                        ; preds = %lor.rhs
  %nprims37 = getelementptr inbounds %struct.btnode, ptr %btn.0, i64 0, i32 2, !dbg !756
  %11 = load i64, ptr %nprims37, align 8, !dbg !756
  store i64 %11, ptr %n, align 8, !dbg !757
  %12 = load ptr, ptr %btn.0, align 8, !dbg !758
  call void @llvm.dbg.value(metadata ptr %12, metadata !699, metadata !DIExpression()), !dbg !701
  br label %cleanup, !dbg !759

cleanup:                                          ; preds = %while.end, %if.then35, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then35 ], [ %12, %while.end ], !dbg !701
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ijk) #14, !dbg !760
  ret ptr %retval.0, !dbg !760
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree noinline nosync nounwind readonly uwtable
define dso_local void @deleteBinTree(ptr nocapture noundef %binTree) local_unnamed_addr #9 !dbg !761 {
entry:
  call void @llvm.dbg.value(metadata ptr %binTree, metadata !765, metadata !DIExpression()), !dbg !768
  %cmp.not5 = icmp eq ptr %binTree, null, !dbg !769
  br i1 %cmp.not5, label %if.end, label %if.then, !dbg !771

if.then:                                          ; preds = %entry, %if.then
  %binTree.tr6 = phi ptr [ %1, %if.then ], [ %binTree, %entry ]
  call void @llvm.dbg.value(metadata ptr %binTree.tr6, metadata !765, metadata !DIExpression()), !dbg !768
  %btn = getelementptr inbounds %struct.btnode, ptr %binTree.tr6, i64 0, i32 7, !dbg !772
  %0 = load ptr, ptr %btn, align 8, !dbg !774
  call void @llvm.dbg.value(metadata ptr %0, metadata !766, metadata !DIExpression()), !dbg !768
  %arrayidx2 = getelementptr inbounds %struct.btnode, ptr %binTree.tr6, i64 0, i32 7, i64 1, !dbg !775
  %1 = load ptr, ptr %arrayidx2, align 8, !dbg !775
  call void @llvm.dbg.value(metadata ptr %1, metadata !767, metadata !DIExpression()), !dbg !768
  tail call void @deleteBinTree(ptr noundef %0), !dbg !776
  call void @llvm.dbg.value(metadata ptr %1, metadata !765, metadata !DIExpression()), !dbg !768
  %cmp.not = icmp eq ptr %1, null, !dbg !769
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !771

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @create_grid(ptr nocapture noundef %v, ptr nocapture noundef readonly %g, i64 noundef %num_prims) local_unnamed_addr #0 !dbg !778 {
entry:
  %nprims = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %v, metadata !782, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %g, metadata !783, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 %num_prims, metadata !784, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nprims) #14, !dbg !801
  %call = tail call ptr @ObjectMalloc(i64 noundef 0, i64 noundef 1) #14, !dbg !802
  call void @llvm.dbg.value(metadata ptr %call, metadata !794, metadata !DIExpression()), !dbg !800
  %0 = load i64, ptr @grids, align 8, !dbg !803
  %inc = add nsw i64 %0, 1, !dbg !803
  store i64 %inc, ptr @grids, align 8, !dbg !803
  store i64 %0, ptr %call, align 8, !dbg !804
  %1 = load i64, ptr @hu_numbuckets, align 8, !dbg !805
  %call1 = tail call ptr @ObjectMalloc(i64 noundef 2, i64 noundef %1) #14, !dbg !806
  call void @llvm.dbg.value(metadata ptr %call1, metadata !797, metadata !DIExpression()), !dbg !800
  %hashtable = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 1, !dbg !807
  store ptr %call1, ptr %hashtable, align 8, !dbg !808
  %2 = load i64, ptr @hu_gridsize, align 8, !dbg !809
  %mul = mul nsw i64 %2, %2, !dbg !810
  %mul2 = mul nsw i64 %mul, %2, !dbg !811
  %conv = sitofp i64 %mul2 to double, !dbg !812
  call void @llvm.dbg.value(metadata double %conv, metadata !793, metadata !DIExpression()), !dbg !800
  %3 = load i64, ptr @total_cells, align 8, !dbg !813
  %conv3 = sitofp i64 %3 to double, !dbg !813
  %add = fadd double %conv3, %conv, !dbg !813
  %conv4 = fptosi double %add to i64, !dbg !813
  store i64 %conv4, ptr @total_cells, align 8, !dbg !813
  %conv5 = fptosi double %conv to i64, !dbg !814
  %call6 = tail call ptr @ObjectMalloc(i64 noundef 3, i64 noundef %conv5) #14, !dbg !815
  call void @llvm.dbg.value(metadata ptr %call6, metadata !792, metadata !DIExpression()), !dbg !800
  %emptycells = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 2, !dbg !816
  store ptr %call6, ptr %emptycells, align 8, !dbg !817
  %num_prims7 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 4, !dbg !818
  store i64 %num_prims, ptr %num_prims7, align 8, !dbg !819
  %cell = getelementptr inbounds %struct.voxel, ptr %v, i64 0, i32 3, !dbg !820
  %4 = load ptr, ptr %cell, align 8, !dbg !820
  %pepa8 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 3, !dbg !821
  store ptr %4, ptr %pepa8, align 8, !dbg !822
  %indx_inc = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 5, !dbg !823
  store i64 1, ptr %indx_inc, align 8, !dbg !824
  %5 = load i64, ptr @hu_gridsize, align 8, !dbg !825
  %arrayidx10 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 5, i64 1, !dbg !826
  store i64 %5, ptr %arrayidx10, align 8, !dbg !827
  %mul11 = mul nsw i64 %5, %5, !dbg !828
  %arrayidx13 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 5, i64 2, !dbg !829
  store i64 %mul11, ptr %arrayidx13, align 8, !dbg !830
  %6 = load i64, ptr @hu_numbuckets, align 8, !dbg !831
  %num_buckets = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 6, !dbg !832
  store i64 %6, ptr %num_buckets, align 8, !dbg !833
  %7 = load i64, ptr %v, align 8, !dbg !834
  %arrayidx16 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 5, i64 2, !dbg !835
  %8 = load i64, ptr %arrayidx16, align 8, !dbg !835
  %div = sdiv i64 %7, %8, !dbg !836
  call void @llvm.dbg.value(metadata i64 %div, metadata !788, metadata !DIExpression()), !dbg !800
  %mul20 = mul nsw i64 %div, %8, !dbg !837
  %sub.recomposed = srem i64 %7, %8
  call void @llvm.dbg.value(metadata i64 %sub.recomposed, metadata !789, metadata !DIExpression()), !dbg !800
  %arrayidx22 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 5, i64 1, !dbg !838
  %9 = load i64, ptr %arrayidx22, align 8, !dbg !838
  %div23 = sdiv i64 %sub.recomposed, %9, !dbg !839
  call void @llvm.dbg.value(metadata i64 %div23, metadata !787, metadata !DIExpression()), !dbg !800
  %mul26 = mul nsw i64 %div23, %9, !dbg !840
  %sub27.recomposed = srem i64 %sub.recomposed, %9
  call void @llvm.dbg.value(metadata i64 %sub27.recomposed, metadata !786, metadata !DIExpression()), !dbg !800
  %min = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 7, !dbg !841
  %10 = load double, ptr %min, align 8, !dbg !842
  %conv29 = sitofp i64 %sub27.recomposed to double, !dbg !843
  %cellsize = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, !dbg !844
  %11 = load double, ptr %cellsize, align 8, !dbg !845
  %12 = tail call double @llvm.fmuladd.f64(double %conv29, double %11, double %10), !dbg !846
  %min32 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 7, !dbg !847
  store double %12, ptr %min32, align 8, !dbg !848
  %arrayidx35 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 7, i64 1, !dbg !849
  %13 = load double, ptr %arrayidx35, align 8, !dbg !849
  %conv36 = sitofp i64 %div23 to double, !dbg !850
  %arrayidx38 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 1, !dbg !851
  %14 = load double, ptr %arrayidx38, align 8, !dbg !851
  %15 = tail call double @llvm.fmuladd.f64(double %conv36, double %14, double %13), !dbg !852
  %arrayidx41 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 7, i64 1, !dbg !853
  store double %15, ptr %arrayidx41, align 8, !dbg !854
  %arrayidx43 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 7, i64 2, !dbg !855
  %16 = load double, ptr %arrayidx43, align 8, !dbg !855
  %conv44 = sitofp i64 %div to double, !dbg !856
  %arrayidx46 = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 8, i64 2, !dbg !857
  %17 = load double, ptr %arrayidx46, align 8, !dbg !857
  %18 = tail call double @llvm.fmuladd.f64(double %conv44, double %17, double %16), !dbg !858
  %arrayidx49 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 7, i64 2, !dbg !859
  store double %18, ptr %arrayidx49, align 8, !dbg !860
  %19 = load double, ptr %cellsize, align 8, !dbg !861
  %conv54 = sitofp i64 %5 to double, !dbg !862
  %div55 = fdiv double %19, %conv54, !dbg !863
  %cellsize56 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 8, !dbg !864
  store double %div55, ptr %cellsize56, align 8, !dbg !865
  %20 = load double, ptr %arrayidx38, align 8, !dbg !866
  %div63 = fdiv double %20, %conv54, !dbg !867
  %arrayidx65 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 8, i64 1, !dbg !868
  store double %div63, ptr %arrayidx65, align 8, !dbg !869
  %21 = load double, ptr %arrayidx46, align 8, !dbg !870
  %div71 = fdiv double %21, %conv54, !dbg !871
  %arrayidx73 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 8, i64 2, !dbg !872
  store double %div71, ptr %arrayidx73, align 8, !dbg !873
  %subdiv_level = getelementptr inbounds %struct.grid, ptr %g, i64 0, i32 9, !dbg !874
  %22 = load i64, ptr %subdiv_level, align 8, !dbg !874
  %add74 = add nsw i64 %22, 1, !dbg !875
  %subdiv_level75 = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 9, !dbg !876
  store i64 %add74, ptr %subdiv_level75, align 8, !dbg !877
  %23 = load ptr, ptr @gridlist, align 8, !dbg !878
  %next = getelementptr inbounds %struct.grid, ptr %call, i64 0, i32 11, !dbg !879
  store ptr %23, ptr %next, align 8, !dbg !880
  store ptr %call, ptr @gridlist, align 8, !dbg !881
  %call76 = tail call ptr @init_bintree(ptr noundef nonnull %call), !dbg !882
  call void @llvm.dbg.value(metadata ptr %call76, metadata !798, metadata !DIExpression()), !dbg !800
  tail call void @create_bintree(ptr noundef %call76, ptr noundef nonnull %call), !dbg !883
  call void @llvm.dbg.value(metadata i64 0, metadata !791, metadata !DIExpression()), !dbg !800
  %24 = load i64, ptr @hu_gridsize, align 8, !dbg !884
  call void @llvm.dbg.value(metadata i64 %24, metadata !785, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 0, metadata !788, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 0, metadata !791, metadata !DIExpression()), !dbg !800
  %cmp200 = icmp sgt i64 %24, 0, !dbg !885
  br i1 %cmp200, label %for.cond78.preheader.us.us, label %for.end112, !dbg !888

for.cond78.preheader.us.us:                       ; preds = %entry, %for.cond78.for.inc110_crit_edge.split.us.us.us
  %k.0202.us.us = phi i64 [ %inc111.us.us, %for.cond78.for.inc110_crit_edge.split.us.us.us ], [ 0, %entry ]
  %index1D.0201.us.us = phi i64 [ %inc105.us.us.us, %for.cond78.for.inc110_crit_edge.split.us.us.us ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %k.0202.us.us, metadata !788, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 %index1D.0201.us.us, metadata !791, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 0, metadata !787, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 %index1D.0201.us.us, metadata !791, metadata !DIExpression()), !dbg !800
  br label %for.cond82.preheader.us.us.us, !dbg !889

for.cond82.preheader.us.us.us:                    ; preds = %for.cond82.for.inc107_crit_edge.us.us.us, %for.cond78.preheader.us.us
  %j.0197.us.us.us = phi i64 [ 0, %for.cond78.preheader.us.us ], [ %inc108.us.us.us, %for.cond82.for.inc107_crit_edge.us.us.us ]
  %index1D.1196.us.us.us = phi i64 [ %index1D.0201.us.us, %for.cond78.preheader.us.us ], [ %inc105.us.us.us, %for.cond82.for.inc107_crit_edge.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %j.0197.us.us.us, metadata !787, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 %index1D.1196.us.us.us, metadata !791, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 0, metadata !786, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 %index1D.1196.us.us.us, metadata !791, metadata !DIExpression()), !dbg !800
  br label %for.body85.us.us.us, !dbg !892

for.body85.us.us.us:                              ; preds = %if.end104.us.us.us, %for.cond82.preheader.us.us.us
  %i.0194.us.us.us = phi i64 [ 0, %for.cond82.preheader.us.us.us ], [ %inc106.us.us.us, %if.end104.us.us.us ]
  %index1D.2192.us.us.us = phi i64 [ %index1D.1196.us.us.us, %for.cond82.preheader.us.us.us ], [ %inc105.us.us.us, %if.end104.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %i.0194.us.us.us, metadata !786, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 %index1D.2192.us.us.us, metadata !791, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %nprims, metadata !790, metadata !DIExpression(DW_OP_deref)), !dbg !800
  %call86.us.us.us = call ptr @bintree_lookup(ptr noundef %call76, i64 noundef %i.0194.us.us.us, i64 noundef %j.0197.us.us.us, i64 noundef %k.0202.us.us, ptr undef, ptr noundef nonnull %nprims), !dbg !896
  call void @llvm.dbg.value(metadata ptr %call86.us.us.us, metadata !799, metadata !DIExpression()), !dbg !800
  %cmp87.not.us.us.us = icmp eq ptr %call86.us.us.us, null, !dbg !899
  br i1 %cmp87.not.us.us.us, label %if.else102.us.us.us, label %if.then.us.us.us, !dbg !901

if.then.us.us.us:                                 ; preds = %for.body85.us.us.us
  %25 = load i64, ptr @nonempty_voxels, align 8, !dbg !902
  %inc89.us.us.us = add nsw i64 %25, 1, !dbg !902
  store i64 %inc89.us.us.us, ptr @nonempty_voxels, align 8, !dbg !902
  tail call void @mark_nonempty(i64 noundef %index1D.2192.us.us.us, ptr noundef nonnull %call), !dbg !904
  %call90.us.us.us = tail call ptr @ObjectMalloc(i64 noundef 1, i64 noundef 1) #14, !dbg !905
  call void @llvm.dbg.value(metadata ptr %call90.us.us.us, metadata !796, metadata !DIExpression()), !dbg !800
  store i64 %index1D.2192.us.us.us, ptr %call90.us.us.us, align 8, !dbg !906
  %celltype.us.us.us = getelementptr inbounds %struct.voxel, ptr %call90.us.us.us, i64 0, i32 4, !dbg !907
  store i8 2, ptr %celltype.us.us.us, align 8, !dbg !908
  %cell92.us.us.us = getelementptr inbounds %struct.voxel, ptr %call90.us.us.us, i64 0, i32 3, !dbg !909
  store ptr %call86.us.us.us, ptr %cell92.us.us.us, align 8, !dbg !910
  %26 = load i64, ptr %nprims, align 8, !dbg !911
  call void @llvm.dbg.value(metadata i64 %26, metadata !790, metadata !DIExpression()), !dbg !800
  %numelements.us.us.us = getelementptr inbounds %struct.voxel, ptr %call90.us.us.us, i64 0, i32 1, !dbg !912
  store i64 %26, ptr %numelements.us.us.us, align 8, !dbg !913
  call void @llvm.dbg.value(metadata i64 %26, metadata !790, metadata !DIExpression()), !dbg !800
  %27 = load i64, ptr @hu_max_prims_cell, align 8, !dbg !914
  %cmp93.us.us.us = icmp sgt i64 %26, %27, !dbg !916
  br i1 %cmp93.us.us.us, label %land.lhs.true.us.us.us, label %if.else.us.us.us, !dbg !917

land.lhs.true.us.us.us:                           ; preds = %if.then.us.us.us
  %28 = load i64, ptr %subdiv_level75, align 8, !dbg !918
  %29 = load i64, ptr @hu_max_subdiv_level, align 8, !dbg !919
  %cmp96.us.us.us = icmp slt i64 %28, %29, !dbg !920
  br i1 %cmp96.us.us.us, label %if.then98.us.us.us, label %if.else.us.us.us, !dbg !921

if.else.us.us.us:                                 ; preds = %land.lhs.true.us.us.us, %if.then.us.us.us
  %30 = load i64, ptr @nonempty_leafs, align 8, !dbg !922
  %inc100.us.us.us = add nsw i64 %30, 1, !dbg !922
  store i64 %inc100.us.us.us, ptr @nonempty_leafs, align 8, !dbg !922
  call void @llvm.dbg.value(metadata i64 %26, metadata !790, metadata !DIExpression()), !dbg !800
  %31 = load i64, ptr @prims_in_leafs, align 8, !dbg !924
  %add101.us.us.us = add nsw i64 %31, %26, !dbg !924
  store i64 %add101.us.us.us, ptr @prims_in_leafs, align 8, !dbg !924
  br label %if.end.us.us.us

if.then98.us.us.us:                               ; preds = %land.lhs.true.us.us.us
  %call99.us.us.us = tail call ptr @create_grid(ptr noundef nonnull %call90.us.us.us, ptr noundef nonnull %call, i64 noundef %26), !dbg !925
  call void @llvm.dbg.value(metadata ptr %call99.us.us.us, metadata !795, metadata !DIExpression()), !dbg !800
  br label %if.end.us.us.us, !dbg !926

if.end.us.us.us:                                  ; preds = %if.then98.us.us.us, %if.else.us.us.us
  tail call void @insert_in_hashtable(ptr noundef nonnull %call90.us.us.us, ptr noundef nonnull %call), !dbg !927
  br label %if.end104.us.us.us, !dbg !928

if.else102.us.us.us:                              ; preds = %for.body85.us.us.us
  %32 = load i64, ptr @empty_voxels, align 8, !dbg !929
  %inc103.us.us.us = add nsw i64 %32, 1, !dbg !929
  store i64 %inc103.us.us.us, ptr @empty_voxels, align 8, !dbg !929
  tail call void @mark_empty(i64 noundef %index1D.2192.us.us.us, ptr noundef nonnull %call), !dbg !931
  br label %if.end104.us.us.us

if.end104.us.us.us:                               ; preds = %if.else102.us.us.us, %if.end.us.us.us
  %inc105.us.us.us = add nsw i64 %index1D.2192.us.us.us, 1, !dbg !932
  call void @llvm.dbg.value(metadata i64 %inc105.us.us.us, metadata !791, metadata !DIExpression()), !dbg !800
  %inc106.us.us.us = add nuw nsw i64 %i.0194.us.us.us, 1, !dbg !933
  call void @llvm.dbg.value(metadata i64 %inc106.us.us.us, metadata !786, metadata !DIExpression()), !dbg !800
  %exitcond.not = icmp eq i64 %inc106.us.us.us, %24, !dbg !934
  br i1 %exitcond.not, label %for.cond82.for.inc107_crit_edge.us.us.us, label %for.body85.us.us.us, !dbg !892, !llvm.loop !935

for.cond82.for.inc107_crit_edge.us.us.us:         ; preds = %if.end104.us.us.us
  %inc108.us.us.us = add nuw nsw i64 %j.0197.us.us.us, 1, !dbg !937
  call void @llvm.dbg.value(metadata i64 %inc108.us.us.us, metadata !787, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 undef, metadata !791, metadata !DIExpression()), !dbg !800
  %exitcond211.not = icmp eq i64 %inc108.us.us.us, %24, !dbg !938
  br i1 %exitcond211.not, label %for.cond78.for.inc110_crit_edge.split.us.us.us, label %for.cond82.preheader.us.us.us, !dbg !889, !llvm.loop !939

for.cond78.for.inc110_crit_edge.split.us.us.us:   ; preds = %for.cond82.for.inc107_crit_edge.us.us.us
  %inc111.us.us = add nuw nsw i64 %k.0202.us.us, 1, !dbg !941
  call void @llvm.dbg.value(metadata i64 %inc111.us.us, metadata !788, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 undef, metadata !791, metadata !DIExpression()), !dbg !800
  %exitcond212.not = icmp eq i64 %inc111.us.us, %24, !dbg !885
  br i1 %exitcond212.not, label %for.end112, label %for.cond78.preheader.us.us, !dbg !888, !llvm.loop !942

for.end112:                                       ; preds = %for.cond78.for.inc110_crit_edge.split.us.us.us, %entry
  store ptr %call, ptr %cell, align 8, !dbg !944
  %numelements114 = getelementptr inbounds %struct.voxel, ptr %v, i64 0, i32 1, !dbg !945
  store i64 -1, ptr %numelements114, align 8, !dbg !946
  %celltype115 = getelementptr inbounds %struct.voxel, ptr %v, i64 0, i32 4, !dbg !947
  store i8 3, ptr %celltype115, align 8, !dbg !948
  tail call void @deleteBinTree(ptr noundef %call76), !dbg !949
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nprims) #14, !dbg !950
  ret ptr %call, !dbg !951
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree noinline nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { cold }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gridlist", scope: !2, file: !3, line: 37, type: !85, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !84, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cr.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "dcc2bfb76e263c61baccfaec2fd92c4a")
!4 = !{!5, !6, !7, !10, !13, !14, !16}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !8, line: 298, baseType: !9)
!8 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!9 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !8, line: 287, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "R64", file: !8, line: 309, baseType: !6)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !8, line: 297, baseType: !15)
!15 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELEMENT", file: !8, line: 481, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "element", file: !8, line: 474, size: 576, elements: !20)
!20 = !{!21, !22, !82, !83}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !19, file: !8, line: 476, baseType: !14, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !19, file: !8, line: 477, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !8, line: 488, size: 1024, elements: !25)
!25 = !{!26, !27, !31, !41, !42, !43, !67, !81}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !24, file: !8, line: 490, baseType: !14, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !24, file: !8, line: 491, baseType: !28, size: 256, offset: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !24, file: !8, line: 492, baseType: !32, size: 384, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !8, line: 418, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !8, line: 413, size: 384, elements: !34)
!34 = !{!35, !40}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !33, file: !8, line: 415, baseType: !36, size: 192)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 192, elements: !38)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !8, line: 310, baseType: !6)
!38 = !{!39}
!39 = !DISubrange(count: 3)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !33, file: !8, line: 416, baseType: !36, size: 192, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !24, file: !8, line: 493, baseType: !17, size: 64, offset: 704)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !24, file: !8, line: 494, baseType: !14, size: 64, offset: 768)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !24, file: !8, line: 495, baseType: !44, size: 64, offset: 832)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROCS", file: !8, line: 340, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pprocs", file: !8, line: 327, size: 640, elements: !47)
!47 = !{!48, !52, !56, !57, !58, !59, !63, !64, !65, !66}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !46, file: !8, line: 329, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!10, null}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !46, file: !8, line: 330, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, null}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !46, file: !8, line: 331, baseType: !53, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "binread", scope: !46, file: !8, line: 332, baseType: !53, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "transform", scope: !46, file: !8, line: 333, baseType: !53, size: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "intersect", scope: !46, file: !8, line: 334, baseType: !60, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!14, null}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "pe_intersect", scope: !46, file: !8, line: 335, baseType: !60, size: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !46, file: !8, line: 336, baseType: !53, size: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !46, file: !8, line: 337, baseType: !53, size: 64, offset: 512)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !46, file: !8, line: 338, baseType: !53, size: 64, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "surf", scope: !24, file: !8, line: 496, baseType: !68, size: 64, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "SURF", file: !8, line: 357, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "surf", file: !8, line: 347, size: 704, elements: !71)
!71 = !{!72, !75, !76, !77, !78, !79, !80}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "fcolor", scope: !70, file: !8, line: 349, baseType: !73, size: 192)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !8, line: 319, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !8, line: 314, baseType: !36)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "bcolor", scope: !70, file: !8, line: 350, baseType: !73, size: 192, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "kdiff", scope: !70, file: !8, line: 351, baseType: !37, size: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "kspec", scope: !70, file: !8, line: 352, baseType: !37, size: 64, offset: 448)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ktran", scope: !70, file: !8, line: 353, baseType: !37, size: 64, offset: 512)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "refrindex", scope: !70, file: !8, line: 354, baseType: !37, size: 64, offset: 576)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "kspecn", scope: !70, file: !8, line: 355, baseType: !37, size: 64, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !24, file: !8, line: 497, baseType: !23, size: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !8, line: 478, baseType: !10, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !19, file: !8, line: 479, baseType: !32, size: 384, offset: 192)
!84 = !{!0}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRID", file: !8, line: 572, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "grid", file: !8, line: 539, size: 1152, elements: !88)
!88 = !{!89, !90, !106, !108, !109, !110, !112, !113, !114, !115, !116, !133}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !87, file: !8, line: 541, baseType: !14, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "hashtable", scope: !87, file: !8, line: 542, baseType: !91, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOXEL", file: !8, line: 405, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "voxel", file: !8, line: 394, size: 320, elements: !95)
!95 = !{!96, !97, !98, !100, !101, !102}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !94, file: !8, line: 396, baseType: !14, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !94, file: !8, line: 397, baseType: !14, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !94, file: !8, line: 398, baseType: !99, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cell", scope: !94, file: !8, line: 399, baseType: !10, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "celltype", scope: !94, file: !8, line: 400, baseType: !11, size: 8, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !94, file: !8, line: 403, baseType: !103, size: 56, offset: 264)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 56, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 7)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "emptycells", scope: !87, file: !8, line: 548, baseType: !107, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pepa", scope: !87, file: !8, line: 555, baseType: !16, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "num_prims", scope: !87, file: !8, line: 556, baseType: !14, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc", scope: !87, file: !8, line: 558, baseType: !111, size: 192, offset: 320)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !38)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !87, file: !8, line: 562, baseType: !14, size: 64, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !87, file: !8, line: 563, baseType: !36, size: 192, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "cellsize", scope: !87, file: !8, line: 564, baseType: !36, size: 192, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "subdiv_level", scope: !87, file: !8, line: 566, baseType: !14, size: 64, offset: 960)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "bintree", scope: !87, file: !8, line: 569, baseType: !117, size: 64, offset: 1024)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "BTNODE", file: !8, line: 535, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btnode", file: !8, line: 522, size: 960, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !119, file: !8, line: 524, baseType: !16, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !119, file: !8, line: 525, baseType: !36, size: 192, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nprims", scope: !119, file: !8, line: 527, baseType: !14, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !119, file: !8, line: 528, baseType: !111, size: 192, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !119, file: !8, line: 529, baseType: !111, size: 192, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !119, file: !8, line: 531, baseType: !14, size: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "totalPrimsAllocated", scope: !119, file: !8, line: 532, baseType: !14, size: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !119, file: !8, line: 533, baseType: !129, size: 128, offset: 832)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, elements: !131)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!131 = !{!132}
!132 = !DISubrange(count: 2)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !8, line: 570, baseType: !134, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!135 = !{i32 7, !"Dwarf Version", i32 5}
!136 = !{i32 2, !"Debug Info Version", i32 3}
!137 = !{i32 1, !"wchar_size", i32 4}
!138 = !{i32 7, !"PIC Level", i32 2}
!139 = !{i32 7, !"PIE Level", i32 2}
!140 = !{i32 7, !"uwtable", i32 2}
!141 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!142 = distinct !DISubprogram(name: "prn_gridlist", scope: !3, file: !3, line: 57, type: !143, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{null}
!145 = !{!146}
!146 = !DILocalVariable(name: "g", scope: !142, file: !3, line: 59, type: !85)
!147 = !DILocation(line: 61, column: 10, scope: !142)
!148 = !DILocation(line: 61, column: 2, scope: !142)
!149 = !DILocation(line: 0, scope: !142)
!150 = !DILocation(line: 64, column: 11, scope: !142)
!151 = !DILocation(line: 64, column: 2, scope: !142)
!152 = !DILocation(line: 66, column: 3, scope: !153)
!153 = distinct !DILexicalBlock(scope: !142, file: !3, line: 65, column: 3)
!154 = !DILocation(line: 67, column: 10, scope: !153)
!155 = distinct !{!155, !151, !156, !157, !158}
!156 = !DILocation(line: 68, column: 3, scope: !142)
!157 = !{!"llvm.loop.mustprogress"}
!158 = !{!"llvm.loop.unroll.disable"}
!159 = !DILocation(line: 70, column: 10, scope: !142)
!160 = !DILocation(line: 70, column: 2, scope: !142)
!161 = !DILocation(line: 71, column: 2, scope: !142)
!162 = !DISubprogram(name: "prn_grid", scope: !8, file: !8, line: 855, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !85}
!165 = !{}
!166 = distinct !DISubprogram(name: "prn_ds_stats", scope: !3, file: !3, line: 86, type: !143, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !167)
!167 = !{!168, !169}
!168 = !DILocalVariable(name: "leafs", scope: !166, file: !3, line: 88, type: !14)
!169 = !DILocalVariable(name: "voxels", scope: !166, file: !3, line: 89, type: !14)
!170 = !DILocation(line: 91, column: 2, scope: !166)
!171 = !DILocation(line: 92, column: 2, scope: !166)
!172 = !DILocation(line: 94, column: 2, scope: !166)
!173 = !DILocation(line: 96, column: 61, scope: !166)
!174 = !DILocation(line: 96, column: 2, scope: !166)
!175 = !DILocation(line: 97, column: 61, scope: !166)
!176 = !DILocation(line: 97, column: 2, scope: !166)
!177 = !DILocation(line: 98, column: 61, scope: !166)
!178 = !DILocation(line: 98, column: 2, scope: !166)
!179 = !DILocation(line: 99, column: 61, scope: !166)
!180 = !DILocation(line: 99, column: 2, scope: !166)
!181 = !DILocation(line: 100, column: 61, scope: !166)
!182 = !DILocation(line: 100, column: 2, scope: !166)
!183 = !DILocation(line: 102, column: 11, scope: !166)
!184 = !DILocation(line: 102, column: 26, scope: !166)
!185 = !DILocation(line: 102, column: 24, scope: !166)
!186 = !DILocation(line: 0, scope: !166)
!187 = !DILocation(line: 103, column: 26, scope: !166)
!188 = !DILocation(line: 103, column: 24, scope: !166)
!189 = !DILocation(line: 105, column: 96, scope: !166)
!190 = !DILocation(line: 105, column: 109, scope: !166)
!191 = !DILocation(line: 105, column: 2, scope: !166)
!192 = !DILocation(line: 106, column: 76, scope: !166)
!193 = !DILocation(line: 106, column: 96, scope: !166)
!194 = !DILocation(line: 106, column: 112, scope: !166)
!195 = !DILocation(line: 106, column: 2, scope: !166)
!196 = !DILocation(line: 107, column: 76, scope: !166)
!197 = !DILocation(line: 107, column: 96, scope: !166)
!198 = !DILocation(line: 107, column: 109, scope: !166)
!199 = !DILocation(line: 107, column: 2, scope: !166)
!200 = !DILocation(line: 108, column: 76, scope: !166)
!201 = !DILocation(line: 108, column: 96, scope: !166)
!202 = !DILocation(line: 108, column: 111, scope: !166)
!203 = !DILocation(line: 108, column: 2, scope: !166)
!204 = !DILocation(line: 109, column: 82, scope: !166)
!205 = !DILocation(line: 109, column: 74, scope: !166)
!206 = !DILocation(line: 109, column: 97, scope: !166)
!207 = !DILocation(line: 109, column: 96, scope: !166)
!208 = !DILocation(line: 109, column: 2, scope: !166)
!209 = !DILocation(line: 110, column: 2, scope: !166)
!210 = !DILocation(line: 111, column: 2, scope: !166)
!211 = distinct !DISubprogram(name: "init_masks", scope: !3, file: !3, line: 126, type: !143, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !212)
!212 = !{!213, !214}
!213 = !DILocalVariable(name: "n", scope: !211, file: !3, line: 128, type: !14)
!214 = !DILocalVariable(name: "i", scope: !211, file: !3, line: 128, type: !14)
!215 = !DILocation(line: 0, scope: !211)
!216 = !DILocation(line: 132, column: 2, scope: !217)
!217 = distinct !DILexicalBlock(scope: !211, file: !3, line: 132, column: 2)
!218 = !DILocation(line: 134, column: 27, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 133, column: 3)
!220 = distinct !DILexicalBlock(scope: !217, file: !3, line: 132, column: 2)
!221 = !DILocation(line: 134, column: 3, scope: !219)
!222 = !DILocation(line: 134, column: 20, scope: !219)
!223 = !DILocation(line: 135, column: 23, scope: !219)
!224 = !DILocation(line: 135, column: 3, scope: !219)
!225 = !DILocation(line: 135, column: 21, scope: !219)
!226 = !DILocation(line: 132, column: 22, scope: !220)
!227 = !DILocation(line: 132, column: 16, scope: !220)
!228 = distinct !{!228, !216, !229, !157, !158}
!229 = !DILocation(line: 136, column: 3, scope: !217)
!230 = !DILocation(line: 138, column: 2, scope: !211)
!231 = distinct !DISubprogram(name: "init_world_grid", scope: !3, file: !3, line: 156, type: !232, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{!85, !92, !16, !14}
!234 = !{!235, !236, !237, !238, !239, !240, !241}
!235 = !DILocalVariable(name: "v", arg: 1, scope: !231, file: !3, line: 156, type: !92)
!236 = !DILocalVariable(name: "pepa", arg: 2, scope: !231, file: !3, line: 156, type: !16)
!237 = !DILocalVariable(name: "num_pe", arg: 3, scope: !231, file: !3, line: 156, type: !14)
!238 = !DILocalVariable(name: "ec", scope: !231, file: !3, line: 158, type: !107)
!239 = !DILocalVariable(name: "wbox", scope: !231, file: !3, line: 159, type: !32)
!240 = !DILocalVariable(name: "g", scope: !231, file: !3, line: 160, type: !85)
!241 = !DILocalVariable(name: "ht", scope: !231, file: !3, line: 161, type: !91)
!242 = !DILocation(line: 0, scope: !231)
!243 = !DILocation(line: 163, column: 7, scope: !231)
!244 = !DILocation(line: 164, column: 15, scope: !231)
!245 = !DILocation(line: 164, column: 8, scope: !231)
!246 = !DILocation(line: 166, column: 7, scope: !231)
!247 = !DILocation(line: 168, column: 5, scope: !231)
!248 = !DILocation(line: 168, column: 15, scope: !231)
!249 = !DILocation(line: 169, column: 18, scope: !231)
!250 = !DILocation(line: 171, column: 7, scope: !231)
!251 = !DILocation(line: 173, column: 5, scope: !231)
!252 = !DILocation(line: 173, column: 17, scope: !231)
!253 = !DILocation(line: 174, column: 19, scope: !231)
!254 = !DILocation(line: 176, column: 5, scope: !231)
!255 = !DILocation(line: 176, column: 17, scope: !231)
!256 = !DILocation(line: 177, column: 2, scope: !231)
!257 = !DILocation(line: 177, column: 17, scope: !231)
!258 = !DILocation(line: 178, column: 2, scope: !231)
!259 = !DILocation(line: 178, column: 17, scope: !231)
!260 = !DILocation(line: 179, column: 5, scope: !231)
!261 = !DILocation(line: 179, column: 17, scope: !231)
!262 = !DILocation(line: 188, column: 5, scope: !231)
!263 = !DILocation(line: 192, column: 5, scope: !231)
!264 = !DILocation(line: 189, column: 12, scope: !231)
!265 = !DILocation(line: 192, column: 17, scope: !231)
!266 = !DILocation(line: 193, column: 2, scope: !231)
!267 = !DILocation(line: 193, column: 17, scope: !231)
!268 = !DILocation(line: 194, column: 2, scope: !231)
!269 = !DILocation(line: 194, column: 17, scope: !231)
!270 = !DILocation(line: 196, column: 5, scope: !231)
!271 = !DILocation(line: 196, column: 18, scope: !231)
!272 = !DILocation(line: 197, column: 5, scope: !231)
!273 = !DILocation(line: 197, column: 15, scope: !231)
!274 = !DILocation(line: 198, column: 5, scope: !231)
!275 = !DILocation(line: 198, column: 11, scope: !231)
!276 = !DILocation(line: 199, column: 5, scope: !231)
!277 = !DILocation(line: 199, column: 11, scope: !231)
!278 = !DILocation(line: 201, column: 11, scope: !231)
!279 = !DILocation(line: 202, column: 2, scope: !231)
!280 = !DISubprogram(name: "ObjectMalloc", scope: !8, file: !8, line: 915, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !165)
!281 = !DISubroutineType(types: !282)
!282 = !{!5, !14, !14}
!283 = distinct !DISubprogram(name: "init_world_voxel", scope: !3, file: !3, line: 221, type: !284, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !286)
!284 = !DISubroutineType(types: !285)
!285 = !{!92, !16, !14}
!286 = !{!287, !288, !289}
!287 = !DILocalVariable(name: "pepa", arg: 1, scope: !283, file: !3, line: 221, type: !16)
!288 = !DILocalVariable(name: "numelements", arg: 2, scope: !283, file: !3, line: 221, type: !14)
!289 = !DILocalVariable(name: "v", scope: !283, file: !3, line: 223, type: !92)
!290 = !DILocation(line: 0, scope: !283)
!291 = !DILocation(line: 225, column: 6, scope: !283)
!292 = !DILocation(line: 227, column: 17, scope: !283)
!293 = !DILocation(line: 229, column: 15, scope: !283)
!294 = !DILocation(line: 230, column: 5, scope: !283)
!295 = !DILocation(line: 230, column: 17, scope: !283)
!296 = !DILocation(line: 231, column: 5, scope: !283)
!297 = !DILocation(line: 231, column: 17, scope: !283)
!298 = !DILocation(line: 232, column: 5, scope: !283)
!299 = !DILocation(line: 232, column: 17, scope: !283)
!300 = !DILocation(line: 233, column: 5, scope: !283)
!301 = !DILocation(line: 233, column: 17, scope: !283)
!302 = !DILocation(line: 235, column: 2, scope: !283)
!303 = distinct !DISubprogram(name: "mark_empty", scope: !3, file: !3, line: 253, type: !304, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !14, !85}
!306 = !{!307, !308, !309, !310, !311}
!307 = !DILocalVariable(name: "index1D", arg: 1, scope: !303, file: !3, line: 253, type: !14)
!308 = !DILocalVariable(name: "g", arg: 2, scope: !303, file: !3, line: 253, type: !85)
!309 = !DILocalVariable(name: "i", scope: !303, file: !3, line: 255, type: !14)
!310 = !DILocalVariable(name: "r", scope: !303, file: !3, line: 255, type: !14)
!311 = !DILocalVariable(name: "w", scope: !303, file: !3, line: 256, type: !7)
!312 = !DILocation(line: 0, scope: !303)
!313 = !DILocation(line: 258, column: 13, scope: !303)
!314 = !DILocation(line: 259, column: 14, scope: !303)
!315 = !DILocation(line: 261, column: 9, scope: !303)
!316 = !DILocation(line: 261, column: 6, scope: !303)
!317 = !DILocation(line: 262, column: 10, scope: !303)
!318 = !DILocation(line: 262, column: 8, scope: !303)
!319 = !DILocation(line: 263, column: 19, scope: !303)
!320 = !DILocation(line: 264, column: 2, scope: !303)
!321 = distinct !DISubprogram(name: "mark_nonempty", scope: !3, file: !3, line: 281, type: !304, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !322)
!322 = !{!323, !324, !325, !326, !327}
!323 = !DILocalVariable(name: "index1D", arg: 1, scope: !321, file: !3, line: 281, type: !14)
!324 = !DILocalVariable(name: "g", arg: 2, scope: !321, file: !3, line: 281, type: !85)
!325 = !DILocalVariable(name: "i", scope: !321, file: !3, line: 283, type: !14)
!326 = !DILocalVariable(name: "r", scope: !321, file: !3, line: 283, type: !14)
!327 = !DILocalVariable(name: "w", scope: !321, file: !3, line: 284, type: !7)
!328 = !DILocation(line: 0, scope: !321)
!329 = !DILocation(line: 286, column: 13, scope: !321)
!330 = !DILocation(line: 287, column: 14, scope: !321)
!331 = !DILocation(line: 289, column: 9, scope: !321)
!332 = !DILocation(line: 289, column: 6, scope: !321)
!333 = !DILocation(line: 290, column: 10, scope: !321)
!334 = !DILocation(line: 290, column: 8, scope: !321)
!335 = !DILocation(line: 291, column: 19, scope: !321)
!336 = !DILocation(line: 292, column: 2, scope: !321)
!337 = distinct !DISubprogram(name: "insert_in_hashtable", scope: !3, file: !3, line: 309, type: !338, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !92, !85}
!340 = !{!341, !342, !343, !344, !345}
!341 = !DILocalVariable(name: "v", arg: 1, scope: !337, file: !3, line: 309, type: !92)
!342 = !DILocalVariable(name: "g", arg: 2, scope: !337, file: !3, line: 309, type: !85)
!343 = !DILocalVariable(name: "i", scope: !337, file: !3, line: 311, type: !14)
!344 = !DILocalVariable(name: "r", scope: !337, file: !3, line: 311, type: !14)
!345 = !DILocalVariable(name: "vht", scope: !337, file: !3, line: 312, type: !92)
!346 = !DILocation(line: 0, scope: !337)
!347 = !DILocation(line: 314, column: 9, scope: !337)
!348 = !DILocation(line: 314, column: 12, scope: !337)
!349 = !DILocation(line: 315, column: 15, scope: !337)
!350 = !DILocation(line: 317, column: 11, scope: !337)
!351 = !DILocation(line: 317, column: 8, scope: !337)
!352 = !DILocation(line: 318, column: 5, scope: !337)
!353 = !DILocation(line: 318, column: 10, scope: !337)
!354 = !DILocation(line: 319, column: 5, scope: !337)
!355 = !DILocation(line: 319, column: 2, scope: !337)
!356 = !DILocation(line: 319, column: 18, scope: !337)
!357 = !DILocation(line: 320, column: 2, scope: !337)
!358 = distinct !DISubprogram(name: "prims_in_box2", scope: !3, file: !3, line: 339, type: !359, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !362)
!359 = !DISubroutineType(types: !360)
!360 = !{!16, !16, !14, !32, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!363 = !DILocalVariable(name: "pepa", arg: 1, scope: !358, file: !3, line: 339, type: !16)
!364 = !DILocalVariable(name: "n_in", arg: 2, scope: !358, file: !3, line: 339, type: !14)
!365 = !DILocalVariable(name: "b", arg: 3, scope: !358, file: !3, line: 339, type: !32)
!366 = !DILocalVariable(name: "n", arg: 4, scope: !358, file: !3, line: 339, type: !361)
!367 = !DILocalVariable(name: "ovlap", scope: !358, file: !3, line: 341, type: !14)
!368 = !DILocalVariable(name: "i", scope: !358, file: !3, line: 341, type: !14)
!369 = !DILocalVariable(name: "j", scope: !358, file: !3, line: 341, type: !14)
!370 = !DILocalVariable(name: "k", scope: !358, file: !3, line: 341, type: !14)
!371 = !DILocalVariable(name: "pe", scope: !358, file: !3, line: 342, type: !17)
!372 = !DILocalVariable(name: "npepa", scope: !358, file: !3, line: 343, type: !16)
!373 = !DILocalVariable(name: "bb", scope: !358, file: !3, line: 344, type: !32)
!374 = !DILocalVariable(name: "max", scope: !358, file: !3, line: 345, type: !37)
!375 = !DILocalVariable(name: "side", scope: !358, file: !3, line: 345, type: !37)
!376 = !DILocalVariable(name: "eps", scope: !358, file: !3, line: 345, type: !37)
!377 = !DILocation(line: 0, scope: !358)
!378 = !DILocation(line: 339, column: 56, scope: !358)
!379 = !DILocation(line: 347, column: 11, scope: !358)
!380 = !DILocation(line: 347, column: 9, scope: !358)
!381 = !DILocation(line: 347, column: 21, scope: !358)
!382 = !DILocation(line: 347, column: 19, scope: !358)
!383 = !DILocation(line: 348, column: 9, scope: !358)
!384 = !DILocation(line: 348, column: 21, scope: !358)
!385 = !DILocation(line: 348, column: 19, scope: !358)
!386 = !DILocation(line: 350, column: 13, scope: !358)
!387 = !DILocation(line: 350, column: 9, scope: !358)
!388 = !DILocation(line: 351, column: 9, scope: !358)
!389 = !DILocation(line: 351, column: 21, scope: !358)
!390 = !DILocation(line: 351, column: 19, scope: !358)
!391 = !DILocation(line: 353, column: 13, scope: !358)
!392 = !DILocation(line: 353, column: 9, scope: !358)
!393 = !DILocation(line: 354, column: 13, scope: !358)
!394 = !DILocation(line: 356, column: 11, scope: !395)
!395 = distinct !DILexicalBlock(scope: !358, file: !3, line: 356, column: 6)
!396 = !DILocation(line: 356, column: 6, scope: !358)
!397 = !DILocation(line: 357, column: 11, scope: !395)
!398 = !DILocation(line: 365, column: 5, scope: !358)
!399 = !DILocation(line: 368, column: 2, scope: !400)
!400 = distinct !DILexicalBlock(scope: !358, file: !3, line: 368, column: 2)
!401 = !DILocation(line: 361, column: 6, scope: !402)
!402 = distinct !DILexicalBlock(scope: !395, file: !3, line: 359, column: 3)
!403 = !DILocation(line: 362, column: 3, scope: !402)
!404 = !DILocation(line: 370, column: 8, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !3, line: 369, column: 3)
!406 = distinct !DILexicalBlock(scope: !400, file: !3, line: 368, column: 2)
!407 = !DILocation(line: 371, column: 12, scope: !405)
!408 = !DILocation(line: 376, column: 32, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !3, line: 376, column: 8)
!410 = distinct !DILexicalBlock(scope: !411, file: !3, line: 375, column: 4)
!411 = distinct !DILexicalBlock(scope: !412, file: !3, line: 374, column: 3)
!412 = distinct !DILexicalBlock(scope: !405, file: !3, line: 374, column: 3)
!413 = !DILocation(line: 376, column: 19, scope: !409)
!414 = !DILocation(line: 376, column: 8, scope: !410)
!415 = distinct !{!415, !416, !417, !157, !158}
!416 = !DILocation(line: 374, column: 3, scope: !412)
!417 = !DILocation(line: 411, column: 4, scope: !412)
!418 = !DILocation(line: 415, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 414, column: 4)
!420 = distinct !DILexicalBlock(scope: !405, file: !3, line: 413, column: 7)
!421 = !DILocation(line: 415, column: 4, scope: !419)
!422 = !DILocation(line: 415, column: 15, scope: !419)
!423 = !DILocation(line: 416, column: 8, scope: !419)
!424 = !DILocation(line: 417, column: 4, scope: !419)
!425 = !DILocation(line: 368, column: 25, scope: !406)
!426 = !DILocation(line: 368, column: 16, scope: !406)
!427 = distinct !{!427, !399, !428, !157, !158}
!428 = !DILocation(line: 418, column: 3, scope: !400)
!429 = !DILocation(line: 421, column: 2, scope: !358)
!430 = distinct !DISubprogram(name: "init_bintree", scope: !3, file: !3, line: 438, type: !431, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{!117, !85}
!433 = !{!434, !435}
!434 = !DILocalVariable(name: "ng", arg: 1, scope: !430, file: !3, line: 438, type: !85)
!435 = !DILocalVariable(name: "btn", scope: !430, file: !3, line: 440, type: !117)
!436 = !DILocation(line: 0, scope: !430)
!437 = !DILocation(line: 442, column: 8, scope: !430)
!438 = !DILocation(line: 444, column: 7, scope: !430)
!439 = !DILocation(line: 446, column: 7, scope: !430)
!440 = !DILocation(line: 445, column: 14, scope: !430)
!441 = !DILocation(line: 446, column: 14, scope: !430)
!442 = !DILocation(line: 448, column: 18, scope: !430)
!443 = !DILocation(line: 448, column: 14, scope: !430)
!444 = !DILocation(line: 448, column: 7, scope: !430)
!445 = !DILocation(line: 448, column: 12, scope: !430)
!446 = !DILocation(line: 449, column: 14, scope: !430)
!447 = !DILocation(line: 449, column: 2, scope: !430)
!448 = !DILocation(line: 449, column: 12, scope: !430)
!449 = !DILocation(line: 450, column: 14, scope: !430)
!450 = !DILocation(line: 450, column: 2, scope: !430)
!451 = !DILocation(line: 450, column: 12, scope: !430)
!452 = !DILocation(line: 452, column: 14, scope: !430)
!453 = !DILocation(line: 452, column: 7, scope: !430)
!454 = !DILocation(line: 452, column: 12, scope: !430)
!455 = !DILocation(line: 453, column: 14, scope: !430)
!456 = !DILocation(line: 453, column: 2, scope: !430)
!457 = !DILocation(line: 453, column: 12, scope: !430)
!458 = !DILocation(line: 454, column: 14, scope: !430)
!459 = !DILocation(line: 454, column: 2, scope: !430)
!460 = !DILocation(line: 454, column: 12, scope: !430)
!461 = !DILocation(line: 456, column: 7, scope: !430)
!462 = !DILocation(line: 460, column: 20, scope: !430)
!463 = !DILocation(line: 457, column: 12, scope: !430)
!464 = !DILocation(line: 460, column: 7, scope: !430)
!465 = !DILocation(line: 460, column: 14, scope: !430)
!466 = !DILocation(line: 461, column: 7, scope: !430)
!467 = !DILocation(line: 461, column: 27, scope: !430)
!468 = !DILocation(line: 463, column: 10, scope: !469)
!469 = distinct !DILexicalBlock(scope: !430, file: !3, line: 463, column: 6)
!470 = !DILocation(line: 463, column: 20, scope: !469)
!471 = !DILocation(line: 463, column: 6, scope: !430)
!472 = !DILocation(line: 464, column: 17, scope: !469)
!473 = !DILocation(line: 464, column: 3, scope: !469)
!474 = !DILocation(line: 0, scope: !469)
!475 = !DILocation(line: 468, column: 2, scope: !430)
!476 = distinct !DISubprogram(name: "subdiv_bintree", scope: !3, file: !3, line: 490, type: !477, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !117, !85}
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489}
!480 = !DILocalVariable(name: "btn", arg: 1, scope: !476, file: !3, line: 490, type: !117)
!481 = !DILocalVariable(name: "g", arg: 2, scope: !476, file: !3, line: 490, type: !85)
!482 = !DILocalVariable(name: "btn1", scope: !476, file: !3, line: 492, type: !117)
!483 = !DILocalVariable(name: "btn2", scope: !476, file: !3, line: 492, type: !117)
!484 = !DILocalVariable(name: "n1", scope: !476, file: !3, line: 493, type: !14)
!485 = !DILocalVariable(name: "n2", scope: !476, file: !3, line: 493, type: !14)
!486 = !DILocalVariable(name: "imax", scope: !476, file: !3, line: 493, type: !14)
!487 = !DILocalVariable(name: "dmax", scope: !476, file: !3, line: 493, type: !14)
!488 = !DILocalVariable(name: "b1", scope: !476, file: !3, line: 494, type: !32)
!489 = !DILocalVariable(name: "b2", scope: !476, file: !3, line: 494, type: !32)
!490 = !DILocation(line: 0, scope: !476)
!491 = !DILocation(line: 494, column: 2, scope: !476)
!492 = !DILocation(line: 494, column: 8, scope: !476)
!493 = !DILocation(line: 494, column: 12, scope: !476)
!494 = !DILocation(line: 499, column: 14, scope: !476)
!495 = !DILocation(line: 499, column: 9, scope: !476)
!496 = !DILocation(line: 501, column: 13, scope: !497)
!497 = distinct !DILexicalBlock(scope: !476, file: !3, line: 501, column: 6)
!498 = !DILocation(line: 501, column: 11, scope: !497)
!499 = !DILocation(line: 501, column: 6, scope: !476)
!500 = !DILocation(line: 507, column: 13, scope: !501)
!501 = distinct !DILexicalBlock(scope: !476, file: !3, line: 507, column: 6)
!502 = !DILocation(line: 507, column: 11, scope: !501)
!503 = !DILocation(line: 507, column: 6, scope: !476)
!504 = !DILocation(line: 515, column: 7, scope: !476)
!505 = !DILocation(line: 515, column: 14, scope: !476)
!506 = !DILocation(line: 516, column: 7, scope: !476)
!507 = !DILocation(line: 519, column: 6, scope: !508)
!508 = distinct !DILexicalBlock(scope: !476, file: !3, line: 519, column: 6)
!509 = !DILocation(line: 517, column: 14, scope: !476)
!510 = !DILocation(line: 519, column: 19, scope: !508)
!511 = !DILocation(line: 519, column: 6, scope: !476)
!512 = !DILocation(line: 517, column: 2, scope: !476)
!513 = !DILocation(line: 521, column: 21, scope: !514)
!514 = distinct !DILexicalBlock(scope: !508, file: !3, line: 520, column: 3)
!515 = !DILocation(line: 522, column: 21, scope: !514)
!516 = !DILocation(line: 524, column: 10, scope: !514)
!517 = !DILocation(line: 525, column: 10, scope: !514)
!518 = !DILocation(line: 527, column: 15, scope: !514)
!519 = !DILocation(line: 528, column: 15, scope: !514)
!520 = !DILocation(line: 530, column: 9, scope: !514)
!521 = !DILocation(line: 532, column: 9, scope: !514)
!522 = !DILocation(line: 531, column: 16, scope: !514)
!523 = !DILocation(line: 532, column: 16, scope: !514)
!524 = !DILocation(line: 534, column: 9, scope: !514)
!525 = !DILocation(line: 536, column: 9, scope: !514)
!526 = !DILocation(line: 535, column: 16, scope: !514)
!527 = !DILocation(line: 536, column: 16, scope: !514)
!528 = !DILocation(line: 538, column: 21, scope: !514)
!529 = !DILocation(line: 538, column: 16, scope: !514)
!530 = !DILocation(line: 538, column: 9, scope: !514)
!531 = !DILocation(line: 538, column: 14, scope: !514)
!532 = !DILocation(line: 539, column: 16, scope: !514)
!533 = !DILocation(line: 539, column: 3, scope: !514)
!534 = !DILocation(line: 539, column: 14, scope: !514)
!535 = !DILocation(line: 540, column: 16, scope: !514)
!536 = !DILocation(line: 540, column: 3, scope: !514)
!537 = !DILocation(line: 540, column: 14, scope: !514)
!538 = !DILocation(line: 542, column: 16, scope: !514)
!539 = !DILocation(line: 542, column: 9, scope: !514)
!540 = !DILocation(line: 542, column: 14, scope: !514)
!541 = !DILocation(line: 543, column: 16, scope: !514)
!542 = !DILocation(line: 543, column: 3, scope: !514)
!543 = !DILocation(line: 543, column: 14, scope: !514)
!544 = !DILocation(line: 544, column: 16, scope: !514)
!545 = !DILocation(line: 544, column: 3, scope: !514)
!546 = !DILocation(line: 544, column: 14, scope: !514)
!547 = !DILocation(line: 545, column: 3, scope: !514)
!548 = !DILocation(line: 545, column: 17, scope: !514)
!549 = !DILocation(line: 547, column: 16, scope: !514)
!550 = !DILocation(line: 547, column: 9, scope: !514)
!551 = !DILocation(line: 547, column: 14, scope: !514)
!552 = !DILocation(line: 548, column: 16, scope: !514)
!553 = !DILocation(line: 548, column: 3, scope: !514)
!554 = !DILocation(line: 548, column: 14, scope: !514)
!555 = !DILocation(line: 549, column: 16, scope: !514)
!556 = !DILocation(line: 549, column: 3, scope: !514)
!557 = !DILocation(line: 549, column: 14, scope: !514)
!558 = !DILocation(line: 550, column: 3, scope: !514)
!559 = !DILocation(line: 550, column: 17, scope: !514)
!560 = !DILocation(line: 552, column: 16, scope: !514)
!561 = !DILocation(line: 552, column: 9, scope: !514)
!562 = !DILocation(line: 552, column: 14, scope: !514)
!563 = !DILocation(line: 553, column: 16, scope: !514)
!564 = !DILocation(line: 553, column: 3, scope: !514)
!565 = !DILocation(line: 553, column: 14, scope: !514)
!566 = !DILocation(line: 554, column: 16, scope: !514)
!567 = !DILocation(line: 554, column: 3, scope: !514)
!568 = !DILocation(line: 554, column: 14, scope: !514)
!569 = !DILocation(line: 555, column: 3, scope: !514)
!570 = !DILocation(line: 555, column: 17, scope: !514)
!571 = !DILocation(line: 557, column: 21, scope: !514)
!572 = !DILocation(line: 557, column: 16, scope: !514)
!573 = !DILocation(line: 557, column: 9, scope: !514)
!574 = !DILocation(line: 557, column: 14, scope: !514)
!575 = !DILocation(line: 558, column: 16, scope: !514)
!576 = !DILocation(line: 558, column: 3, scope: !514)
!577 = !DILocation(line: 558, column: 14, scope: !514)
!578 = !DILocation(line: 559, column: 16, scope: !514)
!579 = !DILocation(line: 559, column: 3, scope: !514)
!580 = !DILocation(line: 559, column: 14, scope: !514)
!581 = !DILocation(line: 561, column: 16, scope: !514)
!582 = !DILocation(line: 561, column: 9, scope: !514)
!583 = !DILocation(line: 561, column: 14, scope: !514)
!584 = !DILocation(line: 562, column: 16, scope: !514)
!585 = !DILocation(line: 562, column: 3, scope: !514)
!586 = !DILocation(line: 562, column: 14, scope: !514)
!587 = !DILocation(line: 563, column: 16, scope: !514)
!588 = !DILocation(line: 563, column: 3, scope: !514)
!589 = !DILocation(line: 563, column: 14, scope: !514)
!590 = !DILocation(line: 564, column: 19, scope: !514)
!591 = !DILocation(line: 564, column: 34, scope: !514)
!592 = !DILocation(line: 564, column: 42, scope: !514)
!593 = !DILocation(line: 564, column: 39, scope: !514)
!594 = !DILocation(line: 564, column: 32, scope: !514)
!595 = !DILocation(line: 564, column: 3, scope: !514)
!596 = !DILocation(line: 564, column: 17, scope: !514)
!597 = !DILocation(line: 566, column: 17, scope: !514)
!598 = !DILocation(line: 566, column: 15, scope: !514)
!599 = !DILocation(line: 567, column: 17, scope: !514)
!600 = !DILocation(line: 567, column: 3, scope: !514)
!601 = !DILocation(line: 567, column: 15, scope: !514)
!602 = !DILocation(line: 568, column: 17, scope: !514)
!603 = !DILocation(line: 568, column: 3, scope: !514)
!604 = !DILocation(line: 568, column: 15, scope: !514)
!605 = !DILocation(line: 569, column: 30, scope: !514)
!606 = !DILocation(line: 569, column: 43, scope: !514)
!607 = !DILocation(line: 569, column: 28, scope: !514)
!608 = !DILocation(line: 569, column: 6, scope: !514)
!609 = !DILocation(line: 569, column: 15, scope: !514)
!610 = !DILocation(line: 570, column: 30, scope: !514)
!611 = !DILocation(line: 570, column: 43, scope: !514)
!612 = !DILocation(line: 570, column: 28, scope: !514)
!613 = !DILocation(line: 570, column: 3, scope: !514)
!614 = !DILocation(line: 570, column: 15, scope: !514)
!615 = !DILocation(line: 571, column: 30, scope: !514)
!616 = !DILocation(line: 571, column: 43, scope: !514)
!617 = !DILocation(line: 571, column: 28, scope: !514)
!618 = !DILocation(line: 571, column: 3, scope: !514)
!619 = !DILocation(line: 571, column: 15, scope: !514)
!620 = !DILocation(line: 573, column: 36, scope: !514)
!621 = !DILocation(line: 573, column: 45, scope: !514)
!622 = !DILocation(line: 573, column: 65, scope: !514)
!623 = !DILocation(line: 573, column: 17, scope: !514)
!624 = !DILocation(line: 573, column: 15, scope: !514)
!625 = !DILocation(line: 574, column: 36, scope: !514)
!626 = !DILocation(line: 574, column: 9, scope: !514)
!627 = !DILocation(line: 574, column: 29, scope: !514)
!628 = !DILocation(line: 576, column: 17, scope: !514)
!629 = !DILocation(line: 576, column: 15, scope: !514)
!630 = !DILocation(line: 577, column: 17, scope: !514)
!631 = !DILocation(line: 577, column: 3, scope: !514)
!632 = !DILocation(line: 577, column: 15, scope: !514)
!633 = !DILocation(line: 578, column: 17, scope: !514)
!634 = !DILocation(line: 578, column: 3, scope: !514)
!635 = !DILocation(line: 578, column: 15, scope: !514)
!636 = !DILocation(line: 579, column: 30, scope: !514)
!637 = !DILocation(line: 579, column: 43, scope: !514)
!638 = !DILocation(line: 579, column: 28, scope: !514)
!639 = !DILocation(line: 579, column: 6, scope: !514)
!640 = !DILocation(line: 579, column: 15, scope: !514)
!641 = !DILocation(line: 580, column: 30, scope: !514)
!642 = !DILocation(line: 580, column: 43, scope: !514)
!643 = !DILocation(line: 580, column: 28, scope: !514)
!644 = !DILocation(line: 580, column: 3, scope: !514)
!645 = !DILocation(line: 580, column: 15, scope: !514)
!646 = !DILocation(line: 581, column: 30, scope: !514)
!647 = !DILocation(line: 581, column: 43, scope: !514)
!648 = !DILocation(line: 581, column: 28, scope: !514)
!649 = !DILocation(line: 581, column: 3, scope: !514)
!650 = !DILocation(line: 581, column: 15, scope: !514)
!651 = !DILocation(line: 583, column: 36, scope: !514)
!652 = !DILocation(line: 583, column: 45, scope: !514)
!653 = !DILocation(line: 583, column: 65, scope: !514)
!654 = !DILocation(line: 583, column: 17, scope: !514)
!655 = !DILocation(line: 583, column: 15, scope: !514)
!656 = !DILocation(line: 584, column: 36, scope: !514)
!657 = !DILocation(line: 584, column: 9, scope: !514)
!658 = !DILocation(line: 584, column: 29, scope: !514)
!659 = !DILocation(line: 586, column: 3, scope: !514)
!660 = !DILocation(line: 597, column: 2, scope: !476)
!661 = distinct !DISubprogram(name: "create_bintree", scope: !3, file: !3, line: 615, type: !477, scopeLine: 616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !662)
!662 = !{!663, !664, !665}
!663 = !DILocalVariable(name: "root", arg: 1, scope: !661, file: !3, line: 615, type: !117)
!664 = !DILocalVariable(name: "g", arg: 2, scope: !661, file: !3, line: 615, type: !85)
!665 = !DILocalVariable(name: "btn", scope: !661, file: !3, line: 617, type: !117)
!666 = !DILocation(line: 626, column: 3, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 623, column: 3)
!668 = distinct !DILexicalBlock(scope: !661, file: !3, line: 622, column: 6)
!669 = !DILocation(line: 0, scope: !661)
!670 = !DILocation(line: 622, column: 11, scope: !668)
!671 = !DILocation(line: 622, column: 6, scope: !668)
!672 = !DILocation(line: 622, column: 16, scope: !668)
!673 = !DILocation(line: 622, column: 21, scope: !668)
!674 = !DILocation(line: 622, column: 24, scope: !668)
!675 = !DILocation(line: 622, column: 34, scope: !668)
!676 = !DILocation(line: 622, column: 39, scope: !668)
!677 = !DILocation(line: 622, column: 42, scope: !668)
!678 = !DILocation(line: 622, column: 52, scope: !668)
!679 = !DILocation(line: 622, column: 6, scope: !661)
!680 = !DILocation(line: 624, column: 3, scope: !667)
!681 = !DILocation(line: 625, column: 23, scope: !667)
!682 = !DILocation(line: 625, column: 18, scope: !667)
!683 = !DILocation(line: 625, column: 3, scope: !667)
!684 = !DILocation(line: 626, column: 18, scope: !667)
!685 = !DILocation(line: 634, column: 2, scope: !661)
!686 = distinct !DISubprogram(name: "bintree_lookup", scope: !3, file: !3, line: 658, type: !687, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{!16, !117, !14, !14, !14, !85, !361}
!689 = !{!690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!690 = !DILocalVariable(name: "root", arg: 1, scope: !686, file: !3, line: 658, type: !117)
!691 = !DILocalVariable(name: "i", arg: 2, scope: !686, file: !3, line: 658, type: !14)
!692 = !DILocalVariable(name: "j", arg: 3, scope: !686, file: !3, line: 658, type: !14)
!693 = !DILocalVariable(name: "k", arg: 4, scope: !686, file: !3, line: 658, type: !14)
!694 = !DILocalVariable(name: "g", arg: 5, scope: !686, file: !3, line: 658, type: !85)
!695 = !DILocalVariable(name: "n", arg: 6, scope: !686, file: !3, line: 658, type: !361)
!696 = !DILocalVariable(name: "ijk", scope: !686, file: !3, line: 660, type: !111)
!697 = !DILocalVariable(name: "child", scope: !686, file: !3, line: 661, type: !14)
!698 = !DILocalVariable(name: "idiv", scope: !686, file: !3, line: 662, type: !14)
!699 = !DILocalVariable(name: "pepa", scope: !686, file: !3, line: 663, type: !16)
!700 = !DILocalVariable(name: "btn", scope: !686, file: !3, line: 664, type: !117)
!701 = !DILocation(line: 0, scope: !686)
!702 = !DILocation(line: 660, column: 2, scope: !686)
!703 = !DILocation(line: 660, column: 6, scope: !686)
!704 = !DILocation(line: 666, column: 9, scope: !686)
!705 = !DILocation(line: 667, column: 2, scope: !686)
!706 = !DILocation(line: 667, column: 9, scope: !686)
!707 = !DILocation(line: 668, column: 2, scope: !686)
!708 = !DILocation(line: 668, column: 9, scope: !686)
!709 = !DILocation(line: 672, column: 10, scope: !710)
!710 = distinct !DILexicalBlock(scope: !686, file: !3, line: 672, column: 6)
!711 = !DILocation(line: 672, column: 6, scope: !686)
!712 = !DILocation(line: 674, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !3, line: 673, column: 3)
!714 = !DILocation(line: 675, column: 3, scope: !713)
!715 = !DILocation(line: 678, column: 14, scope: !686)
!716 = !DILocation(line: 678, column: 9, scope: !686)
!717 = !DILocation(line: 678, column: 19, scope: !686)
!718 = !DILocation(line: 678, column: 24, scope: !686)
!719 = !DILocation(line: 678, column: 27, scope: !686)
!720 = !DILocation(line: 678, column: 37, scope: !686)
!721 = !DILocation(line: 678, column: 42, scope: !686)
!722 = !DILocation(line: 678, column: 45, scope: !686)
!723 = !DILocation(line: 678, column: 55, scope: !686)
!724 = !DILocation(line: 678, column: 2, scope: !686)
!725 = !DILocation(line: 680, column: 12, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !3, line: 680, column: 7)
!727 = distinct !DILexicalBlock(scope: !686, file: !3, line: 679, column: 3)
!728 = !DILocation(line: 680, column: 17, scope: !726)
!729 = !DILocation(line: 680, column: 7, scope: !727)
!730 = !DILocation(line: 684, column: 12, scope: !731)
!731 = distinct !DILexicalBlock(scope: !726, file: !3, line: 681, column: 4)
!732 = !DILocation(line: 685, column: 16, scope: !731)
!733 = !DILocation(line: 685, column: 27, scope: !731)
!734 = !DILocation(line: 685, column: 54, scope: !731)
!735 = !DILocation(line: 684, column: 4, scope: !731)
!736 = !DILocation(line: 687, column: 4, scope: !731)
!737 = !DILocation(line: 693, column: 12, scope: !727)
!738 = !DILocation(line: 693, column: 29, scope: !727)
!739 = !DILocation(line: 695, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !727, file: !3, line: 695, column: 7)
!741 = !DILocation(line: 695, column: 26, scope: !740)
!742 = !DILocation(line: 695, column: 7, scope: !727)
!743 = !DILocation(line: 698, column: 19, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !3, line: 696, column: 4)
!745 = !DILocation(line: 699, column: 4, scope: !744)
!746 = !DILocation(line: 0, scope: !727)
!747 = !DILocation(line: 703, column: 9, scope: !727)
!748 = !DILocation(line: 704, column: 11, scope: !749)
!749 = distinct !DILexicalBlock(scope: !727, file: !3, line: 704, column: 7)
!750 = !DILocation(line: 704, column: 7, scope: !727)
!751 = distinct !{!751, !724, !752, !157, !158}
!752 = !DILocation(line: 709, column: 3, scope: !686)
!753 = !DILocation(line: 706, column: 8, scope: !754)
!754 = distinct !DILexicalBlock(scope: !749, file: !3, line: 705, column: 4)
!755 = !DILocation(line: 707, column: 4, scope: !754)
!756 = !DILocation(line: 713, column: 14, scope: !686)
!757 = !DILocation(line: 713, column: 7, scope: !686)
!758 = !DILocation(line: 714, column: 14, scope: !686)
!759 = !DILocation(line: 734, column: 2, scope: !686)
!760 = !DILocation(line: 735, column: 2, scope: !686)
!761 = distinct !DISubprogram(name: "deleteBinTree", scope: !3, file: !3, line: 754, type: !762, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !764)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !117}
!764 = !{!765, !766, !767}
!765 = !DILocalVariable(name: "binTree", arg: 1, scope: !761, file: !3, line: 754, type: !117)
!766 = !DILocalVariable(name: "left", scope: !761, file: !3, line: 756, type: !117)
!767 = !DILocalVariable(name: "right", scope: !761, file: !3, line: 756, type: !117)
!768 = !DILocation(line: 0, scope: !761)
!769 = !DILocation(line: 758, column: 14, scope: !770)
!770 = distinct !DILexicalBlock(scope: !761, file: !3, line: 758, column: 6)
!771 = !DILocation(line: 758, column: 6, scope: !761)
!772 = !DILocation(line: 760, column: 20, scope: !773)
!773 = distinct !DILexicalBlock(scope: !770, file: !3, line: 759, column: 3)
!774 = !DILocation(line: 760, column: 11, scope: !773)
!775 = !DILocation(line: 761, column: 11, scope: !773)
!776 = !DILocation(line: 763, column: 3, scope: !773)
!777 = !DILocation(line: 767, column: 2, scope: !761)
!778 = distinct !DISubprogram(name: "create_grid", scope: !3, file: !3, line: 798, type: !779, scopeLine: 799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{!85, !92, !85, !14}
!781 = !{!782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!782 = !DILocalVariable(name: "v", arg: 1, scope: !778, file: !3, line: 798, type: !92)
!783 = !DILocalVariable(name: "g", arg: 2, scope: !778, file: !3, line: 798, type: !85)
!784 = !DILocalVariable(name: "num_prims", arg: 3, scope: !778, file: !3, line: 798, type: !14)
!785 = !DILocalVariable(name: "n", scope: !778, file: !3, line: 800, type: !14)
!786 = !DILocalVariable(name: "i", scope: !778, file: !3, line: 801, type: !14)
!787 = !DILocalVariable(name: "j", scope: !778, file: !3, line: 801, type: !14)
!788 = !DILocalVariable(name: "k", scope: !778, file: !3, line: 801, type: !14)
!789 = !DILocalVariable(name: "r", scope: !778, file: !3, line: 801, type: !14)
!790 = !DILocalVariable(name: "nprims", scope: !778, file: !3, line: 802, type: !14)
!791 = !DILocalVariable(name: "index1D", scope: !778, file: !3, line: 803, type: !14)
!792 = !DILocalVariable(name: "ec", scope: !778, file: !3, line: 804, type: !107)
!793 = !DILocalVariable(name: "ncells", scope: !778, file: !3, line: 805, type: !13)
!794 = !DILocalVariable(name: "ng", scope: !778, file: !3, line: 806, type: !85)
!795 = !DILocalVariable(name: "nng", scope: !778, file: !3, line: 806, type: !85)
!796 = !DILocalVariable(name: "nv", scope: !778, file: !3, line: 807, type: !92)
!797 = !DILocalVariable(name: "ht", scope: !778, file: !3, line: 808, type: !91)
!798 = !DILocalVariable(name: "bintree", scope: !778, file: !3, line: 809, type: !117)
!799 = !DILocalVariable(name: "pepa", scope: !778, file: !3, line: 810, type: !16)
!800 = !DILocation(line: 0, scope: !778)
!801 = !DILocation(line: 802, column: 2, scope: !778)
!802 = !DILocation(line: 812, column: 7, scope: !778)
!803 = !DILocation(line: 813, column: 16, scope: !778)
!804 = !DILocation(line: 813, column: 9, scope: !778)
!805 = !DILocation(line: 815, column: 34, scope: !778)
!806 = !DILocation(line: 815, column: 7, scope: !778)
!807 = !DILocation(line: 816, column: 6, scope: !778)
!808 = !DILocation(line: 816, column: 16, scope: !778)
!809 = !DILocation(line: 818, column: 17, scope: !778)
!810 = !DILocation(line: 818, column: 29, scope: !778)
!811 = !DILocation(line: 818, column: 43, scope: !778)
!812 = !DILocation(line: 818, column: 11, scope: !778)
!813 = !DILocation(line: 819, column: 14, scope: !778)
!814 = !DILocation(line: 821, column: 35, scope: !778)
!815 = !DILocation(line: 821, column: 7, scope: !778)
!816 = !DILocation(line: 822, column: 6, scope: !778)
!817 = !DILocation(line: 822, column: 17, scope: !778)
!818 = !DILocation(line: 824, column: 6, scope: !778)
!819 = !DILocation(line: 824, column: 16, scope: !778)
!820 = !DILocation(line: 825, column: 27, scope: !778)
!821 = !DILocation(line: 825, column: 6, scope: !778)
!822 = !DILocation(line: 825, column: 11, scope: !778)
!823 = !DILocation(line: 826, column: 6, scope: !778)
!824 = !DILocation(line: 826, column: 18, scope: !778)
!825 = !DILocation(line: 827, column: 20, scope: !778)
!826 = !DILocation(line: 827, column: 2, scope: !778)
!827 = !DILocation(line: 827, column: 18, scope: !778)
!828 = !DILocation(line: 828, column: 32, scope: !778)
!829 = !DILocation(line: 828, column: 2, scope: !778)
!830 = !DILocation(line: 828, column: 18, scope: !778)
!831 = !DILocation(line: 829, column: 20, scope: !778)
!832 = !DILocation(line: 829, column: 6, scope: !778)
!833 = !DILocation(line: 829, column: 18, scope: !778)
!834 = !DILocation(line: 831, column: 9, scope: !778)
!835 = !DILocation(line: 831, column: 12, scope: !778)
!836 = !DILocation(line: 831, column: 11, scope: !778)
!837 = !DILocation(line: 832, column: 15, scope: !778)
!838 = !DILocation(line: 833, column: 8, scope: !778)
!839 = !DILocation(line: 833, column: 7, scope: !778)
!840 = !DILocation(line: 834, column: 11, scope: !778)
!841 = !DILocation(line: 836, column: 18, scope: !778)
!842 = !DILocation(line: 836, column: 15, scope: !778)
!843 = !DILocation(line: 836, column: 27, scope: !778)
!844 = !DILocation(line: 836, column: 34, scope: !778)
!845 = !DILocation(line: 836, column: 31, scope: !778)
!846 = !DILocation(line: 836, column: 25, scope: !778)
!847 = !DILocation(line: 836, column: 6, scope: !778)
!848 = !DILocation(line: 836, column: 13, scope: !778)
!849 = !DILocation(line: 837, column: 15, scope: !778)
!850 = !DILocation(line: 837, column: 27, scope: !778)
!851 = !DILocation(line: 837, column: 31, scope: !778)
!852 = !DILocation(line: 837, column: 25, scope: !778)
!853 = !DILocation(line: 837, column: 2, scope: !778)
!854 = !DILocation(line: 837, column: 13, scope: !778)
!855 = !DILocation(line: 838, column: 15, scope: !778)
!856 = !DILocation(line: 838, column: 27, scope: !778)
!857 = !DILocation(line: 838, column: 31, scope: !778)
!858 = !DILocation(line: 838, column: 25, scope: !778)
!859 = !DILocation(line: 838, column: 2, scope: !778)
!860 = !DILocation(line: 838, column: 13, scope: !778)
!861 = !DILocation(line: 840, column: 21, scope: !778)
!862 = !DILocation(line: 840, column: 36, scope: !778)
!863 = !DILocation(line: 840, column: 35, scope: !778)
!864 = !DILocation(line: 840, column: 6, scope: !778)
!865 = !DILocation(line: 840, column: 19, scope: !778)
!866 = !DILocation(line: 841, column: 21, scope: !778)
!867 = !DILocation(line: 841, column: 35, scope: !778)
!868 = !DILocation(line: 841, column: 2, scope: !778)
!869 = !DILocation(line: 841, column: 19, scope: !778)
!870 = !DILocation(line: 842, column: 21, scope: !778)
!871 = !DILocation(line: 842, column: 35, scope: !778)
!872 = !DILocation(line: 842, column: 2, scope: !778)
!873 = !DILocation(line: 842, column: 19, scope: !778)
!874 = !DILocation(line: 843, column: 24, scope: !778)
!875 = !DILocation(line: 843, column: 37, scope: !778)
!876 = !DILocation(line: 843, column: 6, scope: !778)
!877 = !DILocation(line: 843, column: 19, scope: !778)
!878 = !DILocation(line: 844, column: 14, scope: !778)
!879 = !DILocation(line: 844, column: 6, scope: !778)
!880 = !DILocation(line: 844, column: 12, scope: !778)
!881 = !DILocation(line: 846, column: 11, scope: !778)
!882 = !DILocation(line: 852, column: 12, scope: !778)
!883 = !DILocation(line: 853, column: 2, scope: !778)
!884 = !DILocation(line: 856, column: 6, scope: !778)
!885 = !DILocation(line: 869, column: 16, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 869, column: 2)
!887 = distinct !DILexicalBlock(scope: !778, file: !3, line: 869, column: 2)
!888 = !DILocation(line: 869, column: 2, scope: !887)
!889 = !DILocation(line: 871, column: 3, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !3, line: 871, column: 3)
!891 = distinct !DILexicalBlock(scope: !886, file: !3, line: 870, column: 3)
!892 = !DILocation(line: 873, column: 4, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 873, column: 4)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 872, column: 4)
!895 = distinct !DILexicalBlock(scope: !890, file: !3, line: 871, column: 3)
!896 = !DILocation(line: 875, column: 12, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !3, line: 874, column: 5)
!898 = distinct !DILexicalBlock(scope: !893, file: !3, line: 873, column: 4)
!899 = !DILocation(line: 877, column: 14, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !3, line: 877, column: 9)
!901 = !DILocation(line: 877, column: 9, scope: !897)
!902 = !DILocation(line: 879, column: 21, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !3, line: 878, column: 6)
!904 = !DILocation(line: 880, column: 6, scope: !903)
!905 = !DILocation(line: 882, column: 11, scope: !903)
!906 = !DILocation(line: 884, column: 14, scope: !903)
!907 = !DILocation(line: 885, column: 10, scope: !903)
!908 = !DILocation(line: 885, column: 19, scope: !903)
!909 = !DILocation(line: 886, column: 10, scope: !903)
!910 = !DILocation(line: 886, column: 15, scope: !903)
!911 = !DILocation(line: 887, column: 24, scope: !903)
!912 = !DILocation(line: 887, column: 10, scope: !903)
!913 = !DILocation(line: 887, column: 22, scope: !903)
!914 = !DILocation(line: 889, column: 19, scope: !915)
!915 = distinct !DILexicalBlock(scope: !903, file: !3, line: 889, column: 10)
!916 = !DILocation(line: 889, column: 17, scope: !915)
!917 = !DILocation(line: 889, column: 37, scope: !915)
!918 = !DILocation(line: 889, column: 44, scope: !915)
!919 = !DILocation(line: 889, column: 59, scope: !915)
!920 = !DILocation(line: 889, column: 57, scope: !915)
!921 = !DILocation(line: 889, column: 10, scope: !903)
!922 = !DILocation(line: 895, column: 21, scope: !923)
!923 = distinct !DILexicalBlock(scope: !915, file: !3, line: 892, column: 7)
!924 = !DILocation(line: 896, column: 22, scope: !923)
!925 = !DILocation(line: 890, column: 13, scope: !915)
!926 = !DILocation(line: 890, column: 7, scope: !915)
!927 = !DILocation(line: 899, column: 6, scope: !903)
!928 = !DILocation(line: 900, column: 6, scope: !903)
!929 = !DILocation(line: 905, column: 18, scope: !930)
!930 = distinct !DILexicalBlock(scope: !900, file: !3, line: 902, column: 6)
!931 = !DILocation(line: 906, column: 6, scope: !930)
!932 = !DILocation(line: 909, column: 12, scope: !897)
!933 = !DILocation(line: 873, column: 24, scope: !898)
!934 = !DILocation(line: 873, column: 18, scope: !898)
!935 = distinct !{!935, !892, !936, !157, !158}
!936 = !DILocation(line: 910, column: 5, scope: !893)
!937 = !DILocation(line: 871, column: 23, scope: !895)
!938 = !DILocation(line: 871, column: 17, scope: !895)
!939 = distinct !{!939, !889, !940, !157, !158}
!940 = !DILocation(line: 911, column: 4, scope: !890)
!941 = !DILocation(line: 869, column: 22, scope: !886)
!942 = distinct !{!942, !888, !943, !157, !158}
!943 = !DILocation(line: 912, column: 3, scope: !887)
!944 = !DILocation(line: 916, column: 17, scope: !778)
!945 = !DILocation(line: 917, column: 5, scope: !778)
!946 = !DILocation(line: 917, column: 17, scope: !778)
!947 = !DILocation(line: 918, column: 5, scope: !778)
!948 = !DILocation(line: 918, column: 17, scope: !778)
!949 = !DILocation(line: 920, column: 2, scope: !778)
!950 = !DILocation(line: 923, column: 2, scope: !778)
!951 = !DILocation(line: 922, column: 2, scope: !778)
