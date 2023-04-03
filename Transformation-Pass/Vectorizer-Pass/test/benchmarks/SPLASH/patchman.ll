; ModuleID = 'patchman.c'
source_filename = "patchman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Global = type { i64, %union.pthread_mutex_t, [1024 x %struct.Task_Queue], [3276800 x %struct._task], %union.pthread_mutex_t, ptr, %union.pthread_mutex_t, i64, %struct.Rgb, %struct.Rgb, float, i64, %union.pthread_mutex_t, i64, i64, [1024 x %struct.Patch_Cost], %struct.anon, i64, %union.pthread_mutex_t, i64, %union.pthread_mutex_t, %union.pthread_mutex_t, ptr, i64, i64, [1024 x %struct._patch], %union.pthread_mutex_t, ptr, i64, ptr, %union.pthread_mutex_t, ptr, i64, ptr, %union.pthread_mutex_t, i64, ptr, %union.pthread_mutex_t, i64, ptr, [3900 x %struct.Shared_Lock], [1024 x %struct.StatisticalInfo] }
%struct.Task_Queue = type { [4096 x i8], %union.pthread_mutex_t, ptr, ptr, i64, %union.pthread_mutex_t, i64, ptr, [4096 x i8] }
%struct._task = type { i64, ptr, %union.anon }
%union.anon = type { %struct.Refinement_Task }
%struct.Refinement_Task = type { ptr, ptr, float, i64 }
%struct.Rgb = type { float, float, float }
%struct.Patch_Cost = type { ptr, ptr, i64, i64, i64, [11 x i64] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon.0, %union.anon.2, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon.0 = type { i64 }
%union.anon.2 = type { i64 }
%struct._patch = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.Vertex, %struct.Vertex, %struct.Vertex, %struct.PlaneEqu, float, %struct.Rgb, %struct.Rgb, ptr, ptr, ptr, ptr, i64 }
%struct.Vertex = type { float, float, float }
%struct.PlaneEqu = type { %struct.Vertex, float }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.Shared_Lock = type { %union.pthread_mutex_t }
%struct.StatisticalInfo = type { [4096 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [2 x i64], [16 x %struct.PerIterationInfo], [4096 x i8] }
%struct.PerIterationInfo = type { i64, i64, i64, i64, i64, ptr }
%struct._element = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, %struct.Rgb, %struct.Rgb, %struct.Rgb, i64, ptr, ptr, ptr, ptr, ptr, ptr, float }
%struct._edge = type { ptr, ptr, ptr, ptr, ptr }

@global = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Patch (%ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\09Area %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\09PLN: %.3f x + %.3f y + %.3f z + %.3f\0A\00", align 1
@str = private unnamed_addr constant [31 x i8] c"Fatal: Ran out of patch buffer\00", align 1
@str.6 = private unnamed_addr constant [18 x i8] c"**** BSP TREE ***\00", align 1
@str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foreach_patch_in_bsp(ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id) local_unnamed_addr #0 !dbg !144 {
entry:
  call void @llvm.dbg.value(metadata ptr %func, metadata !151, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !152, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load ptr, ptr @global, align 8, !dbg !155
  %bsp_root = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 5, !dbg !156
  %1 = load ptr, ptr %bsp_root, align 8, !dbg !156
  tail call fastcc void @_foreach_patch(ptr noundef %1, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !157
  ret void, !dbg !158
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_foreach_patch(ptr noundef %node, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id) unnamed_addr #0 !dbg !159 {
entry:
  br label %tailrecurse, !dbg !167

tailrecurse:                                      ; preds = %if.end3, %entry
  %node.tr = phi ptr [ %node, %entry ], [ %1, %if.end3 ]
  call void @llvm.dbg.value(metadata ptr %node.tr, metadata !163, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata ptr %func, metadata !164, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !165, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !166, metadata !DIExpression()), !dbg !169
  %cmp = icmp eq ptr %node.tr, null, !dbg !170
  br i1 %cmp, label %if.end7, label %if.end, !dbg !172

if.end:                                           ; preds = %tailrecurse
  %bsp_negative = getelementptr inbounds %struct._patch, ptr %node.tr, i64 0, i32 14, !dbg !173
  %0 = load ptr, ptr %bsp_negative, align 8, !dbg !173
  %tobool.not = icmp eq ptr %0, null, !dbg !175
  br i1 %tobool.not, label %if.end3, label %if.then1, !dbg !176

if.then1:                                         ; preds = %if.end
  tail call fastcc void @_foreach_patch(ptr noundef nonnull %0, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !177
  br label %if.end3, !dbg !177

if.end3:                                          ; preds = %if.then1, %if.end
  tail call void (ptr, i64, i64, ...) %func(ptr noundef nonnull %node.tr, i64 noundef %arg1, i64 noundef %process_id) #12, !dbg !178
  %bsp_positive = getelementptr inbounds %struct._patch, ptr %node.tr, i64 0, i32 13, !dbg !179
  %1 = load ptr, ptr %bsp_positive, align 8, !dbg !179
  %tobool4.not = icmp eq ptr %1, null, !dbg !180
  br i1 %tobool4.not, label %if.end7, label %tailrecurse, !dbg !181

if.end7:                                          ; preds = %tailrecurse, %if.end3
  ret void, !dbg !182
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foreach_depth_sorted_patch(ptr noundef %sort_vec, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id) local_unnamed_addr #0 !dbg !183 {
entry:
  call void @llvm.dbg.value(metadata ptr %sort_vec, metadata !188, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata ptr %func, metadata !189, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !190, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = load ptr, ptr @global, align 8, !dbg !193
  %bsp_root = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 5, !dbg !194
  %1 = load ptr, ptr %bsp_root, align 8, !dbg !194
  tail call fastcc void @_foreach_d_s_patch(ptr noundef %sort_vec, ptr noundef %1, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !195
  ret void, !dbg !196
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_foreach_d_s_patch(ptr noundef %svec, ptr noundef %node, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id) unnamed_addr #0 !dbg !197 {
entry:
  call void @llvm.dbg.value(metadata ptr %svec, metadata !201, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata ptr %node, metadata !202, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata ptr %func, metadata !203, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !204, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !205, metadata !DIExpression()), !dbg !207
  %cmp55 = icmp eq ptr %node, null, !dbg !208
  br i1 %cmp55, label %cleanup, label %if.end, !dbg !210

if.end:                                           ; preds = %entry, %if.end.backedge
  %node.tr56 = phi ptr [ %node.tr56.be, %if.end.backedge ], [ %node, %entry ]
  call void @llvm.dbg.value(metadata ptr %node.tr56, metadata !202, metadata !DIExpression()), !dbg !207
  %plane_equ = getelementptr inbounds %struct._patch, ptr %node.tr56, i64 0, i32 9, !dbg !211
  %call = tail call float @inner_product(ptr noundef %svec, ptr noundef nonnull %plane_equ) #12, !dbg !212
  call void @llvm.dbg.value(metadata float %call, metadata !206, metadata !DIExpression()), !dbg !207
  %cmp1 = fcmp ult float %call, 0.000000e+00, !dbg !213
  br i1 %cmp1, label %if.else, label %if.then3, !dbg !215

if.then3:                                         ; preds = %if.end
  %bsp_negative = getelementptr inbounds %struct._patch, ptr %node.tr56, i64 0, i32 14, !dbg !216
  %0 = load ptr, ptr %bsp_negative, align 8, !dbg !216
  %tobool.not = icmp eq ptr %0, null, !dbg !219
  br i1 %tobool.not, label %if.end6, label %if.then4, !dbg !220

if.then4:                                         ; preds = %if.then3
  tail call fastcc void @_foreach_d_s_patch(ptr noundef %svec, ptr noundef nonnull %0, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !221
  br label %if.end6, !dbg !221

if.end6:                                          ; preds = %if.then4, %if.then3
  tail call void (ptr, i64, i64, ...) %func(ptr noundef nonnull %node.tr56, i64 noundef %arg1, i64 noundef %process_id) #12, !dbg !222
  %bsp_positive = getelementptr inbounds %struct._patch, ptr %node.tr56, i64 0, i32 13, !dbg !223
  %1 = load ptr, ptr %bsp_positive, align 8, !dbg !223
  %tobool7.not = icmp eq ptr %1, null, !dbg !225
  br i1 %tobool7.not, label %cleanup, label %if.end.backedge, !dbg !226

if.end.backedge:                                  ; preds = %if.end6, %if.end15
  %node.tr56.be = phi ptr [ %1, %if.end6 ], [ %3, %if.end15 ]
  br label %if.end, !dbg !207

if.else:                                          ; preds = %if.end
  %bsp_positive11 = getelementptr inbounds %struct._patch, ptr %node.tr56, i64 0, i32 13, !dbg !227
  %2 = load ptr, ptr %bsp_positive11, align 8, !dbg !227
  %tobool12.not = icmp eq ptr %2, null, !dbg !230
  br i1 %tobool12.not, label %if.end15, label %if.then13, !dbg !231

if.then13:                                        ; preds = %if.else
  tail call fastcc void @_foreach_d_s_patch(ptr noundef %svec, ptr noundef nonnull %2, ptr noundef %func, i64 noundef %arg1, i64 noundef %process_id), !dbg !232
  br label %if.end15, !dbg !232

if.end15:                                         ; preds = %if.then13, %if.else
  tail call void (ptr, i64, i64, ...) %func(ptr noundef nonnull %node.tr56, i64 noundef %arg1, i64 noundef %process_id) #12, !dbg !233
  %bsp_negative16 = getelementptr inbounds %struct._patch, ptr %node.tr56, i64 0, i32 14, !dbg !234
  %3 = load ptr, ptr %bsp_negative16, align 8, !dbg !234
  %tobool17.not = icmp eq ptr %3, null, !dbg !236
  br i1 %tobool17.not, label %cleanup, label %if.end.backedge, !dbg !237

cleanup:                                          ; preds = %if.end15, %if.end6, %entry
  ret void, !dbg !238
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @define_patch(ptr noundef %patch, ptr noundef %root, i64 noundef %process_id) local_unnamed_addr #0 !dbg !239 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !243, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata ptr %root, metadata !244, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !245, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata ptr %root, metadata !246, metadata !DIExpression()), !dbg !248
  %0 = load ptr, ptr @global, align 8, !dbg !249
  %bsp_tree_lock = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 4, !dbg !251
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %bsp_tree_lock) #12, !dbg !252
  %cmp = icmp eq ptr %root, null, !dbg !253
  br i1 %cmp, label %if.then, label %if.end7, !dbg !255

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @global, align 8, !dbg !256
  %bsp_root = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 5, !dbg !259
  %2 = load ptr, ptr %bsp_root, align 8, !dbg !259
  %cmp1 = icmp eq ptr %2, null, !dbg !260
  br i1 %cmp1, label %if.then2, label %if.end7, !dbg !261

if.then2:                                         ; preds = %if.then
  store ptr %patch, ptr %bsp_root, align 8, !dbg !262
  %bsp_positive = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 13, !dbg !264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %bsp_positive, i8 0, i64 24, i1 false), !dbg !265
  tail call void @attach_element(ptr noundef %patch, i64 noundef %process_id), !dbg !266
  %3 = load ptr, ptr @global, align 8, !dbg !267
  %bsp_tree_lock4 = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 4, !dbg !269
  %call5 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %bsp_tree_lock4) #12, !dbg !270
  br label %cleanup, !dbg !271

if.end7:                                          ; preds = %if.then, %entry
  %parent.0 = phi ptr [ %root, %entry ], [ %2, %if.then ], !dbg !248
  call void @llvm.dbg.value(metadata ptr %parent.0, metadata !246, metadata !DIExpression()), !dbg !248
  %p1 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6
  %p2 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7
  %p3 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8
  br label %while.cond, !dbg !272

while.cond:                                       ; preds = %while.cond.backedge, %if.end7
  %parent.1 = phi ptr [ %parent.0, %if.end7 ], [ %parent.1.be, %while.cond.backedge ], !dbg !248
  call void @llvm.dbg.value(metadata ptr %parent.1, metadata !246, metadata !DIExpression()), !dbg !248
  %plane_equ = getelementptr inbounds %struct._patch, ptr %parent.1, i64 0, i32 9, !dbg !273
  %call8 = tail call i64 @patch_intersection(ptr noundef nonnull %plane_equ, ptr noundef nonnull %p1, ptr noundef nonnull %p2, ptr noundef nonnull %p3, i64 noundef %process_id), !dbg !275
  call void @llvm.dbg.value(metadata i64 %call8, metadata !247, metadata !DIExpression()), !dbg !248
  %and = and i64 %call8, 42, !dbg !276
  %cmp9 = icmp eq i64 %and, 0, !dbg !276
  br i1 %cmp9, label %if.then10, label %if.else21, !dbg !278

if.then10:                                        ; preds = %while.cond
  %bsp_positive11 = getelementptr inbounds %struct._patch, ptr %parent.1, i64 0, i32 13, !dbg !279
  %4 = load ptr, ptr %bsp_positive11, align 8, !dbg !279
  %cmp12 = icmp eq ptr %4, null, !dbg !282
  br i1 %cmp12, label %if.then13, label %while.cond.backedge, !dbg !283

if.then13:                                        ; preds = %if.then10
  %bsp_positive11.le = getelementptr inbounds %struct._patch, ptr %parent.1, i64 0, i32 13, !dbg !279
  store ptr %patch, ptr %bsp_positive11.le, align 8, !dbg !284
  %bsp_parent15 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 15, !dbg !286
  store ptr %parent.1, ptr %bsp_parent15, align 8, !dbg !287
  tail call void @attach_element(ptr noundef %patch, i64 noundef %process_id), !dbg !288
  %5 = load ptr, ptr @global, align 8, !dbg !289
  %bsp_tree_lock16 = getelementptr inbounds %struct.Global, ptr %5, i64 0, i32 4, !dbg !291
  %call17 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %bsp_tree_lock16) #12, !dbg !292
  %6 = ptrtoint ptr %patch to i64, !dbg !293
  tail call void @foreach_patch_in_bsp(ptr noundef nonnull @refine_newpatch, i64 noundef %6, i64 noundef %process_id), !dbg !294
  br label %cleanup, !dbg !295

if.else21:                                        ; preds = %while.cond
  %and22 = and i64 %call8, 21, !dbg !296
  %cmp23 = icmp eq i64 %and22, 0, !dbg !296
  br i1 %cmp23, label %if.then24, label %if.else35, !dbg !298

if.then24:                                        ; preds = %if.else21
  %bsp_negative25 = getelementptr inbounds %struct._patch, ptr %parent.1, i64 0, i32 14, !dbg !299
  %7 = load ptr, ptr %bsp_negative25, align 8, !dbg !299
  %cmp26 = icmp eq ptr %7, null, !dbg !302
  br i1 %cmp26, label %if.then27, label %while.cond.backedge, !dbg !303

while.cond.backedge:                              ; preds = %if.then24, %if.then10
  %parent.1.be = phi ptr [ %4, %if.then10 ], [ %7, %if.then24 ]
  br label %while.cond, !dbg !248, !llvm.loop !304

if.then27:                                        ; preds = %if.then24
  %bsp_negative25.le = getelementptr inbounds %struct._patch, ptr %parent.1, i64 0, i32 14, !dbg !299
  store ptr %patch, ptr %bsp_negative25.le, align 8, !dbg !307
  %bsp_parent29 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 15, !dbg !309
  store ptr %parent.1, ptr %bsp_parent29, align 8, !dbg !310
  tail call void @attach_element(ptr noundef %patch, i64 noundef %process_id), !dbg !311
  %8 = load ptr, ptr @global, align 8, !dbg !312
  %bsp_tree_lock30 = getelementptr inbounds %struct.Global, ptr %8, i64 0, i32 4, !dbg !314
  %call31 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %bsp_tree_lock30) #12, !dbg !315
  %9 = ptrtoint ptr %patch to i64, !dbg !316
  tail call void @foreach_patch_in_bsp(ptr noundef nonnull @refine_newpatch, i64 noundef %9, i64 noundef %process_id), !dbg !317
  br label %cleanup, !dbg !318

if.else35:                                        ; preds = %if.else21
  %10 = load ptr, ptr @global, align 8, !dbg !319
  %bsp_tree_lock36 = getelementptr inbounds %struct.Global, ptr %10, i64 0, i32 4, !dbg !322
  %call37 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %bsp_tree_lock36) #12, !dbg !323
  tail call void @split_patch(ptr noundef %patch, ptr noundef nonnull %parent.1, i64 noundef %call8, i64 noundef %process_id), !dbg !324
  br label %cleanup, !dbg !325

cleanup:                                          ; preds = %if.else35, %if.then27, %if.then13, %if.then2
  ret void, !dbg !326
}

