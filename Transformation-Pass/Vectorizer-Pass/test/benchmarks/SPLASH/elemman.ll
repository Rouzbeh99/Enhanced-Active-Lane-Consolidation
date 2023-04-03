; ModuleID = 'elemman.c'
source_filename = "elemman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._patch = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.Vertex, %struct.Vertex, %struct.Vertex, %struct.PlaneEqu, float, %struct.Rgb, %struct.Rgb, ptr, ptr, ptr, ptr, i64 }
%struct.Vertex = type { float, float, float }
%struct.PlaneEqu = type { %struct.Vertex, float }
%struct.Rgb = type { float, float, float }
%struct._element = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, %struct.Rgb, %struct.Rgb, %struct.Rgb, i64, ptr, ptr, ptr, ptr, ptr, ptr, float }
%struct._interact = type { ptr, ptr, float, float, float, float }
%struct.Global = type { i64, %union.pthread_mutex_t, [1024 x %struct.Task_Queue], [3276800 x %struct._task], %union.pthread_mutex_t, ptr, %union.pthread_mutex_t, i64, %struct.Rgb, %struct.Rgb, float, i64, %union.pthread_mutex_t, i64, i64, [1024 x %struct.Patch_Cost], %struct.anon, i64, %union.pthread_mutex_t, i64, %union.pthread_mutex_t, %union.pthread_mutex_t, ptr, i64, i64, [1024 x %struct._patch], %union.pthread_mutex_t, ptr, i64, ptr, %union.pthread_mutex_t, ptr, i64, ptr, %union.pthread_mutex_t, i64, ptr, %union.pthread_mutex_t, i64, ptr, [3900 x %struct.Shared_Lock], [1024 x %struct.StatisticalInfo] }
%struct.Task_Queue = type { [4096 x i8], %union.pthread_mutex_t, ptr, ptr, i64, %union.pthread_mutex_t, i64, ptr, [4096 x i8] }
%struct._task = type { i64, ptr, %union.anon }
%union.anon = type { %struct.Refinement_Task }
%struct.Refinement_Task = type { ptr, ptr, float, i64 }
%struct.Patch_Cost = type { ptr, ptr, i64, i64, i64, [11 x i64] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon.0, %union.anon.2, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon.0 = type { i64 }
%union.anon.2 = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.Shared_Lock = type { %union.pthread_mutex_t }
%struct.StatisticalInfo = type { [4096 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [2 x i64], [16 x %struct.PerIterationInfo], [4096 x i8] }
%struct.PerIterationInfo = type { i64, i64, i64, i64, i64, ptr }
%struct._edge = type { ptr, ptr, ptr, ptr, ptr }

@BFepsilon = external local_unnamed_addr global float, align 4
@Area_epsilon = external local_unnamed_addr global float, align 4
@global = external local_unnamed_addr global ptr, align 8
@verbose_mode = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [19 x i8] c"Total energy:     \00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Average radiosity:\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Difference %.2f%%\0A\00", align 1
@Energy_epsilon = external local_unnamed_addr global float, align 4
@MAX_ELEMENTS = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"Element (%ld)\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Radiosity:\00", align 1
@MAX_INTERACTIONS = external local_unnamed_addr global i64, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"Interaction(0x%ld)\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"    Dest: Elem (0x%ld) of patch %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"    Fout: %f    Vis: %f\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"    Next: 0x%p\0A\00", align 1
@str = private unnamed_addr constant [37 x i8] c"Fatal: Ran out of interaction buffer\00", align 1
@str.11 = private unnamed_addr constant [33 x i8] c"Fatal: Ran out of element buffer\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foreach_element_in_patch(ptr nocapture noundef readonly %patch, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id) local_unnamed_addr #0 !dbg !146 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !153, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata ptr %func, metadata !154, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !155, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !156, metadata !DIExpression()), !dbg !157
  %el_root = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 16, !dbg !158
  %0 = load ptr, ptr %el_root, align 8, !dbg !158
  tail call fastcc void @_foreach_element(ptr noundef %0, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !159
  ret void, !dbg !160
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_foreach_element(ptr noundef %elem, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id) unnamed_addr #0 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !165, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata ptr %func, metadata !166, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !167, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !168, metadata !DIExpression()), !dbg !169
  %cmp = icmp eq ptr %elem, null, !dbg !170
  br i1 %cmp, label %return, label %if.end, !dbg !172

if.end:                                           ; preds = %entry
  %center = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 3, !dbg !173
  %0 = load ptr, ptr %center, align 8, !dbg !173
  %cmp1 = icmp eq ptr %0, null, !dbg !173
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !175

if.then2:                                         ; preds = %if.end
  tail call fastcc void @_foreach_element(ptr noundef nonnull %0, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !176
  %top = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 4, !dbg !178
  %1 = load ptr, ptr %top, align 8, !dbg !178
  tail call fastcc void @_foreach_element(ptr noundef %1, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !179
  %left = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 5, !dbg !180
  %2 = load ptr, ptr %left, align 8, !dbg !180
  tail call fastcc void @_foreach_element(ptr noundef %2, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !181
  %right = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 6, !dbg !182
  %3 = load ptr, ptr %right, align 8, !dbg !182
  tail call fastcc void @_foreach_element(ptr noundef %3, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !183
  br label %if.end4, !dbg !184

if.end4:                                          ; preds = %if.then2, %if.end
  tail call void (ptr, i64, i64, ...) %func(ptr noundef nonnull %elem, i64 noundef %arg1, i64 noundef %process_id) #13, !dbg !185
  br label %return, !dbg !186

return:                                           ; preds = %entry, %if.end4
  ret void, !dbg !186
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foreach_leaf_element_in_patch(ptr nocapture noundef readonly %patch, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id) local_unnamed_addr #0 !dbg !187 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !189, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata ptr %func, metadata !190, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !191, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !192, metadata !DIExpression()), !dbg !193
  %el_root = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 16, !dbg !194
  %0 = load ptr, ptr %el_root, align 8, !dbg !194
  tail call fastcc void @_foreach_leaf_element(ptr noundef %0, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !195
  ret void, !dbg !196
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_foreach_leaf_element(ptr noundef %elem, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id) unnamed_addr #0 !dbg !197 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !199, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr %func, metadata !200, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !201, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !202, metadata !DIExpression()), !dbg !203
  %cmp24 = icmp eq ptr %elem, null, !dbg !204
  br i1 %cmp24, label %if.end4, label %if.end, !dbg !206

if.end:                                           ; preds = %entry, %if.else
  %elem.tr25 = phi ptr [ %3, %if.else ], [ %elem, %entry ]
  call void @llvm.dbg.value(metadata ptr %elem.tr25, metadata !199, metadata !DIExpression()), !dbg !203
  %center = getelementptr inbounds %struct._element, ptr %elem.tr25, i64 0, i32 3, !dbg !207
  %0 = load ptr, ptr %center, align 8, !dbg !207
  %cmp1 = icmp eq ptr %0, null, !dbg !207
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !209

if.then2:                                         ; preds = %if.end
  tail call void (ptr, i64, i64, ...) %func(ptr noundef nonnull %elem.tr25, i64 noundef %arg1, i64 noundef %process_id) #13, !dbg !210
  br label %if.end4, !dbg !210

if.else:                                          ; preds = %if.end
  tail call fastcc void @_foreach_leaf_element(ptr noundef nonnull %0, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !211
  %top = getelementptr inbounds %struct._element, ptr %elem.tr25, i64 0, i32 4, !dbg !213
  %1 = load ptr, ptr %top, align 8, !dbg !213
  tail call fastcc void @_foreach_leaf_element(ptr noundef %1, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !214
  %left = getelementptr inbounds %struct._element, ptr %elem.tr25, i64 0, i32 5, !dbg !215
  %2 = load ptr, ptr %left, align 8, !dbg !215
  tail call fastcc void @_foreach_leaf_element(ptr noundef %2, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !216
  %right = getelementptr inbounds %struct._element, ptr %elem.tr25, i64 0, i32 6, !dbg !217
  %3 = load ptr, ptr %right, align 8, !dbg !217
  call void @llvm.dbg.value(metadata ptr %3, metadata !199, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr %func, metadata !200, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !201, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !202, metadata !DIExpression()), !dbg !203
  %cmp = icmp eq ptr %3, null, !dbg !204
  br i1 %cmp, label %if.end4, label %if.end, !dbg !206

if.end4:                                          ; preds = %if.else, %entry, %if.then2
  ret void, !dbg !218
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ff_refine_elements(ptr noundef %e1, ptr noundef %e2, i64 noundef %level, i64 noundef %process_id) local_unnamed_addr #0 !dbg !219 {
entry:
  %i12 = alloca %struct._interact, align 8
  %i21 = alloca %struct._interact, align 8
  call void @llvm.dbg.value(metadata ptr %e1, metadata !223, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata ptr %e2, metadata !224, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i64 %level, metadata !225, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !226, metadata !DIExpression()), !dbg !231
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i12) #13, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %i12, metadata !228, metadata !DIExpression()), !dbg !233
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i21) #13, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %i21, metadata !229, metadata !DIExpression()), !dbg !234
  call void @compute_formfactor(ptr noundef %e1, ptr noundef %e2, ptr noundef nonnull %i12, i64 undef), !dbg !235
  call void @compute_formfactor(ptr noundef %e2, ptr noundef %e1, ptr noundef nonnull %i21, i64 undef), !dbg !236
  %call = tail call i64 @error_analysis(ptr noundef %e1, ptr noundef %e2, ptr undef, ptr undef, i64 noundef %process_id), !dbg !237
  call void @llvm.dbg.value(metadata i64 %call, metadata !227, metadata !DIExpression()), !dbg !231
  %and = and i64 %call, 1, !dbg !238
  %tobool.not = icmp eq i64 %and, 0, !dbg !238
  br i1 %tobool.not, label %if.else, label %cleanup, !dbg !240

if.else:                                          ; preds = %entry
  %and1 = and i64 %call, 2, !dbg !241
  %tobool2.not = icmp eq i64 %and1, 0, !dbg !241
  br i1 %tobool2.not, label %if.else7, label %if.then3, !dbg !243

if.then3:                                         ; preds = %if.else
  %call4 = tail call ptr @get_interaction(i64 undef), !dbg !244
  call void @llvm.dbg.value(metadata ptr %call4, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %call4, ptr noundef nonnull align 8 dereferenceable(32) %i12, i64 32, i1 false), !dbg !246
  %visibility = getelementptr inbounds %struct._interact, ptr %call4, i64 0, i32 5, !dbg !247
  store float -1.000000e+00, ptr %visibility, align 4, !dbg !248
  tail call void @insert_vis_undef_interaction(ptr noundef %e1, ptr noundef %call4, i64 undef), !dbg !249
  %call5 = tail call ptr @get_interaction(i64 undef), !dbg !250
  call void @llvm.dbg.value(metadata ptr %call5, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %call5, ptr noundef nonnull align 8 dereferenceable(32) %i21, i64 32, i1 false), !dbg !251
  %visibility6 = getelementptr inbounds %struct._interact, ptr %call5, i64 0, i32 5, !dbg !252
  store float -1.000000e+00, ptr %visibility6, align 4, !dbg !253
  tail call void @insert_vis_undef_interaction(ptr noundef %e2, ptr noundef %call5, i64 undef), !dbg !254
  br label %cleanup, !dbg !255

if.else7:                                         ; preds = %if.else
  %and8 = and i64 %call, 4, !dbg !256
  %tobool9.not = icmp eq i64 %and8, 0, !dbg !256
  br i1 %tobool9.not, label %if.else14, label %if.then10, !dbg !258

if.then10:                                        ; preds = %if.else7
  tail call void @subdivide_element(ptr noundef %e1, i64 noundef %process_id), !dbg !259
  %top = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 4, !dbg !261
  %0 = load ptr, ptr %top, align 8, !dbg !261
  %add = add nsw i64 %level, 1, !dbg !262
  tail call void @ff_refine_elements(ptr noundef %0, ptr noundef %e2, i64 noundef %add, i64 noundef %process_id), !dbg !263
  %center = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 3, !dbg !264
  %1 = load ptr, ptr %center, align 8, !dbg !264
  tail call void @ff_refine_elements(ptr noundef %1, ptr noundef %e2, i64 noundef %add, i64 noundef %process_id), !dbg !265
  %left = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 5, !dbg !266
  %2 = load ptr, ptr %left, align 8, !dbg !266
  tail call void @ff_refine_elements(ptr noundef %2, ptr noundef %e2, i64 noundef %add, i64 noundef %process_id), !dbg !267
  %right = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 6, !dbg !268
  %3 = load ptr, ptr %right, align 8, !dbg !268
  tail call void @ff_refine_elements(ptr noundef %3, ptr noundef %e2, i64 noundef %add, i64 noundef %process_id), !dbg !269
  br label %cleanup, !dbg !270

if.else14:                                        ; preds = %if.else7
  tail call void @subdivide_element(ptr noundef %e2, i64 noundef %process_id), !dbg !271
  %top15 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 4, !dbg !273
  %4 = load ptr, ptr %top15, align 8, !dbg !273
  %add16 = add nsw i64 %level, 1, !dbg !274
  tail call void @ff_refine_elements(ptr noundef %e1, ptr noundef %4, i64 noundef %add16, i64 noundef %process_id), !dbg !275
  %center17 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 3, !dbg !276
  %5 = load ptr, ptr %center17, align 8, !dbg !276
  tail call void @ff_refine_elements(ptr noundef %e1, ptr noundef %5, i64 noundef %add16, i64 noundef %process_id), !dbg !277
  %left19 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 5, !dbg !278
  %6 = load ptr, ptr %left19, align 8, !dbg !278
  tail call void @ff_refine_elements(ptr noundef %e1, ptr noundef %6, i64 noundef %add16, i64 noundef %process_id), !dbg !279
  %right21 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 6, !dbg !280
  %7 = load ptr, ptr %right21, align 8, !dbg !280
  tail call void @ff_refine_elements(ptr noundef %e1, ptr noundef %7, i64 noundef %add16, i64 noundef %process_id), !dbg !281
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.else14, %if.then3, %entry
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i21) #13, !dbg !282
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i12) #13, !dbg !282
  ret void, !dbg !282
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @compute_formfactor(ptr nocapture noundef readonly %e_src, ptr noundef %e_dst, ptr nocapture noundef writeonly %inter, i64 %process_id) local_unnamed_addr #0 !dbg !283 {
entry:
  %pc_src = alloca %struct.Vertex, align 4
  %pc_dst = alloca %struct.Vertex, align 4
  %pc1_src = alloca %struct.Vertex, align 4
  %pc2_src = alloca %struct.Vertex, align 4
  %pc3_src = alloca %struct.Vertex, align 4
  call void @llvm.dbg.value(metadata ptr %e_src, metadata !287, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata ptr %e_dst, metadata !288, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata ptr %inter, metadata !289, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i64 undef, metadata !290, metadata !DIExpression()), !dbg !307
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pc_src) #13, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %pc_src, metadata !299, metadata !DIExpression()), !dbg !309
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pc_dst) #13, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %pc_dst, metadata !300, metadata !DIExpression()), !dbg !310
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pc1_src) #13, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %pc1_src, metadata !301, metadata !DIExpression()), !dbg !312
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pc2_src) #13, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %pc2_src, metadata !302, metadata !DIExpression()), !dbg !313
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pc3_src) #13, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %pc3_src, metadata !303, metadata !DIExpression()), !dbg !314
  %ev1 = getelementptr inbounds %struct._element, ptr %e_src, i64 0, i32 15, !dbg !315
  %0 = load ptr, ptr %ev1, align 8, !dbg !315
  %ev2 = getelementptr inbounds %struct._element, ptr %e_src, i64 0, i32 16, !dbg !316
  %1 = load ptr, ptr %ev2, align 8, !dbg !316
  %ev3 = getelementptr inbounds %struct._element, ptr %e_src, i64 0, i32 17, !dbg !317
  %2 = load ptr, ptr %ev3, align 8, !dbg !317
  call void @four_center_points(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %pc_src, ptr noundef nonnull %pc1_src, ptr noundef nonnull %pc2_src, ptr noundef nonnull %pc3_src) #13, !dbg !318
  %ev13 = getelementptr inbounds %struct._element, ptr %e_dst, i64 0, i32 15, !dbg !319
  %3 = load ptr, ptr %ev13, align 8, !dbg !319
  %ev25 = getelementptr inbounds %struct._element, ptr %e_dst, i64 0, i32 16, !dbg !320
  %4 = load ptr, ptr %ev25, align 8, !dbg !320
  %ev37 = getelementptr inbounds %struct._element, ptr %e_dst, i64 0, i32 17, !dbg !321
  %5 = load ptr, ptr %ev37, align 8, !dbg !321
  call void @center_point(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %pc_dst) #13, !dbg !322
  %call = call fastcc float @compute_diff_disc_formfactor(ptr noundef nonnull %pc_src, ptr noundef %e_src, ptr noundef %e_dst), !dbg !323
  call void @llvm.dbg.value(metadata float %call, metadata !291, metadata !DIExpression()), !dbg !307
  %call9 = call fastcc float @compute_diff_disc_formfactor(ptr noundef nonnull %pc1_src, ptr noundef %e_src, ptr noundef %e_dst), !dbg !324
  call void @llvm.dbg.value(metadata float %call9, metadata !295, metadata !DIExpression()), !dbg !307
  %call10 = call fastcc float @compute_diff_disc_formfactor(ptr noundef nonnull %pc2_src, ptr noundef %e_src, ptr noundef %e_dst), !dbg !325
  call void @llvm.dbg.value(metadata float %call10, metadata !296, metadata !DIExpression()), !dbg !307
  %call11 = call fastcc float @compute_diff_disc_formfactor(ptr noundef nonnull %pc3_src, ptr noundef %e_src, ptr noundef %e_dst), !dbg !326
  call void @llvm.dbg.value(metadata float %call11, metadata !297, metadata !DIExpression()), !dbg !307
  %cmp = fcmp olt float %call, 0.000000e+00, !dbg !327
  br i1 %cmp, label %if.then, label %if.end, !dbg !329

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !291, metadata !DIExpression()), !dbg !307
  br label %if.end, !dbg !330

if.end:                                           ; preds = %if.then, %entry
  %ff_c.0 = phi float [ 0.000000e+00, %if.then ], [ %call, %entry ], !dbg !307
  call void @llvm.dbg.value(metadata float %ff_c.0, metadata !291, metadata !DIExpression()), !dbg !307
  %cmp12 = fcmp olt float %call9, 0.000000e+00, !dbg !331
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !333

if.then13:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !295, metadata !DIExpression()), !dbg !307
  br label %if.end14, !dbg !334

if.end14:                                         ; preds = %if.then13, %if.end
  %ff_c1.0 = phi float [ 0.000000e+00, %if.then13 ], [ %call9, %if.end ], !dbg !307
  call void @llvm.dbg.value(metadata float %ff_c1.0, metadata !295, metadata !DIExpression()), !dbg !307
  %cmp15 = fcmp olt float %call10, 0.000000e+00, !dbg !335
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !337

if.then16:                                        ; preds = %if.end14
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !296, metadata !DIExpression()), !dbg !307
  br label %if.end17, !dbg !338

if.end17:                                         ; preds = %if.then16, %if.end14
  %ff_c2.0 = phi float [ 0.000000e+00, %if.then16 ], [ %call10, %if.end14 ], !dbg !307
  call void @llvm.dbg.value(metadata float %ff_c2.0, metadata !296, metadata !DIExpression()), !dbg !307
  %cmp18 = fcmp olt float %call11, 0.000000e+00, !dbg !339
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !341

if.then19:                                        ; preds = %if.end17
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !297, metadata !DIExpression()), !dbg !307
  br label %if.end20, !dbg !342

if.end20:                                         ; preds = %if.then19, %if.end17
  %ff_c3.0 = phi float [ 0.000000e+00, %if.then19 ], [ %call11, %if.end17 ], !dbg !307
  call void @llvm.dbg.value(metadata float %ff_c3.0, metadata !297, metadata !DIExpression()), !dbg !307
  %add = fadd float %ff_c.0, %ff_c1.0, !dbg !343
  %add21 = fadd float %add, %ff_c2.0, !dbg !344
  %add22 = fadd float %add21, %ff_c3.0, !dbg !345
  %mul = fmul float %add22, 2.500000e-01, !dbg !346
  call void @llvm.dbg.value(metadata float %mul, metadata !298, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata float %ff_c.0, metadata !305, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata float %ff_c.0, metadata !304, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata float undef, metadata !304, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata float undef, metadata !304, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata float undef, metadata !305, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata float undef, metadata !305, metadata !DIExpression()), !dbg !307
  %6 = load ptr, ptr %ev1, align 8, !dbg !347
  %call43 = call fastcc float @compute_diff_disc_formfactor(ptr noundef %6, ptr noundef nonnull %e_src, ptr noundef nonnull %e_dst), !dbg !348
  call void @llvm.dbg.value(metadata float %call43, metadata !292, metadata !DIExpression()), !dbg !307
  %7 = load ptr, ptr %ev2, align 8, !dbg !349
  %call46 = call fastcc float @compute_diff_disc_formfactor(ptr noundef %7, ptr noundef nonnull %e_src, ptr noundef nonnull %e_dst), !dbg !350
  call void @llvm.dbg.value(metadata float %call46, metadata !293, metadata !DIExpression()), !dbg !307
  %8 = load ptr, ptr %ev3, align 8, !dbg !351
  %call49 = call fastcc float @compute_diff_disc_formfactor(ptr noundef %8, ptr noundef nonnull %e_src, ptr noundef nonnull %e_dst), !dbg !352
  call void @llvm.dbg.value(metadata float %call49, metadata !294, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata float %ff_c.0, metadata !305, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata float %ff_c.0, metadata !304, metadata !DIExpression()), !dbg !307
  %cmp50 = fcmp ogt float %ff_c.0, %call43, !dbg !353
  br i1 %cmp50, label %if.then51, label %if.end52, !dbg !355

if.then51:                                        ; preds = %if.end20
  call void @llvm.dbg.value(metadata float %call43, metadata !304, metadata !DIExpression()), !dbg !307
  br label %if.end52, !dbg !356

if.end52:                                         ; preds = %if.then51, %if.end20
  %ff_min.2 = phi float [ %call43, %if.then51 ], [ %ff_c.0, %if.end20 ], !dbg !307
  call void @llvm.dbg.value(metadata float %ff_min.2, metadata !304, metadata !DIExpression()), !dbg !307
  %cmp53 = fcmp ogt float %ff_min.2, %call46, !dbg !357
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !359

if.then54:                                        ; preds = %if.end52
  call void @llvm.dbg.value(metadata float %call46, metadata !304, metadata !DIExpression()), !dbg !307
  br label %if.end55, !dbg !360

if.end55:                                         ; preds = %if.then54, %if.end52
  %ff_min.3 = phi float [ %call46, %if.then54 ], [ %ff_min.2, %if.end52 ], !dbg !307
  call void @llvm.dbg.value(metadata float %ff_min.3, metadata !304, metadata !DIExpression()), !dbg !307
  %cmp56 = fcmp ogt float %ff_min.3, %call49, !dbg !361
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !363

if.then57:                                        ; preds = %if.end55
  call void @llvm.dbg.value(metadata float %call49, metadata !304, metadata !DIExpression()), !dbg !307
  br label %if.end58, !dbg !364

if.end58:                                         ; preds = %if.then57, %if.end55
  %ff_min.4 = phi float [ %call49, %if.then57 ], [ %ff_min.3, %if.end55 ], !dbg !307
  call void @llvm.dbg.value(metadata float %ff_min.4, metadata !304, metadata !DIExpression()), !dbg !307
  %cmp59 = fcmp olt float %ff_c.0, %call43, !dbg !365
  br i1 %cmp59, label %if.then60, label %if.end61, !dbg !367

if.then60:                                        ; preds = %if.end58
  call void @llvm.dbg.value(metadata float %call43, metadata !305, metadata !DIExpression()), !dbg !307
  br label %if.end61, !dbg !368

if.end61:                                         ; preds = %if.then60, %if.end58
  %ff_max.2 = phi float [ %call43, %if.then60 ], [ %ff_c.0, %if.end58 ], !dbg !307
  call void @llvm.dbg.value(metadata float %ff_max.2, metadata !305, metadata !DIExpression()), !dbg !307
  %cmp62 = fcmp olt float %ff_max.2, %call46, !dbg !369
  br i1 %cmp62, label %if.then63, label %if.end64, !dbg !371

if.then63:                                        ; preds = %if.end61
  call void @llvm.dbg.value(metadata float %call46, metadata !305, metadata !DIExpression()), !dbg !307
  br label %if.end64, !dbg !372

if.end64:                                         ; preds = %if.then63, %if.end61
  %ff_max.3 = phi float [ %call46, %if.then63 ], [ %ff_max.2, %if.end61 ], !dbg !307
  call void @llvm.dbg.value(metadata float %ff_max.3, metadata !305, metadata !DIExpression()), !dbg !307
  %cmp65 = fcmp olt float %ff_max.3, %call49, !dbg !373
  br i1 %cmp65, label %if.then66, label %if.end67, !dbg !375

if.then66:                                        ; preds = %if.end64
  call void @llvm.dbg.value(metadata float %call49, metadata !305, metadata !DIExpression()), !dbg !307
  br label %if.end67, !dbg !376

if.end67:                                         ; preds = %if.then66, %if.end64
  %ff_max.4 = phi float [ %call49, %if.then66 ], [ %ff_max.3, %if.end64 ], !dbg !307
  call void @llvm.dbg.value(metadata float %ff_max.4, metadata !305, metadata !DIExpression()), !dbg !307
  %cmp68 = fcmp olt float %mul, 0.000000e+00, !dbg !377
  br i1 %cmp68, label %if.then69, label %if.end70, !dbg !379

if.then69:                                        ; preds = %if.end67
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !298, metadata !DIExpression()), !dbg !307
  br label %if.end70, !dbg !380

if.end70:                                         ; preds = %if.then69, %if.end67
  %ff_avg.0 = phi float [ 0.000000e+00, %if.then69 ], [ %mul, %if.end67 ], !dbg !307
  call void @llvm.dbg.value(metadata float %ff_avg.0, metadata !298, metadata !DIExpression()), !dbg !307
  %formfactor_out = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 2, !dbg !381
  store float %ff_avg.0, ptr %formfactor_out, align 8, !dbg !382
  %sub = fsub float %ff_max.4, %ff_avg.0, !dbg !383
  call void @llvm.dbg.value(metadata float %sub, metadata !306, metadata !DIExpression()), !dbg !307
  %sub71 = fsub float %ff_avg.0, %ff_min.4, !dbg !384
  %cmp72 = fcmp olt float %sub, %sub71, !dbg !386
  br i1 %cmp72, label %if.then73, label %if.end75, !dbg !387

if.then73:                                        ; preds = %if.end70
  call void @llvm.dbg.value(metadata float %sub71, metadata !306, metadata !DIExpression()), !dbg !307
  br label %if.end75, !dbg !388

if.end75:                                         ; preds = %if.then73, %if.end70
  %ff_err.0 = phi float [ %sub71, %if.then73 ], [ %sub, %if.end70 ], !dbg !307
  call void @llvm.dbg.value(metadata float %ff_err.0, metadata !306, metadata !DIExpression()), !dbg !307
  %formfactor_err = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 3, !dbg !389
  store float %ff_err.0, ptr %formfactor_err, align 4, !dbg !390
  %destination = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 1, !dbg !391
  store ptr %e_dst, ptr %destination, align 8, !dbg !392
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pc3_src) #13, !dbg !393
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pc2_src) #13, !dbg !393
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pc1_src) #13, !dbg !393
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pc_dst) #13, !dbg !393
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pc_src) #13, !dbg !393
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @error_analysis(ptr nocapture noundef readonly %e1, ptr nocapture noundef readonly %e2, ptr nocapture readnone %inter12, ptr nocapture readnone %inter21, i64 noundef %process_id) local_unnamed_addr #0 !dbg !394 {
entry:
  call void @llvm.dbg.value(metadata ptr %e1, metadata !398, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata ptr %e2, metadata !399, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata ptr undef, metadata !400, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata ptr undef, metadata !401, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !402, metadata !DIExpression()), !dbg !404
  %patch = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 1, !dbg !405
  %0 = load ptr, ptr %patch, align 8, !dbg !405
  %plane_equ = getelementptr inbounds %struct._patch, ptr %0, i64 0, i32 9, !dbg !406
  %ev1 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 15, !dbg !407
  %1 = load ptr, ptr %ev1, align 8, !dbg !407
  %ev2 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 16, !dbg !408
  %2 = load ptr, ptr %ev2, align 8, !dbg !408
  %ev3 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 17, !dbg !409
  %3 = load ptr, ptr %ev3, align 8, !dbg !409
  %call = tail call i64 @patch_intersection(ptr noundef nonnull %plane_equ, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %process_id) #13, !dbg !410
  call void @llvm.dbg.value(metadata i64 %call, metadata !403, metadata !DIExpression()), !dbg !404
  %and = and i64 %call, 21, !dbg !411
  %cmp = icmp eq i64 %and, 0, !dbg !411
  br i1 %cmp, label %cleanup, label %if.end, !dbg !413

if.end:                                           ; preds = %entry
  %patch3 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 1, !dbg !414
  %4 = load ptr, ptr %patch3, align 8, !dbg !414
  %plane_equ4 = getelementptr inbounds %struct._patch, ptr %4, i64 0, i32 9, !dbg !415
  %ev15 = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 15, !dbg !416
  %5 = load ptr, ptr %ev15, align 8, !dbg !416
  %ev27 = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 16, !dbg !417
  %6 = load ptr, ptr %ev27, align 8, !dbg !417
  %ev39 = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 17, !dbg !418
  %7 = load ptr, ptr %ev39, align 8, !dbg !418
  %call11 = tail call i64 @patch_intersection(ptr noundef nonnull %plane_equ4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %process_id) #13, !dbg !419
  call void @llvm.dbg.value(metadata i64 %call11, metadata !403, metadata !DIExpression()), !dbg !404
  %and12 = and i64 %call11, 21, !dbg !420
  %cmp13 = icmp eq i64 %and12, 0, !dbg !420
  %. = select i1 %cmp13, i64 1, i64 2, !dbg !404
  br label %cleanup, !dbg !404

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ 1, %entry ], [ %., %if.end ], !dbg !404
  ret i64 %retval.0, !dbg !422
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_interaction(i64 %process_id) local_unnamed_addr #0 !dbg !423 {
entry:
  call void @llvm.dbg.value(metadata i64 undef, metadata !427, metadata !DIExpression()), !dbg !429
  %0 = load ptr, ptr @global, align 8, !dbg !430
  %free_interaction_lock = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 30, !dbg !432
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %free_interaction_lock) #13, !dbg !433
  %1 = load ptr, ptr @global, align 8, !dbg !434
  %free_interaction = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 31, !dbg !436
  %2 = load ptr, ptr %free_interaction, align 8, !dbg !436
  %cmp = icmp eq ptr %2, null, !dbg !437
  br i1 %cmp, label %if.then, label %if.end, !dbg !438

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !439
  %3 = load ptr, ptr @global, align 8, !dbg !441
  %free_interaction_lock2 = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 30, !dbg !443
  %call3 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %free_interaction_lock2) #13, !dbg !444
  tail call void @exit(i32 noundef 1) #14, !dbg !445
  unreachable, !dbg !445

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %2, metadata !428, metadata !DIExpression()), !dbg !429
  %4 = load ptr, ptr %2, align 8, !dbg !446
  store ptr %4, ptr %free_interaction, align 8, !dbg !447
  %n_free_interactions = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 32, !dbg !448
  %5 = load i64, ptr %n_free_interactions, align 8, !dbg !449
  %dec = add nsw i64 %5, -1, !dbg !449
  store i64 %dec, ptr %n_free_interactions, align 8, !dbg !449
  %free_interaction_lock6 = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 30, !dbg !450
  %call7 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %free_interaction_lock6) #13, !dbg !452
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !453
  ret ptr %2, !dbg !454
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @insert_vis_undef_interaction(ptr nocapture noundef %elem, ptr noundef %inter, i64 %process_id) local_unnamed_addr #0 !dbg !455 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !459, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata ptr %inter, metadata !460, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i64 undef, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load ptr, ptr %elem, align 8, !dbg !463
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %0) #13, !dbg !465
  %vis_undef_inter = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 9, !dbg !466
  %1 = load ptr, ptr %vis_undef_inter, align 8, !dbg !466
  store ptr %1, ptr %inter, align 8, !dbg !467
  store ptr %inter, ptr %vis_undef_inter, align 8, !dbg !468
  %n_vis_undef_inter = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 10, !dbg !469
  %2 = load i64, ptr %n_vis_undef_inter, align 8, !dbg !470
  %inc = add nsw i64 %2, 1, !dbg !470
  store i64 %inc, ptr %n_vis_undef_inter, align 8, !dbg !470
  %3 = load ptr, ptr %elem, align 8, !dbg !471
  %call4 = tail call i32 @pthread_mutex_unlock(ptr noundef %3) #13, !dbg !473
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subdivide_element(ptr noundef %e, i64 noundef %process_id) local_unnamed_addr #0 !dbg !475 {
entry:
  call void @llvm.dbg.value(metadata ptr %e, metadata !479, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !480, metadata !DIExpression()), !dbg !493
  %0 = load ptr, ptr %e, align 8, !dbg !494
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %0) #13, !dbg !496
  %center = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 3, !dbg !497
  %1 = load ptr, ptr %center, align 8, !dbg !497
  %cmp = icmp eq ptr %1, null, !dbg !497
  br i1 %cmp, label %if.end, label %cleanup, !dbg !499