; Function Attrs: nounwind
declare !dbg !327 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @attach_element(ptr noundef %patch, i64 noundef %process_id) local_unnamed_addr #0 !dbg !333 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !338, metadata !DIExpression()), !dbg !340
  %call = tail call ptr @get_element(i64 noundef %process_id) #12, !dbg !341
  call void @llvm.dbg.value(metadata ptr %call, metadata !339, metadata !DIExpression()), !dbg !340
  %el_root = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 16, !dbg !342
  store ptr %call, ptr %el_root, align 8, !dbg !343
  %patch1 = getelementptr inbounds %struct._element, ptr %call, i64 0, i32 1, !dbg !344
  store ptr %patch, ptr %patch1, align 8, !dbg !345
  %0 = load ptr, ptr %patch, align 8, !dbg !346
  %ev12 = getelementptr inbounds %struct._element, ptr %call, i64 0, i32 15, !dbg !347
  store ptr %0, ptr %ev12, align 8, !dbg !348
  %ev2 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 1, !dbg !349
  %1 = load ptr, ptr %ev2, align 8, !dbg !349
  %ev23 = getelementptr inbounds %struct._element, ptr %call, i64 0, i32 16, !dbg !350
  store ptr %1, ptr %ev23, align 8, !dbg !351
  %ev3 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 2, !dbg !352
  %2 = load ptr, ptr %ev3, align 8, !dbg !352
  %ev34 = getelementptr inbounds %struct._element, ptr %call, i64 0, i32 17, !dbg !353
  store ptr %2, ptr %ev34, align 8, !dbg !354
  %e12 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 3, !dbg !355
  %3 = load ptr, ptr %e12, align 8, !dbg !355
  %e125 = getelementptr inbounds %struct._element, ptr %call, i64 0, i32 18, !dbg !356
  store ptr %3, ptr %e125, align 8, !dbg !357
  %e23 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 4, !dbg !358
  %4 = load ptr, ptr %e23, align 8, !dbg !358
  %e236 = getelementptr inbounds %struct._element, ptr %call, i64 0, i32 19, !dbg !359
  store ptr %4, ptr %e236, align 8, !dbg !360
  %e31 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 5, !dbg !361
  %5 = load ptr, ptr %e31, align 8, !dbg !361
  %e317 = getelementptr inbounds %struct._element, ptr %call, i64 0, i32 20, !dbg !362
  store ptr %5, ptr %e317, align 8, !dbg !363
  %area = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 10, !dbg !364
  %6 = load float, ptr %area, align 4, !dbg !364
  %area8 = getelementptr inbounds %struct._element, ptr %call, i64 0, i32 21, !dbg !365
  store float %6, ptr %area8, align 8, !dbg !366
  %rad = getelementptr inbounds %struct._element, ptr %call, i64 0, i32 11, !dbg !367
  %emittance = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 12, !dbg !368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %rad, ptr noundef nonnull align 4 dereferenceable(12) %emittance, i64 12, i1 false), !dbg !368
  ret void, !dbg !369
}

; Function Attrs: nounwind
declare !dbg !370 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define dso_local i64 @patch_intersection(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3, i64 noundef %process_id) local_unnamed_addr #2 !dbg !371 {
entry:
  call void @llvm.dbg.value(metadata ptr %plane, metadata !376, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata ptr %p1, metadata !377, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata ptr %p2, metadata !378, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata ptr %p3, metadata !379, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !380, metadata !DIExpression()), !dbg !384
  %call = tail call i64 @point_intersection(ptr noundef %plane, ptr noundef %p1, i64 undef), !dbg !385
  call void @llvm.dbg.value(metadata i64 %call, metadata !381, metadata !DIExpression()), !dbg !384
  %call1 = tail call i64 @point_intersection(ptr noundef %plane, ptr noundef %p2, i64 undef), !dbg !386
  call void @llvm.dbg.value(metadata i64 %call1, metadata !382, metadata !DIExpression()), !dbg !384
  %call2 = tail call i64 @point_intersection(ptr noundef %plane, ptr noundef %p3, i64 undef), !dbg !387
  call void @llvm.dbg.value(metadata i64 %call2, metadata !383, metadata !DIExpression()), !dbg !384
  %shl = shl i64 %call2, 4, !dbg !388
  %shl3 = shl i64 %call1, 2, !dbg !389
  %or = or i64 %shl3, %call, !dbg !390
  %or4 = or i64 %or, %shl, !dbg !391
  ret i64 %or4, !dbg !392
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @refine_newpatch(ptr nocapture noundef readonly %patch, i64 noundef %newpatch, i64 noundef %process_id) #0 !dbg !393 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !397, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i64 %newpatch, metadata !398, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !399, metadata !DIExpression()), !dbg !402
  %0 = inttoptr i64 %newpatch to ptr, !dbg !403
  call void @llvm.dbg.value(metadata ptr %0, metadata !401, metadata !DIExpression()), !dbg !402
  %seq_no = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 17, !dbg !404
  %1 = load i64, ptr %seq_no, align 8, !dbg !404
  %seq_no1 = getelementptr inbounds %struct._patch, ptr %0, i64 0, i32 17, !dbg !406
  %2 = load i64, ptr %seq_no1, align 8, !dbg !406
  %cmp.not = icmp slt i64 %1, %2, !dbg !407
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !408

if.end:                                           ; preds = %entry
  %plane_equ = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 9, !dbg !409
  %p1 = getelementptr inbounds %struct._patch, ptr %0, i64 0, i32 6, !dbg !410
  %p2 = getelementptr inbounds %struct._patch, ptr %0, i64 0, i32 7, !dbg !411
  %p3 = getelementptr inbounds %struct._patch, ptr %0, i64 0, i32 8, !dbg !412
  %call = tail call i64 @patch_intersection(ptr noundef nonnull %plane_equ, ptr noundef nonnull %p1, ptr noundef nonnull %p2, ptr noundef nonnull %p3, i64 noundef %process_id), !dbg !413
  call void @llvm.dbg.value(metadata i64 %call, metadata !400, metadata !DIExpression()), !dbg !402
  %and = and i64 %call, 21, !dbg !414
  %cmp2 = icmp eq i64 %and, 0, !dbg !414
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !416

if.end4:                                          ; preds = %if.end
  %plane_equ5 = getelementptr inbounds %struct._patch, ptr %0, i64 0, i32 9, !dbg !417
  %p16 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !418
  %p27 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !419
  %p38 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !420
  %call9 = tail call i64 @patch_intersection(ptr noundef nonnull %plane_equ5, ptr noundef nonnull %p16, ptr noundef nonnull %p27, ptr noundef nonnull %p38, i64 noundef %process_id), !dbg !421
  call void @llvm.dbg.value(metadata i64 %call9, metadata !400, metadata !DIExpression()), !dbg !402
  %and10 = and i64 %call9, 21, !dbg !422
  %cmp11 = icmp eq i64 %and10, 0, !dbg !422
  br i1 %cmp11, label %cleanup, label %if.end13, !dbg !424

if.end13:                                         ; preds = %if.end4
  %el_root = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 16, !dbg !425
  %3 = load ptr, ptr %el_root, align 8, !dbg !425
  %el_root14 = getelementptr inbounds %struct._patch, ptr %0, i64 0, i32 16, !dbg !426
  %4 = load ptr, ptr %el_root14, align 8, !dbg !426
  tail call void @create_ff_refine_task(ptr noundef %3, ptr noundef %4, i64 noundef 0, i64 noundef %process_id) #12, !dbg !427
  br label %cleanup, !dbg !428

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end13
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @split_patch(ptr noundef %patch, ptr noundef %node, i64 noundef %xing_code, i64 noundef %process_id) local_unnamed_addr #0 !dbg !429 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !433, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.value(metadata ptr %node, metadata !434, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.value(metadata i64 %xing_code, metadata !435, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !436, metadata !DIExpression()), !dbg !440
  %and = and i64 %xing_code, 3, !dbg !441
  call void @llvm.dbg.value(metadata i64 %and, metadata !437, metadata !DIExpression()), !dbg !440
  %0 = lshr i64 %xing_code, 2, !dbg !442
  %and1 = and i64 %0, 3, !dbg !442
  call void @llvm.dbg.value(metadata i64 %and1, metadata !438, metadata !DIExpression()), !dbg !440
  %1 = lshr i64 %xing_code, 4, !dbg !443
  %and3 = and i64 %1, 3, !dbg !443
  call void @llvm.dbg.value(metadata i64 %and3, metadata !439, metadata !DIExpression()), !dbg !440
  %cmp = icmp eq i64 %and, %and1, !dbg !444
  br i1 %cmp, label %if.then, label %if.else, !dbg !446

if.then:                                          ; preds = %entry
  %ev3 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 2, !dbg !447
  %2 = load ptr, ptr %ev3, align 8, !dbg !447
  %3 = load ptr, ptr %patch, align 8, !dbg !448
  %ev2 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 1, !dbg !449
  %4 = load ptr, ptr %ev2, align 8, !dbg !449
  %e31 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 5, !dbg !450
  %5 = load ptr, ptr %e31, align 8, !dbg !450
  %e12 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 3, !dbg !451
  %6 = load ptr, ptr %e12, align 8, !dbg !451
  %e23 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 4, !dbg !452
  %7 = load ptr, ptr %e23, align 8, !dbg !452
  tail call fastcc void @split_into_3(ptr noundef nonnull %patch, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %node, i64 noundef %process_id), !dbg !453
  br label %if.end49, !dbg !453

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq i64 %and, %and3, !dbg !454
  br i1 %cmp4, label %if.then5, label %if.else12, !dbg !456

if.then5:                                         ; preds = %if.else
  %ev26 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 1, !dbg !457
  %8 = load ptr, ptr %ev26, align 8, !dbg !457
  %ev37 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 2, !dbg !458
  %9 = load ptr, ptr %ev37, align 8, !dbg !458
  %10 = load ptr, ptr %patch, align 8, !dbg !459
  %e239 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 4, !dbg !460
  %11 = load ptr, ptr %e239, align 8, !dbg !460
  %e3110 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 5, !dbg !461
  %12 = load ptr, ptr %e3110, align 8, !dbg !461
  %e1211 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 3, !dbg !462
  %13 = load ptr, ptr %e1211, align 8, !dbg !462
  tail call fastcc void @split_into_3(ptr noundef nonnull %patch, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %node, i64 noundef %process_id), !dbg !463
  br label %if.end49, !dbg !463

if.else12:                                        ; preds = %if.else
  %cmp13 = icmp eq i64 %and1, %and3, !dbg !464
  br i1 %cmp13, label %if.then14, label %if.else21, !dbg !466

if.then14:                                        ; preds = %if.else12
  %14 = load ptr, ptr %patch, align 8, !dbg !467
  %ev216 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 1, !dbg !468
  %15 = load ptr, ptr %ev216, align 8, !dbg !468
  %ev317 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 2, !dbg !469
  %16 = load ptr, ptr %ev317, align 8, !dbg !469
  %e1218 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 3, !dbg !470
  %17 = load ptr, ptr %e1218, align 8, !dbg !470
  %e2319 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 4, !dbg !471
  %18 = load ptr, ptr %e2319, align 8, !dbg !471
  %e3120 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 5, !dbg !472
  %19 = load ptr, ptr %e3120, align 8, !dbg !472
  tail call fastcc void @split_into_3(ptr noundef nonnull %patch, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %node, i64 noundef %process_id), !dbg !473
  br label %if.end49, !dbg !473

if.else21:                                        ; preds = %if.else12
  %cmp22 = icmp eq i64 %and, 0, !dbg !474
  br i1 %cmp22, label %if.then23, label %if.else30, !dbg !476

if.then23:                                        ; preds = %if.else21
  %20 = load ptr, ptr %patch, align 8, !dbg !477
  %ev225 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 1, !dbg !478
  %21 = load ptr, ptr %ev225, align 8, !dbg !478
  %ev326 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 2, !dbg !479
  %22 = load ptr, ptr %ev326, align 8, !dbg !479
  %e1227 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 3, !dbg !480
  %23 = load ptr, ptr %e1227, align 8, !dbg !480
  %e2328 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 4, !dbg !481
  %24 = load ptr, ptr %e2328, align 8, !dbg !481
  %e3129 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 5, !dbg !482
  %25 = load ptr, ptr %e3129, align 8, !dbg !482
  tail call fastcc void @split_into_2(ptr noundef nonnull %patch, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %node, i64 noundef %process_id), !dbg !483
  br label %if.end49, !dbg !483

if.else30:                                        ; preds = %if.else21
  %cmp31 = icmp eq i64 %and1, 0, !dbg !484
  br i1 %cmp31, label %if.then32, label %if.else39, !dbg !486

if.then32:                                        ; preds = %if.else30
  %ev233 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 1, !dbg !487
  %26 = load ptr, ptr %ev233, align 8, !dbg !487
  %ev334 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 2, !dbg !488
  %27 = load ptr, ptr %ev334, align 8, !dbg !488
  %28 = load ptr, ptr %patch, align 8, !dbg !489
  %e2336 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 4, !dbg !490
  %29 = load ptr, ptr %e2336, align 8, !dbg !490
  %e3137 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 5, !dbg !491
  %30 = load ptr, ptr %e3137, align 8, !dbg !491
  %e1238 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 3, !dbg !492
  %31 = load ptr, ptr %e1238, align 8, !dbg !492
  tail call fastcc void @split_into_2(ptr noundef nonnull %patch, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %node, i64 noundef %process_id), !dbg !493
  br label %if.end49, !dbg !493

if.else39:                                        ; preds = %if.else30
  %ev340 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 2, !dbg !494
  %32 = load ptr, ptr %ev340, align 8, !dbg !494
  %33 = load ptr, ptr %patch, align 8, !dbg !495
  %ev242 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 1, !dbg !496
  %34 = load ptr, ptr %ev242, align 8, !dbg !496
  %e3143 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 5, !dbg !497
  %35 = load ptr, ptr %e3143, align 8, !dbg !497
  %e1244 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 3, !dbg !498
  %36 = load ptr, ptr %e1244, align 8, !dbg !498
  %e2345 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 4, !dbg !499
  %37 = load ptr, ptr %e2345, align 8, !dbg !499
  tail call fastcc void @split_into_2(ptr noundef nonnull %patch, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %node, i64 noundef %process_id), !dbg !500
  br label %if.end49

if.end49:                                         ; preds = %if.then5, %if.then23, %if.else39, %if.then32, %if.then14, %if.then
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @split_into_3(ptr noundef %patch, ptr noundef %ev1, ptr noundef %ev2, ptr noundef %ev3, ptr noundef %e12, ptr noundef %e23, ptr noundef %e31, ptr noundef %parent, i64 noundef %process_id) unnamed_addr #0 !dbg !502 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !506, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata ptr %ev1, metadata !507, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata ptr %ev2, metadata !508, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata ptr %ev3, metadata !509, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata ptr %e12, metadata !510, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata ptr %e23, metadata !511, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata ptr %e31, metadata !512, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata ptr %parent, metadata !513, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !514, metadata !DIExpression()), !dbg !527
  %plane_equ = getelementptr inbounds %struct._patch, ptr %parent, i64 0, i32 9, !dbg !528
  %call = tail call float @plane_equ(ptr noundef nonnull %plane_equ, ptr noundef %ev1, i64 undef), !dbg !529
  call void @llvm.dbg.value(metadata float %call, metadata !517, metadata !DIExpression()), !dbg !527
  %call3 = tail call float @plane_equ(ptr noundef nonnull %plane_equ, ptr noundef %ev2, i64 undef), !dbg !530
  call void @llvm.dbg.value(metadata float %call3, metadata !518, metadata !DIExpression()), !dbg !527
  %call6 = tail call float @plane_equ(ptr noundef nonnull %plane_equ, ptr noundef %ev3, i64 undef), !dbg !531
  call void @llvm.dbg.value(metadata float %call6, metadata !519, metadata !DIExpression()), !dbg !527
  %sub = fsub float %call, %call3, !dbg !532
  %div = fdiv float %call, %sub, !dbg !533
  call void @llvm.dbg.value(metadata float %div, metadata !520, metadata !DIExpression()), !dbg !527
  %0 = load ptr, ptr %e12, align 8, !dbg !534
  %cmp = icmp eq ptr %0, %ev2, !dbg !534
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !525, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !527
  %sub8 = fsub float 1.000000e+00, %div
  %spec.select230 = select i1 %cmp, float %div, float %sub8, !dbg !536
  tail call void @subdivide_edge(ptr noundef nonnull %e12, float noundef %spec.select230, i64 noundef %process_id) #12, !dbg !537
  %ea = getelementptr inbounds %struct._edge, ptr %e12, i64 0, i32 2, !dbg !538
  %1 = load ptr, ptr %ea, align 8, !dbg !538
  %pb = getelementptr inbounds %struct._edge, ptr %1, i64 0, i32 1, !dbg !539
  %2 = load ptr, ptr %pb, align 8, !dbg !539
  call void @llvm.dbg.value(metadata ptr %2, metadata !515, metadata !DIExpression()), !dbg !527
  %sub9 = fsub float %call, %call6, !dbg !540
  %div10 = fdiv float %call, %sub9, !dbg !541
  call void @llvm.dbg.value(metadata float %div10, metadata !521, metadata !DIExpression()), !dbg !527
  %3 = load ptr, ptr %e31, align 8, !dbg !542
  %cmp12 = icmp eq ptr %3, %ev1, !dbg !542
  call void @llvm.dbg.value(metadata i1 %cmp12, metadata !526, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !527
  %sub17 = fsub float 1.000000e+00, %div10
  %spec.select231 = select i1 %cmp12, float %sub17, float %div10, !dbg !544
  tail call void @subdivide_edge(ptr noundef nonnull %e31, float noundef %spec.select231, i64 noundef %process_id) #12, !dbg !545
  %ea20 = getelementptr inbounds %struct._edge, ptr %e31, i64 0, i32 2, !dbg !546
  %4 = load ptr, ptr %ea20, align 8, !dbg !546
  %pb21 = getelementptr inbounds %struct._edge, ptr %4, i64 0, i32 1, !dbg !547
  %5 = load ptr, ptr %pb21, align 8, !dbg !547
  call void @llvm.dbg.value(metadata ptr %5, metadata !516, metadata !DIExpression()), !dbg !527
  %call22 = tail call ptr @get_patch(i64 undef), !dbg !548
  call void @llvm.dbg.value(metadata ptr %call22, metadata !522, metadata !DIExpression()), !dbg !527
  %p1 = getelementptr inbounds %struct._patch, ptr %call22, i64 0, i32 6, !dbg !549
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p1, ptr noundef nonnull align 8 dereferenceable(12) %ev1, i64 12, i1 false), !dbg !550
  %p224 = getelementptr inbounds %struct._patch, ptr %call22, i64 0, i32 7, !dbg !551
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %p224, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !dbg !552
  %p3 = getelementptr inbounds %struct._patch, ptr %call22, i64 0, i32 8, !dbg !553
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p3, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !dbg !554
  store ptr %ev1, ptr %call22, align 8, !dbg !555
  %6 = load ptr, ptr %ea, align 8, !dbg !556
  %pb29 = getelementptr inbounds %struct._edge, ptr %6, i64 0, i32 1, !dbg !557
  %7 = load ptr, ptr %pb29, align 8, !dbg !557
  %ev230 = getelementptr inbounds %struct._patch, ptr %call22, i64 0, i32 1, !dbg !558
  store ptr %7, ptr %ev230, align 8, !dbg !559
  %8 = load ptr, ptr %ea20, align 8, !dbg !560
  %pb32 = getelementptr inbounds %struct._edge, ptr %8, i64 0, i32 1, !dbg !561
  %9 = load ptr, ptr %pb32, align 8, !dbg !561
  %ev333 = getelementptr inbounds %struct._patch, ptr %call22, i64 0, i32 2, !dbg !562
  store ptr %9, ptr %ev333, align 8, !dbg !563
  %eb = getelementptr inbounds %struct._edge, ptr %e12, i64 0, i32 3
  %spec.select = select i1 %cmp, ptr %eb, ptr %ea, !dbg !564
  %cond = load ptr, ptr %spec.select, align 8, !dbg !564
  %e1236 = getelementptr inbounds %struct._patch, ptr %call22, i64 0, i32 3, !dbg !565
  store ptr %cond, ptr %e1236, align 8, !dbg !566
  %call37 = tail call ptr @create_edge(ptr noundef %2, ptr noundef %5, i64 noundef %process_id) #12, !dbg !567
  call void @llvm.dbg.value(metadata ptr %call37, metadata !523, metadata !DIExpression()), !dbg !527
  %e2338 = getelementptr inbounds %struct._patch, ptr %call22, i64 0, i32 4, !dbg !568
  store ptr %call37, ptr %e2338, align 8, !dbg !569
  %eb41 = getelementptr inbounds %struct._edge, ptr %e31, i64 0, i32 3
  %spec.select228 = select i1 %cmp12, ptr %ea20, ptr %eb41, !dbg !570
  %cond45 = load ptr, ptr %spec.select228, align 8, !dbg !570
  %e3146 = getelementptr inbounds %struct._patch, ptr %call22, i64 0, i32 5, !dbg !571
  store ptr %cond45, ptr %e3146, align 8, !dbg !572
  %plane_equ47 = getelementptr inbounds %struct._patch, ptr %call22, i64 0, i32 9, !dbg !573
  %plane_equ48 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 9, !dbg !574
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %plane_equ47, ptr noundef nonnull align 4 dereferenceable(16) %plane_equ48, i64 16, i1 false), !dbg !574
  %mul = fmul float %div, %div10, !dbg !575
  %area = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 10, !dbg !576
  %10 = load float, ptr %area, align 4, !dbg !576
  %mul49 = fmul float %mul, %10, !dbg !577
  %area50 = getelementptr inbounds %struct._patch, ptr %call22, i64 0, i32 10, !dbg !578
  store float %mul49, ptr %area50, align 4, !dbg !579
  %color = getelementptr inbounds %struct._patch, ptr %call22, i64 0, i32 11, !dbg !580
  %color51 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 11, !dbg !581
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %color, ptr noundef nonnull align 8 dereferenceable(12) %color51, i64 12, i1 false), !dbg !581
  %emittance = getelementptr inbounds %struct._patch, ptr %call22, i64 0, i32 12, !dbg !582
  %emittance52 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 12, !dbg !583
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %emittance, ptr noundef nonnull align 4 dereferenceable(12) %emittance52, i64 12, i1 false), !dbg !583
  tail call void @define_patch(ptr noundef nonnull %call22, ptr noundef %parent, i64 noundef %process_id), !dbg !584
  %call53 = tail call ptr @get_patch(i64 undef), !dbg !585
  call void @llvm.dbg.value(metadata ptr %call53, metadata !522, metadata !DIExpression()), !dbg !527
  %p154 = getelementptr inbounds %struct._patch, ptr %call53, i64 0, i32 6, !dbg !586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p154, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !dbg !587
  %p256 = getelementptr inbounds %struct._patch, ptr %call53, i64 0, i32 7, !dbg !588
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %p256, ptr noundef nonnull align 8 dereferenceable(12) %ev2, i64 12, i1 false), !dbg !589
  %p358 = getelementptr inbounds %struct._patch, ptr %call53, i64 0, i32 8, !dbg !590
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p358, ptr noundef nonnull align 8 dereferenceable(12) %ev3, i64 12, i1 false), !dbg !591
  store ptr %2, ptr %call53, align 8, !dbg !592
  %ev261 = getelementptr inbounds %struct._patch, ptr %call53, i64 0, i32 1, !dbg !593
  store ptr %ev2, ptr %ev261, align 8, !dbg !594
  %ev362 = getelementptr inbounds %struct._patch, ptr %call53, i64 0, i32 2, !dbg !595
  store ptr %ev3, ptr %ev362, align 8, !dbg !596
  %spec.select227 = select i1 %cmp, ptr %ea, ptr %eb, !dbg !597
  %cond69 = load ptr, ptr %spec.select227, align 8, !dbg !597
  %e1270 = getelementptr inbounds %struct._patch, ptr %call53, i64 0, i32 3, !dbg !598
  store ptr %cond69, ptr %e1270, align 8, !dbg !599
  %e2371 = getelementptr inbounds %struct._patch, ptr %call53, i64 0, i32 4, !dbg !600
  store ptr %e23, ptr %e2371, align 8, !dbg !601
  %call72 = tail call ptr @create_edge(ptr noundef %ev3, ptr noundef %2, i64 noundef %process_id) #12, !dbg !602
  call void @llvm.dbg.value(metadata ptr %call72, metadata !524, metadata !DIExpression()), !dbg !527
  %e3173 = getelementptr inbounds %struct._patch, ptr %call53, i64 0, i32 5, !dbg !603
  store ptr %call72, ptr %e3173, align 8, !dbg !604
  %plane_equ74 = getelementptr inbounds %struct._patch, ptr %call53, i64 0, i32 9, !dbg !605
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %plane_equ74, ptr noundef nonnull align 4 dereferenceable(16) %plane_equ48, i64 16, i1 false), !dbg !606
  %conv76 = fpext float %div to double, !dbg !607
  %sub77 = fsub double 1.000000e+00, %conv76, !dbg !608
  %11 = load float, ptr %area, align 4, !dbg !609
  %conv79 = fpext float %11 to double, !dbg !610
  %mul80 = fmul double %sub77, %conv79, !dbg !611
  %conv81 = fptrunc double %mul80 to float, !dbg !612
  %area82 = getelementptr inbounds %struct._patch, ptr %call53, i64 0, i32 10, !dbg !613
  store float %conv81, ptr %area82, align 4, !dbg !614
  %color83 = getelementptr inbounds %struct._patch, ptr %call53, i64 0, i32 11, !dbg !615
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %color83, ptr noundef nonnull align 8 dereferenceable(12) %color51, i64 12, i1 false), !dbg !616
  %emittance85 = getelementptr inbounds %struct._patch, ptr %call53, i64 0, i32 12, !dbg !617
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %emittance85, ptr noundef nonnull align 4 dereferenceable(12) %emittance52, i64 12, i1 false), !dbg !618
  tail call void @define_patch(ptr noundef nonnull %call53, ptr noundef %parent, i64 noundef %process_id), !dbg !619
  %p187 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !620
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p187, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !dbg !621
  %p289 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !622
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %p289, ptr noundef nonnull align 8 dereferenceable(12) %ev3, i64 12, i1 false), !dbg !623
  %p391 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !624
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p391, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !dbg !625
  store ptr %2, ptr %patch, align 8, !dbg !626
  %ev294 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 1, !dbg !627
  store ptr %ev3, ptr %ev294, align 8, !dbg !628
  %ev395 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 2, !dbg !629
  store ptr %5, ptr %ev395, align 8, !dbg !630
  %e1296 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 3, !dbg !631
  store ptr %call72, ptr %e1296, align 8, !dbg !632
  %spec.select229 = select i1 %cmp12, ptr %eb41, ptr %ea20, !dbg !633
  %cond103 = load ptr, ptr %spec.select229, align 8, !dbg !633
  %e23104 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 4, !dbg !634
  store ptr %cond103, ptr %e23104, align 8, !dbg !635
  %e31105 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 5, !dbg !636
  store ptr %call37, ptr %e31105, align 8, !dbg !637
  %conv107 = fpext float %div10 to double, !dbg !638
  %sub108 = fsub double 1.000000e+00, %conv107, !dbg !639
  %mul109 = fmul double %sub108, %conv76, !dbg !640
  %12 = load float, ptr %area, align 4, !dbg !641
  %conv111 = fpext float %12 to double, !dbg !642
  %mul112 = fmul double %mul109, %conv111, !dbg !643
  %conv113 = fptrunc double %mul112 to float, !dbg !644
  store float %conv113, ptr %area, align 4, !dbg !645
  tail call void @define_patch(ptr noundef nonnull %patch, ptr noundef %parent, i64 noundef %process_id), !dbg !646
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @split_into_2(ptr noundef %patch, ptr noundef %ev1, ptr noundef %ev2, ptr noundef %ev3, ptr noundef %e12, ptr noundef %e23, ptr noundef %e31, ptr noundef %parent, i64 noundef %process_id) unnamed_addr #0 !dbg !648 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !650, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata ptr %ev1, metadata !651, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata ptr %ev2, metadata !652, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata ptr %ev3, metadata !653, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata ptr %e12, metadata !654, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata ptr %e23, metadata !655, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata ptr %e31, metadata !656, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata ptr %parent, metadata !657, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !658, metadata !DIExpression()), !dbg !666
  %plane_equ = getelementptr inbounds %struct._patch, ptr %parent, i64 0, i32 9, !dbg !667
  %call = tail call float @plane_equ(ptr noundef nonnull %plane_equ, ptr noundef %ev2, i64 undef), !dbg !668
  call void @llvm.dbg.value(metadata float %call, metadata !661, metadata !DIExpression()), !dbg !666
  %call3 = tail call float @plane_equ(ptr noundef nonnull %plane_equ, ptr noundef %ev3, i64 undef), !dbg !669
  call void @llvm.dbg.value(metadata float %call3, metadata !662, metadata !DIExpression()), !dbg !666
  %sub = fsub float %call, %call3, !dbg !670
  %div = fdiv float %call, %sub, !dbg !671
  call void @llvm.dbg.value(metadata float %div, metadata !663, metadata !DIExpression()), !dbg !666
  %0 = load ptr, ptr %e23, align 8, !dbg !672
  %cmp = icmp eq ptr %0, %ev3, !dbg !672
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !665, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !666
  %sub5 = fsub float 1.000000e+00, %div
  %spec.select116 = select i1 %cmp, float %div, float %sub5, !dbg !674
  tail call void @subdivide_edge(ptr noundef nonnull %e23, float noundef %spec.select116, i64 noundef %process_id) #12, !dbg !675
  %ea = getelementptr inbounds %struct._edge, ptr %e23, i64 0, i32 2, !dbg !676
  %1 = load ptr, ptr %ea, align 8, !dbg !676
  %pb = getelementptr inbounds %struct._edge, ptr %1, i64 0, i32 1, !dbg !677
  %2 = load ptr, ptr %pb, align 8, !dbg !677
  call void @llvm.dbg.value(metadata ptr %2, metadata !659, metadata !DIExpression()), !dbg !666
  %call6 = tail call ptr @get_patch(i64 undef), !dbg !678
  call void @llvm.dbg.value(metadata ptr %call6, metadata !664, metadata !DIExpression()), !dbg !666
  %p1 = getelementptr inbounds %struct._patch, ptr %call6, i64 0, i32 6, !dbg !679
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p1, ptr noundef nonnull align 8 dereferenceable(12) %ev1, i64 12, i1 false), !dbg !680
  %p28 = getelementptr inbounds %struct._patch, ptr %call6, i64 0, i32 7, !dbg !681
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %p28, ptr noundef nonnull align 8 dereferenceable(12) %ev2, i64 12, i1 false), !dbg !682
  %p3 = getelementptr inbounds %struct._patch, ptr %call6, i64 0, i32 8, !dbg !683
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p3, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !dbg !684
  store ptr %ev1, ptr %call6, align 8, !dbg !685
  %ev212 = getelementptr inbounds %struct._patch, ptr %call6, i64 0, i32 1, !dbg !686
  store ptr %ev2, ptr %ev212, align 8, !dbg !687
  %ev313 = getelementptr inbounds %struct._patch, ptr %call6, i64 0, i32 2, !dbg !688
  store ptr %2, ptr %ev313, align 8, !dbg !689
  %e1214 = getelementptr inbounds %struct._patch, ptr %call6, i64 0, i32 3, !dbg !690
  store ptr %e12, ptr %e1214, align 8, !dbg !691
  %eb = getelementptr inbounds %struct._edge, ptr %e23, i64 0, i32 3
  %spec.select = select i1 %cmp, ptr %eb, ptr %ea, !dbg !692
  %cond = load ptr, ptr %spec.select, align 8, !dbg !692
  %e2317 = getelementptr inbounds %struct._patch, ptr %call6, i64 0, i32 4, !dbg !693
  store ptr %cond, ptr %e2317, align 8, !dbg !694
  %call18 = tail call ptr @create_edge(ptr noundef %2, ptr noundef %ev1, i64 noundef %process_id) #12, !dbg !695
  call void @llvm.dbg.value(metadata ptr %call18, metadata !660, metadata !DIExpression()), !dbg !666
  %e3119 = getelementptr inbounds %struct._patch, ptr %call6, i64 0, i32 5, !dbg !696
  store ptr %call18, ptr %e3119, align 8, !dbg !697
  %plane_equ20 = getelementptr inbounds %struct._patch, ptr %call6, i64 0, i32 9, !dbg !698
  %plane_equ21 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 9, !dbg !699
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %plane_equ20, ptr noundef nonnull align 4 dereferenceable(16) %plane_equ21, i64 16, i1 false), !dbg !699
  %area = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 10, !dbg !700
  %3 = load float, ptr %area, align 4, !dbg !700
  %mul = fmul float %div, %3, !dbg !701
  %area22 = getelementptr inbounds %struct._patch, ptr %call6, i64 0, i32 10, !dbg !702
  store float %mul, ptr %area22, align 4, !dbg !703
  %color = getelementptr inbounds %struct._patch, ptr %call6, i64 0, i32 11, !dbg !704
  %color23 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 11, !dbg !705
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %color, ptr noundef nonnull align 8 dereferenceable(12) %color23, i64 12, i1 false), !dbg !705
  %emittance = getelementptr inbounds %struct._patch, ptr %call6, i64 0, i32 12, !dbg !706
  %emittance24 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 12, !dbg !707
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %emittance, ptr noundef nonnull align 4 dereferenceable(12) %emittance24, i64 12, i1 false), !dbg !707
  tail call void @define_patch(ptr noundef nonnull %call6, ptr noundef %parent, i64 noundef %process_id), !dbg !708
  %p125 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !709
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p125, ptr noundef nonnull align 8 dereferenceable(12) %ev1, i64 12, i1 false), !dbg !710
  %p227 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !711
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %p227, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !dbg !712
  %p330 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !713
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p330, ptr noundef nonnull align 8 dereferenceable(12) %ev3, i64 12, i1 false), !dbg !714
  store ptr %ev1, ptr %patch, align 8, !dbg !715
  %ev233 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 1, !dbg !716
  store ptr %2, ptr %ev233, align 8, !dbg !717
  %ev334 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 2, !dbg !718
  store ptr %ev3, ptr %ev334, align 8, !dbg !719
  %e1235 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 3, !dbg !720
  store ptr %call18, ptr %e1235, align 8, !dbg !721
  %spec.select115 = select i1 %cmp, ptr %ea, ptr %eb, !dbg !722
  %cond42 = load ptr, ptr %spec.select115, align 8, !dbg !722
  %e2343 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 4, !dbg !723
  store ptr %cond42, ptr %e2343, align 8, !dbg !724
  %e3144 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 5, !dbg !725
  store ptr %e31, ptr %e3144, align 8, !dbg !726
  %conv45 = fpext float %div to double, !dbg !727
  %sub46 = fsub double 1.000000e+00, %conv45, !dbg !728
  %4 = load float, ptr %area, align 4, !dbg !729
  %conv48 = fpext float %4 to double, !dbg !730
  %mul49 = fmul double %sub46, %conv48, !dbg !731
  %conv50 = fptrunc double %mul49 to float, !dbg !732
  store float %conv50, ptr %area, align 4, !dbg !733
  tail call void @define_patch(ptr noundef nonnull %patch, ptr noundef %parent, i64 noundef %process_id), !dbg !734
  ret void, !dbg !735
}