if.end:                                           ; preds = %entry
  %e12 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 18, !dbg !500
  %2 = load ptr, ptr %e12, align 8, !dbg !500
  tail call void @subdivide_edge(ptr noundef %2, float noundef 5.000000e-01, i64 noundef %process_id) #13, !dbg !501
  %e23 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 19, !dbg !502
  %3 = load ptr, ptr %e23, align 8, !dbg !502
  tail call void @subdivide_edge(ptr noundef %3, float noundef 5.000000e-01, i64 noundef %process_id) #13, !dbg !503
  %e31 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 20, !dbg !504
  %4 = load ptr, ptr %e31, align 8, !dbg !504
  tail call void @subdivide_edge(ptr noundef %4, float noundef 5.000000e-01, i64 noundef %process_id) #13, !dbg !505
  %5 = load ptr, ptr %e12, align 8, !dbg !506
  %ea = getelementptr inbounds %struct._edge, ptr %5, i64 0, i32 2, !dbg !507
  %6 = load ptr, ptr %ea, align 8, !dbg !507
  %pb = getelementptr inbounds %struct._edge, ptr %6, i64 0, i32 1, !dbg !508
  %7 = load ptr, ptr %pb, align 8, !dbg !508
  call void @llvm.dbg.value(metadata ptr %7, metadata !482, metadata !DIExpression()), !dbg !493
  %8 = load ptr, ptr %e23, align 8, !dbg !509
  %ea6 = getelementptr inbounds %struct._edge, ptr %8, i64 0, i32 2, !dbg !510
  %9 = load ptr, ptr %ea6, align 8, !dbg !510
  %pb7 = getelementptr inbounds %struct._edge, ptr %9, i64 0, i32 1, !dbg !511
  %10 = load ptr, ptr %pb7, align 8, !dbg !511
  call void @llvm.dbg.value(metadata ptr %10, metadata !483, metadata !DIExpression()), !dbg !493
  %11 = load ptr, ptr %e31, align 8, !dbg !512
  %ea9 = getelementptr inbounds %struct._edge, ptr %11, i64 0, i32 2, !dbg !513
  %12 = load ptr, ptr %ea9, align 8, !dbg !513
  %pb10 = getelementptr inbounds %struct._edge, ptr %12, i64 0, i32 1, !dbg !514
  %13 = load ptr, ptr %pb10, align 8, !dbg !514
  call void @llvm.dbg.value(metadata ptr %13, metadata !484, metadata !DIExpression()), !dbg !493
  %call11 = tail call ptr @create_edge(ptr noundef %7, ptr noundef %10, i64 noundef %process_id) #13, !dbg !515
  call void @llvm.dbg.value(metadata ptr %call11, metadata !485, metadata !DIExpression()), !dbg !493
  %call12 = tail call ptr @create_edge(ptr noundef %10, ptr noundef %13, i64 noundef %process_id) #13, !dbg !516
  call void @llvm.dbg.value(metadata ptr %call12, metadata !486, metadata !DIExpression()), !dbg !493
  %call13 = tail call ptr @create_edge(ptr noundef %13, ptr noundef %7, i64 noundef %process_id) #13, !dbg !517
  call void @llvm.dbg.value(metadata ptr %call13, metadata !487, metadata !DIExpression()), !dbg !493
  %area = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 21, !dbg !518
  %14 = load float, ptr %area, align 8, !dbg !518
  %mul = fmul float %14, 2.500000e-01, !dbg !519
  call void @llvm.dbg.value(metadata float %mul, metadata !481, metadata !DIExpression()), !dbg !493
  %call14 = tail call ptr @get_element(i64 undef), !dbg !520
  call void @llvm.dbg.value(metadata ptr %call14, metadata !488, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata ptr %call14, metadata !489, metadata !DIExpression()), !dbg !493
  %parent = getelementptr inbounds %struct._element, ptr %call14, i64 0, i32 2, !dbg !521
  store ptr %e, ptr %parent, align 8, !dbg !522
  %patch = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 1, !dbg !523
  %15 = load ptr, ptr %patch, align 8, !dbg !523
  %patch15 = getelementptr inbounds %struct._element, ptr %call14, i64 0, i32 1, !dbg !524
  store ptr %15, ptr %patch15, align 8, !dbg !525
  %ev1 = getelementptr inbounds %struct._element, ptr %call14, i64 0, i32 15, !dbg !526
  store ptr %10, ptr %ev1, align 8, !dbg !527
  %ev2 = getelementptr inbounds %struct._element, ptr %call14, i64 0, i32 16, !dbg !528
  store ptr %13, ptr %ev2, align 8, !dbg !529
  %ev3 = getelementptr inbounds %struct._element, ptr %call14, i64 0, i32 17, !dbg !530
  store ptr %7, ptr %ev3, align 8, !dbg !531
  %e1216 = getelementptr inbounds %struct._element, ptr %call14, i64 0, i32 18, !dbg !532
  store ptr %call12, ptr %e1216, align 8, !dbg !533
  %e2317 = getelementptr inbounds %struct._element, ptr %call14, i64 0, i32 19, !dbg !534
  store ptr %call13, ptr %e2317, align 8, !dbg !535
  %e3118 = getelementptr inbounds %struct._element, ptr %call14, i64 0, i32 20, !dbg !536
  store ptr %call11, ptr %e3118, align 8, !dbg !537
  %area19 = getelementptr inbounds %struct._element, ptr %call14, i64 0, i32 21, !dbg !538
  store float %mul, ptr %area19, align 8, !dbg !539
  %rad = getelementptr inbounds %struct._element, ptr %call14, i64 0, i32 11, !dbg !540
  %rad20 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 11, !dbg !541
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %rad, ptr noundef nonnull align 8 dereferenceable(12) %rad20, i64 12, i1 false), !dbg !541
  %16 = load ptr, ptr %e12, align 8, !dbg !542
  %17 = load ptr, ptr %16, align 8, !dbg !542
  %ev222 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 16, !dbg !542
  %18 = load ptr, ptr %ev222, align 8, !dbg !542
  %cmp23 = icmp eq ptr %17, %18, !dbg !542
  call void @llvm.dbg.value(metadata i1 %cmp23, metadata !490, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !493
  %19 = load ptr, ptr %e23, align 8, !dbg !543
  %20 = load ptr, ptr %19, align 8, !dbg !543
  %ev327 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 17, !dbg !543
  %21 = load ptr, ptr %ev327, align 8, !dbg !543
  %cmp28 = icmp eq ptr %20, %21, !dbg !543
  call void @llvm.dbg.value(metadata i1 %cmp28, metadata !491, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !493
  %22 = load ptr, ptr %e31, align 8, !dbg !544
  %23 = load ptr, ptr %22, align 8, !dbg !544
  %ev133 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 15, !dbg !544
  %24 = load ptr, ptr %ev133, align 8, !dbg !544
  %cmp34 = icmp eq ptr %23, %24, !dbg !544
  call void @llvm.dbg.value(metadata i1 %cmp34, metadata !492, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !493
  %call37 = tail call ptr @get_element(i64 undef), !dbg !545
  call void @llvm.dbg.value(metadata ptr %call37, metadata !488, metadata !DIExpression()), !dbg !493
  %top = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 4, !dbg !546
  store ptr %call37, ptr %top, align 8, !dbg !547
  %parent38 = getelementptr inbounds %struct._element, ptr %call37, i64 0, i32 2, !dbg !548
  store ptr %e, ptr %parent38, align 8, !dbg !549
  %25 = load ptr, ptr %patch, align 8, !dbg !550
  %patch40 = getelementptr inbounds %struct._element, ptr %call37, i64 0, i32 1, !dbg !551
  store ptr %25, ptr %patch40, align 8, !dbg !552
  %26 = load ptr, ptr %ev133, align 8, !dbg !553
  %ev142 = getelementptr inbounds %struct._element, ptr %call37, i64 0, i32 15, !dbg !554
  store ptr %26, ptr %ev142, align 8, !dbg !555
  %ev243 = getelementptr inbounds %struct._element, ptr %call37, i64 0, i32 16, !dbg !556
  store ptr %7, ptr %ev243, align 8, !dbg !557
  %ev344 = getelementptr inbounds %struct._element, ptr %call37, i64 0, i32 17, !dbg !558
  store ptr %13, ptr %ev344, align 8, !dbg !559
  %27 = load ptr, ptr %e12, align 8, !dbg !493
  br i1 %cmp23, label %cond.false, label %cond.true, !dbg !560

cond.true:                                        ; preds = %if.end
  %ea46 = getelementptr inbounds %struct._edge, ptr %27, i64 0, i32 2, !dbg !561
  br label %cond.end, !dbg !560

cond.false:                                       ; preds = %if.end
  %eb = getelementptr inbounds %struct._edge, ptr %27, i64 0, i32 3, !dbg !562
  br label %cond.end, !dbg !560

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %ea46, %cond.true ], [ %eb, %cond.false ]
  %cond = load ptr, ptr %cond.in, align 8, !dbg !560
  %e1248 = getelementptr inbounds %struct._element, ptr %call37, i64 0, i32 18, !dbg !563
  store ptr %cond, ptr %e1248, align 8, !dbg !564
  %e2349 = getelementptr inbounds %struct._element, ptr %call37, i64 0, i32 19, !dbg !565
  store ptr %call13, ptr %e2349, align 8, !dbg !566
  %28 = load ptr, ptr %e31, align 8, !dbg !493
  br i1 %cmp34, label %cond.false54, label %cond.true51, !dbg !567

cond.true51:                                      ; preds = %cond.end
  %eb53 = getelementptr inbounds %struct._edge, ptr %28, i64 0, i32 3, !dbg !568
  br label %cond.end57, !dbg !567

cond.false54:                                     ; preds = %cond.end
  %ea56 = getelementptr inbounds %struct._edge, ptr %28, i64 0, i32 2, !dbg !569
  br label %cond.end57, !dbg !567

cond.end57:                                       ; preds = %cond.false54, %cond.true51
  %cond58.in = phi ptr [ %eb53, %cond.true51 ], [ %ea56, %cond.false54 ]
  %cond58 = load ptr, ptr %cond58.in, align 8, !dbg !567
  %e3159 = getelementptr inbounds %struct._element, ptr %call37, i64 0, i32 20, !dbg !570
  store ptr %cond58, ptr %e3159, align 8, !dbg !571
  %area60 = getelementptr inbounds %struct._element, ptr %call37, i64 0, i32 21, !dbg !572
  store float %mul, ptr %area60, align 8, !dbg !573
  %rad61 = getelementptr inbounds %struct._element, ptr %call37, i64 0, i32 11, !dbg !574
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %rad61, ptr noundef nonnull align 8 dereferenceable(12) %rad20, i64 12, i1 false), !dbg !575
  %call63 = tail call ptr @get_element(i64 undef), !dbg !576
  call void @llvm.dbg.value(metadata ptr %call63, metadata !488, metadata !DIExpression()), !dbg !493
  %left = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 5, !dbg !577
  store ptr %call63, ptr %left, align 8, !dbg !578
  %parent64 = getelementptr inbounds %struct._element, ptr %call63, i64 0, i32 2, !dbg !579
  store ptr %e, ptr %parent64, align 8, !dbg !580
  %29 = load ptr, ptr %patch, align 8, !dbg !581
  %patch66 = getelementptr inbounds %struct._element, ptr %call63, i64 0, i32 1, !dbg !582
  store ptr %29, ptr %patch66, align 8, !dbg !583
  %ev167 = getelementptr inbounds %struct._element, ptr %call63, i64 0, i32 15, !dbg !584
  store ptr %7, ptr %ev167, align 8, !dbg !585
  %30 = load ptr, ptr %ev222, align 8, !dbg !586
  %ev269 = getelementptr inbounds %struct._element, ptr %call63, i64 0, i32 16, !dbg !587
  store ptr %30, ptr %ev269, align 8, !dbg !588
  %ev370 = getelementptr inbounds %struct._element, ptr %call63, i64 0, i32 17, !dbg !589
  store ptr %10, ptr %ev370, align 8, !dbg !590
  %31 = load ptr, ptr %e12, align 8, !dbg !493
  br i1 %cmp23, label %cond.false75, label %cond.true72, !dbg !591

cond.true72:                                      ; preds = %cond.end57
  %eb74 = getelementptr inbounds %struct._edge, ptr %31, i64 0, i32 3, !dbg !592
  br label %cond.end78, !dbg !591

cond.false75:                                     ; preds = %cond.end57
  %ea77 = getelementptr inbounds %struct._edge, ptr %31, i64 0, i32 2, !dbg !593
  br label %cond.end78, !dbg !591

cond.end78:                                       ; preds = %cond.false75, %cond.true72
  %cond79.in = phi ptr [ %eb74, %cond.true72 ], [ %ea77, %cond.false75 ]
  %cond79 = load ptr, ptr %cond79.in, align 8, !dbg !591
  %e1280 = getelementptr inbounds %struct._element, ptr %call63, i64 0, i32 18, !dbg !594
  store ptr %cond79, ptr %e1280, align 8, !dbg !595
  %32 = load ptr, ptr %e23, align 8, !dbg !493
  br i1 %cmp28, label %cond.false85, label %cond.true82, !dbg !596

cond.true82:                                      ; preds = %cond.end78
  %ea84 = getelementptr inbounds %struct._edge, ptr %32, i64 0, i32 2, !dbg !597
  br label %cond.end88, !dbg !596

cond.false85:                                     ; preds = %cond.end78
  %eb87 = getelementptr inbounds %struct._edge, ptr %32, i64 0, i32 3, !dbg !598
  br label %cond.end88, !dbg !596

cond.end88:                                       ; preds = %cond.false85, %cond.true82
  %cond89.in = phi ptr [ %ea84, %cond.true82 ], [ %eb87, %cond.false85 ]
  %cond89 = load ptr, ptr %cond89.in, align 8, !dbg !596
  %e2390 = getelementptr inbounds %struct._element, ptr %call63, i64 0, i32 19, !dbg !599
  store ptr %cond89, ptr %e2390, align 8, !dbg !600
  %e3191 = getelementptr inbounds %struct._element, ptr %call63, i64 0, i32 20, !dbg !601
  store ptr %call11, ptr %e3191, align 8, !dbg !602
  %area92 = getelementptr inbounds %struct._element, ptr %call63, i64 0, i32 21, !dbg !603
  store float %mul, ptr %area92, align 8, !dbg !604
  %rad93 = getelementptr inbounds %struct._element, ptr %call63, i64 0, i32 11, !dbg !605
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %rad93, ptr noundef nonnull align 8 dereferenceable(12) %rad20, i64 12, i1 false), !dbg !606
  %call95 = tail call ptr @get_element(i64 undef), !dbg !607
  call void @llvm.dbg.value(metadata ptr %call95, metadata !488, metadata !DIExpression()), !dbg !493
  %right = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 6, !dbg !608
  store ptr %call95, ptr %right, align 8, !dbg !609
  %parent96 = getelementptr inbounds %struct._element, ptr %call95, i64 0, i32 2, !dbg !610
  store ptr %e, ptr %parent96, align 8, !dbg !611
  %33 = load ptr, ptr %patch, align 8, !dbg !612
  %patch98 = getelementptr inbounds %struct._element, ptr %call95, i64 0, i32 1, !dbg !613
  store ptr %33, ptr %patch98, align 8, !dbg !614
  %ev199 = getelementptr inbounds %struct._element, ptr %call95, i64 0, i32 15, !dbg !615
  store ptr %13, ptr %ev199, align 8, !dbg !616
  %ev2100 = getelementptr inbounds %struct._element, ptr %call95, i64 0, i32 16, !dbg !617
  store ptr %10, ptr %ev2100, align 8, !dbg !618
  %34 = load ptr, ptr %ev327, align 8, !dbg !619
  %ev3102 = getelementptr inbounds %struct._element, ptr %call95, i64 0, i32 17, !dbg !620
  store ptr %34, ptr %ev3102, align 8, !dbg !621
  %e12103 = getelementptr inbounds %struct._element, ptr %call95, i64 0, i32 18, !dbg !622
  store ptr %call12, ptr %e12103, align 8, !dbg !623
  %35 = load ptr, ptr %e23, align 8, !dbg !493
  br i1 %cmp28, label %cond.false108, label %cond.true105, !dbg !624

cond.true105:                                     ; preds = %cond.end88
  %eb107 = getelementptr inbounds %struct._edge, ptr %35, i64 0, i32 3, !dbg !625
  br label %cond.end111, !dbg !624

cond.false108:                                    ; preds = %cond.end88
  %ea110 = getelementptr inbounds %struct._edge, ptr %35, i64 0, i32 2, !dbg !626
  br label %cond.end111, !dbg !624

cond.end111:                                      ; preds = %cond.false108, %cond.true105
  %cond112.in = phi ptr [ %eb107, %cond.true105 ], [ %ea110, %cond.false108 ]
  %cond112 = load ptr, ptr %cond112.in, align 8, !dbg !624
  %e23113 = getelementptr inbounds %struct._element, ptr %call95, i64 0, i32 19, !dbg !627
  store ptr %cond112, ptr %e23113, align 8, !dbg !628
  %36 = load ptr, ptr %e31, align 8, !dbg !493
  br i1 %cmp34, label %cond.false118, label %cond.true115, !dbg !629

cond.true115:                                     ; preds = %cond.end111
  %ea117 = getelementptr inbounds %struct._edge, ptr %36, i64 0, i32 2, !dbg !630
  br label %cond.end121, !dbg !629

cond.false118:                                    ; preds = %cond.end111
  %eb120 = getelementptr inbounds %struct._edge, ptr %36, i64 0, i32 3, !dbg !631
  br label %cond.end121, !dbg !629

cond.end121:                                      ; preds = %cond.false118, %cond.true115
  %cond122.in = phi ptr [ %ea117, %cond.true115 ], [ %eb120, %cond.false118 ]
  %cond122 = load ptr, ptr %cond122.in, align 8, !dbg !629
  %e31123 = getelementptr inbounds %struct._element, ptr %call95, i64 0, i32 20, !dbg !632
  store ptr %cond122, ptr %e31123, align 8, !dbg !633
  %area124 = getelementptr inbounds %struct._element, ptr %call95, i64 0, i32 21, !dbg !634
  store float %mul, ptr %area124, align 8, !dbg !635
  %rad125 = getelementptr inbounds %struct._element, ptr %call95, i64 0, i32 11, !dbg !636
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %rad125, ptr noundef nonnull align 8 dereferenceable(12) %rad20, i64 12, i1 false), !dbg !637
  store ptr %call14, ptr %center, align 8, !dbg !638
  br label %cleanup, !dbg !639

cleanup:                                          ; preds = %entry, %cond.end121
  %37 = load ptr, ptr %e, align 8, !dbg !493
  %call130 = tail call i32 @pthread_mutex_unlock(ptr noundef %37) #13, !dbg !493
  ret void, !dbg !639
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !640 i64 @patch_intersection(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bf_error_analysis_list(ptr noundef %elem, ptr noundef %i_list, i64 noundef %process_id) local_unnamed_addr #0 !dbg !646 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !648, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata ptr %i_list, metadata !649, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !650, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata ptr null, metadata !652, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata ptr %i_list, metadata !653, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i64 0, metadata !655, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i64 0, metadata !656, metadata !DIExpression()), !dbg !657
  %tobool.not41 = icmp eq ptr %i_list, null, !dbg !658
  br i1 %tobool.not41, label %if.end17, label %while.body, !dbg !658

while.body:                                       ; preds = %entry, %if.end7
  %i_len.046 = phi i64 [ %i_len.1, %if.end7 ], [ 0, %entry ]
  %i_list.addr.045 = phi ptr [ %i_list.addr.2, %if.end7 ], [ %i_list, %entry ]
  %inter.044 = phi ptr [ %0, %if.end7 ], [ %i_list, %entry ]
  %prev.042 = phi ptr [ %prev.1, %if.end7 ], [ null, %entry ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !656, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i64 %i_len.046, metadata !655, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata ptr %i_list.addr.045, metadata !649, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata ptr %inter.044, metadata !653, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata ptr %prev.042, metadata !652, metadata !DIExpression()), !dbg !657
  %call = tail call i64 @bf_error_analysis(ptr noundef %elem, ptr noundef nonnull %inter.044, i64 undef), !dbg !659
  call void @llvm.dbg.value(metadata i64 %call, metadata !651, metadata !DIExpression()), !dbg !657
  %and = and i64 %call, 2, !dbg !661
  %tobool1.not = icmp eq i64 %and, 0, !dbg !661
  %0 = load ptr, ptr %inter.044, align 8, !dbg !663
  call void @llvm.dbg.value(metadata ptr %0, metadata !653, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata ptr %0, metadata !653, metadata !DIExpression()), !dbg !657
  br i1 %tobool1.not, label %if.else, label %if.then, !dbg !664

if.then:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata ptr %inter.044, metadata !652, metadata !DIExpression()), !dbg !657
  %inc = add nsw i64 %i_len.046, 1, !dbg !665
  call void @llvm.dbg.value(metadata i64 %inc, metadata !655, metadata !DIExpression()), !dbg !657
  br label %if.end7, !dbg !667

if.else:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata ptr %inter.044, metadata !654, metadata !DIExpression()), !dbg !657
  %cmp = icmp eq ptr %prev.042, null, !dbg !668
  br i1 %cmp, label %if.end, label %if.else4, !dbg !671

if.else4:                                         ; preds = %if.else
  store ptr %0, ptr %prev.042, align 8, !dbg !672
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else4
  %i_list.addr.1 = phi ptr [ %i_list.addr.045, %if.else4 ], [ %0, %if.else ]
  call void @llvm.dbg.value(metadata ptr %i_list.addr.1, metadata !649, metadata !DIExpression()), !dbg !657
  %1 = getelementptr i8, ptr %inter.044, i64 8, !dbg !673
  %inter.0.val = load ptr, ptr %1, align 8, !dbg !673
  %call6 = tail call fastcc i64 @bf_refine_element(i64 noundef %call, ptr noundef %elem, ptr %inter.0.val, i64 noundef %process_id), !dbg !673
  call void @llvm.dbg.value(metadata i64 undef, metadata !656, metadata !DIExpression()), !dbg !657
  tail call void @free_interaction(ptr noundef nonnull %inter.044, i64 undef), !dbg !674
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %call6), metadata !656, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !657
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %prev.1 = phi ptr [ %inter.044, %if.then ], [ %prev.042, %if.end ], !dbg !657
  %i_list.addr.2 = phi ptr [ %i_list.addr.045, %if.then ], [ %i_list.addr.1, %if.end ]
  %i_len.1 = phi i64 [ %inc, %if.then ], [ %i_len.046, %if.end ], !dbg !657
  call void @llvm.dbg.value(metadata i64 undef, metadata !656, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i64 %i_len.1, metadata !655, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata ptr %i_list.addr.2, metadata !649, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata ptr %0, metadata !653, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata ptr %prev.1, metadata !652, metadata !DIExpression()), !dbg !657
  %tobool.not = icmp eq ptr %0, null, !dbg !658
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !658, !llvm.loop !675

while.end:                                        ; preds = %if.end7
  %cmp8 = icmp sgt i64 %i_len.1, 0, !dbg !679
  br i1 %cmp8, label %if.then9, label %if.end17, !dbg !681

if.then9:                                         ; preds = %while.end
  %2 = load ptr, ptr %elem, align 8, !dbg !682
  %call10 = tail call i32 @pthread_mutex_lock(ptr noundef %2) #13, !dbg !685
  %interactions = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 7, !dbg !686
  %3 = load ptr, ptr %interactions, align 8, !dbg !686
  store ptr %3, ptr %prev.1, align 8, !dbg !687
  store ptr %i_list.addr.2, ptr %interactions, align 8, !dbg !688
  %n_interactions = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 8, !dbg !689
  %4 = load i64, ptr %n_interactions, align 8, !dbg !690
  %add13 = add nsw i64 %4, %i_len.1, !dbg !690
  store i64 %add13, ptr %n_interactions, align 8, !dbg !690
  %5 = load ptr, ptr %elem, align 8, !dbg !691
  %call16 = tail call i32 @pthread_mutex_unlock(ptr noundef %5) #13, !dbg !693
  br label %if.end17, !dbg !694

if.end17:                                         ; preds = %entry, %if.then9, %while.end
  ret void, !dbg !695
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @bf_error_analysis(ptr nocapture noundef readonly %elem, ptr nocapture noundef readonly %inter, i64 %process_id) local_unnamed_addr #0 !dbg !696 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !700, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata ptr %inter, metadata !701, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i64 undef, metadata !702, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i64 0, metadata !706, metadata !DIExpression()), !dbg !707
  %visibility = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 5, !dbg !708
  %0 = load float, ptr %visibility, align 4, !dbg !708
  %cmp = fcmp ogt float %0, 0.000000e+00, !dbg !710
  %cmp4 = fcmp olt float %0, 1.000000e+00
  %or.cond = and i1 %cmp, %cmp4, !dbg !711
  %spec.select = select i1 %or.cond, float 1.000000e+00, float 0x3FB99999A0000000, !dbg !711
  call void @llvm.dbg.value(metadata float %spec.select, metadata !705, metadata !DIExpression()), !dbg !707
  %destination = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 1, !dbg !712
  %1 = load ptr, ptr %destination, align 8, !dbg !712
  %2 = load ptr, ptr %1, align 8, !dbg !714
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %2) #13, !dbg !715
  %3 = load ptr, ptr %destination, align 8, !dbg !716
  %rad = getelementptr inbounds %struct._element, ptr %3, i64 0, i32 11, !dbg !717
  %4 = load float, ptr %rad, align 8, !dbg !718
  %g = getelementptr inbounds %struct._element, ptr %3, i64 0, i32 11, i32 1, !dbg !719
  %5 = load float, ptr %g, align 4, !dbg !719
  %add = fadd float %4, %5, !dbg !720
  %b = getelementptr inbounds %struct._element, ptr %3, i64 0, i32 11, i32 2, !dbg !721
  %6 = load float, ptr %b, align 8, !dbg !721
  %add11 = fadd float %add, %6, !dbg !722
  %mul = fmul float %add11, 0x3FD5555560000000, !dbg !723
  call void @llvm.dbg.value(metadata float %mul, metadata !703, metadata !DIExpression()), !dbg !707
  %7 = load ptr, ptr %3, align 8, !dbg !724
  %call15 = tail call i32 @pthread_mutex_unlock(ptr noundef %7) #13, !dbg !726
  %8 = load float, ptr %visibility, align 4, !dbg !727
  %formfactor_err = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 3, !dbg !728
  %9 = load float, ptr %formfactor_err, align 4, !dbg !728
  %formfactor_out = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 2, !dbg !729
  %10 = load float, ptr %formfactor_out, align 8, !dbg !729
  %mul18 = fmul float %spec.select, %10, !dbg !730
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %mul18), !dbg !731
  %12 = tail call float @llvm.fmuladd.f32(float %spec.select, float %9, float %11), !dbg !732
  %mul21 = fmul float %mul, %12, !dbg !733
  call void @llvm.dbg.value(metadata float %mul21, metadata !704, metadata !DIExpression()), !dbg !707
  %13 = load float, ptr @BFepsilon, align 4, !dbg !734
  %cmp22 = fcmp ugt float %mul21, %13, !dbg !736
  br i1 %cmp22, label %if.else28, label %land.lhs.true24, !dbg !737

land.lhs.true24:                                  ; preds = %entry
  %n_interactions = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 8, !dbg !738
  %14 = load i64, ptr %n_interactions, align 8, !dbg !738
  %cmp25 = icmp slt i64 %14, 11, !dbg !739
  br i1 %cmp25, label %cleanup, label %if.else28, !dbg !740

if.else28:                                        ; preds = %land.lhs.true24, %entry
  %conv29 = fpext float %mul21 to double, !dbg !741
  %conv30 = fpext float %13 to double, !dbg !743
  %mul31 = fmul double %conv30, 5.000000e-01, !dbg !744
  %cmp32 = fcmp ult double %mul31, %conv29, !dbg !745
  br i1 %cmp32, label %if.end36, label %cleanup, !dbg !746

if.end36:                                         ; preds = %if.else28
  %area = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 21, !dbg !747
  %15 = load float, ptr %area, align 8, !dbg !747
  %16 = load ptr, ptr %destination, align 8, !dbg !749
  %area38 = getelementptr inbounds %struct._element, ptr %16, i64 0, i32 21, !dbg !750
  %17 = load float, ptr %area38, align 8, !dbg !750
  %cmp39 = fcmp ogt float %15, %17, !dbg !751
  %18 = load float, ptr @Area_epsilon, align 4, !dbg !752
  br i1 %cmp39, label %if.then41, label %if.else47, !dbg !753

if.then41:                                        ; preds = %if.end36
  %cmp43 = fcmp ogt float %15, %18, !dbg !754
  br i1 %cmp43, label %cleanup, label %if.end55, !dbg !757

if.else47:                                        ; preds = %if.end36
  %cmp50 = fcmp ogt float %17, %18, !dbg !758
  br i1 %cmp50, label %cleanup, label %if.end55, !dbg !761

if.end55:                                         ; preds = %if.else47, %if.then41
  br label %cleanup, !dbg !762

cleanup:                                          ; preds = %if.else47, %if.then41, %if.else28, %land.lhs.true24, %if.end55
  %retval.0 = phi i64 [ 2, %if.end55 ], [ 2, %land.lhs.true24 ], [ 2, %if.else28 ], [ 4, %if.then41 ], [ 8, %if.else47 ], !dbg !707
  ret i64 %retval.0, !dbg !763
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @bf_refine_element(i64 noundef %subdiv, ptr noundef %elem, ptr %inter.8.val, i64 noundef %process_id) unnamed_addr #0 !dbg !764 {
entry:
  call void @llvm.dbg.value(metadata i64 %subdiv, metadata !768, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata ptr %elem, metadata !769, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata ptr undef, metadata !770, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !771, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata ptr %inter.8.val, metadata !772, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 0, metadata !775, metadata !DIExpression()), !dbg !776
  %and = and i64 %subdiv, 16, !dbg !777
  %tobool.not = icmp eq i64 %and, 0, !dbg !777
  %cond = select i1 %tobool.not, float -1.000000e+00, float 1.000000e+00, !dbg !777
  call void @llvm.dbg.value(metadata float %cond, metadata !774, metadata !DIExpression()), !dbg !776
  %and1 = and i64 %subdiv, 4, !dbg !778
  %tobool2.not = icmp eq i64 %and1, 0, !dbg !778
  br i1 %tobool2.not, label %if.else, label %if.then, !dbg !780

if.then:                                          ; preds = %entry
  tail call void @subdivide_element(ptr noundef %elem, i64 noundef %process_id), !dbg !781
  %center = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 3, !dbg !783
  %0 = load ptr, ptr %center, align 8, !dbg !783
  %call = tail call i64 @element_completely_invisible(ptr noundef %0, ptr noundef %inter.8.val, i64 noundef %process_id), !dbg !785
  %cmp = icmp eq i64 %call, 0, !dbg !786
  br i1 %cmp, label %if.then3, label %if.end, !dbg !787

if.then3:                                         ; preds = %if.then
  %call4 = tail call ptr @get_interaction(i64 undef), !dbg !788
  call void @llvm.dbg.value(metadata ptr %call4, metadata !773, metadata !DIExpression()), !dbg !776
  %1 = load ptr, ptr %center, align 8, !dbg !790
  tail call void @compute_formfactor(ptr noundef %1, ptr noundef %inter.8.val, ptr noundef %call4, i64 undef), !dbg !791
  %visibility = getelementptr inbounds %struct._interact, ptr %call4, i64 0, i32 5, !dbg !792
  store float %cond, ptr %visibility, align 4, !dbg !793
  %2 = load ptr, ptr %center, align 8, !dbg !794
  tail call void @insert_vis_undef_interaction(ptr noundef %2, ptr noundef %call4, i64 undef), !dbg !795
  call void @llvm.dbg.value(metadata i64 1, metadata !775, metadata !DIExpression()), !dbg !776
  br label %if.end, !dbg !796

if.end:                                           ; preds = %if.then3, %if.then
  %new_inter.0 = phi i64 [ 1, %if.then3 ], [ 0, %if.then ], !dbg !776
  call void @llvm.dbg.value(metadata i64 %new_inter.0, metadata !775, metadata !DIExpression()), !dbg !776
  %top = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 4, !dbg !797
  %3 = load ptr, ptr %top, align 8, !dbg !797
  %call7 = tail call i64 @element_completely_invisible(ptr noundef %3, ptr noundef %inter.8.val, i64 noundef %process_id), !dbg !799
  %cmp8 = icmp eq i64 %call7, 0, !dbg !800
  br i1 %cmp8, label %if.then9, label %if.end15, !dbg !801

if.then9:                                         ; preds = %if.end
  %call10 = tail call ptr @get_interaction(i64 undef), !dbg !802
  call void @llvm.dbg.value(metadata ptr %call10, metadata !773, metadata !DIExpression()), !dbg !776
  %4 = load ptr, ptr %top, align 8, !dbg !804
  tail call void @compute_formfactor(ptr noundef %4, ptr noundef %inter.8.val, ptr noundef %call10, i64 undef), !dbg !805
  %visibility12 = getelementptr inbounds %struct._interact, ptr %call10, i64 0, i32 5, !dbg !806
  store float %cond, ptr %visibility12, align 4, !dbg !807
  %5 = load ptr, ptr %top, align 8, !dbg !808
  tail call void @insert_vis_undef_interaction(ptr noundef %5, ptr noundef %call10, i64 undef), !dbg !809
  %inc14 = add nuw nsw i64 %new_inter.0, 1, !dbg !810
  call void @llvm.dbg.value(metadata i64 %inc14, metadata !775, metadata !DIExpression()), !dbg !776
  br label %if.end15, !dbg !811

if.end15:                                         ; preds = %if.then9, %if.end
  %new_inter.1 = phi i64 [ %inc14, %if.then9 ], [ %new_inter.0, %if.end ], !dbg !812
  call void @llvm.dbg.value(metadata i64 %new_inter.1, metadata !775, metadata !DIExpression()), !dbg !776
  %left = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 5, !dbg !813
  %6 = load ptr, ptr %left, align 8, !dbg !813
  %call16 = tail call i64 @element_completely_invisible(ptr noundef %6, ptr noundef %inter.8.val, i64 noundef %process_id), !dbg !815
  %cmp17 = icmp eq i64 %call16, 0, !dbg !816
  br i1 %cmp17, label %if.then18, label %if.end24, !dbg !817

if.then18:                                        ; preds = %if.end15
  %call19 = tail call ptr @get_interaction(i64 undef), !dbg !818
  call void @llvm.dbg.value(metadata ptr %call19, metadata !773, metadata !DIExpression()), !dbg !776
  %7 = load ptr, ptr %left, align 8, !dbg !820
  tail call void @compute_formfactor(ptr noundef %7, ptr noundef %inter.8.val, ptr noundef %call19, i64 undef), !dbg !821
  %visibility21 = getelementptr inbounds %struct._interact, ptr %call19, i64 0, i32 5, !dbg !822
  store float %cond, ptr %visibility21, align 4, !dbg !823
  %8 = load ptr, ptr %left, align 8, !dbg !824
  tail call void @insert_vis_undef_interaction(ptr noundef %8, ptr noundef %call19, i64 undef), !dbg !825
  %inc23 = add nuw nsw i64 %new_inter.1, 1, !dbg !826
  call void @llvm.dbg.value(metadata i64 %inc23, metadata !775, metadata !DIExpression()), !dbg !776
  br label %if.end24, !dbg !827

if.end24:                                         ; preds = %if.then18, %if.end15
  %new_inter.2 = phi i64 [ %inc23, %if.then18 ], [ %new_inter.1, %if.end15 ], !dbg !812
  call void @llvm.dbg.value(metadata i64 %new_inter.2, metadata !775, metadata !DIExpression()), !dbg !776
  %right = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 6, !dbg !828
  %9 = load ptr, ptr %right, align 8, !dbg !828
  %call25 = tail call i64 @element_completely_invisible(ptr noundef %9, ptr noundef %inter.8.val, i64 noundef %process_id), !dbg !830
  %cmp26 = icmp eq i64 %call25, 0, !dbg !831
  br i1 %cmp26, label %if.then27, label %if.end70, !dbg !832

if.then27:                                        ; preds = %if.end24
  %call28 = tail call ptr @get_interaction(i64 undef), !dbg !833
  call void @llvm.dbg.value(metadata ptr %call28, metadata !773, metadata !DIExpression()), !dbg !776
  %10 = load ptr, ptr %right, align 8, !dbg !835
  tail call void @compute_formfactor(ptr noundef %10, ptr noundef %inter.8.val, ptr noundef %call28, i64 undef), !dbg !836
  %visibility30 = getelementptr inbounds %struct._interact, ptr %call28, i64 0, i32 5, !dbg !837
  store float %cond, ptr %visibility30, align 4, !dbg !838
  %11 = load ptr, ptr %right, align 8, !dbg !839
  tail call void @insert_vis_undef_interaction(ptr noundef %11, ptr noundef %call28, i64 undef), !dbg !840
  %inc32 = add nuw nsw i64 %new_inter.2, 1, !dbg !841
  call void @llvm.dbg.value(metadata i64 %inc32, metadata !775, metadata !DIExpression()), !dbg !776
  br label %if.end70, !dbg !842

if.else:                                          ; preds = %entry
  tail call void @subdivide_element(ptr noundef %inter.8.val, i64 noundef %process_id), !dbg !843
  %center34 = getelementptr inbounds %struct._element, ptr %inter.8.val, i64 0, i32 3, !dbg !845
  %12 = load ptr, ptr %center34, align 8, !dbg !845
  %call35 = tail call i64 @element_completely_invisible(ptr noundef %elem, ptr noundef %12, i64 noundef %process_id), !dbg !847
  %cmp36 = icmp eq i64 %call35, 0, !dbg !848
  br i1 %cmp36, label %if.then37, label %if.end42, !dbg !849

if.then37:                                        ; preds = %if.else
  %call38 = tail call ptr @get_interaction(i64 undef), !dbg !850
  call void @llvm.dbg.value(metadata ptr %call38, metadata !773, metadata !DIExpression()), !dbg !776
  %13 = load ptr, ptr %center34, align 8, !dbg !852
  tail call void @compute_formfactor(ptr noundef %elem, ptr noundef %13, ptr noundef %call38, i64 undef), !dbg !853
  %visibility40 = getelementptr inbounds %struct._interact, ptr %call38, i64 0, i32 5, !dbg !854
  store float %cond, ptr %visibility40, align 4, !dbg !855
  tail call void @insert_vis_undef_interaction(ptr noundef %elem, ptr noundef %call38, i64 undef), !dbg !856
  call void @llvm.dbg.value(metadata i64 1, metadata !775, metadata !DIExpression()), !dbg !776
  br label %if.end42, !dbg !857

if.end42:                                         ; preds = %if.then37, %if.else
  %new_inter.3 = phi i64 [ 1, %if.then37 ], [ 0, %if.else ], !dbg !776
  call void @llvm.dbg.value(metadata i64 %new_inter.3, metadata !775, metadata !DIExpression()), !dbg !776
  %top43 = getelementptr inbounds %struct._element, ptr %inter.8.val, i64 0, i32 4, !dbg !858
  %14 = load ptr, ptr %top43, align 8, !dbg !858
  %call44 = tail call i64 @element_completely_invisible(ptr noundef %elem, ptr noundef %14, i64 noundef %process_id), !dbg !860
  %cmp45 = icmp eq i64 %call44, 0, !dbg !861
  br i1 %cmp45, label %if.then46, label %if.end51, !dbg !862

if.then46:                                        ; preds = %if.end42
  %call47 = tail call ptr @get_interaction(i64 undef), !dbg !863
  call void @llvm.dbg.value(metadata ptr %call47, metadata !773, metadata !DIExpression()), !dbg !776
  %15 = load ptr, ptr %top43, align 8, !dbg !865
  tail call void @compute_formfactor(ptr noundef %elem, ptr noundef %15, ptr noundef %call47, i64 undef), !dbg !866
  %visibility49 = getelementptr inbounds %struct._interact, ptr %call47, i64 0, i32 5, !dbg !867
  store float %cond, ptr %visibility49, align 4, !dbg !868
  tail call void @insert_vis_undef_interaction(ptr noundef %elem, ptr noundef %call47, i64 undef), !dbg !869
  %inc50 = add nuw nsw i64 %new_inter.3, 1, !dbg !870
  call void @llvm.dbg.value(metadata i64 %inc50, metadata !775, metadata !DIExpression()), !dbg !776
  br label %if.end51, !dbg !871

if.end51:                                         ; preds = %if.then46, %if.end42
  %new_inter.4 = phi i64 [ %inc50, %if.then46 ], [ %new_inter.3, %if.end42 ], !dbg !872
  call void @llvm.dbg.value(metadata i64 %new_inter.4, metadata !775, metadata !DIExpression()), !dbg !776
  %left52 = getelementptr inbounds %struct._element, ptr %inter.8.val, i64 0, i32 5, !dbg !873
  %16 = load ptr, ptr %left52, align 8, !dbg !873
  %call53 = tail call i64 @element_completely_invisible(ptr noundef %elem, ptr noundef %16, i64 noundef %process_id), !dbg !875
  %cmp54 = icmp eq i64 %call53, 0, !dbg !876
  br i1 %cmp54, label %if.then55, label %if.end60, !dbg !877

if.then55:                                        ; preds = %if.end51
  %call56 = tail call ptr @get_interaction(i64 undef), !dbg !878
  call void @llvm.dbg.value(metadata ptr %call56, metadata !773, metadata !DIExpression()), !dbg !776
  %17 = load ptr, ptr %left52, align 8, !dbg !880
  tail call void @compute_formfactor(ptr noundef %elem, ptr noundef %17, ptr noundef %call56, i64 undef), !dbg !881
  %visibility58 = getelementptr inbounds %struct._interact, ptr %call56, i64 0, i32 5, !dbg !882
  store float %cond, ptr %visibility58, align 4, !dbg !883
  tail call void @insert_vis_undef_interaction(ptr noundef %elem, ptr noundef %call56, i64 undef), !dbg !884
  %inc59 = add nuw nsw i64 %new_inter.4, 1, !dbg !885
  call void @llvm.dbg.value(metadata i64 %inc59, metadata !775, metadata !DIExpression()), !dbg !776
  br label %if.end60, !dbg !886

if.end60:                                         ; preds = %if.then55, %if.end51
  %new_inter.5 = phi i64 [ %inc59, %if.then55 ], [ %new_inter.4, %if.end51 ], !dbg !872
  call void @llvm.dbg.value(metadata i64 %new_inter.5, metadata !775, metadata !DIExpression()), !dbg !776
  %right61 = getelementptr inbounds %struct._element, ptr %inter.8.val, i64 0, i32 6, !dbg !887
  %18 = load ptr, ptr %right61, align 8, !dbg !887
  %call62 = tail call i64 @element_completely_invisible(ptr noundef %elem, ptr noundef %18, i64 noundef %process_id), !dbg !889
  %cmp63 = icmp eq i64 %call62, 0, !dbg !890
  br i1 %cmp63, label %if.then64, label %if.end70, !dbg !891

if.then64:                                        ; preds = %if.end60
  %call65 = tail call ptr @get_interaction(i64 undef), !dbg !892
  call void @llvm.dbg.value(metadata ptr %call65, metadata !773, metadata !DIExpression()), !dbg !776
  %19 = load ptr, ptr %right61, align 8, !dbg !894
  tail call void @compute_formfactor(ptr noundef %elem, ptr noundef %19, ptr noundef %call65, i64 undef), !dbg !895
  %visibility67 = getelementptr inbounds %struct._interact, ptr %call65, i64 0, i32 5, !dbg !896
  store float %cond, ptr %visibility67, align 4, !dbg !897
  tail call void @insert_vis_undef_interaction(ptr noundef %elem, ptr noundef %call65, i64 undef), !dbg !898
  %inc68 = add nuw nsw i64 %new_inter.5, 1, !dbg !899
  call void @llvm.dbg.value(metadata i64 %inc68, metadata !775, metadata !DIExpression()), !dbg !776
  br label %if.end70, !dbg !900

if.end70:                                         ; preds = %if.end60, %if.then64, %if.end24, %if.then27
  %new_inter.6 = phi i64 [ %inc32, %if.then27 ], [ %new_inter.2, %if.end24 ], [ %inc68, %if.then64 ], [ %new_inter.5, %if.end60 ], !dbg !901
  call void @llvm.dbg.value(metadata i64 %new_inter.6, metadata !775, metadata !DIExpression()), !dbg !776
  ret i64 %new_inter.6, !dbg !902
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_interaction(ptr noundef %interaction, i64 %process_id) local_unnamed_addr #0 !dbg !903 {
entry:
  call void @llvm.dbg.value(metadata ptr %interaction, metadata !907, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i64 undef, metadata !908, metadata !DIExpression()), !dbg !909
  %0 = load ptr, ptr @global, align 8, !dbg !910
  %free_interaction_lock = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 30, !dbg !912
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %free_interaction_lock) #13, !dbg !913
  %1 = load ptr, ptr @global, align 8, !dbg !914
  %free_interaction = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 31, !dbg !915
  %2 = load ptr, ptr %free_interaction, align 8, !dbg !915
  store ptr %2, ptr %interaction, align 8, !dbg !916
  %3 = load ptr, ptr @global, align 8, !dbg !917
  %free_interaction1 = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 31, !dbg !918
  store ptr %interaction, ptr %free_interaction1, align 8, !dbg !919
  %n_free_interactions = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 32, !dbg !920
  %4 = load i64, ptr %n_free_interactions, align 8, !dbg !921
  %inc = add nsw i64 %4, 1, !dbg !921
  store i64 %inc, ptr %n_free_interactions, align 8, !dbg !921
  %free_interaction_lock2 = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 30, !dbg !922
  %call3 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %free_interaction_lock2) #13, !dbg !924
  ret void, !dbg !925
}

; Function Attrs: nounwind
declare !dbg !926 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !931 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @radiosity_converged(i64 noundef %process_id) local_unnamed_addr #0 !dbg !932 {
entry:
  %rad = alloca %struct.Rgb, align 4
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !936, metadata !DIExpression()), !dbg !941
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rad) #13, !dbg !942
  call void @llvm.dbg.declare(metadata ptr %rad, metadata !940, metadata !DIExpression()), !dbg !943
  %0 = load ptr, ptr @global, align 8, !dbg !944
  %prev_total_energy = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 8, !dbg !945
  %1 = load float, ptr %prev_total_energy, align 8, !dbg !946
  %g = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 8, i32 1, !dbg !947
  %2 = load float, ptr %g, align 4, !dbg !947
  %add = fadd float %1, %2, !dbg !948
  %b = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 8, i32 2, !dbg !949
  %3 = load float, ptr %b, align 8, !dbg !949
  %add3 = fadd float %add, %3, !dbg !950
  call void @llvm.dbg.value(metadata float %add3, metadata !937, metadata !DIExpression()), !dbg !941
  %total_energy = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 9, !dbg !951
  %4 = load float, ptr %total_energy, align 4, !dbg !952
  %g6 = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 9, i32 1, !dbg !953
  %5 = load float, ptr %g6, align 4, !dbg !953
  %add7 = fadd float %4, %5, !dbg !954
  %b9 = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 9, i32 2, !dbg !955
  %6 = load float, ptr %b9, align 4, !dbg !955
  %add10 = fadd float %add7, %6, !dbg !956
  call void @llvm.dbg.value(metadata float %add10, metadata !938, metadata !DIExpression()), !dbg !941
  %conv = fpext float %add3 to double, !dbg !957
  %add11 = fadd double %conv, 1.000000e-04, !dbg !957
  %conv12 = fptrunc double %add11 to float, !dbg !957
  call void @llvm.dbg.value(metadata float %conv12, metadata !937, metadata !DIExpression()), !dbg !941
  %div = fdiv float %add10, %conv12, !dbg !958
  %sub = fadd float %div, -1.000000e+00, !dbg !959
  %7 = tail call float @llvm.fabs.f32(float %sub), !dbg !960
  call void @llvm.dbg.value(metadata float %7, metadata !939, metadata !DIExpression()), !dbg !941
  %8 = load i64, ptr @verbose_mode, align 8, !dbg !961
  %tobool.not = icmp eq i64 %8, 0, !dbg !961
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !963

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %rad, ptr noundef nonnull align 4 dereferenceable(12) %total_energy, i64 12, i1 false), !dbg !964
  %total_patch_area = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 10, !dbg !966
  %9 = load float, ptr %total_patch_area, align 8, !dbg !966
  %10 = load float, ptr %rad, align 4, !dbg !967
  %div17 = fdiv float %10, %9, !dbg !967
  store float %div17, ptr %rad, align 4, !dbg !967
  %g19 = getelementptr inbounds %struct.Rgb, ptr %rad, i64 0, i32 1, !dbg !968
  %11 = load float, ptr %g19, align 4, !dbg !969
  %div20 = fdiv float %11, %9, !dbg !969
  store float %div20, ptr %g19, align 4, !dbg !969
  %b22 = getelementptr inbounds %struct.Rgb, ptr %rad, i64 0, i32 2, !dbg !970
  %12 = load float, ptr %b22, align 4, !dbg !971
  %div23 = fdiv float %12, %9, !dbg !971
  store float %div23, ptr %b22, align 4, !dbg !971
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str), !dbg !972
  %13 = load ptr, ptr @global, align 8, !dbg !973
  %total_energy24 = getelementptr inbounds %struct.Global, ptr %13, i64 0, i32 9, !dbg !974
  tail call void @print_rgb(ptr noundef nonnull %total_energy24) #13, !dbg !975
  %call25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1), !dbg !976
  call void @print_rgb(ptr noundef nonnull %rad) #13, !dbg !977
  %conv26 = fpext float %7 to double, !dbg !978
  %mul = fmul double %conv26, 1.000000e+02, !dbg !979
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %mul), !dbg !980
  br label %if.end, !dbg !981

if.end:                                           ; preds = %if.then, %entry
  %14 = load float, ptr @Energy_epsilon, align 4, !dbg !982
  %cmp = fcmp ole float %7, %14, !dbg !984
  %. = zext i1 %cmp to i64, !dbg !985
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rad) #13, !dbg !986
  ret i64 %., !dbg !986
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare !dbg !987 void @print_rgb(ptr noundef) local_unnamed_addr #4

declare !dbg !991 void @subdivide_edge(ptr noundef, float noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !994 ptr @create_edge(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_element(i64 %process_id) local_unnamed_addr #0 !dbg !997 {
entry:
  call void @llvm.dbg.value(metadata i64 undef, metadata !1001, metadata !DIExpression()), !dbg !1003
  %0 = load ptr, ptr @global, align 8, !dbg !1004
  %free_element_lock = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 26, !dbg !1006
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %free_element_lock) #13, !dbg !1007
  %1 = load ptr, ptr @global, align 8, !dbg !1008
  %free_element = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 27, !dbg !1010
  %2 = load ptr, ptr %free_element, align 8, !dbg !1010
  %cmp = icmp eq ptr %2, null, !dbg !1011
  br i1 %cmp, label %if.then, label %if.end, !dbg !1012

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !1013
  %3 = load ptr, ptr @global, align 8, !dbg !1015
  %free_element_lock2 = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 26, !dbg !1017
  %call3 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %free_element_lock2) #13, !dbg !1018
  tail call void @exit(i32 noundef 1) #14, !dbg !1019
  unreachable, !dbg !1019

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %2, metadata !1002, metadata !DIExpression()), !dbg !1003
  %center = getelementptr inbounds %struct._element, ptr %2, i64 0, i32 3, !dbg !1020
  %4 = load ptr, ptr %center, align 8, !dbg !1020
  store ptr %4, ptr %free_element, align 8, !dbg !1021
  %n_free_elements = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 28, !dbg !1022
  %5 = load i64, ptr %n_free_elements, align 8, !dbg !1023
  %dec = add nsw i64 %5, -1, !dbg !1023
  store i64 %dec, ptr %n_free_elements, align 8, !dbg !1023
  %free_element_lock6 = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 26, !dbg !1024
  %call7 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %free_element_lock6) #13, !dbg !1026
  %parent = getelementptr inbounds %struct._element, ptr %2, i64 0, i32 2, !dbg !1027
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %parent, i8 0, i64 72, i1 false), !dbg !1028
  ret ptr %2, !dbg !1029
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @process_rays(ptr noundef %e, i64 noundef %process_id) local_unnamed_addr #0 !dbg !1030 {
entry:
  call void @llvm.dbg.value(metadata ptr %e, metadata !1032, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1033, metadata !DIExpression()), !dbg !1035
  %0 = load ptr, ptr %e, align 8, !dbg !1036
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %0) #13, !dbg !1038
  %interactions = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 7, !dbg !1039
  %1 = load ptr, ptr %interactions, align 8, !dbg !1039
  call void @llvm.dbg.value(metadata ptr %1, metadata !1034, metadata !DIExpression()), !dbg !1035
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %interactions, i8 0, i64 16, i1 false), !dbg !1040
  %2 = load ptr, ptr %e, align 8, !dbg !1041
  %call4 = tail call i32 @pthread_mutex_unlock(ptr noundef %2) #13, !dbg !1043
  tail call void @bf_error_analysis_list(ptr noundef nonnull %e, ptr noundef %1, i64 noundef %process_id), !dbg !1044
  %n_vis_undef_inter = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 10, !dbg !1045
  %3 = load i64, ptr %n_vis_undef_inter, align 8, !dbg !1045
  %cmp = icmp eq i64 %3, 0, !dbg !1047
  br i1 %cmp, label %if.then, label %if.else, !dbg !1048

if.then:                                          ; preds = %entry
  tail call fastcc void @process_rays3(ptr noundef nonnull %e, i64 noundef %process_id), !dbg !1049
  br label %if.end, !dbg !1049

if.else:                                          ; preds = %entry
  tail call void @create_visibility_tasks(ptr noundef nonnull %e, ptr noundef nonnull @process_rays2, i64 noundef %process_id) #13, !dbg !1050
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1051
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @process_rays3(ptr noundef %e, i64 noundef %process_id) unnamed_addr #0 !dbg !1052 {
entry:
  call void @llvm.dbg.value(metadata ptr %e, metadata !1054, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1055, metadata !DIExpression()), !dbg !1057
  tail call fastcc void @gather_rays(ptr noundef %e), !dbg !1058
  %center = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 3, !dbg !1059
  %0 = load ptr, ptr %center, align 8, !dbg !1059
  %cmp = icmp eq ptr %0, null, !dbg !1059
  br i1 %cmp, label %if.else, label %if.then, !dbg !1061

if.then:                                          ; preds = %entry
  %rad_in = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 12, !dbg !1062
  %1 = load float, ptr %rad_in, align 4, !dbg !1064
  %rad_subtree = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 13, !dbg !1065
  %2 = load float, ptr %rad_subtree, align 8, !dbg !1066
  %add = fadd float %1, %2, !dbg !1067
  call void @llvm.dbg.value(metadata float %add, metadata !1056, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1057
  %g = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 12, i32 1, !dbg !1068
  %3 = load float, ptr %g, align 4, !dbg !1068
  %g5 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 13, i32 1, !dbg !1069
  %4 = load float, ptr %g5, align 4, !dbg !1069
  %add6 = fadd float %3, %4, !dbg !1070
  call void @llvm.dbg.value(metadata float %add6, metadata !1056, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1057
  %b = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 12, i32 2, !dbg !1071
  %5 = load float, ptr %b, align 4, !dbg !1071
  %b10 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 13, i32 2, !dbg !1072
  %6 = load float, ptr %b10, align 8, !dbg !1072
  %add11 = fadd float %5, %6, !dbg !1073
  call void @llvm.dbg.value(metadata float %add11, metadata !1056, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1057
  %rad_in14 = getelementptr inbounds %struct._element, ptr %0, i64 0, i32 12, !dbg !1074
  store float %add, ptr %rad_in14, align 4, !dbg !1075
  %rad_push.sroa.7.0.rad_in14.sroa_idx = getelementptr inbounds i8, ptr %rad_in14, i64 4, !dbg !1075
  store float %add6, ptr %rad_push.sroa.7.0.rad_in14.sroa_idx, align 4, !dbg !1075
  %rad_push.sroa.8.0.rad_in14.sroa_idx = getelementptr inbounds i8, ptr %rad_in14, i64 8, !dbg !1075
  store float %add11, ptr %rad_push.sroa.8.0.rad_in14.sroa_idx, align 4, !dbg !1075
  %top = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 4, !dbg !1076
  %7 = load ptr, ptr %top, align 8, !dbg !1076
  %rad_in15 = getelementptr inbounds %struct._element, ptr %7, i64 0, i32 12, !dbg !1077
  store float %add, ptr %rad_in15, align 4, !dbg !1078
  %rad_push.sroa.7.0.rad_in15.sroa_idx = getelementptr inbounds i8, ptr %rad_in15, i64 4, !dbg !1078
  store float %add6, ptr %rad_push.sroa.7.0.rad_in15.sroa_idx, align 4, !dbg !1078
  %rad_push.sroa.8.0.rad_in15.sroa_idx = getelementptr inbounds i8, ptr %rad_in15, i64 8, !dbg !1078
  store float %add11, ptr %rad_push.sroa.8.0.rad_in15.sroa_idx, align 4, !dbg !1078
  %right = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 6, !dbg !1079
  %8 = load ptr, ptr %right, align 8, !dbg !1079
  %rad_in16 = getelementptr inbounds %struct._element, ptr %8, i64 0, i32 12, !dbg !1080
  store float %add, ptr %rad_in16, align 4, !dbg !1081
  %rad_push.sroa.7.0.rad_in16.sroa_idx = getelementptr inbounds i8, ptr %rad_in16, i64 4, !dbg !1081
  store float %add6, ptr %rad_push.sroa.7.0.rad_in16.sroa_idx, align 4, !dbg !1081
  %rad_push.sroa.8.0.rad_in16.sroa_idx = getelementptr inbounds i8, ptr %rad_in16, i64 8, !dbg !1081
  store float %add11, ptr %rad_push.sroa.8.0.rad_in16.sroa_idx, align 4, !dbg !1081
  %left = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 5, !dbg !1082
  %9 = load ptr, ptr %left, align 8, !dbg !1082
  %rad_in17 = getelementptr inbounds %struct._element, ptr %9, i64 0, i32 12, !dbg !1083
  store float %add, ptr %rad_in17, align 4, !dbg !1084
  %rad_push.sroa.7.0.rad_in17.sroa_idx = getelementptr inbounds i8, ptr %rad_in17, i64 4, !dbg !1084
  store float %add6, ptr %rad_push.sroa.7.0.rad_in17.sroa_idx, align 4, !dbg !1084
  %rad_push.sroa.8.0.rad_in17.sroa_idx = getelementptr inbounds i8, ptr %rad_in17, i64 8, !dbg !1084
  store float %add11, ptr %rad_push.sroa.8.0.rad_in17.sroa_idx, align 4, !dbg !1084
  %join_counter = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 14, !dbg !1085
  store i64 4, ptr %join_counter, align 8, !dbg !1086
  %10 = load ptr, ptr %center, align 8, !dbg !1087
  tail call void @create_ray_task(ptr noundef %10, i64 noundef %process_id) #13, !dbg !1088
  %11 = load ptr, ptr %top, align 8, !dbg !1089
  tail call void @create_ray_task(ptr noundef %11, i64 noundef %process_id) #13, !dbg !1090
  %12 = load ptr, ptr %left, align 8, !dbg !1091
  tail call void @create_ray_task(ptr noundef %12, i64 noundef %process_id) #13, !dbg !1092
  %13 = load ptr, ptr %right, align 8, !dbg !1093
  tail call void @create_ray_task(ptr noundef %13, i64 noundef %process_id) #13, !dbg !1094
  br label %if.end, !dbg !1095

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %e, align 8, !dbg !1096
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %14) #13, !dbg !1099
  %rad_in22 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 12, !dbg !1100
  %15 = load float, ptr %rad_in22, align 4, !dbg !1101
  %rad_subtree24 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 13, !dbg !1102
  %16 = load float, ptr %rad_subtree24, align 8, !dbg !1103
  %add26 = fadd float %15, %16, !dbg !1104
  %patch = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 1, !dbg !1105
  %17 = load ptr, ptr %patch, align 8, !dbg !1105
  %emittance = getelementptr inbounds %struct._patch, ptr %17, i64 0, i32 12, !dbg !1106
  %18 = load float, ptr %emittance, align 4, !dbg !1107
  %add28 = fadd float %add26, %18, !dbg !1108
  %rad = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 11, !dbg !1109
  store float %add28, ptr %rad, align 8, !dbg !1110
  %g31 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 12, i32 1, !dbg !1111
  %19 = load float, ptr %g31, align 4, !dbg !1111
  %g33 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 13, i32 1, !dbg !1112
  %20 = load float, ptr %g33, align 4, !dbg !1112
  %add34 = fadd float %19, %20, !dbg !1113
  %g37 = getelementptr inbounds %struct._patch, ptr %17, i64 0, i32 12, i32 1, !dbg !1114
  %21 = load float, ptr %g37, align 4, !dbg !1114
  %add38 = fadd float %add34, %21, !dbg !1115
  %g40 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 11, i32 1, !dbg !1116
  store float %add38, ptr %g40, align 4, !dbg !1117
  %b42 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 12, i32 2, !dbg !1118
  %22 = load float, ptr %b42, align 4, !dbg !1118
  %b44 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 13, i32 2, !dbg !1119
  %23 = load float, ptr %b44, align 8, !dbg !1119
  %add45 = fadd float %22, %23, !dbg !1120
  %b48 = getelementptr inbounds %struct._patch, ptr %17, i64 0, i32 12, i32 2, !dbg !1121
  %24 = load float, ptr %b48, align 4, !dbg !1121
  %add49 = fadd float %add45, %24, !dbg !1122
  %b51 = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 11, i32 2, !dbg !1123
  store float %add49, ptr %b51, align 8, !dbg !1124
  %25 = load ptr, ptr %e, align 8, !dbg !1125
  %call54 = tail call i32 @pthread_mutex_unlock(ptr noundef %25) #13, !dbg !1127
  %parent = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 2, !dbg !1128
  %26 = load ptr, ptr %parent, align 8, !dbg !1128
  tail call fastcc void @elem_join_operation(ptr noundef %26, ptr noundef nonnull %e), !dbg !1129
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1130
}

declare !dbg !1131 void @create_visibility_tasks(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal void @process_rays2(ptr noundef %e, i64 noundef %process_id) #0 !dbg !1134 {
entry:
  call void @llvm.dbg.value(metadata ptr %e, metadata !1136, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1137, metadata !DIExpression()), !dbg !1139
  %0 = load ptr, ptr %e, align 8, !dbg !1140
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %0) #13, !dbg !1142
  %vis_undef_inter = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 9, !dbg !1143
  %1 = load ptr, ptr %vis_undef_inter, align 8, !dbg !1143
  call void @llvm.dbg.value(metadata ptr %1, metadata !1138, metadata !DIExpression()), !dbg !1139
  %n_vis_undef_inter = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 10, !dbg !1144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %vis_undef_inter, i8 0, i64 16, i1 false), !dbg !1145
  %2 = load ptr, ptr %e, align 8, !dbg !1146
  %call4 = tail call i32 @pthread_mutex_unlock(ptr noundef %2) #13, !dbg !1148
  tail call void @bf_error_analysis_list(ptr noundef nonnull %e, ptr noundef %1, i64 noundef %process_id), !dbg !1149
  %3 = load i64, ptr %n_vis_undef_inter, align 8, !dbg !1150
  %cmp = icmp eq i64 %3, 0, !dbg !1152
  br i1 %cmp, label %if.then, label %if.else, !dbg !1153

if.then:                                          ; preds = %entry
  tail call fastcc void @process_rays3(ptr noundef nonnull %e, i64 noundef %process_id), !dbg !1154
  br label %if.end, !dbg !1154

if.else:                                          ; preds = %entry
  tail call void @create_visibility_tasks(ptr noundef nonnull %e, ptr noundef nonnull @process_rays2, i64 noundef %process_id) #13, !dbg !1155
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1156
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @element_completely_invisible(ptr nocapture noundef readonly %e1, ptr nocapture noundef readonly %e2, i64 noundef %process_id) local_unnamed_addr #0 !dbg !1157 {
entry:
  call void @llvm.dbg.value(metadata ptr %e1, metadata !1161, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata ptr %e2, metadata !1162, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1163, metadata !DIExpression()), !dbg !1165
  %patch = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 1, !dbg !1166
  %0 = load ptr, ptr %patch, align 8, !dbg !1166
  %plane_equ = getelementptr inbounds %struct._patch, ptr %0, i64 0, i32 9, !dbg !1167
  %ev1 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 15, !dbg !1168
  %1 = load ptr, ptr %ev1, align 8, !dbg !1168
  %ev2 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 16, !dbg !1169
  %2 = load ptr, ptr %ev2, align 8, !dbg !1169
  %ev3 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 17, !dbg !1170
  %3 = load ptr, ptr %ev3, align 8, !dbg !1170
  %call = tail call i64 @patch_intersection(ptr noundef nonnull %plane_equ, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %process_id) #13, !dbg !1171
  call void @llvm.dbg.value(metadata i64 %call, metadata !1164, metadata !DIExpression()), !dbg !1165
  %and = and i64 %call, 21, !dbg !1172
  %cmp = icmp eq i64 %and, 0, !dbg !1172
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1174

if.end:                                           ; preds = %entry
  %patch3 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 1, !dbg !1175
  %4 = load ptr, ptr %patch3, align 8, !dbg !1175
  %plane_equ4 = getelementptr inbounds %struct._patch, ptr %4, i64 0, i32 9, !dbg !1176
  %ev15 = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 15, !dbg !1177
  %5 = load ptr, ptr %ev15, align 8, !dbg !1177
  %ev27 = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 16, !dbg !1178
  %6 = load ptr, ptr %ev27, align 8, !dbg !1178
  %ev39 = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 17, !dbg !1179
  %7 = load ptr, ptr %ev39, align 8, !dbg !1179
  %call11 = tail call i64 @patch_intersection(ptr noundef nonnull %plane_equ4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %process_id) #13, !dbg !1180
  call void @llvm.dbg.value(metadata i64 %call11, metadata !1164, metadata !DIExpression()), !dbg !1165
  %and12 = and i64 %call11, 21, !dbg !1181
  %cmp13 = icmp eq i64 %and12, 0, !dbg !1181
  %. = zext i1 %cmp13 to i64, !dbg !1165
  br label %cleanup, !dbg !1165

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ 1, %entry ], [ %., %if.end ], !dbg !1165
  ret i64 %retval.0, !dbg !1183
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @leaf_element(ptr nocapture noundef readonly %elem, i64 noundef %process_id) local_unnamed_addr #0 !dbg !1184 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !1188, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1189, metadata !DIExpression()), !dbg !1191
  %0 = load ptr, ptr %elem, align 8, !dbg !1192
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %0) #13, !dbg !1194
  %center = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 3, !dbg !1195
  %1 = load ptr, ptr %center, align 8, !dbg !1195
  %cmp = icmp eq ptr %1, null, !dbg !1195
  %2 = zext i1 %cmp to i64
  call void @llvm.dbg.value(metadata i64 %2, metadata !1190, metadata !DIExpression()), !dbg !1191
  %3 = load ptr, ptr %elem, align 8, !dbg !1196
  %call4 = tail call i32 @pthread_mutex_unlock(ptr noundef %3) #13, !dbg !1198
  ret i64 %2, !dbg !1199
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_elemlist(i64 noundef %process_id) local_unnamed_addr #0 !dbg !1200 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1204, metadata !DIExpression()), !dbg !1206
  %0 = load i64, ptr @MAX_ELEMENTS, align 8, !dbg !1207
  %mul = mul i64 %0, 192, !dbg !1208
  %calloc = call ptr @calloc(i64 1, i64 %mul), !dbg !1209
  %1 = load ptr, ptr @global, align 8, !dbg !1210
  %element_buf = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 29, !dbg !1211
  store ptr %calloc, ptr %element_buf, align 8, !dbg !1212
  call void @llvm.dbg.value(metadata i64 0, metadata !1205, metadata !DIExpression()), !dbg !1206
  %sub25 = add nsw i64 %0, -1, !dbg !1213
  %cmp26 = icmp sgt i64 %0, 1, !dbg !1216
  br i1 %cmp26, label %for.body, label %for.end, !dbg !1217