declare !dbg !736 ptr @get_element(i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !739 void @create_ff_refine_task(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_patch(i64 %process_id) local_unnamed_addr #0 !dbg !742 {
entry:
  call void @llvm.dbg.value(metadata i64 undef, metadata !746, metadata !DIExpression()), !dbg !748
  %0 = load ptr, ptr @global, align 8, !dbg !749
  %free_patch_lock = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 21, !dbg !751
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %free_patch_lock) #12, !dbg !752
  %1 = load ptr, ptr @global, align 8, !dbg !753
  %free_patch = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 22, !dbg !755
  %2 = load ptr, ptr %free_patch, align 8, !dbg !755
  %cmp = icmp eq ptr %2, null, !dbg !756
  br i1 %cmp, label %if.then, label %if.end, !dbg !757

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !758
  %3 = load ptr, ptr @global, align 8, !dbg !760
  %free_patch_lock2 = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 21, !dbg !762
  %call3 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %free_patch_lock2) #12, !dbg !763
  tail call void @exit(i32 noundef 1) #13, !dbg !764
  unreachable, !dbg !764

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %2, metadata !747, metadata !DIExpression()), !dbg !748
  %bsp_positive = getelementptr inbounds %struct._patch, ptr %2, i64 0, i32 13, !dbg !765
  %4 = load ptr, ptr %bsp_positive, align 8, !dbg !765
  store ptr %4, ptr %free_patch, align 8, !dbg !766
  %n_total_patches = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 23, !dbg !767
  %5 = load i64, ptr %n_total_patches, align 8, !dbg !768
  %inc = add nsw i64 %5, 1, !dbg !768
  store i64 %inc, ptr %n_total_patches, align 8, !dbg !768
  %n_free_patches = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 24, !dbg !769
  %6 = load i64, ptr %n_free_patches, align 8, !dbg !770
  %dec = add nsw i64 %6, -1, !dbg !770
  store i64 %dec, ptr %n_free_patches, align 8, !dbg !770
  %free_patch_lock6 = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 21, !dbg !771
  %call7 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %free_patch_lock6) #12, !dbg !773
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %bsp_positive, i8 0, i64 32, i1 false), !dbg !774
  ret ptr %2, !dbg !775
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_patchlist(i64 noundef %process_id) local_unnamed_addr #0 !dbg !776 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !780, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i64 0, metadata !781, metadata !DIExpression()), !dbg !782
  br label %for.body, !dbg !783

for.body:                                         ; preds = %entry, %for.body
  %i.017 = phi i64 [ 0, %entry ], [ %add, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.017, metadata !781, metadata !DIExpression()), !dbg !782
  %0 = load ptr, ptr @global, align 8, !dbg !785
  %add = add nuw nsw i64 %i.017, 1, !dbg !788
  %arrayidx = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 25, i64 %add, !dbg !785
  %bsp_positive = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 25, i64 %i.017, i32 13, !dbg !789
  store ptr %arrayidx, ptr %bsp_positive, align 8, !dbg !790
  %1 = load ptr, ptr @global, align 8, !dbg !791
  %seq_no = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 25, i64 %i.017, i32 17, !dbg !792
  store i64 %i.017, ptr %seq_no, align 8, !dbg !793
  call void @llvm.dbg.value(metadata i64 %add, metadata !781, metadata !DIExpression()), !dbg !782
  %exitcond.not = icmp eq i64 %add, 1023, !dbg !794
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !783, !llvm.loop !795

for.end:                                          ; preds = %for.body
  %2 = load ptr, ptr @global, align 8, !dbg !798
  %bsp_positive7 = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 25, i64 1023, i32 13, !dbg !799
  store ptr null, ptr %bsp_positive7, align 8, !dbg !800
  %seq_no10 = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 25, i64 1023, i32 17, !dbg !801
  store i64 1023, ptr %seq_no10, align 8, !dbg !802
  %patch_buf11 = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 25, !dbg !803
  %free_patch = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 22, !dbg !804
  store ptr %patch_buf11, ptr %free_patch, align 8, !dbg !805
  %n_total_patches = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 23, !dbg !806
  store i64 0, ptr %n_total_patches, align 8, !dbg !807
  %n_free_patches = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 24, !dbg !808
  store i64 1024, ptr %n_free_patches, align 8, !dbg !809
  %free_patch_lock = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 21, !dbg !810
  %call = tail call i32 @pthread_mutex_init(ptr noundef nonnull %free_patch_lock, ptr noundef null) #12, !dbg !812
  ret void, !dbg !813
}

; Function Attrs: nounwind
declare !dbg !814 i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_patch(ptr noundef %patch, i64 noundef %process_id) local_unnamed_addr #0 !dbg !827 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !829, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !830, metadata !DIExpression()), !dbg !831
  %0 = ptrtoint ptr %patch to i64, !dbg !832
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i64 noundef %0), !dbg !833
  %p1 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !834
  tail call void @print_point(ptr noundef nonnull %p1) #12, !dbg !835
  %p2 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !836
  tail call void @print_point(ptr noundef nonnull %p2) #12, !dbg !837
  %p3 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !838
  tail call void @print_point(ptr noundef nonnull %p3) #12, !dbg !839
  %plane_equ = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 9, !dbg !840
  tail call void @print_plane_equ(ptr noundef nonnull %plane_equ, i64 undef), !dbg !841
  %area = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 10, !dbg !842
  %1 = load float, ptr %area, align 4, !dbg !842
  %conv = fpext float %1 to double, !dbg !843
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %conv), !dbg !844
  ret void, !dbg !845
}

declare !dbg !846 void @print_point(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_plane_equ(ptr nocapture noundef readonly %peq, i64 %process_id) local_unnamed_addr #7 !dbg !849 {
entry:
  call void @llvm.dbg.value(metadata ptr %peq, metadata !853, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i64 undef, metadata !854, metadata !DIExpression()), !dbg !855
  %0 = load float, ptr %peq, align 4, !dbg !856
  %conv = fpext float %0 to double, !dbg !857
  %y = getelementptr inbounds %struct.Vertex, ptr %peq, i64 0, i32 1, !dbg !858
  %1 = load float, ptr %y, align 4, !dbg !858
  %conv2 = fpext float %1 to double, !dbg !859
  %z = getelementptr inbounds %struct.Vertex, ptr %peq, i64 0, i32 2, !dbg !860
  %2 = load float, ptr %z, align 4, !dbg !860
  %conv4 = fpext float %2 to double, !dbg !861
  %c = getelementptr inbounds %struct.PlaneEqu, ptr %peq, i64 0, i32 1, !dbg !862
  %3 = load float, ptr %c, align 4, !dbg !862
  %conv5 = fpext float %3 to double, !dbg !863
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, double noundef %conv, double noundef %conv2, double noundef %conv4, double noundef %conv5), !dbg !864
  ret void, !dbg !865
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_bsp_tree(i64 noundef %process_id) local_unnamed_addr #0 !dbg !866 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !868, metadata !DIExpression()), !dbg !869
  %puts = tail call i32 @puts(ptr nonnull @str.6), !dbg !870
  tail call void @foreach_patch_in_bsp(ptr noundef nonnull @_pr_patch, i64 noundef 0, i64 noundef %process_id), !dbg !871
  %puts2 = tail call i32 @puts(ptr nonnull @str.7), !dbg !872
  ret void, !dbg !873
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_pr_patch(ptr noundef %patch, i64 %dummy, i64 noundef %process_id) #0 !dbg !874 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !876, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 undef, metadata !877, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !878, metadata !DIExpression()), !dbg !879
  tail call void @print_patch(ptr noundef %patch, i64 noundef %process_id), !dbg !880
  ret void, !dbg !881
}

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define dso_local float @plane_equ(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %point, i64 %process_id) local_unnamed_addr #2 !dbg !882 {
entry:
  call void @llvm.dbg.value(metadata ptr %plane, metadata !886, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr %point, metadata !887, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata i64 undef, metadata !888, metadata !DIExpression()), !dbg !890
  %c = getelementptr inbounds %struct.PlaneEqu, ptr %plane, i64 0, i32 1, !dbg !891
  %0 = load float, ptr %c, align 4, !dbg !891
  %1 = load float, ptr %point, align 4, !dbg !892
  %2 = load float, ptr %plane, align 4, !dbg !893
  %3 = tail call float @llvm.fmuladd.f32(float %1, float %2, float %0), !dbg !894
  %y = getelementptr inbounds %struct.Vertex, ptr %point, i64 0, i32 1, !dbg !895
  %4 = load float, ptr %y, align 4, !dbg !895
  %y3 = getelementptr inbounds %struct.Vertex, ptr %plane, i64 0, i32 1, !dbg !896
  %5 = load float, ptr %y3, align 4, !dbg !896
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %3), !dbg !897
  %z = getelementptr inbounds %struct.Vertex, ptr %point, i64 0, i32 2, !dbg !898
  %7 = load float, ptr %z, align 4, !dbg !898
  %z5 = getelementptr inbounds %struct.Vertex, ptr %plane, i64 0, i32 2, !dbg !899
  %8 = load float, ptr %z5, align 4, !dbg !899
  %9 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %6), !dbg !900
  call void @llvm.dbg.value(metadata float %9, metadata !889, metadata !DIExpression()), !dbg !890
  ret float %9, !dbg !901
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: noinline nounwind uwtable
define dso_local float @comp_plane_equ(ptr noundef %pln, ptr noundef %p1, ptr noundef %p2, ptr noundef %p3, i64 noundef %process_id) local_unnamed_addr #0 !dbg !902 {
entry:
  call void @llvm.dbg.value(metadata ptr %pln, metadata !906, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr %p1, metadata !907, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr %p2, metadata !908, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr %p3, metadata !909, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !910, metadata !DIExpression()), !dbg !912
  %call = tail call float @plane_normal(ptr noundef %pln, ptr noundef %p1, ptr noundef %p2, ptr noundef %p3) #12, !dbg !913
  call void @llvm.dbg.value(metadata float %call, metadata !911, metadata !DIExpression()), !dbg !912
  %call2 = tail call float @inner_product(ptr noundef %pln, ptr noundef %p1) #12, !dbg !914
  %fneg = fneg float %call2, !dbg !915
  %c = getelementptr inbounds %struct.PlaneEqu, ptr %pln, i64 0, i32 1, !dbg !916
  store float %fneg, ptr %c, align 4, !dbg !917
  ret float %call, !dbg !918
}

declare !dbg !919 float @plane_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !922 float @inner_product(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define dso_local i64 @point_intersection(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %point, i64 %process_id) local_unnamed_addr #2 !dbg !925 {
entry:
  call void @llvm.dbg.value(metadata ptr %plane, metadata !929, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr %point, metadata !930, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i64 undef, metadata !931, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i64 0, metadata !933, metadata !DIExpression()), !dbg !934
  %call = tail call float @plane_equ(ptr noundef %plane, ptr noundef %point, i64 undef), !dbg !935
  call void @llvm.dbg.value(metadata float %call, metadata !932, metadata !DIExpression()), !dbg !934
  %conv = fpext float %call to double, !dbg !937
  %cmp = fcmp olt double %conv, -5.000000e-02, !dbg !938
  br i1 %cmp, label %if.then, label %if.end, !dbg !939

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i64 2, metadata !933, metadata !DIExpression()), !dbg !934
  br label %if.end, !dbg !940

if.end:                                           ; preds = %if.then, %entry
  %result_code.0 = phi i64 [ 2, %if.then ], [ 0, %entry ], !dbg !934
  call void @llvm.dbg.value(metadata i64 %result_code.0, metadata !933, metadata !DIExpression()), !dbg !934
  %cmp3 = fcmp ogt double %conv, 5.000000e-02, !dbg !941
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !943

if.then5:                                         ; preds = %if.end
  %or6 = or i64 %result_code.0, 1, !dbg !944
  call void @llvm.dbg.value(metadata i64 %or6, metadata !933, metadata !DIExpression()), !dbg !934
  br label %if.end7, !dbg !945

if.end7:                                          ; preds = %if.then5, %if.end
  %result_code.1 = phi i64 [ %or6, %if.then5 ], [ %result_code.0, %if.end ], !dbg !934
  call void @llvm.dbg.value(metadata i64 %result_code.1, metadata !933, metadata !DIExpression()), !dbg !934
  ret i64 %result_code.1, !dbg !946
}