for.body:                                         ; preds = %entry, %for.body
  %2 = phi ptr [ %.pre, %for.body ], [ %1, %entry ], !dbg !1218
  %i.027 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.027, metadata !1205, metadata !DIExpression()), !dbg !1206
  %element_buf3 = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 29, !dbg !1220
  %3 = load ptr, ptr %element_buf3, align 8, !dbg !1220
  %add = add nuw nsw i64 %i.027, 1, !dbg !1221
  %arrayidx = getelementptr inbounds %struct._element, ptr %3, i64 %add, !dbg !1218
  %center = getelementptr inbounds %struct._element, ptr %3, i64 %i.027, i32 3, !dbg !1222
  store ptr %arrayidx, ptr %center, align 8, !dbg !1223
  %call6 = tail call ptr @get_sharedlock(i64 noundef 1, i64 noundef %process_id) #13, !dbg !1224
  %4 = load ptr, ptr @global, align 8, !dbg !1225
  %element_buf7 = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 29, !dbg !1226
  %5 = load ptr, ptr %element_buf7, align 8, !dbg !1226
  %arrayidx8 = getelementptr inbounds %struct._element, ptr %5, i64 %i.027, !dbg !1225
  store ptr %call6, ptr %arrayidx8, align 8, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %add, metadata !1205, metadata !DIExpression()), !dbg !1206
  %6 = load i64, ptr @MAX_ELEMENTS, align 8, !dbg !1228
  %sub = add nsw i64 %6, -1, !dbg !1213
  %cmp = icmp slt i64 %add, %sub, !dbg !1216
  %.pre = load ptr, ptr @global, align 8, !dbg !1206
  br i1 %cmp, label %for.body, label %for.end, !dbg !1217, !llvm.loop !1229

for.end:                                          ; preds = %for.body, %entry
  %7 = phi ptr [ %1, %entry ], [ %.pre, %for.body ], !dbg !1231
  %sub.lcssa = phi i64 [ %sub25, %entry ], [ %sub, %for.body ], !dbg !1213
  %element_buf9 = getelementptr inbounds %struct.Global, ptr %7, i64 0, i32 29, !dbg !1232
  %8 = load ptr, ptr %element_buf9, align 8, !dbg !1232
  %center12 = getelementptr inbounds %struct._element, ptr %8, i64 %sub.lcssa, i32 3, !dbg !1233
  store ptr null, ptr %center12, align 8, !dbg !1234
  %call13 = tail call ptr @get_sharedlock(i64 noundef 1, i64 noundef %process_id) #13, !dbg !1235
  %9 = load ptr, ptr @global, align 8, !dbg !1236
  %element_buf14 = getelementptr inbounds %struct.Global, ptr %9, i64 0, i32 29, !dbg !1237
  %10 = load ptr, ptr %element_buf14, align 8, !dbg !1237
  %11 = load i64, ptr @MAX_ELEMENTS, align 8, !dbg !1238
  %sub15 = add nsw i64 %11, -1, !dbg !1239
  %arrayidx16 = getelementptr inbounds %struct._element, ptr %10, i64 %sub15, !dbg !1236
  store ptr %call13, ptr %arrayidx16, align 8, !dbg !1240
  %12 = load ptr, ptr @global, align 8, !dbg !1241
  %element_buf18 = getelementptr inbounds %struct.Global, ptr %12, i64 0, i32 29, !dbg !1242
  %13 = load ptr, ptr %element_buf18, align 8, !dbg !1242
  %free_element = getelementptr inbounds %struct.Global, ptr %12, i64 0, i32 27, !dbg !1243
  store ptr %13, ptr %free_element, align 8, !dbg !1244
  %14 = load i64, ptr @MAX_ELEMENTS, align 8, !dbg !1245
  %n_free_elements = getelementptr inbounds %struct.Global, ptr %12, i64 0, i32 28, !dbg !1246
  store i64 %14, ptr %n_free_elements, align 8, !dbg !1247
  %free_element_lock = getelementptr inbounds %struct.Global, ptr %12, i64 0, i32 26, !dbg !1248
  %call19 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %free_element_lock, ptr noundef null) #13, !dbg !1250
  ret void, !dbg !1251
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare !dbg !1252 ptr @get_sharedlock(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1255 i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_element(ptr noundef %elem, i64 noundef %process_id) local_unnamed_addr #0 !dbg !1268 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !1270, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1271, metadata !DIExpression()), !dbg !1272
  %0 = ptrtoint ptr %elem to i64, !dbg !1273
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i64 noundef %0), !dbg !1274
  %ev1 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 15, !dbg !1275
  %1 = load ptr, ptr %ev1, align 8, !dbg !1275
  tail call void @print_point(ptr noundef %1) #13, !dbg !1276
  %ev2 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 16, !dbg !1277
  %2 = load ptr, ptr %ev2, align 8, !dbg !1277
  tail call void @print_point(ptr noundef %2) #13, !dbg !1278
  %ev3 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 17, !dbg !1279
  %3 = load ptr, ptr %ev3, align 8, !dbg !1279
  tail call void @print_point(ptr noundef %3) #13, !dbg !1280
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5), !dbg !1281
  %rad = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 11, !dbg !1282
  tail call void @print_rgb(ptr noundef nonnull %rad) #13, !dbg !1283
  ret void, !dbg !1284
}

declare !dbg !1285 void @print_point(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foreach_interaction_in_element(ptr noundef %elem, ptr nocapture noundef readonly %func, i64 noundef %arg1, i64 noundef %process_id) local_unnamed_addr #0 !dbg !1288 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !1290, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata ptr %func, metadata !1291, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !1292, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1293, metadata !DIExpression()), !dbg !1295
  %cmp = icmp eq ptr %elem, null, !dbg !1296
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1298

if.end:                                           ; preds = %entry
  %interactions = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 7, !dbg !1299
  call void @llvm.dbg.value(metadata ptr undef, metadata !1294, metadata !DIExpression()), !dbg !1295
  %inter.05 = load ptr, ptr %interactions, align 8, !dbg !1301
  call void @llvm.dbg.value(metadata ptr %inter.05, metadata !1294, metadata !DIExpression()), !dbg !1295
  %tobool.not6 = icmp eq ptr %inter.05, null, !dbg !1302
  br i1 %tobool.not6, label %cleanup, label %for.body, !dbg !1302

for.body:                                         ; preds = %if.end, %for.body
  %inter.07 = phi ptr [ %inter.0, %for.body ], [ %inter.05, %if.end ]
  tail call void (ptr, ptr, i64, i64, ...) %func(ptr noundef nonnull %elem, ptr noundef nonnull %inter.07, i64 noundef %arg1, i64 noundef %process_id) #13, !dbg !1303
  call void @llvm.dbg.value(metadata ptr undef, metadata !1294, metadata !DIExpression()), !dbg !1295
  %inter.0 = load ptr, ptr %inter.07, align 8, !dbg !1301
  call void @llvm.dbg.value(metadata ptr %inter.0, metadata !1294, metadata !DIExpression()), !dbg !1295
  %tobool.not = icmp eq ptr %inter.0, null, !dbg !1302
  br i1 %tobool.not, label %cleanup, label %for.body, !dbg !1302, !llvm.loop !1305

cleanup:                                          ; preds = %for.body, %if.end, %entry
  ret void, !dbg !1307
}

declare !dbg !1308 void @four_center_points(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1311 void @center_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc float @compute_diff_disc_formfactor(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %e_src, ptr nocapture noundef readonly %e_dst) unnamed_addr #0 !dbg !1314 {
entry:
  %p_c = alloca %struct.Vertex, align 4
  %p_c1 = alloca %struct.Vertex, align 4
  %p_c2 = alloca %struct.Vertex, align 4
  %p_c3 = alloca %struct.Vertex, align 4
  call void @llvm.dbg.value(metadata ptr %p, metadata !1318, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata ptr %e_src, metadata !1319, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata ptr undef, metadata !1320, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata ptr %e_dst, metadata !1321, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i64 undef, metadata !1322, metadata !DIExpression()), !dbg !1332
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %p_c) #13, !dbg !1333
  call void @llvm.dbg.declare(metadata ptr %p_c, metadata !1323, metadata !DIExpression()), !dbg !1334
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %p_c1) #13, !dbg !1333
  call void @llvm.dbg.declare(metadata ptr %p_c1, metadata !1324, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %p_c2) #13, !dbg !1333
  call void @llvm.dbg.declare(metadata ptr %p_c2, metadata !1325, metadata !DIExpression()), !dbg !1336
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %p_c3) #13, !dbg !1333
  call void @llvm.dbg.declare(metadata ptr %p_c3, metadata !1326, metadata !DIExpression()), !dbg !1337
  %ev1 = getelementptr inbounds %struct._element, ptr %e_dst, i64 0, i32 15, !dbg !1338
  %0 = load ptr, ptr %ev1, align 8, !dbg !1338
  %ev2 = getelementptr inbounds %struct._element, ptr %e_dst, i64 0, i32 16, !dbg !1339
  %1 = load ptr, ptr %ev2, align 8, !dbg !1339
  %ev3 = getelementptr inbounds %struct._element, ptr %e_dst, i64 0, i32 17, !dbg !1340
  %2 = load ptr, ptr %ev3, align 8, !dbg !1340
  call void @four_center_points(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %p_c, ptr noundef nonnull %p_c1, ptr noundef nonnull %p_c2, ptr noundef nonnull %p_c3) #13, !dbg !1341
  %area = getelementptr inbounds %struct._element, ptr %e_dst, i64 0, i32 21, !dbg !1342
  %3 = load float, ptr %area, align 8, !dbg !1342
  %mul = fmul float %3, 2.500000e-01, !dbg !1343
  call void @llvm.dbg.value(metadata float %mul, metadata !1327, metadata !DIExpression()), !dbg !1332
  %patch = getelementptr inbounds %struct._element, ptr %e_dst, i64 0, i32 1, !dbg !1344
  %4 = load ptr, ptr %patch, align 8, !dbg !1344
  %plane_equ = getelementptr inbounds %struct._patch, ptr %4, i64 0, i32 9, !dbg !1345
  %call = call fastcc float @_diff_disc_formfactor(ptr noundef %p, ptr noundef %e_src, ptr noundef nonnull %p_c, float noundef %mul, ptr noundef nonnull %plane_equ), !dbg !1346
  call void @llvm.dbg.value(metadata float %call, metadata !1328, metadata !DIExpression()), !dbg !1332
  %5 = load ptr, ptr %patch, align 8, !dbg !1347
  %plane_equ5 = getelementptr inbounds %struct._patch, ptr %5, i64 0, i32 9, !dbg !1348
  %call7 = call fastcc float @_diff_disc_formfactor(ptr noundef %p, ptr noundef %e_src, ptr noundef nonnull %p_c1, float noundef %mul, ptr noundef nonnull %plane_equ5), !dbg !1349
  call void @llvm.dbg.value(metadata float %call7, metadata !1329, metadata !DIExpression()), !dbg !1332
  %6 = load ptr, ptr %patch, align 8, !dbg !1350
  %plane_equ9 = getelementptr inbounds %struct._patch, ptr %6, i64 0, i32 9, !dbg !1351
  %call11 = call fastcc float @_diff_disc_formfactor(ptr noundef %p, ptr noundef %e_src, ptr noundef nonnull %p_c2, float noundef %mul, ptr noundef nonnull %plane_equ9), !dbg !1352
  call void @llvm.dbg.value(metadata float %call11, metadata !1330, metadata !DIExpression()), !dbg !1332
  %7 = load ptr, ptr %patch, align 8, !dbg !1353
  %plane_equ13 = getelementptr inbounds %struct._patch, ptr %7, i64 0, i32 9, !dbg !1354
  %call15 = call fastcc float @_diff_disc_formfactor(ptr noundef %p, ptr noundef %e_src, ptr noundef nonnull %p_c3, float noundef %mul, ptr noundef nonnull %plane_equ13), !dbg !1355
  call void @llvm.dbg.value(metadata float %call15, metadata !1331, metadata !DIExpression()), !dbg !1332
  %cmp = fcmp olt float %call, 0.000000e+00, !dbg !1356
  br i1 %cmp, label %if.then, label %if.end, !dbg !1358

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1328, metadata !DIExpression()), !dbg !1332
  br label %if.end, !dbg !1359

if.end:                                           ; preds = %if.then, %entry
  %ff_c.0 = phi float [ 0.000000e+00, %if.then ], [ %call, %entry ], !dbg !1332
  call void @llvm.dbg.value(metadata float %ff_c.0, metadata !1328, metadata !DIExpression()), !dbg !1332
  %cmp16 = fcmp olt float %call7, 0.000000e+00, !dbg !1360
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !1362

if.then17:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1329, metadata !DIExpression()), !dbg !1332
  br label %if.end18, !dbg !1363

if.end18:                                         ; preds = %if.then17, %if.end
  %ff_c1.0 = phi float [ 0.000000e+00, %if.then17 ], [ %call7, %if.end ], !dbg !1332
  call void @llvm.dbg.value(metadata float %ff_c1.0, metadata !1329, metadata !DIExpression()), !dbg !1332
  %cmp19 = fcmp olt float %call11, 0.000000e+00, !dbg !1364
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1366

if.then20:                                        ; preds = %if.end18
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1330, metadata !DIExpression()), !dbg !1332
  br label %if.end21, !dbg !1367

if.end21:                                         ; preds = %if.then20, %if.end18
  %ff_c2.0 = phi float [ 0.000000e+00, %if.then20 ], [ %call11, %if.end18 ], !dbg !1332
  call void @llvm.dbg.value(metadata float %ff_c2.0, metadata !1330, metadata !DIExpression()), !dbg !1332
  %cmp22 = fcmp olt float %call15, 0.000000e+00, !dbg !1368
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !1370

if.then23:                                        ; preds = %if.end21
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1331, metadata !DIExpression()), !dbg !1332
  br label %if.end24, !dbg !1371

if.end24:                                         ; preds = %if.then23, %if.end21
  %ff_c3.0 = phi float [ 0.000000e+00, %if.then23 ], [ %call15, %if.end21 ], !dbg !1332
  call void @llvm.dbg.value(metadata float %ff_c3.0, metadata !1331, metadata !DIExpression()), !dbg !1332
  %add = fadd float %ff_c.0, %ff_c1.0, !dbg !1372
  %add25 = fadd float %add, %ff_c2.0, !dbg !1373
  %add26 = fadd float %add25, %ff_c3.0, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %p_c3) #13, !dbg !1375
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %p_c2) #13, !dbg !1375
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %p_c1) #13, !dbg !1375
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %p_c) #13, !dbg !1375
  ret float %add26, !dbg !1376
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @compute_interaction(ptr nocapture noundef readonly %e_src, ptr noundef %e_dst, ptr nocapture noundef writeonly %inter, i64 noundef %subdiv, i64 noundef %process_id) local_unnamed_addr #0 !dbg !1377 {
entry:
  call void @llvm.dbg.value(metadata ptr %e_src, metadata !1381, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata ptr %e_dst, metadata !1382, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata ptr %inter, metadata !1383, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %subdiv, metadata !1384, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1385, metadata !DIExpression()), !dbg !1386
  %and = and i64 %subdiv, 16, !dbg !1387
  %tobool.not = icmp eq i64 %and, 0, !dbg !1387
  %spec.select = select i1 %tobool.not, float -1.000000e+00, float 1.000000e+00, !dbg !1389
  %0 = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 5, !dbg !1390
  store float %spec.select, ptr %0, align 4, !dbg !1391
  tail call void @compute_formfactor(ptr noundef %e_src, ptr noundef %e_dst, ptr noundef nonnull %inter, i64 undef), !dbg !1392
  ret void, !dbg !1393
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @insert_interaction(ptr nocapture noundef %elem, ptr noundef %inter, i64 noundef %process_id) local_unnamed_addr #0 !dbg !1394 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !1396, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata ptr %inter, metadata !1397, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1398, metadata !DIExpression()), !dbg !1399
  %0 = load ptr, ptr %elem, align 8, !dbg !1400
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %0) #13, !dbg !1402
  %interactions = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 7, !dbg !1403
  %1 = load ptr, ptr %interactions, align 8, !dbg !1403
  store ptr %1, ptr %inter, align 8, !dbg !1404
  store ptr %inter, ptr %interactions, align 8, !dbg !1405
  %n_interactions = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 8, !dbg !1406
  %2 = load i64, ptr %n_interactions, align 8, !dbg !1407
  %inc = add nsw i64 %2, 1, !dbg !1407
  store i64 %inc, ptr %n_interactions, align 8, !dbg !1407
  %3 = load ptr, ptr %elem, align 8, !dbg !1408
  %call4 = tail call i32 @pthread_mutex_unlock(ptr noundef %3) #13, !dbg !1410
  ret void, !dbg !1411
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @delete_interaction(ptr nocapture noundef %elem, ptr noundef writeonly %prev, ptr noundef %inter, i64 noundef %process_id) local_unnamed_addr #0 !dbg !1412 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !1416, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr %prev, metadata !1417, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr %inter, metadata !1418, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1419, metadata !DIExpression()), !dbg !1420
  %0 = load ptr, ptr %elem, align 8, !dbg !1421
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %0) #13, !dbg !1423
  %cmp = icmp eq ptr %prev, null, !dbg !1424
  %1 = load ptr, ptr %inter, align 8, !dbg !1426
  %interactions = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 7
  %spec.select = select i1 %cmp, ptr %interactions, ptr %prev, !dbg !1427
  store ptr %1, ptr %spec.select, align 8, !dbg !1426
  %n_interactions = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 8, !dbg !1428
  %2 = load i64, ptr %n_interactions, align 8, !dbg !1429
  %dec = add nsw i64 %2, -1, !dbg !1429
  store i64 %dec, ptr %n_interactions, align 8, !dbg !1429
  %3 = load ptr, ptr %elem, align 8, !dbg !1430
  %call5 = tail call i32 @pthread_mutex_unlock(ptr noundef %3) #13, !dbg !1432
  tail call void @free_interaction(ptr noundef nonnull %inter, i64 undef), !dbg !1433
  ret void, !dbg !1434
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @delete_vis_undef_interaction(ptr nocapture noundef %elem, ptr noundef writeonly %prev, ptr nocapture noundef readonly %inter, i64 noundef %process_id) local_unnamed_addr #0 !dbg !1435 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !1437, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata ptr %prev, metadata !1438, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata ptr %inter, metadata !1439, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1440, metadata !DIExpression()), !dbg !1441
  %0 = load ptr, ptr %elem, align 8, !dbg !1442
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %0) #13, !dbg !1444
  %cmp = icmp eq ptr %prev, null, !dbg !1445
  %1 = load ptr, ptr %inter, align 8, !dbg !1447
  %vis_undef_inter = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 9
  %spec.select = select i1 %cmp, ptr %vis_undef_inter, ptr %prev, !dbg !1448
  store ptr %1, ptr %spec.select, align 8, !dbg !1447
  %n_vis_undef_inter = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 10, !dbg !1449
  %2 = load i64, ptr %n_vis_undef_inter, align 8, !dbg !1450
  %dec = add nsw i64 %2, -1, !dbg !1450
  store i64 %dec, ptr %n_vis_undef_inter, align 8, !dbg !1450
  %3 = load ptr, ptr %elem, align 8, !dbg !1451
  %call5 = tail call i32 @pthread_mutex_unlock(ptr noundef %3) #13, !dbg !1453
  ret void, !dbg !1454
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_interactionlist(i64 noundef %process_id) local_unnamed_addr #0 !dbg !1455 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1457, metadata !DIExpression()), !dbg !1459
  %0 = load i64, ptr @MAX_INTERACTIONS, align 8, !dbg !1460
  %mul = shl i64 %0, 5, !dbg !1461
  %calloc = call ptr @calloc(i64 1, i64 %mul), !dbg !1462
  %1 = load ptr, ptr @global, align 8, !dbg !1463
  %interaction_buf = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 33, !dbg !1464
  store ptr %calloc, ptr %interaction_buf, align 8, !dbg !1465
  call void @llvm.dbg.value(metadata i64 0, metadata !1458, metadata !DIExpression()), !dbg !1459
  %sub15 = add nsw i64 %0, -1, !dbg !1466
  %cmp16 = icmp sgt i64 %0, 1, !dbg !1469
  br i1 %cmp16, label %for.body.preheader, label %for.end, !dbg !1470

for.body.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1458, metadata !DIExpression()), !dbg !1459
  %interaction_buf322 = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 33, !dbg !1471
  %2 = load ptr, ptr %interaction_buf322, align 8, !dbg !1471
  %arrayidx23 = getelementptr inbounds %struct._interact, ptr %2, i64 1, !dbg !1472
  store ptr %arrayidx23, ptr %2, align 8, !dbg !1473
  call void @llvm.dbg.value(metadata i64 1, metadata !1458, metadata !DIExpression()), !dbg !1459
  %3 = load i64, ptr @MAX_INTERACTIONS, align 8, !dbg !1474
  %sub24 = add nsw i64 %3, -1, !dbg !1466
  %cmp25 = icmp sgt i64 %3, 2, !dbg !1469
  br i1 %cmp25, label %for.body.for.body_crit_edge, label %for.end.loopexit, !dbg !1470, !llvm.loop !1475

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %add26 = phi i64 [ %add, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load ptr, ptr @global, align 8, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %add26, metadata !1458, metadata !DIExpression()), !dbg !1459
  %interaction_buf3 = getelementptr inbounds %struct.Global, ptr %.pre, i64 0, i32 33, !dbg !1471
  %4 = load ptr, ptr %interaction_buf3, align 8, !dbg !1471
  %add = add nuw nsw i64 %add26, 1, !dbg !1477
  %arrayidx = getelementptr inbounds %struct._interact, ptr %4, i64 %add, !dbg !1472
  %arrayidx5 = getelementptr inbounds %struct._interact, ptr %4, i64 %add26, !dbg !1478
  store ptr %arrayidx, ptr %arrayidx5, align 8, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %add, metadata !1458, metadata !DIExpression()), !dbg !1459
  %5 = load i64, ptr @MAX_INTERACTIONS, align 8, !dbg !1474
  %sub = add nsw i64 %5, -1, !dbg !1466
  %cmp = icmp slt i64 %add, %sub, !dbg !1469
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit, !dbg !1470, !llvm.loop !1475

for.end.loopexit:                                 ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %sub.lcssa21 = phi i64 [ %sub24, %for.body.preheader ], [ %sub, %for.body.for.body_crit_edge ], !dbg !1466
  %.pre19 = load ptr, ptr @global, align 8, !dbg !1479
  br label %for.end, !dbg !1479

for.end:                                          ; preds = %for.end.loopexit, %entry
  %6 = phi ptr [ %1, %entry ], [ %.pre19, %for.end.loopexit ], !dbg !1479
  %sub.lcssa = phi i64 [ %sub15, %entry ], [ %sub.lcssa21, %for.end.loopexit ], !dbg !1466
  %interaction_buf6 = getelementptr inbounds %struct.Global, ptr %6, i64 0, i32 33, !dbg !1480
  %7 = load ptr, ptr %interaction_buf6, align 8, !dbg !1480
  %arrayidx8 = getelementptr inbounds %struct._interact, ptr %7, i64 %sub.lcssa, !dbg !1479
  store ptr null, ptr %arrayidx8, align 8, !dbg !1481
  %8 = load ptr, ptr @global, align 8, !dbg !1482
  %interaction_buf10 = getelementptr inbounds %struct.Global, ptr %8, i64 0, i32 33, !dbg !1483
  %9 = load ptr, ptr %interaction_buf10, align 8, !dbg !1483
  %free_interaction = getelementptr inbounds %struct.Global, ptr %8, i64 0, i32 31, !dbg !1484
  store ptr %9, ptr %free_interaction, align 8, !dbg !1485
  %10 = load i64, ptr @MAX_INTERACTIONS, align 8, !dbg !1486
  %n_free_interactions = getelementptr inbounds %struct.Global, ptr %8, i64 0, i32 32, !dbg !1487
  store i64 %10, ptr %n_free_interactions, align 8, !dbg !1488
  %free_interaction_lock = getelementptr inbounds %struct.Global, ptr %8, i64 0, i32 30, !dbg !1489
  %call11 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %free_interaction_lock, ptr noundef null) #13, !dbg !1491
  ret void, !dbg !1492
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_interaction(ptr noundef %inter, i64 noundef %process_id) local_unnamed_addr #9 !dbg !1493 {
entry:
  call void @llvm.dbg.value(metadata ptr %inter, metadata !1495, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1496, metadata !DIExpression()), !dbg !1497
  %0 = ptrtoint ptr %inter to i64, !dbg !1498
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %0), !dbg !1499
  %destination = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 1, !dbg !1500
  %1 = load ptr, ptr %destination, align 8, !dbg !1500
  %2 = ptrtoint ptr %1 to i64, !dbg !1501
  %patch = getelementptr inbounds %struct._element, ptr %1, i64 0, i32 1, !dbg !1502
  %3 = load ptr, ptr %patch, align 8, !dbg !1502
  %seq_no = getelementptr inbounds %struct._patch, ptr %3, i64 0, i32 17, !dbg !1503
  %4 = load i64, ptr %seq_no, align 8, !dbg !1503
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %2, i64 noundef %4), !dbg !1504
  %formfactor_out = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 2, !dbg !1505
  %5 = load float, ptr %formfactor_out, align 8, !dbg !1505
  %conv = fpext float %5 to double, !dbg !1506
  %visibility = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 5, !dbg !1507
  %6 = load float, ptr %visibility, align 4, !dbg !1507
  %conv3 = fpext float %6 to double, !dbg !1508
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %conv, double noundef %conv3), !dbg !1509
  %7 = load ptr, ptr %inter, align 8, !dbg !1510
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, ptr noundef %7), !dbg !1511
  ret void, !dbg !1512
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @gather_rays(ptr nocapture noundef %elem) unnamed_addr #0 !dbg !1513 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !1515, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 undef, metadata !1516, metadata !DIExpression()), !dbg !1523
  %interactions = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 7, !dbg !1524
  %0 = load ptr, ptr %interactions, align 8, !dbg !1524
  call void @llvm.dbg.value(metadata ptr %0, metadata !1522, metadata !DIExpression()), !dbg !1523
  %cmp = icmp eq ptr %0, null, !dbg !1526
  br i1 %cmp, label %if.then, label %while.body, !dbg !1527

if.then:                                          ; preds = %entry
  %rad_subtree = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 13, !dbg !1528
  store float 0.000000e+00, ptr %rad_subtree, align 8, !dbg !1530
  %g = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 13, i32 1, !dbg !1531
  store float 0.000000e+00, ptr %g, align 4, !dbg !1532
  %b = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 13, i32 2, !dbg !1533
  store float 0.000000e+00, ptr %b, align 8, !dbg !1534
  br label %cleanup, !dbg !1535