declare !dbg !947 void @subdivide_edge(ptr noundef, float noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !950 ptr @create_edge(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "patchman.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "2df0dd0c9755ba4d0853616d0fa5c202")
!2 = !{!3, !4, !19}
!3 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "Patch", file: !1, line: 349, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_patch", file: !1, line: 333, size: 1344, elements: !7)
!7 = !{!8, !68, !69, !70, !81, !82, !83, !84, !85, !86, !92, !93, !94, !95, !97, !98, !99, !136}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !6, file: !1, line: 334, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemVertex", file: !1, line: 257, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_elemvertex", file: !1, line: 252, size: 320, elements: !12)
!12 = !{!13, !22, !29, !30}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !11, file: !1, line: 253, baseType: !14, size: 96)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vertex", file: !15, line: 14, baseType: !16)
!15 = !DIFile(filename: "./glibps/../structs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "127502bb3b1b1ffc96492ea685802424")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 12, size: 96, elements: !17)
!17 = !{!18, !20, !21}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !16, file: !15, line: 13, baseType: !19, size: 32)
!19 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !16, file: !15, line: 13, baseType: !19, size: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !16, file: !15, line: 13, baseType: !19, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !11, file: !1, line: 254, baseType: !23, size: 96, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "Rgb", file: !15, line: 24, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 22, size: 96, elements: !25)
!25 = !{!26, !27, !28}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !24, file: !15, line: 23, baseType: !19, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !24, file: !15, line: 23, baseType: !19, size: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !24, file: !15, line: 23, baseType: !19, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !11, file: !1, line: 255, baseType: !19, size: 32, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ev_lock", scope: !11, file: !1, line: 256, baseType: !31, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "Shared_Lock", file: !1, line: 118, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 115, size: 320, elements: !34)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !33, file: !1, line: 117, baseType: !36, size: 320)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !37, line: 72, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !37, line: 67, size: 320, elements: !39)
!39 = !{!40, !62, !67}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !38, file: !37, line: 69, baseType: !41, size: 320)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !42, line: 22, size: 320, elements: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!43 = !{!44, !46, !48, !49, !50, !51, !53, !54}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !41, file: !42, line: 24, baseType: !45, size: 32)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !41, file: !42, line: 25, baseType: !47, size: 32, offset: 32)
!47 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !41, file: !42, line: 26, baseType: !45, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !41, file: !42, line: 28, baseType: !47, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !41, file: !42, line: 32, baseType: !45, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !41, file: !42, line: 34, baseType: !52, size: 16, offset: 160)
!52 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !41, file: !42, line: 35, baseType: !52, size: 16, offset: 176)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !41, file: !42, line: 36, baseType: !55, size: 128, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !56, line: 53, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !56, line: 49, size: 128, elements: !58)
!58 = !{!59, !61}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !57, file: !56, line: 51, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !57, file: !56, line: 52, baseType: !60, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !38, file: !37, line: 70, baseType: !63, size: 320)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 320, elements: !65)
!64 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!65 = !{!66}
!66 = !DISubrange(count: 40)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !38, file: !37, line: 71, baseType: !3, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !6, file: !1, line: 334, baseType: !9, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !6, file: !1, line: 334, baseType: !9, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !6, file: !1, line: 335, baseType: !71, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "Edge", file: !1, line: 280, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_edge", file: !1, line: 276, size: 320, elements: !74)
!74 = !{!75, !76, !77, !79, !80}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !73, file: !1, line: 277, baseType: !9, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !73, file: !1, line: 277, baseType: !9, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ea", scope: !73, file: !1, line: 278, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "eb", scope: !73, file: !1, line: 278, baseType: !78, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "edge_lock", scope: !73, file: !1, line: 279, baseType: !31, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !6, file: !1, line: 335, baseType: !71, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !6, file: !1, line: 335, baseType: !71, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !6, file: !1, line: 336, baseType: !14, size: 96, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !6, file: !1, line: 336, baseType: !14, size: 96, offset: 480)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "p3", scope: !6, file: !1, line: 336, baseType: !14, size: 96, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "plane_equ", scope: !6, file: !1, line: 337, baseType: !87, size: 128, offset: 672)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "PlaneEqu", file: !1, line: 305, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 301, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !88, file: !1, line: 302, baseType: !14, size: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !88, file: !1, line: 303, baseType: !19, size: 32, offset: 96)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !6, file: !1, line: 338, baseType: !19, size: 32, offset: 800)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !6, file: !1, line: 339, baseType: !23, size: 96, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "emittance", scope: !6, file: !1, line: 341, baseType: !23, size: 96, offset: 928)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_positive", scope: !6, file: !1, line: 343, baseType: !96, size: 64, offset: 1024)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_negative", scope: !6, file: !1, line: 344, baseType: !96, size: 64, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_parent", scope: !6, file: !1, line: 345, baseType: !96, size: 64, offset: 1152)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "el_root", scope: !6, file: !1, line: 347, baseType: !100, size: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !1, line: 389, size: 1536, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "elem_lock", scope: !101, file: !1, line: 390, baseType: !31, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !101, file: !1, line: 391, baseType: !4, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !101, file: !1, line: 393, baseType: !100, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !101, file: !1, line: 394, baseType: !100, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !101, file: !1, line: 395, baseType: !100, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !101, file: !1, line: 396, baseType: !100, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !101, file: !1, line: 397, baseType: !100, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "interactions", scope: !101, file: !1, line: 399, baseType: !111, size: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interact", file: !1, line: 435, size: 256, elements: !113)
!113 = !{!114, !115, !118, !119, !120, !121}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !1, line: 436, baseType: !111, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "destination", scope: !112, file: !1, line: 437, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "Element", file: !1, line: 414, baseType: !101)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_out", scope: !112, file: !1, line: 438, baseType: !19, size: 32, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_err", scope: !112, file: !1, line: 439, baseType: !19, size: 32, offset: 160)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "area_ratio", scope: !112, file: !1, line: 440, baseType: !19, size: 32, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !112, file: !1, line: 441, baseType: !19, size: 32, offset: 224)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "n_interactions", scope: !101, file: !1, line: 400, baseType: !3, size: 64, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "vis_undef_inter", scope: !101, file: !1, line: 401, baseType: !111, size: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "n_vis_undef_inter", scope: !101, file: !1, line: 402, baseType: !3, size: 64, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rad", scope: !101, file: !1, line: 404, baseType: !23, size: 96, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rad_in", scope: !101, file: !1, line: 406, baseType: !23, size: 96, offset: 800)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "rad_subtree", scope: !101, file: !1, line: 407, baseType: !23, size: 96, offset: 896)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "join_counter", scope: !101, file: !1, line: 409, baseType: !3, size: 64, offset: 1024)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !101, file: !1, line: 411, baseType: !9, size: 64, offset: 1088)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !101, file: !1, line: 411, baseType: !9, size: 64, offset: 1152)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !101, file: !1, line: 411, baseType: !9, size: 64, offset: 1216)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !101, file: !1, line: 412, baseType: !71, size: 64, offset: 1280)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !101, file: !1, line: 412, baseType: !71, size: 64, offset: 1344)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !101, file: !1, line: 412, baseType: !71, size: 64, offset: 1408)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !101, file: !1, line: 413, baseType: !19, size: 32, offset: 1472)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "seq_no", scope: !6, file: !1, line: 348, baseType: !3, size: 64, offset: 1280)
!137 = !{i32 7, !"Dwarf Version", i32 5}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{i32 1, !"wchar_size", i32 4}
!140 = !{i32 7, !"PIC Level", i32 2}
!141 = !{i32 7, !"PIE Level", i32 2}
!142 = !{i32 7, !"uwtable", i32 2}
!143 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!144 = distinct !DISubprogram(name: "foreach_patch_in_bsp", scope: !1, file: !1, line: 1196, type: !145, scopeLine: 1197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !150)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !147, !3, !3}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{null, null}
!150 = !{!151, !152, !153}
!151 = !DILocalVariable(name: "func", arg: 1, scope: !144, file: !1, line: 1196, type: !147)
!152 = !DILocalVariable(name: "arg1", arg: 2, scope: !144, file: !1, line: 1196, type: !3)
!153 = !DILocalVariable(name: "process_id", arg: 3, scope: !144, file: !1, line: 1196, type: !3)
!154 = !DILocation(line: 0, scope: !144)
!155 = !DILocation(line: 1198, column: 21, scope: !144)
!156 = !DILocation(line: 1198, column: 29, scope: !144)
!157 = !DILocation(line: 1198, column: 5, scope: !144)
!158 = !DILocation(line: 1199, column: 1, scope: !144)
!159 = distinct !DISubprogram(name: "_foreach_patch", scope: !1, file: !1, line: 1202, type: !160, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !4, !147, !3, !3}
!162 = !{!163, !164, !165, !166}
!163 = !DILocalVariable(name: "node", arg: 1, scope: !159, file: !1, line: 1202, type: !4)
!164 = !DILocalVariable(name: "func", arg: 2, scope: !159, file: !1, line: 1202, type: !147)
!165 = !DILocalVariable(name: "arg1", arg: 3, scope: !159, file: !1, line: 1202, type: !3)
!166 = !DILocalVariable(name: "process_id", arg: 4, scope: !159, file: !1, line: 1202, type: !3)
!167 = !DILocation(line: 1216, column: 9, scope: !168)
!168 = distinct !DILexicalBlock(scope: !159, file: !1, line: 1215, column: 9)
!169 = !DILocation(line: 0, scope: !159)
!170 = !DILocation(line: 1204, column: 14, scope: !171)
!171 = distinct !DILexicalBlock(scope: !159, file: !1, line: 1204, column: 9)
!172 = !DILocation(line: 1204, column: 9, scope: !159)
!173 = !DILocation(line: 1208, column: 15, scope: !174)
!174 = distinct !DILexicalBlock(scope: !159, file: !1, line: 1208, column: 9)
!175 = !DILocation(line: 1208, column: 9, scope: !174)
!176 = !DILocation(line: 1208, column: 9, scope: !159)
!177 = !DILocation(line: 1209, column: 9, scope: !174)
!178 = !DILocation(line: 1212, column: 5, scope: !159)
!179 = !DILocation(line: 1215, column: 15, scope: !168)
!180 = !DILocation(line: 1215, column: 9, scope: !168)
!181 = !DILocation(line: 1215, column: 9, scope: !159)
!182 = !DILocation(line: 1217, column: 1, scope: !159)
!183 = distinct !DISubprogram(name: "foreach_depth_sorted_patch", scope: !1, file: !1, line: 1233, type: !184, scopeLine: 1234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !187)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !186, !147, !3, !3}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!187 = !{!188, !189, !190, !191}
!188 = !DILocalVariable(name: "sort_vec", arg: 1, scope: !183, file: !1, line: 1233, type: !186)
!189 = !DILocalVariable(name: "func", arg: 2, scope: !183, file: !1, line: 1233, type: !147)
!190 = !DILocalVariable(name: "arg1", arg: 3, scope: !183, file: !1, line: 1233, type: !3)
!191 = !DILocalVariable(name: "process_id", arg: 4, scope: !183, file: !1, line: 1233, type: !3)
!192 = !DILocation(line: 0, scope: !183)
!193 = !DILocation(line: 1235, column: 35, scope: !183)
!194 = !DILocation(line: 1235, column: 43, scope: !183)
!195 = !DILocation(line: 1235, column: 5, scope: !183)
!196 = !DILocation(line: 1236, column: 1, scope: !183)
!197 = distinct !DISubprogram(name: "_foreach_d_s_patch", scope: !1, file: !1, line: 1239, type: !198, scopeLine: 1240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !186, !4, !147, !3, !3}
!200 = !{!201, !202, !203, !204, !205, !206}
!201 = !DILocalVariable(name: "svec", arg: 1, scope: !197, file: !1, line: 1239, type: !186)
!202 = !DILocalVariable(name: "node", arg: 2, scope: !197, file: !1, line: 1239, type: !4)
!203 = !DILocalVariable(name: "func", arg: 3, scope: !197, file: !1, line: 1239, type: !147)
!204 = !DILocalVariable(name: "arg1", arg: 4, scope: !197, file: !1, line: 1239, type: !3)
!205 = !DILocalVariable(name: "process_id", arg: 5, scope: !197, file: !1, line: 1239, type: !3)
!206 = !DILocalVariable(name: "sign", scope: !197, file: !1, line: 1241, type: !19)
!207 = !DILocation(line: 0, scope: !197)
!208 = !DILocation(line: 1243, column: 14, scope: !209)
!209 = distinct !DILexicalBlock(scope: !197, file: !1, line: 1243, column: 9)
!210 = !DILocation(line: 1243, column: 9, scope: !197)
!211 = !DILocation(line: 1247, column: 40, scope: !197)
!212 = !DILocation(line: 1247, column: 12, scope: !197)
!213 = !DILocation(line: 1249, column: 14, scope: !214)
!214 = distinct !DILexicalBlock(scope: !197, file: !1, line: 1249, column: 9)
!215 = !DILocation(line: 1249, column: 9, scope: !197)
!216 = !DILocation(line: 1254, column: 23, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !1, line: 1254, column: 17)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 1250, column: 9)
!219 = !DILocation(line: 1254, column: 17, scope: !217)
!220 = !DILocation(line: 1254, column: 17, scope: !218)
!221 = !DILocation(line: 1255, column: 17, scope: !217)
!222 = !DILocation(line: 1258, column: 13, scope: !218)
!223 = !DILocation(line: 1261, column: 23, scope: !224)
!224 = distinct !DILexicalBlock(scope: !218, file: !1, line: 1261, column: 17)
!225 = !DILocation(line: 1261, column: 17, scope: !224)
!226 = !DILocation(line: 1261, column: 17, scope: !218)
!227 = !DILocation(line: 1267, column: 23, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 1267, column: 17)
!229 = distinct !DILexicalBlock(scope: !214, file: !1, line: 1265, column: 9)
!230 = !DILocation(line: 1267, column: 17, scope: !228)
!231 = !DILocation(line: 1267, column: 17, scope: !229)
!232 = !DILocation(line: 1268, column: 17, scope: !228)
!233 = !DILocation(line: 1271, column: 13, scope: !229)
!234 = !DILocation(line: 1274, column: 23, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !1, line: 1274, column: 17)
!236 = !DILocation(line: 1274, column: 17, scope: !235)
!237 = !DILocation(line: 1274, column: 17, scope: !229)
!238 = !DILocation(line: 1277, column: 1, scope: !197)
!239 = distinct !DISubprogram(name: "define_patch", scope: !1, file: !1, line: 1290, type: !240, scopeLine: 1291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !4, !4, !3}
!242 = !{!243, !244, !245, !246, !247}
!243 = !DILocalVariable(name: "patch", arg: 1, scope: !239, file: !1, line: 1290, type: !4)
!244 = !DILocalVariable(name: "root", arg: 2, scope: !239, file: !1, line: 1290, type: !4)
!245 = !DILocalVariable(name: "process_id", arg: 3, scope: !239, file: !1, line: 1290, type: !3)
!246 = !DILocalVariable(name: "parent", scope: !239, file: !1, line: 1292, type: !4)
!247 = !DILocalVariable(name: "xing_code", scope: !239, file: !1, line: 1293, type: !3)
!248 = !DILocation(line: 0, scope: !239)
!249 = !DILocation(line: 1296, column: 27, scope: !250)
!250 = distinct !DILexicalBlock(scope: !239, file: !1, line: 1296, column: 5)
!251 = !DILocation(line: 1296, column: 35, scope: !250)
!252 = !DILocation(line: 1296, column: 6, scope: !250)
!253 = !DILocation(line: 1299, column: 16, scope: !254)
!254 = distinct !DILexicalBlock(scope: !239, file: !1, line: 1299, column: 9)
!255 = !DILocation(line: 1299, column: 9, scope: !239)
!256 = !DILocation(line: 1301, column: 17, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 1301, column: 17)
!258 = distinct !DILexicalBlock(scope: !254, file: !1, line: 1300, column: 9)
!259 = !DILocation(line: 1301, column: 25, scope: !257)
!260 = !DILocation(line: 1301, column: 34, scope: !257)
!261 = !DILocation(line: 1301, column: 17, scope: !258)
!262 = !DILocation(line: 1304, column: 38, scope: !263)
!263 = distinct !DILexicalBlock(scope: !257, file: !1, line: 1302, column: 17)
!264 = !DILocation(line: 1305, column: 28, scope: !263)
!265 = !DILocation(line: 1306, column: 41, scope: !263)
!266 = !DILocation(line: 1308, column: 21, scope: !263)
!267 = !DILocation(line: 1309, column: 45, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !1, line: 1309, column: 21)
!269 = !DILocation(line: 1309, column: 53, scope: !268)
!270 = !DILocation(line: 1309, column: 22, scope: !268)
!271 = !DILocation(line: 1311, column: 21, scope: !263)
!272 = !DILocation(line: 1320, column: 5, scope: !239)
!273 = !DILocation(line: 1323, column: 54, scope: !274)
!274 = distinct !DILexicalBlock(scope: !239, file: !1, line: 1321, column: 9)
!275 = !DILocation(line: 1323, column: 25, scope: !274)
!276 = !DILocation(line: 1327, column: 17, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !1, line: 1327, column: 17)
!278 = !DILocation(line: 1327, column: 17, scope: !274)
!279 = !DILocation(line: 1329, column: 33, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 1329, column: 25)
!281 = distinct !DILexicalBlock(scope: !277, file: !1, line: 1328, column: 17)
!282 = !DILocation(line: 1329, column: 46, scope: !280)
!283 = !DILocation(line: 1329, column: 25, scope: !281)
!284 = !DILocation(line: 1332, column: 50, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !1, line: 1330, column: 25)
!286 = !DILocation(line: 1333, column: 36, scope: !285)
!287 = !DILocation(line: 1333, column: 47, scope: !285)
!288 = !DILocation(line: 1334, column: 29, scope: !285)
!289 = !DILocation(line: 1335, column: 53, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !1, line: 1335, column: 29)
!291 = !DILocation(line: 1335, column: 61, scope: !290)
!292 = !DILocation(line: 1335, column: 30, scope: !290)
!293 = !DILocation(line: 1337, column: 68, scope: !285)
!294 = !DILocation(line: 1337, column: 29, scope: !285)
!295 = !DILocation(line: 1338, column: 29, scope: !285)
!296 = !DILocation(line: 1344, column: 22, scope: !297)
!297 = distinct !DILexicalBlock(scope: !277, file: !1, line: 1344, column: 22)
!298 = !DILocation(line: 1344, column: 22, scope: !277)
!299 = !DILocation(line: 1346, column: 33, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 1346, column: 25)
!301 = distinct !DILexicalBlock(scope: !297, file: !1, line: 1345, column: 17)
!302 = !DILocation(line: 1346, column: 46, scope: !300)
!303 = !DILocation(line: 1346, column: 25, scope: !301)
!304 = distinct !{!304, !272, !305, !306}
!305 = !DILocation(line: 1369, column: 9, scope: !239)
!306 = !{!"llvm.loop.unroll.disable"}
!307 = !DILocation(line: 1349, column: 50, scope: !308)
!308 = distinct !DILexicalBlock(scope: !300, file: !1, line: 1347, column: 25)
!309 = !DILocation(line: 1350, column: 36, scope: !308)
!310 = !DILocation(line: 1350, column: 47, scope: !308)
!311 = !DILocation(line: 1351, column: 29, scope: !308)
!312 = !DILocation(line: 1352, column: 53, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !1, line: 1352, column: 29)
!314 = !DILocation(line: 1352, column: 61, scope: !313)
!315 = !DILocation(line: 1352, column: 30, scope: !313)
!316 = !DILocation(line: 1354, column: 68, scope: !308)
!317 = !DILocation(line: 1354, column: 29, scope: !308)
!318 = !DILocation(line: 1355, column: 29, scope: !308)
!319 = !DILocation(line: 1365, column: 45, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !1, line: 1365, column: 21)
!321 = distinct !DILexicalBlock(scope: !297, file: !1, line: 1362, column: 17)
!322 = !DILocation(line: 1365, column: 53, scope: !320)
!323 = !DILocation(line: 1365, column: 22, scope: !320)
!324 = !DILocation(line: 1366, column: 21, scope: !321)
!325 = !DILocation(line: 1367, column: 21, scope: !321)
!326 = !DILocation(line: 1370, column: 1, scope: !239)
!327 = !DISubprogram(name: "pthread_mutex_lock", scope: !328, file: !328, line: 738, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !332)
!328 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!329 = !DISubroutineType(types: !330)
!330 = !{!45, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!332 = !{}
!333 = distinct !DISubprogram(name: "attach_element", scope: !1, file: !1, line: 1593, type: !334, scopeLine: 1594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !4, !3}
!336 = !{!337, !338, !339}
!337 = !DILocalVariable(name: "patch", arg: 1, scope: !333, file: !1, line: 1593, type: !4)
!338 = !DILocalVariable(name: "process_id", arg: 2, scope: !333, file: !1, line: 1593, type: !3)
!339 = !DILocalVariable(name: "pelem", scope: !333, file: !1, line: 1595, type: !116)
!340 = !DILocation(line: 0, scope: !333)
!341 = !DILocation(line: 1598, column: 13, scope: !333)
!342 = !DILocation(line: 1599, column: 12, scope: !333)
!343 = !DILocation(line: 1599, column: 20, scope: !333)
!344 = !DILocation(line: 1602, column: 12, scope: !333)
!345 = !DILocation(line: 1602, column: 18, scope: !333)
!346 = !DILocation(line: 1603, column: 27, scope: !333)
!347 = !DILocation(line: 1603, column: 12, scope: !333)
!348 = !DILocation(line: 1603, column: 18, scope: !333)
!349 = !DILocation(line: 1604, column: 27, scope: !333)
!350 = !DILocation(line: 1604, column: 12, scope: !333)
!351 = !DILocation(line: 1604, column: 18, scope: !333)
!352 = !DILocation(line: 1605, column: 27, scope: !333)
!353 = !DILocation(line: 1605, column: 12, scope: !333)
!354 = !DILocation(line: 1605, column: 18, scope: !333)
!355 = !DILocation(line: 1607, column: 27, scope: !333)
!356 = !DILocation(line: 1607, column: 12, scope: !333)
!357 = !DILocation(line: 1607, column: 18, scope: !333)
!358 = !DILocation(line: 1608, column: 27, scope: !333)
!359 = !DILocation(line: 1608, column: 12, scope: !333)
!360 = !DILocation(line: 1608, column: 18, scope: !333)
!361 = !DILocation(line: 1609, column: 27, scope: !333)
!362 = !DILocation(line: 1609, column: 12, scope: !333)
!363 = !DILocation(line: 1609, column: 18, scope: !333)
!364 = !DILocation(line: 1611, column: 27, scope: !333)
!365 = !DILocation(line: 1611, column: 12, scope: !333)
!366 = !DILocation(line: 1611, column: 18, scope: !333)
!367 = !DILocation(line: 1612, column: 12, scope: !333)
!368 = !DILocation(line: 1612, column: 27, scope: !333)
!369 = !DILocation(line: 1613, column: 1, scope: !333)
!370 = !DISubprogram(name: "pthread_mutex_unlock", scope: !328, file: !328, line: 756, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !332)
!371 = distinct !DISubprogram(name: "patch_intersection", scope: !1, file: !1, line: 1864, type: !372, scopeLine: 1865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!372 = !DISubroutineType(types: !373)
!373 = !{!3, !374, !186, !186, !186, !3}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383}
!376 = !DILocalVariable(name: "plane", arg: 1, scope: !371, file: !1, line: 1864, type: !374)
!377 = !DILocalVariable(name: "p1", arg: 2, scope: !371, file: !1, line: 1864, type: !186)
!378 = !DILocalVariable(name: "p2", arg: 3, scope: !371, file: !1, line: 1864, type: !186)
!379 = !DILocalVariable(name: "p3", arg: 4, scope: !371, file: !1, line: 1864, type: !186)
!380 = !DILocalVariable(name: "process_id", arg: 5, scope: !371, file: !1, line: 1864, type: !3)
!381 = !DILocalVariable(name: "c1", scope: !371, file: !1, line: 1866, type: !3)
!382 = !DILocalVariable(name: "c2", scope: !371, file: !1, line: 1866, type: !3)
!383 = !DILocalVariable(name: "c3", scope: !371, file: !1, line: 1866, type: !3)
!384 = !DILocation(line: 0, scope: !371)
!385 = !DILocation(line: 1868, column: 10, scope: !371)
!386 = !DILocation(line: 1869, column: 10, scope: !371)
!387 = !DILocation(line: 1870, column: 10, scope: !371)
!388 = !DILocation(line: 1872, column: 17, scope: !371)
!389 = !DILocation(line: 1872, column: 29, scope: !371)
!390 = !DILocation(line: 1872, column: 23, scope: !371)
!391 = !DILocation(line: 1872, column: 35, scope: !371)
!392 = !DILocation(line: 1872, column: 5, scope: !371)
!393 = distinct !DISubprogram(name: "refine_newpatch", scope: !1, file: !1, line: 1626, type: !394, scopeLine: 1627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !4, !3, !3}
!396 = !{!397, !398, !399, !400, !401}
!397 = !DILocalVariable(name: "patch", arg: 1, scope: !393, file: !1, line: 1626, type: !4)
!398 = !DILocalVariable(name: "newpatch", arg: 2, scope: !393, file: !1, line: 1626, type: !3)
!399 = !DILocalVariable(name: "process_id", arg: 3, scope: !393, file: !1, line: 1626, type: !3)
!400 = !DILocalVariable(name: "cc", scope: !393, file: !1, line: 1628, type: !3)
!401 = !DILocalVariable(name: "new_patch", scope: !393, file: !1, line: 1629, type: !4)
!402 = !DILocation(line: 0, scope: !393)
!403 = !DILocation(line: 1629, column: 24, scope: !393)
!404 = !DILocation(line: 1632, column: 16, scope: !405)
!405 = distinct !DILexicalBlock(scope: !393, file: !1, line: 1632, column: 9)
!406 = !DILocation(line: 1632, column: 37, scope: !405)
!407 = !DILocation(line: 1632, column: 23, scope: !405)
!408 = !DILocation(line: 1632, column: 9, scope: !393)
!409 = !DILocation(line: 1637, column: 38, scope: !393)
!410 = !DILocation(line: 1638, column: 41, scope: !393)
!411 = !DILocation(line: 1638, column: 57, scope: !393)
!412 = !DILocation(line: 1638, column: 73, scope: !393)
!413 = !DILocation(line: 1637, column: 10, scope: !393)
!414 = !DILocation(line: 1639, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !393, file: !1, line: 1639, column: 9)
!416 = !DILocation(line: 1639, column: 9, scope: !393)
!417 = !DILocation(line: 1643, column: 42, scope: !393)
!418 = !DILocation(line: 1644, column: 37, scope: !393)
!419 = !DILocation(line: 1644, column: 49, scope: !393)
!420 = !DILocation(line: 1644, column: 61, scope: !393)
!421 = !DILocation(line: 1643, column: 10, scope: !393)
!422 = !DILocation(line: 1645, column: 9, scope: !423)
!423 = distinct !DILexicalBlock(scope: !393, file: !1, line: 1645, column: 9)
!424 = !DILocation(line: 1645, column: 9, scope: !393)
!425 = !DILocation(line: 1650, column: 35, scope: !393)
!426 = !DILocation(line: 1650, column: 55, scope: !393)
!427 = !DILocation(line: 1650, column: 5, scope: !393)
!428 = !DILocation(line: 1651, column: 1, scope: !393)
!429 = distinct !DISubprogram(name: "split_patch", scope: !1, file: !1, line: 1389, type: !430, scopeLine: 1390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !4, !4, !3, !3}
!432 = !{!433, !434, !435, !436, !437, !438, !439}
!433 = !DILocalVariable(name: "patch", arg: 1, scope: !429, file: !1, line: 1389, type: !4)
!434 = !DILocalVariable(name: "node", arg: 2, scope: !429, file: !1, line: 1389, type: !4)
!435 = !DILocalVariable(name: "xing_code", arg: 3, scope: !429, file: !1, line: 1389, type: !3)
!436 = !DILocalVariable(name: "process_id", arg: 4, scope: !429, file: !1, line: 1389, type: !3)
!437 = !DILocalVariable(name: "c1", scope: !429, file: !1, line: 1391, type: !3)
!438 = !DILocalVariable(name: "c2", scope: !429, file: !1, line: 1391, type: !3)
!439 = !DILocalVariable(name: "c3", scope: !429, file: !1, line: 1391, type: !3)
!440 = !DILocation(line: 0, scope: !429)
!441 = !DILocation(line: 1394, column: 10, scope: !429)
!442 = !DILocation(line: 1395, column: 10, scope: !429)
!443 = !DILocation(line: 1396, column: 10, scope: !429)
!444 = !DILocation(line: 1399, column: 12, scope: !445)
!445 = distinct !DILexicalBlock(scope: !429, file: !1, line: 1399, column: 9)
!446 = !DILocation(line: 1399, column: 9, scope: !429)
!447 = !DILocation(line: 1401, column: 37, scope: !445)
!448 = !DILocation(line: 1401, column: 49, scope: !445)
!449 = !DILocation(line: 1401, column: 61, scope: !445)
!450 = !DILocation(line: 1402, column: 29, scope: !445)
!451 = !DILocation(line: 1402, column: 41, scope: !445)
!452 = !DILocation(line: 1402, column: 53, scope: !445)
!453 = !DILocation(line: 1401, column: 9, scope: !445)
!454 = !DILocation(line: 1403, column: 17, scope: !455)
!455 = distinct !DILexicalBlock(scope: !445, file: !1, line: 1403, column: 14)
!456 = !DILocation(line: 1403, column: 14, scope: !445)
!457 = !DILocation(line: 1405, column: 37, scope: !455)
!458 = !DILocation(line: 1405, column: 49, scope: !455)
!459 = !DILocation(line: 1405, column: 61, scope: !455)
!460 = !DILocation(line: 1406, column: 29, scope: !455)
!461 = !DILocation(line: 1406, column: 41, scope: !455)
!462 = !DILocation(line: 1406, column: 53, scope: !455)
!463 = !DILocation(line: 1405, column: 9, scope: !455)
!464 = !DILocation(line: 1407, column: 17, scope: !465)
!465 = distinct !DILexicalBlock(scope: !455, file: !1, line: 1407, column: 14)
!466 = !DILocation(line: 1407, column: 14, scope: !455)
!467 = !DILocation(line: 1409, column: 37, scope: !465)
!468 = !DILocation(line: 1409, column: 49, scope: !465)
!469 = !DILocation(line: 1409, column: 62, scope: !465)
!470 = !DILocation(line: 1410, column: 29, scope: !465)
!471 = !DILocation(line: 1410, column: 41, scope: !465)
!472 = !DILocation(line: 1410, column: 53, scope: !465)
!473 = !DILocation(line: 1409, column: 9, scope: !465)
!474 = !DILocation(line: 1411, column: 17, scope: !475)
!475 = distinct !DILexicalBlock(scope: !465, file: !1, line: 1411, column: 14)
!476 = !DILocation(line: 1411, column: 14, scope: !465)
!477 = !DILocation(line: 1413, column: 37, scope: !475)
!478 = !DILocation(line: 1413, column: 49, scope: !475)
!479 = !DILocation(line: 1413, column: 61, scope: !475)
!480 = !DILocation(line: 1414, column: 29, scope: !475)
!481 = !DILocation(line: 1414, column: 41, scope: !475)
!482 = !DILocation(line: 1414, column: 53, scope: !475)
!483 = !DILocation(line: 1413, column: 9, scope: !475)
!484 = !DILocation(line: 1415, column: 17, scope: !485)
!485 = distinct !DILexicalBlock(scope: !475, file: !1, line: 1415, column: 14)
!486 = !DILocation(line: 1415, column: 14, scope: !475)
!487 = !DILocation(line: 1417, column: 37, scope: !485)
!488 = !DILocation(line: 1417, column: 49, scope: !485)
!489 = !DILocation(line: 1417, column: 61, scope: !485)
!490 = !DILocation(line: 1418, column: 29, scope: !485)
!491 = !DILocation(line: 1418, column: 41, scope: !485)
!492 = !DILocation(line: 1418, column: 53, scope: !485)
!493 = !DILocation(line: 1417, column: 9, scope: !485)
!494 = !DILocation(line: 1421, column: 37, scope: !485)
!495 = !DILocation(line: 1421, column: 49, scope: !485)
!496 = !DILocation(line: 1421, column: 61, scope: !485)
!497 = !DILocation(line: 1422, column: 29, scope: !485)
!498 = !DILocation(line: 1422, column: 41, scope: !485)
!499 = !DILocation(line: 1422, column: 53, scope: !485)
!500 = !DILocation(line: 1421, column: 9, scope: !485)
!501 = !DILocation(line: 1423, column: 1, scope: !429)
!502 = distinct !DISubprogram(name: "split_into_3", scope: !1, file: !1, line: 1427, type: !503, scopeLine: 1428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !4, !9, !9, !9, !71, !71, !71, !4, !3}
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!506 = !DILocalVariable(name: "patch", arg: 1, scope: !502, file: !1, line: 1427, type: !4)
!507 = !DILocalVariable(name: "ev1", arg: 2, scope: !502, file: !1, line: 1427, type: !9)
!508 = !DILocalVariable(name: "ev2", arg: 3, scope: !502, file: !1, line: 1427, type: !9)
!509 = !DILocalVariable(name: "ev3", arg: 4, scope: !502, file: !1, line: 1427, type: !9)
!510 = !DILocalVariable(name: "e12", arg: 5, scope: !502, file: !1, line: 1427, type: !71)
!511 = !DILocalVariable(name: "e23", arg: 6, scope: !502, file: !1, line: 1427, type: !71)
!512 = !DILocalVariable(name: "e31", arg: 7, scope: !502, file: !1, line: 1427, type: !71)
!513 = !DILocalVariable(name: "parent", arg: 8, scope: !502, file: !1, line: 1427, type: !4)
!514 = !DILocalVariable(name: "process_id", arg: 9, scope: !502, file: !1, line: 1427, type: !3)
!515 = !DILocalVariable(name: "ev_a", scope: !502, file: !1, line: 1429, type: !9)
!516 = !DILocalVariable(name: "ev_b", scope: !502, file: !1, line: 1430, type: !9)
!517 = !DILocalVariable(name: "h1", scope: !502, file: !1, line: 1431, type: !19)
!518 = !DILocalVariable(name: "h2", scope: !502, file: !1, line: 1431, type: !19)
!519 = !DILocalVariable(name: "h3", scope: !502, file: !1, line: 1431, type: !19)
!520 = !DILocalVariable(name: "u2", scope: !502, file: !1, line: 1432, type: !19)
!521 = !DILocalVariable(name: "u3", scope: !502, file: !1, line: 1432, type: !19)
!522 = !DILocalVariable(name: "new", scope: !502, file: !1, line: 1433, type: !4)
!523 = !DILocalVariable(name: "e_ab", scope: !502, file: !1, line: 1434, type: !71)
!524 = !DILocalVariable(name: "e_3a", scope: !502, file: !1, line: 1434, type: !71)
!525 = !DILocalVariable(name: "rev_e12", scope: !502, file: !1, line: 1435, type: !3)
!526 = !DILocalVariable(name: "rev_e31", scope: !502, file: !1, line: 1435, type: !3)
!527 = !DILocation(line: 0, scope: !502)
!528 = !DILocation(line: 1439, column: 30, scope: !502)
!529 = !DILocation(line: 1439, column: 10, scope: !502)
!530 = !DILocation(line: 1440, column: 10, scope: !502)
!531 = !DILocation(line: 1441, column: 10, scope: !502)
!532 = !DILocation(line: 1445, column: 19, scope: !502)
!533 = !DILocation(line: 1445, column: 13, scope: !502)
!534 = !DILocation(line: 1446, column: 20, scope: !535)
!535 = distinct !DILexicalBlock(scope: !502, file: !1, line: 1446, column: 9)
!536 = !DILocation(line: 1446, column: 9, scope: !502)
!537 = !DILocation(line: 0, scope: !535)
!538 = !DILocation(line: 1450, column: 17, scope: !502)
!539 = !DILocation(line: 1450, column: 21, scope: !502)
!540 = !DILocation(line: 1452, column: 19, scope: !502)
!541 = !DILocation(line: 1452, column: 13, scope: !502)
!542 = !DILocation(line: 1453, column: 20, scope: !543)
!543 = distinct !DILexicalBlock(scope: !502, file: !1, line: 1453, column: 9)
!544 = !DILocation(line: 1453, column: 9, scope: !502)
!545 = !DILocation(line: 0, scope: !543)
!546 = !DILocation(line: 1457, column: 17, scope: !502)
!547 = !DILocation(line: 1457, column: 21, scope: !502)
!548 = !DILocation(line: 1462, column: 11, scope: !502)
!549 = !DILocation(line: 1463, column: 10, scope: !502)
!550 = !DILocation(line: 1463, column: 27, scope: !502)
!551 = !DILocation(line: 1464, column: 10, scope: !502)
!552 = !DILocation(line: 1464, column: 28, scope: !502)
!553 = !DILocation(line: 1465, column: 10, scope: !502)
!554 = !DILocation(line: 1465, column: 28, scope: !502)
!555 = !DILocation(line: 1467, column: 20, scope: !502)
!556 = !DILocation(line: 1468, column: 27, scope: !502)
!557 = !DILocation(line: 1468, column: 31, scope: !502)
!558 = !DILocation(line: 1468, column: 10, scope: !502)
!559 = !DILocation(line: 1468, column: 20, scope: !502)
!560 = !DILocation(line: 1469, column: 27, scope: !502)
!561 = !DILocation(line: 1469, column: 31, scope: !502)
!562 = !DILocation(line: 1469, column: 10, scope: !502)
!563 = !DILocation(line: 1469, column: 20, scope: !502)
!564 = !DILocation(line: 1471, column: 22, scope: !502)
!565 = !DILocation(line: 1471, column: 10, scope: !502)
!566 = !DILocation(line: 1471, column: 20, scope: !502)
!567 = !DILocation(line: 1472, column: 29, scope: !502)
!568 = !DILocation(line: 1472, column: 10, scope: !502)
!569 = !DILocation(line: 1472, column: 20, scope: !502)
!570 = !DILocation(line: 1473, column: 22, scope: !502)
!571 = !DILocation(line: 1473, column: 10, scope: !502)
!572 = !DILocation(line: 1473, column: 20, scope: !502)
!573 = !DILocation(line: 1475, column: 10, scope: !502)
!574 = !DILocation(line: 1475, column: 29, scope: !502)
!575 = !DILocation(line: 1476, column: 25, scope: !502)
!576 = !DILocation(line: 1476, column: 39, scope: !502)
!577 = !DILocation(line: 1476, column: 30, scope: !502)
!578 = !DILocation(line: 1476, column: 10, scope: !502)
!579 = !DILocation(line: 1476, column: 20, scope: !502)
!580 = !DILocation(line: 1477, column: 10, scope: !502)
!581 = !DILocation(line: 1477, column: 29, scope: !502)
!582 = !DILocation(line: 1478, column: 10, scope: !502)
!583 = !DILocation(line: 1478, column: 29, scope: !502)
!584 = !DILocation(line: 1479, column: 5, scope: !502)
!585 = !DILocation(line: 1482, column: 11, scope: !502)
!586 = !DILocation(line: 1483, column: 10, scope: !502)
!587 = !DILocation(line: 1483, column: 28, scope: !502)
!588 = !DILocation(line: 1484, column: 10, scope: !502)
!589 = !DILocation(line: 1484, column: 27, scope: !502)
!590 = !DILocation(line: 1485, column: 10, scope: !502)
!591 = !DILocation(line: 1485, column: 27, scope: !502)
!592 = !DILocation(line: 1487, column: 20, scope: !502)
!593 = !DILocation(line: 1488, column: 10, scope: !502)
!594 = !DILocation(line: 1488, column: 20, scope: !502)
!595 = !DILocation(line: 1489, column: 10, scope: !502)
!596 = !DILocation(line: 1489, column: 20, scope: !502)
!597 = !DILocation(line: 1491, column: 22, scope: !502)
!598 = !DILocation(line: 1491, column: 10, scope: !502)
!599 = !DILocation(line: 1491, column: 20, scope: !502)
!600 = !DILocation(line: 1492, column: 10, scope: !502)
!601 = !DILocation(line: 1492, column: 20, scope: !502)
!602 = !DILocation(line: 1493, column: 29, scope: !502)
!603 = !DILocation(line: 1493, column: 10, scope: !502)
!604 = !DILocation(line: 1493, column: 20, scope: !502)
!605 = !DILocation(line: 1495, column: 10, scope: !502)
!606 = !DILocation(line: 1495, column: 29, scope: !502)
!607 = !DILocation(line: 1496, column: 29, scope: !502)
!608 = !DILocation(line: 1496, column: 27, scope: !502)
!609 = !DILocation(line: 1496, column: 42, scope: !502)
!610 = !DILocation(line: 1496, column: 35, scope: !502)
!611 = !DILocation(line: 1496, column: 33, scope: !502)
!612 = !DILocation(line: 1496, column: 22, scope: !502)
!613 = !DILocation(line: 1496, column: 10, scope: !502)
!614 = !DILocation(line: 1496, column: 20, scope: !502)
!615 = !DILocation(line: 1497, column: 10, scope: !502)
!616 = !DILocation(line: 1497, column: 29, scope: !502)
!617 = !DILocation(line: 1498, column: 10, scope: !502)
!618 = !DILocation(line: 1498, column: 29, scope: !502)
!619 = !DILocation(line: 1499, column: 5, scope: !502)
!620 = !DILocation(line: 1502, column: 12, scope: !502)
!621 = !DILocation(line: 1502, column: 28, scope: !502)
!622 = !DILocation(line: 1503, column: 12, scope: !502)
!623 = !DILocation(line: 1503, column: 27, scope: !502)
!624 = !DILocation(line: 1504, column: 12, scope: !502)
!625 = !DILocation(line: 1504, column: 28, scope: !502)
!626 = !DILocation(line: 1506, column: 20, scope: !502)
!627 = !DILocation(line: 1507, column: 12, scope: !502)
!628 = !DILocation(line: 1507, column: 20, scope: !502)
!629 = !DILocation(line: 1508, column: 12, scope: !502)
!630 = !DILocation(line: 1508, column: 20, scope: !502)
!631 = !DILocation(line: 1510, column: 12, scope: !502)
!632 = !DILocation(line: 1510, column: 20, scope: !502)
!633 = !DILocation(line: 1511, column: 22, scope: !502)
!634 = !DILocation(line: 1511, column: 12, scope: !502)
!635 = !DILocation(line: 1511, column: 20, scope: !502)
!636 = !DILocation(line: 1512, column: 12, scope: !502)
!637 = !DILocation(line: 1512, column: 20, scope: !502)
!638 = !DILocation(line: 1514, column: 34, scope: !502)
!639 = !DILocation(line: 1514, column: 32, scope: !502)
!640 = !DILocation(line: 1514, column: 25, scope: !502)
!641 = !DILocation(line: 1514, column: 47, scope: !502)
!642 = !DILocation(line: 1514, column: 40, scope: !502)
!643 = !DILocation(line: 1514, column: 38, scope: !502)
!644 = !DILocation(line: 1514, column: 22, scope: !502)
!645 = !DILocation(line: 1514, column: 20, scope: !502)
!646 = !DILocation(line: 1515, column: 5, scope: !502)
!647 = !DILocation(line: 1516, column: 1, scope: !502)
!648 = distinct !DISubprogram(name: "split_into_2", scope: !1, file: !1, line: 1519, type: !503, scopeLine: 1520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!650 = !DILocalVariable(name: "patch", arg: 1, scope: !648, file: !1, line: 1519, type: !4)
!651 = !DILocalVariable(name: "ev1", arg: 2, scope: !648, file: !1, line: 1519, type: !9)
!652 = !DILocalVariable(name: "ev2", arg: 3, scope: !648, file: !1, line: 1519, type: !9)
!653 = !DILocalVariable(name: "ev3", arg: 4, scope: !648, file: !1, line: 1519, type: !9)
!654 = !DILocalVariable(name: "e12", arg: 5, scope: !648, file: !1, line: 1519, type: !71)
!655 = !DILocalVariable(name: "e23", arg: 6, scope: !648, file: !1, line: 1519, type: !71)
!656 = !DILocalVariable(name: "e31", arg: 7, scope: !648, file: !1, line: 1519, type: !71)
!657 = !DILocalVariable(name: "parent", arg: 8, scope: !648, file: !1, line: 1519, type: !4)
!658 = !DILocalVariable(name: "process_id", arg: 9, scope: !648, file: !1, line: 1519, type: !3)
!659 = !DILocalVariable(name: "ev_a", scope: !648, file: !1, line: 1521, type: !9)
!660 = !DILocalVariable(name: "e_a1", scope: !648, file: !1, line: 1522, type: !71)
!661 = !DILocalVariable(name: "h2", scope: !648, file: !1, line: 1523, type: !19)
!662 = !DILocalVariable(name: "h3", scope: !648, file: !1, line: 1523, type: !19)
!663 = !DILocalVariable(name: "u2", scope: !648, file: !1, line: 1524, type: !19)
!664 = !DILocalVariable(name: "new", scope: !648, file: !1, line: 1525, type: !4)
!665 = !DILocalVariable(name: "rev_e23", scope: !648, file: !1, line: 1526, type: !3)
!666 = !DILocation(line: 0, scope: !648)
!667 = !DILocation(line: 1529, column: 30, scope: !648)
!668 = !DILocation(line: 1529, column: 10, scope: !648)
!669 = !DILocation(line: 1530, column: 10, scope: !648)
!670 = !DILocation(line: 1534, column: 19, scope: !648)
!671 = !DILocation(line: 1534, column: 13, scope: !648)
!672 = !DILocation(line: 1535, column: 20, scope: !673)
!673 = distinct !DILexicalBlock(scope: !648, file: !1, line: 1535, column: 9)
!674 = !DILocation(line: 1535, column: 9, scope: !648)
!675 = !DILocation(line: 0, scope: !673)
!676 = !DILocation(line: 1539, column: 17, scope: !648)
!677 = !DILocation(line: 1539, column: 21, scope: !648)
!678 = !DILocation(line: 1545, column: 11, scope: !648)
!679 = !DILocation(line: 1547, column: 10, scope: !648)
!680 = !DILocation(line: 1547, column: 27, scope: !648)
!681 = !DILocation(line: 1548, column: 10, scope: !648)
!682 = !DILocation(line: 1548, column: 27, scope: !648)
!683 = !DILocation(line: 1549, column: 10, scope: !648)
!684 = !DILocation(line: 1549, column: 28, scope: !648)
!685 = !DILocation(line: 1551, column: 20, scope: !648)
!686 = !DILocation(line: 1552, column: 10, scope: !648)
!687 = !DILocation(line: 1552, column: 20, scope: !648)
!688 = !DILocation(line: 1553, column: 10, scope: !648)
!689 = !DILocation(line: 1553, column: 20, scope: !648)
!690 = !DILocation(line: 1555, column: 10, scope: !648)
!691 = !DILocation(line: 1555, column: 20, scope: !648)
!692 = !DILocation(line: 1556, column: 22, scope: !648)
!693 = !DILocation(line: 1556, column: 10, scope: !648)
!694 = !DILocation(line: 1556, column: 20, scope: !648)
!695 = !DILocation(line: 1557, column: 29, scope: !648)
!696 = !DILocation(line: 1557, column: 10, scope: !648)
!697 = !DILocation(line: 1557, column: 20, scope: !648)
!698 = !DILocation(line: 1559, column: 10, scope: !648)
!699 = !DILocation(line: 1559, column: 29, scope: !648)
!700 = !DILocation(line: 1560, column: 34, scope: !648)
!701 = !DILocation(line: 1560, column: 25, scope: !648)
!702 = !DILocation(line: 1560, column: 10, scope: !648)
!703 = !DILocation(line: 1560, column: 20, scope: !648)
!704 = !DILocation(line: 1561, column: 10, scope: !648)
!705 = !DILocation(line: 1561, column: 29, scope: !648)
!706 = !DILocation(line: 1562, column: 10, scope: !648)
!707 = !DILocation(line: 1562, column: 29, scope: !648)
!708 = !DILocation(line: 1563, column: 5, scope: !648)
!709 = !DILocation(line: 1566, column: 12, scope: !648)
!710 = !DILocation(line: 1566, column: 27, scope: !648)
!711 = !DILocation(line: 1567, column: 12, scope: !648)
!712 = !DILocation(line: 1567, column: 28, scope: !648)
!713 = !DILocation(line: 1568, column: 12, scope: !648)
!714 = !DILocation(line: 1568, column: 27, scope: !648)
!715 = !DILocation(line: 1570, column: 20, scope: !648)
!716 = !DILocation(line: 1571, column: 12, scope: !648)
!717 = !DILocation(line: 1571, column: 20, scope: !648)
!718 = !DILocation(line: 1572, column: 12, scope: !648)
!719 = !DILocation(line: 1572, column: 20, scope: !648)
!720 = !DILocation(line: 1574, column: 12, scope: !648)
!721 = !DILocation(line: 1574, column: 20, scope: !648)
!722 = !DILocation(line: 1575, column: 22, scope: !648)
!723 = !DILocation(line: 1575, column: 12, scope: !648)
!724 = !DILocation(line: 1575, column: 20, scope: !648)
!725 = !DILocation(line: 1576, column: 12, scope: !648)
!726 = !DILocation(line: 1576, column: 20, scope: !648)
!727 = !DILocation(line: 1578, column: 29, scope: !648)
!728 = !DILocation(line: 1578, column: 27, scope: !648)
!729 = !DILocation(line: 1578, column: 42, scope: !648)
!730 = !DILocation(line: 1578, column: 35, scope: !648)
!731 = !DILocation(line: 1578, column: 33, scope: !648)
!732 = !DILocation(line: 1578, column: 22, scope: !648)
!733 = !DILocation(line: 1578, column: 20, scope: !648)
!734 = !DILocation(line: 1579, column: 5, scope: !648)
!735 = !DILocation(line: 1580, column: 1, scope: !648)
!736 = !DISubprogram(name: "get_element", scope: !1, file: !1, line: 1080, type: !737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !332)
!737 = !DISubroutineType(types: !738)
!738 = !{!116, !3}
!739 = !DISubprogram(name: "create_ff_refine_task", scope: !1, file: !1, line: 701, type: !740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !332)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !116, !116, !3, !3}
!742 = distinct !DISubprogram(name: "get_patch", scope: !1, file: !1, line: 1662, type: !743, scopeLine: 1663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !745)
!743 = !DISubroutineType(types: !744)
!744 = !{!4, !3}
!745 = !{!746, !747}
!746 = !DILocalVariable(name: "process_id", arg: 1, scope: !742, file: !1, line: 1662, type: !3)
!747 = !DILocalVariable(name: "p", scope: !742, file: !1, line: 1664, type: !4)
!748 = !DILocation(line: 0, scope: !742)
!749 = !DILocation(line: 1667, column: 27, scope: !750)
!750 = distinct !DILexicalBlock(scope: !742, file: !1, line: 1667, column: 5)
!751 = !DILocation(line: 1667, column: 35, scope: !750)
!752 = !DILocation(line: 1667, column: 6, scope: !750)
!753 = !DILocation(line: 1670, column: 9, scope: !754)
!754 = distinct !DILexicalBlock(scope: !742, file: !1, line: 1670, column: 9)
!755 = !DILocation(line: 1670, column: 17, scope: !754)
!756 = !DILocation(line: 1670, column: 28, scope: !754)
!757 = !DILocation(line: 1670, column: 9, scope: !742)
!758 = !DILocation(line: 1672, column: 13, scope: !759)
!759 = distinct !DILexicalBlock(scope: !754, file: !1, line: 1671, column: 9)
!760 = !DILocation(line: 1673, column: 37, scope: !761)
!761 = distinct !DILexicalBlock(scope: !759, file: !1, line: 1673, column: 13)
!762 = !DILocation(line: 1673, column: 45, scope: !761)
!763 = !DILocation(line: 1673, column: 14, scope: !761)
!764 = !DILocation(line: 1674, column: 13, scope: !759)
!765 = !DILocation(line: 1679, column: 29, scope: !742)
!766 = !DILocation(line: 1679, column: 24, scope: !742)
!767 = !DILocation(line: 1680, column: 13, scope: !742)
!768 = !DILocation(line: 1680, column: 28, scope: !742)
!769 = !DILocation(line: 1681, column: 13, scope: !742)
!770 = !DILocation(line: 1681, column: 27, scope: !742)
!771 = !DILocation(line: 1684, column: 37, scope: !772)
!772 = distinct !DILexicalBlock(scope: !742, file: !1, line: 1684, column: 5)
!773 = !DILocation(line: 1684, column: 6, scope: !772)
!774 = !DILocation(line: 1688, column: 21, scope: !742)
!775 = !DILocation(line: 1692, column: 5, scope: !742)
!776 = distinct !DISubprogram(name: "init_patchlist", scope: !1, file: !1, line: 1705, type: !777, scopeLine: 1706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !3}
!779 = !{!780, !781}
!780 = !DILocalVariable(name: "process_id", arg: 1, scope: !776, file: !1, line: 1705, type: !3)
!781 = !DILocalVariable(name: "i", scope: !776, file: !1, line: 1707, type: !3)
!782 = !DILocation(line: 0, scope: !776)
!783 = !DILocation(line: 1710, column: 5, scope: !784)
!784 = distinct !DILexicalBlock(scope: !776, file: !1, line: 1710, column: 5)
!785 = !DILocation(line: 1712, column: 50, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !1, line: 1711, column: 9)
!787 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1710, column: 5)
!788 = !DILocation(line: 1712, column: 69, scope: !786)
!789 = !DILocation(line: 1712, column: 34, scope: !786)
!790 = !DILocation(line: 1712, column: 47, scope: !786)
!791 = !DILocation(line: 1713, column: 13, scope: !786)
!792 = !DILocation(line: 1713, column: 34, scope: !786)
!793 = !DILocation(line: 1713, column: 41, scope: !786)
!794 = !DILocation(line: 1710, column: 20, scope: !787)
!795 = distinct !{!795, !783, !796, !797, !306}
!796 = !DILocation(line: 1714, column: 9, scope: !784)
!797 = !{!"llvm.loop.mustprogress"}
!798 = !DILocation(line: 1715, column: 5, scope: !776)
!799 = !DILocation(line: 1715, column: 40, scope: !776)
!800 = !DILocation(line: 1715, column: 53, scope: !776)
!801 = !DILocation(line: 1716, column: 40, scope: !776)
!802 = !DILocation(line: 1716, column: 47, scope: !776)
!803 = !DILocation(line: 1718, column: 34, scope: !776)
!804 = !DILocation(line: 1718, column: 13, scope: !776)
!805 = !DILocation(line: 1718, column: 24, scope: !776)
!806 = !DILocation(line: 1719, column: 13, scope: !776)
!807 = !DILocation(line: 1719, column: 29, scope: !776)
!808 = !DILocation(line: 1720, column: 13, scope: !776)
!809 = !DILocation(line: 1720, column: 29, scope: !776)
!810 = !DILocation(line: 1721, column: 35, scope: !811)
!811 = distinct !DILexicalBlock(scope: !776, file: !1, line: 1721, column: 5)
!812 = !DILocation(line: 1721, column: 6, scope: !811)
!813 = !DILocation(line: 1739, column: 1, scope: !776)
!814 = !DISubprogram(name: "pthread_mutex_init", scope: !328, file: !328, line: 725, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !332)
!815 = !DISubroutineType(types: !816)
!816 = !{!45, !331, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !37, line: 36, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !37, line: 32, size: 32, elements: !821)
!821 = !{!822, !826}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !820, file: !37, line: 34, baseType: !823, size: 32)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 32, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 4)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !820, file: !37, line: 35, baseType: !45, size: 32)
!827 = distinct !DISubprogram(name: "print_patch", scope: !1, file: !1, line: 1750, type: !334, scopeLine: 1751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !828)
!828 = !{!829, !830}
!829 = !DILocalVariable(name: "patch", arg: 1, scope: !827, file: !1, line: 1750, type: !4)
!830 = !DILocalVariable(name: "process_id", arg: 2, scope: !827, file: !1, line: 1750, type: !3)
!831 = !DILocation(line: 0, scope: !827)
!832 = !DILocation(line: 1752, column: 30, scope: !827)
!833 = !DILocation(line: 1752, column: 5, scope: !827)
!834 = !DILocation(line: 1753, column: 26, scope: !827)
!835 = !DILocation(line: 1753, column: 5, scope: !827)
!836 = !DILocation(line: 1754, column: 26, scope: !827)
!837 = !DILocation(line: 1754, column: 5, scope: !827)
!838 = !DILocation(line: 1755, column: 26, scope: !827)
!839 = !DILocation(line: 1755, column: 5, scope: !827)
!840 = !DILocation(line: 1756, column: 30, scope: !827)
!841 = !DILocation(line: 1756, column: 5, scope: !827)
!842 = !DILocation(line: 1757, column: 35, scope: !827)
!843 = !DILocation(line: 1757, column: 28, scope: !827)
!844 = !DILocation(line: 1757, column: 5, scope: !827)
!845 = !DILocation(line: 1758, column: 1, scope: !827)
!846 = !DISubprogram(name: "print_point", scope: !1, file: !1, line: 1140, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !332)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !186}
!849 = distinct !DISubprogram(name: "print_plane_equ", scope: !1, file: !1, line: 1884, type: !850, scopeLine: 1885, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !374, !3}
!852 = !{!853, !854}
!853 = !DILocalVariable(name: "peq", arg: 1, scope: !849, file: !1, line: 1884, type: !374)
!854 = !DILocalVariable(name: "process_id", arg: 2, scope: !849, file: !1, line: 1884, type: !3)
!855 = !DILocation(line: 0, scope: !849)
!856 = !DILocation(line: 1887, column: 19, scope: !849)
!857 = !DILocation(line: 1887, column: 12, scope: !849)
!858 = !DILocation(line: 1887, column: 29, scope: !849)
!859 = !DILocation(line: 1887, column: 22, scope: !849)
!860 = !DILocation(line: 1887, column: 39, scope: !849)
!861 = !DILocation(line: 1887, column: 32, scope: !849)
!862 = !DILocation(line: 1887, column: 47, scope: !849)
!863 = !DILocation(line: 1887, column: 42, scope: !849)
!864 = !DILocation(line: 1886, column: 5, scope: !849)
!865 = !DILocation(line: 1888, column: 1, scope: !849)
!866 = distinct !DISubprogram(name: "print_bsp_tree", scope: !1, file: !1, line: 1770, type: !777, scopeLine: 1771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !867)
!867 = !{!868}
!868 = !DILocalVariable(name: "process_id", arg: 1, scope: !866, file: !1, line: 1770, type: !3)
!869 = !DILocation(line: 0, scope: !866)
!870 = !DILocation(line: 1772, column: 5, scope: !866)
!871 = !DILocation(line: 1773, column: 5, scope: !866)
!872 = !DILocation(line: 1774, column: 5, scope: !866)
!873 = !DILocation(line: 1775, column: 1, scope: !866)
!874 = distinct !DISubprogram(name: "_pr_patch", scope: !1, file: !1, line: 1777, type: !394, scopeLine: 1778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !875)
!875 = !{!876, !877, !878}
!876 = !DILocalVariable(name: "patch", arg: 1, scope: !874, file: !1, line: 1777, type: !4)
!877 = !DILocalVariable(name: "dummy", arg: 2, scope: !874, file: !1, line: 1777, type: !3)
!878 = !DILocalVariable(name: "process_id", arg: 3, scope: !874, file: !1, line: 1777, type: !3)
!879 = !DILocation(line: 0, scope: !874)
!880 = !DILocation(line: 1779, column: 5, scope: !874)
!881 = !DILocation(line: 1780, column: 1, scope: !874)
!882 = distinct !DISubprogram(name: "plane_equ", scope: !1, file: !1, line: 1799, type: !883, scopeLine: 1800, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{!19, !374, !186, !3}
!885 = !{!886, !887, !888, !889}
!886 = !DILocalVariable(name: "plane", arg: 1, scope: !882, file: !1, line: 1799, type: !374)
!887 = !DILocalVariable(name: "point", arg: 2, scope: !882, file: !1, line: 1799, type: !186)
!888 = !DILocalVariable(name: "process_id", arg: 3, scope: !882, file: !1, line: 1799, type: !3)
!889 = !DILocalVariable(name: "h", scope: !882, file: !1, line: 1801, type: !19)
!890 = !DILocation(line: 0, scope: !882)
!891 = !DILocation(line: 1802, column: 16, scope: !882)
!892 = !DILocation(line: 1802, column: 27, scope: !882)
!893 = !DILocation(line: 1802, column: 40, scope: !882)
!894 = !DILocation(line: 1802, column: 18, scope: !882)
!895 = !DILocation(line: 1803, column: 18, scope: !882)
!896 = !DILocation(line: 1803, column: 31, scope: !882)
!897 = !DILocation(line: 1803, column: 9, scope: !882)
!898 = !DILocation(line: 1804, column: 22, scope: !882)
!899 = !DILocation(line: 1804, column: 35, scope: !882)
!900 = !DILocation(line: 1804, column: 13, scope: !882)
!901 = !DILocation(line: 1806, column: 5, scope: !882)
!902 = distinct !DISubprogram(name: "comp_plane_equ", scope: !1, file: !1, line: 1817, type: !903, scopeLine: 1818, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!19, !374, !186, !186, !186, !3}
!905 = !{!906, !907, !908, !909, !910, !911}
!906 = !DILocalVariable(name: "pln", arg: 1, scope: !902, file: !1, line: 1817, type: !374)
!907 = !DILocalVariable(name: "p1", arg: 2, scope: !902, file: !1, line: 1817, type: !186)
!908 = !DILocalVariable(name: "p2", arg: 3, scope: !902, file: !1, line: 1817, type: !186)
!909 = !DILocalVariable(name: "p3", arg: 4, scope: !902, file: !1, line: 1817, type: !186)
!910 = !DILocalVariable(name: "process_id", arg: 5, scope: !902, file: !1, line: 1817, type: !3)
!911 = !DILocalVariable(name: "length", scope: !902, file: !1, line: 1819, type: !19)
!912 = !DILocation(line: 0, scope: !902)
!913 = !DILocation(line: 1822, column: 14, scope: !902)
!914 = !DILocation(line: 1825, column: 15, scope: !902)
!915 = !DILocation(line: 1825, column: 14, scope: !902)
!916 = !DILocation(line: 1825, column: 10, scope: !902)
!917 = !DILocation(line: 1825, column: 12, scope: !902)
!918 = !DILocation(line: 1827, column: 5, scope: !902)
!919 = !DISubprogram(name: "plane_normal", scope: !1, file: !1, line: 1137, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !332)
!920 = !DISubroutineType(types: !921)
!921 = !{!19, !186, !186, !186, !186}
!922 = !DISubprogram(name: "inner_product", scope: !1, file: !1, line: 1135, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !332)
!923 = !DISubroutineType(types: !924)
!924 = !{!19, !186, !186}
!925 = distinct !DISubprogram(name: "point_intersection", scope: !1, file: !1, line: 1848, type: !926, scopeLine: 1849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!3, !374, !186, !3}
!928 = !{!929, !930, !931, !932, !933}
!929 = !DILocalVariable(name: "plane", arg: 1, scope: !925, file: !1, line: 1848, type: !374)
!930 = !DILocalVariable(name: "point", arg: 2, scope: !925, file: !1, line: 1848, type: !186)
!931 = !DILocalVariable(name: "process_id", arg: 3, scope: !925, file: !1, line: 1848, type: !3)
!932 = !DILocalVariable(name: "h", scope: !925, file: !1, line: 1850, type: !19)
!933 = !DILocalVariable(name: "result_code", scope: !925, file: !1, line: 1851, type: !3)
!934 = !DILocation(line: 0, scope: !925)
!935 = !DILocation(line: 1854, column: 14, scope: !936)
!936 = distinct !DILexicalBlock(scope: !925, file: !1, line: 1854, column: 9)
!937 = !DILocation(line: 1854, column: 9, scope: !936)
!938 = !DILocation(line: 1854, column: 53, scope: !936)
!939 = !DILocation(line: 1854, column: 9, scope: !925)
!940 = !DILocation(line: 1855, column: 9, scope: !936)
!941 = !DILocation(line: 1856, column: 11, scope: !942)
!942 = distinct !DILexicalBlock(scope: !925, file: !1, line: 1856, column: 9)
!943 = !DILocation(line: 1856, column: 9, scope: !925)
!944 = !DILocation(line: 1857, column: 21, scope: !942)
!945 = !DILocation(line: 1857, column: 9, scope: !942)
!946 = !DILocation(line: 1859, column: 5, scope: !925)
!947 = !DISubprogram(name: "subdivide_edge", scope: !1, file: !1, line: 1147, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !332)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !71, !19, !3}
!950 = !DISubprogram(name: "create_edge", scope: !1, file: !1, line: 1146, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !332)
!951 = !DISubroutineType(types: !952)
!952 = !{!71, !9, !9, !3}