while.body:                                       ; preds = %entry, %while.body
  %inter.05 = phi ptr [ %10, %while.body ], [ %0, %entry ]
  %rad_elem.sroa.13.04 = phi float [ %add25, %while.body ], [ 0.000000e+00, %entry ]
  %rad_elem.sroa.8.03 = phi float [ %add23, %while.body ], [ 0.000000e+00, %entry ]
  %rad_elem.sroa.0.02 = phi float [ %add, %while.body ], [ 0.000000e+00, %entry ]
  call void @llvm.dbg.value(metadata ptr %inter.05, metadata !1522, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata float %rad_elem.sroa.13.04, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1523
  call void @llvm.dbg.value(metadata float %rad_elem.sroa.8.03, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1523
  call void @llvm.dbg.value(metadata float %rad_elem.sroa.0.02, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1523
  %formfactor_out = getelementptr inbounds %struct._interact, ptr %inter.05, i64 0, i32 2, !dbg !1536
  %1 = load float, ptr %formfactor_out, align 8, !dbg !1536
  %visibility = getelementptr inbounds %struct._interact, ptr %inter.05, i64 0, i32 5, !dbg !1538
  %2 = load float, ptr %visibility, align 4, !dbg !1538
  %mul = fmul float %1, %2, !dbg !1539
  call void @llvm.dbg.value(metadata float %mul, metadata !1518, metadata !DIExpression()), !dbg !1523
  %destination = getelementptr inbounds %struct._interact, ptr %inter.05, i64 0, i32 1, !dbg !1540
  %3 = load ptr, ptr %destination, align 8, !dbg !1540
  %4 = load ptr, ptr %3, align 8, !dbg !1542
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %4) #13, !dbg !1543
  %5 = load ptr, ptr %destination, align 8, !dbg !1544
  %rad = getelementptr inbounds %struct._element, ptr %5, i64 0, i32 11, !dbg !1545
  %6 = load float, ptr %rad, align 8, !dbg !1546
  %mul8 = fmul float %mul, %6, !dbg !1547
  call void @llvm.dbg.value(metadata float %mul8, metadata !1519, metadata !DIExpression()), !dbg !1523
  %g11 = getelementptr inbounds %struct._element, ptr %5, i64 0, i32 11, i32 1, !dbg !1548
  %7 = load float, ptr %g11, align 4, !dbg !1548
  %mul12 = fmul float %mul, %7, !dbg !1549
  call void @llvm.dbg.value(metadata float %mul12, metadata !1520, metadata !DIExpression()), !dbg !1523
  %b15 = getelementptr inbounds %struct._element, ptr %5, i64 0, i32 11, i32 2, !dbg !1550
  %8 = load float, ptr %b15, align 8, !dbg !1550
  %mul16 = fmul float %mul, %8, !dbg !1551
  call void @llvm.dbg.value(metadata float %mul16, metadata !1521, metadata !DIExpression()), !dbg !1523
  %9 = load ptr, ptr %5, align 8, !dbg !1552
  %call20 = tail call i32 @pthread_mutex_unlock(ptr noundef %9) #13, !dbg !1554
  %add = fadd float %rad_elem.sroa.0.02, %mul8, !dbg !1555
  call void @llvm.dbg.value(metadata float %add, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1523
  %add23 = fadd float %rad_elem.sroa.8.03, %mul12, !dbg !1556
  call void @llvm.dbg.value(metadata float %add23, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1523
  %add25 = fadd float %rad_elem.sroa.13.04, %mul16, !dbg !1557
  call void @llvm.dbg.value(metadata float %add25, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1523
  %10 = load ptr, ptr %inter.05, align 8, !dbg !1558
  call void @llvm.dbg.value(metadata ptr %10, metadata !1522, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata float %add23, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1523
  call void @llvm.dbg.value(metadata float %add, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1523
  %tobool.not = icmp eq ptr %10, null, !dbg !1559
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !1559, !llvm.loop !1560

while.end:                                        ; preds = %while.body
  %patch = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 1, !dbg !1562
  %11 = load ptr, ptr %patch, align 8, !dbg !1562
  %color = getelementptr inbounds %struct._patch, ptr %11, i64 0, i32 11, !dbg !1563
  %12 = load float, ptr %color, align 8, !dbg !1564
  %mul28 = fmul float %add, %12, !dbg !1565
  call void @llvm.dbg.value(metadata float %mul28, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1523
  %g31 = getelementptr inbounds %struct._patch, ptr %11, i64 0, i32 11, i32 1, !dbg !1566
  %13 = load float, ptr %g31, align 4, !dbg !1566
  %mul33 = fmul float %add23, %13, !dbg !1567
  call void @llvm.dbg.value(metadata float %mul33, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1523
  %b36 = getelementptr inbounds %struct._patch, ptr %11, i64 0, i32 11, i32 2, !dbg !1568
  %14 = load float, ptr %b36, align 8, !dbg !1568
  %mul38 = fmul float %add25, %14, !dbg !1569
  call void @llvm.dbg.value(metadata float %mul38, metadata !1517, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1523
  %rad_subtree39 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 13, !dbg !1570
  store float %mul28, ptr %rad_subtree39, align 8, !dbg !1571
  %rad_elem.sroa.8.0.rad_subtree39.sroa_idx = getelementptr inbounds i8, ptr %rad_subtree39, i64 4, !dbg !1571
  store float %mul33, ptr %rad_elem.sroa.8.0.rad_subtree39.sroa_idx, align 4, !dbg !1571
  %rad_elem.sroa.13.0.rad_subtree39.sroa_idx = getelementptr inbounds i8, ptr %rad_subtree39, i64 8, !dbg !1571
  store float %mul38, ptr %rad_elem.sroa.13.0.rad_subtree39.sroa_idx, align 8, !dbg !1571
  br label %cleanup, !dbg !1572

cleanup:                                          ; preds = %while.end, %if.then
  ret void, !dbg !1572
}

declare !dbg !1573 void @create_ray_task(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @elem_join_operation(ptr noundef %e, ptr nocapture noundef readonly %ec) unnamed_addr #0 !dbg !1574 {
entry:
  call void @llvm.dbg.value(metadata ptr %e, metadata !1578, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata ptr %ec, metadata !1579, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i64 undef, metadata !1580, metadata !DIExpression()), !dbg !1582
  %cmp.not3 = icmp eq ptr %e, null, !dbg !1583
  br i1 %cmp.not3, label %while.end, label %while.body, !dbg !1584

while.body:                                       ; preds = %entry, %if.end
  %e.addr.05 = phi ptr [ %20, %if.end ], [ %e, %entry ]
  %ec.addr.04 = phi ptr [ %e.addr.05, %if.end ], [ %ec, %entry ]
  call void @llvm.dbg.value(metadata ptr %e.addr.05, metadata !1578, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata ptr %ec.addr.04, metadata !1579, metadata !DIExpression()), !dbg !1582
  %0 = load ptr, ptr %e.addr.05, align 8, !dbg !1585
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %0) #13, !dbg !1588
  %rad_subtree = getelementptr inbounds %struct._element, ptr %ec.addr.04, i64 0, i32 13, !dbg !1589
  %1 = load float, ptr %rad_subtree, align 8, !dbg !1590
  %rad_subtree1 = getelementptr inbounds %struct._element, ptr %e.addr.05, i64 0, i32 13, !dbg !1591
  %2 = load float, ptr %rad_subtree1, align 8, !dbg !1592
  %3 = tail call float @llvm.fmuladd.f32(float %1, float 2.500000e-01, float %2), !dbg !1592
  store float %3, ptr %rad_subtree1, align 8, !dbg !1592
  %g = getelementptr inbounds %struct._element, ptr %ec.addr.04, i64 0, i32 13, i32 1, !dbg !1593
  %4 = load float, ptr %g, align 4, !dbg !1593
  %g5 = getelementptr inbounds %struct._element, ptr %e.addr.05, i64 0, i32 13, i32 1, !dbg !1594
  %5 = load float, ptr %g5, align 4, !dbg !1595
  %6 = tail call float @llvm.fmuladd.f32(float %4, float 2.500000e-01, float %5), !dbg !1595
  store float %6, ptr %g5, align 4, !dbg !1595
  %b = getelementptr inbounds %struct._element, ptr %ec.addr.04, i64 0, i32 13, i32 2, !dbg !1596
  %7 = load float, ptr %b, align 8, !dbg !1596
  %b8 = getelementptr inbounds %struct._element, ptr %e.addr.05, i64 0, i32 13, i32 2, !dbg !1597
  %8 = load float, ptr %b8, align 8, !dbg !1598
  %9 = tail call float @llvm.fmuladd.f32(float %7, float 2.500000e-01, float %8), !dbg !1598
  store float %9, ptr %b8, align 8, !dbg !1598
  %join_counter = getelementptr inbounds %struct._element, ptr %e.addr.05, i64 0, i32 14, !dbg !1599
  %10 = load i64, ptr %join_counter, align 8, !dbg !1600
  %dec = add nsw i64 %10, -1, !dbg !1600
  store i64 %dec, ptr %join_counter, align 8, !dbg !1600
  %cmp10.not = icmp eq i64 %dec, 0, !dbg !1601
  call void @llvm.dbg.value(metadata i1 %cmp10.not, metadata !1581, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1582
  br i1 %cmp10.not, label %if.end, label %if.then, !dbg !1602

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %e.addr.05, align 8, !dbg !1603
  %call16 = tail call i32 @pthread_mutex_unlock(ptr noundef %11) #13, !dbg !1607
  br label %cleanup, !dbg !1608

if.end:                                           ; preds = %while.body
  %rad_in = getelementptr inbounds %struct._element, ptr %e.addr.05, i64 0, i32 12, !dbg !1609
  %12 = load float, ptr %rad_in, align 4, !dbg !1610
  %add = fadd float %3, %12, !dbg !1611
  %patch = getelementptr inbounds %struct._element, ptr %e.addr.05, i64 0, i32 1, !dbg !1612
  %13 = load ptr, ptr %patch, align 8, !dbg !1612
  %emittance = getelementptr inbounds %struct._patch, ptr %13, i64 0, i32 12, !dbg !1613
  %14 = load float, ptr %emittance, align 4, !dbg !1614
  %add21 = fadd float %add, %14, !dbg !1615
  %rad = getelementptr inbounds %struct._element, ptr %e.addr.05, i64 0, i32 11, !dbg !1616
  store float %add21, ptr %rad, align 8, !dbg !1617
  %g24 = getelementptr inbounds %struct._element, ptr %e.addr.05, i64 0, i32 12, i32 1, !dbg !1618
  %15 = load float, ptr %g24, align 4, !dbg !1618
  %add27 = fadd float %6, %15, !dbg !1619
  %g30 = getelementptr inbounds %struct._patch, ptr %13, i64 0, i32 12, i32 1, !dbg !1620
  %16 = load float, ptr %g30, align 4, !dbg !1620
  %add31 = fadd float %add27, %16, !dbg !1621
  %g33 = getelementptr inbounds %struct._element, ptr %e.addr.05, i64 0, i32 11, i32 1, !dbg !1622
  store float %add31, ptr %g33, align 4, !dbg !1623
  %b35 = getelementptr inbounds %struct._element, ptr %e.addr.05, i64 0, i32 12, i32 2, !dbg !1624
  %17 = load float, ptr %b35, align 4, !dbg !1624
  %add38 = fadd float %9, %17, !dbg !1625
  %b41 = getelementptr inbounds %struct._patch, ptr %13, i64 0, i32 12, i32 2, !dbg !1626
  %18 = load float, ptr %b41, align 4, !dbg !1626
  %add42 = fadd float %add38, %18, !dbg !1627
  %b44 = getelementptr inbounds %struct._element, ptr %e.addr.05, i64 0, i32 11, i32 2, !dbg !1628
  store float %add42, ptr %b44, align 8, !dbg !1629
  %19 = load ptr, ptr %e.addr.05, align 8, !dbg !1630
  %call47 = tail call i32 @pthread_mutex_unlock(ptr noundef %19) #13, !dbg !1632
  call void @llvm.dbg.value(metadata ptr %e.addr.05, metadata !1579, metadata !DIExpression()), !dbg !1582
  %parent = getelementptr inbounds %struct._element, ptr %e.addr.05, i64 0, i32 2, !dbg !1633
  %20 = load ptr, ptr %parent, align 8, !dbg !1633
  call void @llvm.dbg.value(metadata ptr %20, metadata !1578, metadata !DIExpression()), !dbg !1582
  %cmp.not = icmp eq ptr %20, null, !dbg !1583
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !1584, !llvm.loop !1634

while.end:                                        ; preds = %if.end, %entry
  %ec.addr.0.lcssa = phi ptr [ %ec, %entry ], [ %e.addr.05, %if.end ]
  %21 = load ptr, ptr @global, align 8, !dbg !1636
  %avg_radiosity_lock = getelementptr inbounds %struct.Global, ptr %21, i64 0, i32 6, !dbg !1638
  %call48 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %avg_radiosity_lock) #13, !dbg !1639
  %rad49 = getelementptr inbounds %struct._element, ptr %ec.addr.0.lcssa, i64 0, i32 11, !dbg !1640
  %22 = load float, ptr %rad49, align 8, !dbg !1641
  %area = getelementptr inbounds %struct._element, ptr %ec.addr.0.lcssa, i64 0, i32 21, !dbg !1642
  %23 = load float, ptr %area, align 8, !dbg !1642
  %24 = load ptr, ptr @global, align 8, !dbg !1643
  %total_energy = getelementptr inbounds %struct.Global, ptr %24, i64 0, i32 9, !dbg !1644
  %25 = load float, ptr %total_energy, align 4, !dbg !1645
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %23, float %25), !dbg !1645
  store float %26, ptr %total_energy, align 4, !dbg !1645
  %g53 = getelementptr inbounds %struct._element, ptr %ec.addr.0.lcssa, i64 0, i32 11, i32 1, !dbg !1646
  %27 = load float, ptr %g53, align 4, !dbg !1646
  %28 = load float, ptr %area, align 8, !dbg !1647
  %g56 = getelementptr inbounds %struct.Global, ptr %24, i64 0, i32 9, i32 1, !dbg !1648
  %29 = load float, ptr %g56, align 4, !dbg !1649
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %28, float %29), !dbg !1649
  store float %30, ptr %g56, align 4, !dbg !1649
  %b58 = getelementptr inbounds %struct._element, ptr %ec.addr.0.lcssa, i64 0, i32 11, i32 2, !dbg !1650
  %31 = load float, ptr %b58, align 8, !dbg !1650
  %32 = load float, ptr %area, align 8, !dbg !1651
  %b61 = getelementptr inbounds %struct.Global, ptr %24, i64 0, i32 9, i32 2, !dbg !1652
  %33 = load float, ptr %b61, align 4, !dbg !1653
  %34 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %33), !dbg !1653
  store float %34, ptr %b61, align 4, !dbg !1653
  %35 = load float, ptr %area, align 8, !dbg !1654
  %total_patch_area = getelementptr inbounds %struct.Global, ptr %24, i64 0, i32 10, !dbg !1655
  %36 = load float, ptr %total_patch_area, align 8, !dbg !1656
  %add63 = fadd float %35, %36, !dbg !1656
  store float %add63, ptr %total_patch_area, align 8, !dbg !1656
  %avg_radiosity_lock64 = getelementptr inbounds %struct.Global, ptr %24, i64 0, i32 6, !dbg !1657
  %call65 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %avg_radiosity_lock64) #13, !dbg !1659
  br label %cleanup, !dbg !1660

cleanup:                                          ; preds = %while.end, %if.then
  ret void, !dbg !1660
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc float @_diff_disc_formfactor(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %e_src, ptr nocapture noundef readonly %p_disc, float noundef %area, ptr noundef %normal) unnamed_addr #0 !dbg !1661 {
entry:
  %vec_sd = alloca %struct.Vertex, align 4
  call void @llvm.dbg.value(metadata ptr %p, metadata !1665, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata ptr %e_src, metadata !1666, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata ptr %p_disc, metadata !1667, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata float %area, metadata !1668, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata ptr %normal, metadata !1669, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 undef, metadata !1670, metadata !DIExpression()), !dbg !1677
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vec_sd) #13, !dbg !1678
  call void @llvm.dbg.declare(metadata ptr %vec_sd, metadata !1671, metadata !DIExpression()), !dbg !1679
  %0 = load float, ptr %p_disc, align 4, !dbg !1680
  %1 = load float, ptr %p, align 4, !dbg !1681
  %sub = fsub float %0, %1, !dbg !1682
  store float %sub, ptr %vec_sd, align 4, !dbg !1683
  %y = getelementptr inbounds %struct.Vertex, ptr %p_disc, i64 0, i32 1, !dbg !1684
  %2 = load float, ptr %y, align 4, !dbg !1684
  %y3 = getelementptr inbounds %struct.Vertex, ptr %p, i64 0, i32 1, !dbg !1685
  %3 = load float, ptr %y3, align 4, !dbg !1685
  %sub4 = fsub float %2, %3, !dbg !1686
  %y5 = getelementptr inbounds %struct.Vertex, ptr %vec_sd, i64 0, i32 1, !dbg !1687
  store float %sub4, ptr %y5, align 4, !dbg !1688
  %z = getelementptr inbounds %struct.Vertex, ptr %p_disc, i64 0, i32 2, !dbg !1689
  %4 = load float, ptr %z, align 4, !dbg !1689
  %z6 = getelementptr inbounds %struct.Vertex, ptr %p, i64 0, i32 2, !dbg !1690
  %5 = load float, ptr %z6, align 4, !dbg !1690
  %sub7 = fsub float %4, %5, !dbg !1691
  %z8 = getelementptr inbounds %struct.Vertex, ptr %vec_sd, i64 0, i32 2, !dbg !1692
  store float %sub7, ptr %z8, align 4, !dbg !1693
  %mul13 = fmul float %sub4, %sub4, !dbg !1694
  %6 = tail call float @llvm.fmuladd.f32(float %sub, float %sub, float %mul13), !dbg !1695
  %7 = tail call float @llvm.fmuladd.f32(float %sub7, float %sub7, float %6), !dbg !1696
  call void @llvm.dbg.value(metadata float %7, metadata !1672, metadata !DIExpression()), !dbg !1677
  %8 = tail call float @llvm.fmuladd.f32(float %7, float 0x400921FB60000000, float %area), !dbg !1697
  %div = fdiv float %area, %8, !dbg !1698
  call void @llvm.dbg.value(metadata float %div, metadata !1673, metadata !DIExpression()), !dbg !1677
  %call = call float @normalize_vector(ptr noundef nonnull %vec_sd, ptr noundef nonnull %vec_sd) #13, !dbg !1699
  %patch = getelementptr inbounds %struct._element, ptr %e_src, i64 0, i32 1, !dbg !1700
  %9 = load ptr, ptr %patch, align 8, !dbg !1700
  %plane_equ = getelementptr inbounds %struct._patch, ptr %9, i64 0, i32 9, !dbg !1701
  %call16 = call float @inner_product(ptr noundef nonnull %vec_sd, ptr noundef nonnull %plane_equ) #13, !dbg !1702
  call void @llvm.dbg.value(metadata float %call16, metadata !1674, metadata !DIExpression()), !dbg !1677
  %call17 = call float @inner_product(ptr noundef nonnull %vec_sd, ptr noundef %normal) #13, !dbg !1703
  %fneg = fneg float %call17, !dbg !1704
  call void @llvm.dbg.value(metadata float %fneg, metadata !1675, metadata !DIExpression()), !dbg !1677
  %mul = fmul float %call16, %fneg, !dbg !1705
  call void @llvm.dbg.value(metadata float %mul, metadata !1676, metadata !DIExpression()), !dbg !1677
  %mul18 = fmul float %div, %mul, !dbg !1706
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vec_sd) #13, !dbg !1707
  ret float %mul18, !dbg !1708
}

declare !dbg !1709 float @normalize_vector(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1712 float @inner_product(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #10

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "elemman.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "8a25bc0df3d66d40bd0c4a994d632a01")
!2 = !{!3, !4, !11, !53}
!3 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "Interaction", file: !1, line: 442, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interact", file: !1, line: 435, size: 256, elements: !7)
!7 = !{!8, !10, !135, !136, !137, !138}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !1, line: 436, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "destination", scope: !6, file: !1, line: 437, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Element", file: !1, line: 414, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !1, line: 389, size: 1536, elements: !14)
!14 = !{!15, !54, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "elem_lock", scope: !13, file: !1, line: 390, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Shared_Lock", file: !1, line: 118, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 115, size: 320, elements: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !18, file: !1, line: 117, baseType: !21, size: 320)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !22, line: 72, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 67, size: 320, elements: !24)
!24 = !{!25, !47, !52}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !23, file: !22, line: 69, baseType: !26, size: 320)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !27, line: 22, size: 320, elements: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!28 = !{!29, !31, !33, !34, !35, !36, !38, !39}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !26, file: !27, line: 24, baseType: !30, size: 32)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !26, file: !27, line: 25, baseType: !32, size: 32, offset: 32)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !26, file: !27, line: 26, baseType: !30, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !26, file: !27, line: 28, baseType: !32, size: 32, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !26, file: !27, line: 32, baseType: !30, size: 32, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !26, file: !27, line: 34, baseType: !37, size: 16, offset: 160)
!37 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !26, file: !27, line: 35, baseType: !37, size: 16, offset: 176)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !26, file: !27, line: 36, baseType: !40, size: 128, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !41, line: 53, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !41, line: 49, size: 128, elements: !43)
!43 = !{!44, !46}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !42, file: !41, line: 51, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !42, file: !41, line: 52, baseType: !45, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !23, file: !22, line: 70, baseType: !48, size: 320)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 320, elements: !50)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !{!51}
!51 = !DISubrange(count: 40)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !23, file: !22, line: 71, baseType: !53, size: 64)
!53 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !13, file: !1, line: 391, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "Patch", file: !1, line: 349, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_patch", file: !1, line: 333, size: 1344, elements: !58)
!58 = !{!59, !81, !82, !83, !94, !95, !96, !97, !98, !99, !105, !106, !107, !108, !110, !111, !112, !114}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !57, file: !1, line: 334, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemVertex", file: !1, line: 257, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_elemvertex", file: !1, line: 252, size: 320, elements: !63)
!63 = !{!64, !72, !79, !80}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !62, file: !1, line: 253, baseType: !65, size: 96)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vertex", file: !66, line: 14, baseType: !67)
!66 = !DIFile(filename: "./glibps/../structs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "127502bb3b1b1ffc96492ea685802424")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 12, size: 96, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !67, file: !66, line: 13, baseType: !3, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !67, file: !66, line: 13, baseType: !3, size: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !67, file: !66, line: 13, baseType: !3, size: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !62, file: !1, line: 254, baseType: !73, size: 96, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "Rgb", file: !66, line: 24, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 22, size: 96, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !74, file: !66, line: 23, baseType: !3, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !74, file: !66, line: 23, baseType: !3, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !74, file: !66, line: 23, baseType: !3, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !62, file: !1, line: 255, baseType: !3, size: 32, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ev_lock", scope: !62, file: !1, line: 256, baseType: !16, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !57, file: !1, line: 334, baseType: !60, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !57, file: !1, line: 334, baseType: !60, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !57, file: !1, line: 335, baseType: !84, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "Edge", file: !1, line: 280, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_edge", file: !1, line: 276, size: 320, elements: !87)
!87 = !{!88, !89, !90, !92, !93}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !86, file: !1, line: 277, baseType: !60, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !86, file: !1, line: 277, baseType: !60, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ea", scope: !86, file: !1, line: 278, baseType: !91, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "eb", scope: !86, file: !1, line: 278, baseType: !91, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "edge_lock", scope: !86, file: !1, line: 279, baseType: !16, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !57, file: !1, line: 335, baseType: !84, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !57, file: !1, line: 335, baseType: !84, size: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !57, file: !1, line: 336, baseType: !65, size: 96, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !57, file: !1, line: 336, baseType: !65, size: 96, offset: 480)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "p3", scope: !57, file: !1, line: 336, baseType: !65, size: 96, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "plane_equ", scope: !57, file: !1, line: 337, baseType: !100, size: 128, offset: 672)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "PlaneEqu", file: !1, line: 305, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 301, size: 128, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !101, file: !1, line: 302, baseType: !65, size: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !101, file: !1, line: 303, baseType: !3, size: 32, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !57, file: !1, line: 338, baseType: !3, size: 32, offset: 800)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !57, file: !1, line: 339, baseType: !73, size: 96, offset: 832)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "emittance", scope: !57, file: !1, line: 341, baseType: !73, size: 96, offset: 928)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_positive", scope: !57, file: !1, line: 343, baseType: !109, size: 64, offset: 1024)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_negative", scope: !57, file: !1, line: 344, baseType: !109, size: 64, offset: 1088)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_parent", scope: !57, file: !1, line: 345, baseType: !109, size: 64, offset: 1152)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "el_root", scope: !57, file: !1, line: 347, baseType: !113, size: 64, offset: 1216)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "seq_no", scope: !57, file: !1, line: 348, baseType: !53, size: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !13, file: !1, line: 393, baseType: !113, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !13, file: !1, line: 394, baseType: !113, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !13, file: !1, line: 395, baseType: !113, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !13, file: !1, line: 396, baseType: !113, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !13, file: !1, line: 397, baseType: !113, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "interactions", scope: !13, file: !1, line: 399, baseType: !9, size: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "n_interactions", scope: !13, file: !1, line: 400, baseType: !53, size: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "vis_undef_inter", scope: !13, file: !1, line: 401, baseType: !9, size: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "n_vis_undef_inter", scope: !13, file: !1, line: 402, baseType: !53, size: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rad", scope: !13, file: !1, line: 404, baseType: !73, size: 96, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rad_in", scope: !13, file: !1, line: 406, baseType: !73, size: 96, offset: 800)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rad_subtree", scope: !13, file: !1, line: 407, baseType: !73, size: 96, offset: 896)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "join_counter", scope: !13, file: !1, line: 409, baseType: !53, size: 64, offset: 1024)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !13, file: !1, line: 411, baseType: !60, size: 64, offset: 1088)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !13, file: !1, line: 411, baseType: !60, size: 64, offset: 1152)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !13, file: !1, line: 411, baseType: !60, size: 64, offset: 1216)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !13, file: !1, line: 412, baseType: !84, size: 64, offset: 1280)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !13, file: !1, line: 412, baseType: !84, size: 64, offset: 1344)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !13, file: !1, line: 412, baseType: !84, size: 64, offset: 1408)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !13, file: !1, line: 413, baseType: !3, size: 32, offset: 1472)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_out", scope: !6, file: !1, line: 438, baseType: !3, size: 32, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_err", scope: !6, file: !1, line: 439, baseType: !3, size: 32, offset: 160)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "area_ratio", scope: !6, file: !1, line: 440, baseType: !3, size: 32, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !6, file: !1, line: 441, baseType: !3, size: 32, offset: 224)
!139 = !{i32 7, !"Dwarf Version", i32 5}
!140 = !{i32 2, !"Debug Info Version", i32 3}
!141 = !{i32 1, !"wchar_size", i32 4}
!142 = !{i32 7, !"PIC Level", i32 2}
!143 = !{i32 7, !"PIE Level", i32 2}
!144 = !{i32 7, !"uwtable", i32 2}
!145 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!146 = distinct !DISubprogram(name: "foreach_element_in_patch", scope: !1, file: !1, line: 1202, type: !147, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !152)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !55, !149, !53, !53}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{null, null}
!152 = !{!153, !154, !155, !156}
!153 = !DILocalVariable(name: "patch", arg: 1, scope: !146, file: !1, line: 1202, type: !55)
!154 = !DILocalVariable(name: "func", arg: 2, scope: !146, file: !1, line: 1202, type: !149)
!155 = !DILocalVariable(name: "arg1", arg: 3, scope: !146, file: !1, line: 1202, type: !53)
!156 = !DILocalVariable(name: "process_id", arg: 4, scope: !146, file: !1, line: 1202, type: !53)
!157 = !DILocation(line: 0, scope: !146)
!158 = !DILocation(line: 1204, column: 30, scope: !146)
!159 = !DILocation(line: 1204, column: 5, scope: !146)
!160 = !DILocation(line: 1205, column: 1, scope: !146)
!161 = distinct !DISubprogram(name: "_foreach_element", scope: !1, file: !1, line: 1208, type: !162, scopeLine: 1209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !11, !149, !53, !53}
!164 = !{!165, !166, !167, !168}
!165 = !DILocalVariable(name: "elem", arg: 1, scope: !161, file: !1, line: 1208, type: !11)
!166 = !DILocalVariable(name: "func", arg: 2, scope: !161, file: !1, line: 1208, type: !149)
!167 = !DILocalVariable(name: "arg1", arg: 3, scope: !161, file: !1, line: 1208, type: !53)
!168 = !DILocalVariable(name: "process_id", arg: 4, scope: !161, file: !1, line: 1208, type: !53)
!169 = !DILocation(line: 0, scope: !161)
!170 = !DILocation(line: 1210, column: 14, scope: !171)
!171 = distinct !DILexicalBlock(scope: !161, file: !1, line: 1210, column: 9)
!172 = !DILocation(line: 1210, column: 9, scope: !161)
!173 = !DILocation(line: 1214, column: 11, scope: !174)
!174 = distinct !DILexicalBlock(scope: !161, file: !1, line: 1214, column: 9)
!175 = !DILocation(line: 1214, column: 9, scope: !161)
!176 = !DILocation(line: 1216, column: 13, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !1, line: 1215, column: 9)
!178 = !DILocation(line: 1217, column: 37, scope: !177)
!179 = !DILocation(line: 1217, column: 13, scope: !177)
!180 = !DILocation(line: 1218, column: 37, scope: !177)
!181 = !DILocation(line: 1218, column: 13, scope: !177)
!182 = !DILocation(line: 1219, column: 37, scope: !177)
!183 = !DILocation(line: 1219, column: 13, scope: !177)
!184 = !DILocation(line: 1220, column: 9, scope: !177)
!185 = !DILocation(line: 1223, column: 5, scope: !161)
!186 = !DILocation(line: 1224, column: 1, scope: !161)
!187 = distinct !DISubprogram(name: "foreach_leaf_element_in_patch", scope: !1, file: !1, line: 1227, type: !147, scopeLine: 1228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !188)
!188 = !{!189, !190, !191, !192}
!189 = !DILocalVariable(name: "patch", arg: 1, scope: !187, file: !1, line: 1227, type: !55)
!190 = !DILocalVariable(name: "func", arg: 2, scope: !187, file: !1, line: 1227, type: !149)
!191 = !DILocalVariable(name: "arg1", arg: 3, scope: !187, file: !1, line: 1227, type: !53)
!192 = !DILocalVariable(name: "process_id", arg: 4, scope: !187, file: !1, line: 1227, type: !53)
!193 = !DILocation(line: 0, scope: !187)
!194 = !DILocation(line: 1229, column: 35, scope: !187)
!195 = !DILocation(line: 1229, column: 5, scope: !187)
!196 = !DILocation(line: 1230, column: 1, scope: !187)
!197 = distinct !DISubprogram(name: "_foreach_leaf_element", scope: !1, file: !1, line: 1233, type: !162, scopeLine: 1234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !198)
!198 = !{!199, !200, !201, !202}
!199 = !DILocalVariable(name: "elem", arg: 1, scope: !197, file: !1, line: 1233, type: !11)
!200 = !DILocalVariable(name: "func", arg: 2, scope: !197, file: !1, line: 1233, type: !149)
!201 = !DILocalVariable(name: "arg1", arg: 3, scope: !197, file: !1, line: 1233, type: !53)
!202 = !DILocalVariable(name: "process_id", arg: 4, scope: !197, file: !1, line: 1233, type: !53)
!203 = !DILocation(line: 0, scope: !197)
!204 = !DILocation(line: 1235, column: 14, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !1, line: 1235, column: 9)
!206 = !DILocation(line: 1235, column: 9, scope: !197)
!207 = !DILocation(line: 1239, column: 9, scope: !208)
!208 = distinct !DILexicalBlock(scope: !197, file: !1, line: 1239, column: 9)
!209 = !DILocation(line: 1239, column: 9, scope: !197)
!210 = !DILocation(line: 1240, column: 9, scope: !208)
!211 = !DILocation(line: 1243, column: 13, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !1, line: 1242, column: 9)
!213 = !DILocation(line: 1244, column: 42, scope: !212)
!214 = !DILocation(line: 1244, column: 13, scope: !212)
!215 = !DILocation(line: 1245, column: 42, scope: !212)
!216 = !DILocation(line: 1245, column: 13, scope: !212)
!217 = !DILocation(line: 1246, column: 42, scope: !212)
!218 = !DILocation(line: 1248, column: 1, scope: !197)
!219 = distinct !DISubprogram(name: "ff_refine_elements", scope: !1, file: !1, line: 1260, type: !220, scopeLine: 1261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !11, !11, !53, !53}
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230}
!223 = !DILocalVariable(name: "e1", arg: 1, scope: !219, file: !1, line: 1260, type: !11)
!224 = !DILocalVariable(name: "e2", arg: 2, scope: !219, file: !1, line: 1260, type: !11)
!225 = !DILocalVariable(name: "level", arg: 3, scope: !219, file: !1, line: 1260, type: !53)
!226 = !DILocalVariable(name: "process_id", arg: 4, scope: !219, file: !1, line: 1260, type: !53)
!227 = !DILocalVariable(name: "subdiv_advice", scope: !219, file: !1, line: 1262, type: !53)
!228 = !DILocalVariable(name: "i12", scope: !219, file: !1, line: 1263, type: !5)
!229 = !DILocalVariable(name: "i21", scope: !219, file: !1, line: 1263, type: !5)
!230 = !DILocalVariable(name: "inter", scope: !219, file: !1, line: 1264, type: !4)
!231 = !DILocation(line: 0, scope: !219)
!232 = !DILocation(line: 1263, column: 5, scope: !219)
!233 = !DILocation(line: 1263, column: 17, scope: !219)
!234 = !DILocation(line: 1263, column: 22, scope: !219)
!235 = !DILocation(line: 1275, column: 5, scope: !219)
!236 = !DILocation(line: 1276, column: 5, scope: !219)
!237 = !DILocation(line: 1279, column: 21, scope: !219)
!238 = !DILocation(line: 1282, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !219, file: !1, line: 1282, column: 9)
!240 = !DILocation(line: 1282, column: 9, scope: !219)
!241 = !DILocation(line: 1286, column: 14, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 1286, column: 14)
!243 = !DILocation(line: 1286, column: 14, scope: !239)
!244 = !DILocation(line: 1289, column: 21, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !1, line: 1287, column: 9)
!246 = !DILocation(line: 1290, column: 22, scope: !245)
!247 = !DILocation(line: 1291, column: 20, scope: !245)
!248 = !DILocation(line: 1291, column: 31, scope: !245)
!249 = !DILocation(line: 1292, column: 13, scope: !245)
!250 = !DILocation(line: 1294, column: 21, scope: !245)
!251 = !DILocation(line: 1295, column: 22, scope: !245)
!252 = !DILocation(line: 1296, column: 20, scope: !245)
!253 = !DILocation(line: 1296, column: 31, scope: !245)
!254 = !DILocation(line: 1297, column: 13, scope: !245)
!255 = !DILocation(line: 1322, column: 9, scope: !245)
!256 = !DILocation(line: 1324, column: 14, scope: !257)
!257 = distinct !DILexicalBlock(scope: !242, file: !1, line: 1324, column: 14)
!258 = !DILocation(line: 1324, column: 14, scope: !242)
!259 = !DILocation(line: 1327, column: 13, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !1, line: 1325, column: 9)
!261 = !DILocation(line: 1330, column: 37, scope: !260)
!262 = !DILocation(line: 1330, column: 54, scope: !260)
!263 = !DILocation(line: 1330, column: 13, scope: !260)
!264 = !DILocation(line: 1331, column: 37, scope: !260)
!265 = !DILocation(line: 1331, column: 13, scope: !260)
!266 = !DILocation(line: 1332, column: 37, scope: !260)
!267 = !DILocation(line: 1332, column: 13, scope: !260)
!268 = !DILocation(line: 1333, column: 37, scope: !260)
!269 = !DILocation(line: 1333, column: 13, scope: !260)
!270 = !DILocation(line: 1334, column: 9, scope: !260)
!271 = !DILocation(line: 1338, column: 13, scope: !272)
!272 = distinct !DILexicalBlock(scope: !257, file: !1, line: 1336, column: 9)
!273 = !DILocation(line: 1341, column: 41, scope: !272)
!274 = !DILocation(line: 1341, column: 54, scope: !272)
!275 = !DILocation(line: 1341, column: 13, scope: !272)
!276 = !DILocation(line: 1342, column: 41, scope: !272)
!277 = !DILocation(line: 1342, column: 13, scope: !272)
!278 = !DILocation(line: 1343, column: 41, scope: !272)
!279 = !DILocation(line: 1343, column: 13, scope: !272)
!280 = !DILocation(line: 1344, column: 41, scope: !272)
!281 = !DILocation(line: 1344, column: 13, scope: !272)
!282 = !DILocation(line: 1346, column: 1, scope: !219)
!283 = distinct !DISubprogram(name: "compute_formfactor", scope: !1, file: !1, line: 2294, type: !284, scopeLine: 2295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !286)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !11, !11, !4, !53}
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!287 = !DILocalVariable(name: "e_src", arg: 1, scope: !283, file: !1, line: 2294, type: !11)
!288 = !DILocalVariable(name: "e_dst", arg: 2, scope: !283, file: !1, line: 2294, type: !11)
!289 = !DILocalVariable(name: "inter", arg: 3, scope: !283, file: !1, line: 2294, type: !4)
!290 = !DILocalVariable(name: "process_id", arg: 4, scope: !283, file: !1, line: 2294, type: !53)
!291 = !DILocalVariable(name: "ff_c", scope: !283, file: !1, line: 2296, type: !3)
!292 = !DILocalVariable(name: "ff_1", scope: !283, file: !1, line: 2296, type: !3)
!293 = !DILocalVariable(name: "ff_2", scope: !283, file: !1, line: 2296, type: !3)
!294 = !DILocalVariable(name: "ff_3", scope: !283, file: !1, line: 2296, type: !3)
!295 = !DILocalVariable(name: "ff_c1", scope: !283, file: !1, line: 2297, type: !3)
!296 = !DILocalVariable(name: "ff_c2", scope: !283, file: !1, line: 2297, type: !3)
!297 = !DILocalVariable(name: "ff_c3", scope: !283, file: !1, line: 2297, type: !3)
!298 = !DILocalVariable(name: "ff_avg", scope: !283, file: !1, line: 2297, type: !3)
!299 = !DILocalVariable(name: "pc_src", scope: !283, file: !1, line: 2298, type: !65)
!300 = !DILocalVariable(name: "pc_dst", scope: !283, file: !1, line: 2298, type: !65)
!301 = !DILocalVariable(name: "pc1_src", scope: !283, file: !1, line: 2299, type: !65)
!302 = !DILocalVariable(name: "pc2_src", scope: !283, file: !1, line: 2299, type: !65)
!303 = !DILocalVariable(name: "pc3_src", scope: !283, file: !1, line: 2299, type: !65)
!304 = !DILocalVariable(name: "ff_min", scope: !283, file: !1, line: 2300, type: !3)
!305 = !DILocalVariable(name: "ff_max", scope: !283, file: !1, line: 2300, type: !3)
!306 = !DILocalVariable(name: "ff_err", scope: !283, file: !1, line: 2300, type: !3)
!307 = !DILocation(line: 0, scope: !283)
!308 = !DILocation(line: 2298, column: 5, scope: !283)
!309 = !DILocation(line: 2298, column: 12, scope: !283)
!310 = !DILocation(line: 2298, column: 20, scope: !283)
!311 = !DILocation(line: 2299, column: 5, scope: !283)
!312 = !DILocation(line: 2299, column: 12, scope: !283)
!313 = !DILocation(line: 2299, column: 21, scope: !283)
!314 = !DILocation(line: 2299, column: 30, scope: !283)
!315 = !DILocation(line: 2304, column: 33, scope: !283)
!316 = !DILocation(line: 2304, column: 49, scope: !283)
!317 = !DILocation(line: 2304, column: 65, scope: !283)
!318 = !DILocation(line: 2304, column: 5, scope: !283)
!319 = !DILocation(line: 2306, column: 27, scope: !283)
!320 = !DILocation(line: 2306, column: 43, scope: !283)
!321 = !DILocation(line: 2306, column: 59, scope: !283)
!322 = !DILocation(line: 2306, column: 5, scope: !283)
!323 = !DILocation(line: 2307, column: 13, scope: !283)
!324 = !DILocation(line: 2308, column: 13, scope: !283)
!325 = !DILocation(line: 2309, column: 13, scope: !283)
!326 = !DILocation(line: 2310, column: 13, scope: !283)
!327 = !DILocation(line: 2311, column: 15, scope: !328)
!328 = distinct !DILexicalBlock(scope: !283, file: !1, line: 2311, column: 9)
!329 = !DILocation(line: 2311, column: 9, scope: !283)
!330 = !DILocation(line: 2311, column: 21, scope: !328)
!331 = !DILocation(line: 2312, column: 15, scope: !332)
!332 = distinct !DILexicalBlock(scope: !283, file: !1, line: 2312, column: 9)
!333 = !DILocation(line: 2312, column: 9, scope: !283)
!334 = !DILocation(line: 2312, column: 21, scope: !332)
!335 = !DILocation(line: 2313, column: 15, scope: !336)
!336 = distinct !DILexicalBlock(scope: !283, file: !1, line: 2313, column: 9)
!337 = !DILocation(line: 2313, column: 9, scope: !283)
!338 = !DILocation(line: 2313, column: 21, scope: !336)
!339 = !DILocation(line: 2314, column: 15, scope: !340)
!340 = distinct !DILexicalBlock(scope: !283, file: !1, line: 2314, column: 9)
!341 = !DILocation(line: 2314, column: 9, scope: !283)
!342 = !DILocation(line: 2314, column: 21, scope: !340)
!343 = !DILocation(line: 2315, column: 20, scope: !283)
!344 = !DILocation(line: 2315, column: 28, scope: !283)
!345 = !DILocation(line: 2315, column: 36, scope: !283)
!346 = !DILocation(line: 2315, column: 45, scope: !283)
!347 = !DILocation(line: 2325, column: 50, scope: !283)
!348 = !DILocation(line: 2325, column: 12, scope: !283)
!349 = !DILocation(line: 2327, column: 50, scope: !283)
!350 = !DILocation(line: 2327, column: 12, scope: !283)
!351 = !DILocation(line: 2329, column: 50, scope: !283)
!352 = !DILocation(line: 2329, column: 12, scope: !283)
!353 = !DILocation(line: 2334, column: 16, scope: !354)
!354 = distinct !DILexicalBlock(scope: !283, file: !1, line: 2334, column: 9)
!355 = !DILocation(line: 2334, column: 9, scope: !283)
!356 = !DILocation(line: 2334, column: 25, scope: !354)
!357 = !DILocation(line: 2335, column: 16, scope: !358)
!358 = distinct !DILexicalBlock(scope: !283, file: !1, line: 2335, column: 9)
!359 = !DILocation(line: 2335, column: 9, scope: !283)
!360 = !DILocation(line: 2335, column: 25, scope: !358)
!361 = !DILocation(line: 2336, column: 16, scope: !362)
!362 = distinct !DILexicalBlock(scope: !283, file: !1, line: 2336, column: 9)
!363 = !DILocation(line: 2336, column: 9, scope: !283)
!364 = !DILocation(line: 2336, column: 25, scope: !362)
!365 = !DILocation(line: 2337, column: 16, scope: !366)
!366 = distinct !DILexicalBlock(scope: !283, file: !1, line: 2337, column: 9)
!367 = !DILocation(line: 2337, column: 9, scope: !283)
!368 = !DILocation(line: 2337, column: 25, scope: !366)
!369 = !DILocation(line: 2338, column: 16, scope: !370)
!370 = distinct !DILexicalBlock(scope: !283, file: !1, line: 2338, column: 9)
!371 = !DILocation(line: 2338, column: 9, scope: !283)
!372 = !DILocation(line: 2338, column: 25, scope: !370)
!373 = !DILocation(line: 2339, column: 16, scope: !374)
!374 = distinct !DILexicalBlock(scope: !283, file: !1, line: 2339, column: 9)
!375 = !DILocation(line: 2339, column: 9, scope: !283)
!376 = !DILocation(line: 2339, column: 25, scope: !374)
!377 = !DILocation(line: 2342, column: 16, scope: !378)
!378 = distinct !DILexicalBlock(scope: !283, file: !1, line: 2342, column: 9)
!379 = !DILocation(line: 2342, column: 9, scope: !283)
!380 = !DILocation(line: 2343, column: 9, scope: !378)
!381 = !DILocation(line: 2344, column: 12, scope: !283)
!382 = !DILocation(line: 2344, column: 27, scope: !283)
!383 = !DILocation(line: 2347, column: 22, scope: !283)
!384 = !DILocation(line: 2348, column: 26, scope: !385)
!385 = distinct !DILexicalBlock(scope: !283, file: !1, line: 2348, column: 9)
!386 = !DILocation(line: 2348, column: 16, scope: !385)
!387 = !DILocation(line: 2348, column: 9, scope: !283)
!388 = !DILocation(line: 2349, column: 9, scope: !385)
!389 = !DILocation(line: 2350, column: 12, scope: !283)
!390 = !DILocation(line: 2350, column: 27, scope: !283)
!391 = !DILocation(line: 2359, column: 12, scope: !283)
!392 = !DILocation(line: 2359, column: 24, scope: !283)
!393 = !DILocation(line: 2360, column: 1, scope: !283)
!394 = distinct !DISubprogram(name: "error_analysis", scope: !1, file: !1, line: 1358, type: !395, scopeLine: 1359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{!53, !11, !11, !4, !4, !53}
!397 = !{!398, !399, !400, !401, !402, !403}
!398 = !DILocalVariable(name: "e1", arg: 1, scope: !394, file: !1, line: 1358, type: !11)
!399 = !DILocalVariable(name: "e2", arg: 2, scope: !394, file: !1, line: 1358, type: !11)
!400 = !DILocalVariable(name: "inter12", arg: 3, scope: !394, file: !1, line: 1358, type: !4)
!401 = !DILocalVariable(name: "inter21", arg: 4, scope: !394, file: !1, line: 1358, type: !4)
!402 = !DILocalVariable(name: "process_id", arg: 5, scope: !394, file: !1, line: 1358, type: !53)
!403 = !DILocalVariable(name: "cc", scope: !394, file: !1, line: 1360, type: !53)
!404 = !DILocation(line: 0, scope: !394)
!405 = !DILocation(line: 1363, column: 35, scope: !394)
!406 = !DILocation(line: 1363, column: 42, scope: !394)
!407 = !DILocation(line: 1364, column: 34, scope: !394)
!408 = !DILocation(line: 1364, column: 47, scope: !394)
!409 = !DILocation(line: 1364, column: 60, scope: !394)
!410 = !DILocation(line: 1363, column: 10, scope: !394)
!411 = !DILocation(line: 1365, column: 9, scope: !412)
!412 = distinct !DILexicalBlock(scope: !394, file: !1, line: 1365, column: 9)
!413 = !DILocation(line: 1365, column: 9, scope: !394)
!414 = !DILocation(line: 1369, column: 35, scope: !394)
!415 = !DILocation(line: 1369, column: 42, scope: !394)
!416 = !DILocation(line: 1370, column: 34, scope: !394)
!417 = !DILocation(line: 1370, column: 47, scope: !394)
!418 = !DILocation(line: 1370, column: 60, scope: !394)
!419 = !DILocation(line: 1369, column: 10, scope: !394)
!420 = !DILocation(line: 1371, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !394, file: !1, line: 1371, column: 9)
!422 = !DILocation(line: 1376, column: 1, scope: !394)
!423 = distinct !DISubprogram(name: "get_interaction", scope: !1, file: !1, line: 2505, type: !424, scopeLine: 2506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{!4, !53}
!426 = !{!427, !428}
!427 = !DILocalVariable(name: "process_id", arg: 1, scope: !423, file: !1, line: 2505, type: !53)
!428 = !DILocalVariable(name: "p", scope: !423, file: !1, line: 2507, type: !4)
!429 = !DILocation(line: 0, scope: !423)
!430 = !DILocation(line: 2510, column: 27, scope: !431)
!431 = distinct !DILexicalBlock(scope: !423, file: !1, line: 2510, column: 5)
!432 = !DILocation(line: 2510, column: 35, scope: !431)
!433 = !DILocation(line: 2510, column: 6, scope: !431)
!434 = !DILocation(line: 2513, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !423, file: !1, line: 2513, column: 9)
!436 = !DILocation(line: 2513, column: 17, scope: !435)
!437 = !DILocation(line: 2513, column: 34, scope: !435)
!438 = !DILocation(line: 2513, column: 9, scope: !423)
!439 = !DILocation(line: 2515, column: 13, scope: !440)
!440 = distinct !DILexicalBlock(scope: !435, file: !1, line: 2514, column: 9)
!441 = !DILocation(line: 2516, column: 37, scope: !442)
!442 = distinct !DILexicalBlock(scope: !440, file: !1, line: 2516, column: 13)
!443 = !DILocation(line: 2516, column: 45, scope: !442)
!444 = !DILocation(line: 2516, column: 14, scope: !442)
!445 = !DILocation(line: 2517, column: 13, scope: !440)
!446 = !DILocation(line: 2522, column: 35, scope: !423)
!447 = !DILocation(line: 2522, column: 30, scope: !423)
!448 = !DILocation(line: 2523, column: 13, scope: !423)
!449 = !DILocation(line: 2523, column: 32, scope: !423)
!450 = !DILocation(line: 2526, column: 37, scope: !451)
!451 = distinct !DILexicalBlock(scope: !423, file: !1, line: 2526, column: 5)
!452 = !DILocation(line: 2526, column: 6, scope: !451)
!453 = !DILocation(line: 2530, column: 20, scope: !423)
!454 = !DILocation(line: 2533, column: 5, scope: !423)
!455 = distinct !DISubprogram(name: "insert_vis_undef_interaction", scope: !1, file: !1, line: 2473, type: !456, scopeLine: 2474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !11, !4, !53}
!458 = !{!459, !460, !461}
!459 = !DILocalVariable(name: "elem", arg: 1, scope: !455, file: !1, line: 2473, type: !11)
!460 = !DILocalVariable(name: "inter", arg: 2, scope: !455, file: !1, line: 2473, type: !4)
!461 = !DILocalVariable(name: "process_id", arg: 3, scope: !455, file: !1, line: 2473, type: !53)
!462 = !DILocation(line: 0, scope: !455)
!463 = !DILocation(line: 2476, column: 33, scope: !464)
!464 = distinct !DILexicalBlock(scope: !455, file: !1, line: 2476, column: 5)
!465 = !DILocation(line: 2476, column: 6, scope: !464)
!466 = !DILocation(line: 2477, column: 25, scope: !455)
!467 = !DILocation(line: 2477, column: 17, scope: !455)
!468 = !DILocation(line: 2478, column: 27, scope: !455)
!469 = !DILocation(line: 2479, column: 11, scope: !455)
!470 = !DILocation(line: 2479, column: 28, scope: !455)
!471 = !DILocation(line: 2480, column: 35, scope: !472)
!472 = distinct !DILexicalBlock(scope: !455, file: !1, line: 2480, column: 5)
!473 = !DILocation(line: 2480, column: 6, scope: !472)
!474 = !DILocation(line: 2481, column: 1, scope: !455)
!475 = distinct !DISubprogram(name: "subdivide_element", scope: !1, file: !1, line: 1694, type: !476, scopeLine: 1695, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !11, !53}
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!479 = !DILocalVariable(name: "e", arg: 1, scope: !475, file: !1, line: 1694, type: !11)
!480 = !DILocalVariable(name: "process_id", arg: 2, scope: !475, file: !1, line: 1694, type: !53)
!481 = !DILocalVariable(name: "quarter_area", scope: !475, file: !1, line: 1696, type: !3)
!482 = !DILocalVariable(name: "ev_12", scope: !475, file: !1, line: 1697, type: !60)
!483 = !DILocalVariable(name: "ev_23", scope: !475, file: !1, line: 1697, type: !60)
!484 = !DILocalVariable(name: "ev_31", scope: !475, file: !1, line: 1697, type: !60)
!485 = !DILocalVariable(name: "e_12_23", scope: !475, file: !1, line: 1698, type: !84)
!486 = !DILocalVariable(name: "e_23_31", scope: !475, file: !1, line: 1698, type: !84)
!487 = !DILocalVariable(name: "e_31_12", scope: !475, file: !1, line: 1698, type: !84)
!488 = !DILocalVariable(name: "enew", scope: !475, file: !1, line: 1699, type: !11)
!489 = !DILocalVariable(name: "ecenter", scope: !475, file: !1, line: 1699, type: !11)
!490 = !DILocalVariable(name: "rev_12", scope: !475, file: !1, line: 1700, type: !53)
!491 = !DILocalVariable(name: "rev_23", scope: !475, file: !1, line: 1700, type: !53)
!492 = !DILocalVariable(name: "rev_31", scope: !475, file: !1, line: 1700, type: !53)
!493 = !DILocation(line: 0, scope: !475)
!494 = !DILocation(line: 1703, column: 30, scope: !495)
!495 = distinct !DILexicalBlock(scope: !475, file: !1, line: 1703, column: 5)
!496 = !DILocation(line: 1703, column: 6, scope: !495)
!497 = !DILocation(line: 1706, column: 11, scope: !498)
!498 = distinct !DILexicalBlock(scope: !475, file: !1, line: 1706, column: 9)
!499 = !DILocation(line: 1706, column: 9, scope: !475)
!500 = !DILocation(line: 1713, column: 24, scope: !475)
!501 = !DILocation(line: 1713, column: 5, scope: !475)
!502 = !DILocation(line: 1714, column: 24, scope: !475)
!503 = !DILocation(line: 1714, column: 5, scope: !475)
!504 = !DILocation(line: 1715, column: 24, scope: !475)
!505 = !DILocation(line: 1715, column: 5, scope: !475)
!506 = !DILocation(line: 1716, column: 16, scope: !475)
!507 = !DILocation(line: 1716, column: 21, scope: !475)
!508 = !DILocation(line: 1716, column: 25, scope: !475)
!509 = !DILocation(line: 1717, column: 16, scope: !475)
!510 = !DILocation(line: 1717, column: 21, scope: !475)
!511 = !DILocation(line: 1717, column: 25, scope: !475)
!512 = !DILocation(line: 1718, column: 16, scope: !475)
!513 = !DILocation(line: 1718, column: 21, scope: !475)
!514 = !DILocation(line: 1718, column: 25, scope: !475)
!515 = !DILocation(line: 1721, column: 15, scope: !475)
!516 = !DILocation(line: 1722, column: 15, scope: !475)
!517 = !DILocation(line: 1723, column: 15, scope: !475)
!518 = !DILocation(line: 1726, column: 23, scope: !475)
!519 = !DILocation(line: 1726, column: 28, scope: !475)
!520 = !DILocation(line: 1729, column: 12, scope: !475)
!521 = !DILocation(line: 1731, column: 11, scope: !475)
!522 = !DILocation(line: 1731, column: 17, scope: !475)
!523 = !DILocation(line: 1732, column: 22, scope: !475)
!524 = !DILocation(line: 1732, column: 11, scope: !475)
!525 = !DILocation(line: 1732, column: 17, scope: !475)
!526 = !DILocation(line: 1733, column: 11, scope: !475)
!527 = !DILocation(line: 1733, column: 17, scope: !475)
!528 = !DILocation(line: 1734, column: 11, scope: !475)
!529 = !DILocation(line: 1734, column: 17, scope: !475)
!530 = !DILocation(line: 1735, column: 11, scope: !475)
!531 = !DILocation(line: 1735, column: 17, scope: !475)
!532 = !DILocation(line: 1736, column: 11, scope: !475)
!533 = !DILocation(line: 1736, column: 17, scope: !475)
!534 = !DILocation(line: 1737, column: 11, scope: !475)
!535 = !DILocation(line: 1737, column: 17, scope: !475)
!536 = !DILocation(line: 1738, column: 11, scope: !475)
!537 = !DILocation(line: 1738, column: 17, scope: !475)
!538 = !DILocation(line: 1739, column: 11, scope: !475)
!539 = !DILocation(line: 1739, column: 17, scope: !475)
!540 = !DILocation(line: 1740, column: 11, scope: !475)
!541 = !DILocation(line: 1740, column: 22, scope: !475)
!542 = !DILocation(line: 1743, column: 14, scope: !475)
!543 = !DILocation(line: 1744, column: 14, scope: !475)
!544 = !DILocation(line: 1745, column: 14, scope: !475)
!545 = !DILocation(line: 1747, column: 12, scope: !475)
!546 = !DILocation(line: 1748, column: 8, scope: !475)
!547 = !DILocation(line: 1748, column: 12, scope: !475)
!548 = !DILocation(line: 1749, column: 11, scope: !475)
!549 = !DILocation(line: 1749, column: 17, scope: !475)
!550 = !DILocation(line: 1750, column: 22, scope: !475)
!551 = !DILocation(line: 1750, column: 11, scope: !475)
!552 = !DILocation(line: 1750, column: 17, scope: !475)
!553 = !DILocation(line: 1751, column: 22, scope: !475)
!554 = !DILocation(line: 1751, column: 11, scope: !475)
!555 = !DILocation(line: 1751, column: 17, scope: !475)
!556 = !DILocation(line: 1752, column: 11, scope: !475)
!557 = !DILocation(line: 1752, column: 17, scope: !475)
!558 = !DILocation(line: 1753, column: 11, scope: !475)
!559 = !DILocation(line: 1753, column: 17, scope: !475)
!560 = !DILocation(line: 1754, column: 19, scope: !475)
!561 = !DILocation(line: 1754, column: 38, scope: !475)
!562 = !DILocation(line: 1754, column: 51, scope: !475)
!563 = !DILocation(line: 1754, column: 11, scope: !475)
!564 = !DILocation(line: 1754, column: 17, scope: !475)
!565 = !DILocation(line: 1755, column: 11, scope: !475)
!566 = !DILocation(line: 1755, column: 17, scope: !475)
!567 = !DILocation(line: 1756, column: 19, scope: !475)
!568 = !DILocation(line: 1756, column: 38, scope: !475)
!569 = !DILocation(line: 1756, column: 51, scope: !475)
!570 = !DILocation(line: 1756, column: 11, scope: !475)
!571 = !DILocation(line: 1756, column: 17, scope: !475)
!572 = !DILocation(line: 1757, column: 11, scope: !475)
!573 = !DILocation(line: 1757, column: 17, scope: !475)
!574 = !DILocation(line: 1758, column: 11, scope: !475)
!575 = !DILocation(line: 1758, column: 22, scope: !475)
!576 = !DILocation(line: 1761, column: 12, scope: !475)
!577 = !DILocation(line: 1762, column: 8, scope: !475)
!578 = !DILocation(line: 1762, column: 13, scope: !475)
!579 = !DILocation(line: 1763, column: 11, scope: !475)
!580 = !DILocation(line: 1763, column: 17, scope: !475)
!581 = !DILocation(line: 1764, column: 22, scope: !475)
!582 = !DILocation(line: 1764, column: 11, scope: !475)
!583 = !DILocation(line: 1764, column: 17, scope: !475)
!584 = !DILocation(line: 1765, column: 11, scope: !475)
!585 = !DILocation(line: 1765, column: 17, scope: !475)
!586 = !DILocation(line: 1766, column: 22, scope: !475)
!587 = !DILocation(line: 1766, column: 11, scope: !475)
!588 = !DILocation(line: 1766, column: 17, scope: !475)
!589 = !DILocation(line: 1767, column: 11, scope: !475)
!590 = !DILocation(line: 1767, column: 17, scope: !475)
!591 = !DILocation(line: 1768, column: 19, scope: !475)
!592 = !DILocation(line: 1768, column: 38, scope: !475)
!593 = !DILocation(line: 1768, column: 51, scope: !475)
!594 = !DILocation(line: 1768, column: 11, scope: !475)
!595 = !DILocation(line: 1768, column: 17, scope: !475)
!596 = !DILocation(line: 1769, column: 19, scope: !475)
!597 = !DILocation(line: 1769, column: 38, scope: !475)
!598 = !DILocation(line: 1769, column: 51, scope: !475)
!599 = !DILocation(line: 1769, column: 11, scope: !475)
!600 = !DILocation(line: 1769, column: 17, scope: !475)
!601 = !DILocation(line: 1770, column: 11, scope: !475)
!602 = !DILocation(line: 1770, column: 17, scope: !475)
!603 = !DILocation(line: 1771, column: 11, scope: !475)
!604 = !DILocation(line: 1771, column: 17, scope: !475)
!605 = !DILocation(line: 1772, column: 11, scope: !475)
!606 = !DILocation(line: 1772, column: 22, scope: !475)
!607 = !DILocation(line: 1775, column: 12, scope: !475)
!608 = !DILocation(line: 1776, column: 8, scope: !475)
!609 = !DILocation(line: 1776, column: 14, scope: !475)
!610 = !DILocation(line: 1777, column: 11, scope: !475)
!611 = !DILocation(line: 1777, column: 17, scope: !475)
!612 = !DILocation(line: 1778, column: 22, scope: !475)
!613 = !DILocation(line: 1778, column: 11, scope: !475)
!614 = !DILocation(line: 1778, column: 17, scope: !475)
!615 = !DILocation(line: 1779, column: 11, scope: !475)
!616 = !DILocation(line: 1779, column: 17, scope: !475)
!617 = !DILocation(line: 1780, column: 11, scope: !475)
!618 = !DILocation(line: 1780, column: 17, scope: !475)
!619 = !DILocation(line: 1781, column: 22, scope: !475)
!620 = !DILocation(line: 1781, column: 11, scope: !475)
!621 = !DILocation(line: 1781, column: 17, scope: !475)
!622 = !DILocation(line: 1782, column: 11, scope: !475)
!623 = !DILocation(line: 1782, column: 17, scope: !475)
!624 = !DILocation(line: 1783, column: 19, scope: !475)
!625 = !DILocation(line: 1783, column: 38, scope: !475)
!626 = !DILocation(line: 1783, column: 51, scope: !475)
!627 = !DILocation(line: 1783, column: 11, scope: !475)
!628 = !DILocation(line: 1783, column: 17, scope: !475)
!629 = !DILocation(line: 1784, column: 19, scope: !475)
!630 = !DILocation(line: 1784, column: 38, scope: !475)
!631 = !DILocation(line: 1784, column: 51, scope: !475)
!632 = !DILocation(line: 1784, column: 11, scope: !475)
!633 = !DILocation(line: 1784, column: 17, scope: !475)
!634 = !DILocation(line: 1785, column: 11, scope: !475)
!635 = !DILocation(line: 1785, column: 17, scope: !475)
!636 = !DILocation(line: 1786, column: 11, scope: !475)
!637 = !DILocation(line: 1786, column: 22, scope: !475)
!638 = !DILocation(line: 1789, column: 15, scope: !475)
!639 = !DILocation(line: 1793, column: 1, scope: !475)
!640 = !DISubprogram(name: "patch_intersection", scope: !1, file: !1, line: 459, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!641 = !DISubroutineType(types: !642)
!642 = !{!53, !643, !644, !644, !644, !53}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!645 = !{}
!646 = distinct !DISubprogram(name: "bf_error_analysis_list", scope: !1, file: !1, line: 1503, type: !456, scopeLine: 1504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !656}
!648 = !DILocalVariable(name: "elem", arg: 1, scope: !646, file: !1, line: 1503, type: !11)
!649 = !DILocalVariable(name: "i_list", arg: 2, scope: !646, file: !1, line: 1503, type: !4)
!650 = !DILocalVariable(name: "process_id", arg: 3, scope: !646, file: !1, line: 1503, type: !53)
!651 = !DILocalVariable(name: "subdiv_advice", scope: !646, file: !1, line: 1505, type: !53)
!652 = !DILocalVariable(name: "prev", scope: !646, file: !1, line: 1506, type: !4)
!653 = !DILocalVariable(name: "inter", scope: !646, file: !1, line: 1507, type: !4)
!654 = !DILocalVariable(name: "refine_inter", scope: !646, file: !1, line: 1508, type: !4)
!655 = !DILocalVariable(name: "i_len", scope: !646, file: !1, line: 1509, type: !53)
!656 = !DILocalVariable(name: "delta_n_inter", scope: !646, file: !1, line: 1510, type: !53)
!657 = !DILocation(line: 0, scope: !646)
!658 = !DILocation(line: 1513, column: 5, scope: !646)
!659 = !DILocation(line: 1516, column: 29, scope: !660)
!660 = distinct !DILexicalBlock(scope: !646, file: !1, line: 1514, column: 9)
!661 = !DILocation(line: 1518, column: 17, scope: !662)
!662 = distinct !DILexicalBlock(scope: !660, file: !1, line: 1518, column: 17)
!663 = !DILocation(line: 0, scope: !662)
!664 = !DILocation(line: 1518, column: 17, scope: !660)
!665 = !DILocation(line: 1523, column: 26, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !1, line: 1519, column: 17)
!667 = !DILocation(line: 1524, column: 17, scope: !666)
!668 = !DILocation(line: 1530, column: 30, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !1, line: 1530, column: 25)
!670 = distinct !DILexicalBlock(scope: !662, file: !1, line: 1526, column: 17)
!671 = !DILocation(line: 1530, column: 25, scope: !670)
!672 = !DILocation(line: 1533, column: 36, scope: !669)
!673 = !DILocation(line: 1536, column: 38, scope: !670)
!674 = !DILocation(line: 1540, column: 21, scope: !670)
!675 = distinct !{!675, !658, !676, !677, !678}
!676 = !DILocation(line: 1543, column: 9, scope: !646)
!677 = !{!"llvm.loop.mustprogress"}
!678 = !{!"llvm.loop.unroll.disable"}
!679 = !DILocation(line: 1546, column: 15, scope: !680)
!680 = distinct !DILexicalBlock(scope: !646, file: !1, line: 1546, column: 9)
!681 = !DILocation(line: 1546, column: 9, scope: !646)
!682 = !DILocation(line: 1548, column: 41, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !1, line: 1548, column: 13)
!684 = distinct !DILexicalBlock(scope: !680, file: !1, line: 1547, column: 9)
!685 = !DILocation(line: 1548, column: 14, scope: !683)
!686 = !DILocation(line: 1549, column: 32, scope: !684)
!687 = !DILocation(line: 1549, column: 24, scope: !684)
!688 = !DILocation(line: 1550, column: 32, scope: !684)
!689 = !DILocation(line: 1551, column: 19, scope: !684)
!690 = !DILocation(line: 1551, column: 34, scope: !684)
!691 = !DILocation(line: 1552, column: 43, scope: !692)
!692 = distinct !DILexicalBlock(scope: !684, file: !1, line: 1552, column: 13)
!693 = !DILocation(line: 1552, column: 14, scope: !692)
!694 = !DILocation(line: 1553, column: 9, scope: !684)
!695 = !DILocation(line: 1567, column: 1, scope: !646)
!696 = distinct !DISubprogram(name: "bf_error_analysis", scope: !1, file: !1, line: 1580, type: !697, scopeLine: 1581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{!53, !11, !4, !53}
!699 = !{!700, !701, !702, !703, !704, !705, !706}
!700 = !DILocalVariable(name: "elem", arg: 1, scope: !696, file: !1, line: 1580, type: !11)
!701 = !DILocalVariable(name: "inter", arg: 2, scope: !696, file: !1, line: 1580, type: !4)
!702 = !DILocalVariable(name: "process_id", arg: 3, scope: !696, file: !1, line: 1580, type: !53)
!703 = !DILocalVariable(name: "rad_avg", scope: !696, file: !1, line: 1582, type: !3)
!704 = !DILocalVariable(name: "total_error", scope: !696, file: !1, line: 1583, type: !3)
!705 = !DILocalVariable(name: "visibility_error", scope: !696, file: !1, line: 1584, type: !3)
!706 = !DILocalVariable(name: "vis_code", scope: !696, file: !1, line: 1585, type: !53)
!707 = !DILocation(line: 0, scope: !696)
!708 = !DILocation(line: 1594, column: 23, scope: !709)
!709 = distinct !DILexicalBlock(scope: !696, file: !1, line: 1594, column: 9)
!710 = !DILocation(line: 1594, column: 14, scope: !709)
!711 = !DILocation(line: 1594, column: 35, scope: !709)
!712 = !DILocation(line: 1600, column: 34, scope: !713)
!713 = distinct !DILexicalBlock(scope: !696, file: !1, line: 1600, column: 5)
!714 = !DILocation(line: 1600, column: 47, scope: !713)
!715 = !DILocation(line: 1600, column: 6, scope: !713)
!716 = !DILocation(line: 1602, column: 23, scope: !696)
!717 = !DILocation(line: 1602, column: 36, scope: !696)
!718 = !DILocation(line: 1602, column: 40, scope: !696)
!719 = !DILocation(line: 1603, column: 41, scope: !696)
!720 = !DILocation(line: 1603, column: 15, scope: !696)
!721 = !DILocation(line: 1604, column: 41, scope: !696)
!722 = !DILocation(line: 1604, column: 15, scope: !696)
!723 = !DILocation(line: 1604, column: 45, scope: !696)
!724 = !DILocation(line: 1606, column: 49, scope: !725)
!725 = distinct !DILexicalBlock(scope: !696, file: !1, line: 1606, column: 5)
!726 = !DILocation(line: 1606, column: 6, scope: !725)
!727 = !DILocation(line: 1610, column: 27, scope: !696)
!728 = !DILocation(line: 1610, column: 47, scope: !696)
!729 = !DILocation(line: 1611, column: 48, scope: !696)
!730 = !DILocation(line: 1611, column: 39, scope: !696)
!731 = !DILocation(line: 1611, column: 20, scope: !696)
!732 = !DILocation(line: 1612, column: 20, scope: !696)
!733 = !DILocation(line: 1612, column: 64, scope: !696)
!734 = !DILocation(line: 1615, column: 25, scope: !735)
!735 = distinct !DILexicalBlock(scope: !696, file: !1, line: 1615, column: 9)
!736 = !DILocation(line: 1615, column: 22, scope: !735)
!737 = !DILocation(line: 1615, column: 36, scope: !735)
!738 = !DILocation(line: 1615, column: 46, scope: !735)
!739 = !DILocation(line: 1615, column: 61, scope: !735)
!740 = !DILocation(line: 1615, column: 9, scope: !696)
!741 = !DILocation(line: 1617, column: 14, scope: !742)
!742 = distinct !DILexicalBlock(scope: !735, file: !1, line: 1617, column: 14)
!743 = !DILocation(line: 1617, column: 29, scope: !742)
!744 = !DILocation(line: 1617, column: 39, scope: !742)
!745 = !DILocation(line: 1617, column: 26, scope: !742)
!746 = !DILocation(line: 1617, column: 14, scope: !735)
!747 = !DILocation(line: 1621, column: 15, scope: !748)
!748 = distinct !DILexicalBlock(scope: !696, file: !1, line: 1621, column: 9)
!749 = !DILocation(line: 1621, column: 29, scope: !748)
!750 = !DILocation(line: 1621, column: 42, scope: !748)
!751 = !DILocation(line: 1621, column: 20, scope: !748)
!752 = !DILocation(line: 0, scope: !748)
!753 = !DILocation(line: 1621, column: 9, scope: !696)
!754 = !DILocation(line: 1623, column: 28, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !1, line: 1623, column: 17)
!756 = distinct !DILexicalBlock(scope: !748, file: !1, line: 1622, column: 9)
!757 = !DILocation(line: 1623, column: 17, scope: !756)
!758 = !DILocation(line: 1629, column: 42, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1629, column: 17)
!760 = distinct !DILexicalBlock(scope: !748, file: !1, line: 1628, column: 9)
!761 = !DILocation(line: 1629, column: 17, scope: !760)
!762 = !DILocation(line: 1635, column: 5, scope: !696)
!763 = !DILocation(line: 1636, column: 1, scope: !696)
!764 = distinct !DISubprogram(name: "bf_refine_element", scope: !1, file: !1, line: 1391, type: !765, scopeLine: 1392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{!53, !53, !11, !4, !53}
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775}
!768 = !DILocalVariable(name: "subdiv", arg: 1, scope: !764, file: !1, line: 1391, type: !53)
!769 = !DILocalVariable(name: "elem", arg: 2, scope: !764, file: !1, line: 1391, type: !11)
!770 = !DILocalVariable(name: "inter", arg: 3, scope: !764, file: !1, line: 1391, type: !4)
!771 = !DILocalVariable(name: "process_id", arg: 4, scope: !764, file: !1, line: 1391, type: !53)
!772 = !DILocalVariable(name: "e_dst", scope: !764, file: !1, line: 1393, type: !11)
!773 = !DILocalVariable(name: "pi", scope: !764, file: !1, line: 1394, type: !4)
!774 = !DILocalVariable(name: "visibility_val", scope: !764, file: !1, line: 1395, type: !3)
!775 = !DILocalVariable(name: "new_inter", scope: !764, file: !1, line: 1396, type: !53)
!776 = !DILocation(line: 0, scope: !764)
!777 = !DILocation(line: 1399, column: 22, scope: !764)
!778 = !DILocation(line: 1402, column: 9, scope: !779)
!779 = distinct !DILexicalBlock(scope: !764, file: !1, line: 1402, column: 9)
!780 = !DILocation(line: 1402, column: 9, scope: !764)
!781 = !DILocation(line: 1406, column: 13, scope: !782)
!782 = distinct !DILexicalBlock(scope: !779, file: !1, line: 1403, column: 9)
!783 = !DILocation(line: 1409, column: 53, scope: !784)
!784 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1409, column: 17)
!785 = !DILocation(line: 1409, column: 17, scope: !784)
!786 = !DILocation(line: 1409, column: 81, scope: !784)
!787 = !DILocation(line: 1409, column: 17, scope: !782)
!788 = !DILocation(line: 1411, column: 26, scope: !789)
!789 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1410, column: 17)
!790 = !DILocation(line: 1412, column: 47, scope: !789)
!791 = !DILocation(line: 1412, column: 21, scope: !789)
!792 = !DILocation(line: 1413, column: 25, scope: !789)
!793 = !DILocation(line: 1413, column: 36, scope: !789)
!794 = !DILocation(line: 1414, column: 57, scope: !789)
!795 = !DILocation(line: 1414, column: 21, scope: !789)
!796 = !DILocation(line: 1416, column: 17, scope: !789)
!797 = !DILocation(line: 1417, column: 53, scope: !798)
!798 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1417, column: 17)
!799 = !DILocation(line: 1417, column: 17, scope: !798)
!800 = !DILocation(line: 1417, column: 78, scope: !798)
!801 = !DILocation(line: 1417, column: 17, scope: !782)
!802 = !DILocation(line: 1419, column: 26, scope: !803)
!803 = distinct !DILexicalBlock(scope: !798, file: !1, line: 1418, column: 17)
!804 = !DILocation(line: 1420, column: 47, scope: !803)
!805 = !DILocation(line: 1420, column: 21, scope: !803)
!806 = !DILocation(line: 1421, column: 25, scope: !803)
!807 = !DILocation(line: 1421, column: 36, scope: !803)
!808 = !DILocation(line: 1422, column: 57, scope: !803)
!809 = !DILocation(line: 1422, column: 21, scope: !803)
!810 = !DILocation(line: 1423, column: 30, scope: !803)
!811 = !DILocation(line: 1424, column: 17, scope: !803)
!812 = !DILocation(line: 0, scope: !782)
!813 = !DILocation(line: 1425, column: 53, scope: !814)
!814 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1425, column: 17)
!815 = !DILocation(line: 1425, column: 17, scope: !814)
!816 = !DILocation(line: 1425, column: 79, scope: !814)
!817 = !DILocation(line: 1425, column: 17, scope: !782)
!818 = !DILocation(line: 1427, column: 26, scope: !819)
!819 = distinct !DILexicalBlock(scope: !814, file: !1, line: 1426, column: 17)
!820 = !DILocation(line: 1428, column: 47, scope: !819)
!821 = !DILocation(line: 1428, column: 21, scope: !819)
!822 = !DILocation(line: 1429, column: 25, scope: !819)
!823 = !DILocation(line: 1429, column: 36, scope: !819)
!824 = !DILocation(line: 1430, column: 57, scope: !819)
!825 = !DILocation(line: 1430, column: 21, scope: !819)
!826 = !DILocation(line: 1431, column: 30, scope: !819)
!827 = !DILocation(line: 1432, column: 17, scope: !819)
!828 = !DILocation(line: 1433, column: 53, scope: !829)
!829 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1433, column: 17)
!830 = !DILocation(line: 1433, column: 17, scope: !829)
!831 = !DILocation(line: 1433, column: 80, scope: !829)
!832 = !DILocation(line: 1433, column: 17, scope: !782)
!833 = !DILocation(line: 1435, column: 26, scope: !834)
!834 = distinct !DILexicalBlock(scope: !829, file: !1, line: 1434, column: 17)
!835 = !DILocation(line: 1436, column: 47, scope: !834)
!836 = !DILocation(line: 1436, column: 21, scope: !834)
!837 = !DILocation(line: 1437, column: 25, scope: !834)
!838 = !DILocation(line: 1437, column: 36, scope: !834)
!839 = !DILocation(line: 1438, column: 57, scope: !834)
!840 = !DILocation(line: 1438, column: 21, scope: !834)
!841 = !DILocation(line: 1439, column: 30, scope: !834)
!842 = !DILocation(line: 1440, column: 17, scope: !834)
!843 = !DILocation(line: 1446, column: 13, scope: !844)
!844 = distinct !DILexicalBlock(scope: !779, file: !1, line: 1443, column: 9)
!845 = !DILocation(line: 1452, column: 60, scope: !846)
!846 = distinct !DILexicalBlock(scope: !844, file: !1, line: 1452, column: 17)
!847 = !DILocation(line: 1452, column: 17, scope: !846)
!848 = !DILocation(line: 1452, column: 81, scope: !846)
!849 = !DILocation(line: 1452, column: 17, scope: !844)
!850 = !DILocation(line: 1454, column: 26, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !1, line: 1453, column: 17)
!852 = !DILocation(line: 1455, column: 54, scope: !851)
!853 = !DILocation(line: 1455, column: 21, scope: !851)
!854 = !DILocation(line: 1456, column: 25, scope: !851)
!855 = !DILocation(line: 1456, column: 36, scope: !851)
!856 = !DILocation(line: 1457, column: 21, scope: !851)
!857 = !DILocation(line: 1459, column: 17, scope: !851)
!858 = !DILocation(line: 1460, column: 60, scope: !859)
!859 = distinct !DILexicalBlock(scope: !844, file: !1, line: 1460, column: 17)
!860 = !DILocation(line: 1460, column: 17, scope: !859)
!861 = !DILocation(line: 1460, column: 78, scope: !859)
!862 = !DILocation(line: 1460, column: 17, scope: !844)
!863 = !DILocation(line: 1462, column: 26, scope: !864)
!864 = distinct !DILexicalBlock(scope: !859, file: !1, line: 1461, column: 17)
!865 = !DILocation(line: 1463, column: 54, scope: !864)
!866 = !DILocation(line: 1463, column: 21, scope: !864)
!867 = !DILocation(line: 1464, column: 25, scope: !864)
!868 = !DILocation(line: 1464, column: 36, scope: !864)
!869 = !DILocation(line: 1465, column: 21, scope: !864)
!870 = !DILocation(line: 1466, column: 30, scope: !864)
!871 = !DILocation(line: 1467, column: 17, scope: !864)
!872 = !DILocation(line: 0, scope: !844)
!873 = !DILocation(line: 1468, column: 60, scope: !874)
!874 = distinct !DILexicalBlock(scope: !844, file: !1, line: 1468, column: 17)
!875 = !DILocation(line: 1468, column: 17, scope: !874)
!876 = !DILocation(line: 1468, column: 79, scope: !874)
!877 = !DILocation(line: 1468, column: 17, scope: !844)
!878 = !DILocation(line: 1470, column: 26, scope: !879)
!879 = distinct !DILexicalBlock(scope: !874, file: !1, line: 1469, column: 17)
!880 = !DILocation(line: 1471, column: 54, scope: !879)
!881 = !DILocation(line: 1471, column: 21, scope: !879)
!882 = !DILocation(line: 1472, column: 25, scope: !879)
!883 = !DILocation(line: 1472, column: 36, scope: !879)
!884 = !DILocation(line: 1473, column: 21, scope: !879)
!885 = !DILocation(line: 1474, column: 30, scope: !879)
!886 = !DILocation(line: 1475, column: 17, scope: !879)
!887 = !DILocation(line: 1476, column: 60, scope: !888)
!888 = distinct !DILexicalBlock(scope: !844, file: !1, line: 1476, column: 17)
!889 = !DILocation(line: 1476, column: 17, scope: !888)
!890 = !DILocation(line: 1476, column: 80, scope: !888)
!891 = !DILocation(line: 1476, column: 17, scope: !844)
!892 = !DILocation(line: 1478, column: 26, scope: !893)
!893 = distinct !DILexicalBlock(scope: !888, file: !1, line: 1477, column: 17)
!894 = !DILocation(line: 1479, column: 54, scope: !893)
!895 = !DILocation(line: 1479, column: 21, scope: !893)
!896 = !DILocation(line: 1480, column: 25, scope: !893)
!897 = !DILocation(line: 1480, column: 36, scope: !893)
!898 = !DILocation(line: 1481, column: 21, scope: !893)
!899 = !DILocation(line: 1482, column: 30, scope: !893)
!900 = !DILocation(line: 1483, column: 17, scope: !893)
!901 = !DILocation(line: 0, scope: !779)
!902 = !DILocation(line: 1486, column: 5, scope: !764)
!903 = distinct !DISubprogram(name: "free_interaction", scope: !1, file: !1, line: 2538, type: !904, scopeLine: 2539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !4, !53}
!906 = !{!907, !908}
!907 = !DILocalVariable(name: "interaction", arg: 1, scope: !903, file: !1, line: 2538, type: !4)
!908 = !DILocalVariable(name: "process_id", arg: 2, scope: !903, file: !1, line: 2538, type: !53)
!909 = !DILocation(line: 0, scope: !903)
!910 = !DILocation(line: 2541, column: 27, scope: !911)
!911 = distinct !DILexicalBlock(scope: !903, file: !1, line: 2541, column: 5)
!912 = !DILocation(line: 2541, column: 35, scope: !911)
!913 = !DILocation(line: 2541, column: 6, scope: !911)
!914 = !DILocation(line: 2544, column: 25, scope: !903)
!915 = !DILocation(line: 2544, column: 33, scope: !903)
!916 = !DILocation(line: 2544, column: 23, scope: !903)
!917 = !DILocation(line: 2545, column: 5, scope: !903)
!918 = !DILocation(line: 2545, column: 13, scope: !903)
!919 = !DILocation(line: 2545, column: 30, scope: !903)
!920 = !DILocation(line: 2546, column: 13, scope: !903)
!921 = !DILocation(line: 2546, column: 32, scope: !903)
!922 = !DILocation(line: 2549, column: 37, scope: !923)
!923 = distinct !DILexicalBlock(scope: !903, file: !1, line: 2549, column: 5)
!924 = !DILocation(line: 2549, column: 6, scope: !923)
!925 = !DILocation(line: 2550, column: 1, scope: !903)
!926 = !DISubprogram(name: "pthread_mutex_lock", scope: !927, file: !927, line: 738, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!927 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!928 = !DISubroutineType(types: !929)
!929 = !{!30, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!931 = !DISubprogram(name: "pthread_mutex_unlock", scope: !927, file: !927, line: 756, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!932 = distinct !DISubprogram(name: "radiosity_converged", scope: !1, file: !1, line: 1650, type: !933, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{!53, !53}
!935 = !{!936, !937, !938, !939, !940}
!936 = !DILocalVariable(name: "process_id", arg: 1, scope: !932, file: !1, line: 1650, type: !53)
!937 = !DILocalVariable(name: "prev_total", scope: !932, file: !1, line: 1652, type: !3)
!938 = !DILocalVariable(name: "current_total", scope: !932, file: !1, line: 1652, type: !3)
!939 = !DILocalVariable(name: "difference", scope: !932, file: !1, line: 1653, type: !3)
!940 = !DILocalVariable(name: "rad", scope: !932, file: !1, line: 1654, type: !73)
!941 = !DILocation(line: 0, scope: !932)
!942 = !DILocation(line: 1654, column: 5, scope: !932)
!943 = !DILocation(line: 1654, column: 9, scope: !932)
!944 = !DILocation(line: 1657, column: 18, scope: !932)
!945 = !DILocation(line: 1657, column: 26, scope: !932)
!946 = !DILocation(line: 1657, column: 44, scope: !932)
!947 = !DILocation(line: 1657, column: 74, scope: !932)
!948 = !DILocation(line: 1657, column: 46, scope: !932)
!949 = !DILocation(line: 1658, column: 37, scope: !932)
!950 = !DILocation(line: 1658, column: 9, scope: !932)
!951 = !DILocation(line: 1659, column: 29, scope: !932)
!952 = !DILocation(line: 1659, column: 42, scope: !932)
!953 = !DILocation(line: 1659, column: 67, scope: !932)
!954 = !DILocation(line: 1659, column: 44, scope: !932)
!955 = !DILocation(line: 1660, column: 32, scope: !932)
!956 = !DILocation(line: 1660, column: 9, scope: !932)
!957 = !DILocation(line: 1663, column: 16, scope: !932)
!958 = !DILocation(line: 1664, column: 39, scope: !932)
!959 = !DILocation(line: 1664, column: 53, scope: !932)
!960 = !DILocation(line: 1664, column: 18, scope: !932)
!961 = !DILocation(line: 1666, column: 9, scope: !962)
!962 = distinct !DILexicalBlock(scope: !932, file: !1, line: 1666, column: 9)
!963 = !DILocation(line: 1666, column: 9, scope: !932)
!964 = !DILocation(line: 1668, column: 27, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !1, line: 1667, column: 9)
!966 = !DILocation(line: 1669, column: 30, scope: !965)
!967 = !DILocation(line: 1669, column: 19, scope: !965)
!968 = !DILocation(line: 1670, column: 17, scope: !965)
!969 = !DILocation(line: 1670, column: 19, scope: !965)
!970 = !DILocation(line: 1671, column: 17, scope: !965)
!971 = !DILocation(line: 1671, column: 19, scope: !965)
!972 = !DILocation(line: 1672, column: 13, scope: !965)
!973 = !DILocation(line: 1673, column: 25, scope: !965)
!974 = !DILocation(line: 1673, column: 33, scope: !965)
!975 = !DILocation(line: 1673, column: 13, scope: !965)
!976 = !DILocation(line: 1674, column: 13, scope: !965)
!977 = !DILocation(line: 1675, column: 13, scope: !965)
!978 = !DILocation(line: 1676, column: 44, scope: !965)
!979 = !DILocation(line: 1676, column: 55, scope: !965)
!980 = !DILocation(line: 1676, column: 13, scope: !965)
!981 = !DILocation(line: 1677, column: 9, scope: !965)
!982 = !DILocation(line: 1679, column: 24, scope: !983)
!983 = distinct !DILexicalBlock(scope: !932, file: !1, line: 1679, column: 9)
!984 = !DILocation(line: 1679, column: 20, scope: !983)
!985 = !DILocation(line: 0, scope: !983)
!986 = !DILocation(line: 1683, column: 1, scope: !932)
!987 = !DISubprogram(name: "print_rgb", scope: !1, file: !1, line: 1141, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !990}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!991 = !DISubprogram(name: "subdivide_edge", scope: !1, file: !1, line: 1147, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !84, !3, !53}
!994 = !DISubprogram(name: "create_edge", scope: !1, file: !1, line: 1146, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!995 = !DISubroutineType(types: !996)
!996 = !{!84, !60, !60, !53}
!997 = distinct !DISubprogram(name: "get_element", scope: !1, file: !1, line: 2134, type: !998, scopeLine: 2135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1000)
!998 = !DISubroutineType(types: !999)
!999 = !{!11, !53}
!1000 = !{!1001, !1002}
!1001 = !DILocalVariable(name: "process_id", arg: 1, scope: !997, file: !1, line: 2134, type: !53)
!1002 = !DILocalVariable(name: "p", scope: !997, file: !1, line: 2136, type: !11)
!1003 = !DILocation(line: 0, scope: !997)
!1004 = !DILocation(line: 2139, column: 27, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !997, file: !1, line: 2139, column: 5)
!1006 = !DILocation(line: 2139, column: 35, scope: !1005)
!1007 = !DILocation(line: 2139, column: 6, scope: !1005)
!1008 = !DILocation(line: 2142, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !997, file: !1, line: 2142, column: 9)
!1010 = !DILocation(line: 2142, column: 17, scope: !1009)
!1011 = !DILocation(line: 2142, column: 30, scope: !1009)
!1012 = !DILocation(line: 2142, column: 9, scope: !997)
!1013 = !DILocation(line: 2144, column: 13, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 2143, column: 9)
!1015 = !DILocation(line: 2145, column: 37, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 2145, column: 13)
!1017 = !DILocation(line: 2145, column: 45, scope: !1016)
!1018 = !DILocation(line: 2145, column: 14, scope: !1016)
!1019 = !DILocation(line: 2146, column: 13, scope: !1014)
!1020 = !DILocation(line: 2151, column: 31, scope: !997)
!1021 = !DILocation(line: 2151, column: 26, scope: !997)
!1022 = !DILocation(line: 2152, column: 13, scope: !997)
!1023 = !DILocation(line: 2152, column: 28, scope: !997)
!1024 = !DILocation(line: 2155, column: 37, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !997, file: !1, line: 2155, column: 5)
!1026 = !DILocation(line: 2155, column: 6, scope: !1025)
!1027 = !DILocation(line: 2158, column: 8, scope: !997)
!1028 = !DILocation(line: 2159, column: 27, scope: !997)
!1029 = !DILocation(line: 2168, column: 5, scope: !997)
!1030 = distinct !DISubprogram(name: "process_rays", scope: !1, file: !1, line: 1844, type: !476, scopeLine: 1845, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DILocalVariable(name: "e", arg: 1, scope: !1030, file: !1, line: 1844, type: !11)
!1033 = !DILocalVariable(name: "process_id", arg: 2, scope: !1030, file: !1, line: 1844, type: !53)
!1034 = !DILocalVariable(name: "i_list", scope: !1030, file: !1, line: 1846, type: !4)
!1035 = !DILocation(line: 0, scope: !1030)
!1036 = !DILocation(line: 1849, column: 30, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 1849, column: 5)
!1038 = !DILocation(line: 1849, column: 6, scope: !1037)
!1039 = !DILocation(line: 1850, column: 17, scope: !1030)
!1040 = !DILocation(line: 1852, column: 23, scope: !1030)
!1041 = !DILocation(line: 1853, column: 32, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 1853, column: 5)
!1043 = !DILocation(line: 1853, column: 6, scope: !1042)
!1044 = !DILocation(line: 1856, column: 5, scope: !1030)
!1045 = !DILocation(line: 1858, column: 12, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 1858, column: 9)
!1047 = !DILocation(line: 1858, column: 30, scope: !1046)
!1048 = !DILocation(line: 1858, column: 9, scope: !1030)
!1049 = !DILocation(line: 1859, column: 9, scope: !1046)
!1050 = !DILocation(line: 1863, column: 9, scope: !1046)
!1051 = !DILocation(line: 1864, column: 1, scope: !1030)
!1052 = distinct !DISubprogram(name: "process_rays3", scope: !1, file: !1, line: 1894, type: !476, scopeLine: 1895, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1053)
!1053 = !{!1054, !1055, !1056}
!1054 = !DILocalVariable(name: "e", arg: 1, scope: !1052, file: !1, line: 1894, type: !11)
!1055 = !DILocalVariable(name: "process_id", arg: 2, scope: !1052, file: !1, line: 1894, type: !53)
!1056 = !DILocalVariable(name: "rad_push", scope: !1052, file: !1, line: 1896, type: !73)
!1057 = !DILocation(line: 0, scope: !1052)
!1058 = !DILocation(line: 1900, column: 5, scope: !1052)
!1059 = !DILocation(line: 1903, column: 11, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 1903, column: 9)
!1061 = !DILocation(line: 1903, column: 9, scope: !1052)
!1062 = !DILocation(line: 1906, column: 29, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 1904, column: 9)
!1064 = !DILocation(line: 1906, column: 36, scope: !1063)
!1065 = !DILocation(line: 1906, column: 43, scope: !1063)
!1066 = !DILocation(line: 1906, column: 55, scope: !1063)
!1067 = !DILocation(line: 1906, column: 38, scope: !1063)
!1068 = !DILocation(line: 1907, column: 36, scope: !1063)
!1069 = !DILocation(line: 1907, column: 55, scope: !1063)
!1070 = !DILocation(line: 1907, column: 38, scope: !1063)
!1071 = !DILocation(line: 1908, column: 36, scope: !1063)
!1072 = !DILocation(line: 1908, column: 55, scope: !1063)
!1073 = !DILocation(line: 1908, column: 38, scope: !1063)
!1074 = !DILocation(line: 1910, column: 24, scope: !1063)
!1075 = !DILocation(line: 1910, column: 33, scope: !1063)
!1076 = !DILocation(line: 1911, column: 16, scope: !1063)
!1077 = !DILocation(line: 1911, column: 24, scope: !1063)
!1078 = !DILocation(line: 1911, column: 33, scope: !1063)
!1079 = !DILocation(line: 1912, column: 16, scope: !1063)
!1080 = !DILocation(line: 1912, column: 24, scope: !1063)
!1081 = !DILocation(line: 1912, column: 33, scope: !1063)
!1082 = !DILocation(line: 1913, column: 16, scope: !1063)
!1083 = !DILocation(line: 1913, column: 24, scope: !1063)
!1084 = !DILocation(line: 1913, column: 33, scope: !1063)
!1085 = !DILocation(line: 1914, column: 16, scope: !1063)
!1086 = !DILocation(line: 1914, column: 29, scope: !1063)
!1087 = !DILocation(line: 1917, column: 33, scope: !1063)
!1088 = !DILocation(line: 1917, column: 13, scope: !1063)
!1089 = !DILocation(line: 1918, column: 33, scope: !1063)
!1090 = !DILocation(line: 1918, column: 13, scope: !1063)
!1091 = !DILocation(line: 1919, column: 33, scope: !1063)
!1092 = !DILocation(line: 1919, column: 13, scope: !1063)
!1093 = !DILocation(line: 1920, column: 33, scope: !1063)
!1094 = !DILocation(line: 1920, column: 13, scope: !1063)
!1095 = !DILocation(line: 1930, column: 9, scope: !1063)
!1096 = !DILocation(line: 1935, column: 29, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 1935, column: 4)
!1098 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 1932, column: 9)
!1099 = !DILocation(line: 1935, column: 5, scope: !1097)
!1100 = !DILocation(line: 1937, column: 27, scope: !1098)
!1101 = !DILocation(line: 1937, column: 34, scope: !1098)
!1102 = !DILocation(line: 1937, column: 41, scope: !1098)
!1103 = !DILocation(line: 1937, column: 53, scope: !1098)
!1104 = !DILocation(line: 1937, column: 36, scope: !1098)
!1105 = !DILocation(line: 1937, column: 60, scope: !1098)
!1106 = !DILocation(line: 1937, column: 67, scope: !1098)
!1107 = !DILocation(line: 1937, column: 77, scope: !1098)
!1108 = !DILocation(line: 1937, column: 55, scope: !1098)
!1109 = !DILocation(line: 1937, column: 16, scope: !1098)
!1110 = !DILocation(line: 1937, column: 22, scope: !1098)
!1111 = !DILocation(line: 1938, column: 34, scope: !1098)
!1112 = !DILocation(line: 1938, column: 53, scope: !1098)
!1113 = !DILocation(line: 1938, column: 36, scope: !1098)
!1114 = !DILocation(line: 1938, column: 77, scope: !1098)
!1115 = !DILocation(line: 1938, column: 55, scope: !1098)
!1116 = !DILocation(line: 1938, column: 20, scope: !1098)
!1117 = !DILocation(line: 1938, column: 22, scope: !1098)
!1118 = !DILocation(line: 1939, column: 34, scope: !1098)
!1119 = !DILocation(line: 1939, column: 53, scope: !1098)
!1120 = !DILocation(line: 1939, column: 36, scope: !1098)
!1121 = !DILocation(line: 1939, column: 77, scope: !1098)
!1122 = !DILocation(line: 1939, column: 55, scope: !1098)
!1123 = !DILocation(line: 1939, column: 20, scope: !1098)
!1124 = !DILocation(line: 1939, column: 22, scope: !1098)
!1125 = !DILocation(line: 1941, column: 31, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 1941, column: 4)
!1127 = !DILocation(line: 1941, column: 5, scope: !1126)
!1128 = !DILocation(line: 1944, column: 37, scope: !1098)
!1129 = !DILocation(line: 1944, column: 13, scope: !1098)
!1130 = !DILocation(line: 1946, column: 1, scope: !1052)
!1131 = !DISubprogram(name: "create_visibility_tasks", scope: !1, file: !1, line: 704, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !11, !149, !53}
!1134 = distinct !DISubprogram(name: "process_rays2", scope: !1, file: !1, line: 1869, type: !476, scopeLine: 1870, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1135)
!1135 = !{!1136, !1137, !1138}
!1136 = !DILocalVariable(name: "e", arg: 1, scope: !1134, file: !1, line: 1869, type: !11)
!1137 = !DILocalVariable(name: "process_id", arg: 2, scope: !1134, file: !1, line: 1869, type: !53)
!1138 = !DILocalVariable(name: "i_list", scope: !1134, file: !1, line: 1871, type: !4)
!1139 = !DILocation(line: 0, scope: !1134)
!1140 = !DILocation(line: 1875, column: 30, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 1875, column: 5)
!1142 = !DILocation(line: 1875, column: 6, scope: !1141)
!1143 = !DILocation(line: 1876, column: 17, scope: !1134)
!1144 = !DILocation(line: 1878, column: 8, scope: !1134)
!1145 = !DILocation(line: 1878, column: 26, scope: !1134)
!1146 = !DILocation(line: 1879, column: 32, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 1879, column: 5)
!1148 = !DILocation(line: 1879, column: 6, scope: !1147)
!1149 = !DILocation(line: 1882, column: 5, scope: !1134)
!1150 = !DILocation(line: 1884, column: 12, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 1884, column: 9)
!1152 = !DILocation(line: 1884, column: 30, scope: !1151)
!1153 = !DILocation(line: 1884, column: 9, scope: !1134)
!1154 = !DILocation(line: 1885, column: 9, scope: !1151)
!1155 = !DILocation(line: 1889, column: 9, scope: !1151)
!1156 = !DILocation(line: 1890, column: 1, scope: !1134)
!1157 = distinct !DISubprogram(name: "element_completely_invisible", scope: !1, file: !1, line: 2105, type: !1158, scopeLine: 2106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1160)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!53, !11, !11, !53}
!1160 = !{!1161, !1162, !1163, !1164}
!1161 = !DILocalVariable(name: "e1", arg: 1, scope: !1157, file: !1, line: 2105, type: !11)
!1162 = !DILocalVariable(name: "e2", arg: 2, scope: !1157, file: !1, line: 2105, type: !11)
!1163 = !DILocalVariable(name: "process_id", arg: 3, scope: !1157, file: !1, line: 2105, type: !53)
!1164 = !DILocalVariable(name: "cc", scope: !1157, file: !1, line: 2107, type: !53)
!1165 = !DILocation(line: 0, scope: !1157)
!1166 = !DILocation(line: 2110, column: 35, scope: !1157)
!1167 = !DILocation(line: 2110, column: 42, scope: !1157)
!1168 = !DILocation(line: 2111, column: 34, scope: !1157)
!1169 = !DILocation(line: 2111, column: 47, scope: !1157)
!1170 = !DILocation(line: 2111, column: 60, scope: !1157)
!1171 = !DILocation(line: 2110, column: 10, scope: !1157)
!1172 = !DILocation(line: 2112, column: 9, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 2112, column: 9)
!1174 = !DILocation(line: 2112, column: 9, scope: !1157)
!1175 = !DILocation(line: 2116, column: 35, scope: !1157)
!1176 = !DILocation(line: 2116, column: 42, scope: !1157)
!1177 = !DILocation(line: 2117, column: 34, scope: !1157)
!1178 = !DILocation(line: 2117, column: 47, scope: !1157)
!1179 = !DILocation(line: 2117, column: 60, scope: !1157)
!1180 = !DILocation(line: 2116, column: 10, scope: !1157)
!1181 = !DILocation(line: 2118, column: 9, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 2118, column: 9)
!1183 = !DILocation(line: 2123, column: 1, scope: !1157)
!1184 = distinct !DISubprogram(name: "leaf_element", scope: !1, file: !1, line: 2185, type: !1185, scopeLine: 2186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1187)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!53, !11, !53}
!1187 = !{!1188, !1189, !1190}
!1188 = !DILocalVariable(name: "elem", arg: 1, scope: !1184, file: !1, line: 2185, type: !11)
!1189 = !DILocalVariable(name: "process_id", arg: 2, scope: !1184, file: !1, line: 2185, type: !53)
!1190 = !DILocalVariable(name: "leaf", scope: !1184, file: !1, line: 2187, type: !53)
!1191 = !DILocation(line: 0, scope: !1184)
!1192 = !DILocation(line: 2189, column: 33, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 2189, column: 5)
!1194 = !DILocation(line: 2189, column: 6, scope: !1193)
!1195 = !DILocation(line: 2190, column: 13, scope: !1184)
!1196 = !DILocation(line: 2191, column: 35, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 2191, column: 5)
!1198 = !DILocation(line: 2191, column: 6, scope: !1197)
!1199 = !DILocation(line: 2193, column: 5, scope: !1184)
!1200 = distinct !DISubprogram(name: "init_elemlist", scope: !1, file: !1, line: 2205, type: !1201, scopeLine: 2206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1203)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !53}
!1203 = !{!1204, !1205}
!1204 = !DILocalVariable(name: "process_id", arg: 1, scope: !1200, file: !1, line: 2205, type: !53)
!1205 = !DILocalVariable(name: "i", scope: !1200, file: !1, line: 2207, type: !53)
!1206 = !DILocation(line: 0, scope: !1200)
!1207 = !DILocation(line: 2209, column: 44, scope: !1200)
!1208 = !DILocation(line: 2209, column: 56, scope: !1200)
!1209 = !DILocation(line: 2209, column: 37, scope: !1200)
!1210 = !DILocation(line: 2209, column: 5, scope: !1200)
!1211 = !DILocation(line: 2209, column: 13, scope: !1200)
!1212 = !DILocation(line: 2209, column: 25, scope: !1200)
!1213 = !DILocation(line: 2213, column: 34, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 2213, column: 5)
!1215 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 2213, column: 5)
!1216 = !DILocation(line: 2213, column: 20, scope: !1214)
!1217 = !DILocation(line: 2213, column: 5, scope: !1215)
!1218 = !DILocation(line: 2215, column: 46, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 2214, column: 9)
!1220 = !DILocation(line: 2215, column: 54, scope: !1219)
!1221 = !DILocation(line: 2215, column: 67, scope: !1219)
!1222 = !DILocation(line: 2215, column: 36, scope: !1219)
!1223 = !DILocation(line: 2215, column: 43, scope: !1219)
!1224 = !DILocation(line: 2218, column: 19, scope: !1219)
!1225 = !DILocation(line: 2217, column: 13, scope: !1219)
!1226 = !DILocation(line: 2217, column: 21, scope: !1219)
!1227 = !DILocation(line: 2218, column: 17, scope: !1219)
!1228 = !DILocation(line: 2213, column: 22, scope: !1214)
!1229 = distinct !{!1229, !1217, !1230, !677, !678}
!1230 = !DILocation(line: 2219, column: 9, scope: !1215)
!1231 = !DILocation(line: 2220, column: 5, scope: !1200)
!1232 = !DILocation(line: 2220, column: 13, scope: !1200)
!1233 = !DILocation(line: 2220, column: 43, scope: !1200)
!1234 = !DILocation(line: 2220, column: 50, scope: !1200)
!1235 = !DILocation(line: 2222, column: 11, scope: !1200)
!1236 = !DILocation(line: 2221, column: 5, scope: !1200)
!1237 = !DILocation(line: 2221, column: 13, scope: !1200)
!1238 = !DILocation(line: 2221, column: 26, scope: !1200)
!1239 = !DILocation(line: 2221, column: 38, scope: !1200)
!1240 = !DILocation(line: 2222, column: 9, scope: !1200)
!1241 = !DILocation(line: 2224, column: 28, scope: !1200)
!1242 = !DILocation(line: 2224, column: 36, scope: !1200)
!1243 = !DILocation(line: 2224, column: 13, scope: !1200)
!1244 = !DILocation(line: 2224, column: 26, scope: !1200)
!1245 = !DILocation(line: 2225, column: 31, scope: !1200)
!1246 = !DILocation(line: 2225, column: 13, scope: !1200)
!1247 = !DILocation(line: 2225, column: 29, scope: !1200)
!1248 = !DILocation(line: 2226, column: 35, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 2226, column: 5)
!1250 = !DILocation(line: 2226, column: 6, scope: !1249)
!1251 = !DILocation(line: 2227, column: 1, scope: !1200)
!1252 = !DISubprogram(name: "get_sharedlock", scope: !1, file: !1, line: 1151, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!16, !53, !53}
!1255 = !DISubprogram(name: "pthread_mutex_init", scope: !927, file: !927, line: 725, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!30, !930, !1258}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !22, line: 36, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 32, size: 32, elements: !1262)
!1262 = !{!1263, !1267}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1261, file: !22, line: 34, baseType: !1264, size: 32)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 32, elements: !1265)
!1265 = !{!1266}
!1266 = !DISubrange(count: 4)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1261, file: !22, line: 35, baseType: !30, size: 32)
!1268 = distinct !DISubprogram(name: "print_element", scope: !1, file: !1, line: 2237, type: !476, scopeLine: 2238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1269)
!1269 = !{!1270, !1271}
!1270 = !DILocalVariable(name: "elem", arg: 1, scope: !1268, file: !1, line: 2237, type: !11)
!1271 = !DILocalVariable(name: "process_id", arg: 2, scope: !1268, file: !1, line: 2237, type: !53)
!1272 = !DILocation(line: 0, scope: !1268)
!1273 = !DILocation(line: 2239, column: 32, scope: !1268)
!1274 = !DILocation(line: 2239, column: 5, scope: !1268)
!1275 = !DILocation(line: 2241, column: 25, scope: !1268)
!1276 = !DILocation(line: 2241, column: 5, scope: !1268)
!1277 = !DILocation(line: 2242, column: 25, scope: !1268)
!1278 = !DILocation(line: 2242, column: 5, scope: !1268)
!1279 = !DILocation(line: 2243, column: 25, scope: !1268)
!1280 = !DILocation(line: 2243, column: 5, scope: !1268)
!1281 = !DILocation(line: 2245, column: 5, scope: !1268)
!1282 = !DILocation(line: 2245, column: 52, scope: !1268)
!1283 = !DILocation(line: 2245, column: 34, scope: !1268)
!1284 = !DILocation(line: 2246, column: 1, scope: !1268)
!1285 = !DISubprogram(name: "print_point", scope: !1, file: !1, line: 1140, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !644}
!1288 = distinct !DISubprogram(name: "foreach_interaction_in_element", scope: !1, file: !1, line: 2270, type: !162, scopeLine: 2271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1289)
!1289 = !{!1290, !1291, !1292, !1293, !1294}
!1290 = !DILocalVariable(name: "elem", arg: 1, scope: !1288, file: !1, line: 2270, type: !11)
!1291 = !DILocalVariable(name: "func", arg: 2, scope: !1288, file: !1, line: 2270, type: !149)
!1292 = !DILocalVariable(name: "arg1", arg: 3, scope: !1288, file: !1, line: 2270, type: !53)
!1293 = !DILocalVariable(name: "process_id", arg: 4, scope: !1288, file: !1, line: 2270, type: !53)
!1294 = !DILocalVariable(name: "inter", scope: !1288, file: !1, line: 2272, type: !4)
!1295 = !DILocation(line: 0, scope: !1288)
!1296 = !DILocation(line: 2274, column: 14, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 2274, column: 9)
!1298 = !DILocation(line: 2274, column: 9, scope: !1288)
!1299 = !DILocation(line: 2277, column: 24, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 2277, column: 5)
!1301 = !DILocation(line: 0, scope: !1300)
!1302 = !DILocation(line: 2277, column: 5, scope: !1300)
!1303 = !DILocation(line: 2278, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 2277, column: 5)
!1305 = distinct !{!1305, !1302, !1306, !677, !678}
!1306 = !DILocation(line: 2278, column: 45, scope: !1300)
!1307 = !DILocation(line: 2279, column: 1, scope: !1288)
!1308 = !DISubprogram(name: "four_center_points", scope: !1, file: !1, line: 1139, type: !1309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !644, !644, !644, !644, !644, !644, !644}
!1311 = !DISubprogram(name: "center_point", scope: !1, file: !1, line: 1138, type: !1312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !644, !644, !644, !644}
!1314 = distinct !DISubprogram(name: "compute_diff_disc_formfactor", scope: !1, file: !1, line: 2388, type: !1315, scopeLine: 2389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1317)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!3, !644, !11, !644, !11, !53}
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331}
!1318 = !DILocalVariable(name: "p", arg: 1, scope: !1314, file: !1, line: 2388, type: !644)
!1319 = !DILocalVariable(name: "e_src", arg: 2, scope: !1314, file: !1, line: 2388, type: !11)
!1320 = !DILocalVariable(name: "p_disc", arg: 3, scope: !1314, file: !1, line: 2388, type: !644)
!1321 = !DILocalVariable(name: "e_dst", arg: 4, scope: !1314, file: !1, line: 2388, type: !11)
!1322 = !DILocalVariable(name: "process_id", arg: 5, scope: !1314, file: !1, line: 2388, type: !53)
!1323 = !DILocalVariable(name: "p_c", scope: !1314, file: !1, line: 2390, type: !65)
!1324 = !DILocalVariable(name: "p_c1", scope: !1314, file: !1, line: 2390, type: !65)
!1325 = !DILocalVariable(name: "p_c2", scope: !1314, file: !1, line: 2390, type: !65)
!1326 = !DILocalVariable(name: "p_c3", scope: !1314, file: !1, line: 2390, type: !65)
!1327 = !DILocalVariable(name: "quarter_area", scope: !1314, file: !1, line: 2391, type: !3)
!1328 = !DILocalVariable(name: "ff_c", scope: !1314, file: !1, line: 2392, type: !3)
!1329 = !DILocalVariable(name: "ff_c1", scope: !1314, file: !1, line: 2392, type: !3)
!1330 = !DILocalVariable(name: "ff_c2", scope: !1314, file: !1, line: 2392, type: !3)
!1331 = !DILocalVariable(name: "ff_c3", scope: !1314, file: !1, line: 2392, type: !3)
!1332 = !DILocation(line: 0, scope: !1314)
!1333 = !DILocation(line: 2390, column: 5, scope: !1314)
!1334 = !DILocation(line: 2390, column: 12, scope: !1314)
!1335 = !DILocation(line: 2390, column: 17, scope: !1314)
!1336 = !DILocation(line: 2390, column: 23, scope: !1314)
!1337 = !DILocation(line: 2390, column: 29, scope: !1314)
!1338 = !DILocation(line: 2394, column: 33, scope: !1314)
!1339 = !DILocation(line: 2394, column: 49, scope: !1314)
!1340 = !DILocation(line: 2394, column: 65, scope: !1314)
!1341 = !DILocation(line: 2394, column: 5, scope: !1314)
!1342 = !DILocation(line: 2397, column: 27, scope: !1314)
!1343 = !DILocation(line: 2397, column: 32, scope: !1314)
!1344 = !DILocation(line: 2400, column: 42, scope: !1314)
!1345 = !DILocation(line: 2400, column: 49, scope: !1314)
!1346 = !DILocation(line: 2399, column: 12, scope: !1314)
!1347 = !DILocation(line: 2402, column: 42, scope: !1314)
!1348 = !DILocation(line: 2402, column: 49, scope: !1314)
!1349 = !DILocation(line: 2401, column: 12, scope: !1314)
!1350 = !DILocation(line: 2404, column: 42, scope: !1314)
!1351 = !DILocation(line: 2404, column: 49, scope: !1314)
!1352 = !DILocation(line: 2403, column: 12, scope: !1314)
!1353 = !DILocation(line: 2406, column: 42, scope: !1314)
!1354 = !DILocation(line: 2406, column: 49, scope: !1314)
!1355 = !DILocation(line: 2405, column: 12, scope: !1314)
!1356 = !DILocation(line: 2408, column: 15, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 2408, column: 9)
!1358 = !DILocation(line: 2408, column: 9, scope: !1314)
!1359 = !DILocation(line: 2408, column: 21, scope: !1357)
!1360 = !DILocation(line: 2409, column: 15, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 2409, column: 9)
!1362 = !DILocation(line: 2409, column: 9, scope: !1314)
!1363 = !DILocation(line: 2409, column: 21, scope: !1361)
!1364 = !DILocation(line: 2410, column: 15, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 2410, column: 9)
!1366 = !DILocation(line: 2410, column: 9, scope: !1314)
!1367 = !DILocation(line: 2410, column: 21, scope: !1365)
!1368 = !DILocation(line: 2411, column: 15, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 2411, column: 9)
!1370 = !DILocation(line: 2411, column: 9, scope: !1314)
!1371 = !DILocation(line: 2411, column: 21, scope: !1369)
!1372 = !DILocation(line: 2413, column: 18, scope: !1314)
!1373 = !DILocation(line: 2413, column: 26, scope: !1314)
!1374 = !DILocation(line: 2413, column: 34, scope: !1314)
!1375 = !DILocation(line: 2414, column: 1, scope: !1314)
!1376 = !DILocation(line: 2413, column: 5, scope: !1314)
!1377 = distinct !DISubprogram(name: "compute_interaction", scope: !1, file: !1, line: 2417, type: !1378, scopeLine: 2418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1380)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !11, !11, !4, !53, !53}
!1380 = !{!1381, !1382, !1383, !1384, !1385}
!1381 = !DILocalVariable(name: "e_src", arg: 1, scope: !1377, file: !1, line: 2417, type: !11)
!1382 = !DILocalVariable(name: "e_dst", arg: 2, scope: !1377, file: !1, line: 2417, type: !11)
!1383 = !DILocalVariable(name: "inter", arg: 3, scope: !1377, file: !1, line: 2417, type: !4)
!1384 = !DILocalVariable(name: "subdiv", arg: 4, scope: !1377, file: !1, line: 2417, type: !53)
!1385 = !DILocalVariable(name: "process_id", arg: 5, scope: !1377, file: !1, line: 2417, type: !53)
!1386 = !DILocation(line: 0, scope: !1377)
!1387 = !DILocation(line: 2420, column: 9, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 2420, column: 9)
!1389 = !DILocation(line: 2420, column: 9, scope: !1377)
!1390 = !DILocation(line: 2423, column: 16, scope: !1388)
!1391 = !DILocation(line: 2423, column: 27, scope: !1388)
!1392 = !DILocation(line: 2427, column: 5, scope: !1377)
!1393 = !DILocation(line: 2428, column: 1, scope: !1377)
!1394 = distinct !DISubprogram(name: "insert_interaction", scope: !1, file: !1, line: 2444, type: !456, scopeLine: 2445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1395)
!1395 = !{!1396, !1397, !1398}
!1396 = !DILocalVariable(name: "elem", arg: 1, scope: !1394, file: !1, line: 2444, type: !11)
!1397 = !DILocalVariable(name: "inter", arg: 2, scope: !1394, file: !1, line: 2444, type: !4)
!1398 = !DILocalVariable(name: "process_id", arg: 3, scope: !1394, file: !1, line: 2444, type: !53)
!1399 = !DILocation(line: 0, scope: !1394)
!1400 = !DILocation(line: 2447, column: 33, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1394, file: !1, line: 2447, column: 5)
!1402 = !DILocation(line: 2447, column: 6, scope: !1401)
!1403 = !DILocation(line: 2448, column: 25, scope: !1394)
!1404 = !DILocation(line: 2448, column: 17, scope: !1394)
!1405 = !DILocation(line: 2449, column: 24, scope: !1394)
!1406 = !DILocation(line: 2450, column: 11, scope: !1394)
!1407 = !DILocation(line: 2450, column: 25, scope: !1394)
!1408 = !DILocation(line: 2451, column: 35, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1394, file: !1, line: 2451, column: 5)
!1410 = !DILocation(line: 2451, column: 6, scope: !1409)
!1411 = !DILocation(line: 2452, column: 1, scope: !1394)
!1412 = distinct !DISubprogram(name: "delete_interaction", scope: !1, file: !1, line: 2456, type: !1413, scopeLine: 2457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !11, !4, !4, !53}
!1415 = !{!1416, !1417, !1418, !1419}
!1416 = !DILocalVariable(name: "elem", arg: 1, scope: !1412, file: !1, line: 2456, type: !11)
!1417 = !DILocalVariable(name: "prev", arg: 2, scope: !1412, file: !1, line: 2456, type: !4)
!1418 = !DILocalVariable(name: "inter", arg: 3, scope: !1412, file: !1, line: 2456, type: !4)
!1419 = !DILocalVariable(name: "process_id", arg: 4, scope: !1412, file: !1, line: 2456, type: !53)
!1420 = !DILocation(line: 0, scope: !1412)
!1421 = !DILocation(line: 2459, column: 33, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1412, file: !1, line: 2459, column: 5)
!1423 = !DILocation(line: 2459, column: 6, scope: !1422)
!1424 = !DILocation(line: 2460, column: 14, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1412, file: !1, line: 2460, column: 9)
!1426 = !DILocation(line: 0, scope: !1425)
!1427 = !DILocation(line: 2460, column: 9, scope: !1412)
!1428 = !DILocation(line: 2464, column: 11, scope: !1412)
!1429 = !DILocation(line: 2464, column: 25, scope: !1412)
!1430 = !DILocation(line: 2465, column: 35, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1412, file: !1, line: 2465, column: 5)
!1432 = !DILocation(line: 2465, column: 6, scope: !1431)
!1433 = !DILocation(line: 2468, column: 5, scope: !1412)
!1434 = !DILocation(line: 2469, column: 1, scope: !1412)
!1435 = distinct !DISubprogram(name: "delete_vis_undef_interaction", scope: !1, file: !1, line: 2483, type: !1413, scopeLine: 2484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1436)
!1436 = !{!1437, !1438, !1439, !1440}
!1437 = !DILocalVariable(name: "elem", arg: 1, scope: !1435, file: !1, line: 2483, type: !11)
!1438 = !DILocalVariable(name: "prev", arg: 2, scope: !1435, file: !1, line: 2483, type: !4)
!1439 = !DILocalVariable(name: "inter", arg: 3, scope: !1435, file: !1, line: 2483, type: !4)
!1440 = !DILocalVariable(name: "process_id", arg: 4, scope: !1435, file: !1, line: 2483, type: !53)
!1441 = !DILocation(line: 0, scope: !1435)
!1442 = !DILocation(line: 2486, column: 33, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 2486, column: 5)
!1444 = !DILocation(line: 2486, column: 6, scope: !1443)
!1445 = !DILocation(line: 2487, column: 14, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 2487, column: 9)
!1447 = !DILocation(line: 0, scope: !1446)
!1448 = !DILocation(line: 2487, column: 9, scope: !1435)
!1449 = !DILocation(line: 2491, column: 11, scope: !1435)
!1450 = !DILocation(line: 2491, column: 28, scope: !1435)
!1451 = !DILocation(line: 2492, column: 35, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 2492, column: 5)
!1453 = !DILocation(line: 2492, column: 6, scope: !1452)
!1454 = !DILocation(line: 2493, column: 1, scope: !1435)
!1455 = distinct !DISubprogram(name: "init_interactionlist", scope: !1, file: !1, line: 2561, type: !1201, scopeLine: 2562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1456)
!1456 = !{!1457, !1458}
!1457 = !DILocalVariable(name: "process_id", arg: 1, scope: !1455, file: !1, line: 2561, type: !53)
!1458 = !DILocalVariable(name: "i", scope: !1455, file: !1, line: 2563, type: !53)
!1459 = !DILocation(line: 0, scope: !1455)
!1460 = !DILocation(line: 2565, column: 52, scope: !1455)
!1461 = !DILocation(line: 2565, column: 68, scope: !1455)
!1462 = !DILocation(line: 2565, column: 45, scope: !1455)
!1463 = !DILocation(line: 2565, column: 5, scope: !1455)
!1464 = !DILocation(line: 2565, column: 13, scope: !1455)
!1465 = !DILocation(line: 2565, column: 29, scope: !1455)
!1466 = !DILocation(line: 2569, column: 38, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 2569, column: 5)
!1468 = distinct !DILexicalBlock(scope: !1455, file: !1, line: 2569, column: 5)
!1469 = !DILocation(line: 2569, column: 20, scope: !1467)
!1470 = !DILocation(line: 2569, column: 5, scope: !1468)
!1471 = !DILocation(line: 2570, column: 52, scope: !1467)
!1472 = !DILocation(line: 2570, column: 44, scope: !1467)
!1473 = !DILocation(line: 2570, column: 41, scope: !1467)
!1474 = !DILocation(line: 2569, column: 22, scope: !1467)
!1475 = distinct !{!1475, !1470, !1476, !677, !678}
!1476 = !DILocation(line: 2570, column: 71, scope: !1468)
!1477 = !DILocation(line: 2570, column: 69, scope: !1467)
!1478 = !DILocation(line: 2570, column: 9, scope: !1467)
!1479 = !DILocation(line: 2571, column: 5, scope: !1455)
!1480 = !DILocation(line: 2571, column: 13, scope: !1455)
!1481 = !DILocation(line: 2571, column: 56, scope: !1455)
!1482 = !DILocation(line: 2572, column: 32, scope: !1455)
!1483 = !DILocation(line: 2572, column: 40, scope: !1455)
!1484 = !DILocation(line: 2572, column: 13, scope: !1455)
!1485 = !DILocation(line: 2572, column: 30, scope: !1455)
!1486 = !DILocation(line: 2573, column: 35, scope: !1455)
!1487 = !DILocation(line: 2573, column: 13, scope: !1455)
!1488 = !DILocation(line: 2573, column: 33, scope: !1455)
!1489 = !DILocation(line: 2574, column: 35, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1455, file: !1, line: 2574, column: 5)
!1491 = !DILocation(line: 2574, column: 6, scope: !1490)
!1492 = !DILocation(line: 2575, column: 1, scope: !1455)
!1493 = distinct !DISubprogram(name: "print_interaction", scope: !1, file: !1, line: 2586, type: !904, scopeLine: 2587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1494)
!1494 = !{!1495, !1496}
!1495 = !DILocalVariable(name: "inter", arg: 1, scope: !1493, file: !1, line: 2586, type: !4)
!1496 = !DILocalVariable(name: "process_id", arg: 2, scope: !1493, file: !1, line: 2586, type: !53)
!1497 = !DILocation(line: 0, scope: !1493)
!1498 = !DILocation(line: 2589, column: 37, scope: !1493)
!1499 = !DILocation(line: 2589, column: 5, scope: !1493)
!1500 = !DILocation(line: 2591, column: 25, scope: !1493)
!1501 = !DILocation(line: 2591, column: 12, scope: !1493)
!1502 = !DILocation(line: 2591, column: 58, scope: !1493)
!1503 = !DILocation(line: 2591, column: 65, scope: !1493)
!1504 = !DILocation(line: 2590, column: 5, scope: !1493)
!1505 = !DILocation(line: 2593, column: 19, scope: !1493)
!1506 = !DILocation(line: 2593, column: 12, scope: !1493)
!1507 = !DILocation(line: 2594, column: 19, scope: !1493)
!1508 = !DILocation(line: 2594, column: 12, scope: !1493)
!1509 = !DILocation(line: 2592, column: 5, scope: !1493)
!1510 = !DILocation(line: 2595, column: 40, scope: !1493)
!1511 = !DILocation(line: 2595, column: 5, scope: !1493)
!1512 = !DILocation(line: 2596, column: 1, scope: !1493)
!1513 = distinct !DISubprogram(name: "gather_rays", scope: !1, file: !1, line: 2038, type: !476, scopeLine: 2039, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1514)
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1515 = !DILocalVariable(name: "elem", arg: 1, scope: !1513, file: !1, line: 2038, type: !11)
!1516 = !DILocalVariable(name: "process_id", arg: 2, scope: !1513, file: !1, line: 2038, type: !53)
!1517 = !DILocalVariable(name: "rad_elem", scope: !1513, file: !1, line: 2040, type: !73)
!1518 = !DILocalVariable(name: "ff_v", scope: !1513, file: !1, line: 2041, type: !3)
!1519 = !DILocalVariable(name: "bf_r", scope: !1513, file: !1, line: 2042, type: !3)
!1520 = !DILocalVariable(name: "bf_g", scope: !1513, file: !1, line: 2042, type: !3)
!1521 = !DILocalVariable(name: "bf_b", scope: !1513, file: !1, line: 2042, type: !3)
!1522 = !DILocalVariable(name: "inter", scope: !1513, file: !1, line: 2043, type: !4)
!1523 = !DILocation(line: 0, scope: !1513)
!1524 = !DILocation(line: 2047, column: 24, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 2047, column: 9)
!1526 = !DILocation(line: 2047, column: 38, scope: !1525)
!1527 = !DILocation(line: 2047, column: 9, scope: !1513)
!1528 = !DILocation(line: 2049, column: 19, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !1, line: 2048, column: 9)
!1530 = !DILocation(line: 2049, column: 33, scope: !1529)
!1531 = !DILocation(line: 2050, column: 31, scope: !1529)
!1532 = !DILocation(line: 2050, column: 33, scope: !1529)
!1533 = !DILocation(line: 2051, column: 31, scope: !1529)
!1534 = !DILocation(line: 2051, column: 33, scope: !1529)
!1535 = !DILocation(line: 2052, column: 13, scope: !1529)
!1536 = !DILocation(line: 2066, column: 27, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 2063, column: 9)
!1538 = !DILocation(line: 2066, column: 51, scope: !1537)
!1539 = !DILocation(line: 2066, column: 42, scope: !1537)
!1540 = !DILocation(line: 2068, column: 42, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 2068, column: 13)
!1542 = !DILocation(line: 2068, column: 55, scope: !1541)
!1543 = !DILocation(line: 2068, column: 14, scope: !1541)
!1544 = !DILocation(line: 2070, column: 34, scope: !1537)
!1545 = !DILocation(line: 2070, column: 47, scope: !1537)
!1546 = !DILocation(line: 2070, column: 51, scope: !1537)
!1547 = !DILocation(line: 2070, column: 25, scope: !1537)
!1548 = !DILocation(line: 2071, column: 51, scope: !1537)
!1549 = !DILocation(line: 2071, column: 25, scope: !1537)
!1550 = !DILocation(line: 2072, column: 51, scope: !1537)
!1551 = !DILocation(line: 2072, column: 25, scope: !1537)
!1552 = !DILocation(line: 2074, column: 57, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 2074, column: 13)
!1554 = !DILocation(line: 2074, column: 14, scope: !1553)
!1555 = !DILocation(line: 2077, column: 24, scope: !1537)
!1556 = !DILocation(line: 2078, column: 24, scope: !1537)
!1557 = !DILocation(line: 2079, column: 24, scope: !1537)
!1558 = !DILocation(line: 2082, column: 28, scope: !1537)
!1559 = !DILocation(line: 2062, column: 5, scope: !1513)
!1560 = distinct !{!1560, !1559, !1561, !677, !678}
!1561 = !DILocation(line: 2083, column: 9, scope: !1513)
!1562 = !DILocation(line: 2086, column: 25, scope: !1513)
!1563 = !DILocation(line: 2086, column: 32, scope: !1513)
!1564 = !DILocation(line: 2086, column: 38, scope: !1513)
!1565 = !DILocation(line: 2086, column: 16, scope: !1513)
!1566 = !DILocation(line: 2087, column: 38, scope: !1513)
!1567 = !DILocation(line: 2087, column: 16, scope: !1513)
!1568 = !DILocation(line: 2088, column: 38, scope: !1513)
!1569 = !DILocation(line: 2088, column: 16, scope: !1513)
!1570 = !DILocation(line: 2091, column: 11, scope: !1513)
!1571 = !DILocation(line: 2091, column: 25, scope: !1513)
!1572 = !DILocation(line: 2092, column: 1, scope: !1513)
!1573 = !DISubprogram(name: "create_ray_task", scope: !1, file: !1, line: 702, type: !476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!1574 = distinct !DISubprogram(name: "elem_join_operation", scope: !1, file: !1, line: 1967, type: !1575, scopeLine: 1968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1577)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !11, !11, !53}
!1577 = !{!1578, !1579, !1580, !1581}
!1578 = !DILocalVariable(name: "e", arg: 1, scope: !1574, file: !1, line: 1967, type: !11)
!1579 = !DILocalVariable(name: "ec", arg: 2, scope: !1574, file: !1, line: 1967, type: !11)
!1580 = !DILocalVariable(name: "process_id", arg: 3, scope: !1574, file: !1, line: 1967, type: !53)
!1581 = !DILocalVariable(name: "join_flag", scope: !1574, file: !1, line: 1969, type: !53)
!1582 = !DILocation(line: 0, scope: !1574)
!1583 = !DILocation(line: 1975, column: 14, scope: !1574)
!1584 = !DILocation(line: 1975, column: 5, scope: !1574)
!1585 = !DILocation(line: 1978, column: 38, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 1978, column: 13)
!1587 = distinct !DILexicalBlock(scope: !1574, file: !1, line: 1976, column: 9)
!1588 = !DILocation(line: 1978, column: 14, scope: !1586)
!1589 = !DILocation(line: 1979, column: 37, scope: !1587)
!1590 = !DILocation(line: 1979, column: 49, scope: !1587)
!1591 = !DILocation(line: 1979, column: 16, scope: !1587)
!1592 = !DILocation(line: 1979, column: 30, scope: !1587)
!1593 = !DILocation(line: 1980, column: 49, scope: !1587)
!1594 = !DILocation(line: 1980, column: 28, scope: !1587)
!1595 = !DILocation(line: 1980, column: 30, scope: !1587)
!1596 = !DILocation(line: 1981, column: 49, scope: !1587)
!1597 = !DILocation(line: 1981, column: 28, scope: !1587)
!1598 = !DILocation(line: 1981, column: 30, scope: !1587)
!1599 = !DILocation(line: 1982, column: 16, scope: !1587)
!1600 = !DILocation(line: 1982, column: 28, scope: !1587)
!1601 = !DILocation(line: 1983, column: 42, scope: !1587)
!1602 = !DILocation(line: 1985, column: 17, scope: !1587)
!1603 = !DILocation(line: 1987, column: 32, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !1, line: 1987, column: 5)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 1985, column: 34)
!1606 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 1985, column: 17)
!1607 = !DILocation(line: 1987, column: 6, scope: !1604)
!1608 = !DILocation(line: 1988, column: 17, scope: !1605)
!1609 = !DILocation(line: 1994, column: 27, scope: !1587)
!1610 = !DILocation(line: 1994, column: 34, scope: !1587)
!1611 = !DILocation(line: 1994, column: 36, scope: !1587)
!1612 = !DILocation(line: 1994, column: 60, scope: !1587)
!1613 = !DILocation(line: 1994, column: 67, scope: !1587)
!1614 = !DILocation(line: 1994, column: 77, scope: !1587)
!1615 = !DILocation(line: 1994, column: 55, scope: !1587)
!1616 = !DILocation(line: 1994, column: 16, scope: !1587)
!1617 = !DILocation(line: 1994, column: 22, scope: !1587)
!1618 = !DILocation(line: 1995, column: 34, scope: !1587)
!1619 = !DILocation(line: 1995, column: 36, scope: !1587)
!1620 = !DILocation(line: 1995, column: 77, scope: !1587)
!1621 = !DILocation(line: 1995, column: 55, scope: !1587)
!1622 = !DILocation(line: 1995, column: 20, scope: !1587)
!1623 = !DILocation(line: 1995, column: 22, scope: !1587)
!1624 = !DILocation(line: 1996, column: 34, scope: !1587)
!1625 = !DILocation(line: 1996, column: 36, scope: !1587)
!1626 = !DILocation(line: 1996, column: 77, scope: !1587)
!1627 = !DILocation(line: 1996, column: 55, scope: !1587)
!1628 = !DILocation(line: 1996, column: 20, scope: !1587)
!1629 = !DILocation(line: 1996, column: 22, scope: !1587)
!1630 = !DILocation(line: 1997, column: 40, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 1997, column: 13)
!1632 = !DILocation(line: 1997, column: 14, scope: !1631)
!1633 = !DILocation(line: 2001, column: 20, scope: !1587)
!1634 = distinct !{!1634, !1584, !1635, !677, !678}
!1635 = !DILocation(line: 2002, column: 9, scope: !1574)
!1636 = !DILocation(line: 2005, column: 27, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1574, file: !1, line: 2005, column: 5)
!1638 = !DILocation(line: 2005, column: 35, scope: !1637)
!1639 = !DILocation(line: 2005, column: 6, scope: !1637)
!1640 = !DILocation(line: 2006, column: 35, scope: !1574)
!1641 = !DILocation(line: 2006, column: 39, scope: !1574)
!1642 = !DILocation(line: 2006, column: 47, scope: !1574)
!1643 = !DILocation(line: 2006, column: 5, scope: !1574)
!1644 = !DILocation(line: 2006, column: 13, scope: !1574)
!1645 = !DILocation(line: 2006, column: 28, scope: !1574)
!1646 = !DILocation(line: 2007, column: 39, scope: !1574)
!1647 = !DILocation(line: 2007, column: 47, scope: !1574)
!1648 = !DILocation(line: 2007, column: 26, scope: !1574)
!1649 = !DILocation(line: 2007, column: 28, scope: !1574)
!1650 = !DILocation(line: 2008, column: 39, scope: !1574)
!1651 = !DILocation(line: 2008, column: 47, scope: !1574)
!1652 = !DILocation(line: 2008, column: 26, scope: !1574)
!1653 = !DILocation(line: 2008, column: 28, scope: !1574)
!1654 = !DILocation(line: 2009, column: 37, scope: !1574)
!1655 = !DILocation(line: 2009, column: 13, scope: !1574)
!1656 = !DILocation(line: 2009, column: 30, scope: !1574)
!1657 = !DILocation(line: 2010, column: 37, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1574, file: !1, line: 2010, column: 5)
!1659 = !DILocation(line: 2010, column: 6, scope: !1658)
!1660 = !DILocation(line: 2028, column: 1, scope: !1574)
!1661 = distinct !DISubprogram(name: "_diff_disc_formfactor", scope: !1, file: !1, line: 2363, type: !1662, scopeLine: 2364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1664)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!3, !644, !11, !644, !3, !644, !53}
!1664 = !{!1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1665 = !DILocalVariable(name: "p", arg: 1, scope: !1661, file: !1, line: 2363, type: !644)
!1666 = !DILocalVariable(name: "e_src", arg: 2, scope: !1661, file: !1, line: 2363, type: !11)
!1667 = !DILocalVariable(name: "p_disc", arg: 3, scope: !1661, file: !1, line: 2363, type: !644)
!1668 = !DILocalVariable(name: "area", arg: 4, scope: !1661, file: !1, line: 2363, type: !3)
!1669 = !DILocalVariable(name: "normal", arg: 5, scope: !1661, file: !1, line: 2363, type: !644)
!1670 = !DILocalVariable(name: "process_id", arg: 6, scope: !1661, file: !1, line: 2363, type: !53)
!1671 = !DILocalVariable(name: "vec_sd", scope: !1661, file: !1, line: 2365, type: !65)
!1672 = !DILocalVariable(name: "dist_sq", scope: !1661, file: !1, line: 2366, type: !3)
!1673 = !DILocalVariable(name: "fnorm", scope: !1661, file: !1, line: 2367, type: !3)
!1674 = !DILocalVariable(name: "cos_s", scope: !1661, file: !1, line: 2368, type: !3)
!1675 = !DILocalVariable(name: "cos_d", scope: !1661, file: !1, line: 2368, type: !3)
!1676 = !DILocalVariable(name: "angle_factor", scope: !1661, file: !1, line: 2368, type: !3)
!1677 = !DILocation(line: 0, scope: !1661)
!1678 = !DILocation(line: 2365, column: 5, scope: !1661)
!1679 = !DILocation(line: 2365, column: 12, scope: !1661)
!1680 = !DILocation(line: 2370, column: 24, scope: !1661)
!1681 = !DILocation(line: 2370, column: 31, scope: !1661)
!1682 = !DILocation(line: 2370, column: 26, scope: !1661)
!1683 = !DILocation(line: 2370, column: 14, scope: !1661)
!1684 = !DILocation(line: 2371, column: 24, scope: !1661)
!1685 = !DILocation(line: 2371, column: 31, scope: !1661)
!1686 = !DILocation(line: 2371, column: 26, scope: !1661)
!1687 = !DILocation(line: 2371, column: 12, scope: !1661)
!1688 = !DILocation(line: 2371, column: 14, scope: !1661)
!1689 = !DILocation(line: 2372, column: 24, scope: !1661)
!1690 = !DILocation(line: 2372, column: 31, scope: !1661)
!1691 = !DILocation(line: 2372, column: 26, scope: !1661)
!1692 = !DILocation(line: 2372, column: 12, scope: !1661)
!1693 = !DILocation(line: 2372, column: 14, scope: !1661)
!1694 = !DILocation(line: 2373, column: 43, scope: !1661)
!1695 = !DILocation(line: 2373, column: 33, scope: !1661)
!1696 = !DILocation(line: 2373, column: 53, scope: !1661)
!1697 = !DILocation(line: 2375, column: 44, scope: !1661)
!1698 = !DILocation(line: 2375, column: 18, scope: !1661)
!1699 = !DILocation(line: 2378, column: 5, scope: !1661)
!1700 = !DILocation(line: 2379, column: 46, scope: !1661)
!1701 = !DILocation(line: 2379, column: 53, scope: !1661)
!1702 = !DILocation(line: 2379, column: 14, scope: !1661)
!1703 = !DILocation(line: 2380, column: 14, scope: !1661)
!1704 = !DILocation(line: 2380, column: 13, scope: !1661)
!1705 = !DILocation(line: 2381, column: 26, scope: !1661)
!1706 = !DILocation(line: 2384, column: 19, scope: !1661)
!1707 = !DILocation(line: 2385, column: 1, scope: !1661)
!1708 = !DILocation(line: 2384, column: 5, scope: !1661)
!1709 = !DISubprogram(name: "normalize_vector", scope: !1, file: !1, line: 1134, type: !1710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!3, !644, !644}
!1712 = !DISubprogram(name: "inner_product", scope: !1, file: !1, line: 1135, type: !1710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !645)
